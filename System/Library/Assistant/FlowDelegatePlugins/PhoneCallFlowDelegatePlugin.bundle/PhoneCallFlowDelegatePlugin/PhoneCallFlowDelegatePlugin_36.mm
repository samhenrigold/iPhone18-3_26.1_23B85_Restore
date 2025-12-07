void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v43[4] = a4;
  v43[3] = a3;
  v43[2] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - v11;
  v46 = type metadata accessor for ContactQuery();
  v13 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContactGroupResolver();
  v50[3] = v15;
  v50[4] = &protocol witness table for ContactGroupResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a6, v15);
  v17 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(a6) = specialized Optional<A>.isNilOrEmpty.getter(v17, v18);

  if ((a6 & 1) == 0 || (v19 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    v13 = v10;
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_35:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v25, 2u);
    }

    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    (*(v27 + 8))(v49, v26, v27);
    outlined init with copy of SignalProviding(v49, v48);
    outlined init with copy of SignalProviding(v50, v47);
    v28 = swift_allocObject();
    outlined init with take of SPHConversation(v48, v28 + 16);
    outlined init with take of SPHConversation(v47, v28 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v49);
    v29 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_424FD0;
    *(v30 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v30 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v30 + 32) = a1;
    v49[0] = v30;

    v29(v48, v49);

    (*(v13 + 8))(v12, v9);
    goto LABEL_32;
  }

  v20 = v19;
  v43[1] = a5;
  v49[0] = _swiftEmptyArrayStorage;
  v9 = specialized Array.count.getter(v19);
  v12 = 0;
  a5 = (v20 & 0xC000000000000001);
  a1 = v20 & 0xFFFFFFFFFFFFFF8;
  v44 = _swiftEmptyArrayStorage;
  while (v9 != v12)
  {
    if (a5)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }
    }

    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v12;
    if (*&v48[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v49[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v49[0];
      v12 = v21;
    }
  }

  v31 = v44;
  v32 = specialized Array.count.getter(v44);
  if (!v32)
  {
LABEL_27:

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group", v42, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo08INSearchb7HistoryM0C_Tt4g5();

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  v33 = v32;
  v49[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v49[0];
    v36 = v45;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      UsoEntity_common_Agent.toContactQuery()();

      v49[0] = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        v35 = v49[0];
      }

      ++v34;
      *(v35 + 16) = v38 + 1;
      (*(v13 + 32))(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38, v36, v46);
    }

    while (v33 != v34);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SearchCallHistoryModel.init(responseViewId:appId:callRecords:recentsText:openPhoneText:shouldShowBottomView:shouldReactOpenContact:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a6@<W5>, char a8@<W7>, void *a9@<X8>, uint64_t a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  HIDWORD(v57) = a12;
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for SearchCallHistoryModel(0);
  OUTLINED_FUNCTION_17_45(v16, v17, v18, v19, v20, v21, v22, v23, v57, a13, a3);
  Loggable.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  v24 = Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_17_45(v24, v25, v26, v27, v28, v29, v30, v31, v58, v62, a6);
  v32 = Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_17_45(v32, v33, v34, v35, v36, v37, v38, v39, v59, v63, a8);
  v40 = Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_17_45(v40, v41, v42, v43, v44, v45, v46, v47, v60, v64, a11);
  v48 = Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_17_45(v48, v49, v50, v51, v52, v53, v54, v55, v61, v65, SBYTE4(v61));
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t type metadata accessor for SearchCallHistoryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryModel.appId.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchCallHistoryModel.appId : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;

  return SearchCallHistoryModel.appId.setter(v1);
}

uint64_t SearchCallHistoryModel.appId.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
}

void (*SearchCallHistoryModel.appId.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.callRecords.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t SearchCallHistoryModel.callRecords.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.callRecords.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.recentsText.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;

  return SearchCallHistoryModel.recentsText.setter(v1);
}

uint64_t SearchCallHistoryModel.recentsText.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
}

void (*SearchCallHistoryModel.recentsText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneText.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;

  return SearchCallHistoryModel.openPhoneText.setter(v1);
}

uint64_t SearchCallHistoryModel.openPhoneText.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
}

void (*SearchCallHistoryModel.openPhoneText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.setter(char a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.shouldShowBottomView.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.setter(char a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.shouldReactOpenContact.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneAction.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SearchCallHistoryModel.openPhoneAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryModel.openPhoneAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_69(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5473746E65636572 && a2 == 0xEB00000000747865;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000000004612B0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000000004612D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SearchCallHistoryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 0x6F6365526C6C6163;
      break;
    case 3:
      result = 0x5473746E65636572;
      break;
    case 4:
    case 7:
      result = 0x6E6F68506E65706FLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38[1] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SearchCallHistoryModel(0);
    v12 = *(v11 + 20);
    v38[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v13);
    OUTLINED_FUNCTION_2_6(v3 + v12, v38);
    v31 = v11;
    v14 = *(v11 + 24);
    v37 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
    OUTLINED_FUNCTION_16_3();
    v16 = lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(v15);
    OUTLINED_FUNCTION_20_42(v3 + v14, &v37, v17, v18, v16);
    v19 = v31;
    v20 = v31[7];
    v36 = 3;
    OUTLINED_FUNCTION_2_6(v3 + v20, &v36);
    v21 = v19[8];
    v35 = 4;
    OUTLINED_FUNCTION_2_6(v3 + v21, &v35);
    v22 = v19[9];
    v34 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v23);
    OUTLINED_FUNCTION_2_6(v3 + v22, &v34);
    v24 = v19[10];
    v33 = 6;
    OUTLINED_FUNCTION_2_6(v3 + v24, &v33);
    v25 = v19[11];
    v32 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    v26 = lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_20_42(v3 + v25, &v32, v27, v28, v26);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
    lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SearchCallHistoryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_7();
  v69 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v72 = v64 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_7();
  v82 = v6;
  v83 = v7;
  __chkstk_darwin(v6);
  v73 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = v64 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  OUTLINED_FUNCTION_7();
  v78 = v12;
  v79 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = v64 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v84 = v16;
  v85 = v17;
  __chkstk_darwin(v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v64 - v21;
  __chkstk_darwin(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMR);
  OUTLINED_FUNCTION_7();
  v76 = v25;
  v77 = v24;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v87 = type metadata accessor for SearchCallHistoryModel(0);
  __chkstk_darwin(v87);
  v86 = (v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v81 = a1;
  v31 = __swift_project_boxed_opaque_existential_1(a1, v30);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  v75 = v28;
  v32 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v32)
  {
    v80 = v22;
    v68 = v19;
    v90[5] = 0;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v86;
    *v86 = v34;
    v35[1] = v36;
    v67 = v36;
    v90[4] = 1;
    OUTLINED_FUNCTION_17_15();
    v38 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v37);
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v38;
    v39 = v85 + 32;
    v40 = OUTLINED_FUNCTION_14_55(v87[5]);
    v65 = v41;
    v41(v40);
    v90[3] = 2;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(v42);
    v43 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v82;
    v64[1] = v39;
    (*(v78 + 32))(v35 + v87[6], v15, v43);
    v90[2] = 3;
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = OUTLINED_FUNCTION_14_55(v87[7]);
    v46 = v65;
    v65(v45);
    v90[1] = 4;
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v35;
    v48 = OUTLINED_FUNCTION_14_55(v87[8]);
    v46(v48);
    v90[0] = 5;
    OUTLINED_FUNCTION_17_15();
    v50 = lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v49);
    v51 = v74;
    OUTLINED_FUNCTION_16_52(v50, v90);
    v52 = v87;
    v53 = *(v83 + 32);
    v54 = v53(v47 + v87[9], v51, v44);
    v89 = 6;
    v55 = v73;
    OUTLINED_FUNCTION_16_52(v54, &v89);
    v53(v47 + v52[10], v55, v44);
    v88 = 7;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    v56 = v71;
    v57 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = OUTLINED_FUNCTION_9_68();
    v63(v62);
    (*(v69 + 32))(v47 + v52[11], v57, v56);
    outlined init with copy of SearchCallHistoryModel(v47, v70);
    __swift_destroy_boxed_opaque_existential_1(v81);
    return outlined destroy of SearchCallHistoryModel(v47);
  }

  OUTLINED_FUNCTION_3_99();
  v33 = v82;
  __swift_destroy_boxed_opaque_existential_1(v81);

  v59 = v84;
  v60 = v86;
  v61 = v87;
  if (v30)
  {
    result = (*(v85 + 8))(v86 + v87[7], v84);
    if (!v28)
    {
LABEL_6:
      if (!v31)
      {
        goto LABEL_7;
      }

LABEL_11:
      result = (*(v83 + 8))(v60 + v61[9], v33);
      if (!v19)
      {
        return result;
      }

      return (*(v83 + 8))(v60 + v61[10], v33);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  result = (*(v85 + 8))(v60 + v61[8], v59);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v19)
  {
    return (*(v83 + 8))(v60 + v61[10], v33);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A]);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined destroy of SearchCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for SearchCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for Loggable<[SingleCallRecordModel]>(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>, &type metadata for Bool);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        type metadata accessor for CodableAceObject<SABaseCommand>(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for Loggable<[SingleCallRecordModel]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__allocating_init(sharedGlobals:)()
{
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_40_0();
  return SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v0);
}

uint64_t SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(uint64_t a1)
{
  v3 = (v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix);
  *v3 = type metadata accessor for SearchCallHistoryRCHFlowDelegate(0);
  v3[1] = &outlined read-only object #0 of SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:);
  v3[2] = 0;
  v3[3] = 0;
  outlined init with copy of SignalProviding(a1, v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
  BaseRCHFlowDelegate.init()();
  v4 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t type metadata accessor for SearchCallHistoryRCHFlowDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryRCHFlowDelegate;
  if (!type metadata singleton initialization cache for SearchCallHistoryRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeDialogTemplating()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v1 - 8);
  v62 = v58 - v2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  __chkstk_darwin(v3);
  v59 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v69[0] = v11;
    *v10 = 136315138;
    v12 = OUTLINED_FUNCTION_5_5(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix);
    v72 = 0;
    v73 = v13;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v14, v15, v16);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v69);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v8, v9, "%s Making SearchCallHistoryTemplatingService", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  outlined init with copy of SignalProviding(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v72);
  v18 = type metadata accessor for PhoneCallDisplayTextCATs(0);
  OUTLINED_FUNCTION_9_69(v18);
  v19 = OUTLINED_FUNCTION_6_79();
  v20 = type metadata accessor for PhoneCallCommonCATs(0);
  OUTLINED_FUNCTION_9_69(v20);
  v21 = OUTLINED_FUNCTION_6_79();
  v22 = type metadata accessor for SearchCallHistoryCATs(0);
  OUTLINED_FUNCTION_9_69(v22);
  v23 = OUTLINED_FUNCTION_6_79();
  v24 = type metadata accessor for StartCallCATs(0);
  OUTLINED_FUNCTION_9_69(v24);
  v25 = OUTLINED_FUNCTION_6_79();
  v58[4] = v25;
  v26 = type metadata accessor for AppInfoBuilder();
  v27 = swift_allocObject();
  v28 = type metadata accessor for SearchCallHistoryTemplatingService(0);
  v29 = OUTLINED_FUNCTION_41_1(v28);
  v58[5] = v23;
  *(v29 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily) = v23;
  *(v29 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily) = v25;
  v58[3] = "com.apple.camera";
  outlined init with copy of SignalProviding(&v72, v69);

  static CATOption.defaultMode.getter();
  v30 = OUTLINED_FUNCTION_6_79();
  v68[3] = v26;
  v68[4] = &protocol witness table for AppInfoBuilder;
  v68[0] = v27;
  v67[3] = &type metadata for LabelTemplatesProvider;
  v67[4] = &protocol witness table for LabelTemplatesProvider;
  v31 = swift_allocObject();
  v67[0] = v31;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  v32 = (v29 + *(*v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v32 = 0x3D65737561705C1BLL;
  v32[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_26_5();
  v35 = v29 + *(v34 + v33 + 56);
  *v35 = v36;
  *(v35 + 1) = v36;
  *(v35 + 4) = 0;
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v69, v29 + *(v38 + v37 + 72));
  v39 = v70;
  v40 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v40 + 8))(&v65, v39, v40);
  OUTLINED_FUNCTION_26_5();
  v42 = *(v41 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v65, v29 + v42);
  OUTLINED_FUNCTION_26_5();
  v44 = *(v43 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v58[1] = v21;
  v58[2] = v19;
  *(v29 + v44) = v19;
  OUTLINED_FUNCTION_26_5();
  *(v29 + *(v46 + v45 + 32)) = v21;
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v68, v29 + *(v48 + v47 + 48));
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v67, v29 + *(v49 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_26_5();
  *(v29 + *(v50 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v30;
  outlined init with copy of SignalProviding(v29 + v42, &v65);
  __swift_project_boxed_opaque_existential_1(&v65, v66);

  v51 = v59;
  dispatch thunk of DeviceState.siriLocale.getter();
  v64[0] = Locale.identifier.getter();
  v64[1] = v52;
  v63[0] = 45;
  v63[1] = 0xE100000000000000;
  v64[5] = 95;
  v64[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v61 + 8))(v51, v60);
  type metadata accessor for INIntentSlotValueType(0);
  _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v53 = v70;
  v54 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v54 + 24))(v64, v53, v54);
  outlined init with copy of SignalProviding(v29 + v42, v63);
  v55 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v55);
  v56 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(&v72);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return v56;
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeAceViewProvider()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    v19 = 0;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_5_5(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix);
    v20 = v8;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v7, v9, v10, v11);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v18);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "%s Making SearchCallHistoryAceViewProvider", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v13 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v19);
  type metadata accessor for AppInfoBuilder();
  v14 = swift_allocObject();
  v15 = type metadata accessor for SearchCallHistoryAceViewProvider(0);
  v16 = OUTLINED_FUNCTION_41_1(v15);
  return specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(v13, &v19, v14, v16);
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeNLContextProvider()()
{
  v1 = (v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
  v2 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24);
  v3 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), v2);
  (*(v3 + 8))(v9, v2, v3);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 184))(v8, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v6);
  return specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)();
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  if (PhoneCallSlotNames.init(rawValue:)(v14).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_recipient && (v15 = [a5 disambiguationItems], v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = specialized _arrayConditionalCast<A, B>(_:)(v16), , v17))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v42 = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_5_5(v8 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix);
      v45 = 0;
      v46 = v24;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v23, v25, v26, v27);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v46, &v42);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_0, v19, v20, "%s Building disambiguation list for recipient slot.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_26_0(v21);
    }

    v29 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
    v43 = type metadata accessor for SearchCallHistoryTemplatingService(0);
    v44 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v42 = v29;
    v30 = App.appIdentifier.getter();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = (v8 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
    v35 = v34[3];
    v36 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v36 + 184))(v50, v35, v36);
    v37 = v34[3];
    v38 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v37);
    (*(v38 + 8))(v51, v37, v38);
    v45 = v17;
    v46 = v17;
    outlined init with take of SPHConversation(&v42, &v52);
    v47 = 1;
    v48 = v32;
    v49 = v33;

    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a6, a7);
    return outlined destroy of PhoneContactDisambiguationItemFactory(&v45);
  }

  else
  {
    v40 = [a5 disambiguationItems];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = type metadata accessor for SiriKitDisambiguationList();
    OUTLINED_FUNCTION_41_1(v41);
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeErrorDialogBehavior(app:intent:intentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  v3 = type metadata accessor for ErrorDialogBehavior();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24);
  v6 = *(v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), v5);
  v7 = (*(v6 + 72))(v5, v6);
  (*(*v7 + 192))(v10, a1);

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMR);
  v8 = method lookup function for BaseRCHFlowDelegate();
  return v8(a1, a2);
}

