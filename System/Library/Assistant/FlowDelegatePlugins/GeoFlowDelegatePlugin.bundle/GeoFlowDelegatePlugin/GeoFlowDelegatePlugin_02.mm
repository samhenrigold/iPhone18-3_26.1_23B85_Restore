unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        outlined init with take of Any(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        outlined init with copy of Any(*(v1 + 56) + 32 * v14, v27);
        *&v26 = v16;
        *(&v26 + 1) = v17;
        v24[2] = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v18 = v26;
        outlined init with take of Any(v25, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v23;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          *(v2[7] + 16 * result) = v23;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_24;
          }

          v2[2] = v22;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  v4 = type metadata accessor for ContactResolution(0);
  v3[77] = v4;
  v5 = *(v4 - 8);
  v3[78] = v5;
  v3[79] = *(v5 + 64);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[82] = swift_task_alloc();
  v6 = type metadata accessor for ResponseType();
  v3[83] = v6;
  v3[84] = *(v6 - 8);
  v3[85] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v3[86] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v3[87] = v7;
  v3[88] = *(v7 - 8);
  v3[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v3[90] = swift_task_alloc();
  v8 = type metadata accessor for ActivityType();
  v3[91] = v8;
  v3[92] = *(v8 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v3[95] = v9;
  v3[96] = *(v9 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v10 = type metadata accessor for PommesContext.Source();
  v3[99] = v10;
  v3[100] = *(v10 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v3[103] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  v3[104] = v11;
  v3[105] = *(v11 - 8);
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v12 = type metadata accessor for ImageSize();
  v3[108] = v12;
  v3[109] = *(v12 - 8);
  v3[110] = swift_task_alloc();
  v13 = type metadata accessor for Locale();
  v3[111] = v13;
  v3[112] = *(v13 - 8);
  v3[113] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

char *ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  v76 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v1 = PaginatedItemContainer.items.getter();
  *(v0 + 912) = v1;
  v2 = v1 >> 62;
  v3 = v1;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    v5 = &_swiftEmptyArrayStorage;
    v74 = v1;
    if (!v4)
    {
      break;
    }

    v75[0] = &_swiftEmptyArrayStorage;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v75[0];
    v70 = v0;
    if (v2)
    {
      log = (v3 & 0xFFFFFFFFFFFFFF8);
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v3;
    }

    else
    {
      v7 = v3;
      log = (v3 & 0xFFFFFFFFFFFFFF8);
      v8 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    v9 = 0;
    v2 = v7 & 0xC000000000000001;
    v10 = v8 & ~(v8 >> 63);
    while (v10 != v9)
    {
      if (v2)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= log[2].isa)
        {
          goto LABEL_37;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = INPerson.encodeBase64.getter();
      v15 = v14;

      v75[0] = v5;
      v0 = v5[2];
      v16 = v5[3];
      v3 = v0 + 1;
      if (v0 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v0 + 1, 1);
        v5 = v75[0];
      }

      v9 = (v9 + 1);
      v5[2] = v3;
      v17 = &v5[2 * v0];
      v17[4] = v13;
      v17[5] = v15;
      v7 = v74;
      if (v4 == v9)
      {
        v3 = v74;

        v0 = v70;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v3;
  }

LABEL_18:
  v18 = *(v0 + 608);
  (*(*v18 + 176))(v5);
  specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v3);
  v20 = v19 & 1;
  *(v0 + 1016) = v19 & 1;
  v21 = v18[2];
  *(v0 + 920) = v21;
  v22 = static os_log_type_t.default.getter();
  loga = v21;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v75[0] = v24;
    *v23 = 136315394;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v25 = Array.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v75);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v20;
    _os_log_impl(&dword_0, loga, v22, "persons %s handleDisambiguation %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  v28 = *(v0 + 904);
  v29 = *(v0 + 896);
  v71 = *(v0 + 888);
  v30 = v3;
  v31 = *(v0 + 608);
  v32 = v31[7];
  v33 = v31[8];
  __swift_project_boxed_opaque_existential_1(v31 + 4, v32);
  v34 = *(v33 + 32);

  v34(v32, v33);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 928) = specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v30, v28);
  v35 = *(v29 + 8);
  *(v0 + 936) = v35;
  *(v0 + 944) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v28, v71);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v36 = v31[7];
  v37 = v31[8];
  __swift_project_boxed_opaque_existential_1(v31 + 4, v36);
  (*(v37 + 32))(v36, v37);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v38 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  if (v38)
  {
    v39 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();
LABEL_27:
    *(v0 + 952) = v39;
    v50 = v39;
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(loga, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v75[0] = v53;
      *v52 = 136315138;
      v54 = v50;
      v55 = [v54 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v75);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_0, loga, v51, "disambiguation snippet is: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    else
    {
    }

    v60 = *(v0 + 608);
    v61 = v31[7];
    v62 = v31[8];
    __swift_project_boxed_opaque_existential_1(v31 + 4, v61);
    (*(v62 + 32))(v61, v62);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    dispatch thunk of DeviceState.siriLocale.getter();
    v63 = *(v60 + 96);
    v64 = swift_task_alloc();
    *(v0 + 960) = v64;
    *v64 = v0;
    v64[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
    v65 = *(v0 + 904);
    v66 = *(v0 + 856);

    return TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(v66, v65, v63, v74, 0);
  }

  v40 = v31[7];
  v41 = v31[8];
  __swift_project_boxed_opaque_existential_1(v31 + 4, v40);
  (*(v41 + 32))(v40, v41);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v42 = dispatch thunk of DeviceState.isPad.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (v42)
  {
    v43 = *(v0 + 880);
    v44 = *(v0 + 872);
    v45 = *(v0 + 864);
    (*(v44 + 104))(v43, enum case for ImageSize.default(_:), v45);
    v46 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPad(disambiguationItems:deviceIsLocked:imageSize:)();
LABEL_26:
    v39 = v46;
    (*(v44 + 8))(v43, v45);
    goto LABEL_27;
  }

  v47 = v31[7];
  v48 = v31[8];
  __swift_project_boxed_opaque_existential_1(v31 + 4, v47);
  (*(v48 + 32))(v47, v48);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v49 = dispatch thunk of DeviceState.isPhone.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  if (v49)
  {
    v43 = *(v0 + 880);
    v44 = *(v0 + 872);
    v45 = *(v0 + 864);
    (*(v44 + 104))(v43, enum case for ImageSize.default(_:), v45);
    v46 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    goto LABEL_26;
  }

  swift_bridgeObjectRelease_n();

  type metadata accessor for RuntimeError();
  v67 = swift_allocObject();
  *(v67 + 16) = 0xD000000000000012;
  *(v67 + 24) = 0x80000000000C0F80;
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
  swift_allocError();
  *v68 = v67;
  swift_willThrow();

  v69 = *(v0 + 8);

  return v69();
}

uint64_t ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  v1 = *v0;
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 904);
  v4 = *(*v0 + 888);

  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

{
  v99 = v0;
  v1 = *(v0 + 608);
  if (v1[80] == 1)
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 824);
    (*(*(v0 + 800) + 104))(*(v0 + 808), enum case for PommesContext.Source.pluginDefined(_:), *(v0 + 792));
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v4 = type metadata accessor for PommesContext();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    NLContextUpdate.pommesContext.setter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = *(v0 + 920);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v98 = v8;
      *v7 = 136315138;
      swift_beginAccess();
      NLContextUpdate.pommesContext.getter();
      swift_endAccess();
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v98);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v6, v5, "updated nl context with pommes context. pommesContext = %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }
  }

  else if ((*(*v1 + 144))())
  {
    v12 = *(v0 + 784);
    v13 = *(v0 + 776);
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    *(swift_allocObject() + 16) = xmmword_B89E0;
    type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    swift_allocObject();
    v16 = UsoTaskBuilder_noVerb_common_Person.init()();
    type metadata accessor for UsoEntityBuilder_common_Person();
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    static Siri_Nlu_External_SystemPrompted.from(_:)(v16, v12);
    Siri_Nlu_External_SystemDialogAct.init()();
    (*(v14 + 16))(v13, v12, v15);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v14 + 8))(v12, v15);
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  v17 = *(v0 + 920);
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 920);
    v20 = *(v0 + 856);
    v21 = *(v0 + 848);
    v22 = *(v0 + 840);
    v23 = *(v0 + 832);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v98 = v25;
    *v24 = 136315138;
    swift_beginAccess();
    (*(v22 + 16))(v21, v20, v23);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v98);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v19, v18, "makePromptForDisambiguation nlContextUpdate is: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  v29 = *(v0 + 920);
  v30 = *(v0 + 1016);
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v29, v31);
  if (v30 == 1)
  {
    v33 = *(v0 + 912);
    if (!v32)
    {
      v39 = v33 & 0xC000000000000001;
      goto LABEL_20;
    }

    v29 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v30 = v34;
    v98 = v34;
    *v29 = 136315138;
    v38 = *(v0 + 912);
    v39 = v33 & 0xC000000000000001;
    if ((v33 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      for (i = *(v38 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
      {
        v41 = i;
        v42 = *(v0 + 920);
        v43 = [i description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v98);

        *(v29 + 4) = v47;
        _os_log_impl(&dword_0, v42, v31, "handleDisambiguation %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);

LABEL_20:
        v75 = *(v0 + 912);
        if (v39)
        {
          break;
        }

        if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
        {
          v76 = *(v75 + 32);
          goto LABEL_23;
        }

        __break(1u);
LABEL_29:
        ;
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      v77 = *(v0 + 752);
      v78 = *(v0 + 736);
      v79 = *(v0 + 728);
      v80 = *(v0 + 608);
      type metadata accessor for DialogPerson();
      v81 = v80[7];
      v82 = v80[8];
      __swift_project_boxed_opaque_existential_1(v80 + 4, v81);
      (*(v82 + 32))(v81, v82);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      dispatch thunk of DeviceState.siriLocale.getter();
      *(v0 + 968) = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      static SiriKitEventSender.current.getter();
      __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
      (*(v78 + 104))(v77, enum case for ActivityType.disambiguation(_:), v79);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
      v34 = [swift_getObjCClassFromMetadata() typeName];
      if (v34)
      {
        v83 = v34;
        v84 = *(v0 + 840);
        v94 = *(v0 + 856);
        v95 = *(v0 + 832);
        v85 = *(v0 + 720);
        v86 = *(v0 + 672);
        v91 = *(v0 + 680);
        v92 = *(v0 + 664);
        v93 = *(v0 + 656);

        type metadata accessor for SiriKitEvent();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = enum case for SiriKitReliabilityCodes.normal(_:);
        v88 = type metadata accessor for SiriKitReliabilityCodes();
        v89 = *(v88 - 8);
        (*(v89 + 104))(v85, v87, v88);
        (*(v89 + 56))(v85, 0, 1, v88);
        SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
        static DialogPhase.clarification.getter();
        OutputGenerationManifest.init(dialogPhase:_:)();
        OutputGenerationManifest.listenAfterSpeaking.setter();
        OutputGenerationManifest.responseViewId.setter();
        (*(v86 + 104))(v91, enum case for ResponseType.disambiguation(_:), v92);
        OutputGenerationManifest.responseType.setter();
        swift_beginAccess();
        (*(v84 + 16))(v93, v94, v95);
        (*(v84 + 56))(v93, 0, 1, v95);
        OutputGenerationManifest.nlContextUpdate.setter();
        type metadata accessor for CATGlobals();
        CATGlobals.__allocating_init()();
        type metadata accessor for ContactResolutionSnippetGenerator();
        swift_allocObject();
        *(v0 + 976) = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
        v90 = swift_task_alloc();
        *(v0 + 984) = v90;
        *v90 = v0;
        v90[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
        v38 = *(v0 + 912);
        v37 = *(v0 + 712);
        v34 = *(v0 + 592);
        v36 = 0x80000000000BFC00;
        v35 = 0xD00000000000002CLL;

        return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v34, v38, v35, v36, v37);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v34, v38, v35, v36, v37);
  }

  if (v32)
  {
    v48 = *(v0 + 920);
    v49 = *(v0 + 608);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v98 = v51;
    *v50 = 136315138;
    v52 = *(v49 + 72);
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v98);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_0, v48, v31, "contactDisambiguation %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  v58 = *(v0 + 648);
  v96 = *(v0 + 616);
  v59 = *(v0 + 608);
  type metadata accessor for DialogPerson();
  v60 = v59[8];
  v61 = v59[9];
  v62 = v59[7];
  __swift_project_boxed_opaque_existential_1(v59 + 4, v62);
  v63 = *(v60 + 32);
  v64 = v61;
  v63(v62, v60);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  dispatch thunk of DeviceState.siriLocale.getter();
  v65 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  *(v0 + 1000) = v65;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
  *v58 = v65;
  v67 = enum case for BehaviorAfterSpeaking.listen(_:);
  v68 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v68 - 8) + 104))(v58 + v66, v67, v68);
  *(v0 + 360) = v96;
  *(v0 + 368) = &protocol witness table for ContactResolution;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 336));
  outlined init with copy of ContactResolution(v58, boxed_opaque_existential_0);
  swift_beginAccess();
  v70 = *(*v59 + 248);

  v97 = (v70 + *v70);
  v71 = swift_task_alloc();
  *(v0 + 1008) = v71;
  *v71 = v0;
  v71[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  v72 = *(v0 + 856);
  v73 = *(v0 + 600);

  return v97(v0 + 296, v0 + 336, v73, v72);
}

{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  else
  {
    v2 = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[119];
  v2 = v0[107];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 336));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

{
  v1 = v0[119];
  v2 = v0[115];
  v12 = v0[107];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];

  (*(v6 + 8))(v5, v7);
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_0, v2, "failed to build disambiguate contacts handles dialog", 52, 2, &_swiftEmptyArrayStorage);
  lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();

  (*(v3 + 8))(v12, v4);

  v10 = v0[1];

  return v10();
}

id ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 736);
    v3 = *(v0 + 728);
    outlined init with take of CATType((v0 + 296), v0 + 256);
    static SiriKitEventSender.current.getter();
    __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
    (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v3);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v28 = *(v0 + 856);
    v6 = *(v0 + 840);
    v27 = *(v0 + 832);
    v25 = *(v0 + 952);
    v7 = *(v0 + 720);
    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    v10 = *(v0 + 624);
    v26 = *(v0 + 592);

    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = enum case for SiriKitReliabilityCodes.normal(_:);
    v12 = type metadata accessor for SiriKitReliabilityCodes();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v7, v11, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    outlined init with copy of ContactResolution(v8, v9);
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    outlined init with take of ContactResolution(v9, v15 + v14, type metadata accessor for ContactResolution);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ContactResolution(v8);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
    outlined init with take of CATType((v0 + 256), v26);
    (*(v6 + 8))(v28, v27);

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 952);
    v18 = *(v0 + 920);
    v29 = *(v0 + 856);
    v19 = *(v0 + 840);
    v20 = *(v0 + 832);
    v21 = *(v0 + 648);

    outlined destroy of Mirror.DisplayStyle?(v0 + 296, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_0, v18, "failed to build disambiguate contacts dialog", 44, 2, &_swiftEmptyArrayStorage);
    v23 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v23, &dword_0, v18, "failed to build disambiguate contacts dialog", 44, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    outlined destroy of ContactResolution(v21);
    (*(v19 + 8))(v29, v20);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for ActivityType();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v2[30] = *(v5 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse(), 0, 0);
}

uint64_t ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()()
{
  v1 = v0[23];
  v2 = v1[3];
  v0[5] = type metadata accessor for ShareETA(0);
  v0[6] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  *boxed_opaque_existential_0 = 0;
  boxed_opaque_existential_0[1] = 0;
  swift_storeEnumTagMultiPayload();
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = (*(v5 + 80))(v4, v5);
  v0[33] = v6;
  v10 = (*(*v2 + 112) + **(*v2 + 112));
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  v8 = v0[32];

  return v10(v8, v0 + 2, v6);
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

id ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v3 = *(v1 + 208);
  v2 = *(v1 + 216);
  v4 = *(v1 + 200);
  static SiriKitEventSender.current.getter();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  (*(v3 + 104))(v2, enum case for ActivityType.canceled(_:), v4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v6 = result;
    v7 = *(v1 + 248);
    v8 = *(v1 + 256);
    v9 = *(v1 + 232);
    v10 = *(v1 + 224);
    v11 = *(v1 + 192);
    v12 = *(v1 + 176);
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = enum case for SiriKitReliabilityCodes.cancelDisambiguation(_:);
    v14 = type metadata accessor for SiriKitReliabilityCodes();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v11, v13, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    (*(v9 + 16))(v7, v8, v10);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v7, v10);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
    static Device.current.getter();
    v18 = type metadata accessor for AceOutput();
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0;
    *(v1 + 136) = 0u;
    v12[3] = v18;
    v12[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_0(v12);
    static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();
    outlined destroy of Mirror.DisplayStyle?(v1 + 136, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));
    (*(v9 + 8))(v8, v10);

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  a3(v4);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.responseId.setter();
}

uint64_t ShareETAContactDisambiguationStrategy.makeErrorResponse(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, *(v2 + 16), "makeErrorResponse", 17, 2, &_swiftEmptyArrayStorage);
  lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
  v5 = *(v1 + 8);

  return v5();
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for ImageElement.ImageStyle();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for ContactQuery();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for GeoContact(0);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for ResponseType();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:), 0, 0);
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)()
{
  v1 = v0[20];
  v2 = v1[3];
  v0[37] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = (*(v4 + 80))(v3, v4);
  v0[38] = v5;
  v9 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  v7 = v0[18];

  return v9(v7, v5);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:), 0, 0);
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 136);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)(uint64_t a1)
{
  *(*v2 + 320) = a1;

  if (v1)
  {

    v3 = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  }

  else
  {

    v3 = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  }

  return _swift_task_switch(v3, 0, 0);
}

void *ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[20];
  v6 = static os_log_type_t.default.getter();
  v7 = *(v5 + 16);
  v8 = &_swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)(v6, &dword_0, v7, "RF: dialogResult success", 24, 2, &_swiftEmptyArrayStorage);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v4 + 104))(v2, enum case for ResponseType.disambiguation(_:), v3);
  OutputGenerationManifest.responseType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v9 = PaginatedItemContainer.items.getter();
  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_22;
  }

  v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  v12 = v76;
  if (v11)
  {
    while (1)
    {
      v13 = v9;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v15 = v8;
      v54 = v7;
      if (v10)
      {
        v55 = v13 & 0xFFFFFFFFFFFFFF8;
        v9 = _CocoaArrayWrapper.endIndex.getter();
        v16 = v13;
      }

      else
      {
        v16 = v13;
        v55 = v13 & 0xFFFFFFFFFFFFFF8;
        v9 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      }

      v8 = 0;
      v17 = v12[29];
      v61 = v12[27];
      v62 = v12[28];
      v18 = v12[22];
      v65 = v16 & 0xC000000000000001;
      v60 = (v12[25] + 8);
      v59 = enum case for ImageElement.ImageStyle.contactImage4(_:);
      v58 = (v18 + 104);
      v57 = enum case for ImageElement.ImageStyle.contactImage3(_:);
      v56 = (v18 + 32);
      v66 = v9 & ~(v9 >> 63);
      v63 = v11;
      v64 = v16;
      while (v66 != v8)
      {
        v74 = v15;
        if (v65)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v55 + 16))
          {
            goto LABEL_21;
          }

          v19 = *(v16 + 8 * v8 + 32);
        }

        v20 = v19;
        v21 = v12[29];
        v22 = v76[26];
        v23 = v76[24];
        v71 = v76[23];
        v72 = v76[21];
        v73 = v21;
        v24 = v76[20];
        INPerson.toContactQuery()();
        v25 = ContactQuery.id.getter();
        v69 = v26;
        v70 = v25;
        (*v60)(v22, v23);
        v27 = [v20 displayName];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v29;
        v68 = v28;

        v30 = INPerson.getContactInitials()();
        v31 = INPerson.encodeBase64.getter();
        v7 = v32;
        v33 = v24[7];
        v34 = v24[8];
        __swift_project_boxed_opaque_existential_1(v24 + 4, v33);
        (*(v34 + 32))(v33, v34);
        __swift_project_boxed_opaque_existential_1(v76 + 2, v76[5]);
        v12 = v76;
        LOBYTE(v27) = dispatch thunk of DeviceState.isCarPlay.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v76 + 2);
        if (v27)
        {
          v35 = v57;
        }

        else
        {
          v35 = v59;
        }

        (*v58)(v71, v35, v72);
        *v73 = v8;
        *(v17 + 8) = v70;
        *(v17 + 16) = v69;
        *(v17 + 24) = v68;
        *(v17 + 32) = v67;
        *(v17 + 40) = v30;
        *(v17 + 56) = v31;
        *(v17 + 64) = v7;
        *(v17 + 72) = 0;
        (*v56)(v73 + *(v61 + 40), v71, v72);

        v15 = v74;
        v10 = v74[2];
        v36 = v74[3];
        if (v10 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v10 + 1, 1);
          v15 = v74;
        }

        v37 = v76[29];
        ++v8;
        v15[2] = v10 + 1;
        v9 = outlined init with take of ContactResolution(v37, v15 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v10, type metadata accessor for GeoContact);
        v16 = v64;
        if (v63 == v8)
        {

          v7 = v54;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v38 = v9;
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v38;
      v12 = v76;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v15 = &_swiftEmptyArrayStorage;
LABEL_24:
    v39 = v12[37];
    v12[10] = &type metadata for GeoLabel;
    v12[11] = &protocol witness table for GeoLabel;
    *(v12 + 7) = xmmword_B99F0;
    *(v12 + 72) = 2;
    v40 = (*(*v39 + 136))(v12 + 7);
    v41 = v12;
    v42 = v40;
    v44 = v43;
    LOBYTE(v39) = v45;
    __swift_destroy_boxed_opaque_existential_0Tm(v41 + 7);
    if (v39)
    {
      outlined consume of Result<String, Error>(v42, v44, 1);
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    v46 = v76[40];
    v47 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v47, &dword_0, v7, "RF: made snippet model successfully", 35, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v76[41] = ResponseFactory.init()();
    v76[15] = &type metadata for GeoDataModels;
    v76[16] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
    v48 = swift_allocObject();
    v76[12] = v48;
    *(v48 + 16) = v42;
    *(v48 + 24) = v44;
    *(v48 + 32) = v15;
    *(v48 + 96) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v49 = swift_allocObject();
    v76[42] = v49;
    *(v49 + 16) = xmmword_B8FB0;
    *(v49 + 32) = v46;
    v75 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
    v50 = v46;
    v51 = swift_task_alloc();
    v76[43] = v51;
    *v51 = v76;
    v51[1] = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
    v52 = v76[36];
    v53 = v76[17];

    return (v75)(v53, v76 + 12, v49, v52);
  }

  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return v0;
}

uint64_t ShareETAContactDisambiguationStrategy.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 216) + **(*v3 + 216));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShareETAContactDisambiguationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShareETAContactDisambiguationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAContactDisambiguationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 240) + **(*v2 + 240));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D7ContactVGMd, &_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D7ContactVGMR);
  v10 = *(type metadata accessor for GeoContact(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeoContact(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D15TrafficIncidentVGMd, &_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D15TrafficIncidentVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a4, a7);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v15 = OS_os_log.init(subsystem:category:)();
  *(a6 + 81) = 0;
  *(a6 + 16) = v15;
  *(a6 + 88) = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_B7D70;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v16 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v16 + 40) = v17;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v16 + 48) = specialized OntologyNode.javaClassName.getter();
  *(v16 + 56) = v18;
  type metadata accessor for AddressOntologyNode.PersonPlaceNode();
  swift_allocObject();
  AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)();
  v19 = specialized OntologyNode.javaClassName.getter();
  v21 = v20;

  *(v16 + 64) = v19;
  *(v16 + 72) = v21;
  type metadata accessor for AddressOntologyNode.OccupantNode();
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v22 = specialized OntologyNode.javaClassName.getter();
  v24 = v23;

  *(v16 + 80) = v22;
  *(v16 + 88) = v24;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v25 = specialized OntologyNode.javaClassName.getter();
  v27 = v26;

  *(v16 + 96) = v25;
  *(v16 + 104) = v27;
  type metadata accessor for PersonOntologyNode();
  static PersonOntologyNode.personFullNameNode.getter();
  v28 = specialized OntologyNode.javaClassName.getter();
  v30 = v29;

  *(v16 + 112) = v28;
  *(v16 + 120) = v30;
  *(a6 + 96) = v16;
  *(a6 + 80) = a1 & 1;
  swift_beginAccess();
  *(a6 + 81) = a2 & 1;
  *(a6 + 72) = a3;
  outlined init with take of CATType(&v33, a6 + 32);
  *(a6 + 24) = a5;
  return a6;
}

