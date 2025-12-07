DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider __swiftcall DOCAnalyticsActionEvent.FileProvider.init(nodes:)(Swift::OpaquePointer nodes)
{
  v3 = v1;
  if (!(nodes._rawValue >> 62))
  {
    v4 = *((nodes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v19;
    do
    {
      if ((nodes._rawValue & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v6, nodes._rawValue);
      }

      else
      {
        v8 = *(nodes._rawValue + v6 + 4);
        swift_unknownObjectRetain();
      }

      v9 = [v8 providerID];
      swift_unknownObjectRelease();
      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v11 + 1;
      *(v19 + 8 * v11 + 32) = v9;
    }

    while (v4 != v6);

LABEL_14:
    v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo12FPProviderIDa_SayAEGTt0g5Tf4g_n(v7);

    if (*(v12 + 16))
    {
      v13 = specialized Collection.first.getter(v12);
      if (v13)
      {
        v14 = v13;
        v15 = *(v12 + 16);

        if (v15 == 1)
        {
          v16 = v14;
          if (DOCProviderDomainIDIsExternalDevice())
          {

            v17 = 5;
          }

          else if (DOCProviderDomainIDIsSharedServerDomainID())
          {

            v17 = 6;
          }

          else
          {
            DOCAnalyticsActionEvent.FileProvider.init(sourceID:)(v16);

            v17 = v18;
            if (v18 == 9)
            {
              v17 = 4;
            }
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      v17 = 1;
    }

    else
    {

      v17 = 0;
    }

LABEL_23:
    *v3 = v17;
    return result;
  }

  __break(1u);
  return result;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::Source __swiftcall DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(__C::DOCDocumentSourceIdentifier sourceIdentifier)
{
  v3 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    v11 = 2;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {

      v11 = 2;
    }

    else
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {

        v11 = 3;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          v11 = 3;
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

LABEL_9:
  *v3 = v11;
  return result;
}

void DOCAnalyticsActionEvent.init(actionType:configuration:provider:bundleIdentifier:source:viewMode:)(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{

  v13 = *a1;
  v30 = *a5;
  v31 = *a3;
  v14 = *a6;
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = a2;
  DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v20, v17, v19, &v34);
  v21 = v34;
  v22 = v20;
  DOCAnalyticsActionEvent.SortMode.init(configuration:)(v22, &v33);
  v23 = v33;
  v24 = v22;
  DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v24, &v32);
  v25 = v32;
  v26 = [v24 hostIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *a7 = 0xD000000000000032;
  *(a7 + 8) = 0x8000000249BCDC20;
  *(a7 + 16) = v27;
  *(a7 + 24) = v29;
  *(a7 + 32) = v13;
  *(a7 + 33) = v21;
  *(a7 + 34) = v31;
  *(a7 + 35) = v30;
  *(a7 + 36) = v14;
  *(a7 + 37) = v23;
  *(a7 + 38) = v25;
}

uint64_t DOCAnalyticsActionEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsActionEvent.propertiesBuilder.getter())()
{
  v1 = v0[1];
  v6 = *v0;
  v7[0] = v1;
  *(v7 + 15) = *(v0 + 31);
  v2 = swift_allocObject();
  v3 = v0[1];
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 47) = *(v0 + 31);
  outlined init with copy of DOCAnalyticsActionEvent(&v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsActionEvent.propertiesBuilder.getter;
}

unint64_t DOCAnalyticsActionEvent.build()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA2880;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x746E65696C63;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x72656469766F7270;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0x656372756F73;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = 0x65646F4D77656976;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0x65646F4D74726F73;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = Int._bridgeToObjectiveC()();
  *(inited + 176) = 0x6564724F74726F73;
  *(inited + 184) = 0xE900000000000072;
  *(inited + 192) = Int._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v1;
}

uint64_t DOCAnalyticsActionEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DOCAnalyticsActionEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void __swiftcall DOCAnalyticsActionEvent.init(actionType:client:provider:source:viewMode:sortingField:sortingOrder:bundleID:)(DocumentManagerExecutables::DOCAnalyticsActionEvent *__return_ptr retstr, DocumentManagerExecutables::DOCAnalyticsActionEvent::Action actionType, DocumentManagerExecutables::DOCAnalyticsActionEvent::Client client, DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider provider, DocumentManagerExecutables::DOCAnalyticsActionEvent::Source source, DocumentManagerExecutables::DOCAnalyticsActionEvent::ViewMode viewMode, DocumentManagerExecutables::DOCAnalyticsActionEvent::SortMode sortingField, DocumentManagerExecutables::DOCAnalyticsActionEvent::SortOrder sortingOrder, Swift::String_optional bundleID)
{
  v9 = *actionType;
  v10 = *client;
  v11 = *provider;
  v12 = *source;
  v13 = *viewMode;
  v14 = *sortingField;
  v15 = *sortingOrder;
  retstr->name._countAndFlagsBits = 0xD000000000000032;
  retstr->name._object = 0x8000000249BCDC20;
  retstr->actionType = v9;
  retstr->client = v10;
  retstr->provider = v11;
  retstr->source = v12;
  retstr->viewMode = v13;
  retstr->sortMode = v14;
  retstr->sortOrder = v15;
  retstr->bundleID = bundleID;
}

void DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (![a1 isFilesApp])
  {
    if ([a1 isPopover])
    {

      v8 = 4;
      goto LABEL_20;
    }

    if ([a1 isWidget])
    {

      v8 = 6;
      goto LABEL_20;
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a3)
    {
      if (v9 == a2 && v10 == a3)
      {

        goto LABEL_19;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {

LABEL_19:
        v8 = 5;
        goto LABEL_20;
      }
    }

    else
    {
    }

    if ([a1 forPickingDocuments] || objc_msgSend(a1, sel_forPickingFolders))
    {

      v8 = 2;
      goto LABEL_20;
    }

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a3)
    {
      if (v13 == a2 && v14 == a3)
      {

LABEL_27:
        v8 = 3;
        goto LABEL_20;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v8 = 0;
    goto LABEL_20;
  }

  v8 = 1;
LABEL_20:
  *a4 = v8;
}

void DOCAnalyticsActionEvent.SortMode.init(configuration:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedStore];
  v5 = [v4 interfaceStateForConfiguration_];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 sortingMode];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_8;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  DOCItemSortMode.init(rawValue:)(v14);

  v13 = asc_249BCEEC3[v15[0]];
LABEL_10:
  *a2 = v13;
}

void DOCAnalyticsActionEvent.SortOrder.init(configuration:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedStore];
  v5 = [v4 interfaceStateForConfiguration_];

  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v5 sortingMode];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_18;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_24;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v15, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:

    goto LABEL_20;
  }

  countAndFlagsBits = v24._countAndFlagsBits;
  DOCItemSortMode.init(rawValue:)(v24);
  if (v25[0] == 10)
  {
LABEL_19:

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  LOBYTE(v24._countAndFlagsBits) = v25[0];
  DOCItemSortDescriptor.init(type:isReversed:)(&v24, countAndFlagsBits, v25);
  v19 = v26;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_27;
  }

LABEL_12:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x24C1FC540](0, v19);
LABEL_15:
    v21 = v20;
    v22 = [v20 ascending];

    if (v22)
    {
      v23 = 1;
LABEL_21:
      *a2 = v23;
      return;
    }

LABEL_28:
    v23 = 2;
    goto LABEL_21;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t protocol witness for DOCAnalyticsEventProtocol.name.getter in conformance DOCAnalyticsActionEvent()
{
  v1 = *v0;

  return v1;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsActionEvent())()
{
  v1 = v0[1];
  v6 = *v0;
  v7[0] = v1;
  *(v7 + 15) = *(v0 + 31);
  v2 = swift_allocObject();
  v3 = v0[1];
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 47) = *(v0 + 31);
  outlined init with copy of DOCAnalyticsActionEvent(&v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsActionEvent.propertiesBuilder.getterpartial apply;
}

uint64_t protocol witness for DOCAnalyticsEventProtocol.bundleID.getter in conformance DOCAnalyticsActionEvent()
{
  v1 = *(v0 + 16);

  return v1;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::Action_optional __swiftcall DOCAnalyticsActionEvent.Action.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::Client_optional __swiftcall DOCAnalyticsActionEvent.Client.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider_optional __swiftcall DOCAnalyticsActionEvent.FileProvider.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider_optional __swiftcall DOCAnalyticsActionEvent.FileProvider.init(providerDomainID:)(__C::FPProviderDomainID providerDomainID)
{
  v3 = v1;
  if (DOCProviderDomainIDIsExternalDevice())
  {

    v5 = 5;
  }

  else
  {
    v6 = DOCProviderDomainIDIsSharedServerDomainID();

    if (v6)
    {
      v5 = 6;
    }

    else
    {
      v5 = 9;
    }
  }

  *v3 = v5;
  return result;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider_optional __swiftcall DOCAnalyticsActionEvent.FileProvider.init(sourceID:)(__C::DOCDocumentSourceIdentifier sourceID)
{
  v3 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

LABEL_8:
    v11 = 7;
    goto LABEL_9;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    v11 = 2;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {

      v11 = 2;
    }

    else if (DOCDocumentSourceIdentifierIsICloud(sourceID._rawValue))
    {

      v11 = 3;
    }

    else
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {

        v11 = 8;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          v11 = 8;
        }

        else
        {
          v11 = 9;
        }
      }
    }
  }

LABEL_9:
  *v3 = v11;
  return result;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::FileProvider __swiftcall DOCAnalyticsActionEvent.FileProvider.init(providerID:)(__C::FPProviderID providerID)
{
  v2 = v1;
  v3 = providerID._rawValue;
  if (DOCProviderDomainIDIsExternalDevice())
  {

    v5 = 5;
  }

  else if (DOCProviderDomainIDIsSharedServerDomainID())
  {

    v5 = 6;
  }

  else
  {
    DOCAnalyticsActionEvent.FileProvider.init(sourceID:)(v3);

    v5 = v6;
    if (v6 == 9)
    {
      v5 = 4;
    }
  }

  *v2 = v5;
  return result;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::Source_optional __swiftcall DOCAnalyticsActionEvent.Source.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::SortMode_optional __swiftcall DOCAnalyticsActionEvent.SortMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

DocumentManagerExecutables::DOCAnalyticsActionEvent::SortOrder_optional __swiftcall DOCAnalyticsActionEvent.SortOrder.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C1FC3B0](a1, a2, v11);
      type metadata accessor for NSMutableAttributedString(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSMutableAttributedString(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.Action and conformance DOCAnalyticsActionEvent.Action()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Action and conformance DOCAnalyticsActionEvent.Action;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Action and conformance DOCAnalyticsActionEvent.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Action and conformance DOCAnalyticsActionEvent.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.Client and conformance DOCAnalyticsActionEvent.Client()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Client and conformance DOCAnalyticsActionEvent.Client;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Client and conformance DOCAnalyticsActionEvent.Client)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Client and conformance DOCAnalyticsActionEvent.Client);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.FileProvider and conformance DOCAnalyticsActionEvent.FileProvider()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.FileProvider and conformance DOCAnalyticsActionEvent.FileProvider;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.FileProvider and conformance DOCAnalyticsActionEvent.FileProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.FileProvider and conformance DOCAnalyticsActionEvent.FileProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.Source and conformance DOCAnalyticsActionEvent.Source()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Source and conformance DOCAnalyticsActionEvent.Source;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Source and conformance DOCAnalyticsActionEvent.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.Source and conformance DOCAnalyticsActionEvent.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.ViewMode and conformance DOCAnalyticsActionEvent.ViewMode()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.ViewMode and conformance DOCAnalyticsActionEvent.ViewMode;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.ViewMode and conformance DOCAnalyticsActionEvent.ViewMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.ViewMode and conformance DOCAnalyticsActionEvent.ViewMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.SortMode and conformance DOCAnalyticsActionEvent.SortMode()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortMode and conformance DOCAnalyticsActionEvent.SortMode;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortMode and conformance DOCAnalyticsActionEvent.SortMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortMode and conformance DOCAnalyticsActionEvent.SortMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsActionEvent.SortOrder and conformance DOCAnalyticsActionEvent.SortOrder()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortOrder and conformance DOCAnalyticsActionEvent.SortOrder;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortOrder and conformance DOCAnalyticsActionEvent.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsActionEvent.SortOrder and conformance DOCAnalyticsActionEvent.SortOrder);
  }

  return result;
}

__n128 __swift_memcpy39_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 39))
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

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent.Client(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent.Client(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent.SortMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent.SortMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 55, 7);
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
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
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

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

Swift::Void __swiftcall DOCFullDocumentManagerViewController.invokeDebugGathering()()
{
  v1 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for availableProviders != -1)
  {
    swift_once();
  }

  v5 = static DOCDebugInfoManager.availableProviders;
  v6 = one-time initialization token for shared;
  v7 = v0;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static DOCDebugInfoManager.shared;
  v12 = v7;
  v9 = [v7 internalNavigationController];
  v10 = [v9 navigationBar];

  *v4 = v7;
  v4[1] = v10;
  swift_storeEnumTagMultiPayload();
  (*(*v8 + 128))(v5, &v12, v4, closure #1 in DOCFullDocumentManagerViewController.invokeDebugGathering(), 0);
  outlined destroy of DOCDebugInfoManager.OutputKind(v4);
}

void closure #1 in DOCFullDocumentManagerViewController.invokeDebugGathering()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.UI);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v1, "Did complete debug info gathering", v2, 2u);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.installDebugMenuGesture()()
{
  if (DOCDebugMenuEnabled())
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_presentDebugMenuForLongPress_];
    [v1 setNumberOfTouchesRequired_];
    v2 = [v0 internalNavigationController];
    type metadata accessor for DOCFullDocumentManagerNavigationController();
    v3 = [swift_dynamicCastClassUnconditional() navigationBar];

    [v3 addGestureRecognizer_];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.presentDebugMenuForLongPress(_:)(UIGestureRecognizer *a1)
{
  if ([(UIGestureRecognizer *)a1 state]== 1)
  {

    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

void DOCFullDocumentManagerViewController.presentDebugMenu()()
{
  v1 = v0;
  v2 = [v0 internalNavigationController];
  type metadata accessor for DOCFullDocumentManagerNavigationController();
  v24 = [swift_dynamicCastClassUnconditional() navigationBar];

  v3 = [v24 viewWithTag_];
  if (v3)
  {
    v23 = v3;

    v4 = v23;
  }

  else
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BCF010);
    v7 = [v5 stringForKey_];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE600000000000000;
      v8 = 0x2A454E4F4E2ALL;
    }

    v28 = *aClearhistory;
    v29 = unk_285C80428;
    v30 = xmmword_285C80438;
    v31 = *&off_285C80448;
    v32 = xmmword_285C80458;
    if (*&aClearhistory[8] && (v28 == v8 && *&aClearhistory[8] == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v28 = xmmword_285C80468, v29 = *aPlaceholder_0, v30 = xmmword_285C80488, v31 = *&off_285C80498, v32 = xmmword_285C804A8, *(&xmmword_285C80468 + 1)) && (v28 == v8 && *(&xmmword_285C80468 + 1) == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28, &v26);
      swift_arrayDestroy();

      v26 = 2570;
      v27 = 0xE200000000000000;
      v11 = v29;

      MEMORY[0x24C1FAEA0](v11, *(&v11 + 1));

      MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
      v12 = v26;
      v13 = v27;
      v14 = MEMORY[0x24C1FAD20](0x6341206775626544, 0xEC0000006E6F6974);
      v15 = MEMORY[0x24C1FAD20](v12, v13);

      v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

      v17 = swift_allocObject();
      v18 = v31;
      *(v17 + 48) = v30;
      *(v17 + 64) = v18;
      *(v17 + 80) = v32;
      v19 = v29;
      *(v17 + 16) = v28;
      *(v17 + 32) = v19;
      *(v17 + 96) = v1;
      *(v17 + 104) = v16;
      aBlock[4] = partial apply for closure #2 in DOCFullDocumentManagerViewController.presentDebugMenu();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_46;
      v20 = _Block_copy(aBlock);
      outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28, &v26);
      v21 = v1;
      v22 = v16;

      [v21 presentViewController:v22 animated:1 completion:v20];

      _Block_release(v20);
      outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28);
      return;
    }

    swift_arrayDestroy();

    v4 = v24;
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.presentDebugMenuForMultipleTaps(_:)(UIGestureRecognizer *a1)
{
  if ([(UIGestureRecognizer *)a1 state]== 3)
  {

    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.userDefaultName.getter()
{
  v1 = *v0;

  return v1;
}

void DOCFullDocumentManagerViewController.DebugMenuAction.userDefaultName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DOCFullDocumentManagerViewController.DebugMenuAction.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.handler.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t key path getter for DOCFullDocumentManagerViewController.DebugMenuAction.validationHandler : DOCFullDocumentManagerViewController.DebugMenuAction@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCFullDocumentManagerViewController.DebugMenuAction) -> (@owned DOCFullDocumentManagerViewController.DebugMenuAction);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
}