uint64_t SearchCallHistoryRCHFlowDelegate.applyParameterValue(value:intent:parameterName:applicationStrategy:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t (*a7)(void *, void), uint64_t a8)
{

  v16._countAndFlagsBits = a3;
  v16._object = a4;
  value = PhoneCallSlotNames.init(rawValue:)(v16).value;
  if (value == 15)
  {
    outlined init with copy of Any(a1, v23);
    type metadata accessor for INCallCapabilityOptions(0);
    if (OUTLINED_FUNCTION_7_70(v19))
    {
      [a2 setCallCapabilities:v22];
    }

    return a7(a2, 0);
  }

  if (value == 9)
  {
    outlined init with copy of Any(a1, v23);
    type metadata accessor for INCallRecordTypeOptions(0);
    if (OUTLINED_FUNCTION_7_70(v18))
    {
      [a2 setCallTypes:v22];
    }

    return a7(a2, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMR);
  v21 = method lookup function for BaseRCHFlowDelegate();

  return v21(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
}

BOOL SearchCallHistoryRCHFlowDelegate.isReadRequest(intent:intentResponse:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  if (DeviceState.isVox.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isEyesFree.getter())
  {
    return 1;
  }

  v6 = *(v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), *(v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24));
  v7 = OUTLINED_FUNCTION_40_0();
  v9 = v8(v7, v6);
  v10 = (*(*v9 + 128))(v9);

  specialized BidirectionalCollection.last.getter(v10, v18);

  if (v18[4])
  {
    outlined init with copy of PhoneCallNLIntent?(&v19, v20);
    outlined destroy of TransformationResult(v18);
    if (v21)
    {
      v11 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v12 = OUTLINED_FUNCTION_40_0();
      v14 = v13(v12, v11);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v14 != 6;
    }

    v15 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
    v16 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
    v17 = v20;
  }

  else
  {
    v15 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd;
    v16 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR;
    v17 = v18;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, v15, v16);
  return 0;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals));
}

uint64_t SearchCallHistoryRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals));

  return v0;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__deallocating_deinit()
{
  SearchCallHistoryRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[3] = type metadata accessor for AppInfoBuilder();
  v10[4] = &protocol witness table for AppInfoBuilder;
  v10[0] = a3;
  *(a4 + direct field offset for SearchCallHistoryAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, a4 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals);
  outlined init with copy of SignalProviding(v10, a4 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);
  v8 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryRCHFlowDelegate(uint64_t a1)
{
  result = _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for SearchCallHistoryRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
  *(a1 + 16) = result;
  return result;
}

uint64_t _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SearchCallHistorySharedGlobals.init(appInfoBuilder:searchCallCatPatterns:responseGenerator:phoneCommonCats:phoneCallCommonCatPatterns:callHistoryPromptDialogProvider:searchCallHistoryCATs:searchCallHistoryCATsSimple:phoneCallDisplayTextCATsSimple:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  outlined init with take of SPHConversation(a1, a9);
  outlined init with take of SPHConversation(a2, (a9 + 5));
  outlined init with take of SPHConversation(a3, (a9 + 10));
  a9[15] = a4;
  result = outlined init with take of SPHConversation(a5, (a9 + 16));
  a9[21] = a6;
  a9[22] = a7;
  a9[23] = a8;
  a9[24] = a10;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistorySharedGlobals(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t storeEnumTagSinglePayload for SearchCallHistorySharedGlobals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized PhoneCallBaseCatTemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();

  OUTLINED_FUNCTION_41_0();

  OUTLINED_FUNCTION_41_0();

  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_41_0();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_41_0();

  return v0;
}

void SearchCallHistoryTemplatingService.__allocating_init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v27 = v6;
  v28 = v7;
  v25 = v8;
  v26 = v9;
  v11 = v10;
  v12 = swift_allocObject();
  v14 = v5[3];
  v13 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v14);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v17 = OUTLINED_FUNCTION_24_0(v16);
  v18(v17);
  v19 = v3[3];
  v20 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v19);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v23 = OUTLINED_FUNCTION_8_69(v22);
  v24(v23);
  specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(v11, v25, v26, v27, v28, v1, v0, v12, v14, v19, v13, v20);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)()
{
  OUTLINED_FUNCTION_66();
  v26 = v3;
  v27 = v0;
  v5 = v4;
  v7 = v6;
  v24 = v8;
  v25 = v9;
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_24_0(v13);
  v15(v14);
  v16 = v5[3];
  v17 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v16);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_8_69(v19);
  v21(v20);
  v22 = OUTLINED_FUNCTION_63();
  specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(v22, v23, v24, v25, v26, v2, v1, v27, v11, v16, v10, v17);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

__n128 SearchCallHistoryTemplatingService.slotTemplating(for:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 9:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104();
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of CallTypesSlotTemplating(v14);
      break;
    case 11:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      v8 = *(v2 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily);
      v15 = *(v2 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
      v16 = v8;
      v3 = v17;
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of RecipientSlotTemplating(v14);
      break;
    case 12:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104();
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of UnseenSlotTemplating(v14);
      break;
    default:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v6 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104();
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of DateCreatedSlotTemplating(v14);
      break;
  }

  v10 = *(v3 + 1);
  *a2 = *v3;
  *(a2 + 16) = v10;
  result = *(v3 + 2);
  v12 = *(v3 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

void SearchCallHistoryTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v54 = v19 - v18;
  v20 = App.isFirstParty()();
  v52 = v13;
  if (v20)
  {
    v21 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(*&v8, *&v6);
  }

  else
  {
    v22 = [*&v8 recipient];
    if (v22)
    {
      v23 = v22;
      v48 = v8;
      v49 = v10;
      v53 = v3;
      v47 = type metadata accessor for PhonePerson(0);
      v24 = v23;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      v25 = v54;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v56);
      v26 = static PhonePerson.make(phonePerson:options:locale:)(v23, 0, v25);

      (*(v16 + 8))(v25, v14);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v21 = swift_allocObject();
        *(v21 + 1) = xmmword_426260;
        v21[4] = v26;
      }

      else
      {

        v21 = _swiftEmptyArrayStorage;
      }

      v3 = v53;
      v8 = v48;
      v10 = v49;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }
  }

  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v27 = PhonePersonList.__allocating_init(list:)(v21);
  v28 = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(*&v8, v27);
  v29 = specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  v30 = *(v1 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
  if (v29)
  {
    if (v6 == 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
      v6 = INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();
    }

    v32 = *(*v30 + class metadata base offset for SearchCallHistoryCATs + 288);

    v32(*&v31, 0, *&v6, 0, v28, v55, v3);
  }

  else
  {
    v53 = v3;
    v50 = v16;
    v51 = v14;
    if (v6 == 0.0)
    {
      v48 = 0.0;
      v49 = 0.0;
    }

    else
    {
      v49 = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
      v48 = INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();
    }

    type metadata accessor for SirikitDeviceState();
    v33 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    outlined init with copy of SignalProviding(v33, v56);
    v47 = SirikitDeviceState.__allocating_init(from:)();

    v46 = App.isFirstParty()();
    v34 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v35 = v10;
    v36 = v34[3];
    v37 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v36);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v38 = v54;
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v37 + 16))(COERCE_DOUBLE(*&v35), v38, v36, v37);
    v40 = v39;
    (*(v50 + 8))(v38, v51);
    if (v40)
    {
      v41 = v52;
      SpeakableString.init(print:speak:)();
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v52;
    }

    v43 = v53;
    v44 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v41, v42, 1, v44);
    (*(*v30 + class metadata base offset for SearchCallHistoryCATs + 256))(COERCE_DOUBLE(*&v49), 0, COERCE_DOUBLE(*&v48), 0, v47, v28, v46, v41, v55, v43);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v41, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = v37 - v20;
  v22 = [v6 code];
  v23 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
  if (v22 == &dword_4 + 1)
  {
    v39 = v8;
    v40 = v4;
    v41 = v2;
    OUTLINED_FUNCTION_35_0();
    v25 = (v0 + *(v24 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v38 = v10;
    v27 = v25[3];
    v26 = v25[4];
    v37[1] = __swift_project_boxed_opaque_existential_1(v25, v27);
    OUTLINED_FUNCTION_35_0();
    v29 = v11;
    __swift_project_boxed_opaque_existential_1((v0 + *(v28 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)), *(v0 + *(v28 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40) + 24));
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v26 + 16))(v38, v17, v27, v26);
    v31 = v30;
    (*(v13 + 8))(v17, v29);
    if (v31)
    {
      SpeakableString.init(print:speak:)();
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = v39;
    v34 = v40;
    v35 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v21, v32, 1, v35);
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v36 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v33);
    (*(*v23 + class metadata base offset for SearchCallHistoryCATs + 224))(v21, v36, v34, v41);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    (*(*v23 + class metadata base offset for SearchCallHistoryCATs + 192))(v4, v2);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryTemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12._countAndFlagsBits = a2;
  v12._object = a3;
  v13.value = PhoneCallSlotNames.init(rawValue:)(v12).value;
  v14 = SearchCallHistoryTemplatingService.slotTemplating(for:)(v13.value, &v16);
  v16(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, void *a3)
{

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  v6.value = PhoneCallSlotNames.init(rawValue:)(v5).value;
  SearchCallHistoryTemplatingService.slotTemplating(for:)(v6.value, &v10);
  v7 = OUTLINED_FUNCTION_63();
  v8(v7);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_6(a1, a2, a3);
  v3._countAndFlagsBits = OUTLINED_FUNCTION_63();
  v4.value = PhoneCallSlotNames.init(rawValue:)(v3).value;
  SearchCallHistoryTemplatingService.slotTemplating(for:)(v4.value, v8);
  v5 = OUTLINED_FUNCTION_10_7();
  v6(v5);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_6(a1, a2, a3);
  v12._countAndFlagsBits = OUTLINED_FUNCTION_63();
  v13.value = PhoneCallSlotNames.init(rawValue:)(v12).value;
  v14 = SearchCallHistoryTemplatingService.slotTemplating(for:)(v13.value, v18);
  (*(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(v9, a8, v10, v14);
  v15 = OUTLINED_FUNCTION_10_7();
  v16(v15);
}

uint64_t SearchCallHistoryTemplatingService.__ivar_destroyer()
{
}

uint64_t SearchCallHistoryTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();

  return v0;
}

uint64_t SearchCallHistoryTemplatingService.__deallocating_deinit()
{
  SearchCallHistoryTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a6;
  v42 = a7;
  v47 = a2;
  v48 = a3;
  v40 = a1;
  v46 = a11;
  v44 = a5;
  v45 = a12;
  v15 = type metadata accessor for CATOption();
  __chkstk_darwin(v15 - 8);
  v16 = *(a10 - 8);
  __chkstk_darwin(v17);
  v43 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v37 = a9;
  v22 = *(a9 - 8);
  __chkstk_darwin(v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v37 - v28;
  (*(v22 + 32))(&v37 - v28, v41, v27);
  (*(v16 + 32))(v21, v42, a10);
  v38 = a4;
  v39 = a8;
  *(a8 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily) = a4;
  *(a8 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily) = v44;
  v42 = "com.apple.camera";
  outlined init with copy of SignalProviding(a1, v49);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  v31 = v37;
  (*(v22 + 16))(v25, v29, v37);
  v32 = v43;
  (*(v16 + 16))(v43, v21, a10);
  specialized PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(0xD000000000000010, v42 | 0x8000000000000000, v49, v47, v48, v25, v32, v30, v39, v31, a10, v46, v45, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v34 = v33;

  __swift_destroy_boxed_opaque_existential_1(v40);
  (*(v16 + 8))(v21, a10);
  (*(v22 + 8))(v29, v31);
  return v34;
}

uint64_t type metadata accessor for SearchCallHistoryTemplatingService(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryTemplatingService;
  if (!type metadata singleton initialization cache for SearchCallHistoryTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a1;
  v7 = type metadata accessor for AppMatcherResult();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for AppMatcher();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  AppMatcher.init()();
  AppMatcher.resolve(intent:bundleIds:)();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  AppMatcherResult.resolution.getter();
  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v2, v5);

  v8 = v0[1];

  return v8();
}

Swift::String __swiftcall SeasAppMatcherRule.getName()()
{
  v0 = 0x8000000000447420;
  v1 = 0xD000000000000012;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasAppMatcherRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 80) + **(**v6 + 80));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t SeasAppUsageRule.__allocating_init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(a1, a2);
  return v4;
}

void *SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(uint64_t a1, uint64_t a2)
{
  v2[4] = type metadata accessor for SeasAppUsageRule();
  v2[5] = &outlined read-only object #0 of SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:);
  v2[6] = 0;
  v2[7] = 0;
  v2[2] = a2;
  v2[3] = a1;
  return v2;
}

uint64_t SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  v312 = v0;
  if (((*(**(*(v0 + 6) + 24) + 96))(2, *(v0 + 3)) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v10 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(*(v0 + 4), *(v0 + 5));
  if (v6)
  {
    v7 = v4;
    v8 = v5;

    if ((v8 & 1) != 0 && !v7)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);

      v10 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_13;
      }

      v11 = OUTLINED_FUNCTION_7_71();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_9_70();
      OUTLINED_FUNCTION_0_105(4.8149e-34);
      OUTLINED_FUNCTION_3_100(v12, v13, v14, v15, v16, v17, v18, v19, v260, v265, v272, v279, v286, v293, v300, v305, v309, v310, v311);
      OUTLINED_FUNCTION_63_1();
      *(v11 + 4) = v2;
LABEL_12:
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_26_0(v1);
      OUTLINED_FUNCTION_35();
LABEL_13:

      v35 = *(v0 + 2);
      v36 = &enum case for AppMatchResolution.noMatchFound(_:);
      goto LABEL_72;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v38 = *(v0 + 5);
  v37 = *(v0 + 6);
  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.siriPhone);

  v41 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();

  if (OUTLINED_FUNCTION_86_0())
  {
    v42 = *(v0 + 5);
    swift_slowAlloc();
    OUTLINED_FUNCTION_6_81();
    OUTLINED_FUNCTION_9_70();
    OUTLINED_FUNCTION_0_105(4.8151e-34);
    OUTLINED_FUNCTION_3_100(v43, v44, v45, v46, v47, v48, v49, v50, v260, v265, v272, v279, v286, v293, v300, v305, v309, v310, v311);
    OUTLINED_FUNCTION_125();
    *(v37 + 4) = v3;
    *(v37 + 12) = 2080;
    v51 = Array.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v309);
    OUTLINED_FUNCTION_63_1();
    *(v37 + 14) = v42;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v38);
    OUTLINED_FUNCTION_35();
  }

  v58 = *(v0 + 6);
  v2 = (*(**(v58 + 16) + 80))(*(v0 + 5), 7);

  v59 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();

  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_6_81();
    OUTLINED_FUNCTION_9_70();
    OUTLINED_FUNCTION_0_105(4.8152e-34);
    OUTLINED_FUNCTION_3_100(v60, v61, v62, v63, v64, v65, v66, v67, v260, v265, v272, v279, v286, v293, v300, v305, v309, v310, v311);
    OUTLINED_FUNCTION_125();
    *(v58 + 4) = &unk_426000;
    *(v58 + 12) = 2048;
    *(v58 + 14) = 7;
    *(v58 + 22) = 2080;
    type metadata accessor for NSNumber();
    v68 = Dictionary.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v309);
    OUTLINED_FUNCTION_125();
    *(v58 + 24) = &unk_426000;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v70, v71, v72, v73, v74, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v38);
    OUTLINED_FUNCTION_35();
  }

  v1 = (v2 + 64);
  v75 = -1;
  v76 = -1 << *(v2 + 32);
  if (-v76 < 64)
  {
    v75 = ~(-1 << -v76);
  }

  v77 = v75 & *(v2 + 64);
  v305 = v0;
  if (!v77)
  {
    v82 = 0;
    v81 = (63 - v76) >> 6;
    while (v81 - 1 != v77)
    {
      v78 = v77 + 1;
      v83 = *(v2 + 8 * v77 + 72);
      v82 -= 64;
      ++v77;
      if (v83)
      {
        v286 = v40;
        v80 = (v83 - 1) & v83;
        v79 = __clz(__rbit64(v83)) - v82;
        goto LABEL_28;
      }
    }

    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_13;
    }