unint64_t lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError()
{
  result = lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError;
  if (!lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError;
  if (!lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of ContactResolution(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContactResolution(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_38564()
{
  v1 = *(type metadata accessor for ContactResolution(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_38688()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of ContactResolution(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels()
{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

uint64_t sub_38870()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

void outlined consume of GeoDataModels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 1u)
  {
    if (a11 != 2)
    {
      if (a11 != 3)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (a11)
  {
    if (a11 != 1)
    {
      return;
    }

LABEL_7:
  }
}

uint64_t sub_389D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_38A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_38AB4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Sharing_Medium@<X0>(Swift::Int *a1@<X0>, GeoFlowDelegatePlugin::Sharing_Medium_optional *a2@<X8>)
{
  result = specialized Sharing_Medium.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t ShareETAFlowDelegate.isPOMMES.getter()
{
  v1 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShareETAFlowDelegate.isPOMMES.setter(char a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShareETAFlowDelegate.isUSO.getter()
{
  v1 = direct field offset for ShareETAFlowDelegate.isUSO;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShareETAFlowDelegate.isUSO.setter(char a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.isUSO;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShareETAFlowDelegate.init(deviceState:isPOMMES:isUSO:)(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = direct field offset for ShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v3 + v8) = OS_os_log.init(subsystem:category:)();
  v9 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  *(v4 + direct field offset for ShareETAFlowDelegate.isPOMMES) = 0;
  v10 = direct field offset for ShareETAFlowDelegate.isUSO;
  *(v4 + direct field offset for ShareETAFlowDelegate.isUSO) = 0;
  *(v4 + direct field offset for ShareETAFlowDelegate.disambiguationState) = 0;
  outlined init with copy of DeviceState(a1, v4 + direct field offset for ShareETAFlowDelegate.currentDeviceState);
  swift_beginAccess();
  *(v4 + v9) = a2;
  swift_beginAccess();
  *(v4 + v10) = a3;
  v11 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t ShareETAFlowDelegate.disambiguationState.setter(uint64_t a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.disambiguationState;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id ShareETAFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, void (*a2)(void, void, void))
{
  v318 = a2;
  v279 = type metadata accessor for Parse.DirectInvocation();
  v281 = *(v279 - 8);
  __chkstk_darwin();
  v280 = &v277 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v310 = type metadata accessor for Google_Protobuf_StringValue();
  v278 = *(v310 - 8);
  __chkstk_darwin();
  *&v309 = &v277 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v313 = *(v312 - 1);
  __chkstk_darwin();
  v317 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v290 = *(v291 - 8);
  __chkstk_darwin();
  v289 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v287 = *(v288 - 8);
  __chkstk_darwin();
  v286 = &v277 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for Siri_Nlu_External_UserParse();
  v299 = *(v300 - 8);
  __chkstk_darwin();
  v298 = &v277 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v284 = *(v285 - 8);
  __chkstk_darwin();
  v283 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  __chkstk_darwin();
  v282 = &v277 - v11;
  v304 = type metadata accessor for USOParse();
  v303 = *(v304 - 8);
  __chkstk_darwin();
  v308 = &v277 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v296 = *(v297 - 8);
  __chkstk_darwin();
  v295 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v293 = *(v294 - 8);
  __chkstk_darwin();
  v292 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for Parse();
  v15 = *(v316 - 8);
  __chkstk_darwin();
  v301 = &v277 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v307 = &v277 - v17;
  __chkstk_darwin();
  v306 = (&v277 - v18);
  __chkstk_darwin();
  v20 = &v277 - v19;
  __chkstk_darwin();
  v22 = &v277 - v21;
  v23 = type metadata accessor for NLIntent();
  v305 = *(v23 - 8);
  __chkstk_darwin();
  v302 = &v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v277 - v25;
  __chkstk_darwin();
  v27 = &v277 - v26;
  v28 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v315 = v2;
  v325 = v28;
  v319 = a1;
  if (v30)
  {
    v31 = v15;
    v32 = swift_slowAlloc();
    v33 = v27;
    v34 = swift_slowAlloc();
    v326 = v34;
    *v32 = 136315138;
    v329 = v318;
    v35 = v318;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16INShareETAIntentCSgMd, &_sSo16INShareETAIntentCSgMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v326);
    a1 = v319;

    *(v32 + 4) = v38;
    v28 = v325;
    _os_log_impl(&dword_0, v325, v29, "makeIntentFromParse previous intent %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v27 = v33;

    v15 = v31;
  }

  v39 = *(v15 + 16);
  v40 = a1;
  v41 = v316;
  v324 = v15 + 16;
  *&v323 = v39;
  v39(v22, a1, v316);
  v321 = *(v15 + 88);
  v322 = v15 + 88;
  v42 = v321(v22, v41);
  v320 = v15;
  if (v42 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v15 + 96))(v22, v41);
    v43 = v27;
    v44 = v305;
    v314 = *(v305 + 32);
    v314(v43, v22, v23);
    v45 = v311;
    (*(v44 + 16))(v311, v43, v23);
    type metadata accessor for LocationSearchIntent(0);
    v51 = swift_allocObject();
    v28 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_6;
  }

  v48 = v23;
  (*(v15 + 8))(v22, v41);
  v49 = 0;
  v50 = v41;
  v51 = v40;
  for (i = v311; ; i = v45)
  {
    (v323)(v20, v51, v50);
    if (v321(v20, v50) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v314 = v49;
      (*(v320 + 96))(v20, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

      v53 = v305;
      v54 = *(v305 + 32);
      v55 = v302;
      v56 = v48;
      v54(v302, v20, v48);
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v28, v57, "makeIntentFromParse, parsing NLv3IntentPlusServerConversion)", v58, 2u);
        i = v311;
      }

      (*(v53 + 16))(i, v55, v48);
      type metadata accessor for LocationSearchIntent(0);
      v59 = swift_allocObject();
      v60 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
      v61 = i;
      if (one-time initialization token for domainNode != -1)
      {
        swift_once();
      }

      v62 = static LocationSearchIntent.domainNode;
      v63 = *(v53 + 8);

      v63(v55, v56);
      *(v59 + v60) = v62;
      v54((v59 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v61, v56);

      v49 = v59;
      v28 = v325;
      v51 = v319;
      v50 = v316;
    }

    else
    {
      (*(v320 + 8))(v20, v50);
    }

    v64 = v306;
    (v323)(v306, v51, v50);
    v65 = v321(v64, v50);
    v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
    v66 = v307;
    v44 = v315;
    if (v65 != enum case for Parse.pommesResponse(_:))
    {
      (*(v320 + 8))(v64, v50);
      goto LABEL_38;
    }

    (*(v320 + 96))(v64, v50);
    v67 = *v64;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v28, v68, "makeIntentFromParse, POMMES)", v69, 2u);
    }

    type metadata accessor for LocationSearchIntent(0);
    swift_allocObject();
    v70 = v67;
    v71 = LocationSearchIntent.init(from:)(v70);

    v73 = (*(*v44 + class metadata base offset for ShareETAFlowDelegate + 96))(v72);
    if (!v73)
    {

      v49 = v71;
LABEL_36:
      v51 = v319;
      goto LABEL_38;
    }

    v74 = v73;
    v314 = v71;
    v75 = PommesResponse.firstGeoExperience.getter();
    if (!v75)
    {

      v49 = v314;
      goto LABEL_36;
    }

    v76 = v75;
    v311 = v70;
    v77 = v292;
    GeoExperience.geoClientComponent.getter();

    v78 = v295;
    Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
    (*(v293 + 8))(v77, v294);
    v28 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
    v43 = v79;
    (*(v296 + 8))(v78, v297);
    v51 = v74 & 0xFFFFFFFFFFFFFF8;
    if (v74 >> 62)
    {
      goto LABEL_92;
    }

    v80 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
LABEL_21:
    v20 = v311;
    v81 = v314;
    if (!v80)
    {
LABEL_37:

      v49 = v81;
      v44 = v315;
      v50 = v316;
      v28 = v325;
      v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
      v51 = v319;
      v66 = v307;
LABEL_38:
      (v323)(v66, v51, v50);
      if (v321(v66, v50) != enum case for Parse.uso(_:))
      {
        (*(v320 + 8))(v66, v50);
        v88 = v318;
        goto LABEL_100;
      }

      (*(v320 + 96))(v66, v50);
      (*(v303 + 32))(v308, v66, v304);
      v84 = static os_log_type_t.default.getter();
      v85 = os_log_type_enabled(v28, v84);
      if (v85)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v28, v84, "makeIntentFromParse, parsing uso parse)", v86, 2u);
      }

      v87 = (*(*v44 + class metadata base offset for ShareETAFlowDelegate + 96))(v85);
      v88 = v318;
      v311 = v87;
      if (v87)
      {
        v89 = v298;
        USOParse.userParse.getter();
        v90 = Siri_Nlu_External_UserParse.userDialogActs.getter();
        (*(v299 + 8))(v89, v300);
        if (*(v90 + 16))
        {
          v314 = v49;
          v91 = v284;
          v92 = v283;
          v93 = v285;
          (*(v284 + 16))(v283, v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80)), v285);

          v94 = v286;
          Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
          v95 = *(v91 + 8);
          v51 = v91 + 8;
          v95(v92, v93);
          v96 = v289;
          Siri_Nlu_External_UserStatedTask.task.getter();
          (*(v287 + 8))(v94, v288);
          v20 = Siri_Nlu_External_UsoGraph.identifiers.getter();
          (*(v290 + 8))(v96, v291);
          v45 = *(v20 + 16);
          v97 = v312;
          if (v45)
          {
            v43 = 0;
            v23 = v313 + 16;
            v28 = v278 + 1;
            v44 = v313 + 8;
            v98 = v309;
            while (1)
            {
              if (v43 >= *(v20 + 16))
              {
                goto LABEL_88;
              }

              (*(v313 + 16))(v317, v20 + ((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v43, v97);
              Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
              v99 = Google_Protobuf_StringValue.value.getter();
              v101 = v100;
              (v28->isa)(v98, v310);
              if (v99 == 0x64695F6D657469 && v101 == 0xE700000000000000)
              {
                break;
              }

              v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v51)
              {
                goto LABEL_59;
              }

              ++v43;
              v97 = v312;
              (*v44)(v317, v312);
              if (v45 == v43)
              {
                goto LABEL_50;
              }
            }

LABEL_59:

            v103 = v313;
            v23 = v282;
            v97 = v312;
            (*(v313 + 32))(v282, v317, v312);
            v102 = 0;
            v44 = v315;
            v88 = v318;
            v51 = v319;
            v28 = v325;
            v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
          }

          else
          {
LABEL_50:

            v102 = 1;
            v44 = v315;
            v88 = v318;
            v51 = v319;
            v28 = v325;
            v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
            v103 = v313;
            v23 = v282;
          }

          (*(v103 + 56))(v23, v102, 1, v97);
          if ((*(v103 + 48))(v23, 1, v97) == 1)
          {

            outlined destroy of Mirror.DisplayStyle?(v23, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
            goto LABEL_95;
          }

          v317 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
          *&v310 = v120;
          (*(v103 + 8))(v23, v97);
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v74))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v326 = v123;
            *v122 = 136315138;
            *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v317, v310, &v326);
            _os_log_impl(&dword_0, v28, v74, "contactId on disambiguation is %s", v122, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v123);
          }

          v20 = v311 & 0xFFFFFFFFFFFFFF8;
          if (v311 >> 62)
          {
            v124 = _CocoaArrayWrapper.endIndex.getter();
            if (v124)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v124 = *(&dword_10 + (v311 & 0xFFFFFFFFFFFFFF8));
            if (v124)
            {
LABEL_66:
              v307 = v20;
              v43 = 0;
              v313 = v311 & 0xC000000000000001;
              *&v121 = 136315394;
              v309 = v121;
              v312 = v124;
              while (1)
              {
                if (v313)
                {
                  v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v43 >= *(v307 + 2))
                  {
                    __break(1u);
LABEL_92:
                    v80 = _CocoaArrayWrapper.endIndex.getter();
                    goto LABEL_21;
                  }

                  v125 = *(v311 + 8 * v43 + 32);
                }

                v74 = v125;
                v45 = (v43 + 1);
                if (__OFADD__(v43, 1))
                {
                  goto LABEL_89;
                }

                v126 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v28, v126))
                {
                  v127 = swift_slowAlloc();
                  v23 = swift_slowAlloc();
                  v329 = v23;
                  *v127 = v309;
                  v128 = v74;
                  v129 = [v128 description];
                  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v132 = v131;

                  v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v329);

                  *(v127 + 4) = v133;
                  *(v127 + 12) = 2080;
                  v134 = [v128 contactIdentifier];
                  if (v134)
                  {
                    v135 = v134;
                    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v138 = v137;
                  }

                  else
                  {
                    v136 = 0;
                    v138 = 0;
                  }

                  v326 = v136;
                  v327 = v138;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v139 = String.init<A>(describing:)();
                  v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v329);

                  *(v127 + 14) = v141;
                  v20 = v325;
                  _os_log_impl(&dword_0, v325, v126, "%s has contactId %s", v127, 0x16u);
                  swift_arrayDestroy();

                  v28 = v20;

                  v44 = v315;
                }

                v142 = [v74 contactIdentifier];
                v143 = v318;
                v51 = v319;
                if (v142)
                {
                  v144 = v142;
                  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v23 = v146;

                  if (v317 == v145 && v310 == v23)
                  {

LABEL_85:

                    (*(*v44 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                    v147 = swift_allocObject();
                    *(v147 + 16) = xmmword_B8FB0;
                    *(v147 + 32) = v74;
                    v148 = objc_allocWithZone(INShareETAIntent);
                    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                    v149 = v74;
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    v88 = [v148 initWithRecipients:isa];

                    (*(v303 + 8))(v308, v304);
                    goto LABEL_144;
                  }

                  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v28 = v325;
                  if (v20)
                  {

                    goto LABEL_85;
                  }
                }

                ++v43;
                if (v45 == v312)
                {

                  v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
                  v88 = v143;
                  goto LABEL_95;
                }
              }
            }
          }
        }
      }

LABEL_95:
      type metadata accessor for GeoParse();
      static GeoParse.getDomainIntent(parse:)(v51, &v326);
      (*(v303 + 8))(v308, v304);
      if (v328)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
        type metadata accessor for LocationSearchIntent(0);
        if (swift_dynamicCast())
        {
          v151 = v329;

          v49 = v151;
          goto LABEL_100;
        }
      }

      else
      {
        outlined destroy of Mirror.DisplayStyle?(&v326, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      }

      v49 = 0;
LABEL_100:
      if (v88)
      {
        v313 = v44 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        v152 = *(*v44 + v45[123] + 96);
        v153 = v88;
        v317 = v152();
        if (v317)
        {
          v312 = v153;
          v154 = static os_log_type_t.info.getter();
          v155 = os_log_type_enabled(v28, v154);
          v314 = v49;
          if (v155)
          {
            v156 = swift_slowAlloc();
            v326 = swift_slowAlloc();
            *v156 = 136315394;
            v329 = v314;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin20LocationSearchIntentCSgMd, &_s21GeoFlowDelegatePlugin20LocationSearchIntentCSgMR);
            v157 = String.init<A>(describing:)();
            v159 = v51;
            v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v326);

            *(v156 + 4) = v160;
            *(v156 + 12) = 2080;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
            v161 = Array.description.getter();
            v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, &v326);

            *(v156 + 14) = v163;
            v51 = v159;
            _os_log_impl(&dword_0, v28, v154, "intent %s, paginatedItems %s", v156, 0x16u);
            swift_arrayDestroy();
            v49 = v314;
          }

          if (v49)
          {
            v164 = *(*v314 + 216);

            v166 = v164(v165);
            v168 = v167;

            if (v168)
            {
              v170 = (v317 & 0xFFFFFFFFFFFFFF8);
              if (v317 >> 62)
              {
                goto LABEL_191;
              }

              for (j = *(&dword_10 + (v317 & 0xFFFFFFFFFFFFFF8)); j; j = _CocoaArrayWrapper.endIndex.getter())
              {
                v311 = j;
                v172 = 0;
                *&v169 = 136315394;
                if ((v317 & 0xC000000000000001) == 0)
                {
                  v309 = v169;
                  *&v310 = v170;
                  v183 = v325;
                  while (1)
                  {
                    if (v172 >= v170[2])
                    {
                      goto LABEL_190;
                    }

                    v170 = *(v317 + 8 * v172 + 32);
                    v184 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v183, v184))
                    {
                      v185 = swift_slowAlloc();
                      v326 = swift_slowAlloc();
                      *v185 = v309;

                      v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v168, &v326);

                      *(v185 + 4) = v186;
                      *(v185 + 12) = 2080;
                      v187 = INPerson.encodeBase64.getter();
                      v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v188, &v326);

                      *(v185 + 14) = v189;
                      v44 = v315;
                      _os_log_impl(&dword_0, v183, v184, "selected node %s person encode %s", v185, 0x16u);
                      swift_arrayDestroy();
                      j = v311;
                    }

                    if (INPerson.encodeBase64.getter() == v166 && v168 == v190)
                    {
                      break;
                    }

                    v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v192)
                    {

LABEL_163:

LABEL_164:
                      v233 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v183, v233))
                      {
                        v234 = swift_slowAlloc();
                        v235 = swift_slowAlloc();
                        v326 = v235;
                        *v234 = 136315138;
                        v236 = v170;
                        v237 = [v236 description];
                        v238 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v239 = v183;
                        v241 = v240;

                        v242 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v241, &v326);

                        *(v234 + 4) = v242;
                        _os_log_impl(&dword_0, v239, v233, "chosen item %s", v234, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v235);
                      }

                      (*(*v44 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                      v243 = swift_allocObject();
                      *(v243 + 16) = xmmword_B8FB0;
                      *(v243 + 32) = v170;
                      v244 = objc_allocWithZone(INShareETAIntent);
                      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v245 = v170;
                      v246 = Array._bridgeToObjectiveC()().super.isa;

                      v88 = [v244 initWithRecipients:v246];

                      return v88;
                    }

                    ++v172;

                    v170 = v310;
                    if (j == v172)
                    {
                      goto LABEL_130;
                    }
                  }

                  goto LABEL_163;
                }

                v310 = v169;
                while (1)
                {
                  v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v174 = (v172 + 1);
                  if (__OFADD__(v172, 1))
                  {
                    break;
                  }

                  v170 = v173;
                  v175 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v325, v175))
                  {
                    v176 = swift_slowAlloc();
                    v326 = swift_slowAlloc();
                    *v176 = v310;

                    v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v168, &v326);

                    *(v176 + 4) = v177;
                    *(v176 + 12) = 2080;
                    v178 = INPerson.encodeBase64.getter();
                    v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, &v326);

                    *(v176 + 14) = v180;
                    v44 = v315;
                    _os_log_impl(&dword_0, v325, v175, "selected node %s person encode %s", v176, 0x16u);
                    swift_arrayDestroy();
                    j = v311;
                  }

                  if (INPerson.encodeBase64.getter() == v166 && v168 == v181)
                  {

LABEL_160:

                    v183 = v325;
                    goto LABEL_164;
                  }

                  v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v182)
                  {

                    goto LABEL_160;
                  }

                  swift_unknownObjectRelease();
                  ++v172;
                  if (v174 == j)
                  {
                    goto LABEL_130;
                  }
                }

                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                ;
              }