uint64_t key path setter for DOCFullDocumentManagerViewController.DebugMenuAction.validationHandler : DOCFullDocumentManagerViewController.DebugMenuAction(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCFullDocumentManagerViewController.DebugMenuAction) -> (@out DOCFullDocumentManagerViewController.DebugMenuAction);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7, v8);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.validationHandler.getter()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, *(v0 + 72));
  return v1;
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.validationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.validate()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = *(v1 + 64);
  v4 = *(v1 + 72);
  if (v5)
  {

    v5(v16, v2);
    result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v4);
    v7 = v18;
    v4 = v19;
    v8 = v17;
    v10 = v16[4];
    v9 = v16[5];
    v11 = v16[2];
    v12 = v16[3];
    v13 = v16[0];
    v14 = v16[1];
  }

  else
  {
    v15 = *(v2 + 48);
    v10 = *(v2 + 32);
    v9 = *(v2 + 40);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *v2;
    v14 = *(v2 + 8);
    result = outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(v2, v16);
    v8 = v15;
    v7 = 0;
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = v4;
  return result;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.DebugMenuAction.apply(to:)(UIAction *to)
{
  v3 = MEMORY[0x24C1FAD20](v1[2], v1[3]);
  [(UIAction *)to setTitle:v3];

  [(UIAction *)to setState:v1[4]];
  v4 = v1[5];

  [(UIAction *)to setAttributes:v4];
}

uint64_t DOCFullDocumentManagerViewController.DebugMenuAction.init(userDefaultName:title:state:attributes:handler:validationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

double closure #1 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v28 = xmmword_249BA2E70;
  strcpy(v29, "Clear History");
  v29[7] = -4864;
  v30 = 0;
  v31 = 0;
  v32 = closure #1 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28, v41);
  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28, v41);
  v36 = xmmword_249BA2E70;
  strcpy(&v37, "Clear History");
  HIWORD(v37) = -4864;
  v38 = 0uLL;
  *&v39 = closure #1 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  *(&v39 + 1) = 0;
  v40 = 0uLL;
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = v36;
  *(v4 + 40) = v37;
  v6 = v39;
  *(v4 + 56) = v38;
  *(v4 + 72) = v6;
  *(v4 + 88) = v40;
  *(v4 + 24) = v5;

  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v36, v41);
  v17 = v4;
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = MEMORY[0x24C1FAD20](0x6948207261656C43, 0xED000079726F7473);
  [v7 setTitle_];

  [v7 setState_];
  [v7 setAttributes_];
  outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(&v28);
  outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(&v36);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v41[0] = 0;
  v41[1] = 0;
  v42.n128_u64[0] = 0x6C6F686563616C50;
  v42.n128_u64[1] = 0xEB00000000726564;
  v43 = 0;
  v44 = 0;
  v45 = closure #2 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  v46 = 0;
  v47 = closure #3 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  v48 = 0;
  v27[2] = 0u;
  v27[3] = closure #2 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  v27[4] = closure #3 in static DOCFullDocumentManagerViewController.debugMenuActions.getter;
  v27[0] = 0u;
  v27[1] = v42;
  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(v41, &v22);
  closure #3 in static DOCFullDocumentManagerViewController.debugMenuActions.getter(v27, &v22);
  v9 = v24;
  v10 = v23;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = v22;
  *(v11 + 40) = v23;
  *(v11 + 56) = v24;
  v13 = v26;
  *(v11 + 72) = v25;
  *(v11 + 88) = v13;
  *(v11 + 24) = v12;

  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v22, v20);
  v18 = v11;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = MEMORY[0x24C1FAD20](v10, *(&v10 + 1));
  [v14 setTitle_];

  [v14 setState_];
  [v14 setAttributes_];
  outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(v41);
  outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(&v22);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_arrayDestroy();
  a1(v21);

  return result;
}

void closure #1 in closure #1 in closure #1 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a3 + 48);
    v6 = Strong;
    v5();
  }
}

double closure #2 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:)(void (*a1)(uint64_t))
{
  v3 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  *(swift_allocObject() + 16) = 0;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *(swift_allocObject() + 16) = 1;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *(swift_allocObject() + 16) = 2;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  a1(v3);

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:)(uint64_t a1, char a2)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DOCItemCollectionViewController._tapBehavior = a2;
  return result;
}

void closure #1 in static DOCFullDocumentManagerViewController.debugMenuActions.getter(void *a1)
{
  v1 = [a1 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();

  (*((*v2 & *v3) + 0x188))();
}

__n128 closure #3 in static DOCFullDocumentManagerViewController.debugMenuActions.getter@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v4 = *(&a1[3] + 8);
  v20 = *(&a1[2] + 8);
  v21 = v4;
  v5 = exampleToggleValue;
  v22 = a1[4].n128_u64[1];
  if (exampleToggleValue)
  {
    v6 = 695095080;
  }

  else
  {
    v6 = 0x2966664F28;
  }

  if (exampleToggleValue)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v12.n128_u64[0] = 0x20656C706D617845;
  v12.n128_u64[1] = 0xEF20656C67676F54;
  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(a1, v15);
  MEMORY[0x24C1FAEA0](v6, v7);

  outlined destroy of String(&v24);
  v8 = v12;
  *&v14[8] = v20;
  *&v14[24] = v21;
  v12 = v23;
  v15[0] = v23;
  *&v14[40] = v22;
  v13 = v8;
  *v14 = v5;
  v15[1] = v8;
  v16 = v5;
  v19 = v22;
  v18 = v21;
  v17 = v20;
  outlined init with copy of DOCFullDocumentManagerViewController.DebugMenuAction(&v12, &v11);
  outlined destroy of DOCFullDocumentManagerViewController.DebugMenuAction(v15);
  v9 = *&v14[16];
  *(a2 + 32) = *v14;
  *(a2 + 48) = v9;
  *(a2 + 64) = *&v14[32];
  result = v13;
  *a2 = v12;
  *(a2 + 16) = result;
  return result;
}

void closure #1 in contextMenuInteraction(_:configurationForMenuAtLocation:) in DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA1010;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = partial apply for closure #1 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:);
    v24 = v7;
    aBlock._rawValue = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v22 = &block_descriptor_16;
    v8 = _Block_copy(&aBlock);

    v9 = [v6 elementWithUncachedProvider_];
    _Block_release(v8);
    *(v5 + 32) = v9;
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v23 = closure #2 in static DOCFullDocumentManagerViewController.debugMenu(withTarget:);
    v24 = 0;
    aBlock._rawValue = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v22 = &block_descriptor_15_0;
    v11 = _Block_copy(&aBlock);
    v12 = [v6 elementWithUncachedProvider_];
    _Block_release(v11);
    *(preferredElementSize + 32) = v12;
    v13._object = 0x8000000249BCEF90;
    v13._countAndFlagsBits = 0xD000000000000016;
    v25.value.super.isa = 0;
    v25.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, v13, 0, v25, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, aBlock);
    *(v5 + 40) = v15;
    v16._countAndFlagsBits = 0x704F206775626544;
    v16._object = 0xED0000736E6F6974;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v16, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v5, aBlock);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v27.value.super.isa = 0;
    v27.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x277D84F90], v18, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x277D84F90], aBlock);
  }
}

void __ivar_destroyer in DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()()
{

  JUMPOUT(0x24C1FE970);
}

id __deallocating_deinit in DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of DOCDebugInfoManager.OutputKind(uint64_t a1)
{
  v2 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_So36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE15DebugMenuActionVAEIeggo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for DOCFullDocumentManagerViewController.DebugMenuAction(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCFullDocumentManagerViewController.DebugMenuAction(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_28Tm()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCFullDocumentManagerViewController.DebugMenuAction) -> (@out DOCFullDocumentManagerViewController.DebugMenuAction)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v4(v10, v9);
  v7 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v10[4];
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCFullDocumentManagerViewController.DebugMenuAction) -> (@owned DOCFullDocumentManagerViewController.DebugMenuAction)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v10[2] = a1[2];
  v10[3] = v5;
  v10[4] = a1[4];
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v4(v9, v10);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[4];
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

id partial apply for closure #2 in DOCFullDocumentManagerViewController.presentDebugMenu()()
{
  v1 = *(v0 + 104);
  (*(v0 + 64))(*(v0 + 96));

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

char *specialized static present(in:target:) in DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()(void *a1, uint64_t a2)
{
  type metadata accessor for DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTag_];
  swift_unknownObjectWeakAssign();
  [a1 center];
  [v3 setFrame_];
  [a1 addSubview_];
  v4 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  v5 = *&v3[OBJC_IVAR____TtCFE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_17C7E5033D4884DEF571FF35C0A0ED1C16presentDebugMenuFT_T_L_18DOCDebugMenuButton_menuInteraction];
  *&v3[OBJC_IVAR____TtCFE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_17C7E5033D4884DEF571FF35C0A0ED1C16presentDebugMenuFT_T_L_18DOCDebugMenuButton_menuInteraction] = v4;
  v6 = v4;

  [v3 addInteraction_];
  [v3 center];
  v8 = v7;
  v10 = v9;

  [v6 _presentMenuAtLocation_];
  return v3;
}

id static FINode.docNode(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - v12;
  v14 = [objc_opt_self() shared];
  [v14 startIfNeeded];

  outlined init with copy of URL?(a1, v13);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v13, 1, v15) == 1)
  {
    outlined destroy of URL?(v13);
    v18 = 2;
  }

  else
  {
    v19 = URL.startAccessingSecurityScopedResource()();
    (*(v16 + 8))(v13, v15);
    v18 = v19;
  }

  outlined init with copy of URL?(a1, v9);
  if (v17(v9, 1, v15) == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(v16 + 8))(v9, v15);
  }

  v23 = [swift_getObjCClassFromMetadata() fiNodeFromURL_];

  if (v18 != 2 && (v18 & 1) != 0)
  {
    outlined init with copy of URL?(a1, v5);
    if (v17(v5, 1, v15) == 1)
    {
      outlined destroy of URL?(v5);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();
      (*(v16 + 8))(v5, v15);
    }
  }

  return v23;
}

void static FINode.startIfNeeded()()
{
  v0 = [objc_opt_self() shared];
  [v0 startIfNeeded];
}

id specialized static FILocalStorageNode.sharedInstance(for:)(void *a1)
{
  v2 = objc_opt_self();
  result = [v2 currentSharedInstance];
  if (!result)
  {
    if (a1)
    {
      v4 = a1;
    }

    else
    {
      type metadata accessor for FPProviderDomain();
      v9 = *MEMORY[0x277D06140];
      v10 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v9, 3);

      v4 = v10;
    }

    v5 = a1;
    v6 = DOCLocalizedDisplayName();
    if (!v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = MEMORY[0x24C1FAD20](v7);
    }

    v8 = [v2 sharedInstanceWithDisplayName:v6 domain:v4];

    return v8;
  }

  return result;
}

unint64_t type metadata accessor for FPProviderDomain()
{
  result = lazy cache variable for type metadata for FPProviderDomain;
  if (!lazy cache variable for type metadata for FPProviderDomain)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FPProviderDomain);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RestorableSettings(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3 & 1, v10);

    outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  }

  else
  {
    _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a1, v15, type metadata accessor for RestorableSettings);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3 & 1, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ((~(a1 & a3) & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of AnyHashable(a4);
    *v4 = v18;
  }

  else
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v17 = *v5;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v17;
      }

      outlined destroy of AnyHashable(*(v11 + 48) + 40 * v9);
      outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(*(*(v11 + 56) + 24 * v9), *(*(v11 + 56) + 24 * v9 + 8), *(*(v11 + 56) + 24 * v9 + 16));
      specialized _NativeDictionary._delete(at:)(v9, v11);
      result = outlined destroy of AnyHashable(a4);
      *v5 = v11;
    }

    else
    {

      return outlined destroy of AnyHashable(a4);
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of DOCGoToFolderCandidate(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd, "vN\t");
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd, "vN\t");
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*a1)
  {
    v4 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v4;
    v8[2] = *(a1 + 32);
    v9 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of DOCIdentityHashableLocation(a2);
    *v2 = v7;
  }

  else
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMd, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of DOCIdentityHashableLocation(a2);
    return outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMd, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMR);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables6ColumnOSgMd, "vN\t");
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = type metadata accessor for Column(0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v20 + 48))(a1, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables6ColumnOSgMd, "vN\t");
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4, a5, v14);
    outlined consume of ColumnType(a2, a3);

    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables6ColumnOSgMd, "vN\t");
  }

  else
  {
    _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a1, v19, type metadata accessor for Column);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    outlined consume of ColumnType(a2, a3);

    *v5 = v23;
  }
}

void *DOCItemCollectionCellContentPool.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

void *DOCItemCollectionCellContentPool.init()()
{
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t DOCItemCollectionCellContentPool.prefetchCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t one-time initialization function for workingQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v11 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DOCItemCollectionCellContentPool.workingQueue = result;
  return result;
}

BOOL DOCItemCollectionCellContentPool.isEmpty.getter()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  v2 = *(*(v0 + 32) + 16) == 0;
  [v1 unlock];
  return v2;
}

void *DOCItemCollectionCellContentPool.content(for:contentUpdate:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 24);
  [v8 lock];
  v11 = DOCItemCollectionCellContentPool._fetchContent(for:contentUpdate:contentPrefetch:)(a1, a2, a3, 0, 0);
  if (v10 < 0)
  {
    v12 = v10;
    v13 = v9;
    v14 = [v8 unlock];
    if (one-time initialization token for workingQueue != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x28223BE20](v14, v15);
    type metadata accessor for DOCItemCollectionCellContent(0);
    OS_dispatch_queue.sync<A>(execute:)();
    outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v11, v13, v12);
    v11 = v17;
  }

  swift_getObjectType();
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0xF000000000000007, 0, 0xF000000000000007, &v17);
  swift_endAccess();
  [v8 unlock];
  return v11;
}

void closure #1 in DOCItemCollectionCellContentPool.content(for:contentUpdate:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  [*(a1 + 24) lock];
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    outlined destroy of AnyHashable(v10);
    goto LABEL_8;
  }

  v7 = *(v4 + 56) + 24 * v5;
  v8 = *v7;
  v9 = *(v7 + 16);
  outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(*v7, *(v7 + 8), v9);
  outlined destroy of AnyHashable(v10);

  if ((v9 & 0x8000000000000000) == 0)
  {
    *a2 = v8;
    return;
  }

LABEL_8:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCItemCollectionCellContentPool.fetchContents(for:contentUpdate:contentPrefetch:)(unint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *(v5 + 24);
  [v17 lock];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v13 = DOCItemCollectionCellContentPool._fetchContent(for:contentUpdate:contentPrefetch:)(v11, a2, a3, a4, a5);
      outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v13, v14, v15);
      swift_unknownObjectRelease();
      ++v10;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return [v17 unlock];
}

void *DOCItemCollectionCellContentPool._fetchContent(for:contentUpdate:contentPrefetch:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  v15 = v5[4];
  if (*(v15 + 16))
  {

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock);
    if (v17)
    {
      v18 = *(v15 + 56) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(*v18, v20, v21);
      outlined destroy of AnyHashable(aBlock);

      if ((v21 & 0x8000000000000000) == 0)
      {
        a2(v19);
        outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v19, v20, v21);
      }

      return v19;
    }
  }

  v45 = v13;
  v46 = ObjectType;
  outlined destroy of AnyHashable(aBlock);
  v22 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
  v23 = *((*MEMORY[0x277D85000] & *v22) + 0x3D8);
  v24 = swift_unknownObjectRetain();
  v23(v24);
  a2(v22);
  v25 = v47;
  if (!v47)
  {
    v41 = v22;
    v34 = 0;
    v40 = 0;
    v19 = v22;
    goto LABEL_12;
  }

  v26 = *(*v6 + 112);
  v27 = (*v6 + 112);
  v28 = a5;

  v43[1] = v27;
  v44 = v26;
  v30 = v26(v29);
  v31 = swift_allocObject();
  v31[2] = v25;
  v31[3] = a5;
  v31[4] = v22;
  v31[5] = v6;
  v31[6] = a1;
  v31[7] = v30;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionCellContentPool._fetchContent(for:contentUpdate:contentPrefetch:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_12;
  _Block_copy(aBlock);
  v50 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25, a5);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v43[0] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v19 = DispatchWorkItem.init(flags:block:)();

  if (one-time initialization token for workingQueue != -1)
  {
    swift_once();
  }

  v32 = OS_dispatch_queue.async(execute:)();
  v33 = v44;
  v34 = v44(v32);
  v35 = v43[0];

  v37 = v33(v36);
  v38 = __CFADD__(v37, 1);
  result = (v37 + 1);
  if (!v38)
  {
    v40 = v22 | 0x8000000000000000;
    (*(*v6 + 120))(result);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v47, v28);