LABEL_11:
    v21 = OUTLINED_FUNCTION_7_71();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_9_70();
    OUTLINED_FUNCTION_0_105(4.8149e-34);
    OUTLINED_FUNCTION_3_100(v22, v23, v24, v25, v26, v27, v28, v29, v260, v265, v272, v279, v286, v293, v300, v305, v309, v310, v311);
    OUTLINED_FUNCTION_63_1();
    *(v21 + 4) = v2;
    goto LABEL_12;
  }

  v286 = v40;
  v78 = 0;
  v79 = __clz(__rbit64(v77));
  v80 = (v77 - 1) & v77;
  v81 = (63 - v76) >> 6;
LABEL_28:
  v84 = *(v2 + 48) + 16 * v79;
  v85 = *(v84 + 8);
  v293 = *v84;
  v86 = *(*(v2 + 56) + 8 * v79);

  v300 = v85;

  v0 = v86;
  while (1)
  {
    v87 = v78;
    if (!v80)
    {
      break;
    }

LABEL_33:
    v88 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    v89 = v88 | (v78 << 6);
    v90 = *(v2 + 48) + 16 * v89;
    v85 = *v90;
    v91 = *(v90 + 8);
    v92 = *(*(v2 + 56) + 8 * v89);

    v93 = v92;
    [v0 doubleValue];
    v95 = v94;
    [v93 doubleValue];
    if (v95 < v96)
    {

      v0 = v93;
      v293 = v85;
      v300 = v91;
    }

    else
    {
    }
  }

  while (1)
  {
    v78 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v78 >= v81)
    {
      break;
    }

    v80 = v1[v78];
    ++v87;
    if (v80)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_19_37(v97, v98, v99, v100, v101, v102, v103, v104, v260, v265, v272, v279, v286, v293, v300);
  swift_bridgeObjectRetain_n();
  v105 = v0;
  v106 = specialized _NativeDictionary.filter(_:)(v2, v293, v85, v105);

  v2 = (v106 + 64);
  v107 = -1 << v106[32];
  if (-v107 < 64)
  {
    v108 = ~(-1 << -v107);
  }

  else
  {
    v108 = -1;
  }

  v109 = v108 & *(v106 + 8);
  if (v109)
  {
    v272 = v105;
    v110 = 0;
    v111 = __clz(__rbit64(v109));
    v112 = (v109 - 1) & v109;
    v113 = (63 - v107) >> 6;
    v0 = v305;
LABEL_45:
    v116 = (*(v106 + 6) + 16 * v111);
    v265 = *v116;
    v117 = *(*(v106 + 7) + 8 * v111);
    v279 = v116[1];

    v118 = v117;

LABEL_46:
    v119 = v110;
    if (!v112)
    {
      goto LABEL_48;
    }

    do
    {
      v110 = v119;
LABEL_51:
      v120 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      v121 = v120 | (v110 << 6);
      v122 = *(v106 + 6) + 16 * v121;
      v117 = *v122;
      v123 = *(v122 + 8);
      v124 = *(*(v106 + 7) + 8 * v121);

      v1 = v124;
      [v118 doubleValue];
      v126 = v125;
      [v1 doubleValue];
      if (v126 < v127)
      {

        v118 = v1;
        v279 = v123;
        v265 = v117;
        v0 = v305;
        goto LABEL_46;
      }

      v119 = v110;
      v0 = v305;
    }

    while (v112);
LABEL_48:
    while (1)
    {
      v110 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_82;
      }

      if (v110 >= v113)
      {
        v128 = *(v0 + 6);

        OUTLINED_FUNCTION_19_37(v129, v130, v131, v132, v133, v134, v135, v136, v260, v265, v272, v279, v286, v293, v300);

        v137 = v274;
        v138 = v281;

        v139 = v118;
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v140, v141))
        {
          HIDWORD(v261) = v141;
          v142 = *(v0 + 6);
          v143 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v275 = swift_slowAlloc();
          v309 = v275;
          v310 = 0;
          *v143 = 136316162;
          OUTLINED_FUNCTION_1_109();
          OUTLINED_FUNCTION_3_100(v144, v145, v146, v147, v148, v149, v150, v151, v261, v267, v275, v281, v287, v294, v301, v305, v309, v310, v311);
          v305 = v139;
          OUTLINED_FUNCTION_63_1();
          *(v143 + 4) = v139;
          *(v143 + 12) = 2080;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v117, &v309);
          OUTLINED_FUNCTION_33_2();
          *(v143 + 14) = v142;
          *(v143 + 22) = 2112;
          *(v143 + 24) = v137;
          *v128 = v137;
          *(v143 + 32) = 2080;
          v152 = v137;

          v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v138, &v309);

          *(v143 + 34) = v153;
          *(v143 + 42) = 2112;
          *(v143 + 44) = v139;
          v128[1] = v139;
          v154 = v139;
          _os_log_impl(&dword_0, v140, BYTE4(v261), "%s find maxUsage %s:%@ and secondMaxUsage: %s:%@", v143, 0x34u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v128);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v274);
          OUTLINED_FUNCTION_26_0(v143);
        }

        v85 = &unk_548000;
        [v139 doubleValue];
        if (v155 != 0.0)
        {
          [v137 doubleValue];
          v157 = v156;
          [v139 doubleValue];
          if (v157 / v158 < 3.0)
          {
            [v137 doubleValue];
            v160 = v159;
            [v139 doubleValue];
            v162 = v301;
            if (v160 / v161 >= 2.0)
            {

              v237 = v137;
              v238 = Logger.logObject.getter();
              v239 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v238, v239))
              {
                v240 = *(v0 + 6);
                swift_slowAlloc();
                v241 = OUTLINED_FUNCTION_6_81();
                v309 = v241;
                v310 = 0;
                OUTLINED_FUNCTION_0_105(4.8153e-34);
                OUTLINED_FUNCTION_3_100(v242, v243, v244, v245, v246, v247, v248, v249, v261, v267, v274, v281, v287, v294, v301, v305, v309, v310, v311);
                OUTLINED_FUNCTION_63_1();
                OUTLINED_FUNCTION_17_46();
                *(v140 + 14) = 0x4008000000000000;
                *(v140 + 22) = v250;
                *(v140 + 24) = 0x4000000000000000;
                *(v140 + 32) = 2080;

                OUTLINED_FUNCTION_22_32(v251, v252, v253, v254, v255, v256, v257, v258, v264, v271, v278, v285, v292, v299, v304, v308);
                OUTLINED_FUNCTION_33_2();
                *(v140 + 34) = v240;
                _os_log_impl(&dword_0, v238, v239, "%s maxUsage/secondMaxUsage <= %f and >= %f, return needsConfirmation %s", v140, 0x2Au);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_26_0(v241);
                OUTLINED_FUNCTION_35();
              }

              else
              {

                v139 = v294;
              }

              v35 = *(v0 + 2);

              *v35 = v139;
              v35[1] = v162;
              v36 = &enum case for AppMatchResolution.needsConfirmation(_:);
            }

            else
            {

              v163 = v137;

              v164 = v301;
              v165 = v281;
              v166 = v139;
              v167 = Logger.logObject.getter();
              v168 = static os_log_type_t.debug.getter();

              v306 = v166;

              if (os_log_type_enabled(v167, v168))
              {
                v169 = swift_slowAlloc();
                v288 = v163;
                v170 = swift_slowAlloc();
                v309 = v170;
                v310 = 0;
                *v169 = 136315906;
                OUTLINED_FUNCTION_1_109();
                v179 = OUTLINED_FUNCTION_3_100(v171, v172, v173, v174, v175, v176, v177, v178, v261, v267, v274, v281, v288, v294, v301, v306, v309, v310, v311);

                *(v169 + 4) = v179;
                *(v169 + 12) = 2048;
                *(v169 + 14) = 0x4000000000000000;
                *(v169 + 22) = 2080;

                v180 = v295;
                v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v295, v164, &v309);

                *(v169 + 24) = v181;
                *(v169 + 32) = 2080;
                v165 = v282;

                v182 = v268;
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v282, &v309);
                OUTLINED_FUNCTION_33_2();
                *(v169 + 34) = v181;
                _os_log_impl(&dword_0, v167, v168, "%s maxUsage/secondMaxUsage <= %f, return needsDisambiguation between %s and %s", v169, 0x2Au);
                swift_arrayDestroy();
                v183 = v170;
                v163 = v289;
                OUTLINED_FUNCTION_26_0(v183);
                OUTLINED_FUNCTION_26_0(v169);
              }

              else
              {

                v180 = v294;
                v182 = v267;
              }

              v35 = *(v0 + 2);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v259 = swift_allocObject();
              *(v259 + 16) = xmmword_424FF0;
              *(v259 + 32) = v180;
              *(v259 + 40) = v164;
              *(v259 + 48) = v182;
              *(v259 + 56) = v165;

              *v35 = v259;
              v36 = &enum case for AppMatchResolution.needsDisambiguation(_:);
            }

            goto LABEL_72;
          }
        }

        v184 = *(v0 + 6);

        OUTLINED_FUNCTION_19_37(v185, v186, v187, v188, v189, v190, v191, v192, v261, v267, v274, v281, v287, v294, v301);

        v193 = v137;
        v194 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_87();

        if (os_log_type_enabled(v194, v128))
        {
          v195 = *(v0 + 6);
          OUTLINED_FUNCTION_36();
          v196 = OUTLINED_FUNCTION_6_81();
          v309 = v196;
          v310 = 0;
          OUTLINED_FUNCTION_0_105(4.8152e-34);
          OUTLINED_FUNCTION_3_100(v197, v198, v199, v200, v201, v202, v203, v204, v262, v269, v276, v283, v290, v296, v302, v305, v309, v310, v311);
          OUTLINED_FUNCTION_63_1();
          OUTLINED_FUNCTION_17_46();
          *(v184 + 14) = 0x4008000000000000;
          *(v184 + 22) = 2080;

          OUTLINED_FUNCTION_22_32(v205, v206, v207, v208, v209, v210, v211, v212, v263, v270, v277, v284, v291, v297, v303, v307);
          OUTLINED_FUNCTION_33_2();
          *(v184 + 24) = v195;
          _os_log_impl(&dword_0, v194, v128, "%s maxUsage/secondMaxUsage >= %f, return resolved %s", v184, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v196);
          OUTLINED_FUNCTION_35();
        }

        else
        {

          v139 = v296;
        }

        v35 = *(v0 + 2);

        *v35 = v139;
        goto LABEL_71;
      }

      v112 = *(v2 + 8 * v110);
      ++v119;
      if (v112)
      {
        goto LABEL_51;
      }
    }
  }

  v114 = 0;
  v113 = (63 - v107) >> 6;
  v0 = v305;
  while (v113 - 1 != v109)
  {
    v110 = v109 + 1;
    v115 = *&v106[8 * v109 + 72];
    v114 -= 64;
    ++v109;
    if (v115)
    {
      v272 = v105;
      v112 = (v115 - 1) & v115;
      v111 = __clz(__rbit64(v115)) - v114;
      goto LABEL_45;
    }
  }

  v213 = Logger.logObject.getter();
  v214 = static os_log_type_t.debug.getter();

  v215 = os_log_type_enabled(v213, v214);
  if (v215)
  {
    v223 = OUTLINED_FUNCTION_7_71();
    v224 = OUTLINED_FUNCTION_36();
    v309 = v224;
    v310 = 0;
    *v223 = 136315138;
    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_3_100(v225, v226, v227, v228, v229, v230, v231, v232, v260, v266, v273, v280, v286, v293, v300, v305, v309, v310, v311);
    OUTLINED_FUNCTION_125();
    *(v223 + 4) = v113;
    _os_log_impl(&dword_0, v213, v214, "%s can't find secondMaxUsage app, select max usage app", v223, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v224);
    OUTLINED_FUNCTION_26_0(v224);
    v215 = OUTLINED_FUNCTION_26_0(v223);
  }

  OUTLINED_FUNCTION_19_37(v215, v216, v217, v218, v219, v220, v221, v222, v260, v266, v273, v280, v286, v293, v300);

  v35 = *(v0 + 2);
  *v35 = v298;