LABEL_130:

              v28 = v325;
              v51 = v319;
            }
          }

          v193 = v301;
          v194 = v316;
          (v323)(v301, v51, v316);
          if (v321(v193, v194) == enum case for Parse.directInvocation(_:))
          {
            (*(v320 + 96))(v193, v194);
            v195 = v281;
            v196 = v280;
            v197 = v279;
            (*(v281 + 32))(v280, v193, v279);
            v198 = Parse.DirectInvocation.userData.getter();
            if (!v198 || (v199 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v198), , !v199))
            {

              v217 = static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)(v217, &dword_0, v28, "invalid payload data", 20, 2, &_swiftEmptyArrayStorage);
              v218 = v312;

              (*(v195 + 8))(v196, v197);
              v219 = v218;

              return v318;
            }

            v88 = v318;
            if (!*(v199 + 16) || (v200 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636552, 0xE900000000000074), (v201 & 1) == 0))
            {

              v220 = static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)(v220, &dword_0, v28, "invalid payload data for contact", 32, 2, &_swiftEmptyArrayStorage);
              v221 = v312;

              (*(v195 + 8))(v196, v197);
              v222 = v221;
              goto LABEL_144;
            }

            v202 = (*(v199 + 56) + 16 * v200);
            v203 = *v202;
            v204 = v202[1];

            v205 = static os_log_type_t.default.getter();
            v206 = os_log_type_enabled(v28, v205);
            v324 = v203;
            if (v206)
            {
              v208 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              v329 = v209;
              *v208 = 136315138;
              v326 = v203;
              v327 = v204;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v210 = String.init<A>(describing:)();
              v212 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v211, &v329);
              v203 = v324;

              *(v208 + 4) = v212;
              _os_log_impl(&dword_0, v28, v205, "From Payload person: %s", v208, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v209);
            }

            v213 = (v317 & 0xFFFFFFFFFFFFFF8);
            if (v317 >> 62)
            {
              goto LABEL_195;
            }

            for (k = *(&dword_10 + (v317 & 0xFFFFFFFFFFFFFF8)); k; k = _CocoaArrayWrapper.endIndex.getter())
            {
              if ((v317 & 0xC000000000000001) == 0)
              {
                v247 = 0;
                *&v207 = 136315138;
                v323 = v207;
                while (1)
                {
                  if (v247 >= v213[2])
                  {
                    goto LABEL_194;
                  }

                  v224 = *(v317 + 8 * v247 + 32);
                  v248 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v325, v248))
                  {
                    v249 = swift_slowAlloc();
                    v197 = k;
                    v250 = v213;
                    v251 = swift_slowAlloc();
                    v326 = v251;
                    *v249 = v323;
                    v252 = INPerson.encodeBase64.getter();
                    v254 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v252, v253, &v326);

                    *(v249 + 4) = v254;
                    v44 = v315;
                    _os_log_impl(&dword_0, v325, v248, "person's contact handle from list: %s", v249, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v251);
                    v213 = v250;
                    k = v197;

                    v203 = v324;
                  }

                  v255 = INPerson.encodeBase64.getter();
                  if (v204)
                  {
                    if (v255 == v203 && v204 == v256)
                    {

LABEL_185:

LABEL_186:
                      v259 = v279;
                      v260 = static os_log_type_t.default.getter();
                      v261 = v325;
                      if (os_log_type_enabled(v325, v260))
                      {
                        v262 = swift_slowAlloc();
                        v263 = swift_slowAlloc();
                        v326 = v263;
                        *v262 = 136315138;
                        v264 = v224;
                        v265 = [v264 description];
                        v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v268 = v267;

                        v269 = v279;
                        v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v266, v268, &v326);

                        *(v262 + 4) = v270;
                        v259 = v269;
                        _os_log_impl(&dword_0, v261, v260, "chosen item %s", v262, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v263);
                      }

                      (*(*v44 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                      v271 = swift_allocObject();
                      *(v271 + 16) = xmmword_B8FB0;
                      *(v271 + 32) = v224;
                      v272 = objc_allocWithZone(INShareETAIntent);
                      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v273 = v224;
                      v274 = Array._bridgeToObjectiveC()().super.isa;

                      v88 = [v272 initWithRecipients:v274];

                      (*(v281 + 8))(v280, v259);
                      goto LABEL_144;
                    }

                    v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v258)
                    {

                      goto LABEL_185;
                    }
                  }

                  else
                  {
                  }

                  ++v247;

                  if (k == v247)
                  {

                    v88 = v318;
                    v197 = v279;
                    goto LABEL_198;
                  }
                }
              }

              v44 = 0;
              *&v207 = 136315138;
              v323 = v207;
              while (1)
              {
                v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v197 = v44 + 1;
                if (__OFADD__(v44, 1))
                {
                  break;
                }

                v224 = v223;
                v225 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v325, v225))
                {
                  v226 = swift_slowAlloc();
                  v213 = swift_slowAlloc();
                  v326 = v213;
                  *v226 = v323;
                  v227 = INPerson.encodeBase64.getter();
                  v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v228, &v326);

                  *(v226 + 4) = v229;
                  _os_log_impl(&dword_0, v325, v225, "person's contact handle from list: %s", v226, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v213);

                  v203 = v324;
                }

                v230 = INPerson.encodeBase64.getter();
                if (v204)
                {
                  if (v230 == v203 && v204 == v231)
                  {

                    goto LABEL_182;
                  }

                  v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v232)
                  {

LABEL_182:

                    v44 = v315;
                    goto LABEL_186;
                  }
                }

                else
                {
                }

                swift_unknownObjectRelease();
                ++v44;
                if (v197 == k)
                {

                  v44 = v315;
                  v197 = v279;
                  goto LABEL_197;
                }
              }

              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              ;
            }

LABEL_197:
            v88 = v318;
LABEL_198:
            v275 = v312;

            v276 = v197;
            v153 = v275;
            (*(v281 + 8))(v280, v276);
            v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
          }

          else
          {

            v153 = v312;

            (*(v320 + 8))(v193, v194);
            v45 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
            v88 = v318;
          }
        }

        else
        {
        }
      }

      else
      {
        v153 = 0;
      }

      (*(*v44 + v45[123] + 104))(0);
      v215 = v153;
LABEL_144:

      return v88;
    }

    v23 = 0;
    v306 = (v74 & 0xC000000000000001);
LABEL_23:
    if (v306)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v51 + 16))
      {
        goto LABEL_87;
      }

      v82 = *(v74 + 8 * v23 + 32);
    }

    v20 = v82;
    v45 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
LABEL_6:
    v46 = static LocationSearchIntent.domainNode;
    v47 = *(v44 + 8);

    v47(v43, v23);
    *(&v28->isa + v51) = v46;
    v48 = v23;
    v314(v51 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v45, v23);
    v28 = v325;
    v49 = v51;
    v51 = v319;
    v50 = v316;
  }

  if (INPerson.encodeBase64.getter() == v28 && v83 == v43)
  {

    goto LABEL_55;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0)
  {

    ++v23;
    v20 = v311;
    v81 = v314;
    if (v45 == v80)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_55:

  v104 = static os_log_type_t.default.getter();
  v105 = v325;
  v106 = os_log_type_enabled(v325, v104);
  v107 = v315;
  if (v106)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v326 = v109;
    *v108 = 136315138;
    v110 = v20;
    v111 = [v110 description];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v326);

    *(v108 + 4) = v115;
    _os_log_impl(&dword_0, v105, v104, "chosen item %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
  }

  (*(*v107 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_B8FB0;
  *(v116 + 32) = v20;
  v117 = objc_allocWithZone(INShareETAIntent);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v118 = v20;
  v119 = Array._bridgeToObjectiveC()().super.isa;

  v88 = [v117 initWithRecipients:v119];

  return v88;
}

uint64_t ShareETAFlowDelegate.makeAppResolution()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for ShareETAFlowDelegate.logObject), "makeAppResolution executed", 26, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo16INShareETAIntentCGMd, &_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo16INShareETAIntentCGMR);
  swift_allocObject();
  return AppResolutionService.init()();
}

uint64_t ShareETAFlowDelegate.makeDialogTemplating()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for ShareETAFlowDelegate.logObject), "makeDialogTemplating executed", 29, 2, &_swiftEmptyArrayStorage);
  outlined init with copy of DeviceState(v1 + direct field offset for ShareETAFlowDelegate.currentDeviceState, v4);
  type metadata accessor for ShareETATemplatingService(0);
  swift_allocObject();
  return ShareETATemplatingService.init(deviceState:)(v4);
}

uint64_t ShareETAFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(void *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = static os_log_type_t.info.getter();
  v7 = *(v3 + direct field offset for ShareETAFlowDelegate.logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_B89E0;
  v9 = [a2 unsupportedReason];
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v6, &dword_0, v7, "makeUnsupportedValueBehavior with result %d", v16);

  v10 = [a2 unsupportedReason];
  v11 = type metadata accessor for UnsupportedValueBehavior();
  v12 = *(*(v11 - 8) + 104);
  v13 = &enum case for UnsupportedValueBehavior.dialogAndPrompt(_:);
  if (v10 <= 5)
  {
    v13 = &enum case for UnsupportedValueBehavior.dialogAndStop(_:);
  }

  v14 = *v13;

  return v12(a3, v14, v11);
}

uint64_t ShareETAFlowDelegate.makeAceViewProvider()(uint64_t a1)
{
  v2 = *(v1 + direct field offset for ShareETAFlowDelegate.logObject);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "makeAceViewProvider executed", v4, 2u);
  }

  type metadata accessor for ShareETAAceViewProvider(0);
  v5 = swift_allocObject();
  v6 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + v6) = OS_os_log.init(subsystem:category:)();
  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAAceViewProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v0 + v1) = OS_os_log.init(subsystem:category:)();
  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v36 = a3;
  v37 = a4;
  v11 = type metadata accessor for Locale();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin();
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.info.getter();
  v15 = *(v7 + direct field offset for ShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)(v14, &dword_0, v15, "makeDisambiguationList", 22, 2, &_swiftEmptyArrayStorage);
  v16 = [a5 disambiguationItems];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  if (v18 && (v33[1] = a7, v19 = [a5 disambiguationItems], v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v21 = specialized _arrayConditionalCast<A, B>(_:)(v20, &lazy cache variable for type metadata for INPerson, INPerson_ptr), , v21))
  {
    v23 = v36;
    v22 = v37;
    v24 = a6;
    if (v36 == 0x6E65697069636572 && v37 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v15, v25, "Building contacts disambiguation list", v26, 2u);
      }

      __swift_project_boxed_opaque_existential_1((v7 + direct field offset for ShareETAFlowDelegate.currentDeviceState), *(v7 + direct field offset for ShareETAFlowDelegate.currentDeviceState + 24));

      dispatch thunk of DeviceState.siriLocale.getter();
      specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v21, v13);
      v27 = *(*v7 + class metadata base offset for ShareETAFlowDelegate + 104);

      v27(v28);
      specialized _arrayForceCast<A, B>(_:)(v21);
      type metadata accessor for SiriKitDisambiguationList();
      swift_allocObject();
      SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
      v24();

      swift_bridgeObjectRelease_n();
      return (*(v34 + 8))(v13, v35);
    }

    v31 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_B89E0;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 32) = v23;
    *(v32 + 40) = v22;

    os_log(_:dso:log:_:_:)(v31, &dword_0, v15, "unhandles parameter name %@", 27, 2, v32);

    type metadata accessor for SiriKitDisambiguationList();
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }

  else
  {
    v30 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v30, &dword_0, v15, "disambiguation items can't be empty", 35, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for SiriKitDisambiguationList();
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = &_swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v9);
    type metadata accessor for OS_os_log(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t ShareETAFlowDelegate.makeNLContextProvider()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for ShareETAFlowDelegate.logObject), "Returning ShareETAContextProvider", 33, 2, &_swiftEmptyArrayStorage);
  v3 = outlined init with copy of DeviceState(v1 + direct field offset for ShareETAFlowDelegate.currentDeviceState, v10);
  v4 = (*(*v1 + class metadata base offset for ShareETAFlowDelegate + 40))(v3);
  v5 = (*(*v1 + class metadata base offset for ShareETAFlowDelegate + 64))();
  type metadata accessor for ShareETAContextProvider(0);
  v6 = swift_allocObject();
  v7 = direct field offset for ShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v6 + v7) = OS_os_log.init(subsystem:category:)();
  outlined init with copy of DeviceState(v10, v6 + direct field offset for ShareETAContextProvider.currentDeviceState);
  *(v6 + direct field offset for ShareETAContextProvider.isPOMMES) = v4 & 1;
  *(v6 + direct field offset for ShareETAContextProvider.isUSO) = v5 & 1;
  v8 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v8;
}

BOOL ShareETAFlowDelegate.shouldConfirmIntentWithUser(intent:intentResponse:)(uint64_t a1, void *a2)
{
  v4 = static os_log_type_t.info.getter();
  v5 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_B89E0;
  v7 = [a2 code];
  if (v7 == &dword_0 + 2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7 == &dword_0 + 2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &dword_0, v5, "share ETA shouldConfirmIntentWithUser: %@", 41, 2, v6);

  return [a2 code] == &dword_0 + 2;
}

uint64_t ShareETAFlowDelegate.makeConfirmationStateFromParse(parse:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v4 = type metadata accessor for USOParse();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin();
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v84 - v6;
  __chkstk_darwin();
  v87 = &v84 - v7;
  v8 = type metadata accessor for NLIntent();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin();
  v92 = (&v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v91 = (&v84 - v10);
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v95 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = &v84 - v14;
  __chkstk_darwin();
  v17 = &v84 - v16;
  v18 = static os_log_type_t.info.getter();
  v19 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  v20 = *(v12 + 16);
  v96 = a1;
  v20(v17, a1, v11);
  v90 = v18;
  if (os_log_type_enabled(v19, v18))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v101[0] = v22;
    *v21 = 136315138;
    v20(v15, v17, v11);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = v17;
    v27 = *(v12 + 8);
    v27(v26, v11);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v101);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v19, v90, "share ETA makeConfirmationStateFromParse: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v29 = v17;
    v27 = *(v12 + 8);
    v27(v29, v11);
  }

  v30 = v19;
  v32 = v95;
  v31 = v96;
  v20(v95, v96, v11);
  v33 = (*(v12 + 88))(v32, v11);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v12 + 96))(v32, v11);