LABEL_12:
    DOCNode.identifierKey.getter();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v6[4];
    v6[4] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v34, v40, aBlock, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(aBlock);
    v6[4] = v49;
    swift_endAccess();

    return v19;
  }

  __break(1u);
  return result;
}

id closure #1 in DOCItemCollectionCellContentPool._fetchContent(for:contentUpdate:contentPrefetch:)(void (*a1)(void *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1(a3);
  v9 = *(a4 + 24);
  [v9 lock];
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  v10 = *(a4 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    outlined destroy of AnyHashable(v21);
    return [v9 unlock];
  }

  v13 = *(v10 + 56) + 24 * v11;
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(*v13, v14, v16);
  outlined destroy of AnyHashable(v21);

  if (v16 < 0)
  {

    if (v14 == a6)
    {
      DOCNode.identifierKey.getter();
      swift_beginAccess();
      v18 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a4 + 32);
      *(a4 + 32) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, 0, 0, v21, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(v21);
      *(a4 + 32) = v20;
      swift_endAccess();
    }
  }

  else
  {
    outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v15, v14, v16);
  }

  return [v9 unlock];
}

id DOCItemCollectionCellContentPool.cancelPrefetch(for:cancelBlock:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(v3 + 24);
  [v11 lock];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, a1);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v13 = v8;
      closure #1 in DOCItemCollectionCellContentPool.cancelPrefetch(for:cancelBlock:)(&v13, v3, a2, a3);
      swift_unknownObjectRelease();
      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(a1 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return [v11 unlock];
}

uint64_t closure #1 in DOCItemCollectionCellContentPool.cancelPrefetch(for:cancelBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  v14 = *(a2 + 32);
  if (!*(v14 + 16))
  {
    goto LABEL_6;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock);
  if ((v16 & 1) == 0)
  {

LABEL_6:
    outlined destroy of AnyHashable(aBlock);
    goto LABEL_12;
  }

  v34 = v6;
  v35 = v4;
  v17 = *(v14 + 56) + 24 * v15;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(*v17, v19, v20);
  outlined destroy of AnyHashable(aBlock);

  if (v20 < 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    dispatch thunk of DispatchWorkItem.cancel()();
    if (v41)
    {
      v33 = v18;
      v22 = one-time initialization token for workingQueue;
      v23 = v39;

      if (v22 != -1)
      {
        swift_once();
      }

      v32 = static DOCItemCollectionCellContentPool.workingQueue;
      v24 = swift_allocObject();
      v25 = v41;
      v24[2] = v41;
      v24[3] = v23;
      v24[4] = v21;
      aBlock[4] = partial apply for closure #5 in closure #2 in closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_17;
      v30 = _Block_copy(aBlock);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25, v23);
      v31 = v21;
      static DispatchQoS.unspecified.getter();
      aBlock[6] = MEMORY[0x277D84F90];
      v29 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v26 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v30;
      MEMORY[0x24C1FB9A0](0, v13, v9, v30);

      _Block_release(v27);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25, v39);
      (*(v38 + 8))(v9, v26);
      (*(v36 + 8))(v13, v37);
    }

    else
    {
    }
  }

  else
  {
    outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v18, v19, v20);
  }

LABEL_12:
  DOCNode.identifierKey.getter();
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0xF000000000000007, 0, 0xF000000000000007, aBlock);
  return swift_endAccess();
}

Swift::Void __swiftcall DOCItemCollectionCellContentPool.removeAllContent()()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(v2 + 56) + 24 * (v9 | (v7 << 6)) + 16) & 0x8000000000000000) != 0)
    {

      dispatch thunk of DispatchWorkItem.cancel()();
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

      *(v0 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      [v1 unlock];
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionCellContentPool.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionCellContentPool.CellContentPromise(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 24))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionCellContentPool.CellContentPromise(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DOCItemCollectionCellContentPool.CellContentPromise(void *result, uint64_t a2)
{
  v2 = result[2] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[2] = v2;
  return result;
}

uint64_t _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *DOCSourceListInterface_Default.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCSourceListInterface_Default.shared;
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for DOCSourceListInterface_Default();
  result = swift_initStaticObject();
  static DOCSourceListInterface_Default.shared = result;
  return result;
}

uint64_t static DOCSourceListInterface_Default.shared.getter(uint64_t a1)
{
  type metadata accessor for DOCSourceListInterface_Default();

  return swift_initStaticObject();
}

id DOCSourceListInterface_Default.ejectIcon(for:iconColor:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
  v4 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0x69632E7463656A65, 0xEC000000656C6372, 0, 1);
  v5 = [v4 imageWithConfiguration_];

  v6 = [v5 imageWithTintColor:a2 renderingMode:1];
  return v6;
}

UIImage __swiftcall DOCSourceListInterface_Default.iconForSource(_:)(DOCDocumentSource *a1)
{
  v1 = [(DOCDocumentSource *)a1 iconPreferingSymbolImages];

  return v1;
}

id @objc DOCDocumentSource.iconPreferingSymbolImages.getter(void *a1)
{
  v1 = [a1 iconForSize_];

  return v1;
}

id DOCDocumentSource.iconPreferingSymbolImages.getter()
{
  v1 = [v0 iconForSize_];

  return v1;
}

uint64_t DOCFileProviderSource.iconPreferingSymbolImagesRequiresHierarchicalColors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v1)
  {
    v2 = [v1 identifier];
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

id DOCFileProviderSource.iconPreferingSymbolImages.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v1)
  {
    v2 = [v1 identifier];
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {

LABEL_11:

    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 doc_symbolName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

LABEL_36:
    v25 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(v12, v14, 0, 1);

LABEL_37:
    if ([v0 iconPreferingSymbolImagesRequiresHierarchicalColors])
    {
      v26 = [objc_opt_self() tintColor];
      v27 = [objc_opt_self() configurationWithHierarchicalColor_];

      v28 = [v25 imageByApplyingSymbolConfiguration_];
      if (v28)
      {

        return v28;
      }
    }

    return v25;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_11;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v15 == v6)
  {
    goto LABEL_33;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_17:
    v12 = 0x6873617274;
    goto LABEL_35;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v18 == v6)
  {
LABEL_33:
    v12 = 0x6873617274;
LABEL_34:

LABEL_35:

    v14 = 0xE500000000000000;
    goto LABEL_36;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_17;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v21 == v6)
  {
    goto LABEL_31;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_32:
    v12 = 0xD000000000000018;

    v14 = 0x8000000249BC5EC0;
    goto LABEL_36;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v24 == v6)
  {
LABEL_31:

    goto LABEL_32;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_32;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v31 == v6)
  {

LABEL_46:

    v25 = specialized static UIImage.sidebarImageWithFrameworkImageName(_:scale:)(0xD000000000000020, 0x8000000249BCF1C0, 0, 1);
    goto LABEL_37;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_46;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v33 == v6)
  {
LABEL_49:
    v12 = 0x6B636F6C63;
    goto LABEL_34;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_51;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v35 == v6)
  {
    goto LABEL_49;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
LABEL_51:
    v12 = 0x6B636F6C63;
    goto LABEL_35;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v37 == v6)
  {
    goto LABEL_57;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_59;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v39 == v6)
  {
LABEL_57:

LABEL_59:

    v12 = 0x697966696E67616DLL;
    v14 = 0xEF7373616C67676ELL;
    goto LABEL_36;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v12 = 0x697966696E67616DLL;
  v14 = 0xEF7373616C67676ELL;
  if (v40)
  {
    goto LABEL_36;
  }

  v42.receiver = v0;
  v42.super_class = type metadata accessor for DOCFileProviderSource();
  v41 = objc_msgSendSuper2(&v42, sel_iconPreferingSymbolImages);

  return v41;
}

void DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v1)
  {
    v2 = [v1 identifier];
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {

LABEL_11:

    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 doc_symbolName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(v12, v14, 0, 1);

    return;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_11;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v15 == v6)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v18 = [v0 iconForSize_];

      v19 = v18;
      return;
    }
  }

  systemFilesImage #1 () in DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter();
}

void systemFilesImage #1 () in DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter()
{
  v0 = specialized static UIImage.doc_executablesFrameworkImage(named:)(0xD000000000000020, 0x8000000249BCF1C0);
  v19 = v0;
  if (v0 && (v1 = objc_opt_self(), v2 = v0, v3 = [v1 configurationWithPointSize:5 weight:20.0], v0 = objc_msgSend(v2, sel_imageByApplyingSymbolConfiguration_, v3), v2, v2, v3, v0))
  {
    v4 = objc_opt_self();
    v0 = v0;
    v5 = [v4 blackColor];
    v6 = [v0 imageWithTintColor:v5 renderingMode:2];
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;

  v7 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v7 format:{20.0, 20.0}];
  v9 = swift_allocObject();
  __asm { FMOV            V0.2D, #20.0 }

  *(v9 + 16) = _Q0;
  *(v9 + 32) = &v19;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in systemFilesImage #1 () in DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter;
  *(v15 + 24) = v9;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[3] = &block_descriptor_18;
  v16 = _Block_copy(aBlock);

  [v8 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v17 = v19;
  }
}

id DOCBrowseStartingPointsDocumentSource.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCBrowseStartingPointsDocumentSource.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCBrowseStartingPointsDocumentSource();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCBrowseStartingPointsDocumentSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBrowseStartingPointsDocumentSource.init()(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCBrowseStartingPointsDocumentSource();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3 setIdentifier_];
  return v3;
}

id DOCBrowseStartingPointsDocumentSource.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DOCBrowseStartingPointsDocumentSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_opt_self();
  v9 = MEMORY[0x24C1FAD20](a1, a2);
  v10 = [v8 _systemImageNamed_withConfiguration_];

  if (v10)
  {

    if (a4)
    {
      return v10;
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = static DOCLog.UI;
    v13 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249B9A480;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    os_log(_:dso:log:type:_:)("ERROR: Unable to load expected image %@", 39, 2, &dword_2493AC000, v12, v13, v14);

    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    if (a4)
    {
      return v10;
    }
  }

  v15 = [objc_opt_self() configurationWithScale_];
  v16 = [v10 imageWithConfiguration_];

  return v16;
}

id specialized DOCSourceListInterface_Default.nonThumbnailedIcon(forItem:)(void *a1)
{
  if (![a1 isFolder])
  {
    return 0;
  }

  v2 = 0x7265646C6F66;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17DOCFolderIconTypeV_SSTt0g5Tf4g_n(outlined read-only object #0 of DOCSourceListInterface_Default.nonThumbnailedIcon(forItem:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17DOCFolderIconTypeV_SStMd, &_sSo17DOCFolderIconTypeV_SStMR);
  swift_arrayDestroy();
  [a1 doc_folderIconType];
  if (v3[2] && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = (v3[7] + 16 * v4);
    v2 = *v6;
    v7 = v6[1];
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v9 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(v2, v7, 0, 1);

  return v9;
}

id specialized static UIImage.sidebarImageWithFrameworkImageName(_:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BCF430);
  v9 = [objc_opt_self() bundleWithIdentifier_];

  if (v9 && (v10 = v9, v11 = MEMORY[0x24C1FAD20](a1, a2), v12 = [objc_opt_self() imageNamed:v11 inBundle:v10 compatibleWithTraitCollection:0], v11, v10, v10, v12))
  {
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = static DOCLog.UI;
    v15 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9A480;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    os_log(_:dso:log:type:_:)("ERROR: Unable to load expected image %@", 39, 2, &dword_2493AC000, v14, v15, v16);

    v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    if (a4)
    {
      return v12;
    }
  }

  v17 = [objc_opt_self() configurationWithScale_];
  v18 = [v12 imageWithConfiguration_];

  return v18;
}

id partial apply for closure #1 in systemFilesImage #1 () in DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter()
{
  result = **(v0 + 32);
  if (result)
  {
    return [result drawInRect_];
  }

  __break(1u);
  return result;
}

char *DOCFullDocumentManagerNavigationController.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration] = a1;
  v9.receiver = v3;
  v9.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration];
  v7 = v5;
  [v6 isPickerUI];

  return v7;
}

char *DOCFullDocumentManagerNavigationController.init(configuration:)(void *a1)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCFullDocumentManagerNavigationController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration];
  v6 = v4;
  [v5 isPickerUI];

  return v6;
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController[0];
  if (!lazy cache variable for type metadata for UIViewController[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

void DOCFullDocumentManagerNavigationController.viewControllers.setter(unint64_t a1)
{
  v3 = [v1 viewControllers];
  type metadata accessor for UIViewController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for DOCFullDocumentManagerNavigationController();
  objc_msgSendSuper2(&v24, sel_setViewControllers_, isa);

  if (v4 >> 62)
  {
LABEL_36:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_37:

    return;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_37;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D85000];
  v22 = v6;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v9 = *(v4 + 32 + 8 * v7);
    }

    v10 = v9;
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (a1 >> 62)
    {
      break;
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_26:
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v10, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v8 & *v16) + 0x60))(v23);

    if (LOBYTE(v23[0]) == 2 || (v23[0] & 1) == 0)
    {
LABEL_4:
    }

    else
    {
      v17 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v10, static UIViewController.associatedObjectStorageKey);
      KeyPath = swift_getKeyPath();
      LOBYTE(v23[0]) = 0;
      (*((*v8 & *v17) + 0x68))(v23, KeyPath);

      v19 = [v10 view];
      if (!v19)
      {
        goto LABEL_39;
      }

      v20 = v19;
      v21 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v10, static UIViewController.associatedObjectStorageKey);
      swift_getKeyPath();
      (*((*v8 & *v21) + 0x60))(v23);

      [v20 setHidden_];
    }

    if (v7 == v22)
    {
      goto LABEL_37;
    }
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    while ((a1 & 0xC000000000000001) == 0)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      if (*(a1 + 32 + 8 * v13) == v10)
      {
        goto LABEL_4;
      }

      if (++v13 == v12)
      {
        goto LABEL_26;
      }
    }

    v14 = MEMORY[0x24C1FC540](v13, a1);
    v11 = __OFADD__(v13++, 1);
    if (v11)
    {
      break;
    }

    v15 = v14;
    swift_unknownObjectRelease();
    if (v15 == v10)
    {
      goto LABEL_4;
    }

    if (v13 == v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t DOCFullDocumentManagerNavigationController.chromelessAppearanceDisabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFullDocumentManagerNavigationController.chromelessAppearanceDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x50))(v4);
  (*((*v5 & *v6) + 0x88))(*(v1 + v3));
}

uint64_t (*DOCFullDocumentManagerNavigationController.chromelessAppearanceDisabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCFullDocumentManagerNavigationController.chromelessAppearanceDisabled.modify;
}

void DOCFullDocumentManagerNavigationController.chromelessAppearanceDisabled.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x50))(v4);
    (*((*v7 & *v8) + 0x88))(*(v5 + v6));
  }

  free(v3);
}

Swift::Bool __swiftcall DOCFullDocumentManagerNavigationController.navigationBar(_:shouldPop:)(UINavigationBar *_, UINavigationItem shouldPop)
{
  if (![v2 delegate])
  {
    return 1;
  }

  v3 = 1;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 topViewController];
    v3 = [v5 navigationController:v2 canPop:v6];
  }

  swift_unknownObjectRelease();
  return v3;
}

id DOCFullDocumentManagerNavigationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCFullDocumentManagerNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DOCFullDocumentManagerNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFullDocumentManagerNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for UIViewController.doc_manuallyHiddenForSearch : UIViewController(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v3, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0x60))(&v5);

  *a2 = v5 & 1;
}

unint64_t DOCUserActivityIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000020;
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

uint64_t static DOCUserActivityIdentifier.identifierSupportsRestoration(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000020 && 0x8000000249BC6040 == a2;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001DLL && 0x8000000249BC6070 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

DocumentManagerExecutables::DOCUserActivityIdentifier_optional __swiftcall DOCUserActivityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCUserActivityIdentifier.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCUserActivityIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCUserActivityIdentifier(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUserActivityIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCUserActivityIdentifier(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "com.apple.DocumentsApp.folder";
  v4 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "ntManager.dragFolder";
  }

  if (*v1)
  {
    v5 = "ntsApp.quicklook";
  }

  else
  {
    v2 = 0xD000000000000020;
    v5 = ".Favorite";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

double closure #1 in static DOCUserActivityController.publishUserActivity(for:activityHosting:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a1;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in static DOCUserActivityController.publishUserActivity(for:activityHosting:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = a2;
    v7(a2, ObjectType, v5);
    (*(v5 + 32))(ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

double static DOCUserActivityController.userActivityFor(item:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 itemID];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + 96);
  v10 = a1;

  v9(v7, partial apply for closure #1 in static DOCUserActivityController.userActivityFor(item:completion:), v8);

  return result;
}

void closure #1 in static DOCUserActivityController.userActivityFor(item:completion:)(void *a1, void *a2, void *a3, void (*a4)(void))
{
  v4 = a4;
  if (!a1)
  {
    if (a2)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v16 = swift_allocError();
      *v17 = a2;
      v18 = one-time initialization token for DocumentManager;
      v19 = a2;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.DocumentManager);
      v21 = a3;
      v22 = v16;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v94 = v27;
        *v25 = 138412546;
        v28 = v16;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v29;
        *v26 = v29;
        *(v25 + 12) = 2080;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          v93 = v26;
          v32 = v27;
          v33 = v4;
          v34 = v21;
          v35 = [v31 description];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v4 = v33;
          v27 = v32;
          v26 = v93;
        }

        else
        {
          v35 = [v21 displayName];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v88;
        }

        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v94);

        *(v25 + 14) = v89;
        _os_log_impl(&dword_2493AC000, v23, v24, "Failed to create cross device itemID %@ for item: %s", v25, 0x16u);
        outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v26, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);

        v54 = 0;
        goto LABEL_27;
      }
    }

    v54 = 0;