LABEL_71:
  v35[1] = v85;
  v36 = &enum case for AppMatchResolution.resolved(_:);
LABEL_72:
  v233 = *v36;
  matched = type metadata accessor for AppMatchResolution();
  (*(*(matched - 8) + 104))(v35, v233, matched);
  v235 = *(v0 + 1);

  return v235();
}

Swift::String __swiftcall SeasAppUsageRule.getName()()
{
  v0 = 0x8000000000447470;
  v1 = 0xD000000000000010;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SeasAppUsageRule.deinit()
{

  return v0;
}

uint64_t SeasAppUsageRule.__deallocating_deinit()
{
  SeasAppUsageRule.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasAppUsageRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 112) + **(**v6 + 112));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t AppUsageProvider.relativeAppUsageProbabilities(forCandidateBundleIds:daysAgo:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(_PSSuggester) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 relativeAppUsageProbabilitiesForCandidateBundleIds:isa daysAgo:a2];

  type metadata accessor for NSNumber();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = a4;
  v13 = v12;
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v19 = v13;
      a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n0222_s27PhoneCallFlowDelegatePlugin16SeasAppUsageRuleC7resolve13sharedGlobals05startB6Intent05phoneB8NLIntent12appBundleIds13SiriRemembers0G15MatchResolutionOAA06SharedL9Providing_p_AA07CallingN0_pAA0abP0_pSaySSGtYaKFSbSS3key_rI16C5valuet_tXEfU0_SS3key_AI5valuetTf1nnc_n(v18, v11, a1, a2, a3, v19);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v14 = &v20 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);

  v15 = v13;
  v16 = specialized closure #1 in _NativeDictionary.filter(_:)(v14, v11, a1, a2, a3, v15);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v16;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  return a2;
}

Swift::Int specialized closure #1 in _NativeDictionary.filter(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 16 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v9, a3);

          return v23;
        }
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n0222_s27PhoneCallFlowDelegatePlugin16SeasAppUsageRuleC7resolve13sharedGlobals05startB6Intent05phoneB8NLIntent12appBundleIds13SiriRemembers0G15MatchResolutionOAA06SharedL9Providing_p_AA07CallingN0_pAA0abP0_pSaySSGtYaKFSbSS3key_rI16C5valuet_tXEfU0_SS3key_AI5valuetTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6;
    v13 = specialized closure #1 in _NativeDictionary.filter(_:)(v11, a2, a3, a4, a5, v12);

    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

void specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v33 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_68();
        if (((v23 << v22) & ~*(v11 + 8 * v21)) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v11 + 8 * v24) != -1)
            {
              OUTLINED_FUNCTION_16_9();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_20_7();
LABEL_25:
        OUTLINED_FUNCTION_15_53();
        *(v11 + v28) |= v29;
        v31 = (*(v8 + 48) + 16 * v30);
        *v31 = v18;
        v31[1] = v19;
        *(*(v8 + 56) + 8 * v30) = v20;
        OUTLINED_FUNCTION_21_41();
        if (v32)
        {
          goto LABEL_30;
        }

        v4 = v33;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMd, &_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMR);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v33 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_68();
        if (((v23 << v22) & ~*(v11 + 8 * v21)) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v11 + 8 * v24) != -1)
            {
              OUTLINED_FUNCTION_16_9();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_20_7();
LABEL_25:
        OUTLINED_FUNCTION_15_53();
        *(v11 + v28) |= v29;
        v31 = (*(v8 + 48) + 16 * v30);
        *v31 = v18;
        v31[1] = v19;
        *(*(v8 + 56) + 8 * v30) = v20;
        OUTLINED_FUNCTION_21_41();
        if (v32)
        {
          goto LABEL_30;
        }

        v4 = v33;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
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
  v32 = v4;
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
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
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

uint64_t SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a6;
  v7[5] = v6;
  v7[2] = a1;
  v7[3] = a5;
  return _swift_task_switch(SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  v27 = v0;
  v1 = static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(*(v0 + 24), *(v0 + 32));
  if (!v2)
  {
    goto LABEL_10;
  }

  v5 = v2;
  if ((v4 & 1) != 0 || v3 != 1)
  {

LABEL_10:
    v18 = *(v0 + 16);
    v19 = &enum case for AppMatchResolution.noMatchFound(_:);
    goto LABEL_11;
  }

  v6 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = 0;
    *v11 = 136315394;
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v26 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v13, v14, v15);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, 0xE000000000000000, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v24);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "%s current contact only exists in third party app %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 16);
  *v18 = v6;
  v18[1] = v5;
  v19 = &enum case for AppMatchResolution.resolved(_:);
LABEL_11:
  v20 = *v19;
  matched = type metadata accessor for AppMatchResolution();
  (*(*(matched - 8) + 104))(v18, v20, matched);
  v22 = *(v0 + 8);

  return v22();
}

Swift::String __swiftcall SeasContactInSingleAppRule.getName()()
{
  v0 = 0x8000000000447500;
  v1 = 0xD00000000000001ALL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SeasContactInSingleAppRule.__allocating_init()()
{
  v0 = swift_allocObject();
  SeasContactInSingleAppRule.init()(v0);
  return v0;
}

void *SeasContactInSingleAppRule.init()(uint64_t a1)
{
  v1[2] = type metadata accessor for SeasContactInSingleAppRule();
  v1[3] = &outlined read-only object #0 of SeasContactInSingleAppRule.init();
  v1[4] = 0;
  v1[5] = 0;
  return v1;
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasContactInSingleAppRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 88) + **(**v6 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 24);
  v6 = *(v5(v3, v4) + 16);

  if (v6 != 1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_24:
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriPhone);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "#SeasRulesHelper contacts is not equal 1, return nil", v38, 2u);
      }

      return 0;
    }