LABEL_8:
    v34 = v94;
    v35 = *(v93 + 32);
    v36 = v91;
    v35(v91, v32, v94);
    v37 = v92;
    v35(v92, v36, v34);
    type metadata accessor for LocationSearchIntent(0);
    v38 = swift_allocObject();
    v39 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v38 + v39) = static LocationSearchIntent.domainNode;
    v35((v38 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v37, v34);
    v101[0] = v38;
    v40 = one-time initialization token for confirmationNode;

    if (v40 != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent();
    IntentNodeTraversable.value<A>(forNode:)();

    v41 = v99;
    v42 = type metadata accessor for SiriKitConfirmationState();
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v43 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      else
      {
        v43 = &enum case for SiriKitConfirmationState.unset(_:);
      }
    }

    else if (v41)
    {
      v43 = &enum case for SiriKitConfirmationState.rejected(_:);
    }

    else
    {
      v43 = &enum case for SiriKitConfirmationState.confirmed(_:);
    }

    return (*(*(v42 - 8) + 104))(v97, *v43, v42);
  }

  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v12 + 96))(v32, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    goto LABEL_8;
  }

  if (v33 == enum case for Parse.pommesResponse(_:))
  {
    (*(v12 + 96))(v32, v11);
    v44 = *v32;
    type metadata accessor for LocationSearchIntent(0);
    swift_allocObject();
    v45 = v44;
    v46 = *LocationSearchIntent.init(from:)(v45);
    (*(v46 + 256))();
  }

  if (v33 == enum case for Parse.uso(_:))
  {
    (*(v12 + 96))(v32, v11);
    v48 = v88;
    v49 = v87;
    (*(v88 + 32))(v87, v32, v89);
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v30, v50, "makeConfirmationstateFromParse, parsing uso parse", v51, 2u);
    }

    type metadata accessor for GeoParse();
    static GeoParse.getDomainIntent(parse:)(v31, &v99);
    if (v100)
    {
      outlined init with take of CATType(&v99, v101);
      outlined init with copy of DeviceState(v101, &v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
      type metadata accessor for LocationSearchIntent(0);
      if (swift_dynamicCast())
      {
        (*(*v98 + 256))();

        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        return (*(v48 + 8))(v49, v89);
      }

      v65 = static os_log_type_t.info.getter();
      v66 = v85;
      (*(v48 + 16))(v85, v49, v89);
      if (os_log_type_enabled(v30, v65))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v89;
        v70 = v68;
        *&v99 = v68;
        *v67 = 136315138;
        v71 = USOParse.debugDescription.getter();
        v96 = v30;
        v73 = v72;
        v74 = *(v48 + 8);
        v74(v66, v69);
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v99);

        *(v67 + 4) = v75;
        _os_log_impl(&dword_0, v96, v65, "SiriGeo expected LocationSearchIntent, recieved %s.", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);

        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        v74(v49, v69);
      }

      else
      {
        v79 = *(v48 + 8);
        v80 = v66;
        v81 = v89;
        v79(v80, v89);
        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        v79(v49, v81);
      }
    }

    else
    {
      outlined destroy of Mirror.DisplayStyle?(&v99, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      v54 = static os_log_type_t.info.getter();
      v55 = v86;
      (*(v48 + 16))(v86, v49, v89);
      if (os_log_type_enabled(v30, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v89;
        v59 = v57;
        v101[0] = v57;
        *v56 = 136315138;
        v60 = USOParse.debugDescription.getter();
        v96 = v30;
        v62 = v61;
        v63 = *(v48 + 8);
        v63(v55, v58);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v101);

        *(v56 + 4) = v64;
        _os_log_impl(&dword_0, v96, v54, "SiriGeo received a USO parse it doesn't support %s.", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);

        v63(v49, v58);
      }

      else
      {
        v76 = *(v48 + 8);
        v77 = v55;
        v78 = v89;
        v76(v77, v89);
        v76(v49, v78);
      }
    }

    v82 = enum case for SiriKitConfirmationState.unset(_:);
    v83 = type metadata accessor for SiriKitConfirmationState();
    return (*(*(v83 - 8) + 104))(v97, v82, v83);
  }

  else
  {
    v52 = enum case for SiriKitConfirmationState.unset(_:);
    v53 = type metadata accessor for SiriKitConfirmationState();
    (*(*(v53 - 8) + 104))(v97, v52, v53);
    return (v27)(v32, v11);
  }
}

uint64_t ShareETAFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState));
}

uint64_t ShareETAFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState));

  return v0;
}

uint64_t ShareETAFlowDelegate.__deallocating_deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  v1 = direct field offset for ShareETAFlowDelegate.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));

  return swift_deallocClassInstance();
}

uint64_t ShareETAAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, void (*a8)(void, void))
{
  v23 = a8;
  v10 = type metadata accessor for ImageSize();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_0, *(v8 + direct field offset for ShareETAAceViewProvider.logObject), "makeAceViewsForResolveNeedsDisambiguation", 41, 2, &_swiftEmptyArrayStorage);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v15 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v15)
  {
    v16 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_B8FB0;
    SiriKitDisambiguationList.disambiguationItems.getter();
    v18 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

    *(v17 + 32) = v18;
    if (a5 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v22 = _bridgeCocoaArray<A>(_:)();

      a5 = v22;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    }

    v24[0] = v17;
    specialized Array.append<A>(contentsOf:)(a5);
    v16(v24[0], 0);
  }

  else
  {
    SiriKitDisambiguationList.disambiguationItems.getter();
    (*(v11 + 104))(v13, enum case for ImageSize.default(_:), v10);
    v19 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();

    (*(v11 + 8))(v13, v10);
    type metadata accessor for SiriKitAceViewBuilder();
    static Device.current.getter();
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    v20 = dispatch thunk of SiriKitAceViewBuilder.build()();

    v23(v20, 0);
  }
}

uint64_t ShareETAAceViewProvider.init()()
{
  v1 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v0 + v1) = OS_os_log.init(subsystem:category:)();

  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  return v0;
}

uint64_t ShareETAAceViewProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ShareETAContextProvider.init(deviceState:isPOMMES:isUSO:)(void *a1, char a2, char a3)
{
  v7 = direct field offset for ShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v3 + v7) = OS_os_log.init(subsystem:category:)();
  outlined init with copy of DeviceState(a1, v3 + direct field offset for ShareETAContextProvider.currentDeviceState);
  *(v3 + direct field offset for ShareETAContextProvider.isPOMMES) = a2;
  *(v3 + direct field offset for ShareETAContextProvider.isUSO) = a3;
  v8 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t ShareETAContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v27 = type metadata accessor for PommesContext.Source();
  v25 = *(v27 - 8);
  __chkstk_darwin();
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v26 = &v22 - v8;
  v9 = type metadata accessor for NLContextUpdate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + direct field offset for ShareETAContextProvider.logObject);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v3;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "makeContextForHandleIntent", v15, 2u);
    v3 = v23;
  }

  NLContextUpdate.init()();
  if (*(v3 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v13, v16, "makeContextForHandleIntent adding pommesContext", v17, 2u);
    }

    (*(v25 + 104))(v24, enum case for PommesContext.Source.pluginDefined(_:), v27);
    v18 = v26;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v19 = type metadata accessor for PommesContext();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    NLContextUpdate.pommesContext.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_B8FB0;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  *(v20 + 32) = static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)();
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v10 + 16))(v6, v12, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  a3(v6);
  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v10 + 8))(v12, v9);
}

uint64_t ShareETAContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin();
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v31 - v9;
  v10 = type metadata accessor for PommesContext.Source();
  v38 = *(v10 - 8);
  __chkstk_darwin();
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = type metadata accessor for NLContextUpdate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + direct field offset for ShareETAContextProvider.logObject);
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v4;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "makeContextForConfirmIntent", v20, 2u);
    v4 = v32;
  }

  NLContextUpdate.init()();
  if (*(v4 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v18, v21, "makeContextForConfirmIntent adding pommesContext", v22, 2u);
    }

    (*(v38 + 104))(v37, enum case for PommesContext.Source.pluginDefined(_:), v10);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v23 = type metadata accessor for PommesContext();
    (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
    NLContextUpdate.pommesContext.setter();
  }

  else if (*(v4 + direct field offset for ShareETAContextProvider.isUSO) == 1)
  {
    v37 = v6;
    v38 = v15;
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v18, v24, "makeContextForConfirmIntent adding uso context", v25, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    *(swift_allocObject() + 16) = xmmword_B89E0;
    type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    swift_allocObject();
    v26 = UsoTaskBuilder_noVerb_common_Person.init()();
    type metadata accessor for UsoEntityBuilder_common_Person();
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    v27 = v33;
    static Siri_Nlu_External_SystemPrompted.from(_:)(v26, v33);
    Siri_Nlu_External_SystemDialogAct.init()();
    v28 = v35;
    v29 = v36;
    (*(v35 + 16))(v34, v27, v36);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v28 + 8))(v27, v29);
    NLContextUpdate.nluSystemDialogActs.setter();
    v6 = v37;
    v15 = v38;
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  (*(v15 + 16))(v6, v17, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v39(v6);
  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v15 + 8))(v17, v14);
}

uint64_t ShareETAContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a2;
  v30 = a3;
  v8 = type metadata accessor for Locale();
  v28 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(v6 + direct field offset for ShareETAContextProvider.logObject);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "makeNeedsDisambiguationContextFor", v15, 2u);
  }

  v16 = [a4 disambiguationItems];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  if (v18 && (v19 = [a4 disambiguationItems], v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v21 = specialized _arrayConditionalCast<A, B>(_:)(v20, &lazy cache variable for type metadata for INPerson, INPerson_ptr), , v21))
  {
    if (v29 == 0x6E65697069636572 && v30 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v22 = v6;
      (*(*v6 + class metadata base offset for ShareETAContextProvider + 32))(v33);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v23 = *(v6 + direct field offset for ShareETAContextProvider.isPOMMES);
      LODWORD(v22) = *(v22 + direct field offset for ShareETAContextProvider.isUSO);
      v24 = v32;

      specialized TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(v10, &outlined read-only object #0 of ShareETAContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:), v23, v22, v21, 0, v31, v24);

      (*(v28 + 8))(v10, v8);
      return __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {
    }
  }

  else
  {
    v26 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v26, &dword_0, v13, "disambiguation items can't be empty", 35, 2, &_swiftEmptyArrayStorage);
    v27 = type metadata accessor for NLContextUpdate();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v31(v12);
    return outlined destroy of Mirror.DisplayStyle?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }
}

uint64_t ShareETAContextProvider.makeNeedsValueContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for PommesContext.Source();
  v26 = *(v9 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v27 = &v24 - v11;
  v12 = type metadata accessor for NLContextUpdate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + direct field offset for ShareETAContextProvider.logObject);
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v5;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "makeNeedsValueContextFor", v18, 2u);
    v5 = v24;
  }

  NLContextUpdate.init()();
  if (*(v5 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v16, v19, "makeNeedsValueContextFor adding pommesContext", v20, 2u);
    }

    (*(v26 + 104))(v25, enum case for PommesContext.Source.pluginDefined(_:), v9);
    v21 = v27;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v22 = type metadata accessor for PommesContext();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    NLContextUpdate.pommesContext.setter();
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  (*(v13 + 16))(v8, v15, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  a5(v8);
  outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v13 + 8))(v15, v12);
}

void ShareETAContextProvider.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAContextProvider.currentDeviceState));
  v1 = *(v0 + direct field offset for ShareETAContextProvider.logObject);
}

uint64_t ShareETAContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAContextProvider.currentDeviceState));

  return v0;
}

uint64_t ShareETAContextProvider.__deallocating_deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  v1 = direct field offset for ShareETAContextProvider.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));
  v3 = *(v0 + direct field offset for ShareETAContextProvider.logObject);

  return swift_deallocClassInstance();
}

uint64_t ShareETAContextProvider.currentDeviceState.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v2 + v4, a2);
}

uint64_t ShareETAContextProvider.currentDeviceState.setter(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v4));
  outlined init with take of CATType(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ShareETATemplatingService.init(deviceState:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin();
  v24 = &v23 - v4;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for ShareETATemplatingService.catService;
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + v9) = v10;
  *(v10 + 16) = 0;
  v12 = direct field offset for ShareETATemplatingService.logObject;
  v13 = OS_os_log.init(subsystem:category:)();
  *(v2 + v12) = v13;
  v14 = v13;
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "initializing", v16, 2u);
  }

  outlined init with copy of DeviceState(a1, v2 + direct field offset for ShareETATemplatingService.device);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v17 = Locale.identifier.getter();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v27 = v17;
  v28 = v19;
  v25 = 45;
  v26 = 0xE100000000000000;
  v29 = 95;
  v30 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  static Device.current.getter();
  v20 = type metadata accessor for DucTemplatingLocalContext();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21INIntentSlotValueTypeV_SSTt0gq5Tf4g_n(&_swiftEmptyArrayStorage);
  static AceService.current.getter();
  v21 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v21;
}

uint64_t ShareETATemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeFailureHandlingIntentDialog", v11, 2u);
  }

  if (a3 && ((v12 = [a3 code], v12 == (&dword_C + 1)) || v12 == &dword_C))
  {
    v13 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v16) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v14 = static DialogHelper.globals.getter();
  (*(*v13 + 120))(v16, v14, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void ShareETATemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v36 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v13 = (&v35 - v12);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v14 = *(v9 + direct field offset for ShareETATemplatingService.logObject);
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "makeParameterValueUnsupportedDialog", v16, 2u);
  }

  if ([a4 resolutionResultCode] != &dword_0 + 1)
  {
    goto LABEL_7;
  }

  v17 = [a4 unsupportedReason];
  v18 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_B89E0;
  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  *(v19 + 32) = v17;
  os_log(_:dso:log:_:_:)(v18, &dword_0, v14, "unsupported reason %d", v35);

  if ((v17 - 1) < 3)
  {
    v20 = *(v9 + direct field offset for ShareETATemplatingService.catService);
    v39 = type metadata accessor for ShareETA(0);
    v40 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v38);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v21 = static DialogHelper.globals.getter();
    (*(*v20 + 120))(v38, v21, v36, a9);

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    return;
  }

  if (v17 == &dword_4 + 1)
  {
LABEL_7:
    v20 = *(v9 + direct field offset for ShareETATemplatingService.catService);
    v39 = type metadata accessor for ShareETA(0);
    v40 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v38) = 0;
    goto LABEL_8;
  }

  v22 = [a5 recipients];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      v25 = *(v24 + 32);