LABEL_27:
    v4(v54);

    return;
  }

  v6 = a1;
  v7 = [a3 isFolder];
  v8 = _DocumentManagerBundle();
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v90 = 0x8000000249BCFB20;
    v10 = 0x6C6F66206E65704FLL;
    v11 = 0xEE00402520726564;
    v12 = 0x617A696C61636F4CLL;
    v13 = 0xEB00000000656C62;
    v14 = 0xD000000000000028;
LABEL_13:
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v12, v9, v39, *&v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_249B9A480;
    v41 = [a3 displayName];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v46 = String.init(format:_:)();
    v48 = v47;
    v49 = [a3 isFolder];
    if (v49)
    {
      v50 = 0xD00000000000001DLL;
    }

    else
    {
      v50 = 0xD000000000000020;
    }

    if (v49)
    {
      v51 = "ntsApp.quicklook";
    }

    else
    {
      v51 = ".Favorite";
    }

    v52 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
    v53 = MEMORY[0x24C1FAD20](v50, v51 | 0x8000000000000000);
    v54 = [v52 initWithActivityType_];

    v55 = MEMORY[0x24C1FAD20](v46, v48);
    [v54 setTitle_];

    [v54 setEligibleForPrediction_];
    [v54 setEligibleForSearch_];
    [v54 setEligibleForPublicIndexing_];
    [v54 setEligibleForHandoff_];
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in static DOCUserActivityController.userActivityFor(item:completion:));
    outlined destroy of String(&unk_285C80640);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v54 setRequiredUserInfoKeys_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    AnyHashable.init<A>(_:)();
    type metadata accessor for CFStringRef(0);
    *(inited + 96) = v58;
    *(inited + 72) = v6;
    v91 = v6;
    AnyHashable.init<A>(_:)();
    v59 = [a3 displayName];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    *(inited + 168) = v45;
    *(inited + 144) = v60;
    *(inited + 152) = v62;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    swift_arrayDestroy();
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 addUserInfoEntriesFromDictionary_];

    type metadata accessor for FPProviderDomain();
    v64 = a3;
    v65 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v64, 3);

    v66 = DOCLocalizedDisplayName();
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_249B9A480;
    v94 = 0xD000000000000025;
    v95 = 0x8000000249BCF820;
    AnyHashable.init<A>(_:)();
    *(v70 + 96) = v45;
    *(v70 + 72) = v67;
    *(v70 + 80) = v69;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v70);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v70 + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    v71 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 addUserInfoEntriesFromDictionary_];

    v72 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v73 = [v64 itemID];
    v74 = [v73 coreSpotlightIdentifier];

    if (!v74)
    {
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = MEMORY[0x24C1FAD20](v75);
    }

    [v72 setRelatedUniqueIdentifier_];

    v76 = [v64 providerID];
    [v72 setBundleID_];

    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_249B9A480;
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v78;

    v79 = MEMORY[0x277D837D0];
    AnyHashable.init<A>(_:)();
    v80 = _DocumentManagerBundle();
    if (v80)
    {
      v81 = v80;
      v82 = [v80 bundleIdentifier];

      v4 = a4;
      if (v82)
      {

        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        *(v77 + 96) = v79;
        *(v77 + 72) = v83;
        *(v77 + 80) = v85;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v77);
        swift_setDeallocating();
        outlined destroy of CharacterSet?(v77 + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
        v86 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v72 addAttributesFromDictionary_];

        v87 = v72;
        [v54 setContentAttributeSet_];

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v8)
  {
    v90 = 0x8000000249BCFAF0;
    v10 = 0x4025206E65704FLL;
    v12 = 0x617A696C61636F4CLL;
    v13 = 0xEB00000000656C62;
    v14 = 0xD000000000000026;
    v11 = 0xE700000000000000;
    goto LABEL_13;
  }

LABEL_33:
  __break(1u);
}

void static DOCUserActivityController.fetchURLFrom(activity:completion:)(void *a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v84 = a3;
  v5 = type metadata accessor for POSIXError();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v79 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v80 = &v78 - v11;
  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v92 = 0xD00000000000002BLL;
  *(&v92 + 1) = 0x8000000249BC60E0;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v16 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
LABEL_12:
    v92 = 0u;
    v93 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v15, &v92);
  outlined destroy of AnyHashable(&aBlock);

  if (!*(&v93 + 1))
  {
LABEL_13:
    outlined destroy of CharacterSet?(&v92, &_sypSgMd, &_sypSgMR);
    v18 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = aBlock;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v87;
  }

  else
  {
    v19 = 0;
  }

LABEL_14:
  v20 = [a1 userInfo];
  if (!v20)
  {
LABEL_24:
    v92 = 0u;
    v93 = 0u;
    goto LABEL_25;
  }

  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v92 = 0xD000000000000020;
  *(&v92 + 1) = 0x8000000249BCF760;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v24 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
    goto LABEL_24;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v23, &v92);
  outlined destroy of AnyHashable(&aBlock);

  if (!*(&v93 + 1))
  {
LABEL_25:
    outlined destroy of CharacterSet?(&v92, &_sypSgMd, &_sypSgMR);
    v78 = 0;
    v27 = 0;
    goto LABEL_26;
  }

  v25 = swift_dynamicCast();
  v26 = aBlock;
  if (!v25)
  {
    v26 = 0;
  }

  v78 = v26;
  if (v25)
  {
    v27 = v87;
  }

  else
  {
    v27 = 0;
  }

LABEL_26:
  v85 = a2;
  v28 = [a1 userInfo];
  if (!v28)
  {
LABEL_37:
    v92 = 0u;
    v93 = 0u;
    goto LABEL_38;
  }

  v29 = v28;
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v92 = 0xD000000000000028;
  *(&v92 + 1) = 0x8000000249BCF790;
  AnyHashable.init<A>(_:)();
  if (!*(v30 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v32 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
    goto LABEL_37;
  }

  outlined init with copy of Any(*(v30 + 56) + 32 * v31, &v92);
  outlined destroy of AnyHashable(&aBlock);

  if (!*(&v93 + 1))
  {
LABEL_38:
    outlined destroy of CharacterSet?(&v92, &_sypSgMd, &_sypSgMR);
    v34 = 0;
    v35 = 0;
    goto LABEL_39;
  }

  v33 = swift_dynamicCast();
  if (v33)
  {
    v34 = aBlock;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v87;
  }

  else
  {
    v35 = 0;
  }

LABEL_39:
  v36 = [a1 userInfo];
  if (!v36)
  {
LABEL_55:
    v92 = 0u;
    v93 = 0u;
LABEL_56:
    outlined destroy of CharacterSet?(&v92, &_sypSgMd, &_sypSgMR);
    v42 = 0;
    v43 = 0;
    if (!v19)
    {
      goto LABEL_50;
    }

LABEL_57:

    v54 = MEMORY[0x24C1FAD20](v18, v19);

    v55 = swift_allocObject();
    v57 = v84;
    v56 = v85;
    *(v55 + 16) = v85;
    *(v55 + 24) = v57;
    v58 = *(v83 + 104);
    v59 = v54;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v56, v57);
    v58(v54, partial apply for closure #1 in static DOCUserActivityController.fetchURLFrom(activity:completion:), v55);

    return;
  }

  v37 = v36;
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v92 = 0xD00000000000002ELL;
  *(&v92 + 1) = 0x8000000249BCF7C0;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v40 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
    goto LABEL_55;
  }

  outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v92);
  outlined destroy of AnyHashable(&aBlock);

  if (!*(&v93 + 1))
  {
    goto LABEL_56;
  }

  v41 = swift_dynamicCast();
  if (v41)
  {
    v42 = aBlock;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v87;
  }

  else
  {
    v43 = 0;
  }

  if (v19)
  {
    goto LABEL_57;
  }

LABEL_50:
  if (v27 && v35 && v43)
  {
    v44 = v43;
    v45 = MEMORY[0x24C1FAD20](v34, v35);

    v46 = MEMORY[0x24C1FAD20](v42, v44);

    v47 = MEMORY[0x24C1FAD20](v78, v27);

    v48 = [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderID:v45 domainIdentifier:v46 itemIdentifier:v47];

    v49 = [objc_opt_self() defaultManager];
    v50 = swift_allocObject();
    v51 = v84;
    v52 = v85;
    *(v50 + 16) = v85;
    *(v50 + 24) = v51;
    v90 = partial apply for closure #2 in static DOCUserActivityController.fetchURLFrom(activity:completion:);
    v91 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v89 = &block_descriptor_19;
    v53 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v52, v51);

    [v49 fetchURLForItemID:v48 completionHandler:v53];
    _Block_release(v53);
  }

  else
  {

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.DocumentManager);
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      v66 = [v61 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &aBlock);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_2493AC000, v62, v63, "User activity does not contain expected keys: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x24C1FE850](v65, -1, -1);
      MEMORY[0x24C1FE850](v64, -1, -1);
    }

    v71 = v85;
    if (v85)
    {
      v72 = type metadata accessor for URL();
      v73 = v80;
      (*(*(v72 - 8) + 56))(v80, 1, 1, v72);
      LODWORD(aBlock) = 22;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      v74 = v79;
      v75 = v82;
      _BridgedStoredNSError.init(_:userInfo:)();
      v76 = POSIXError._nsError.getter();
      (*(v81 + 8))(v74, v75);
      v77 = _convertErrorToNSError(_:)();

      v71(v73, v77);
      outlined destroy of CharacterSet?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }
}

void closure #1 in static DOCUserActivityController.fetchURLFrom(activity:completion:)(void *a1, void *a2, void (*a3)(char *, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - v8;
  if (a1)
  {
    if (!a3)
    {
      return;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    v11 = a1;
    a3(v9, 0);
  }

  else
  {
    if (a2)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v12 = swift_allocError();
      *v13 = a2;
      v14 = a2;
      v15 = _convertErrorToNSError(_:)();
    }

    else
    {
      v15 = 0;
    }

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.DocumentManager);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v29 = v15;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v15;
      v31 = v22;
      *v21 = 136315138;
      v23 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2493AC000, v18, v19, "Can not fetch itemID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    if (!a3)
    {

      return;
    }

    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    a3(v9, v29);
  }

  outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

void closure #2 in static DOCUserActivityController.fetchURLFrom(activity:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), void *a4)
{
  v35[0] = a2;
  v35[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v23 = v9;
    v24 = v35[0];
    if (v35[0])
    {
      v25 = v35[0];
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.DocumentManager);
      v27 = v24;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v28, v29))
      {

        if (!a3)
        {
          return;
        }

LABEL_13:
        (*(v19 + 56))(v23, 1, 1, v18);
        if (v24)
        {
          v34 = _convertErrorToNSError(_:)();
        }

        else
        {
          v34 = 0;
        }

        a3(v23, v34);

        outlined destroy of CharacterSet?(v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        return;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_2493AC000, v28, v29, "Can not fetch URL for itemID %@", v30, 0xCu);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    if (!a3)
    {
      return;
    }

    goto LABEL_13;
  }

  (*(v19 + 32))(v22, v17, v18);
  if (a3)
  {
    (*(v19 + 16))(v13, v22, v18);
    (*(v19 + 56))(v13, 0, 1, v18);
    a3(v13, 0);
    outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v19 + 8))(v22, v18);
}

id static DOCUserActivityController.alertController(with:)(void *a1)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = result;
  v4.value._object = 0xEB00000000656C62;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v61._object = 0x8000000249BCF8E0;
  v5._object = 0x8000000249BCF8C0;
  v61._countAndFlagsBits = 0xD000000000000017;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v61);

  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v59 = 0xD000000000000023;
  *(&v59 + 1) = 0x8000000249BCF7F0;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v57), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v57);
LABEL_13:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v59);
  outlined destroy of AnyHashable(&v57);

  if (!*(&v60 + 1))
  {
LABEL_14:
    outlined destroy of CharacterSet?(&v59, &_sypSgMd, &_sypSgMR);
    v14 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v57;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v58;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:
  v16 = [a1 userInfo];
  if (!v16)
  {
LABEL_30:
    v59 = 0u;
    v60 = 0u;
LABEL_31:
    outlined destroy of CharacterSet?(&v59, &_sypSgMd, &_sypSgMR);
    if (v15)
    {
      goto LABEL_32;
    }

LABEL_35:

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v42 = result;
    v64._object = 0x8000000249BCF940;
    v43._countAndFlagsBits = 0xD00000000000003BLL;
    v43._object = 0x8000000249BCF900;
    v64._countAndFlagsBits = 0xD00000000000001FLL;
    v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v44.value._object = 0xEB00000000656C62;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v64);
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;

    goto LABEL_37;
  }

  v17 = v16;
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(&v57), (v20 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v57);
    goto LABEL_30;
  }

  outlined init with copy of Any(*(v18 + 56) + 32 * v19, &v59);
  outlined destroy of AnyHashable(&v57);

  if (!*(&v60 + 1))
  {
    goto LABEL_31;
  }

  v21 = MEMORY[0x277D837D0];
  v22 = swift_dynamicCast();
  if (v22)
  {
    v23 = v57;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v58;
  }

  else
  {
    v24 = 0;
  }

  if (!v15)
  {
    goto LABEL_35;
  }

  if (!v24)
  {
LABEL_32:
    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v35 = result;
    v36 = MEMORY[0x277D837D0];
    v63._object = 0x8000000249BCF9B0;
    v37._object = 0x8000000249BCF960;
    v63._countAndFlagsBits = 0xD000000000000034;
    v37._countAndFlagsBits = 0x1000000000000044;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEB00000000656C62;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v35, v39, v63);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_249B9A480;
    *(v40 + 56) = v36;
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v14;
    *(v40 + 40) = v15;
    countAndFlagsBits = String.init(format:_:)();
    object = v41;
    goto LABEL_34;
  }

  v25 = v24;
  result = _DocumentManagerBundle();
  if (result)
  {
    v26 = result;
    v62._object = 0x8000000249BCFA40;
    v27._countAndFlagsBits = 0x100000000000004ALL;
    v27._object = 0x8000000249BCF9F0;
    v62._countAndFlagsBits = 0xD00000000000003DLL;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249B9FA70;
    *(v30 + 56) = v21;
    v31 = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = v14;
    *(v30 + 40) = v15;
    *(v30 + 96) = v21;
    *(v30 + 104) = v31;
    *(v30 + 64) = v31;
    *(v30 + 72) = v23;
    *(v30 + 80) = v25;
    countAndFlagsBits = String.init(format:_:)();
    object = v33;
LABEL_34:

LABEL_37:
    v47 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

    v48 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

    v49 = [objc_opt_self() alertControllerWithTitle:v47 message:v48 preferredStyle:1];

    result = _DocumentManagerBundle();
    if (result)
    {
      v50 = result;
      v65._object = 0xE200000000000000;
      v51._countAndFlagsBits = 19279;
      v51._object = 0xE200000000000000;
      v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v52.value._object = 0xEB00000000656C62;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v65._countAndFlagsBits = 19279;
      v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v65);

      v55 = MEMORY[0x24C1FAD20](v54._countAndFlagsBits, v54._object);

      v56 = [objc_opt_self() actionWithTitle:v55 style:0 handler:0];

      [v49 addAction_];
      [v49 setPreferredAction_];

      return v49;
    }

    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

void static DOCUserActivityController.crossDeviceItemIDForItemID(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4[4] = a2;
    v4[5] = a3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    v4[3] = &block_descriptor_9_2;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  FPCrossDeviceItemIDForItemID();
  _Block_release(v3);
}

void static DOCUserActivityController.itemURLForCrossDeviceItemID(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v5[4] = a2;
    v5[5] = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    v5[3] = &block_descriptor_12_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  FPItemURLForCrossDeviceItemID();
  _Block_release(v4);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id DOCUserActivityController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCUserActivityController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUserActivityController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCUserActivityController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DOCUserActivityController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v4 = 0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v4 = 2;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v4 = 5;
      }

      else
      {
        v4 = 6;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v4 = 7;
        goto LABEL_20;
      case 7:
        v4 = 8;
        goto LABEL_20;
      case 8:
        v4 = 9;
LABEL_20:
        MEMORY[0x24C1FCBD0](v4);
        goto LABEL_21;
    }
  }

  MEMORY[0x24C1FCBD0](1);
  String.hash(into:)();