LABEL_30:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_24;
  }

  v7 = v5(v3, v4);
  if (!*(v7 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  outlined init with copy of SignalProviding(v7 + 32, v40);

  v8 = v41;
  v9 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v10 = SiriPhoneContact.getVocabularyAppsBundleSet()(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40[0] = v15;
    *v14 = 136315138;
    v16 = Set.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v40);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "#SeasContactInSingleAppRule: vocabularyAppsBundleSet %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  specialized Set.contains(_:)(0x73746361746E6F43, 0xE800000000000000, v10);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = 0;
    v39 = 0;
    v21 = 0;
    v22 = a2 + 32;
    type metadata accessor for App();
    do
    {
      v23 = (v22 + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      swift_bridgeObjectRetain_n();
      App.__allocating_init(appIdentifier:)();
      v26 = App.isFirstParty()();

      if (!v26 && *(v10 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v27 = Hasher._finalize()();
        v28 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v29 = v27 & v28;
          if (((*(v10 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
          {
            break;
          }

          v30 = (*(v10 + 48) + 16 * v29);
          if (*v30 != v25 || v30[1] != v24)
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v27 = v29 + 1;
            if ((v32 & 1) == 0)
            {
              continue;
            }
          }

          if (!__OFADD__(v20++, 1))
          {
            v39 = v25;
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_29;
        }
      }

LABEL_21:
      ++v21;
    }

    while (v21 != v19);

    return v39;
  }

  else
  {

    return 0;
  }
}

PhoneCallFlowDelegatePlugin::ContactDonationInfo __swiftcall ContactDonationInfo.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  v2 = 0;
  v3 = 0;
  result.contactInNumberOfThirdPartyApps = v2;
  result.thirdPartyAppId._object = v1;
  result.thirdPartyAppId._countAndFlagsBits = v0;
  result.contactExistsInFirstParty = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::ContactDonationInfo __swiftcall ContactDonationInfo.init(thirdPartyAppId:contactInNumberOfThirdPartyApps:contactExistsInFirstParty:)(PhoneCallFlowDelegatePlugin::ContactDonationInfo thirdPartyAppId, Swift::Int contactInNumberOfThirdPartyApps, Swift::Bool contactExistsInFirstParty)
{
  v3 = contactExistsInFirstParty;
  thirdPartyAppId.contactInNumberOfThirdPartyApps = contactInNumberOfThirdPartyApps;
  thirdPartyAppId.contactExistsInFirstParty = v3;
  return thirdPartyAppId;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactDonationInfo(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ContactDonationInfo(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t SemanticValue.init(string:nlNode:)(uint64_t a1, uint64_t a2, char a3)
{
  SemanticValue.init()();
  SemanticValue.string.setter();
  PhoneCallNLConstants.rawValue.getter(a3);
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(a3);
  return SemanticValue.nodeClass.setter();
}

uint64_t Flow.guardedSentinelFlow<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a5;
  v11 = *(a2 - 8);
  __chkstk_darwin(a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SentinelConditionalFlow(0, AssociatedTypeWitness, v20, v21);
  (*(v15 + 16))(v18, a1, a3);
  (*(v11 + 16))(v13, v6, a2);
  return SentinelConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(v18, v13, a3, a2, v24, a4);
}

uint64_t SentinelConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = Flow.guarded<A>(by:)();
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  *(v7 + 16) = v12;
  return v7;
}

uint64_t SentinelConditionalFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SentinelConditionalFlow(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SentinelConditionalFlow.__deallocating_deinit()
{
  ThirdPartyAnnotatedAppStore.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SentinelConditionalFlow<A1>(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

BOOL SharedConfirmationRepromptContext.PromptType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharedConfirmationRepromptContext.PromptType.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SharedConfirmationRepromptContext.PromptType@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SharedConfirmationRepromptContext.PromptType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SharedConfirmationRepromptContext.PromptType@<X0>(void *a1@<X8>)
{
  result = SharedConfirmationRepromptContext.PromptType.rawValue.getter();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

uint64_t SharedConfirmationRepromptContext.registerPrompt(type:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000000004615E0, v25);
    OUTLINED_FUNCTION_1_9(&dword_0, v7, v8, "#SharedConfirmationRepromptContext registering prompt type %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
  {
LABEL_9:
    *(v1 + 16) = v10;
    if ((v17 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v16, 0, v10);
    }

    v20 = *(v10 + 56);
    v21 = *(v20 + 8 * v16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v20 + 8 * v16) = v23;
      return swift_endAccess();
    }

    goto LABEL_14;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v17 & 1) == (v19 & 1))
  {
    v16 = v18;
    goto LABEL_9;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL SharedConfirmationRepromptContext.hasPrompted(for:times:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 >= a1;
}

uint64_t SharedConfirmationRepromptContext.reset(type:)()
{
  result = swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)();
    v3 = v2;

    if (v3)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.siriPhone);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v11[0] = v8;
        *v7 = 136315138;
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000000004615E0, v11);
        OUTLINED_FUNCTION_1_9(&dword_0, v9, v10, "#SharedConfirmationRepromptContext resetting prompt type %s");
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_26_0(v8);
        OUTLINED_FUNCTION_26_0(v7);
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t SharedConfirmationRepromptContext.__allocating_init()()
{
  v0 = swift_allocObject();
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t SharedConfirmationRepromptContext.init()()
{
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v9 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    outlined init with take of Any((*(v11 + 56) + 32 * v7), a3);
    _NativeDictionary._delete(at:)();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  v6 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  _NativeDictionary._delete(at:)();
  *v1 = v9;
  return v7;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  type metadata accessor for CallStateOneTimeTask(0);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  v8 = *(v7 + 48);
  v9 = type metadata accessor for ContactResolverConfigHashable(0);
  outlined init with take of ContactResolverConfigHashable(a2, v8 + *(*(v9 - 8) + 72) * a1);
  OUTLINED_FUNCTION_4_79();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

{
  OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  OUTLINED_FUNCTION_4_79();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  result = outlined init with take of Any(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_101(v6, v13);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_101(v6, v11);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedConfirmationRepromptContext.PromptType(_BYTE *result, int a2, int a3)
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

uint64_t SharedGlobalsProviding.outputPublisher.getter@<X0>(uint64_t *a1@<X8>)
{
  static OutputPublisherFactory.makeOutputPublisher()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v2 = type metadata accessor for OutputPublisherWrapper();
  v3 = swift_allocObject();
  outlined init with take of SPHConversation(&v6, v3 + 16);
  outlined init with take of SPHConversation(&v5, v3 + 56);
  a1[3] = v2;
  a1[4] = lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type OutputPublisherWrapper and conformance OutputPublisherWrapper, type metadata accessor for OutputPublisherWrapper, &protocol conformance descriptor for OutputPublisherWrapper);
  result = lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type OutputPublisherWrapper and conformance OutputPublisherWrapper, type metadata accessor for OutputPublisherWrapper, &protocol conformance descriptor for OutputPublisherWrapper);
  a1[5] = result;
  *a1 = v3;
  return result;
}

uint64_t SharedGlobalsProviding.currentRequest.getter()
{
  type metadata accessor for SiriEnvironment();
  if (!static SiriEnvironment.forCurrentTask.getter())
  {
    return 0;
  }

  v0 = SiriEnvironment.currentRequest.getter();

  return v0;
}

uint64_t specialized SharedGlobalsProviding.patternFlowProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  SharedGlobalsProviding.outputPublisher.getter(v15);
  v2 = v16;
  v3 = v17;
  v4 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v14[3] = v2;
  v14[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v6 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v13[3] = v6;
  v13[4] = &protocol witness table for ResponseFactory;
  v13[0] = ResponseFactory.init()();
  v7 = __swift_project_boxed_opaque_existential_1(v13, v6);
  v12[3] = v6;
  v12[4] = &protocol witness table for ResponseFactory;
  v8 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  v9 = type metadata accessor for PatternFlowProvider();
  swift_allocObject();
  v10 = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v13);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a1[3] = v9;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = v10;
  return result;
}

uint64_t SharedGlobalsProviding.patternFlowProvider.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 16))(v20);
  v6 = v21;
  v7 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v6;
  v19[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_40();
  (*(v8 + 16))();
  (*(a2 + 136))(v16, a1, a2);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15[3] = v9;
  v15[4] = *(v10 + 8);
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_40();
  (*(v11 + 16))();
  v12 = type metadata accessor for PatternFlowProvider();
  OUTLINED_FUNCTION_41_1(v12);
  v13 = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v16);
  result = __swift_destroy_boxed_opaque_existential_1(v20);
  a3[3] = v12;
  a3[4] = &protocol witness table for PatternFlowProvider;
  *a3 = v13;
  return result;
}

uint64_t SharedGlobalsProviding.responseGenerator.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v1);
  result = ResponseFactory.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ResponseFactory;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.skTransformer.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SharedGlobals;
  a1[4] = &protocol witness table for SharedGlobals;
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of SharedGlobals(v1, v3 + 16);
}

uint64_t SharedGlobalsProviding.skTransformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_40();
  v4 = *(v3 + 16);

  return v4();
}

uint64_t specialized SharedGlobalsProviding.callStateProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t SharedGlobalsProviding.callStateProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  OUTLINED_FUNCTION_70();
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t SharedGlobalsProviding.featureManager.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v0 = type metadata accessor for PhoneCallFeatureManager();
  v1 = OUTLINED_FUNCTION_67(v0);
  v4 = &type metadata for PhoneCallFeatureFlags;
  v5 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v3 = swift_allocObject();
  memcpy((v3 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v3, v1 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v3);
  return v1;
}

uint64_t specialized SharedGlobalsProviding.annotatedAppFinder.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v2 = swift_allocObject();
  v7 = &type metadata for PhoneCallFeatureFlags;
  v8 = &protocol witness table for PhoneCallFeatureFlags;
  *&v6 = swift_allocObject();
  memcpy((v6 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v6, v2 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v6);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  v4 = swift_allocObject();
  *a1 = v4;
  v4[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v4[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v4[4] = v2;
  v4[5] = v3;
  v4[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v4[3] = 0;
}

uint64_t SharedGlobalsProviding.annotatedAppFinder.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v2 = type metadata accessor for PhoneCallFeatureManager();
  v3 = OUTLINED_FUNCTION_67(v2);
  v8 = &type metadata for PhoneCallFeatureFlags;
  v9 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v7 = swift_allocObject();
  memcpy((v7 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v7, v3 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v7);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v4 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  OUTLINED_FUNCTION_70();
  v5 = swift_allocObject();
  *a1 = v5;
  v5[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v5[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v5[4] = v3;
  v5[5] = v4;
  v5[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v5[3] = 0;
}

id SharedGlobalsProviding.afLocalization.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SharedGlobalsProviding.userPersonaCollector.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)();
  v3 = type metadata accessor for AppSelectionUserPersonaCollector();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for AppSelectionUserPersonaCollector;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.userPersonaCollector.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)();
  v3 = type metadata accessor for AppSelectionUserPersonaCollector();
  result = OUTLINED_FUNCTION_6_82(v3);
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for AppSelectionUserPersonaCollector;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.flowFinder.getter@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.referenceResolver.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ReferenceResolutionClient();
  result = ReferenceResolutionClient.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ReferenceResolutionClient;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.referenceResolver.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ReferenceResolutionClient();
  result = ReferenceResolutionClient.__allocating_init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ReferenceResolutionClient;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.defaultAppProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for DefaultAppProvider;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.defaultAppProvider.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  v0[3] = v1;
  v0[4] = &protocol witness table for DefaultAppProvider;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.appIntentDispatcher.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppIntentDispatcher();
  swift_allocObject();
  result = AppIntentDispatcher.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for AppIntentDispatcher;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.appIntentDispatcher.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for AppIntentDispatcher();
  swift_allocObject();
  result = AppIntentDispatcher.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for AppIntentDispatcher;
  *v0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SharedGlobals(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SharedGlobals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SharedNeedsValueContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptySetSingleton;
  return result;
}

uint64_t SharedNeedsValueContext.registerPrompt(for:)()
{
  OUTLINED_FUNCTION_8_70();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)();
  return swift_endAccess();
}

uint64_t SharedNeedsValueContext.hasPrompted(for:)()
{
  OUTLINED_FUNCTION_8_70();
  swift_beginAccess();
  return specialized Set.contains(_:)(*(v0 + 16)) & 1;
}

uint64_t SharedNeedsValueContext.reset(for:)(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_8_70();
    swift_beginAccess();
    *(v1 + 16) = _swiftEmptySetSingleton;
  }

  else
  {
    OUTLINED_FUNCTION_8_70();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)();
    return swift_endAccess();
  }
}

uint64_t SharedNeedsValueContext.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  return result;
}

BOOL specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_3_102();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_6_6();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    v10 = (*(v4 + 48) + 16 * v8);
    v11 = *v10 == v3 && v10[1] == v1;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v12 = (*(v4 + 48) + 16 * v8);
      v13 = v12[1];
      *v0 = *v12;
      v0[1] = v13;

      return v9 == 0;
    }

    v5 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_71();
  v14 = OUTLINED_FUNCTION_6_83();
  specialized _NativeSet.insertNew(_:at:isUnique:)(v14, v15, v16);
  *v2 = v18;
  *v0 = v3;
  v0[1] = v1;
  return v9 == 0;
}

{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)();
    *v0 = v5;
  }

  return v3 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for App();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17SiriAppResolution0F0C_Tt1g5(v7, result + 1);
        if (*(v17 + 24) <= *(v17 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        specialized _NativeSet._unsafeInsertNew(_:)(v18, v17);

        *v3 = v17;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for App();
    OUTLINED_FUNCTION_3_61();
    lazy protocol witness table accessor for type App and conformance App(v10, v11, &protocol conformance descriptor for App);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_6_6();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;

        specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v15);
        *v2 = v21;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_3_61();
      lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, v16, &protocol conformance descriptor for App);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v12 = v15 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_3_102();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._finalize()();
  OUTLINED_FUNCTION_6_6();
  v7 = v6 & ~v5;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_16:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_71();
    v13 = OUTLINED_FUNCTION_6_83();
    specialized _NativeSet.insertNew(_:at:isUnique:)(v13, v14, v15);
    *v2 = v17;
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v8 = ~v5;
  v9 = *(v4 + 48);
  while (1)
  {
    v10 = (v9 + 16 * v7);
    v11 = v10[1];
    if (v11)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_18;
    }

LABEL_15:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!v1)
  {
    goto LABEL_15;
  }

  v12 = *v10 == v3 && v11 == v1;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  *v0 = *(*(v4 + 48) + 16 * v7);

  return 0;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = static Hasher._hash(seed:_:)();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9);
  *v3 = v12;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v41 = &v40 - v19;
  v42 = v2;
  v20 = *v2;
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v54);
  Hasher._finalize()();
  OUTLINED_FUNCTION_6_6();
  v23 = v22 & ~v21;
  v52 = v24;
  if (((*(v24 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_14:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, v41);
    v54[0] = *v36;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v38, v23, isUniquelyReferenced_nonNull_native);
    *v36 = v54[0];
    outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, v43);
    return 1;
  }

  v50 = ~v21;
  v45 = (v6 + 32);
  v46 = v20;
  v51 = *(v13 + 72);
  v49 = (v6 + 8);
  v44 = v9;
  while (1)
  {
    v25 = v51 * v23;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(*(v20 + 48) + v51 * v23, v17);
    v26 = *(v9 + 48);
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v17, v11);
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, &v11[v26]);
    OUTLINED_FUNCTION_1_11(v11);
    if (v27)
    {
      break;
    }

    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v11, v53);
    OUTLINED_FUNCTION_1_11(&v11[v26]);
    if (v27)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*v49)(v53, v4);
LABEL_11:
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
      goto LABEL_13;
    }

    v28 = &v11[v26];
    v29 = v4;
    v30 = v53;
    v31 = v47;
    (*v45)(v47, v28, v29);
    OUTLINED_FUNCTION_1_111();
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v32, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = a2;
    v34 = *v49;
    v35 = v31;
    v4 = v29;
    (*v49)(v35, v29);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    v34(v30, v29);
    a2 = v33;
    v9 = v44;
    v20 = v46;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (v48)
    {
      goto LABEL_15;
    }