LABEL_14:
      v26 = v25;

      v27 = *(v9 + direct field offset for ShareETATemplatingService.catService);
      v39 = type metadata accessor for ShareETA(0);
      v40 = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
      type metadata accessor for DialogPerson();
      v29 = v26;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v30 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      *boxed_opaque_existential_0 = v30;
      swift_storeEnumTagMultiPayload();
      v31 = static DialogHelper.globals.getter();
      (*(*v27 + 120))(v38, v31, v36, a9);

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v32 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v32, &dword_0, v14, "recipients can't be nil", 23, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v33 = swift_allocError();
    *v34 = 0xD000000000000017;
    v34[1] = 0x80000000000C1340;
    *v13 = v33;
    swift_storeEnumTagMultiPayload();
    v36(v13);
    outlined destroy of Mirror.DisplayStyle?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t ShareETATemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + direct field offset for ShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeParameterPromptDialog", v11, 2u);
  }

  v12 = *(v6 + direct field offset for ShareETATemplatingService.catService);
  v19[3] = type metadata accessor for ShareETA(0);
  v19[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMd, &_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMR) + 48);
  *boxed_opaque_existential_0 = 0;
  v15 = enum case for BehaviorAfterSpeaking.listen(_:);
  v16 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_0 + v14, v15, v16);
  swift_storeEnumTagMultiPayload();
  v17 = static DialogHelper.globals.getter();
  (*(*v12 + 120))(v19, v17, a5, a6);

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

void ShareETATemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v10 = (&v34 - v9);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v11 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "makeIntentHandledDialog", v13, 2u);
  }

  if (!a3)
  {
    v22 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_0, v11, "response can't be nil", 21, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v23 = swift_allocError();
    *v24 = 0xD000000000000015;
    v24[1] = 0x80000000000C1360;
    *v10 = v23;
    swift_storeEnumTagMultiPayload();
    a4(v10);
LABEL_13:
    outlined destroy of Mirror.DisplayStyle?(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return;
  }

  v14 = a3;
  v15 = [v14 recipients];
  if (!v15)
  {
    v25 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v25, &dword_0, v11, "recipients can't be nil", 23, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v26 = swift_allocError();
    *v27 = 0xD000000000000017;
    v27[1] = 0x80000000000C1340;
    *v10 = v26;
    swift_storeEnumTagMultiPayload();
    a4(v10);

    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = [v14 mediums];
  v36 = a5;
  v37 = a4;
  if ((v20 & 4) != 0)
  {
    v21 = 3;
  }

  else if (([v14 mediums] & 8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = ([v14 mediums] >> 1) & 1;
  }

  v35 = v21;
  v28 = *(v5 + direct field offset for ShareETATemplatingService.catService);
  v39[3] = type metadata accessor for ShareETA(0);
  v39[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  type metadata accessor for DialogPerson();
  v30 = v19;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v31 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  *boxed_opaque_existential_0 = 0;
  v32 = v35;
  boxed_opaque_existential_0[1] = v31;
  boxed_opaque_existential_0[2] = v32;
  swift_storeEnumTagMultiPayload();
  v33 = static DialogHelper.globals.getter();
  (*(*v28 + 120))(v39, v33, v37, v36);

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
}

void ShareETATemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v10 = (&v26[-1] - v9);
  v11 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "makeIntentConfirmationDialog", v13, 2u);
  }

  if (a3)
  {
    v25 = a3;
    if ([v25 code] == &dword_0 + 2)
    {
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v11, v14, "intent needs confirmation", v15, 2u);
      }

      v16 = *(v5 + direct field offset for ShareETATemplatingService.catService);
      v26[3] = type metadata accessor for ShareETA(0);
      v26[4] = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
      v18 = enum case for BehaviorAfterSpeaking.listen(_:);
      v19 = type metadata accessor for BehaviorAfterSpeaking();
      (*(*(v19 - 8) + 104))(boxed_opaque_existential_0, v18, v19);
      swift_storeEnumTagMultiPayload();
      v20 = static DialogHelper.globals.getter();
      (*(*v16 + 120))(v26, v20, a4, a5);

      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v21, &dword_0, v11, "response can't be nil", 21, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v22 = swift_allocError();
    *v23 = 0xD000000000000015;
    v23[1] = 0x80000000000C1360;
    *v10 = v22;
    swift_storeEnumTagMultiPayload();
    a4(v10);
    outlined destroy of Mirror.DisplayStyle?(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t ShareETATemplatingService.makeIntentConfirmationCancelledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v10 = (&v27[-1] - v9);
  v11 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "makeIntentConfirmationCancelledDialog", v13, 2u);
  }

  if (a3)
  {
    v14 = a3;
    v15 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_B89E0;
    *(v16 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntentResponse, INShareETAIntentResponse_ptr);
    *(v16 + 64) = lazy protocol witness table accessor for type INShareETAIntentResponse and conformance NSObject();
    *(v16 + 32) = v14;
    v17 = v14;
    os_log(_:dso:log:_:_:)(v15, &dword_0, v11, "response %@", 11, 2, v16);

    if (([v17 mediums] & 4) != 0)
    {
      v18 = 3;
    }

    else if (([v17 mediums] & 8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = ([v17 mediums] >> 1) & 1;
    }

    v23 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v27[3] = type metadata accessor for ShareETA(0);
    v27[4] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    *boxed_opaque_existential_0 = 0;
    boxed_opaque_existential_0[1] = v18;
    swift_storeEnumTagMultiPayload();
    v25 = static DialogHelper.globals.getter();
    (*(*v23 + 120))(v27, v25, a4, a5);

    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v19, &dword_0, v11, "response can't be nil", 21, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v20 = swift_allocError();
    *v21 = 0xD000000000000015;
    v21[1] = 0x80000000000C1360;
    *v10 = v20;
    swift_storeEnumTagMultiPayload();
    a4(v10);
    return outlined destroy of Mirror.DisplayStyle?(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t *ShareETATemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v12, &dword_0, *(v9 + direct field offset for ShareETATemplatingService.logObject), "makeParameterValueDisambiguationDialog", 38, 2, &_swiftEmptyArrayStorage);
  v13 = [a4 disambiguationItems];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized _arrayConditionalCast<A, B>(_:)(v14, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = *(v9 + direct field offset for ShareETATemplatingService.catService);
  v28[3] = type metadata accessor for ShareETA(0);
  v28[4] = &protocol witness table for ShareETA;
  result = __swift_allocate_boxed_opaque_existential_0(v28);
  v19 = result;
  v26 = a8;
  if ((v16 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
    v20 = *(v16 + 32);
LABEL_7:

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
    type metadata accessor for DialogPerson();
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v22 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    *v19 = v22;
    v23 = enum case for BehaviorAfterSpeaking.listen(_:);
    v24 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v24 - 8) + 104))(v19 + v21, v23, v24);
    swift_storeEnumTagMultiPayload();
    v25 = static DialogHelper.globals.getter();
    (*(*v17 + 120))(v28, v25, v26, a9);

    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  __break(1u);
  return result;
}

uint64_t ShareETATemplatingService.__ivar_destroyer()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));
}

uint64_t ShareETATemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));
  return v0;
}

uint64_t ShareETATemplatingService.__deallocating_deinit()
{
  v0 = DucTemplatingService.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));

  return swift_deallocClassInstance();
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t specialized Sharing_Medium.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent)
  {
    type metadata accessor for LocationSearchIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError()
{
  result = lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError;
  if (!lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INShareETAIntentResponse and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INShareETAIntentResponse, INShareETAIntentResponse_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Sharing_Medium and conformance Sharing_Medium()
{
  result = lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium;
  if (!lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium);
  }

  return result;
}

uint64_t sub_41A20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 40))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41AF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 64))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_41C28(void *a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for ShareETAFlowDelegate + 104);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for Sharing_Medium(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sharing_Medium(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareETATemplatingService.ShareETATemplatingServiceError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ShareETATemplatingService.ShareETATemplatingServiceError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SAAceView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAAceView] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SAAceView] and conformance [A]);
  }

  return result;
}

uint64_t key path setter for DeleteParkingLocationBaseFlow.flowState : DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DeleteParkingLocationBaseFlow.State(a1, v5);
  return (*(**a2 + 120))(v5);
}

uint64_t DeleteParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of DeleteParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of DeleteParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeleteParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of DeleteParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of DeleteParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DeleteParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t DeleteParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DeleteParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DeleteParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(v8, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t DeleteParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v3 = __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *v5;
      *(a1 + 8) = 0;
      v7 = enum case for RCHFlowResult.error<A, B>(_:);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v8 - 8) + 104))(a1, v7, v8);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v14 - 8) + 32))(a1, v5, v14);
    }
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v10 = swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    *a1 = v10;
    *(a1 + 8) = 0;
    v12 = enum case for RCHFlowResult.error<A, B>(_:);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v13 - 8) + 104))(a1, v12, v13);
    return outlined destroy of DeleteParkingLocationBaseFlow.State(v5);
  }
}

uint64_t DeleteParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v9 + 96))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    v13 = v2[2];
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "DeleteParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v15, 2u);
    }

    v16 = type metadata accessor for NLIntent();
    (*(*(v16 - 8) + 8))(v11, v16);
    return 1;
  }

  else if (v12 == enum case for Parse.pommesResponse(_:))
  {
    (*(v9 + 8))(v11, v8);
    (*(*v2 + 168))(1);
    v18 = v2[2];
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    result = 1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v18, v19, "DeleteParkingLocationBaseFlow onInput returns true for Pommes response.", v21, 2u);

      return 1;
    }
  }

  else
  {
    v22 = v2[2];
    (*(v5 + 16))(v7, a1, v4);
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v22;
      v25 = v24;
      v31 = swift_slowAlloc();
      v33 = v31;
      *v25 = 136315138;
      v26 = Input.description.getter();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v32, v23, "SiriGeo currently doesn't support parse type: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return result;
}

uint64_t DeleteParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t DeleteParkingLocationBaseFlow.executeState()()
{
  v47 = v0;
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 88);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(v0 + 32);
      v4 = *v2;
      v5 = static os_log_type_t.error.getter();
      v6 = *(v3 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v46 = v8;
        *v7 = 136315138;
        *(v0 + 16) = v4;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v46);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "DeleteParkingLocationBaseFlow execute requestUnsupported with error %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      static ExecuteResponse.complete()();
    }

    else
    {
      v21 = *(v0 + 64);
      v20 = *(v0 + 72);
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      v24 = *(v0 + 32);
      (*(v23 + 32))(v20, v2, v22);
      v25 = static os_log_type_t.info.getter();
      v26 = *(v24 + 16);
      v27 = *(v23 + 16);
      v27(v21, v20, v22);
      v28 = os_log_type_enabled(v26, v25);
      v29 = *(v0 + 64);
      if (v28)
      {
        v45 = v25;
        v30 = *(v0 + 48);
        v31 = *(v0 + 56);
        v32 = *(v0 + 40);
        v33 = swift_slowAlloc();
        log = v26;
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136315138;
        v27(v31, v29, v32);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        v38 = *(v30 + 8);
        v38(v29, v32);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v46);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_0, log, v45, "DeleteParkingLocationBaseFlow execute rchComplete with result %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      else
      {
        v38 = *(*(v0 + 48) + 8);
        v38(*(v0 + 64), *(v0 + 40));
      }

      v40 = *(v0 + 72);
      v41 = *(v0 + 40);
      static ExecuteResponse.complete()();
      v38(v40, v41);
    }

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v12 = *(v0 + 32);
    v13 = *v2;
    *(v0 + 96) = *v2;
    v14 = *(v12 + 16);
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "DeleteParkingLocationBaseFlow execute state handle.", v16, 2u);
    }

    v44 = (*(**(v0 + 32) + 216) + **(**(v0 + 32) + 216));
    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    *v17 = v0;
    v17[1] = DeleteParkingLocationBaseFlow.executeState();
    v18 = *(v0 + 24);

    return v44(v18, v13);
  }
}

{

  return _swift_task_switch(DeleteParkingLocationBaseFlow.executeState(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo29INDeleteParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo29INDeleteParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1)
{
  v2 = *(*(v1 + 168) + 16);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteParkingLocationBaseFlow makeRCHflow.", v4, 2u);
  }

  v5 = *(v1 + 192);
  v7 = *(v1 + 168);
  v6 = *(v1 + 176);
  v25 = *(v1 + 160);
  v26 = *(v1 + 184);
  v8 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_0, v2, "DeleteParkingLocationBaseFlow makeRCHFlow", 41, 2, &_swiftEmptyArrayStorage);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, INDeleteParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  swift_allocObject();
  v24 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v23 = v6;
  v21 = v5;
  v9 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v22 = *(*v7 + 136);
  (v22)(v9);
  type metadata accessor for DeleteParkingHandleIntentStrategy();
  v10 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v10 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v1 + 16), v10 + 24);
  *(v10 + 64) = 0;
  *(v1 + 136) = v10;
  lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy, type metadata accessor for DeleteParkingHandleIntentStrategy, &protocol conformance descriptor for DeleteParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v11 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  v12 = swift_allocObject();
  *(v12 + 16) = OS_os_log.init(subsystem:category:)();
  v22();
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v14);
  (*(v13 + 56))(v14, v13);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
  v15 = *(v1 + 120);
  v16 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v15);
  *(v1 + 144) = v12;
  v17 = *(v16 + 8);
  v18 = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingBaseRCHStrategy and conformance DeleteParkingBaseRCHStrategy, type metadata accessor for DeleteParkingBaseRCHStrategy, &protocol conformance descriptor for DeleteParkingBaseRCHStrategy);
  v17(v1 + 144, v21, v24, v25, v11, v18, v15, v16);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v26 + 8))(v21, v23);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  v19 = *(v1 + 8);

  return v19();
}

uint64_t closure #1 in DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v5);
}

uint64_t DeleteParkingLocationBaseFlow.deinit()
{
  outlined destroy of DeleteParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t DeleteParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of DeleteParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance DeleteParkingLocationBaseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DeleteParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeleteParkingLocationBaseFlow(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(v11, a2, v12, a4, a5);
}

uint64_t outlined destroy of DeleteParkingLocationBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for DeleteParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow, type metadata accessor for DeleteParkingLocationBaseFlow, &protocol conformance descriptor for DeleteParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow, type metadata accessor for DeleteParkingLocationBaseFlow, &protocol conformance descriptor for DeleteParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_4463C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for DeleteParkingLocationBaseFlow(uint64_t a1)
{
  result = type metadata accessor for DeleteParkingLocationBaseFlow.State(319);
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

void type metadata completion function for DeleteParkingLocationBaseFlow.State(uint64_t a1)
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, INDeleteParkingLocationIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>);
    }
  }
}