LABEL_21:
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

double specialized static DOCUserActivityController.publishUserActivity(for:activityHosting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 24) = a5;
  swift_unknownObjectWeakInit();

  v8 = [a1 itemID];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = partial apply for closure #1 in static DOCUserActivityController.publishUserActivity(for:activityHosting:);
  v9[4] = v7;
  v13[4] = closure #1 in static DOCUserActivityController.userActivityFor(item:completion:)partial apply;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
  v13[3] = &block_descriptor_29_0;
  v10 = _Block_copy(v13);
  v11 = a1;

  FPCrossDeviceItemIDForItemID();
  _Block_release(v10);

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type DOCUserActivityIdentifier and conformance DOCUserActivityIdentifier()
{
  result = lazy protocol witness table cache variable for type DOCUserActivityIdentifier and conformance DOCUserActivityIdentifier;
  if (!lazy protocol witness table cache variable for type DOCUserActivityIdentifier and conformance DOCUserActivityIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUserActivityIdentifier and conformance DOCUserActivityIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type POSIXError and conformance POSIXError(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void FPItem.setLastOpenDate(_:delay:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v44 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v43 = &v41 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA0290;
  *(v19 + 32) = v2;
  v20 = objc_allocWithZone(MEMORY[0x277CC6458]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v21 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v20 initWithItems:isa date:v23];

  (*(v16 + 16))(&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v25 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  (*(v16 + 32))(v26 + v25, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v56 = partial apply for closure #1 in FPItem.setLastOpenDate(_:delay:);
  v57 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v55 = &block_descriptor_20;
  v27 = _Block_copy(&aBlock);
  v28 = v21;
  v29 = v24;

  [v29 setActionCompletionBlock_];
  _Block_release(v27);

  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  if (a2 == 0.0)
  {
    v31 = objc_opt_self();
    v32 = v29;
    v33 = [v31 defaultManager];
    [v33 scheduleAction_];
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v41 = v29;
    v34 = static OS_dispatch_queue.main.getter();
    v35 = v42;
    static DispatchTime.now()();
    v36 = v43;
    + infix(_:_:)();
    v44 = *(v44 + 8);
    (v44)(v35, v51);
    v56 = partial apply for closure #2 in FPItem.setLastOpenDate(_:delay:);
    v57 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v55 = &block_descriptor_6_2;
    v37 = _Block_copy(&aBlock);

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v39 = v47;
    v40 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](v36, v38, v39, v37);
    _Block_release(v37);

    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
    (v44)(v36, v51);
  }
}

Swift::Void __swiftcall FPItem.bumpLastOpenDate(delay:)(Swift::Double delay)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  FPItem.setLastOpenDate(_:delay:)(v6, delay);
  (*(v3 + 8))(v6, v2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t *FPItem.modificationDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for modificationDateFormatter != -1)
  {
    swift_once();
  }

  return &static FPItem.modificationDateFormatter;
}

uint64_t *FPItem.timeDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for timeDateFormatter != -1)
  {
    swift_once();
  }

  return &static FPItem.timeDateFormatter;
}

id one-time initialization function for modificationDateFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDoesRelativeDateFormatting_];
  [v5 setDateStyle_];
  result = [v5 setTimeStyle_];
  *a3 = v5;
  return result;
}

uint64_t *FPItem.dayOnlyDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dayOnlyDateFormatter != -1)
  {
    swift_once();
  }

  return &static FPItem.dayOnlyDateFormatter;
}

void closure #1 in FPItem.setLastOpenDate(_:delay:)(NSObject *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Picker);
    v13 = a1;
    v14 = a2;
    v34 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v14;
      *v17 = v14;
      *(v16 + 12) = 2112;
      v18 = a1;
      v19 = v14;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&dword_2493AC000, v34, v15, "Failed to set Last Open date for item %@. Error: %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);

      v21 = v34;
    }

    else
    {

      v21 = a1;
    }
  }

  else
  {
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.Picker);
    (*(v7 + 16))(v10, a3, v6);
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v26 = 136315394;
      v28 = Date.description.getter();
      v30 = v29;
      (*(v7 + 8))(v10, v6);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v35);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v32 = v23;
      _os_log_impl(&dword_2493AC000, v24, v25, "set Last Open date to '%s' for item %@.", v26, 0x16u);
      outlined destroy of NSObject?(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      v33 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void closure #2 in FPItem.setLastOpenDate(_:delay:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  [v2 scheduleAction_];
}

void partial apply for closure #1 in FPItem.setLastOpenDate(_:delay:)(NSObject *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in FPItem.setLastOpenDate(_:delay:)(a1, v4, v5);
}

id @objc FPItem.effectiveParentItemIdentifier.getter(void *a1)
{
  v1 = a1;
  if ([v1 isTrashed])
  {
    v2 = *MEMORY[0x277CC6358];
  }

  else
  {
    v2 = [v1 parentItemIdentifier];
  }

  v3 = v2;

  return v3;
}

id FPItem.effectiveParentItemIdentifier.getter()
{
  if ([v0 isTrashed])
  {
    v1 = *MEMORY[0x277CC6358];

    return v1;
  }

  else
  {
    v3 = [v0 parentItemIdentifier];

    return v3;
  }
}

Swift::Int FPItem.SharingStatusStringType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t static FPItem.createDocumentSentinelItemIdentifier.getter()
{
  swift_beginAccess();
  v0 = static FPItem.createDocumentSentinelItemIdentifier;

  return v0;
}

double static FPItem.createDocumentSentinelItemIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static FPItem.createDocumentSentinelItemIdentifier = a1;
  off_27EEE8030 = a2;

  return result;
}

Swift::Bool __swiftcall FPItem.doc_isCreateDocumentSentinel()()
{
  v1 = [v0 itemIdentifier];
  swift_beginAccess();
  v3 = static FPItem.createDocumentSentinelItemIdentifier;
  v2 = off_27EEE8030;

  v4 = MEMORY[0x24C1FAD20](v3, v2);

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5 == v8 && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

void URL.bumpLastOpenDate(delay:completionHandler:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  (*(v8 + 16))(v11, v3, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v8 + 32))(v15 + v13, v11, v7);
  *(v15 + v14) = a3;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1, a2);
  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v3, partial apply for closure #1 in URL.bumpLastOpenDate(delay:completionHandler:), v15);
}

void closure #1 in URL.bumpLastOpenDate(delay:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v55 = a4;
  v56 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v52 - v22;
  if (a2)
  {
    v54 = a1;
    v24 = a2;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Picker);
    (*(v16 + 16))(v23, a5, v15);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v29 = 136315394;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v16 + 8))(v23, v15);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v57);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_2493AC000, v27, v28, "Failed to retrieve item from url %s. Error: %@", v29, 0x16u);
      outlined destroy of NSObject?(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      v37 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v23, v15);
    }

    v39 = v56;
    a1 = v54;
    if (v56)
    {
LABEL_10:
      v40 = swift_allocObject();
      v41 = v55;
      v40[2] = v39;
      v40[3] = v41;
      v40[4] = a1;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39, v41);
      v42 = a1;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39, v41);
      DOCRunInMainThread(_:)();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39, v41);
    }
  }

  else
  {
    if (a1)
    {
      v38 = a1;
      Date.init()();
      FPItem.setLastOpenDate(_:delay:)(v14, a6);

      (*(v11 + 8))(v14, v10);
    }

    else
    {
      if (one-time initialization token for Picker != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.Picker);
      (*(v16 + 16))(v19, a5, v15);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v57 = v47;
        *v46 = 136315138;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        (*(v16 + 8))(v19, v15);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v57);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_2493AC000, v44, v45, "Failed to retrieve item from url %s. With no error.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C1FE850](v47, -1, -1);
        MEMORY[0x24C1FE850](v46, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v19, v15);
      }
    }

    v39 = v56;
    if (v56)
    {
      goto LABEL_10;
    }
  }
}

uint64_t FPItemID.identifierString.getter()
{
  v1 = v0;
  v2 = [v0 providerDomainID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v3;
  MEMORY[0x24C1FAEA0](3112028, 0xE300000000000000);
  v4 = [v1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x24C1FAEA0](v5, v7);

  return v9;
}

void partial apply for closure #1 in URL.bumpLastOpenDate(delay:completionHandler:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in URL.bumpLastOpenDate(delay:completionHandler:)(a1, a2, v7, v8, v2 + v6, v9);
}

unint64_t lazy protocol witness table accessor for type FPItem.SharingStatusStringType and conformance FPItem.SharingStatusStringType()
{
  result = lazy protocol witness table cache variable for type FPItem.SharingStatusStringType and conformance FPItem.SharingStatusStringType;
  if (!lazy protocol witness table cache variable for type FPItem.SharingStatusStringType and conformance FPItem.SharingStatusStringType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem.SharingStatusStringType and conformance FPItem.SharingStatusStringType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FPItem.SharingStatusOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FPItem.SharingStatusOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void *DOCUntrashOperation.restoreDirectory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory);
  v2 = v1;
  return v1;
}

void *DOCUntrashOperation.__allocating_init(items:restoreDirectory:undoManager:)(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = a2;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = a3;
  type metadata accessor for FPItem();
  v7 = a2;
  v8 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14.receiver = v6;
  v14.super_class = v3;
  v10 = objc_msgSendSuper2(&v14, sel_initWithItems_restoreDirectory_, isa, v7);

  v11 = *((*MEMORY[0x277D85000] & *v10) + 0x80);
  v12 = v10;
  v11();

  return v12;
}

void *DOCUntrashOperation.init(items:restoreDirectory:undoManager:)(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = a3;
  type metadata accessor for FPItem();
  v6 = a2;
  v7 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13.receiver = v3;
  v13.super_class = type metadata accessor for DOCUntrashOperation();
  v9 = objc_msgSendSuper2(&v13, sel_initWithItems_restoreDirectory_, isa, v6);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x80);
  v11 = v9;
  v10();

  return v11;
}

unint64_t type metadata accessor for FPItem()
{
  result = lazy cache variable for type metadata for FPItem;
  if (!lazy cache variable for type metadata for FPItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FPItem);
  }

  return result;
}

void DOCUntrashOperation.actionNameForUndoing.getter(uint64_t a1)
{
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v28._object = 0x8000000249BCFC20;
  v4._countAndFlagsBits = 0x1000000000000026;
  v4._object = 0x8000000249BCFBD0;
  v5._object = 0x8000000249BCFC00;
  v28._countAndFlagsBits = 0xD000000000000039;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v28);

  v7 = _DocumentManagerBundle();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v8 = v7;
  v29._object = 0x8000000249BCFC90;
  v9._object = 0x8000000249BCFC60;
  v29._countAndFlagsBits = 0xD00000000000003FLL;
  v9._countAndFlagsBits = 0xD000000000000027;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v29);

  v12 = [v1 items];
  type metadata accessor for FPItem();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = [v1 items];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_7:

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v18 = MEMORY[0x24C1FC540](0, v17);
    goto LABEL_10;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v17 + 32);
LABEL_10:
  v19 = v18;

  v20 = [v19 displayName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v14 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D83B88];
    *(v25 + 16) = xmmword_249B9A480;
    v27 = MEMORY[0x277D83C10];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v14;
  }

  static String.localizedStringWithFormat(_:_:)();
}

void *DOCUntrashOperation.operationForRedoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  isa = [v0 items];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory];
  v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager];
  v7 = type metadata accessor for DOCUntrashOperation();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = v5;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = v6;
  v16.receiver = v8;
  v16.super_class = v7;
  v9 = v5;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v16, sel_initWithItems_restoreDirectory_, isa, v9);

  v12 = *((*MEMORY[0x277D85000] & *v11) + 0x80);
  v13 = v11;
  v12(v13, v14);

  return v11;
}

void *DOCUntrashOperation.operationForUndoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  isa = [v0 items];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager];
  v6 = type metadata accessor for DOCTrashOperation();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v14, sel_initWithItems_, isa);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x98);
  v11 = v9;
  v10(v11, v12);

  return v9;
}

id DOCUntrashOperation.__allocating_init(items:restoreDirectory:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for FPItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa restoreDirectory:a2];

  return v6;
}

id DOCUntrashOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUntrashOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v32 = a3;
  v33 = a5;
  v38 = a4;
  v39 = a1;
  v40 = a2;
  v35 = *v7;
  v34 = type metadata accessor for UICellAccessory.LayoutDimension();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v34, v12);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.Placement();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  (*(v14 + 16))(v18, a5, v13, v17);
  v19 = v34;
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v34);
  v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v21 = (v15 + *(v10 + 80) + v20) & ~*(v10 + 80);
  v22 = v21 + v11;
  v23 = swift_allocObject();
  *(v23 + 2) = *(v35 + 200);
  v24 = v37;
  *(v23 + 3) = v36;
  *(v23 + 4) = v24;
  (*(v14 + 32))(&v23[v20], v18, v13);
  (*(v10 + 32))(&v23[v21], v31, v19);
  v23[v22] = v38;
  (*(v14 + 8))(v33, v13);
  (*(v10 + 8))(v32, v19);
  *(v7 + 32) = 1;
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v26 = type metadata accessor for UICellAccessory();
  (*(*(v26 - 8) + 56))(v7 + v25, 1, 1, v26);
  v27 = v40;
  v7[2] = v39;
  v7[3] = v27;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  swift_beginAccess();
  *(v7 + 32) = 1;
  v28 = (v7 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v28 = partial apply for closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  v28[1] = v23;
  return v7;
}

uint64_t DOCSidebarCellCustomAccessoryItem.deinit()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");

  return v0;
}

uint64_t DOCSidebarCellAccessoryItem.hideWhenRenaming.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t DOCSidebarCellAccessoryItem.accessoryIfLoaded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  swift_beginAccess();
  return outlined init with copy of UICellAccessory?(v1 + v3, a1);
}

uint64_t DOCSidebarCellAccessoryItem.loadedAccessory()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, "vP\t");
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v18 - v11;
  (*(*v1 + 144))(v10);
  v13 = type metadata accessor for UICellAccessory();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider))(v1);
    if (v15(v12, 1, v13) != 1)
    {
      outlined destroy of CharacterSet?(v12, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");
    }
  }

  else
  {
    (*(v14 + 32))(a1, v12, v13);
  }

  (*(v14 + 16))(v7, a1, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  swift_beginAccess();
  outlined assign with take of UICellAccessory?(v7, v2 + v16);
  return swift_endAccess();
}

void *DOCSidebarCellCustomAccessoryItem.viewIfLoaded.getter()
{
  v1 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarCellCustomAccessoryItem.viewIfLoaded.setter(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOCSidebarCellCustomAccessoryItem.applyValuesToView()()
{
  v1 = (*(*v0 + 216))();
  if (v1)
  {
    v2 = v1;
    (*(*v0 + 256))();
  }
}

uint64_t DOCSidebarCellCustomAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t DOCSidebarCellAccessoryItem.__allocating_init(_:displayedInStyles:hideWhenRenaming:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 32) = 1;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v10 = type metadata accessor for UICellAccessory();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v8 + v9, 1, 1, v10);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = a3;
  swift_beginAccess();
  *(v8 + 32) = a4;
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = swift_allocObject();
  (*(v11 + 32))(v13 + v12, a5, v10);
  v14 = (v8 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v14 = partial apply for closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:);
  v14[1] = v13;
  return v8;
}