LABEL_13:
    v23 = (v23 + 1) & v50;
    if (((*(v52 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_1_11(&v11[v26]);
  if (!v27)
  {
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_15:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a2, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(*(v20 + 48) + v25, v43);
  return 0;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17SiriAppResolution0F0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for App();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for App();
  OUTLINED_FUNCTION_3_61();
  lazy protocol witness table accessor for type App and conformance App(v4, v5, &protocol conformance descriptor for App);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = OUTLINED_FUNCTION_4_80(v6);
  result = OUTLINED_FUNCTION_2_105(v7);
  *(v9 + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(char a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = OUTLINED_FUNCTION_4_80(v4);
  result = OUTLINED_FUNCTION_2_105(v5);
  *(v7 + result) = a1;
  ++*(a2 + 16);
  return result;
}

BOOL specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
    }

    specialized _NativeSet._delete(at:)(v2);
    *v0 = v6;
  }

  return v3 == 0;
}

unint64_t lazy protocol witness table accessor for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase()
{
  result = lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase;
  if (!lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedNeedsValueContext.NeedsValueCase(_BYTE *result, int a2, int a3)
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

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(0);
        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void specialized Optional<A>.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v1, &v13 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v10, v2);
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_1_111();
    lazy protocol witness table accessor for type App and conformance App(v11, v12, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v2);
  }
}

void SingleCallRecordModel.init(displayName:displayCallDetail:displayDateTime:currentCallType:contactIds:directInvocation:openContactDirectInvocation:isVideoCall:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  *a9 = 0xD000000000000010;
  *(a9 + 8) = 0x8000000000456CF0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  type metadata accessor for SingleCallRecordModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v16 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 64) = a7;
  CodableAceObject.init(wrappedValue:)();

  *(a9 + 88) = a13;
}

uint64_t type metadata accessor for SingleCallRecordModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleCallRecordModel;
  if (!type metadata singleton initialization cache for SingleCallRecordModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultVoicemailModel.responseViewId.setter()
{
  OUTLINED_FUNCTION_24_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayName.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayDateTime.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.callDuration.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SingleCallRecordModel.directInvocation.getter()
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.directInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleCallRecordModel.directInvocation.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.getter()
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleCallRecordModel.openContactDirectInvocation.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SingleCallRecordModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x43746E6572727563 && a2 == 0xEF657079546C6C61;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x436F656469567369 && a2 == 0xEB000000006C6C61;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000000004616C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x80000000004616E0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleCallRecordModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x43746E6572727563;
      break;
    case 5:
      result = 0x49746361746E6F63;
      break;
    case 6:
      result = 0x436F656469567369;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleCallRecordModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_61_5();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleCallRecordModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_6_84();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_107(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_0_107(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_0_107(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_0_107(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 80);
    v12[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 6;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SingleCallRecordModel(0);
    LOBYTE(v13) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 8;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

uint64_t SingleCallRecordModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v36 = v3;
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMR);
  OUTLINED_FUNCTION_7();
  v34 = v10;
  v35 = v11;
  __chkstk_darwin(v10);
  v37 = type metadata accessor for SingleCallRecordModel(0);
  __chkstk_darwin(v37);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  v40 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    OUTLINED_FUNCTION_3_103();
    __swift_destroy_boxed_opaque_existential_1(v40);

    if (v16)
    {
    }

    if (v14)
    {
      return (*(v36 + 8))(&v13[*(v37 + 44)], v38);
    }
  }

  else
  {
    v39 = v9;
    v32 = v6;
    LOBYTE(v42) = 0;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    *v13 = v18;
    *(v13 + 1) = v19;
    OUTLINED_FUNCTION_1_112(1);
    *(v13 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 3) = v21;
    OUTLINED_FUNCTION_1_112(2);
    *(v13 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 5) = v22;
    OUTLINED_FUNCTION_1_112(3);
    *(v13 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 7) = v23;
    OUTLINED_FUNCTION_1_112(4);
    *(v13 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v13 + 9) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v41 = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v13 + 10) = v42;
    OUTLINED_FUNCTION_1_112(6);
    v13[88] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v42) = 7;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    v25 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31[1] = v20;
    v26 = &v13[*(v37 + 44)];
    v39 = *(v36 + 32);
    v39(v26, v25, v38);
    LOBYTE(v42) = 8;
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = OUTLINED_FUNCTION_2_106();
    v29(v28);
    v39(&v13[*(v37 + 48)], v27, v38);
    outlined init with copy of SingleCallRecordModel(v13, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return outlined destroy of SingleCallRecordModel(v13);
  }

  return result;
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleCallRecordModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleCallRecordModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleCallRecordModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleCallRecordModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel, &protocol conformance descriptor for SingleCallRecordModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleCallRecordModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for SingleCallRecordModel(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t SingleCallResultFlow.__allocating_init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v38 = a7;
  v39 = a6;
  v36 = a5;
  v35 = a4;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppInfoBuilder();
  v14 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v40);
  v15 = a2;
  v16 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v15, 1, v14, v13);
  type metadata accessor for PhoneCallRecord(0);
  swift_allocObject();
  v34 = PhoneCallRecord.init(builder:)(v16);

  v17 = *(v11 + 8);
  v33 = v10;
  v17(v13, v10);
  v18 = v35;
  v35 = a1;
  if (App.isFirstParty()())
  {
    v19 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(a3, v18);
  }

  else
  {
    v20 = [a3 recipient];
    if (v20)
    {
      v21 = v20;
      v32 = a3;
      v31 = type metadata accessor for PhonePerson(0);
      v22 = v21;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v40, v41);
      OUTLINED_FUNCTION_19_7();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v40);
      v23 = static PhonePerson.make(phonePerson:options:locale:)(v21, 0, v13);

      v17(v13, v33);
      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_426260;
        v19[4] = v23;
      }

      else
      {

        v19 = _swiftEmptyArrayStorage;
      }

      a3 = v32;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }
  }

  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v24 = PhonePersonList.__allocating_init(list:)(v19);
  v25 = a3;
  v26 = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v25, v24);
  v27 = v39;
  outlined init with copy of SignalProviding(v39, v42);
  v28 = v38;
  outlined init with copy of SearchCallHistorySharedGlobals(v38, v40);
  v29 = (*(v37 + 208))(v35, v15, v34, v25, v26, v42, v40, v36 & 1);

  outlined destroy of SearchCallHistorySharedGlobals(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v29;
}

uint64_t specialized IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FollowUpOfferType.requiresConfirmation.getter(a1))
  {
    specialized IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(a1);
    switch(a1)
    {
      case 1u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.siriPhone);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_0, v23, v24, "#IncomingCallNLContextProvider: Adding NLv4 context for startCall", v25, 2u);
        }

        type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
        swift_allocObject();
        v14 = UsoTaskBuilder_call_common_PhoneCall.init()();
        v15 = 0x6163207472617473;
        v16 = 0xEA00000000006C6CLL;
        break;
      case 2u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.siriPhone);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_0, v19, v20, "#IncomingCallNLContextProvider: Adding NLv4 context for answerCall", v21, 2u);
        }

        type metadata accessor for UsoTaskBuilder_answer_common_PhoneCall();
        swift_allocObject();
        v14 = UsoTaskBuilder_answer_common_PhoneCall.init()();
        v15 = 0x6320726577736E61;
        v16 = 0xEB000000006C6C61;
        break;
      case 3u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.siriPhone);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_0, v11, v12, "#IncomingCallNLContextProvider: Adding NLv4 context for callBack", v13, 2u);
        }

        type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
        swift_allocObject();
        v14 = UsoTaskBuilder_callback_common_PhoneCall.init()();
        v15 = 0x636162206C6C6163;
        v16 = 0xE90000000000006BLL;
        break;
      default:
LABEL_24:
        if (a2)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.siriPhone);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_0, v27, v28, "#NLContextUpdate: Setting Announce Calls NLContextUpdate fields", v29, 2u);
          }

          NLContextUpdate.submitAsSpokenNotificationContext.setter();
          NLContextUpdate.weightedPromptStrict.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_426260;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
          v34 = [objc_allocWithZone(SAAceConfirmationContext) init];
          outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v31, v33, v34);
          *(v30 + 32) = v34;
          NLContextUpdate.conversationStateAttachments.setter();
        }

        (*(v7 + 32))(a3, v9, v6);
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    specialized IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(v14, v15, v16);

    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_24;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

id specialized IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  v3 = _swiftEmptyArrayStorage;
  v4 = _swiftEmptyArrayStorage;
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_424FD0;
    v4[4] = PhoneCallNLConstants.canonicalName.getter(15);
    v4[5] = v5;
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_424FF0;
    String.uppercased()();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v15 = PhoneCallNLConstants.canonicalName.getter(15);
    v17 = v6;
    v7._countAndFlagsBits = 0x2E65756C61562ELL;
    v7._object = 0xE700000000000000;
    String.append(_:)(v7);
    v8 = String.uppercased()();
    String.append(_:)(v8);

    v3[4] = v15;
    v3[5] = v17;
    String.uppercased()();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v16 = PhoneCallNLConstants.canonicalName.getter(15);
    v18 = v9;
    v10._countAndFlagsBits = 0x2E65756C61562ELL;
    v10._object = 0xE700000000000000;
    String.append(_:)(v10);
    v11 = String.uppercased()();
    String.append(_:)(v11);

    v3[6] = v16;
    v3[7] = v18;
  }

  NLContextUpdate.weightedPromptResponseTargets.getter();
  specialized Array.append<A>(contentsOf:)(v4);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.getter();
  specialized Array.append<A>(contentsOf:)(v3);
  NLContextUpdate.weightedPromptResponseOptions.setter();
  result = specialized IncomingCallNLContextProvider.getConfirmationAttachment(for:)(v1);
  if (result)
  {
    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_426260;
    *(v14 + 32) = v13;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  return result;
}

id specialized IncomingCallNLContextProvider.getConfirmationAttachment(for:)(char a1)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v2, v6, "#IncomingCallNLContextProvider: Adding NLv3 context for startCall", v7, 2u);
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_13;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallNLContextProvider: Adding NLv3 context for callBack", v4, 2u);
LABEL_11:

LABEL_13:

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v8 = [objc_allocWithZone(SAAceConfirmationContext) init];
    outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v9, v11, v8);
    return v8;
  }

  return 0;
}

uint64_t specialized IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v58 = a2;
  v63 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v63);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v56 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v56 - v10;
  v68 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v59 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v28 - 8);
  v30 = &v56 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_426260;
  *(v31 + 32) = a1;
  v32 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v32);

  v33 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  v60 = v33;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v34 = *(v22 + 16);
  v61 = v27;
  v34(v24, v27, v21);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v69 + 16))(v64, v19, v70);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v35 = v59;
  v36 = v68;
  (*(v59 + 16))(v65, v14, v68);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v63 = v22;
  v64 = v21;
  v65 = v19;
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v38 = v62;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  v41 = os_log_type_enabled(v39, v40);
  v43 = v66;
  v42 = v67;
  if (v41)
  {
    v44 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v38, v72);
    *(v44 + 12) = 2080;
    v45 = v71;
    swift_beginAccess();
    v46 = v57;
    (*(v43 + 16))(v57, v45, v42);
    v47 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v46);
    v49 = v14;
    v50 = v35;
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v72);

    *(v44 + 14) = v51;
    v35 = v50;
    v14 = v49;
    _os_log_impl(&dword_0, v39, v40, "Returning NLUUserDialogAct.NLUSystemOffered for %s: %s", v44, 0x16u);
    swift_arrayDestroy();

    v36 = v68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v52 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_424FD0;
  v54 = v71;
  swift_beginAccess();
  (*(v43 + 16))(v53 + v52, v54, v42);

  (*(v35 + 8))(v14, v36);
  (*(v69 + 8))(v65, v70);
  (*(v63 + 8))(v61, v64);
  (*(v43 + 8))(v54, v42);
  return v53;
}

uint64_t SingleCallResultFlow.__allocating_init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)()
{
  OUTLINED_FUNCTION_16_5();
  v0 = swift_allocObject();
  SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)();
  return v0;
}

uint64_t SingleCallResultFlow.State.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x646165722ELL;
  }

  if (a1 == 2)
  {
    return 0xD000000000000016;
  }

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  return 0x74656C706D6F632ELL;
}

uint64_t key path setter for SingleCallResultFlow.state : SingleCallResultFlow(uint64_t *a1)
{
  v1 = *a1;
  outlined copy of SingleCallResultFlow.State(*a1);
  return SingleCallResultFlow.state.setter(v1);
}

void SingleCallResultFlow.state.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v0[38], v0[39], v0[40], v0[41]);
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v11);

    *(v3 + 4) = v4;
    *(v3 + 12) = 2080;
    swift_beginAccess();
    v5 = v0[42];
    outlined copy of SingleCallResultFlow.State(v5);
    v6 = SingleCallResultFlow.State.description.getter(v5);
    v8 = v7;
    outlined consume of SingleCallResultFlow.State(v5);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_0, oslog, v2, "%s state => %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t SingleCallResultFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 336);
  outlined copy of SingleCallResultFlow.State(v1);
  return v1;
}

uint64_t SingleCallResultFlow.state.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 336);
  *(v1 + 336) = a1;
  outlined copy of SingleCallResultFlow.State(a1);
  outlined consume of SingleCallResultFlow.State(v3);
  SingleCallResultFlow.state.didset();
  return outlined consume of SingleCallResultFlow.State(a1);
}

BOOL SingleCallResultFlow.requiresCallBackOffer.getter()
{
  v1 = [*(v0 + 24) caller];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)()
{
  OUTLINED_FUNCTION_16_5();
  *(v1 + 304) = type metadata accessor for SingleCallResultFlow();
  *(v1 + 312) = &outlined read-only object #0 of SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:);
  *(v1 + 320) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 48) = v4;
  outlined init with take of SPHConversation(v3, v1 + 64);
  memcpy((v1 + 104), v2, 0xC8uLL);
  *(v1 + 56) = v0;
  return v1;
}