uint64_t GeoFeatureFlags.isAltimeterEnabled.getter()
{
  v2[3] = &type metadata for SiriGeoFeature;
  v2[4] = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature()
{
  result = lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature;
  if (!lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature;
  if (!lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature);
  }

  return result;
}

const char *SiriGeoFeature.feature.getter(char a1)
{
  if (a1)
  {
    return "Altimeter";
  }

  else
  {
    return "placeHolder";
  }
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SiriGeoFeature()
{
  if (*v0)
  {
    return "Altimeter";
  }

  else
  {
    return "placeHolder";
  }
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.candidates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t _s21GeoFlowDelegatePlugin0A10DataModelsO021TrafficDisambiguationE5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOs0J3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x74616469646E6163;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, &protocol conformance descriptor for GeoContact, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall GeoDataModels.ParkingLocationDataModel.init(parkedCar:buttonLabel:)(GeoFlowDelegatePlugin::GeoDataModels::ParkingLocationDataModel *__return_ptr retstr, GeoFlowDelegatePlugin::GeoParkedCar *parkedCar, Swift::String buttonLabel)
{
  localizedAddress = parkedCar->localizedAddress;
  retstr->parkedCar.note = parkedCar->note;
  retstr->parkedCar.localizedAddress = localizedAddress;
  v4 = *&parkedCar->locationInfo.latitude;
  retstr->parkedCar.locationInfo.label = parkedCar->locationInfo.label;
  *&retstr->parkedCar.locationInfo.latitude = v4;
  retstr->buttonLabel = buttonLabel;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  if (*v0)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x614364656B726170;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614364656B726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.ParkingLocationDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  v10 = v3[2];
  v22 = v3[1];
  v23 = v10;
  v11 = v3[2];
  v24 = v3[3];
  v17 = v9;
  v18 = v22;
  v12 = *v3;
  v19 = v11;
  v20 = v3[3];
  v21 = v12;
  v16 = 0;
  outlined init with copy of GeoParkedCar(&v21, v15);
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  outlined destroy of GeoParkedCar(v15);
  if (!v2)
  {
    v14[15] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 GeoDataModels.ParkingLocationDataModel.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized GeoDataModels.ParkingLocationDataModel.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.init(from:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance GeoDataModels.ContactDisambiguationDataModel@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t GeoParkedCar.note.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RuntimeError.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GeoParkedCar.label.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double GeoDataModels.WhereAmIDataModel.currentLocation.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  v1 = 1145660781;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x4C746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x614C6E6F74747562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.WhereAmIDataModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.WhereAmIDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v11[15] = 3;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 GeoDataModels.WhereAmIDataModel.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized GeoDataModels.WhereAmIDataModel.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

void __swiftcall GeoDataModels.WhereAmIDataModel.init(meID:buttonLabel:localizedAddress:currentLocation:)(GeoFlowDelegatePlugin::GeoDataModels::WhereAmIDataModel *__return_ptr retstr, Swift::String_optional meID, Swift::String buttonLabel, Swift::String_optional localizedAddress, GeoFlowDelegatePlugin::StandardMapData currentLocation)
{
  retstr->meID = meID;
  retstr->buttonLabel = buttonLabel;
  retstr->localizedAddress = localizedAddress;
  retstr->currentLocation = currentLocation;
}

uint64_t GeoDataModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for DeviceIdiom() - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 80) | 2) == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v4;
    (*(v3 + 104))(v6, enum case for DeviceIdiom.car(_:), v4);
    v7 = static DeviceIdiom.== infix(_:_:)();
    (*(v3 + 8))(v6, v8);
  }

  return v7 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.CodingKeys()
{
  v1 = 0x4C676E696B726170;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x496D416572656877;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoDataModels.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v33 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v28 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin();
  v17 = &v28 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(v2 + 80) <= 1u)
  {
    if (!*(v2 + 80))
    {
      LOBYTE(v38) = 0;
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
      v18 = v37;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = *v2;
      *&v39 = *(v2 + 2);
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v28 + 8))(v14, v12);
      return (*(v36 + 8))(v17, v18);
    }

    LOBYTE(v38) = 1;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
    v20 = v37;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v2[3];
    v40 = v2[2];
    v41 = v22;
    v42 = v2[4];
    v23 = v2[1];
    v38 = *v2;
    v39 = v23;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
    v24 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v29;
    goto LABEL_8;
  }

  if (*(v2 + 80) != 2)
  {
    LOBYTE(v38) = 3;
    lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
    v11 = v33;
    v20 = v37;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v2[3];
    v40 = v2[2];
    v41 = v26;
    v42 = v2[4];
    v27 = v2[1];
    v38 = *v2;
    v39 = v27;
    lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
    v24 = v35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v34;
LABEL_8:
    (*(v25 + 8))(v11, v24);
    return (*(v36 + 8))(v17, v20);
  }

  LOBYTE(v38) = 2;
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
  v20 = v37;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v38 = *v2;
  *&v39 = *(v2 + 2);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  v21 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v31 + 8))(v8, v21);
  return (*(v36 + 8))(v17, v20);
}

double GeoDataModels.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized GeoDataModels.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t specialized GeoDataModels.ContactDisambiguationDataModel.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    v9[15] = 1;
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, &protocol conformance descriptor for GeoContact, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

uint64_t specialized GeoDataModels.ParkingLocationDataModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v8 = v5;
  v9 = v17;
  v35 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v8 + 8))(v7, v4);
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  *&v22 = v10;
  *(&v22 + 1) = v12;
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(&v18, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v23[0] = v30;
  v23[1] = v31;
  v23[2] = v32;
  v23[3] = v33;
  v24 = v10;
  v25 = v12;
  result = outlined destroy of GeoDataModels.ParkingLocationDataModel(v23);
  v14 = v21;
  v9[2] = v20;
  v9[3] = v14;
  v9[4] = v22;
  v15 = v19;
  *v9 = v18;
  v9[1] = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized GeoDataModels.TrafficDisambiguationDataModel.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    v9[15] = 1;
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData()
{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

uint64_t specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145660781 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000C16A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized GeoDataModels.WhereAmIDataModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v12;
  v26 = v11;
  LOBYTE(v35[0]) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v13;
  v39 = 3;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v23 = *(&v37 + 1);
  v24 = v37;
  v14 = v38;
  *&v30 = v9;
  v15 = v29;
  *(&v30 + 1) = v29;
  v16 = v26;
  *&v31 = v26;
  v17 = v28;
  *(&v31 + 1) = v28;
  v18 = v25;
  *&v32 = v25;
  v19 = v27;
  *(&v32 + 1) = v27;
  v33 = v37;
  v34 = v38;
  outlined init with copy of GeoDataModels.WhereAmIDataModel(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v35[0] = v9;
  v35[1] = v15;
  v35[2] = v16;
  v35[3] = v17;
  v35[4] = v18;
  v35[5] = v19;
  v35[6] = v24;
  v35[7] = v23;
  v36 = v14;
  result = outlined destroy of GeoDataModels.WhereAmIDataModel(v35);
  v21 = v33;
  a2[2] = v32;
  a2[3] = v21;
  a2[4] = v34;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

uint64_t specialized GeoDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000000000C16C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000000C16E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496D416572656877 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double specialized GeoDataModels.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v53 = *(v51 - 8);
  __chkstk_darwin();
  v55 = v44 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v52 = *(v49 - 8);
  __chkstk_darwin();
  v54 = v44 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v50 = *(v47 - 8);
  __chkstk_darwin();
  v6 = v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v48 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v44 - v12;
  v14 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  v15 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_17;
  }

  v45 = v7;
  v16 = v54;
  *&v57 = v11;
  v18 = v55;
  v17 = v56;
  v46 = v10;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = *(v19 + 16);
  if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v25 = &type metadata for GeoDataModels;
    v26 = v13;
    v27 = v46;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    swift_willThrow();
    (*(v57 + 8))(v26, v27);
    swift_unknownObjectRelease();
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    return result;
  }

  v44[1] = v19;
  if (v21 > 1)
  {
    v50 = v13;
    v37 = v17;
    if (v21 == 2)
    {
      LOBYTE(v58) = 2;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
      v30 = v16;
      v31 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
      v38 = v49;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v39 = (v57 + 8);
      (*(v52 + 8))(v30, v38);
      (*v39)(v50, v31);
      swift_unknownObjectRelease();
      v36 = v58;
      v57 = v59;
    }

    else
    {
      LOBYTE(v58) = 3;
      lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
      v34 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
      v40 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = v57;
      (*(v53 + 8))(v18, v40);
      (*(v41 + 8))(v50, v34);
      swift_unknownObjectRelease();
      v36 = v58;
      v57 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v67 = v63;
    }
  }

  else
  {
    if (v21)
    {
      LOBYTE(v58) = 1;
      lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
      v32 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
      v33 = v47;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v50 + 1))(v6, v33);
      (*(v57 + 8))(v13, v32);
      swift_unknownObjectRelease();
      v36 = v58;
      v57 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v67 = v63;
    }

    else
    {
      LOBYTE(v58) = 0;
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
      v28 = v9;
      v29 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
      v35 = v45;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v48 + 8))(v28, v35);
      (*(v57 + 8))(v13, v29);
      swift_unknownObjectRelease();
      v36 = v58;
      v57 = v59;
    }

    v37 = v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  *v37 = v36;
  *(v37 + 8) = v57;
  v43 = v65;
  *(v37 + 24) = v64;
  *(v37 + 40) = v43;
  result = *&v66;
  *(v37 + 56) = v66;
  *(v37 + 72) = v67;
  *(v37 + 80) = v21;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoContact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContactHandleResolver.__allocating_init(contactService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t ContactHandleResolver.init(contactService:)(uint64_t a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t ContactHandleResolver.filterHandles(recipients:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(ContactHandleResolver.filterHandles(recipients:), 0, 0);
}

uint64_t ContactHandleResolver.filterHandles(recipients:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  *v2 = v0;
  v2[1] = ContactHandleResolver.filterHandles(recipients:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000000000C1730, partial apply for closure #1 in ContactHandleResolver.filterHandles(recipients:), v1, v3);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = ContactHandleResolver.filterHandles(recipients:);
  }

  else
  {

    v2 = ContactHandleResolver.filterHandles(recipients:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  (*(*a2 + 112))(a3, partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:), v11);
}

uint64_t closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void ContactHandleResolver.filterHandles(recipients:_:)(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v34 = a2;
    v35 = a3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v34 = a2;
  v35 = a3;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v7 = &MockShareETABaseFlow;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(a1 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = [v8 *&v7[50].flags];
    if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      v18 = &v6[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v7 = &MockShareETABaseFlow;
    }

    else
    {
    }

    ++v5;
  }

  while (v4 != v5);
LABEL_19:
  v21 = static os_log_type_t.default.getter();
  v22 = *(v36 + 16);
  os_log(_:dso:log:_:_:)(v21, &dword_0, v22, "filter handles", 14, 2, &_swiftEmptyArrayStorage);
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v24 = v23;
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v22, v25, "share ETA confirm ready", v26, 2u);
    }

    v27 = swift_allocObject();
    v27[2] = v36;
    v27[3] = v24;
    v27[4] = v6;
    v27[5] = v34;
    v27[6] = v35;
    v27[7] = a1;
    aBlock[4] = partial apply for specialized closure #1 in ContactHandleResolver.filterHandles(recipients:_:);
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);

    v29 = v24;

    [v29 performBlockAfterInitialSync:v28];
    _Block_release(v28);
  }

  else
  {

    v30 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v30, &dword_0, v22, "could not get shared instance", 29, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for RuntimeError();
    v31 = swift_allocObject();
    *(v31 + 16) = 0xD000000000000024;
    *(v31 + 24) = 0x80000000000C1780;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    v32 = swift_allocError();
    *v33 = v31;
    v34(v32, 1);
  }
}

uint64_t specialized closure #1 in ContactHandleResolver.filterHandles(recipients:_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = static os_log_type_t.info.getter();
  v14 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_B89E0;
  *(v15 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripService, MSPSharedTripService_ptr);
  *(v15 + 64) = lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject();
  *(v15 + 32) = a3;
  v16 = a3;
  os_log(_:dso:log:_:_:)(v13, &dword_0, v14, "after initialSync shared trip retrieved %@", 42, 2, v15);

  v17 = *(a2 + 24);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v19 = *(*v17 + 144);

  v20 = a1;

  v19(a4, partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:_:), v18);
}