uint64_t static DOCSidebarCellAccessoryItem.progress(domain:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v74 = &v62 - v4;
  v69 = type metadata accessor for UICellAccessory.Placement();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v75 = v12;
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v62 - v20;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v67 = v17;
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.Sidebar);
  v24 = v14 + 16;
  v23 = *(v14 + 16);
  v23(v21, a1, v13);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v79 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BCFDC0, aBlock);
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v14 + 8))(v21, v13);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, aBlock);
    v24 = v14 + 16;

    *(v28 + 14) = v32;
    _os_log_impl(&dword_2493AC000, v25, v26, "%s: Registering progress for %s", v28, 0x16u);
    v33 = v62;
    swift_arrayDestroy();
    a1 = v79;
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v28, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v21, v13);
  }

  v63 = v23;
  v64 = v24;
  LOBYTE(aBlock[0]) = 1;
  v34 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
  v35 = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(aBlock, 0.5);
  specialized static DOCSidebarCellAccessoryItem.removeProgressSubscriber(forDomain:)(a1);
  v62 = objc_opt_self();
  URL._bridgeToObjectiveC()(&v82);
  v37 = v36;
  v38 = v67;
  v23(v67, a1, v13);
  v39 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v40 = (v65 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v14 + 32))(v41 + v39, v38, v13);
  *(v41 + v40) = v35;
  *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:);
  *(v42 + 24) = v41;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed () -> ())?);
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
  aBlock[3] = &block_descriptor_21;
  v43 = _Block_copy(aBlock);
  v44 = v35;

  v45 = [v62 addSubscriberForFileURL:v37 withPublishingHandler:v43];
  _Block_release(v43);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (one-time initialization token for progressSubscribers != -1)
  {
    swift_once();
  }

  v63(v38, v79, v13);
  outlined init with copy of Any(aBlock, v80);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v80, v38);
  swift_endAccess();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR);
  v47 = v71;
  v48 = &v71[*(v46 + 48)];
  v49 = *MEMORY[0x277D74A98];
  v50 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v50 - 8) + 104))(v47, v49, v50);
  *v48 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v48[1] = 0;
  (*(v68 + 104))(v47, *MEMORY[0x277D74AD8], v69);
  v51 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v51 - 8) + 56))(v74, 1, 1, v51);
  v52 = v44;
  v53 = v70;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  v54 = v76;
  static UICellAccessory.customView(configuration:)();
  (*(v72 + 8))(v53, v73);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  type metadata accessor for DOCSidebarCellAccessoryItem(0);
  v55 = swift_allocObject();
  *(v55 + 32) = 1;
  v57 = v77;
  v56 = v78;
  (*(v77 + 56))(v55 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, 1, 1, v78);
  *(v55 + 16) = 0x73736572676F7270;
  *(v55 + 24) = 0xE800000000000000;
  *(v55 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of static DOCSidebarCellAccessoryItem.progress(domain:);
  swift_beginAccess();
  *(v55 + 32) = 1;
  v58 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v59 = swift_allocObject();
  (*(v57 + 32))(v59 + v58, v54, v56);
  v60 = (v55 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v60 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v60[1] = v59;
  return v55;
}

void (*closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(void *a1, uint64_t a2, void *a3, uint64_t a4))()
{
  v34 = a4;
  v27 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  v11 = *(v7 + 16);
  v33 = a2;
  v31 = v11;
  v11(v10, a2, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v29 = *(v7 + 32);
  v30 = v12;
  v29(v14 + v12, v10, v6);
  v32 = v13;
  *(v14 + v13) = a1;
  v15 = v27;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = partial apply for closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = v15;

  v19 = [v28 scheduledTimerWithTimeInterval:1 repeats:v16 block:1.0];
  _Block_release(v16);
  if (one-time initialization token for progressTimers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = static DOCSidebarCellAccessoryItem.progressTimers;
  static DOCSidebarCellAccessoryItem.progressTimers = 0x8000000000000000;
  v22 = v33;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v33, isUniquelyReferenced_nonNull_native);
  static DOCSidebarCellAccessoryItem.progressTimers = v35;
  swift_endAccess();

  v31(v10, v22, v6);
  v23 = v32;
  v24 = swift_allocObject();
  v29(v24 + v30, v10, v6);
  *(v24 + v23) = v34;
  return partial apply for closure #2 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:);
}

uint64_t closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v10);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.Sidebar);
  (*(v13 + 16))(v16, a2, v12);
  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BCFDC0, aBlock);
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = a4;
    v25 = v24;
    (*(v13 + 8))(v16, v12);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, aBlock);
    a4 = v23;

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    [v18 fractionCompleted];
    *(v21 + 24) = v27;
    _os_log_impl(&dword_2493AC000, v19, v20, "%s: Progress for domain (%s) was updated to %f", v21, 0x20u);
    v28 = v39;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v28, -1, -1);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  type metadata accessor for OS_dispatch_queue();
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = v18;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_48;
  v31 = _Block_copy(aBlock);
  v32 = v18;
  v33 = a4;

  v34 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v35 = v42;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v34, v35, v31);
  _Block_release(v31);

  (*(v44 + 8))(v35, v36);
  return (*(v41 + 8))(v34, v43);
}

uint64_t *DOCSidebarCellAccessoryItem.progressTimers.unsafeMutableAddressor()
{
  if (one-time initialization token for progressTimers != -1)
  {
    swift_once();
  }

  return &static DOCSidebarCellAccessoryItem.progressTimers;
}

void closure #2 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BCFDC0, &v17);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Removing subscriber progress for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  specialized static DOCSidebarCellAccessoryItem.removeProgressSubscriber(forDomain:)(a1);
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v5)
  {
    v9[4] = v5;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_33;
    v5 = _Block_copy(v9);
  }

  return v5;
}

uint64_t *DOCSidebarCellAccessoryItem.progressSubscribers.unsafeMutableAddressor()
{
  if (one-time initialization token for progressSubscribers != -1)
  {
    swift_once();
  }

  return &static DOCSidebarCellAccessoryItem.progressSubscribers;
}

uint64_t DOCSidebarCellAccessoryItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t (*static DOCSidebarCellAccessoryItem.progressSubscribers.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for progressSubscribers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t static DOCSidebarCellAccessoryItem.progressSubscribers.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static DOCSidebarCellAccessoryItem.progressSubscribers.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static DOCSidebarCellAccessoryItem.progressTimers.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for progressTimers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCSidebarCellAccessoryItem.progressSubscribers : DOCSidebarCellAccessoryItem.Type@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;
}

double key path setter for static DOCSidebarCellAccessoryItem.progressSubscribers : DOCSidebarCellAccessoryItem.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;

  return result;
}

uint64_t key path setter for DOCSidebarCellAccessoryItem.accessoryIfLoaded : DOCSidebarCellAccessoryItem(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, "vP\t");
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of UICellAccessory?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  swift_beginAccess();
  outlined assign with take of UICellAccessory?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 32) = 1;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v10 = type metadata accessor for UICellAccessory();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v5 + v9, 1, 1, v10);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = a3;
  swift_beginAccess();
  *(v5 + 32) = a4;
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = swift_allocObject();
  (*(v11 + 32))(v13 + v12, a5, v10);
  v14 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v14 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v14[1] = v13;
  return v5;
}

uint64_t DOCSidebarCellAccessoryItem.__allocating_init(_:displayedInStyles:hideWhenRenaming:accessoryProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = 1;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v14 = type metadata accessor for UICellAccessory();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = a3;
  swift_beginAccess();
  *(v12 + 32) = a4;
  v15 = (v12 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v15 = a5;
  v15[1] = a6;
  return v12;
}

uint64_t DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessoryProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = 1;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v14 = type metadata accessor for UICellAccessory();
  (*(*(v14 - 8) + 56))(v6 + v13, 1, 1, v14);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = a3;
  swift_beginAccess();
  *(v6 + 32) = a4;
  v15 = (v6 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v15 = a5;
  v15[1] = a6;
  return v6;
}

uint64_t DOCSidebarCellAccessoryItem.deinit()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");

  return v0;
}

uint64_t DOCSidebarCellAccessoryItem.__deallocating_deinit()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");

  return swift_deallocClassInstance();
}

uint64_t closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v38 = a5;
  v36 = a4;
  v37 = a7;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  v33 = type metadata accessor for UICellAccessory.Placement();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v17 = *(v35 - 8);
  v19 = MEMORY[0x28223BE20](v35, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2(v19);
  type metadata accessor for DOCSidebarCellCustomAccessoryItem(0, a6, v23, v24);
  v25 = swift_dynamicCastClassUnconditional();
  v26 = *(*v25 + 224);
  v27 = v22;
  v26(v22);
  v28 = (*(*v25 + 248))(v27);
  (*(*v25 + 264))(v28);
  (*(v13 + 16))(v16, v34, v33);
  v29 = type metadata accessor for UICellAccessory.LayoutDimension();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v12, v36, v29);
  (*(v30 + 56))(v12, 0, 1, v29);
  v31 = v27;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v17 + 8))(v21, v35);
}

uint64_t partial apply for closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(type metadata accessor for UICellAccessory.Placement() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UICellAccessory.LayoutDimension() - 8);
  v9 = *(v2 + 24);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v11 = *(v10 + *(v8 + 64));

  return closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(v9, v2 + v6, v10, v11, v4, a2);
}

uint64_t outlined init with copy of UICellAccessory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, "vP\t");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DOCSidebarCellCustomAccessoryItem.__deallocating_deinit()
{
  DOCSidebarCellCustomAccessoryItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized static DOCSidebarCellAccessoryItem.chevron(displayedInStyles:)(uint64_t a1)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v26 - v3;
  v27 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D74A90], v9, v18);
  v20 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v5 + 8))(v8, v27);
  (*(v10 + 8))(v13, v9);
  type metadata accessor for DOCSidebarCellAccessoryItem(0);
  v21 = swift_allocObject();
  *(v21 + 32) = 1;
  (*(v15 + 56))(v21 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, 1, 1, v14);
  *(v21 + 16) = 0x6E6F7276656863;
  *(v21 + 24) = 0xE700000000000000;
  *(v21 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = v28;
  swift_beginAccess();
  *(v21 + 32) = 1;
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  (*(v15 + 32))(v23 + v22, v19, v14);
  v24 = (v21 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v24 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v24[1] = v23;

  return v21;
}

uint64_t specialized static DOCSidebarCellAccessoryItem.delete.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v25 - v2;
  v25 = type metadata accessor for UICellAccessory.DeleteOptions();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D74A88], v8, v17);
  v19 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.delete(displayed:options:actionHandler:)();
  (*(v4 + 8))(v7, v25);
  (*(v9 + 8))(v12, v8);
  type metadata accessor for DOCSidebarCellAccessoryItem(0);
  v20 = swift_allocObject();
  *(v20 + 32) = 1;
  (*(v14 + 56))(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, 1, 1, v13);
  *(v20 + 16) = 0x6574656C6564;
  *(v20 + 24) = 0xE600000000000000;
  *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of static DOCSidebarCellAccessoryItem.delete.getter;
  swift_beginAccess();
  *(v20 + 32) = 0;
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v21, v18, v13);
  v23 = (v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v23 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v23[1] = v22;
  return v20;
}

uint64_t specialized static DOCSidebarCellAccessoryItem.reorder.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v25 - v2;
  v25 = type metadata accessor for UICellAccessory.ReorderOptions();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D74A88], v8, v17);
  v19 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  static UICellAccessory.reorder(displayed:options:)();
  (*(v4 + 8))(v7, v25);
  (*(v9 + 8))(v12, v8);
  type metadata accessor for DOCSidebarCellAccessoryItem(0);
  v20 = swift_allocObject();
  *(v20 + 32) = 1;
  (*(v14 + 56))(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, 1, 1, v13);
  *(v20 + 16) = 0x726564726F6572;
  *(v20 + 24) = 0xE700000000000000;
  *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of static DOCSidebarCellAccessoryItem.reorder.getter;
  swift_beginAccess();
  *(v20 + 32) = 1;
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v21, v18, v13);
  v23 = (v20 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v23 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v23[1] = v22;
  return v20;
}

void specialized static DOCSidebarCellAccessoryItem.removeProgressSubscriber(forDomain:)(uint64_t a1)
{
  if (one-time initialization token for progressSubscribers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCSidebarCellAccessoryItem.progressSubscribers;
  if (*(static DOCSidebarCellAccessoryItem.progressSubscribers + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v12);
    outlined init with take of Any(v12, &v13);
    swift_endAccess();
    v5 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    [v5 removeSubscriber_];
    swift_unknownObjectRelease();
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a1, v12);
    swift_endAccess();
    outlined destroy of CharacterSet?(v12, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    swift_endAccess();
  }

  if (one-time initialization token for progressTimers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static DOCSidebarCellAccessoryItem.progressTimers;
  if (*(static DOCSidebarCellAccessoryItem.progressTimers + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    [v10 invalidate];
    swift_beginAccess();
    v11 = specialized Dictionary.removeValue(forKey:)(a1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t specialized static DOCSidebarCellAccessoryItem.outlineDisclosure.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV24OutlineDisclosureOptionsV5StyleOSgMd, &_s5UIKit15UICellAccessoryV24OutlineDisclosureOptionsV5StyleOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v32 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.DisplayedState();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UICellAccessory();
  v17 = *(v31 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v31, v19);
  v21 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0x8000000249BCFEC0;
  (*(v13 + 104))(v16, *MEMORY[0x277D74A98], v12, v20);
  v22 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
  (*(v8 + 8))(v11, v32);
  (*(v13 + 8))(v16, v12);
  type metadata accessor for DOCSidebarCellAccessoryItem(0);
  v24 = swift_allocObject();
  *(v24 + 32) = 1;
  v25 = v31;
  (*(v17 + 56))(v24 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, 1, 1, v31);
  *(v24 + 16) = 0xD000000000000011;
  *(v24 + 24) = v30;
  *(v24 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of static DOCSidebarCellAccessoryItem.outlineDisclosure.getter;
  swift_beginAccess();
  *(v24 + 32) = 1;
  v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v27 = swift_allocObject();
  (*(v17 + 32))(v27 + v26, v21, v25);
  v28 = (v24 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v28 = closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)partial apply;
  v28[1] = v27;
  return v24;
}

void (*partial apply for closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(void *a1))()
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(a1, v1 + v4, v6, v7);
}

uint64_t type metadata accessor for DOCSidebarCellAccessoryItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCSidebarCellAccessoryItem;
  if (!type metadata singleton initialization cache for DOCSidebarCellAccessoryItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DOCSidebarCellAccessoryItem(uint64_t a1)
{
  type metadata accessor for UICellAccessory?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UICellAccessory?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UICellAccessory?)
  {
    type metadata accessor for UICellAccessory();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UICellAccessory?);
    }
  }
}

uint64_t outlined assign with take of UICellAccessory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, "vP\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(a1, v1 + v4, v6, v7);
}

void partial apply for closure #2 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #2 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)(v2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static DOCSidebarCellAccessoryItem.progress(domain:)()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) fractionCompleted];
  return (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v2);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = type metadata accessor for UICellAccessory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in DOCSidebarCellAccessoryItem.init(_:displayedInStyles:hideWhenRenaming:accessory:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UICellAccessory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

Swift::Int DOCViewEditMenuInteraction.PresentationStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

char *DOCViewEditMenuInteraction.__allocating_init(attachedTo:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return specialized DOCViewEditMenuInteraction.init(attachedTo:delegate:)(a1, a2, v7, ObjectType, a3);
}

char *DOCViewEditMenuInteraction.init(attachedTo:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized DOCViewEditMenuInteraction.init(attachedTo:delegate:)(a1, a2, v3, ObjectType, a3);
}

void DOCViewEditMenuInteraction.enabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_enabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_longPressGesture);
      if (v4)
      {
        if (v7)
        {
          [Strong addGestureRecognizer_];
          v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction);
          if (v8)
          {
            v9 = &selRef_addInteraction_;
LABEL_10:
            v10 = v8;
            [v6 *v9];

            return;
          }

          goto LABEL_14;
        }

        __break(1u);
      }

      else if (v7)
      {
        [Strong removeGestureRecognizer_];
        v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction);
        if (v8)
        {
          v9 = &selRef_removeInteraction_;
          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }
}

uint64_t DOCViewEditMenuInteraction.enabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCViewEditMenuInteraction.enabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_enabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  DOCViewEditMenuInteraction.enabled.didset(v4);
}

void (*DOCViewEditMenuInteraction.enabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_enabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCViewEditMenuInteraction.enabled.modify;
}

void DOCViewEditMenuInteraction.enabled.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  DOCViewEditMenuInteraction.enabled.didset(v5);

  free(v1);
}

Swift::Void __swiftcall DOCViewEditMenuInteraction.longPressGesture(_:)(UIGestureRecognizer *a1)
{
  if ([(UIGestureRecognizer *)a1 state]== 1)
  {
    DOCViewEditMenuInteraction.loadPresentationContextForLongPressMenu()();
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext + 16))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIEditMenuConfiguration, 0x277D754C0);
      v2 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
      v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction);
      if (v3)
      {
        v4 = v2;
        [v3 presentEditMenuWithConfiguration_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double DOCViewEditMenuInteraction.editMenuInteraction(_:willDismissMenuFor:animator:)()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;

  return result;
}

void DOCViewEditMenuInteraction.loadPresentationContextForLongPressMenu()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_longPressGesture);
    if (v3)
    {
      v17 = v2;
      [v3 locationInView_];
      v5 = v4;
      v7 = v6;
      v8 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        v11 = (*(v9 + 8))(v0, 0, ObjectType, v9, v5, v7);
        v13 = v12;
        v15 = v14;
        swift_unknownObjectRelease();

        if (v15)
        {
          v16 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext;
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          *(v16 + 24) = 0;
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCViewEditMenuInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCViewEditMenuInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCViewEditMenuInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized DOCViewEditMenuInteraction.init(attachedTo:delegate:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_enabled] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_delegate];
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_longPressGesture] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction] = 0;
  v9 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  v9[24] = 0;
  *v9 = 0;
  swift_unknownObjectWeakAssign();
  *(v8 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v18.receiver = a3;
  v18.super_class = type metadata accessor for DOCViewEditMenuInteraction();
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = objc_allocWithZone(MEMORY[0x277D75708]);
  v12 = v10;
  v13 = [v11 initWithTarget:v12 action:sel_longPressGesture_];
  v14 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_longPressGesture];
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_longPressGesture] = v13;

  v15 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
  swift_unknownObjectRelease();
  v16 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction];
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction] = v15;

  return v12;
}