uint64_t SingleCallResultFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v28 = v0;
  v1 = (*(**(v0 + 64) + 160))();
  if (v1)
  {
    v2 = v1;
    if (v1 == 2)
    {
      SingleCallResultFlow.makeFollowUpAction()();

      static ExecuteResponse.complete(next:childCompletion:)();
    }

    else
    {
      if (v1 == 1)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 80) = v3;
        *v3 = v4;
        v3[1] = SingleCallResultFlow.execute();

        return SingleCallResultFlow.executeRead()();
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriPhone);
      OUTLINED_FUNCTION_19_7();

      outlined copy of SingleCallResultFlow.State(v2);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      outlined consume of SingleCallResultFlow.State(v2);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = 0;
        *v9 = 136315394;
        v10 = OUTLINED_FUNCTION_20_43();
        v27 = v11;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v12, v13, v14);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v25);

        *(v9 + 4) = v15;
        *(v9 + 12) = 2080;
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v25);

        *(v9 + 14) = v18;
        _os_log_impl(&dword_0, v7, v8, "%s Flow encountered an error: %s", v9, 0x16u);
        swift_arrayDestroy();

        OUTLINED_FUNCTION_14_0();
      }

      v19 = *(v0 + 64);
      type metadata accessor for StartCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      v20 = CATWrapperSimple.__allocating_init(options:globals:)();
      v21 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v19 + 64), v20);

      v23 = (*(*v21 + 112))(v22);

      *(v0 + 40) = v23;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of SingleCallResultFlow.State(v2);
    }
  }

  else
  {
    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_11();

  return v24();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(SingleCallResultFlow.execute(), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);
  swift_errorRetain();
  SingleCallResultFlow.state.setter(v1);
  static ExecuteResponse.replan(requireInput:)();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t SingleCallResultFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SingleCallResultFlow();
  _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, v2, type metadata accessor for SingleCallResultFlow, &protocol conformance descriptor for SingleCallResultFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  v1[46] = v2;
  v1[47] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[48] = v3;
  *v3 = v4;
  v3[1] = SingleCallResultFlow.executeRead();

  return SingleCallResultFlow.makeOutput()();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 392) = v0;

  if (v0)
  {
    v9 = SingleCallResultFlow.executeRead();
  }

  else
  {
    *(v5 + 400) = v3 & 1;
    v9 = SingleCallResultFlow.executeRead();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  outlined init with take of SPHConversation((v0 + 152), v0 + 112);
  outlined init with copy of SignalProviding(v0 + 112, v0 + 192);
  v3 = swift_allocObject();
  outlined init with take of SPHConversation((v0 + 192), v3 + 16);
  v4 = *(v0 + 376);
  if (v1 == 1)
  {
    outlined init with copy of SignalProviding(v2 + 64, v0 + 272);
    type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
    swift_allocObject();
    PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(&async function pointer to partial apply for closure #1 in SingleCallResultFlow.executeRead(), v3, (v0 + 272));
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    __swift_project_boxed_opaque_existential_1((v2 + 64), v5);
    v7 = *(v6 + 16);

    v7(v5, v6);
    v8 = *(v0 + 88);
    v9 = *(v0 + 104);
    v10 = __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    *(v0 + 336) = v8;
    *(v0 + 344) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 312));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
    swift_allocObject();
    _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, 255, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy, &protocol conformance descriptor for PhoneCallYesNoConfirmationFlowStrategy);
    v12 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    *(v0 + 360) = v12;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  else
  {
    v13 = *(v4 + 96);
    __swift_project_boxed_opaque_existential_1((v2 + 64), *(v4 + 88));
    v14 = OUTLINED_FUNCTION_19_7();
    v15(v14, v13);
    v16 = *(v0 + 40);
    v17 = *(v0 + 56);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
    *(v0 + 256) = v16;
    *(v0 + 264) = v17;
    v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();

    v20 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v0 + 352) = v20;

    static ExecuteResponse.complete<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  OUTLINED_FUNCTION_11();

  return v21();
}

{
  OUTLINED_FUNCTION_11();
  return v0();
}

uint64_t closure #1 in SingleCallResultFlow.executeRead()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in SingleCallResultFlow.executeRead(), 0, 0);
}

uint64_t closure #1 in SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  outlined init with copy of SignalProviding(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t closure #2 in SingleCallResultFlow.executeRead()(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConfirmationResponse();
  v60 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  __chkstk_darwin(v58);
  v61 = &v51[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v7 - 8);
  v57 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v51[-v10];
  __chkstk_darwin(v12);
  v14 = &v51[-v13];
  v67 = type metadata accessor for SimpleConfirmationResponseProvider();
  v59 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v51[-v21];
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v63 = v11;
  v64 = v14;
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v65 = *(v17 + 16);
  v66 = a1;
  v65(v22, a1, v16);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = v4;
    v27 = v26;
    v53 = swift_slowAlloc();
    v70[0] = v53;
    *v27 = 136315394;
    v28 = a2[38];
    v29 = a2[39];
    v30 = a2[40];
    v31 = a2[41];
    v68 = 0;
    v69 = 0xE000000000000000;
    v52 = v25;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v28, v29, v30, v31);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v70);
    v55 = a2;
    v33 = v32;

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR, &protocol conformance descriptor for PromptResult<A>);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v17 + 8);
    v37(v22, v16);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v70);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_0, v24, v52, "%s Received response from confirmation flow: %s", v27, 0x16u);
    swift_arrayDestroy();

    v4 = v54;
  }

  else
  {

    v37 = *(v17 + 8);
    v37(v22, v16);
  }

  v65(v19, v66, v16);
  if ((*(v17 + 88))(v19, v16) != enum case for PromptResult.answered<A>(_:))
  {
    v37(v19, v16);
    return SingleCallResultFlow.state.setter(0);
  }

  (*(v17 + 96))(v19, v16);
  v39 = v59;
  v40 = v62;
  (*(v59 + 32))(v62, v19, v67);
  v41 = v64;
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v42 = v60;
  v43 = v63;
  (*(v60 + 104))(v63, enum case for ConfirmationResponse.confirmed(_:), v4);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v4);
  v44 = *(v58 + 48);
  v45 = v61;
  outlined init with copy of ConfirmationResponse?(v41, v61);
  outlined init with copy of ConfirmationResponse?(v43, &v45[v44]);
  if (__swift_getEnumTagSinglePayload(v45, 1, v4) != 1)
  {
    v46 = v57;
    outlined init with copy of ConfirmationResponse?(v45, v57);
    if (__swift_getEnumTagSinglePayload(&v45[v44], 1, v4) != 1)
    {
      v48 = v56;
      (*(v42 + 32))(v56, &v45[v44], v4);
      _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, 255, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v42 + 8);
      v50(v48, v4);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v63, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v50(v46, v4);
      v40 = v62;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      if (v49)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v63, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v42 + 8))(v46, v4);
LABEL_13:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
LABEL_14:
    (*(v39 + 8))(v40, v67);
    return SingleCallResultFlow.state.setter(0);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(&v45[v44], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_17:
  SingleCallResultFlow.state.setter(2);
  return (*(v39 + 8))(v40, v67);
}

uint64_t SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[225] = v0;
  v1[219] = v2;
  v3 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[231] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[237] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for SingleResultCallHistoryModel(0);
  OUTLINED_FUNCTION_21(v4);
  v1[243] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v5);
  v1[244] = OUTLINED_FUNCTION_45();
  v1[245] = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_24_5();
  v1[246] = v6;
  v1[247] = OUTLINED_FUNCTION_45();
  v1[248] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v1[249] = v7;
  v1[250] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v41 = v0;
  v1 = *(v0 + 1800);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  if ((*(v3 + 112))(v2, v3) && (v4 = *(v0 + 1976), v5 = *(v0 + 1968), v6 = *(v0 + 1960), CurrentRequest.responseMode.getter(), , v7 = ResponseMode.isVoiceMode()(), (*(v5 + 8))(v4, v6), v7) && SingleCallResultFlow.requiresCallBackOffer.getter())
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(v0 + 1800) + 56);
  }

  *(v0 + 2104) = v8;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  if (v8)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    OUTLINED_FUNCTION_19_7();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      v39 = 0;
      *v12 = 136315138;
      v14 = OUTLINED_FUNCTION_20_43();
      v40 = v15;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v14, v16, v17, v18);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v38);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_0, v10, v11, "%s Read single call record + prompt", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);

      OUTLINED_FUNCTION_14_0();
    }

    swift_asyncLet_begin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v0 + 2008) = v20;
    *(v20 + 16) = xmmword_427BB0;
    v21 = OUTLINED_FUNCTION_8_71();
    v24 = v0 + 1616;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      v39 = 0;
      *v28 = 136315138;
      v30 = OUTLINED_FUNCTION_20_43();
      v40 = v31;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v30, v32, v33, v34);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v38);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_0, v26, v27, "%s Read single call record", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_14_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = swift_allocObject();
    *(v0 + 2032) = v36;
    *(v36 + 16) = xmmword_426260;
    v21 = OUTLINED_FUNCTION_8_71();
    v24 = v0 + 1296;
  }

  return _swift_asyncLet_get_throwing(v21, v22, v23, v24);
}

{
  *(v1 + 2016) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1656);
  *(*(v0 + 2008) + 32) = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_get_throwing(v3, v4, v5, v0 + 1760);
}

{
  *(v1 + 2024) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1704);
  *(*(v0 + 2008) + 40) = v1;
  v2 = v1;
  static DialogPhase.confirmation.getter();
  OUTLINED_FUNCTION_31_28();
  v3 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 1904);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[225];
  v0[258] = v0[251];
  v0[257] = v1;
  v0[256] = &async function pointer to partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput();
  OUTLINED_FUNCTION_19_38((v1 + 64));
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v0 + 177, v0[180]);
  OUTLINED_FUNCTION_7_1();
  v4 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1((v0[225] + 184), *(v0[225] + 208));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[259] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_6_85(v5);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_19_38((v0[225] + 64));
    v15 = OUTLINED_FUNCTION_7_1();
    v16(v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[260] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_7_73(v17);

    return static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)();
  }
}

{
  *(v1 + 2040) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 1656);
  *(*(v0 + 2032) + 32) = v1;
  v2 = v1;
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = 0u;
  OUTLINED_FUNCTION_31_28();

  *(v0 + 2064) = *(v0 + 2032);
  *(v0 + 2048) = 0u;
  OUTLINED_FUNCTION_19_38((*(v0 + 1800) + 64));
  v3 = OUTLINED_FUNCTION_7_1();
  v4(v3);
  __swift_project_boxed_opaque_existential_1((v0 + 1416), *(v0 + 1440));
  OUTLINED_FUNCTION_7_1();
  v5 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1416));
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 1800) + 184), *(*(v0 + 1800) + 208));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 2072) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_6_85(v6);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_19_38((*(v0 + 1800) + 64));
    v16 = OUTLINED_FUNCTION_7_1();
    v17(v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 2080) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_7_73(v18);

    return static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  outlined init with take of SPHConversation((v0 + 1336), *(v0 + 1752));
  v1 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1536);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 2088) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 1496));
  if (v0)
  {

    v7 = SingleCallResultFlow.makeOutput();
  }

  else
  {
    v7 = SingleCallResultFlow.makeOutput();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[237];
  v2 = v0[231];
  v3 = v0[225];
  outlined init with copy of SingleResultCallHistoryModel(v0[243], v1, type metadata accessor for SingleResultCallHistoryModel);
  swift_storeEnumTagMultiPayload();

  OutputGenerationManifest.responseViewId.setter();
  v4 = v3[26];
  v5 = v3[27];
  __swift_project_boxed_opaque_existential_1(v3 + 23, v4);
  v0[200] = v2;
  v0[201] = _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 197);
  outlined init with copy of SingleResultCallHistoryModel(v1, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[262] = v7;
  *v7 = v8;
  v7[1] = SingleCallResultFlow.makeOutput();
  v9 = v0[258];
  v10 = v0[250];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v0 + 167, v0 + 197, v9, v10, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1576));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1944);
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(*(v0 + 1896), type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(v1, type metadata accessor for SingleResultCallHistoryModel);
  outlined init with take of SPHConversation((v0 + 1336), *(v0 + 1752));
  v2 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1536);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 2000);
  OUTLINED_FUNCTION_15_54();
  (*(v4 + 8))(v3);

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v2, v1);

  v5 = *(v0 + 8);
  v6 = *(v0 + 2104);

  return v5(v6);
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 2008) + 16) = 0;

  v1 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1712);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_54();

  OUTLINED_FUNCTION_17_47();

  v0 = OUTLINED_FUNCTION_11_61();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2008);

  *(v1 + 16) = 0;

  v2 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1808);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1856);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_54();

  OUTLINED_FUNCTION_17_47();

  v0 = OUTLINED_FUNCTION_11_61();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 2032) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_23_0();

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0, 0);

  v0 = OUTLINED_FUNCTION_11_61();

  return v1(v0);
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1456);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  (*(v0[249] + 8))(v0[250], v0[248]);
  v1 = v0[257];
  v2 = v0[256];

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v2, v1);

  v3 = OUTLINED_FUNCTION_11_61();

  return v4(v3);
}

uint64_t implicit closure #4 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #4 in SingleCallResultFlow.makeOutput(), 0, 0);
}

uint64_t implicit closure #4 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  INSearchCallHistoryIntent.isSingleDateRequest.getter();
  v5 = v4;
  v6 = INSearchCallHistoryIntent.isTimeRangeRequest.getter();
  OUTLINED_FUNCTION_24_5();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = implicit closure #4 in SingleCallResultFlow.makeOutput();

  return (v10)(v3, v2, v5 & 1, v6 & 1);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t implicit closure #6 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #6 in SingleCallResultFlow.makeOutput(), 0, 0);
}