uint64_t closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, unint64_t a6)
{
  v84 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin();
  v89 = &v82 - v11;
  v12 = static os_log_type_t.info.getter();
  v13 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_B89E0;
  v15 = Array.debugDescription.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)(v12, &dword_0, v13, "shared trip ranked contacts %@", 30, 2, v14);

  v18 = static os_log_type_t.default.getter();
  v88 = v13;
  v19 = os_log_type_enabled(v13, v18);
  v97 = a6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v99[0] = v21;
    *v20 = 136315138;
    v22 = a3;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    a6 = v97;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v99);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_0, v88, v18, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  if (*(a1 + 16))
  {
    v29 = specialized ContactHandleResolver.phoneDisambiguationCandidates(_:)(a1);
    isa = v30;
    v32 = *(v30 + 2);
    v83 = v29;
    if (v32)
    {
      v82 = a4;
      v98 = &_swiftEmptyArrayStorage;
      v87 = v32;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (a6 >> 62)
      {
        goto LABEL_60;
      }

      v95 = a6 & 0xFFFFFFFFFFFFFF8;
      for (i = *(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v34 = 0;
        v85 = isa;
        v86 = isa + 32;
        v96 = a6 & 0xC000000000000001;
        v35 = v87;
        while (1)
        {
          if (v34 == v35)
          {
            goto LABEL_58;
          }

          if (v34 >= *(isa + 2))
          {
            break;
          }

          v93 = v34;
          v38 = &v86[48 * v34];
          v39 = *v38;
          v40 = v38[1];
          v42 = v38[2];
          v41 = v38[3];
          v43 = v38[4];
          v44 = v38[5];
          v90 = v39;
          v99[0] = v39;
          v99[1] = v40;
          v99[2] = v42;
          v99[3] = v41;
          v99[4] = v43;
          v99[5] = v44;
          v92 = v44;
          v94 = v40;

          v91 = v42;
          isa = EnhancedMSPSharedTripContact.getPersonHandle()().super.isa;
          if (i)
          {
            v45 = 0;
            while (1)
            {
              if (v96)
              {
                v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v45 >= *(v95 + 16))
                {
                  goto LABEL_57;
                }

                v46 = *(a6 + 8 * v45 + 32);
              }

              v47 = v46;
              v48 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v49 = [v46 personHandle];
              if (v49 && (v50 = v49, v51 = [v49 value], v50, v51))
              {
                v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v54 = v53;
              }

              else
              {
                v52 = 0;
                v54 = 0;
              }

              v55 = [(objc_class *)isa value];
              if (!v55)
              {
                break;
              }

              v56 = v55;
              v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v59 = v58;

              if (v54)
              {
                if (v59)
                {
                  if (v52 == v57 && v54 == v59)
                  {

LABEL_38:
                    a6 = v97;
                    goto LABEL_39;
                  }

                  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v60)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_16;
                }

LABEL_15:

LABEL_16:
                a6 = v97;
                goto LABEL_17;
              }

              a6 = v97;
              if (!v59)
              {
                goto LABEL_39;
              }

LABEL_17:
              ++v45;
              if (v48 == i)
              {
                goto LABEL_36;
              }
            }

            if (!v54)
            {
              goto LABEL_38;
            }

            goto LABEL_15;
          }

LABEL_36:
          v47 = 0;
LABEL_39:
          v61 = type metadata accessor for PersonNameComponents();
          v62 = *(v61 - 8);
          v63 = v89;
          (*(v62 + 56))(v89, 1, 1, v61);
          if (v47 && (v64 = [v47 contactIdentifier]) != 0)
          {
            v65 = v64;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v63 = v89;
          }

          else
          {
            v67 = 0;
          }

          if ((*(v62 + 48))(v63, 1, v61) == 1)
          {
            v68 = 0;
          }

          else
          {
            v68 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            (*(v62 + 8))(v63, v61);
          }

          v69 = String._bridgeToObjectiveC()();
          if (v67)
          {
            v36 = String._bridgeToObjectiveC()();
          }

          else
          {
            v36 = 0;
          }

          v34 = v93 + 1;
          [objc_allocWithZone(INPerson) initWithPersonHandle:isa nameComponents:v68 displayName:v69 image:0 contactIdentifier:v36 customIdentifier:0];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v35 = v87;
          v37 = v88;
          isa = v85;
          if (v34 == v87)
          {

            v75 = v98;
            a4 = v82;
            goto LABEL_53;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        v95 = a6 & 0xFFFFFFFFFFFFFF8;
      }
    }

    v75 = &_swiftEmptyArrayStorage;
    v37 = v88;
LABEL_53:
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v98 = v78;
      *v77 = 67109378;
      *(v77 + 4) = v83 & 1;
      *(v77 + 8) = 2080;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v79 = Array.description.getter();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v98);

      *(v77 + 10) = v81;
      _os_log_impl(&dword_0, v37, v76, "disambiguation required %{BOOL}d disambiguation list %s", v77, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
    }

    a4(v75, 0);
  }

  else
  {
    v70 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v70, &dword_0, v88, "resolveRecipients no MSPSharedContact could be retrieved", 56, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for RuntimeError();
    v71 = swift_allocObject();
    *(v71 + 16) = 0xD00000000000001DLL;
    *(v71 + 24) = 0x80000000000C18B0;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    v72 = swift_allocError();
    *v73 = v71;
    a4(v72, 1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t GeoFlowDelegatePlugin.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v6(a1);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError()
{
  result = lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError;
  if (!lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError)
  {
    type metadata accessor for RuntimeError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError);
  }

  return result;
}

uint64_t sub_4AED4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology18TerminalIntentNodeVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology18TerminalIntentNodeVGMR, &type metadata accessor for TerminalIntentNode);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR, &type metadata accessor for DisplayHint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR, &type metadata accessor for SemanticValue);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for MSPSharedTripService, MSPSharedTripService_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject);
  }

  return result;
}

uint64_t sub_4B488()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t specialized ContactHandleResolver.phoneDisambiguationCandidates(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v32 = *(a1 + 32);
    *&v33 = v11;
    *(&v33 + 1) = *(a1 + 56);
    *&v34 = v12;
    *(&v34 + 1) = *(a1 + 72);
    v13 = *(&v34 + 1);

    v14 = v11;
    LOBYTE(v11) = EnhancedMSPSharedTripContact.isPhoneNumber()();

    if (v11)
    {
      v15 = EnhancedMSPSharedTripContact.getCapabilityType()();
      v16 = (a1 + 72);
      v17 = &_swiftEmptyArrayStorage;
      do
      {
        v18 = *(v16 - 3);
        v19 = *(v16 - 1);
        v20 = *v16;
        v29 = *(v16 - 5);
        *&v30 = v18;
        *(&v30 + 1) = *(v16 - 2);
        *&v31 = v19;
        *(&v31 + 1) = *v16;
        if (v15 != EnhancedMSPSharedTripContact.getCapabilityType()() || v12 != v19)
        {
          break;
        }

        v21 = v20;

        v22 = v18;
        if (!EnhancedMSPSharedTripContact.isPhoneNumber()())
        {

          return *(v17 + 2) > 1uLL;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v17);
        }

        v16 += 6;
        *(v17 + 2) = v24 + 1;
        v25 = &v17[48 * v24];
        *(v25 + 3) = v30;
        *(v25 + 4) = v31;
        *(v25 + 2) = v29;
        --v2;
      }

      while (v2);
      return *(v17 + 2) > 1uLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
      v26 = swift_allocObject();
      v26[1] = xmmword_B89E0;
      v26[2] = v32;
      v26[3] = v33;
      v26[4] = v34;

      v27 = v14;
      v28 = v13;
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_B89E0;
    if (v2 == 1)
    {
      v4 = *(a1 + 40);
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *(result + 32) = *(a1 + 32);
      *(result + 40) = v4;
      *(result + 48) = v6;
      *(result + 56) = v5;
      *(result + 64) = v7;
      *(result + 72) = v8;
      v9 = v8;

      v10 = v6;
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_4B8A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);

  return closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(a1, a2 & 1);
}

uint64_t static GeoFeatureManager.shouldEnableAltimeter.getter()
{
  v2[3] = &type metadata for SiriGeoFeature;
  v2[4] = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

uint64_t FSMFlow.on(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  __chkstk_darwin();
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v43 - v13;
  v49 = *(a3 + 40);
  v50 = a3 + 40;
  v15 = v49(a2, a3);
  v16 = *(v11 + 16);
  v51 = v3;
  v48 = v16;
  v45 = v11 + 16;
  v16(v14, v3, a2);
  (*(v8 + 16))(v10, a1, v7);
  v44 = static os_log_type_t.default.getter();
  v46 = v15;
  v17 = os_log_type_enabled(v15, v44);
  v53 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v43 = a1;
    v19 = v18;
    v54 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v11;
    v22 = a3;
    v24 = v23;
    v47 = *(v21 + 8);
    v47(v14, a2);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v54);
    a3 = v22;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v8 + 8))(v10, v7);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v54);

    *(v19 + 14) = v29;
    v30 = v46;
    _os_log_impl(&dword_0, v46, v44, "on %s input %s", v19, 0x16u);
    swift_arrayDestroy();

    a1 = v43;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v47 = *(v11 + 8);
    v47(v14, a2);
  }

  v31 = v51;
  v32 = (*(a3 + 48))(a1, a2, a3);
  v33 = v49(a2, a3);
  v34 = v52;
  v48(v52, v31, a2);
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136315394;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v47(v34, a2);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v54);

    *(v36 + 4) = v41;
    *(v36 + 12) = 1024;
    *(v36 + 14) = v32 & 1;
    _os_log_impl(&dword_0, v33, v35, "on exit %s return %{BOOL}d", v36, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {

    v47(v34, a2);
  }

  return v32 & 1;
}

uint64_t FSMFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v11 + 40))(v12, v11);
  (*(v8 + 16))(v10, v4, a3);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[1] = a2;
    v23[2] = v4;
    v17 = v16;
    v24 = v16;
    *v15 = 136315138;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v23[0] = a1;
    v20 = v19;
    (*(v8 + 8))(v10, a3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "execute %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {

    (*(v8 + 8))(v10, a3);
  }

  return Flow.deferToExecuteAsync(_:)();
}

uint64_t FSMFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v4[5] = *(a2 - 8);
  v4[6] = swift_task_alloc();
  v10 = (*(a3 + 56) + **(a3 + 56));
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = FSMFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t FSMFlow.execute()()
{

  return _swift_task_switch(FSMFlow.execute(), 0, 0);
}

{
  v21 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = (*(v0[3] + 40))(v4);
  (*(v2 + 16))(v1, v3, v4);
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  if (v7)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "execute return %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v17 = v0[2];

    (*(v9 + 8))(v8, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t FSMFlow.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  strcpy(v8, " flowState: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  (*(a2 + 32))(a1, a2);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6C61567469786520;
  v5._object = 0xEC000000203A6575;
  String.append(_:)(v5);
  dispatch thunk of Flow.exitValue.getter();
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  return v8[0];
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(a1);
  return v2;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v3 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v3 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v3 + 32) = OS_os_log.init(subsystem:category:)();
  *(v3 + 16) = 1;
  *(v1 + 24) = v3;
  outlined init with take of CATType(a1, v1 + 32);
  return v1;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.requireUnlock(intentResolutionRecord:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  [static AssistantProperties.instance currentNavigationState];
  IsNavigating = AFNavigationStateIsNavigating();
  v2 = *(v0 + 16);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (IsNavigating)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (IsNavigating)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "isNavigating returns %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return IsNavigating ^ 1u;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = type metadata accessor for AceOutput();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  v30 = v0;
  v1 = v0[34];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INReportIncidentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INReportIncidentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.app.getter();
  v2 = IntentResolutionRecord.intent.getter();
  v3 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v0[48] = v3;

  v4 = *(v1 + 16);
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = v3;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v29);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "appLaunch command is %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[34];
  v15 = IntentResolutionRecord.intent.getter();
  v16 = specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(v15);

  v17 = v14[3];
  if (v16)
  {
    v0[20] = type metadata accessor for TrafficIncident(0);
    v0[21] = &protocol witness table for TrafficIncident;
    __swift_allocate_boxed_opaque_existential_0(v0 + 17);
    swift_storeEnumTagMultiPayload();
    v18 = v14[7];
    v19 = v14[8];
    __swift_project_boxed_opaque_existential_1(v14 + 4, v18);
    v20 = (*(v19 + 80))(v18, v19);
    v0[49] = v20;
    v28 = (*(*v17 + 112) + **(*v17 + 112));
    v21 = swift_task_alloc();
    v0[50] = v21;
    *v21 = v0;
    v21[1] = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v22 = v0[47];
    v23 = v0 + 17;
  }

  else
  {
    v0[5] = type metadata accessor for TrafficIncident(0);
    v0[6] = &protocol witness table for TrafficIncident;
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    swift_storeEnumTagMultiPayload();
    v24 = v14[7];
    v25 = v14[8];
    __swift_project_boxed_opaque_existential_1(v14 + 4, v24);
    v20 = (*(v25 + 80))(v24, v25);
    v0[52] = v20;
    v28 = (*(*v17 + 112) + **(*v17 + 112));
    v26 = swift_task_alloc();
    v0[53] = v26;
    *v26 = v0;
    v26[1] = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v22 = v0[46];
    v23 = v0 + 2;
  }

  return v28(v22, v23, v20);
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v45 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 272);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  (*(v5 + 32))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 216) = 0u;
  *(v7 + 16) = xmmword_B8FB0;
  *(v7 + 32) = v1;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  v8 = v1;
  v9 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v42 = v9;
    swift_once();
    v9 = v42;
  }

  v10 = logObject;
  os_log(_:dso:log:_:_:)(v9, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "sendCompletionViewOutputSuccess", v12, 2u);
  }

  v14 = *(v0 + 320);
  v13 = *(v0 + 328);
  v15 = *(v0 + 280);
  v16 = *(v0 + 288);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  v17 = static os_log_type_t.info.getter();
  v18 = *(v16 + 16);
  v18(v14, v13, v15);
  v19 = os_log_type_enabled(v10, v17);
  v20 = *(v0 + 320);
  if (v19)
  {
    v21 = *(v0 + 312);
    v43 = v17;
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    v18(v21, v20, v23);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v22 + 8))(v20, v23);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v44);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v10, v43, "sendCompletionViewOutput dialog final output is: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    (*(*(v0 + 288) + 8))(*(v0 + 320), *(v0 + 280));
  }

  v30 = *(v0 + 376);
  v31 = *(v0 + 384);
  v32 = *(v0 + 352);
  v33 = *(v0 + 360);
  v34 = *(v0 + 344);
  v35 = *(v0 + 328);
  v36 = *(v0 + 280);
  v37 = *(v0 + 288);
  v38 = *(v0 + 256);
  v38[3] = v36;
  v38[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(v37 + 32))(boxed_opaque_existential_0, v35, v36);

  outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v34, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  (*(v33 + 8))(v30, v32);

  v40 = *(v0 + 8);

  return v40();
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  (*(v5 + 32))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v7 + 16) = xmmword_B8FB0;
  *(v7 + 32) = v1;
  *(v0 + 128) = 0;
  v8 = v1;
  v9 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v41 = v9;
    swift_once();
    v9 = v41;
  }

  v10 = logObject;
  os_log(_:dso:log:_:_:)(v9, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "sendCompletionViewOutputSuccess", v12, 2u);
  }

  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 280);
  v16 = *(v0 + 288);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  v17 = static os_log_type_t.info.getter();
  v18 = *(v16 + 16);
  v18(v14, v13, v15);
  if (os_log_type_enabled(v10, v17))
  {
    v19 = *(v0 + 312);
    v42 = v17;
    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 280);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = v24;
    *v23 = 136315138;
    v18(v19, v21, v22);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v20 + 8))(v21, v22);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v43);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_0, v10, v42, "sendCompletionViewOutput dialog final output is: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  }

  v29 = *(v0 + 384);
  v31 = *(v0 + 360);
  v30 = *(v0 + 368);
  v32 = *(v0 + 352);
  v33 = *(v0 + 336);
  v34 = *(v0 + 304);
  v35 = *(v0 + 280);
  v36 = *(v0 + 288);
  v37 = *(v0 + 256);
  v37[3] = v35;
  v37[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(v36 + 32))(boxed_opaque_existential_0, v34, v35);

  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v31 + 8))(v30, v32);

  v39 = *(v0 + 8);

  return v39();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}