void specialized DOCViewEditMenuInteraction.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext + 16);
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_editMenuInteraction);
      if (!v5)
      {
LABEL_28:
        __break(1u);
        return;
      }

      [v5 locationInView_];
      v7 = v6;
      v9 = v8;
      v10 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        v2 = *(v1 + 16);
        if (!v2)
        {
          return;
        }

        goto LABEL_8;
      }

      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 8))(v0, 1, ObjectType, v11, v7, v9);
      v15 = v14;
      v17 = v16;
      swift_unknownObjectRelease();

      if (v17)
      {
        *v1 = v13;
        *(v1 + 8) = v15;
        *(v1 + 16) = v17;
        *(v1 + 24) = 1;
      }
    }

    v2 = *(v1 + 16);
    if (!v2)
    {
      return;
    }
  }

LABEL_8:
  v18 = *(v1 + 24);
  if (v2 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v29 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x24C1FC540](v21, v2);
          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v22 = *(v2 + 8 * v21 + 32);
          if ((v18 & 1) == 0)
          {
LABEL_18:
            v23 = v22;
            [v23 copy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
            swift_dynamicCast();
            [v28 setImage_];
          }
        }

        ++v21;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v19 == v21)
        {

          v20 = v29;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_20:
  if (v20 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    preferredElementSize = v20;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, v25, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v27);
}

unint64_t lazy protocol witness table accessor for type DOCViewEditMenuInteraction.PresentationStyle and conformance DOCViewEditMenuInteraction.PresentationStyle()
{
  result = lazy protocol witness table cache variable for type DOCViewEditMenuInteraction.PresentationStyle and conformance DOCViewEditMenuInteraction.PresentationStyle;
  if (!lazy protocol witness table cache variable for type DOCViewEditMenuInteraction.PresentationStyle and conformance DOCViewEditMenuInteraction.PresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCViewEditMenuInteraction.PresentationStyle and conformance DOCViewEditMenuInteraction.PresentationStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCViewEditMenuInteraction.Presentatable(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCViewEditMenuInteraction.Presentatable(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DOCViewEditMenuInteraction.PresentationContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for DOCViewEditMenuInteraction.PresentationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *DOCLevelOfDetailButton.init(metadataView:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_observationContext] = 0;
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics];
  v4 = *MEMORY[0x277D75030];
  v5 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  v7 = *MEMORY[0x277D76968];
  *&v3[*(v6 + 20)] = *MEMORY[0x277D76968];
  v3[*(v6 + 24)] = 0;
  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v18.receiver = v1;
  v18.super_class = type metadata accessor for DOCLevelOfDetailButton(0);
  v9 = v7;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  [v11 itemInfoView];
  swift_getObjCClassMetadata();
  v13 = [swift_getObjCClassFromMetadata() levelOfDetailButton];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setAccessibilityIdentifier_];

  DOCLevelOfDetailButton.setupButtonConfiguration()();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v16 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_observationContext];
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_observationContext] = v15;

  return v12;
}

id key path getter for DOCMetadataView.levelOfDetail : DOCMetadataView@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 levelOfDetail];
  *a2 = result;
  return result;
}

double closure #1 in DOCLevelOfDetailButton.init(metadataView:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x120))();
    v9 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
    v10 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
    v11 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle + 8];
    *v9 = v7;
    v9[1] = v8;
    if (!v11 || (v7 == v10 ? (v12 = v11 == v8) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      [v6 setNeedsUpdateConfiguration];
      [v6 layoutBelowIfNeeded];
    }
  }

  return result;
}

id DOCLevelOfDetailButton.Metrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D75030];
  v3 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  v5 = *MEMORY[0x277D76968];
  *(a1 + *(v4 + 20)) = *MEMORY[0x277D76968];
  *(a1 + *(v4 + 24)) = 0;

  return v5;
}

uint64_t DOCLevelOfDetailButton.Metrics.buttonSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *DOCLevelOfDetailButton.Metrics.textStyle.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCLevelOfDetailButton.Metrics(0) + 20));
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall DOCLevelOfDetailButton.Metrics.applyProperties(andTitle:toButton:inContainer:avoidZeroInsetsAtLargestSize:)(Swift::String andTitle, UIButton *toButton, UIView_optional *inContainer, Swift::Bool avoidZeroInsetsAtLargestSize)
{
  v48 = avoidZeroInsetsAtLargestSize;
  countAndFlagsBits = andTitle._countAndFlagsBits;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = toButton;
  UIButton.configuration.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of CharacterSet?(v22, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    return;
  }

  (*(v24 + 32))(v27, v22, v23);
  if (inContainer)
  {
    v44 = inContainer;
  }

  else
  {
    v44 = v50;
  }

  v43 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  v28 = *(v51 + *(v43 + 20));
  v29 = inContainer;
  if (v28)
  {
    v30 = v28;
    v31 = [(UIView_optional *)v44 traitCollection];
    AttributeContainer.init()();

    AttributedString.init(_:attributes:)();
    v52 = [objc_opt_self() preferredFontForTextStyle:v30 compatibleWithTraitCollection:v31];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();

    v32 = type metadata accessor for AttributedString();
    (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
    UIButton.Configuration.attributedTitle.setter();
  }

  else
  {

    UIButton.Configuration.title.setter();
  }

  (*(v46 + 16))(v9, v51, v47);
  UIButton.Configuration.buttonSize.setter();
  v33 = v44;
  if (!v48)
  {
    goto LABEL_14;
  }

  v34 = [(UIView_optional *)v44 traitCollection];
  v35 = [v34 preferredContentSizeCategory];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v38 != v39)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_15;
    }

LABEL_14:

    UIButton.Configuration.contentInsets.setter();
    goto LABEL_15;
  }

LABEL_15:
  if ((*(v51 + *(v43 + 24)) & 1) == 0)
  {
    v41 = [(UIView_optional *)v33 tintColor];
    UIButton.Configuration.baseForegroundColor.setter();
  }

  v42 = v49;
  (*(v24 + 16))(v49, v27, v23);
  (*(v24 + 56))(v42, 0, 1, v23);
  UIButton.configuration.setter();

  (*(v24 + 8))(v27, v23);
}

double DOCLevelOfDetailButton.levelOfDetailTitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
  v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
  [v2 layoutBelowIfNeeded];
LABEL_11:

  return result;
}

uint64_t DOCLevelOfDetailButton.contentInsets.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v19 - v15;
  UIButton.configuration.getter();
  if ((*(v5 + 48))(v3, 1, v4))
  {
    return outlined destroy of CharacterSet?(v3, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  }

  (*(v5 + 16))(v8, v3, v4);
  outlined destroy of CharacterSet?(v3, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  UIButton.Configuration.updated(for:)();
  v18 = *(v5 + 8);
  v18(v8, v4);
  (*(v5 + 32))(v16, v12, v4);
  UIButton.Configuration.contentInsets.getter();
  return (v18)(v16, v4);
}

uint64_t DOCLevelOfDetailButton.setupButtonConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = aBlock - v4;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = aBlock - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x120))();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = DOCLevelOfDetailButton.levelOfDetailTitle.setter(v17, v19);
  v21 = *(v7 + 16);
  v21(v14, &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics], v6, v20);
  v22 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  (v21)(v10, v14, v6);
  UIButton.Configuration.buttonSize.setter();

  v23 = type metadata accessor for UIButton.Configuration();
  (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
  UIButton.configuration.setter();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #2 in DOCLevelOfDetailButton.setupButtonConfiguration();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_215;
  v25 = _Block_copy(aBlock);

  [v1 setConfigurationUpdateHandler_];
  _Block_release(v25);
  LODWORD(v26) = 1144750080;
  [v1 setContentHuggingPriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v27];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 setDoc:v28 primaryAction:?];

  return (*(v7 + 8))(v14, v6);
}

uint64_t outlined init with copy of DOCLevelOfDetailButton.Metrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void closure #2 in DOCLevelOfDetailButton.setupButtonConfiguration()(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for UIButton.Configuration();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = (Strong + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle);
    v27 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle + 8);
    v45 = v2;
    v46 = v14;
    if (v27)
    {
      v44 = *v26;
      v47 = v27;
    }

    else
    {
      v44 = 0;
      v47 = 0xE000000000000000;
    }

    v28 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics;

    v29 = v25;
    UIButton.configuration.getter();
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      outlined destroy of CharacterSet?(v18, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }

    else
    {
      v30 = &v25[v28];
      (*(v20 + 32))(v23, v18, v19);
      v43 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
      v31 = *&v30[*(v43 + 20)];
      if (v31)
      {
        v32 = v31;
        v33 = v29;
        v42 = v30;
        v34 = v33;
        v35 = v32;
        v36 = [v34 traitCollection];
        AttributeContainer.init()();

        AttributedString.init(_:attributes:)();
        v51 = [objc_opt_self() preferredFontForTextStyle:v35 compatibleWithTraitCollection:v36];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v30 = v42;
        v37 = type metadata accessor for AttributedString();
        (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
        UIButton.Configuration.attributedTitle.setter();
      }

      else
      {
        v38 = v29;

        UIButton.Configuration.title.setter();
      }

      v39 = v46;
      (*(v49 + 16))(v48, v30, v45);
      UIButton.Configuration.buttonSize.setter();

      UIButton.Configuration.contentInsets.setter();
      if ((v30[*(v43 + 24)] & 1) == 0)
      {
        v40 = [v29 tintColor];
        UIButton.Configuration.baseForegroundColor.setter();
      }

      (*(v20 + 16))(v39, v23, v19);
      (*(v20 + 56))(v39, 0, 1, v19);
      UIButton.configuration.setter();

      (*(v20 + 8))(v23, v19);
    }
  }
}

void closure #3 in DOCLevelOfDetailButton.setupButtonConfiguration()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 setLevelOfDetail_];
    }
  }
}

double DOCLevelOfDetailButton.__ivar_destroyer()
{
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metadataView);

  outlined destroy of DOCLevelOfDetailButton.Metrics(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics);

  return result;
}

void closure #1 in static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v46 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v42 - v23;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v42 - v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v47 = *(v26 + 48);
  if (v47(v24, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v44 = 0;
  }

  else
  {
    v44 = URL.startAccessingSecurityScopedResource()();
    (*(v26 + 8))(v24, v25);
  }

  outlined init with copy of DOCGridLayout.Spec?(a1, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v47(v20, 1, v25) == 1)
  {
    v28 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v28 = v29;
    (*(v26 + 8))(v20, v25);
  }

  v30 = [objc_opt_self() pdfMetadataProviderWithNode:a2 levelOfDetail:a3 URL:v28];

  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = v47(v16, 1, v25);
  v42 = v26;
  if (v31 == 1)
  {
    v33 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v32);
    v33 = v34;
    (*(v26 + 8))(v16, v25);
  }

  v35 = a3;
  v36 = [objc_opt_self() imageMetadataProviderWithNode:a2 levelOfDetail:a3 URL:v33];

  v37 = specialized static DOCMediaMetadataProvider.mediaMetadataProvider(with:levelOfDetail:url:)(a2, v35, a1);
  v38 = swift_allocObject();
  v38[2] = v45;
  v38[3] = a6;
  v38[4] = v46;
  v38[5] = v30;
  v38[6] = v36;
  v38[7] = v37;

  swift_bridgeObjectRetain_n();

  v39 = v30;
  v40 = v36;
  DOCRunInMainThread(_:)();

  if (v44)
  {
    v41 = v43;
    outlined init with copy of DOCGridLayout.Spec?(a1, v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v47(v41, 1, v25) == 1)
    {

      outlined destroy of CharacterSet?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();

      (*(v42 + 8))(v41, v25);
    }
  }

  else
  {
  }
}

BOOL closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v29 = a1[2];
  v30 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a3 + 16);
  v9 = v8 == 0;
  v10 = v6;
  v11 = *a2;
  v33 = v5;
  v12 = *a1;
  v31 = a2[2];
  v32 = a2[3];
  v13 = 0;
  if (v8)
  {
    v28 = a3;
    v14 = (a3 + 40);
    while (*(v14 - 1) != v4 || *v14 != v5)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = v10;
        v7 = v11;
        v5 = v33;
        v4 = v12;
        break;
      }

      ++v13;
      v14 += 2;
      v9 = v8 == v13;
      v6 = v10;
      v7 = v11;
      v5 = v33;
      v4 = v12;
      if (v8 == v13)
      {
        v13 = 0;
        break;
      }
    }

    a3 = v28;
  }

  v16 = v8 == 0;
  if (v8)
  {
    v17 = 0;
    v18 = (a3 + 40);
    while (*(v18 - 1) != v7 || *v18 != v6)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v33;
      if (v20)
      {
        break;
      }

      v4 = v12;
      v7 = v11;
      v6 = v10;
      ++v17;
      v18 += 2;
      v16 = v8 == v17;
      if (v8 == v17)
      {
        goto LABEL_20;
      }
    }

    if (v9)
    {
      return 0;
    }

    return v16 || v17 < v13;
  }

LABEL_20:
  if (!v9)
  {
    v17 = 0;
    return v16 || v17 < v13;
  }

  v21 = v6;
  v22 = v7;
  v23 = v5;
  v24 = v4;

  DOCMetadataKey.localizedTitle.getter(v24, v23, v29, v30);

  DOCMetadataKey.localizedTitle.getter(v22, v21, v31, v32);

  lazy protocol witness table accessor for type String and conformance String();
  v25 = StringProtocol.localizedCompare<A>(_:)();

  return v25 == 1;
}

objc_class *DOCMetadataKey.localizedTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v27 = _DocumentManagerBundle();
        if (v27)
        {
          v14 = v27;
          v83 = 0x8000000249BD1880;
          v15 = 0x65704F207473614CLL;
          v19 = 0xEB0000000064656ELL;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000041;
          goto LABEL_44;
        }

        goto LABEL_103;
      }

      if (a2 == 7)
      {
        v31 = _DocumentManagerBundle();
        if (v31)
        {
          v14 = v31;
          v83 = 0x8000000249BD1820;
          v15 = 0x74616D726F46;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000057;
          v19 = 0xE600000000000000;
          goto LABEL_44;
        }

        goto LABEL_107;
      }

      v23 = _DocumentManagerBundle();
      if (v23)
      {
        v14 = v23;
        v83 = 0x8000000249BD17C0;
        v15 = 0x7974696361706143;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000052;
        v19 = 0xE800000000000000;
        goto LABEL_44;
      }

      goto LABEL_100;
    }

    if (a2 == 9)
    {
      v29 = _DocumentManagerBundle();
      if (v29)
      {
        v14 = v29;
        v83 = 0x8000000249BD1760;
        v15 = 0x6C62616C69617641;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000059;
        v19 = 0xE900000000000065;
        goto LABEL_44;
      }

      goto LABEL_105;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {
        return 0;
      }

      goto LABEL_38;
    }

    v33 = _DocumentManagerBundle();
    if (!v33)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v14 = v33;
    v83 = 0x8000000249BD1700;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD000000000000054;
    v15 = 1684370261;
LABEL_37:
    v19 = 0xE400000000000000;
    goto LABEL_44;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = _DocumentManagerBundle();
      if (v28)
      {
        v14 = v28;
        v16 = 0xD000000000000035;
        v83 = 0x8000000249BD1960;
        v15 = 0x6572656857;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      goto LABEL_104;
    }

    if (a2 != 4)
    {
      v24 = _DocumentManagerBundle();
      if (v24)
      {
        v14 = v24;
        v83 = 0x8000000249BD18D0;
        v15 = 0x6465696669646F4DLL;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000042;
        v19 = 0xE800000000000000;
        goto LABEL_44;
      }

      goto LABEL_101;
    }

    v32 = _DocumentManagerBundle();
    if (!v32)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v14 = v32;
    v83 = 0x8000000249BD1920;
    v15 = 0x64657461657243;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD00000000000003ELL;
LABEL_43:
    v19 = 0xE700000000000000;
    goto LABEL_44;
  }

  switch(a2)
  {
    case 0:
      v26 = _DocumentManagerBundle();
      if (!v26)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v14 = v26;
      v16 = 0xD000000000000034;
      v83 = 0x8000000249BD1A70;
      v17 = 0x617A696C61636F4CLL;
      v18 = 0xEB00000000656C62;
      v15 = 1684957515;
      goto LABEL_37;
    case 1:
      v30 = _DocumentManagerBundle();
      if (v30)
      {
        v14 = v30;
        v15 = 0xD000000000000010;
        v83 = 0x8000000249BD1A20;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD1A00;
        v16 = 0xD000000000000045;
        goto LABEL_44;
      }

      goto LABEL_106;
    case 2:
      v13 = _DocumentManagerBundle();
      if (v13)
      {
        v14 = v13;
        v15 = 0xD000000000000010;
        v16 = 0xD000000000000035;
        v83 = 0x8000000249BD19C0;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD19A0;
        v20.super.isa = v14;
        v21 = 1702521171;
        v22 = 0xE400000000000000;
LABEL_45:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, *&v17, v20, *&v21, *&v16)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
  }