uint64_t implicit closure #6 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #6 in SingleCallResultFlow.makeOutput();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t closure #1 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v6[-v3];
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB17NLContextProviderCySo010INIdentifyF20CallerIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB17NLContextProviderCySo010INIdentifyF20CallerIntentResponseCGMR);
  swift_initStackObject();
  specialized IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)(3, 0, v4);
  OutputGenerationManifest.nlContextUpdate.setter();
  return OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
}

void *SingleCallResultFlow.makeFollowUpAction()()
{
  v1 = v0;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(INCallRecordFilter);
  v6 = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(0, 0, 0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v7 = *(v1 + 24);
  v8 = v6;
  v9 = v7;
  v10 = INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(v6, v7, 0, 5, 0, 0, 0, 0, 0, 0);
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(*(v1 + 16), *(v1 + 40), (v1 + 64));
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    *v4 = 0xD000000000000014;
    v4[1] = 0x8000000000447C40;
    v4[2] = 0xD00000000000001FLL;
    v4[3] = 0x80000000004617C0;
    swift_storeEnumTagMultiPayload();
    _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    v12 = v4;
    PhoneError.logged()(v13);
    _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(v4, type metadata accessor for PhoneError);
    swift_willThrow();
  }

  return v12;
}

uint64_t SingleCallResultFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + 104);

  outlined consume of SingleCallResultFlow.State(*(v0 + 336));
  return v0;
}

uint64_t SingleCallResultFlow.__deallocating_deinit()
{
  SingleCallResultFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance SingleCallResultFlow(uint64_t a1)
{
  v6 = (*(**v1 + 224) + **(**v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SingleCallResultFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleCallResultFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

id @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithParticipants:v7.super.isa callTypes:a2 callCapability:a3];

  return v8;
}

uint64_t outlined copy of SingleCallResultFlow.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t outlined consume of SingleCallResultFlow.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin06Singleb6ResultC0C5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for SingleCallResultFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for SingleCallResultFlow.State(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t partial apply for implicit closure #4 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #4 in SingleCallResultFlow.makeOutput()(v3, v4);
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #6 in SingleCallResultFlow.makeOutput()(v3, v4);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #1 in SingleCallResultFlow.executeRead()(v3, v0 + 16);
}

uint64_t _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_31_28()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t SingleResultCallHistoryModel.init(displayName:displayCallDetail:displayDateTime:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0xD000000000000017;
  a9[1] = 0x8000000000456D10;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  v10 = a9 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);

  return outlined init with take of SearchCallHistoryBinaryButtonModel?(a8, v10);
}

uint64_t type metadata accessor for SingleResultCallHistoryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryModel;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.searchCallHistoryBinaryButtonModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);

  return outlined init with copy of SearchCallHistoryBinaryButtonModel?(v3, a1);
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000022 && 0x80000000004617E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SingleResultCallHistoryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x49746361746E6F63;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleResultCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = 1;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 64);
    v14[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for SingleResultCallHistoryModel(0);
    v14[14] = 5;
    type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    OUTLINED_FUNCTION_0_108();
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(v11, v12, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMR);
  OUTLINED_FUNCTION_7();
  v29 = v8;
  v30 = v7;
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SingleResultCallHistoryModel(0);
  __chkstk_darwin(v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v32 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  v31 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v27 = v6;
    v17 = v29;
    v16 = v30;
    v39 = 0;
    *v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[1] = v18;
    v38 = 1;
    v13[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v13[3] = v19;
    v37 = 2;
    v13[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v13[5] = v20;
    v36 = 3;
    v13[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v13[7] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v35 = 4;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13[8] = v33;
    type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v34 = 5;
    OUTLINED_FUNCTION_0_108();
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(v22, v23, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
    v24 = v27;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v31, v16);
    outlined init with take of SearchCallHistoryBinaryButtonModel?(v24, v13 + *(v11 + 36));
    outlined init with copy of SingleResultCallHistoryModel(v13, v28);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return outlined destroy of SingleResultCallHistoryModel(v13);
  }

  OUTLINED_FUNCTION_3_104();
  __swift_destroy_boxed_opaque_existential_1(v32);

  if (!v11)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_8:

    if (!v15)
    {
      return result;
    }
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v15)
  {
  }

  return result;
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultCallHistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleResultCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultCallHistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleResultCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel, &protocol conformance descriptor for SingleResultCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SingleResultCallHistoryModel(uint64_t a1)
{
  type metadata accessor for [String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SearchCallHistoryBinaryButtonModel?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SingleResultCallHistoryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:callDurationInterval:transcript:transcriptTitle:callbackDirectInvocation:repeatDirectInvocation:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  *a9 = 0xD000000000000015;
  *(a9 + 8) = 0x8000000000456D30;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  v18 = type metadata accessor for SingleResultVoicemailModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v19 = a15;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 88) = a16;
  CodableAceObject.init(wrappedValue:)();

  v20 = a9 + *(v18 + 60);

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a17, v20);
}

uint64_t type metadata accessor for SingleResultVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultVoicemailModel;
  if (!type metadata singleton initialization cache for SingleResultVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SingleResultVoicemailModel.resultViewID.getter()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

uint64_t static SingleResultVoicemailModel.resultViewID.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = a1;
  off_55DDE8 = a2;
}

double key path getter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_55DDE8;
  *a1 = static SingleResultVoicemailModel.resultViewID;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = v2;
  off_55DDE8 = v1;
}

uint64_t SingleResultVoicemailModel.transcript.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.getter()
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleResultVoicemailModel.callbackDirectInvocation.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.getter()
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleResultVoicemailModel.repeatDirectInvocation.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleResultVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000000004539D0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x697263736E617274 && a2 == 0xEA00000000007470;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x697263736E617274 && a2 == -1196430878757850000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x8000000000461810 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x8000000000461830 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000022 && 0x80000000004617E0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleResultVoicemailModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x617275446C6C6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x49746361746E6F63;
      break;
    case 7:
      result = 0x697263736E617274;
      break;
    case 8:
      result = 0x697263736E617274;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleResultVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SingleResultVoicemailModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleResultVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_4_81(1);
  OUTLINED_FUNCTION_4_81(2);
  OUTLINED_FUNCTION_4_81(3);
  OUTLINED_FUNCTION_4_81(4);
  LOBYTE(v17) = 5;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = *(v3 + 88);
  v16 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_81(7);
  OUTLINED_FUNCTION_4_81(8);
  v15 = v7;
  type metadata accessor for SingleResultVoicemailModel(0);
  LOBYTE(v17) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v17) = 10;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v17) = 11;
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_7_74();
  _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(v11, v12, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v15 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v59 = v7;
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMR);
  OUTLINED_FUNCTION_7();
  v55 = v14;
  v56 = v15;
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v60 = type metadata accessor for SingleResultVoicemailModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v18);
  v62 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v21 = a1[4];
  v58 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  v57 = v17;
  v23 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v63 = v23;
    v25 = 0;
    v3 = 0;
    LODWORD(v10) = 0;
    LODWORD(v13) = 0;
    OUTLINED_FUNCTION_0_109();
  }

  else
  {
    v21 = v6;
    LOBYTE(v65) = 0;
    v25 = v55;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v62;
    *v62 = v24;
    v28[1] = v29;
    OUTLINED_FUNCTION_5_85(1);
    v28[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[3] = v30;
    OUTLINED_FUNCTION_5_85(2);
    v28[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[5] = v31;
    OUTLINED_FUNCTION_5_85(3);
    v28[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[7] = v32;
    OUTLINED_FUNCTION_5_85(4);
    v28[8] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[9] = v33;
    OUTLINED_FUNCTION_5_85(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v28[10] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v64 = 6;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[11] = v65;
    OUTLINED_FUNCTION_5_85(7);
    v28[12] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[13] = v35;
    OUTLINED_FUNCTION_5_85(8);
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v63 = 0;
    v28[14] = v36;
    v28[15] = v37;
    LOBYTE(v65) = 9;
    LODWORD(v17) = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    v22 = v57;
    v38 = v63;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v63 = v38;
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_8_72();
      v40(v39);
      LODWORD(v56) = 0;
      OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_12_61();
    }

    else
    {
      v25 = v59 + 32;
      v41 = *(v59 + 32);
      v41(v62 + v60[13], v13, v61);
      LOBYTE(v65) = 10;
      v22 = v57;
      v42 = v63;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v63 = v42;
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_8_72();
        v44(v43);
        OUTLINED_FUNCTION_1_113();
        OUTLINED_FUNCTION_12_61();
        LODWORD(v56) = 1;
      }

      else
      {
        v41(v62 + v60[14], v10, v61);
        LOBYTE(v65) = 11;
        OUTLINED_FUNCTION_7_74();
        _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(v45, v46, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
        v22 = v57;
        v47 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v63 = v47;
        if (!v47)
        {
          v50 = OUTLINED_FUNCTION_8_72();
          v51(v50);
          v52 = v62;
          outlined init with take of SearchCallHistoryBinaryButtonModel(v21, v62 + v60[15]);
          outlined init with copy of SearchCallHistoryBinaryButtonModel(v52, v54, type metadata accessor for SingleResultVoicemailModel);
          __swift_destroy_boxed_opaque_existential_1(v58);
          return outlined destroy of SingleResultVoicemailModel(v52);
        }

        v48 = OUTLINED_FUNCTION_8_72();
        v49(v48);
        OUTLINED_FUNCTION_2_108();
        OUTLINED_FUNCTION_12_61();
        LODWORD(v56) = 1;
        LODWORD(v57) = 1;
      }
    }
  }

  v26 = v62;
  __swift_destroy_boxed_opaque_existential_1(v58);

  if (v25)
  {

    if (!v3)
    {
LABEL_6:
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
LABEL_7:
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_22:

    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:

  if (v13)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (v17)
  {
LABEL_9:
  }

LABEL_10:
  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v56)
  {
    result = (*(v59 + 8))(v26 + v60[13], v61);
  }

  if (v57)
  {
    return (*(v59 + 8))(v26 + v60[14], v61);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  v4 = OUTLINED_FUNCTION_19_0();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional __swiftcall VoicemailUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_VoicemailUpdateAction_repeatVoicemail;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_VoicemailUpdateAction_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t VoicemailUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F56746165706572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t instantiation function for generic protocol witness table for SingleResultVoicemailModel(uint64_t a1)
{
  result = _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel, &protocol conformance descriptor for SingleResultVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailUpdateAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional *a2@<X8>)
{
  result.value = VoicemailUpdateAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailUpdateAction@<X0>(uint64_t *a1@<X8>)
{
  result = VoicemailUpdateAction.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance VoicemailUpdateAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance VoicemailUpdateAction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.serializeData()();
}

void type metadata completion function for SingleResultVoicemailModel(uint64_t a1)
{
  type metadata accessor for [String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryBinaryButtonModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VoicemailUpdateAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

void SingleVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:unseen:openVoicemailRSKE:openContactRSKE:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, void *a11, uint64_t a12)
{
  *a9 = 0x6F56656C676E6953;
  *(a9 + 8) = 0xEF6C69616D656369;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  type metadata accessor for SingleVoicemailModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v15 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  CodableAceObject.init(wrappedValue:)();
}

uint64_t type metadata accessor for SingleVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleVoicemailModel;
  if (!type metadata singleton initialization cache for SingleVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.getter()
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.setter(uint64_t a1)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleVoicemailModel.openVoicemailRSKE.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleVoicemailModel.openContactRSKE.getter()
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.openContactRSKE.setter(uint64_t a1)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleVoicemailModel.openContactRSKE.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SingleVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6565736E75 && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000000461850 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746E6F436E65706FLL && a2 == 0xEF454B5352746361)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleVoicemailModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x617275446C6C6163;
      break;
    case 5:
      result = 0x6E6565736E75;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x746E6F436E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleVoicemailModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  OUTLINED_FUNCTION_6_84();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v17 = 1;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 4;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 5;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SingleVoicemailModel(0);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 7;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v40 = v3;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMR);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = type metadata accessor for SingleVoicemailModel(0);
  __chkstk_darwin(v41);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v43 = a1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  v20 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v36 = v6;
    v37 = v9;
    v42 = v11;
    v21 = v38;
    v52 = 0;
    *v16 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 1) = v22;
    v51 = 1;
    OUTLINED_FUNCTION_8_73();
    *(v16 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 3) = v23;
    v50 = 2;
    OUTLINED_FUNCTION_8_73();
    *(v16 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 5) = v24;
    v49 = 3;
    OUTLINED_FUNCTION_8_73();
    *(v16 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 7) = v25;
    v48 = 4;
    OUTLINED_FUNCTION_8_73();
    *(v16 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 9) = v26;
    v47 = 5;
    OUTLINED_FUNCTION_8_73();
    v16[80] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v46 = 6;
    v27 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    v28 = v37;
    v29 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v41 + 40);
    v35 = v27;
    v37 = *(v40 + 32);
    v37(&v16[v30], v28, v29);
    v45 = 7;
    v31 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = OUTLINED_FUNCTION_0_110();
    v33(v32);
    v37(&v16[*(v41 + 44)], v31, v29);
    outlined init with copy of SingleVoicemailModel(v16, v21);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return outlined destroy of SingleVoicemailModel(v16);
  }

  OUTLINED_FUNCTION_2_109();
  __swift_destroy_boxed_opaque_existential_1(v43);

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v19)
  {
LABEL_5:
  }

LABEL_6:
  if (v17)
  {
    return (*(v40 + 8))(&v16[*(v41 + 40)], v44);
  }

  return result;
}