LABEL_38:
  v12 = a3;
  v4 = a4;
  if (a1 == 0x726F68747541 && a2 == 0xE600000000000000 || (countAndFlagsBits = a1, v6 = a2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v34 = _DocumentManagerBundle();
    if (!v34)
    {
LABEL_110:
      __break(1u);
LABEL_111:
      if (countAndFlagsBits == 0x6F69736E656D6944 && v6 == v10 + 1279 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v47 = _DocumentManagerBundle();
        if (v47)
        {
          v14 = v47;
          v83 = 0x8000000249BD13F0;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = v10 + 1279;
          v15 = 0x6F69736E656D6944;
          goto LABEL_72;
        }

        __break(1u);
LABEL_175:
        if (countAndFlagsBits == 1701536077 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v58 = _DocumentManagerBundle();
          if (v58)
          {
            v14 = v58;
            v18 = 0xEB00000000656C62;
            v19 = 0xEB00000000656B61;
            v83 = 0x8000000249BD10D0;
            v15 = 0x4D20656369766544;
            v17 = 0x617A696C61636F4CLL;
            v16 = v11 + 13;
            goto LABEL_44;
          }

          goto LABEL_206;
        }

        goto LABEL_181;
      }

      goto LABEL_117;
    }

    v14 = v34;
    v16 = 0xD000000000000034;
    v83 = 0x8000000249BD16C0;
    v15 = 0x73726F68747541;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    goto LABEL_43;
  }

  if ((countAndFlagsBits != 0x7974697275636553 || v6 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v36 = 0x7365676150;
    if (countAndFlagsBits == 0x7365676150 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v37 = _DocumentManagerBundle();
      if (v37)
      {
        v14 = v37;
        v83 = 0x8000000249BD1620;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000042;
        v15 = 0x7365676150;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      __break(1u);
LABEL_123:
      v36 = 0x657275736F707845;
      if (countAndFlagsBits == 0x657275736F707845 && v6 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v49 = _DocumentManagerBundle();
        if (!v49)
        {
          __break(1u);
          goto LABEL_187;
        }

        v14 = v49;
        v83 = 0x8000000249BD13A0;
        v19 = 0xED0000656D695420;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = v11 + 14;
        v15 = 0x657275736F707845;
LABEL_44:
        v20.super.isa = v14;
        v21 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_45;
      }

      goto LABEL_129;
    }

    v7 = 0x656C746954;
    if (countAndFlagsBits == 0x656C746954 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v38 = _DocumentManagerBundle();
      if (v38)
      {
        v14 = v38;
        v16 = 0xD000000000000033;
        v83 = 0x8000000249BD15E0;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v15 = 0x656C746954;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      __break(1u);
LABEL_129:
      if (countAndFlagsBits == v36 && v6 == 0xEF6D6172676F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v50 = _DocumentManagerBundle();
        if (!v50)
        {
          __break(1u);
          goto LABEL_194;
        }

        v14 = v50;
        v15 = v11 - 40;
        v83 = 0x8000000249BD1350;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD1330;
        v16 = v11 + 17;
        goto LABEL_44;
      }

LABEL_135:
      v8 = 0xEC00000065646F4DLL;
      if (countAndFlagsBits == 0x676E69726574654DLL && v6 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v51 = _DocumentManagerBundle();
        if (v51)
        {
          v14 = v51;
          v83 = 0x8000000249BD12E0;
          v19 = 0xED000065646F4D20;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = v11 + 9;
          v15 = 0x676E69726574654DLL;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_200;
      }

      goto LABEL_141;
    }

    if ((countAndFlagsBits != 0x6E6F6973726556 || v6 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v10 = 0xEA00000000006E6FLL;
      if (countAndFlagsBits == 0x6974756C6F736552 && v6 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v40 = _DocumentManagerBundle();
        if (v40)
        {
          v14 = v40;
          v83 = 0x8000000249BD1560;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v15 = 0x6974756C6F736552;
          v19 = 0xEA00000000006E6FLL;
LABEL_72:
          v20.super.isa = v14;
          v21 = 0;
          v22 = 0xE000000000000000;
          v16 = 0xD000000000000038;
          goto LABEL_45;
        }

        __break(1u);
LABEL_141:
        if (countAndFlagsBits == 0x6572757472657041 && v6 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v52 = _DocumentManagerBundle();
          if (v52)
          {
            v14 = v52;
            v83 = 0x8000000249BD1290;
            v19 = 0xEE0065756C615620;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 15;
            v15 = 0x6572757472657041;
            goto LABEL_44;
          }

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
          goto LABEL_205;
        }

        goto LABEL_147;
      }

      if (countAndFlagsBits == 0x72656375646F7250 && v6 == 0xE800000000000000 || ((v11 = 0xE800000000000000, v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), countAndFlagsBits == 0x6572617774666F73) ? (v43 = v6 == 0xE800000000000000) : (v43 = 0), !v43 ? (v44 = 0) : (v44 = 1), (v42 & 1) != 0 || (v44 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v41 = _DocumentManagerBundle();
        if (v41)
        {
          v14 = v41;
          v15 = 0xD000000000000011;
          v83 = 0x8000000249BD1510;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0x8000000249BD14F0;
          v16 = 0xD000000000000049;
          goto LABEL_44;
        }

        __break(1u);
LABEL_147:
        if (countAndFlagsBits == 0x64656570534F5349 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v53 = _DocumentManagerBundle();
          if (v53)
          {
            v14 = v53;
            v19 = 0xE900000000000064;
            v83 = 0x8000000249BD1240;
            v15 = 0x65657053204F5349;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 16;
            goto LABEL_44;
          }

          goto LABEL_201;
        }

        if (countAndFlagsBits == 0x6C61426574696857 && v6 == 0xEC00000065636E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v54 = _DocumentManagerBundle();
          if (v54)
          {
            v14 = v54;
            v83 = 0x8000000249BD11F0;
            v15 = 0x6142206574696857;
            v19 = 0xED000065636E616CLL;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 20;
            goto LABEL_44;
          }

          goto LABEL_202;
        }

        goto LABEL_158;
      }

      v9 = 0x726F7461657243;
      if (countAndFlagsBits == 0x726F7461657243 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0x54726F7461657243 && v6 == 0xEB000000006C6F6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v45 = _DocumentManagerBundle();
        if (v45)
        {
          v14 = v45;
          v83 = 0x8000000249BD14A0;
          v15 = 0x20746E65746E6F43;
          v19 = 0xEF726F7461657243;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000049;
          goto LABEL_44;
        }

        __break(1u);
LABEL_158:
        if (countAndFlagsBits == 0x6E654C6C61636F46 && v6 == 0xEB00000000687467 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v55 = _DocumentManagerBundle();
          if (v55)
          {
            v14 = v55;
            v83 = 0x8000000249BD11A0;
            v15 = 0x654C206C61636F46;
            v19 = 0xEC0000006874676ELL;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 19;
            goto LABEL_44;
          }

          goto LABEL_203;
        }

        if (countAndFlagsBits == 0x6465526873616C46 && v6 == 0xEB00000000657945 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v56 = _DocumentManagerBundle();
          if (v56)
          {
            v14 = v56;
            v83 = 0x8000000249BD1160;
            v15 = 0x65794520646552;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v19 = 0xE700000000000000;
            goto LABEL_72;
          }

          goto LABEL_204;
        }

LABEL_169:
        if ((countAndFlagsBits != 0x6873616C46 || v6 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_175;
        }

        v57 = _DocumentManagerBundle();
        if (v57)
        {
          v14 = v57;
          v83 = 0x8000000249BD1120;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v15 = 0x6873616C46;
          v19 = 0xE500000000000000;
          goto LABEL_72;
        }

LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
        goto LABEL_208;
      }

      v11 = 0xD000000000000038;
      if (countAndFlagsBits == 0xD000000000000011 && 0x8000000249BD0C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v46 = _DocumentManagerBundle();
        if (v46)
        {
          v14 = v46;
          v15 = 0xD000000000000013;
          v83 = 0x8000000249BD1450;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0x8000000249BD1430;
          v16 = 0xD00000000000004BLL;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_169;
      }

      goto LABEL_111;
    }

    v39 = _DocumentManagerBundle();
    if (!v39)
    {
      __break(1u);
      goto LABEL_135;
    }

    v14 = v39;
    v83 = 0x8000000249BD15A0;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD00000000000003CLL;
    v15 = 0x6E6F6973726556;
    goto LABEL_43;
  }

  v35 = _DocumentManagerBundle();
  if (v35)
  {
    v14 = v35;
    v83 = 0x8000000249BD1670;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD000000000000041;
    v15 = 0x7974697275636553;
    v19 = 0xE800000000000000;
    goto LABEL_44;
  }

  __break(1u);
LABEL_117:
  if ((countAndFlagsBits != 0x7265626D754E46 || v6 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_123;
  }

  v48 = _DocumentManagerBundle();
  if (v48)
  {
    v14 = v48;
    v83 = 0x8000000249BD12E0;
    v15 = 0x7265626D754E2046;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = v11 + 9;
    v19 = 0xE800000000000000;
    goto LABEL_44;
  }

  __break(1u);
LABEL_181:
  if (countAndFlagsBits == 0x6C65646F4DLL && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v59 = _DocumentManagerBundle();
    if (v59)
    {
      v14 = v59;
      v83 = 0x8000000249BD1080;
      v15 = 0x4D20656369766544;
      v19 = 0xEC0000006C65646FLL;
      v17 = 0x617A696C61636F4CLL;
      v18 = 0xEB00000000656C62;
      v16 = v11 + 14;
      goto LABEL_44;
    }

    goto LABEL_207;
  }

LABEL_187:
  if (countAndFlagsBits == 0x65646F4D736E654CLL && v6 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v60 = _DocumentManagerBundle();
    if (!v60)
    {
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    v14 = v60;
    v16 = v11 - 2;
    v19 = v10 - 522;
    v83 = 0x8000000249BD1040;
    v15 = 0x646F4D20736E654CLL;
LABEL_192:
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    goto LABEL_44;
  }

LABEL_194:
  if (countAndFlagsBits == 0x6F7250726F6C6F43 && v6 == 0xEC000000656C6966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v61 = _DocumentManagerBundle();
    if (!v61)
    {
      __break(1u);
      goto LABEL_215;
    }

    v14 = v61;
    v83 = 0x8000000249BD0FF0;
    v15 = 0x725020726F6C6F43;
    v19 = 0xED0000656C69666FLL;
    v16 = v11 + 10;
    goto LABEL_192;
  }

LABEL_209:
  if (countAndFlagsBits == 0x617053726F6C6F43 && v6 == v10 - 2316 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v62 = _DocumentManagerBundle();
    if (v62)
    {
      v14 = v62;
      v18 = 0xEB00000000656C62;
      v19 = 0xEB00000000656361;
      v83 = 0x8000000249BD0FA0;
      v15 = 0x705320726F6C6F43;
      v16 = v11 + 8;
      v17 = 0x617A696C61636F4CLL;
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_221;
  }

LABEL_215:
  if (countAndFlagsBits == 0x6E6F697461727544 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v63 = _DocumentManagerBundle();
    if (v63)
    {
      v14 = v63;
      v83 = 0x8000000249BD0F60;
      v16 = v11 + 2;
      v15 = 0x6E6F697461727544;
      goto LABEL_261;
    }

    __break(1u);
LABEL_227:
    if (countAndFlagsBits != 0x746974614C535047 || v6 != 0xEB00000000656475)
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v66 = countAndFlagsBits == 0x656475746974616CLL && v6 == 0xE800000000000000;
      v67 = v66;
      if ((v65 & 1) == 0 && !v67 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_241;
      }
    }

    v68 = _DocumentManagerBundle();
    if (!v68)
    {
      __break(1u);
      goto LABEL_250;
    }

    v14 = v68;
    v15 = 0x656475746974614CLL;
    v83 = 0x8000000249BD0ED0;
    v16 = v11 + 6;
LABEL_261:
    v19 = 0xE800000000000000;
    goto LABEL_192;
  }

LABEL_221:
  if ((countAndFlagsBits != 0x736365646F43 || v6 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_227;
  }

  v64 = _DocumentManagerBundle();
  if (v64)
  {
    v14 = v64;
    v83 = 0x8000000249BD0F10;
    v16 = v11 + 12;
    v15 = 0x736365646F43;
    v19 = 0xE600000000000000;
    goto LABEL_192;
  }

  __break(1u);
LABEL_241:
  if (countAndFlagsBits == 0x69676E6F4C535047 && v6 == v8 + 1575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0x64757469676E6F6CLL && v6 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v69 = _DocumentManagerBundle();
    if (v69)
    {
      v14 = v69;
      v15 = 0x64757469676E6F4CLL;
      v83 = 0x8000000249BD0E90;
      v16 = v11 + 7;
      v19 = 0xE900000000000065;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_256;
  }

LABEL_250:
  if (countAndFlagsBits == v7 + 32 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v70 = _DocumentManagerBundle();
    if (v70)
    {
      v14 = v70;
      v16 = v11 - 1;
      v83 = 0x8000000249BD0E50;
      v15 = v7;
      v19 = 0xE500000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_263;
  }

LABEL_256:
  if (countAndFlagsBits == v9 + 32 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v71 = _DocumentManagerBundle();
    if (v71)
    {
      v14 = v71;
      v83 = 0x8000000249BD0E10;
      v15 = 0x7265736F706D6F43;
      v16 = v11 + 2;
      goto LABEL_261;
    }

    __break(1u);
    goto LABEL_269;
  }

LABEL_263:
  if (countAndFlagsBits == 0x6867697279706F63 && v6 == v10 + 1285 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v72 = _DocumentManagerBundle();
    if (v72)
    {
      v14 = v72;
      v15 = 0x6867697279706F43;
      v83 = 0x8000000249BD0DD0;
      v19 = 0xE900000000000074;
      v16 = v11 + 3;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_275;
  }

LABEL_269:
  if (countAndFlagsBits == 1701869940 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v73 = _DocumentManagerBundle();
    if (v73)
    {
      v14 = v73;
      v83 = 0x8000000249BD0D90;
      v15 = 0x206C61636973754DLL;
      v19 = 0xED000065726E6547;
      v16 = v11 + 7;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_281;
  }

LABEL_275:
  if (countAndFlagsBits == 0x747369747261 && v6 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v74 = _DocumentManagerBundle();
    if (v74)
    {
      v14 = v74;
      v83 = 0x8000000249BD0D50;
      v15 = 0x73726F68747541;
      v16 = v11 + 1;
      v19 = 0xE700000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_287;
  }

LABEL_281:
  if (countAndFlagsBits == 0x6D614E6D75626C61 && v6 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v75 = _DocumentManagerBundle();
    if (v75)
    {
      v14 = v75;
      v83 = 0x8000000249BD0D10;
      v15 = 0x6D75626C41;
      v16 = v11 + 5;
      v19 = 0xE500000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_293;
  }

LABEL_287:
  if (countAndFlagsBits == 0x6168706C41736168 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v76 = _DocumentManagerBundle();
    if (v76)
    {
      v14 = v76;
      v83 = 0x8000000249BD0CD0;
      v15 = 0x6843206168706C41;
      v19 = 0xED00006C656E6E61;
      v16 = v11 + 6;
      goto LABEL_192;
    }

    __break(1u);
LABEL_299:
    v77 = one-time initialization token for UI;

    if (v77 != -1)
    {
      swift_once();
    }

    v78 = static DOCLog.UI;
    v79 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_249B9FA70;
    v81 = MEMORY[0x277D837D0];
    *(v80 + 56) = MEMORY[0x277D837D0];
    v82 = lazy protocol witness table accessor for type String and conformance String();
    *(v80 + 32) = countAndFlagsBits;
    *(v80 + 40) = v6;
    *(v80 + 96) = v81;
    *(v80 + 104) = v82;
    *(v80 + 64) = v82;
    *(v80 + 72) = v12;
    *(v80 + 80) = v4;

    os_log(_:dso:log:type:_:)("[DOCMetadataView] Encountered unexpected metadata key: %@ value: %@", 67, 2, &dword_2493AC000, v78, v79, v80);

    return countAndFlagsBits;
  }

LABEL_293:
  if ((countAndFlagsBits != 0x746964657243 || v6 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_299;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v14 = result;
    v16 = v11 - 1;
    v83 = 0x8000000249BD0C90;
    v15 = 0x746964657243;
    v19 = 0xE600000000000000;
    goto LABEL_192;
  }

  __break(1u);
  return result;
}