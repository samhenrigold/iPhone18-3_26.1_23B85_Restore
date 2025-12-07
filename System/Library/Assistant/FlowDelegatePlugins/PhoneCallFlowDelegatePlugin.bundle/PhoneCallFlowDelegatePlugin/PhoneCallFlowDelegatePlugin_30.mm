uint64_t _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA0A19ReferenceResolutionO16ResolvedEntities33_40DC1C1602FC4D56D41C5DF037AE58F9LLVSg_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr))
{
  v8 = a1;
  outlined init with copy of SignalProviding(a4, v12);
  type metadata accessor for PhoneSelfPerformanceLogger();
  swift_initStackObject();

  PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v12, v8, a2, a3);
  a5(&v11);
  v9 = v11;

  return v9;
}

uint64_t ContactSourceType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E69737542727273;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x54746C7561666564;
}

void *static PhoneReferenceResolution.appsToRrEntities(apps:device:)(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  __chkstk_darwin(v3 - 8);
  v68 = v63 - v4;
  OUTLINED_FUNCTION_15_0();
  v5 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  v83 = v9;
  __chkstk_darwin(v10);
  v82 = v63 - v11;
  OUTLINED_FUNCTION_15_0();
  v71 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v70 = (v16 - v15);
  OUTLINED_FUNCTION_15_0();
  v74 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v20 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  UUID.init()();
  v65 = UUID.uuidString.getter();
  v78 = v27;
  (*(v22 + 8))(v26, v20);
  v79 = specialized Array.count.getter(a1);
  v28 = 0;
  v76 = a1;
  v77 = a1 & 0xC000000000000001;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  v69 = (v13 + 8);
  v64 = (v7 + 16);
  v63[2] = v7 + 8;
  v72 = v18 + 8;
  v66 = v7;
  v63[1] = v7 + 32;
  v29 = _swiftEmptyArrayStorage;
  v67 = v5;
  while (1)
  {
    if (v79 == v28)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_18;
    }

    if (v77)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *(v75 + 16))
      {
        goto LABEL_34;
      }

      v30 = *(v76 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      break;
    }

    App.appIdentifier.getter();
    if (!v31)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.siriPhone);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_10_0(v51))
      {
        v52 = OUTLINED_FUNCTION_65_0();
        *v52 = 0;
        OUTLINED_FUNCTION_33(&dword_0, v53, v54, "#ReferenceResolution appsToRrEntities get unexpected app id during appsToRrEntities, return an empty rrEntities array");
        OUTLINED_FUNCTION_26_0(v52);
      }

      return _swiftEmptyArrayStorage;
    }

    v80 = v29;

    OUTLINED_FUNCTION_6_67();
    UsoIdentifier.init(value:appBundleId:namespace:)();
    type metadata accessor for UsoEntityBuilder_common_App();
    swift_allocObject();
    UsoEntityBuilder_common_App.init()();
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v32 = v70;
    OUTLINED_FUNCTION_40_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    type metadata accessor for AppInfoBuilder();
    swift_initStackObject();
    v81 = v30;
    AppInfoBuilder.getAppName(_:requestedLocale:)(v30, v32);
    (*v69)(v32, v71);
    dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();

    if (dispatch thunk of UsoEntityBuilder_common_App.name.getter())
    {
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
    }

    if (!static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)())
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v55 = type metadata accessor for Logger();
      v56 = __swift_project_value_buffer(v55, static Logger.siriPhone);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_10_0(v58))
      {
        v59 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v59);
        _os_log_impl(&dword_0, v57, v56, "#ReferenceResolution appsToRrEntities error to convert common app entity builder to common app entity", v32, 2u);
        OUTLINED_FUNCTION_52();
      }

      v60 = OUTLINED_FUNCTION_17_39();
      v61(v60);
      return _swiftEmptyArrayStorage;
    }

    v33 = type metadata accessor for GroupIdentifier();
    v34 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v33);

    v35 = v82;
    OUTLINED_FUNCTION_6_67();
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    GroupIdentifier.init(id:seq:)();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    RREntity.group.setter();
    v36 = v67;
    (*v64)(v83, v35, v67);
    v29 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v41;
    }

    v37 = v29[2];
    if (v37 >= v29[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v42;
    }

    v38 = v66;
    (*(v66 + 8))(v82, v36);
    v39 = OUTLINED_FUNCTION_17_39();
    v40(v39);
    v29[2] = v37 + 1;
    (*(v38 + 32))(v29 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, v83, v36);
    ++v28;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_18:
  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.siriPhone);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v45))
  {
    v46 = OUTLINED_FUNCTION_65_0();
    *v46 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v47, v48, "#ReferenceResolution appsToRrEntities successfully generate rrEntities for apps disambigation");
    OUTLINED_FUNCTION_26_0(v46);
  }

  return v29;
}

uint64_t static PhoneReferenceResolution.getContactSourceType(contactSource:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000016 && 0x80000000004586F0 == a2;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  v5 = 1;
  if (a1 != 0xD000000000000022 || 0x800000000045ABC0 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t PhoneRRTarget.init(target:source:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with take of PhoneRRTarget.Target(a1, a3);
  result = type metadata accessor for PhoneRRTarget(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void *static PhoneReferenceResolution.resolveUpdateSKIntent(nlIntent:siriKitIntent:deviceState:referenceResolver:contactGroupResolver:siriKitEventSender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v45 = a4;
  v46 = a6;
  v52 = a5;
  v48 = a3;
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_7();
  v47 = v9;
  __chkstk_darwin(v10);
  v51 = &v44 - v11;
  OUTLINED_FUNCTION_15_0();
  v12 = type metadata accessor for MatchedResultsSetting();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 144))(v19, v20);
  v55 = v21;
  v22 = *(v14 + 104);
  v22(v18, enum case for MatchedResultsSetting.defaultMatching(_:), v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasOnlyCallVerb()() && static UsoUtils.buildDummyReferenceEntity()())
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v55;
    (*(v14 + 8))(v18, v12);
    v22(v18, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v12);
  }

  if (!specialized Array.count.getter(v21))
  {
    goto LABEL_24;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  __chkstk_darwin(v24);
  *(&v44 - 4) = &v55;
  *(&v44 - 3) = v52;
  *(&v44 - 2) = v18;
  static SiriKitEventSender.current.getter();
  v28 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA0A19ReferenceResolutionO16ResolvedEntities33_40DC1C1602FC4D56D41C5DF037AE58F9LLVSg_Tt4g5(302, v26, v27, v54, partial apply for closure #1 in static PhoneReferenceResolution.resolveUpdateSKIntent(nlIntent:siriKitIntent:deviceState:referenceResolver:contactGroupResolver:siriKitEventSender:));
  v30 = v29;
  v52 = v31;
  v33 = v32;
  __swift_destroy_boxed_opaque_existential_1(v54);
  if (!v28)
  {
    goto LABEL_23;
  }

  v44 = v33;
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  type metadata accessor for SiriKitEvent();
  LOBYTE(v54[0]) = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  if (specialized Array.count.getter(v28))
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_23_27();
    (*(v34 + 16))(v28);
  }

  v35 = specialized Array.count.getter(v52);
  v36 = v50;
  if (v35)
  {
    outlined init with copy of SignalProviding(v45, v54);
    outlined init with copy of SignalProviding(v46, v53);
    v37 = swift_allocObject();
    outlined init with take of SPHConversation(v54, v37 + 16);
    outlined init with take of SPHConversation(v53, v37 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    v38 = Transformer.transform.getter();
    specialized _arrayForceCast<A, B>(_:)();
    *&v54[0] = v39;
    v38(v53, v54);

    v40 = *&v53[0];
    if (*&v53[0])
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_23_27();
      (*(v41 + 32))(v40);
    }

    (*(v47 + 8))(v51, v36);
  }

  v42 = v30[2];

  if (!v42)
  {
LABEL_23:

LABEL_24:
    v30 = _swiftEmptyArrayStorage;
  }

  (*(v14 + 8))(v18, v12);

  return v30;
}

uint64_t closure #1 in static PhoneReferenceResolution.resolveUpdateSKIntent(nlIntent:siriKitIntent:deviceState:referenceResolver:contactGroupResolver:siriKitEventSender:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for MatchedResultsSetting();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a3, v7, v9);

  static PhoneReferenceResolution.resolveEntities(_:referenceResolver:matchedResultsSetting:)(v12, a2, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = (*(v8 + 8))(v11, v7);
  *a4 = v14;
  a4[1] = v16;
  a4[2] = v18;
  a4[3] = v20;
  return result;
}

void static PhoneReferenceResolution.resolveEntities(_:referenceResolver:matchedResultsSetting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = type metadata accessor for ContactQuery();
  v6 = *(v92 - 8);
  __chkstk_darwin(v92);
  v76 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v73 - v9;
  __chkstk_darwin(v11);
  v13 = v73 - v12;
  v14 = type metadata accessor for PhoneRRTarget.Target(0);
  __chkstk_darwin(v14);
  v16 = (v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PhoneRRTarget(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a2;
  v96 = a3;
  v20 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:), v94, a1);
  v100 = _swiftEmptyArrayStorage;
  v101 = _swiftEmptyArrayStorage;
  v99 = _swiftEmptyArrayStorage;
  v87 = v20[2];
  if (!v87)
  {
LABEL_66:

    return;
  }

  v73[0] = 0;
  v21 = 0;
  v86 = v20 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v91 = (v6 + 32);
  v81 = (v6 + 16);
  v80 = v6 + 8;
  v22 = _swiftEmptyArrayStorage;
  v78 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  v83 = v17;
  v84 = v20;
  v85 = v18;
  v88 = v6;
  v75 = v10;
  v74 = v13;
  v73[1] = v14;
  v79 = v16;
  while (2)
  {
    if (v21 >= v20[2])
    {
      goto LABEL_70;
    }

    v90 = v22;
    v23 = v21 + 1;
    v24 = v93;
    _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOcTm_0(&v86[*(v18 + 72) * v21], v93);
    _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOcTm_0(v24, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v89 = v23;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v36 = *v16;
        v37 = dispatch thunk of UsoEntity_common_Group.name.getter();
        if (v38)
        {
          v39 = v37;
          v40 = v38;

          v41 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v41 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v41)
          {
            goto LABEL_34;
          }
        }

        v42 = dispatch thunk of UsoEntity_common_Group.members.getter();
        if (!v42)
        {
LABEL_34:
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Logger.siriPhone);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_0, v50, v51, "#ReferenceResolution resolved to a named common_Group", v52, 2u);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v78 = v99;
LABEL_57:
          v16 = v79;
          goto LABEL_58;
        }

        v43 = v42;
        v77 = v36;
        v44 = v76;
        v45 = _swiftEmptyArrayStorage;
        v98 = _swiftEmptyArrayStorage;
        v46 = specialized Array.count.getter(v42);
        v47 = 0;
        while (1)
        {
          if (v46 == v47)
          {

            v53 = specialized Array.count.getter(v45);
            if (v53)
            {
              v54 = v53;
              v98 = _swiftEmptyArrayStorage;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 & ~(v53 >> 63), 0);
              if (v54 < 0)
              {
                goto LABEL_71;
              }

              v55 = 0;
              v56 = v98;
              do
              {
                if ((v45 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                }

                UsoEntity_common_Agent.toContactQuery()();

                v98 = v56;
                v58 = v56[2];
                v57 = v56[3];
                if (v58 >= v57 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
                  v56 = v98;
                }

                ++v55;
                v56[2] = v58 + 1;
                (*(v88 + 32))(v56 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v58, v44, v92);
              }

              while (v54 != v55);
            }

            else
            {

              v56 = _swiftEmptyArrayStorage;
            }

            v10 = v75;
            v13 = v74;
            v17 = v83;
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v59 = type metadata accessor for Logger();
            __swift_project_value_buffer(v59, static Logger.siriPhone);
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();
            v62 = os_log_type_enabled(v60, v61);
            v6 = v88;
            if (v62)
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&dword_0, v60, v61, "#ReferenceResolution resolved to an unnamed common_Group", v63, 2u);
            }

            specialized Array.append<A>(contentsOf:)(v56);

            goto LABEL_57;
          }

          if ((v43 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_69;
            }
          }

          v48 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          dispatch thunk of CodeGenListEntry.entry.getter();

          ++v47;
          if (v97)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v45 = v98;
            v47 = v48;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return;
      case 2:
        v27 = v92;
        v28 = *v91;
        (*v91)(v13, v16, v92);
        (*v81)(v10, v13, v27);
        v29 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v71;
        }

        v30 = *(v29 + 2);
        if (v30 >= *(v29 + 3) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v72;
        }

        v31 = v92;
        (*(v6 + 8))(v13, v92);
        *(v29 + 2) = v30 + 1;
        v28(&v29[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30], v10, v31);
        v100 = v29;
        v17 = v83;
        goto LABEL_58;
      case 3:
        _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOhTm_0(v16, type metadata accessor for PhoneRRTarget.Target);
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Logger.siriPhone);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_0, v33, v34, "#ReferenceResolution resolveEntities can't resolve apps", v35, 2u);
        }

        goto LABEL_58;
      default:
        v26 = *v16;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v101 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v82 = v101;
LABEL_58:
        if (*(v93 + *(v17 + 20)) == 3)
        {
          v64 = 2;
        }

        else
        {
          v64 = *(v93 + *(v17 + 20));
        }

        v65 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 16) + 1, 1, v65);
          v65 = v69;
        }

        v67 = *(v65 + 16);
        v66 = *(v65 + 24);
        v68 = v65;
        if (v67 >= v66 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v65);
          v68 = v70;
        }

        _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOhTm_0(v93, type metadata accessor for PhoneRRTarget);
        v68[2] = v67 + 1;
        v22 = v68;
        *(v68 + v67 + 32) = v64;
        v21 = v89;
        v20 = v84;
        v18 = v85;
        if (v89 == v87)
        {
          goto LABEL_66;
        }

        continue;
    }
  }
}

uint64_t static PhoneReferenceResolution.isTelephonyTargetFromSrr(contactSourceType:)(char a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_7:

      return v3 & 1;
    }

LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

PhoneCallFlowDelegatePlugin::ContactSourceType_optional __swiftcall ContactSourceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactSourceType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::ContactSourceType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactSourceType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ContactSourceType_optional *a2@<X8>)
{
  result.value = ContactSourceType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactSourceType@<X0>(uint64_t *a1@<X8>)
{
  result = ContactSourceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t outlined init with take of PhoneRRTarget.Target?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PhoneRRTarget.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRRTarget.Target(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ContactSourceType and conformance ContactSourceType()
{
  result = lazy protocol witness table cache variable for type ContactSourceType and conformance ContactSourceType;
  if (!lazy protocol witness table cache variable for type ContactSourceType and conformance ContactSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactSourceType and conformance ContactSourceType);
  }

  return result;
}

void type metadata completion function for PhoneRRTarget(uint64_t a1)
{
  type metadata accessor for PhoneRRTarget.Target(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContactSourceType?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ContactSourceType?()
{
  if (!lazy cache variable for type metadata for ContactSourceType?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContactSourceType?);
    }
  }
}

uint64_t type metadata completion function for PhoneRRTarget.Target(uint64_t a1)
{
  result = type metadata accessor for CNContactStore(319, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UsoEntity_common_Group();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContactQuery();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for UsoEntity_common_App();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactSourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_88();
  v5(v4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t key path setter for PhoneSearchCallHistoryIntent.Builder.callTypes : PhoneSearchCallHistoryIntent.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.callTypes.setter()
{
  v2 = OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_11_2(v2, v3);
  *(v1 + 16) = v0;
}

uint64_t (*PhoneSearchCallHistoryIntent.Builder.callTypes.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_7_50(v0);
  return CallingIntentNeedsValueFlowStrategy.rePromptCount.modify;
}

uint64_t key path setter for PhoneSearchCallHistoryIntent.Builder.preferredCallProvider : PhoneSearchCallHistoryIntent.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 144))(v6);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.preferredCallProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider;
  OUTLINED_FUNCTION_4_4(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider, a1);
  return outlined init with copy of SpeakableString?(v2 + v4, a2);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.preferredCallProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for PhoneSearchCallHistoryIntent.Builder.callCapabilities : PhoneSearchCallHistoryIntent.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.callCapabilities.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_callCapabilities;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_callCapabilities, a2);
  *(v2 + v4) = a1;
}

uint64_t key path setter for PhoneSearchCallHistoryIntent.Builder.recipient : PhoneSearchCallHistoryIntent.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.recipient.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_recipient;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_recipient, a2);
  *(v2 + v4) = a1;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneSearchCallHistoryIntent.Builder.init()();
  return v0;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.init()()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_callCapabilities) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_recipient) = 0;
  return v0;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.__allocating_init(preferredCallProvider:recipient:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7();
  v4 = swift_allocObject();
  PhoneSearchCallHistoryIntent.Builder.init(preferredCallProvider:recipient:)(a1, a2);
  return v4;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.init(preferredCallProvider:recipient:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider;
  v10 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_callCapabilities) = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_recipient;
  *(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_recipient) = 0;
  (*(*(v10 - 8) + 32))(v8, a1, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v8, v2 + v9);
  swift_endAccess();
  swift_beginAccess();
  *(v2 + v11) = a2;

  return v2;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withCallTypes(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 120);

  v1(v2);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withPreferredCallProvider(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  outlined init with copy of SpeakableString?(a1, &v8 - v4);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 144))(v5);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withPreferredCallProvider(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v11 - v6;

  SpeakableString.init(print:speak:)();
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 144))(v7);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withCallCapabilities(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 168);

  v1(v2);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withRecipient(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 192);

  v1(v2);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.withRecipient(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = (*(*a1 + 128))();
  }

  (*(*v1 + 192))(a1);
}

uint64_t PhoneSearchCallHistoryIntent.Builder.build()()
{
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v0 = swift_allocObject();

  PhoneSearchCallHistoryIntent.init(builder:)();
  return v0;
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v1 = swift_allocObject();
  PhoneSearchCallHistoryIntent.init(builder:)();
  return v1;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent7Builder_preferredCallProvider);

  return v0;
}

uint64_t key path setter for PhoneSearchCallHistoryIntent.mockGlobals : PhoneSearchCallHistoryIntent(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);
  v4 = *a1;
  return v3(v2);
}

void PhoneSearchCallHistoryIntent.mockGlobals.setter()
{
  v2 = OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_11_2(v2, v3);
  v4 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t (*PhoneSearchCallHistoryIntent.mockGlobals.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_7_50(v0);
  return ActionableCallControlFlow.state.modify;
}

uint64_t *PhoneSearchCallHistoryIntent.init(builder:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  v0[2] = 0;
  OUTLINED_FUNCTION_16_24();
  v0[3] = (*(v5 + 112))();
  OUTLINED_FUNCTION_16_24();
  (*(v6 + 136))();
  outlined init with take of SpeakableString?(v1, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider);
  OUTLINED_FUNCTION_16_24();
  *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_callCapabilities) = (*(v7 + 160))();
  OUTLINED_FUNCTION_16_24();
  *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_recipient) = (*(v8 + 184))();
  if (((*(*v0 + 168))() & 1) == 0)
  {
    v9 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_424FD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCmMd, &_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCmMR);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:type:_:)("Building an instance of %s without all required inputs", v15);
  }

  return v2;
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(callTypes:preferredCallProvider:callCapabilities:recipient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for PhoneSearchCallHistoryIntent.Builder(0);
  swift_allocObject();
  PhoneSearchCallHistoryIntent.Builder.init()();
  OUTLINED_FUNCTION_2_0();
  v11 = (*(v10 + 224))(a1);

  (*(*v11 + 232))(a2);

  OUTLINED_FUNCTION_2_0();
  v13 = (*(v12 + 248))(a3);

  v14 = (*(*v13 + 256))(a4);

  v15 = (*(v5 + 160))(v14);

  outlined destroy of SpeakableString?(a2);
  return v15;
}

Swift::Bool __swiftcall PhoneSearchCallHistoryIntent.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider, &v8 - v3);
  v5 = type metadata accessor for SpeakableString();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  outlined destroy of SpeakableString?(v4);
  return EnumTagSinglePayload != 1 && *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_recipient) != 0;
}

void PhoneSearchCallHistoryIntent.getProperty(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = a1 == 0x657079546C6C6163 && a2 == 0xE900000000000073;
  if (v14 || (OUTLINED_FUNCTION_2_91(0x657079546C6C6163, 0xE900000000000073) & 1) != 0)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    OUTLINED_FUNCTION_18_26(v15);
    OUTLINED_FUNCTION_65();

    return;
  }

  v17 = a1 == 0xD000000000000015 && 0x80000000004522D0 == a2;
  if (v17 || (OUTLINED_FUNCTION_2_91(0xD000000000000015, 0x80000000004522D0) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider, v13);
    v18 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      *(a3 + 24) = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v18 - 8) + 32))(boxed_opaque_existential_1, v13, v18);
      goto LABEL_19;
    }

    v19 = v13;
LABEL_16:
    outlined destroy of SpeakableString?(v19);
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
LABEL_19:
    OUTLINED_FUNCTION_65();
    return;
  }

  v21 = a1 == 0xD000000000000010 && 0x8000000000452390 == a2;
  if (v21 || (OUTLINED_FUNCTION_2_91(0xD000000000000010, 0x8000000000452390) & 1) != 0)
  {
    goto LABEL_6;
  }

  v22 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
  if (!v22 && (OUTLINED_FUNCTION_2_91(0x6E65697069636572, 0xE900000000000074) & 1) == 0)
  {
    v25 = a1 == 0xD000000000000012 && 0x800000000045FCF0 == a2;
    if (v25 || (OUTLINED_FUNCTION_2_91(0xD000000000000012, 0x800000000045FCF0) & 1) != 0)
    {
      v26 = 4;
    }

    else
    {
      v28 = a1 == 0xD000000000000012 && 0x800000000045FD10 == a2;
      if (v28 || (OUTLINED_FUNCTION_2_91(0xD000000000000012, 0x800000000045FD10) & 1) != 0)
      {
        v27 = specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_13_47();
      v30 = v14 && v29 == a2;
      if (v30 || (OUTLINED_FUNCTION_2_91(0xD000000000000014, v29) & 1) != 0)
      {
        v27 = specialized PhoneSearchCallHistoryIntentProperties.isRequestForFaceTime.getter();
        goto LABEL_42;
      }

      v31 = a1 == 0xD000000000000011 && 0x800000000045FD50 == a2;
      if (v31 || (OUTLINED_FUNCTION_2_91(0xD000000000000011, 0x800000000045FD50) & 1) != 0)
      {
        v27 = specialized PhoneSearchCallHistoryIntentProperties.isRequestForVideo.getter();
        goto LABEL_42;
      }

      v32 = a1 == 0xD000000000000015 && 0x8000000000454570 == a2;
      if (v32 || (OUTLINED_FUNCTION_2_91(0xD000000000000015, 0x8000000000454570) & 1) != 0)
      {
        v26 = 5;
      }

      else
      {
        OUTLINED_FUNCTION_13_47();
        v34 = v14 && v33 == a2;
        if (v34 || (OUTLINED_FUNCTION_2_91(0xD000000000000014, v33) & 1) != 0)
        {
          v26 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_13_47();
          v36 = v14 && v35 == a2;
          if (!v36 && (OUTLINED_FUNCTION_2_91(0xD000000000000014, v35) & 1) == 0)
          {
            v37 = a1 == 0x61746E6F43746567 && a2 == 0xEE00656C6F527463;
            if (!v37 && (OUTLINED_FUNCTION_2_91(0x61746E6F43746567, 0xEE00656C6F527463) & 1) == 0)
            {
              goto LABEL_17;
            }

            specialized PhoneSearchCallHistoryIntentProperties.getContactRole.getter(v10);
            v38 = type metadata accessor for SpeakableString();
            if (__swift_getEnumTagSinglePayload(v10, 1, v38) != 1)
            {
              *(a3 + 24) = v38;
              v39 = __swift_allocate_boxed_opaque_existential_1(a3);
              (*(*(v38 - 8) + 32))(v39, v10, v38);
              goto LABEL_19;
            }

            v19 = v10;
            goto LABEL_16;
          }

          v26 = 1;
        }
      }
    }

    specialized PhoneSearchCallHistoryIntentProperties.isRequestForCallType(callRecordType:)(v26);
LABEL_42:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v27 & 1;
    goto LABEL_19;
  }

  if (!*(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_recipient))
  {
    goto LABEL_17;
  }

  v23 = type metadata accessor for PhonePersonList();
  OUTLINED_FUNCTION_18_26(v23);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized PhoneSearchCallHistoryIntentProperties.isRequestForFaceTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider, &v18 - v2);
  v4 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of SpeakableString?(v3);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = SpeakableString.print.getter();
    v6 = v7;
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  v8 = INPreferredCallProviderGetBackingType();
  switch(v8)
  {
    case 4:
      v9 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v9 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v9 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v10 = v9;
      goto LABEL_12;
  }

  v9 = [NSString stringWithFormat:@"(unknown: %i)", v8];
LABEL_12:
  v11 = v9;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v6)
  {
    if (v5 == v12 && v6 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t specialized PhoneSearchCallHistoryIntentProperties.isRequestForVideo.getter()
{
  v1 = type metadata accessor for SpeakableString();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_callCapabilities);
  if (*(v6 + 16) != 1)
  {
    v12 = 0;
    return v12 & 1;
  }

  (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1, v3);
  v7 = SpeakableString.print.getter();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v11 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_9;
    }

    v11 = @"AUDIO_CALL";
  }

  v13 = v11;
LABEL_9:
  v14 = v11;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v7 == v15 && v9 == v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t specialized PhoneSearchCallHistoryIntentProperties.getContactRole.getter@<X0>(uint64_t a1@<X8>)
{
  if ((specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.getContactRole.getter) & 1) == 0)
  {
    specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #1 of specialized PhoneSearchCallHistoryIntentProperties.getContactRole.getter);
  }

  SpeakableString.init(print:speak:)();
  v2 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

PhoneCallFlowDelegatePlugin::PhoneSearchCallHistoryIntent::CodingKeys_optional __swiftcall PhoneSearchCallHistoryIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneSearchCallHistoryIntent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t PhoneSearchCallHistoryIntent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x657079546C6C6163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6E65697069636572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneSearchCallHistoryIntent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneSearchCallHistoryIntent.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneSearchCallHistoryIntent::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneSearchCallHistoryIntent.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneSearchCallHistoryIntent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneSearchCallHistoryIntent.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneSearchCallHistoryIntent::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneSearchCallHistoryIntent.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneSearchCallHistoryIntent::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneSearchCallHistoryIntent.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSearchCallHistoryIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSearchCallHistoryIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneSearchCallHistoryIntent.deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider);

  return v0;
}

uint64_t PhoneSearchCallHistoryIntent.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t PhoneSearchCallHistoryIntent.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d6SearchE13HistoryIntentC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d6SearchE13HistoryIntentC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *(v4 + 24);
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
  OUTLINED_FUNCTION_11_48();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider;
    LOBYTE(v17) = 1;
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_0_95();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(v11, v12, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_21_33(v4 + v10, &v17);
    v17 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_callCapabilities);
    v16 = 2;
    OUTLINED_FUNCTION_11_48();
    v17 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_recipient);
    v16 = 3;
    type metadata accessor for PhonePersonList();
    OUTLINED_FUNCTION_5_73();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(v13, v14, &protocol conformance descriptor for PhonePersonList);
    OUTLINED_FUNCTION_21_33(&v17, &v16);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneSearchCallHistoryIntent.init(from:)(a1);
  return v2;
}

uint64_t PhoneSearchCallHistoryIntent.init(from:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d6SearchE13HistoryIntentC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d6SearchE13HistoryIntentC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  *(v4 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v4 + 24) = v23;
    type metadata accessor for SpeakableString();
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_0_95();
    v12 = _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(v10, v11, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_16_44(v12, &v23, v13, v14, v12);
    outlined init with take of SpeakableString?(v3, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_preferredCallProvider);
    v22 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_callCapabilities) = v23;
    type metadata accessor for PhonePersonList();
    v22 = 3;
    OUTLINED_FUNCTION_5_73();
    v17 = _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(v15, v16, &protocol conformance descriptor for PhonePersonList);
    OUTLINED_FUNCTION_16_44(v17, &v22, v18, v19, v17);
    v20 = OUTLINED_FUNCTION_3_84();
    v21(v20);
    *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28PhoneSearchCallHistoryIntent_recipient) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneSearchCallHistoryIntent(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 152))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneSearchCallHistoryIntent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void specialized PhoneSearchCallHistoryIntentProperties.isRequestForCallType(callRecordType:)(uint64_t a1)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v30 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v28 = a1;
    v29 = v4 + 16;
    v11 = (v4 + 8);
    v26 = v9 - 1;
    v27 = v8;
    while (v10 < *(v8 + 16))
    {
      (*(v4 + 16))(v7, v30 + *(v4 + 72) * v10, v3, v5);
      v12 = SpeakableString.print.getter();
      v14 = v13;
      if (a1)
      {
        BackingType = INCallRecordTypeGetBackingType();
        switch(BackingType)
        {
          case 2:
            v16 = @"OUTGOING";
            goto LABEL_16;
          case 3:
            v16 = @"MISSED";
            goto LABEL_16;
          case 4:
            v16 = @"RECEIVED";
            goto LABEL_16;
          case 5:
            v16 = @"LATEST";
            goto LABEL_16;
          case 7:
            v16 = @"VOICEMAIL";
            goto LABEL_16;
          case 8:
            v16 = @"RINGING";
            goto LABEL_16;
          case 9:
            v16 = @"IN_PROGRESS";
            goto LABEL_16;
          case 10:
            v16 = @"ON_HOLD";
LABEL_16:
            v20 = v16;
            v19 = v16;
            break;
          default:
            v19 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            break;
        }

        v21 = v19;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v22;
      }

      else
      {
        v17 = 0xE700000000000000;
        v18 = 0x4E574F4E4B4E55;
      }

      v23 = v12 == v18 && v14 == v17;
      if (v23)
      {

        (*v11)(v7, v3);
        return;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v11)(v7, v3);
      if ((v24 & 1) == 0)
      {
        v8 = v27;
        v23 = v26 == v10++;
        a1 = v28;
        if (!v23)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSearchCallHistoryIntent.CodingKeys and conformance PhoneSearchCallHistoryIntent.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    OUTLINED_FUNCTION_0_95();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for PhoneSearchCallHistoryIntent(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneSearchCallHistoryIntent.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneSearchCallHistoryIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneSearchCallHistoryIntentProperties.isRequestForFaceTime.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  (*(a2 + 80))(a1, a2, v5);
  v8 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of SpeakableString?(v7);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = SpeakableString.print.getter();
    v10 = v11;
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v12 = INPreferredCallProviderGetBackingType();
  switch(v12)
  {
    case 4:
      v13 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v13 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v13 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v14 = v13;
      goto LABEL_12;
  }

  v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
LABEL_12:
  v15 = v13;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v10)
  {
    if (v9 == v16 && v10 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = OUTLINED_FUNCTION_0_5();
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t PhoneSearchCallHistoryIntentProperties.isRequestForVideo.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = *(a2 + 88);
  v11 = OUTLINED_FUNCTION_13_17();
  v12 = *(v10(v11) + 16);

  if (v12 != 1)
  {
    v20 = 0;
    return v20 & 1;
  }

  v13 = OUTLINED_FUNCTION_13_17();
  result = v10(v13);
  if (*(result + 16))
  {
    (*(v5 + 16))(v9, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3);

    v15 = SpeakableString.print.getter();
    v17 = v16;
    (*(v5 + 8))(v9, v3);
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v19 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        v19 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_10;
      }

      v19 = @"AUDIO_CALL";
    }

    v21 = v19;
LABEL_10:
    v22 = v19;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v15 == v23 && v17 == v25)
    {
      v20 = 1;
    }

    else
    {
      v20 = OUTLINED_FUNCTION_0_5();
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t PhoneSearchCallHistoryIntentProperties.getContactRole.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of PhoneSearchCallHistoryIntentProperties.getContactRole.getter, a1, a2) & 1) == 0)
  {
    PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #1 of PhoneSearchCallHistoryIntentProperties.getContactRole.getter, a1, a2);
  }

  SpeakableString.init(print:speak:)();
  v6 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
}

uint64_t PhoneSearchCallHistoryIntentProperties.isRequestForCallType(callRecordType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  result = (*(a3 + 72))(a2, a3);
  v33 = *(result + 16);
  if (v33)
  {
    v14 = 0;
    v34 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v35 = result;
    v32 = a1;
    while (v14 < *(result + 16))
    {
      (*(v8 + 16))(v12, v34 + *(v8 + 72) * v14, v6);
      v15 = SpeakableString.print.getter();
      v17 = v16;
      if (a1)
      {
        BackingType = INCallRecordTypeGetBackingType();
        switch(BackingType)
        {
          case 2:
            v19 = @"OUTGOING";
            goto LABEL_16;
          case 3:
            v19 = @"MISSED";
            goto LABEL_16;
          case 4:
            v19 = @"RECEIVED";
            goto LABEL_16;
          case 5:
            v19 = @"LATEST";
            goto LABEL_16;
          case 7:
            v19 = @"VOICEMAIL";
            goto LABEL_16;
          case 8:
            v19 = @"RINGING";
            goto LABEL_16;
          case 9:
            v19 = @"IN_PROGRESS";
            goto LABEL_16;
          case 10:
            v19 = @"ON_HOLD";
LABEL_16:
            v23 = v19;
            v22 = v19;
            break;
          default:
            v22 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            break;
        }

        v24 = v22;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v25;
      }

      else
      {
        v20 = 0xE700000000000000;
        v21 = 0x4E574F4E4B4E55;
      }

      if (v15 == v21 && v17 == v20)
      {

        v30 = OUTLINED_FUNCTION_13_17();
        v31(v30);
LABEL_26:

        return 1;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = OUTLINED_FUNCTION_13_17();
      v29(v28);
      if (v27)
      {
        goto LABEL_26;
      }

      ++v14;
      a1 = v32;
      result = v35;
      if (v33 == v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    return 0;
  }

  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return a2;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        specialized Set._Variant.insert(_:)();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t static PhoneSelfPerformanceLogger.signpost<A>(domainExecutionType:taskType:siriKitEventSender:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  outlined init with copy of SignalProviding(a4, v18);
  v13 = type metadata accessor for PhoneSelfPerformanceLogger();
  swift_initStackObject();

  v17 = PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v18, v12, a2, a3);
  v16[2] = a7;
  v16[3] = a5;
  v16[4] = a6;
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v17, partial apply for closure #1 in static PhoneSelfPerformanceLogger.signpost<A>(domainExecutionType:taskType:siriKitEventSender:_:), v16, v13, &type metadata for Never, a7, &protocol witness table for Never, v14);
}

{
  v12 = a1;
  outlined init with copy of SignalProviding(a4, v17);
  v13 = type metadata accessor for PhoneSelfPerformanceLogger();
  swift_allocObject();

  v16[4] = a6;
  v17[0] = PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v17, v12, a2, a3);
  v16[2] = a7;
  v16[3] = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss20withExtendedLifetimeyq0_x_q0_xq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v17, partial apply for closure #1 in static PhoneSelfPerformanceLogger.signpost<A>(domainExecutionType:taskType:siriKitEventSender:_:), v16, v13, v14, a7, &protocol self-conformance witness table for Error, &v18);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyKXEtKlFZSay0T9Inference08ResolvedtO7ContactVG_Tt4g504_s27abcd10Plugin0A15x79ResolverC8signpost33_3D9467E65F3897762758A24265D9663FLL10configHash6aroundSay13t21Inference08Resolvedq3O54F0VGAA0fG14ConfigHashableV_AKyKXEtKFAKyKXEfU_AKyKXEfU_AOs5Error_pIgozo_Tf1nnnc_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a1;
  outlined init with copy of SignalProviding(a4, v12);
  type metadata accessor for PhoneSelfPerformanceLogger();
  swift_initStackObject();

  PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v12, v9, a2, a3);
  v10 = a5();
  if (v5)
  {
    PhoneSelfPerformanceLogger.createAndLogFailureEvent()();
    swift_willThrow();
  }

  return v10;
}

uint64_t PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 88) = 0;
  outlined init with copy of SignalProviding(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  type metadata accessor for SISchemaUUID();
  UUID.init()();
  *(v5 + 80) = SISchemaUUID.__allocating_init(nsuuid:)(v12);
  PhoneSelfPerformanceLogger.createAndLogStartEvent()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t closure #1 in static PhoneSelfPerformanceLogger.signpost<A>(domainExecutionType:taskType:siriKitEventSender:_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  result = a2();
  if (v5)
  {
    PhoneSelfPerformanceLogger.createAndLogFailureEvent()();
    result = swift_willThrow();
    *a5 = v5;
  }

  return result;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_xq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t PhoneSelfPerformanceLogger.deinit()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    PhoneSelfPerformanceLogger.createAndLogEndEventIfNoFailure()();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t PhoneSelfPerformanceLogger.__deallocating_deinit()
{
  PhoneSelfPerformanceLogger.deinit();

  return swift_deallocClassInstance();
}

void PhoneSelfPerformanceLogger.createAndLogStartEvent()()
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionStarted) init];
  if (v2)
  {
    oslog = v2;
    [v2 setDomainExecutionType:*(v0 + 56)];
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_3_85(v3, static Logger.siriPhone);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_42();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v8 = FLOWSchemaFLOWDomainExecutionType.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "#PhoneSelfPerformanceLogger Registered start event for %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_26_0(v7);
      OUTLINED_FUNCTION_26_0(v6);
    }

    PhoneSelfPerformanceLogger.logEvent(_:eventType:)(oslog, 0);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_3_85(v11, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      OUTLINED_FUNCTION_42();
      v13 = OUTLINED_FUNCTION_32_0();
      v26 = v13;
      *v1 = 136315138;
      v14 = FLOWSchemaFLOWDomainExecutionType.description.getter();
      v18 = OUTLINED_FUNCTION_5_74(v14, v15, v16, v17);

      *(v1 + 4) = v18;
      OUTLINED_FUNCTION_1_94(&dword_0, v19, v20, "#PhoneSelfPerformanceLogger Failed to create start event for %s", v21, v22, v23, v24, oslog);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_26_0(v13);
      OUTLINED_FUNCTION_26_0(v1);
    }
  }
}

void PhoneSelfPerformanceLogger.createAndLogFailureEvent()()
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionFailed) init];
  if (v2)
  {
    v3 = v2;
    PhoneSelfPerformanceLogger.logEvent(_:eventType:)(v2, 1);

    *(v0 + 88) = 1;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_3_85(v4, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      OUTLINED_FUNCTION_42();
      v19 = OUTLINED_FUNCTION_32_0();
      *v1 = 136315138;
      v6 = FLOWSchemaFLOWDomainExecutionType.description.getter();
      v10 = OUTLINED_FUNCTION_5_74(v6, v7, v8, v9);

      *(v1 + 4) = v10;
      OUTLINED_FUNCTION_1_94(&dword_0, v11, v12, "#PhoneSelfPerformanceLogger Failed to register end event for %s", v13, v14, v15, v16, oslog);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26_0(v19);
      OUTLINED_FUNCTION_26_0(v1);
    }

    else
    {
    }
  }
}

void PhoneSelfPerformanceLogger.createAndLogEndEventIfNoFailure()()
{
  v1 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
  if (v1)
  {
    oslog = v1;
    PhoneSelfPerformanceLogger.logEvent(_:eventType:)(v1, 2);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_3_85(v2, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      OUTLINED_FUNCTION_42();
      v16 = OUTLINED_FUNCTION_32_0();
      *v0 = 136315138;
      v4 = FLOWSchemaFLOWDomainExecutionType.description.getter();
      v8 = OUTLINED_FUNCTION_5_74(v4, v5, v6, v7);

      *(v0 + 4) = v8;
      OUTLINED_FUNCTION_1_94(&dword_0, v9, v10, "#PhoneSelfPerformanceLogger Failed to register end event for %s", v11, v12, v13, v14, oslog);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_26_0(v16);
      OUTLINED_FUNCTION_26_0(v0);
    }
  }
}

void PhoneSelfPerformanceLogger.logEvent(_:eventType:)(uint64_t a1, char a2)
{
  v3 = v2;
  oslog = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
  if (oslog)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = &selRef_setStartedOrChanged_;
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v6 = v11;
        v7 = &selRef_setFailed_;
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
          goto LABEL_13;
        }

        v6 = v12;
        v7 = &selRef_setEnded_;
      }
    }

    [oslog *v7];
LABEL_13:
    v13 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
    if (v13)
    {
      v14 = v13;
      [oslog setContextId:v3[10]];
      [v14 setFlowDomainExecutionContext:oslog];
      type metadata accessor for SiriKitEvent();

      v15 = v14;
      SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      dispatch thunk of SiriKitEventSending.send(_:)();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v16 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_3_85(v16, static Logger.siriPhone);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = v20;
        *v19 = 136315394;
        if (a2)
        {
          if (a2 == 1)
          {
            v21 = 0x6572756C696166;
          }

          else
          {
            v21 = 6581861;
          }

          if (a2 == 1)
          {
            v22 = 0xE700000000000000;
          }

          else
          {
            v22 = 0xE300000000000000;
          }
        }

        else
        {
          v22 = 0xE500000000000000;
          v21 = 0x7472617473;
        }

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v34);

        *(v19 + 4) = v27;
        *(v19 + 12) = 2080;
        v28 = FLOWSchemaFLOWDomainExecutionType.description.getter();
        v32 = OUTLINED_FUNCTION_5_74(v28, v29, v30, v31);

        *(v19 + 14) = v32;
        _os_log_impl(&dword_0, v17, v18, "#PhoneSelfPerformanceLogger successfully sent %s performance event for %s", v19, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v20);
        OUTLINED_FUNCTION_26_0(v19);
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.siriPhone);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "#PhoneSelfPerformanceLogger Failed to create client event", v26, 2u);
        OUTLINED_FUNCTION_26_0(v26);
      }
    }

    goto LABEL_32;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, oslog, v9, "#PhoneSelfPerformanceLogger Failed to create execution context", v10, 2u);
    OUTLINED_FUNCTION_26_0(v10);
  }

LABEL_32:
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

void static Signpost.wrap<A>(_:around:)(const char *a1@<X0>, __int16 a2@<W2>, const char *a3@<X5>, uint64_t a4@<X8>, uint64_t (*a5)(void)@<X3>, uint64_t a6@<X4>)
{
  v8 = *(a3 - 1);
  v9 = a2;
  __chkstk_darwin(a1);
  OUTLINED_FUNCTION_4();
  v39 = v11 - v10;
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7();
  v40 = v13;
  v41 = v12;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, static OSSignposter.siriPhone);
  (*(v19 + 16))(v23, v24, v17);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v33 = v8;
  v35 = v17;
  if (v9)
  {
    if (!(a1 >> 32))
    {
      OUTLINED_FUNCTION_10_59();
      if (v27)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        v26 = a3;
        v25 = &v43;
        goto LABEL_10;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = a1;
  v26 = a3;
LABEL_10:
  v28 = swift_slowAlloc();
  OUTLINED_FUNCTION_12_17();
  v29 = swift_slowAlloc();
  v42 = v29;
  *v28 = 136315138;
  v30 = StaticString.description.getter();
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v42);

  *(v28 + 4) = v32;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v28, 0xCu, v23, v16, v25, "%s", a5, a6, v26);
  if (!v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_68();

    OUTLINED_FUNCTION_8();

    (*(v33 + 32))(a4, v39, v26);
  }

  (*(v40 + 8))(v16, v41);
  (*(v19 + 8))(v23, v35);
}

void static Signpost.emitSyntheticInterval(_:beginTimestamp:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v13, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v14, v15);
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v3 & 1) == 0)
  {
    if (v5)
    {
LABEL_11:
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 134218242;
      *(v19 + 4) = v1;
      *(v19 + 12) = 2080;
      v21 = StaticString.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 14) = v23;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v16, v17, v24, v5, "%{public, signpost.description:begin_time}llu%s", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();

LABEL_12:

      (*(v8 + 8))(v12, v6);
      OUTLINED_FUNCTION_65();
      return;
    }

    __break(1u);
  }

  if (v5 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v18)
  {
    if (v5 >> 16 <= 0x10)
    {
      v5 = &v26;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void static Signpost.event(_:number1:)()
{
  OUTLINED_FUNCTION_66();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v15, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  OUTLINED_FUNCTION_21_34();
  swift_bridgeObjectRetain_n();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16, v17);
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_34();
    swift_bridgeObjectRelease_n();
    if (!v7)
    {
      __break(1u);
LABEL_7:

      OUTLINED_FUNCTION_21_34();
      swift_bridgeObjectRelease_n();
LABEL_13:
      (*(v10 + 8))(v14, v8);
      OUTLINED_FUNCTION_65();
      return;
    }

LABEL_12:
    OUTLINED_FUNCTION_12_17();
    v21 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v3, &v28);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v22 = StaticString.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

    *(v21 + 24) = v24;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v18, v19, v25, v7, "%s=%{public, signpost.telemetry:number1}lu %s", v21, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_6_68();

    goto LABEL_13;
  }

  if (v7 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v20)
  {
    if (v7 >> 16 <= 0x10)
    {
      OUTLINED_FUNCTION_21_34();
      swift_bridgeObjectRelease_n();
      v7 = &v28;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t one-time initialization function for siriPhone()
{
  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v7, static OSSignposter.siriPhone);
  __swift_project_value_buffer(v7, static OSSignposter.siriPhone);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static Logger.siriPhone);
  (*(v2 + 16))(v6, v8, v0);
  return OSSignposter.init(logger:)();
}

uint64_t OSSignposter.siriPhone.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static OSSignposter.siriPhone);
}

uint64_t static OSSignposter.siriPhone.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static OSSignposter.siriPhone);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static Signpost.begin(_:message:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v23 = v3;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_75();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_42_13();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v9, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();

  v10 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_13:
    v17 = OUTLINED_FUNCTION_8_61();
    v18(v17);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OUTLINED_FUNCTION_16_45();
    v19 = OUTLINED_FUNCTION_15_45();
    v20(v19, v6);
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_65();
    return;
  }

  if ((v5 & 1) == 0)
  {

    if (v0)
    {
      v21 = v0;
LABEL_12:
      v12 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v2, &v24);
      *(v12 + 12) = 2080;
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

      *(v12 + 14) = v15;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v10, v22, v16, v21, "%s%s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_6_68();

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v0 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v11)
  {
    if (v0 >> 16 <= 0x10)
    {

      v21 = &v24;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void static Signpost.begin(_:string1:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v25 = v3;
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v27 = OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_5_75();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_42_13();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v11, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  OUTLINED_FUNCTION_20_35();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_19_34();
  swift_bridgeObjectRetain_n();
  v12 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_34();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_20_35();
    swift_bridgeObjectRelease_n();

LABEL_13:
    v19 = OUTLINED_FUNCTION_8_61();
    v20(v19);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OUTLINED_FUNCTION_16_45();
    v21 = OUTLINED_FUNCTION_15_45();
    v22(v21, v27);
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_65();
    return;
  }

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_34();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_20_35();
    swift_bridgeObjectRelease_n();
    if (v0)
    {
      v23 = v0;
LABEL_12:
      OUTLINED_FUNCTION_12_17();
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v6, &v28);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v2, &v28);
      *(v14 + 22) = 2080;
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

      *(v14 + 24) = v17;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v12, v24, v18, v23, "%s=%{public, signpost.telemetry:string1}s%s", v14, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_68();

      OUTLINED_FUNCTION_8();

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v0 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v13)
  {
    if (v0 >> 16 <= 0x10)
    {
      OUTLINED_FUNCTION_19_34();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_20_35();
      swift_bridgeObjectRelease_n();
      v23 = &v28;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(void), ...)
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v14, v15, a5, a6, v16, a2);
  }
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.OpenSignpost(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for Signpost.OpenSignpost(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSignpost(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneSignpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t PhoneSnippetDataModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DeviceIdiom();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  outlined init with copy of PhoneSnippetDataModels(v3, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v17 = StackedButtonsModel.shouldHideSnippet(on:)(a2, *v15, *(v15 + 8));

      return v17 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_30_31();
      v17 = 0;
      return v17 & 1;
    }
  }

  OUTLINED_FUNCTION_30_31();
  (*(v7 + 104))(v11, enum case for DeviceIdiom.car(_:), v5);
  v17 = static DeviceIdiom.== infix(_:_:)();
  (*(v7 + 8))(v11, v5);
  return v17 & 1;
}

uint64_t type metadata accessor for PhoneSnippetDataModels(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneSnippetDataModels;
  if (!type metadata singleton initialization cache for PhoneSnippetDataModels)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PhoneSnippetDataModels(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneSnippetDataModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhoneSnippetDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69666E6F43707061 && a2 == 0xEF6E6F6974616D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000000460210 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000000460230 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000000460250 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000022 && 0x8000000000460270 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000020 && 0x80000000004602A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4264656B63617473 && a2 == 0xEE00736E6F747475;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000000004602D0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000018 && 0x80000000004602F0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x747369486C6C6163 && a2 == 0xEF7473694C79726FLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000000460310 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6F56656C676E6973 && a2 == 0xEF6C69616D656369;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000017 && 0x8000000000460330 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t PhoneSnippetDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x69666E6F43707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0x4264656B63617473;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x747369486C6C6163;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6F56656C676E6973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneSnippetDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PhoneSnippetDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PhoneSnippetDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneSnippetDataModels.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneSnippetDataModels.encode(to:)(void *a1)
{
  v177[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO06SingleE23HistoryRecordCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO06SingleE23HistoryRecordCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v167[11] = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_3();
  v176[1] = v5;
  v175 = type metadata accessor for SingleResultCallHistoryModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_4();
  v176[0] = v7;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25SingleVoicemailCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25SingleVoicemailCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v167[10] = v8;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_27_3();
  v173[1] = v10;
  v172 = type metadata accessor for SingleResultVoicemailModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_4();
  v173[0] = v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27PlayVoicemailListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27PlayVoicemailListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v167[9] = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_27_3();
  v170 = v15;
  v168 = type metadata accessor for PlayVoicemailModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_5_4();
  v169 = v17;
  v167[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO0E21HistoryListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO0E21HistoryListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v167[8] = v18;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v20);
  v167[39] = type metadata accessor for SearchCallHistoryModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO34YesNoConfirmationCarPlayCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO34YesNoConfirmationCarPlayCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v23, &v187);
  v167[7] = v24;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27YesNoConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27YesNoConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v27, &v186);
  v167[6] = v28;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO24StackedButtonsCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO24StackedButtonsCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v31, &v185);
  v167[5] = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO014LocalEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO014LocalEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v35, &v184);
  v167[4] = v36;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v38);
  v167[29] = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO016ForeignEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO016ForeignEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v41, &v181);
  v167[3] = v42;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v44);
  v167[25] = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO28EmergencyCountdownCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO28EmergencyCountdownCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v47, v178);
  v167[2] = v48;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v50);
  v167[21] = type metadata accessor for EmergencyCountdownModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO29ContactConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO29ContactConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v53, v176);
  v167[1] = v54;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27AppDisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27AppDisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v57, &v174);
  v167[17] = v58;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25AppConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25AppConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v61, v173);
  v167[14] = v62;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v63);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v64);
  v177[1] = type metadata accessor for YesNoConfirmationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v66);
  v68 = v167 - v67;
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_43_24();
  __chkstk_darwin(v70);
  v72 = v167 - v71;
  v73 = type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_4();
  v77 = (v76 - v75);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO10CodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO10CodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v178[0] = v78;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v79);
  v81 = v167 - v80;
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();
  v179 = v81;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of PhoneSnippetDataModels(v178[1], v77);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v132 = *v77;
      v133 = v77[1];
      v134 = v77[2];
      LOBYTE(v181) = 1;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();
      v135 = v167[15];
      v137 = v179;
      v136 = v180;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v181 = v132;
      v182 = v133;
      v183 = v134;
      lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
      OUTLINED_FUNCTION_35_21();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_17();
      v138(v135, v133);
      (*(v178[0] + 8))(v137, v136);

    case 2u:
      outlined init with take of SingleResultCallHistoryModel(v77, v1, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v181) = 2;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();
      OUTLINED_FUNCTION_40_23();
      v73 = v179;
      v82 = v180;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_0_97();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v113, v114, &protocol conformance descriptor for YesNoConfirmationModel);
      OUTLINED_FUNCTION_32_22();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v115 = OUTLINED_FUNCTION_5_76();
      v116(v115);
      OUTLINED_FUNCTION_27_27();
      v118 = v1;
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_41_26(v77, v177, type metadata accessor for EmergencyCountdownModel);
      LOBYTE(v181) = 3;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52C800, &v181);
      OUTLINED_FUNCTION_26_27();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v119, v120, &protocol conformance descriptor for EmergencyCountdownModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_35_21();
      OUTLINED_FUNCTION_37_24();
      v121 = OUTLINED_FUNCTION_6_69();
      v122(v121);
      v97 = type metadata accessor for EmergencyCountdownModel;
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_41_26(v77, &v179, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
      LOBYTE(v181) = 4;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52C890, &v181);
      OUTLINED_FUNCTION_24_33();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v98, v99, &protocol conformance descriptor for ForeignEmergencyCallDisambiguationModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_35_21();
      OUTLINED_FUNCTION_37_24();
      v100 = OUTLINED_FUNCTION_6_69();
      v101(v100);
      v97 = type metadata accessor for ForeignEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_41_26(v77, &v183, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      LOBYTE(v181) = 5;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52C920, &v181);
      OUTLINED_FUNCTION_23_28();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v139, v140, &protocol conformance descriptor for LocalEmergencyCallDisambiguationModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_35_21();
      OUTLINED_FUNCTION_37_24();
      v141 = OUTLINED_FUNCTION_6_69();
      v142(v141);
      v97 = type metadata accessor for LocalEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 6u:
      v143 = *v77;
      v144 = *(v77 + 8);
      LOBYTE(v181) = 6;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();
      OUTLINED_FUNCTION_40_23();
      v146 = v179;
      v145 = v180;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v181 = v143;
      LOBYTE(v182) = v144;
      lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
      v147 = v167[34];
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v148 = OUTLINED_FUNCTION_7_60();
      v149(v148, v147);
      (*(v178[0] + 8))(v146, v145);

    case 7u:
      outlined init with take of SingleResultCallHistoryModel(v77, v68, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v181) = 7;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52CA40, &v181);
      OUTLINED_FUNCTION_0_97();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v123, v124, &protocol conformance descriptor for YesNoConfirmationModel);
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_38_22(v125, v126, v127, v128, v129);
      v130 = OUTLINED_FUNCTION_6_69();
      v131(v130);
      OUTLINED_FUNCTION_27_27();
      v118 = v68;
      goto LABEL_18;
    case 8u:
      OUTLINED_FUNCTION_41_26(v77, &v170, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v181) = 8;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52CAD0, &v181);
      OUTLINED_FUNCTION_0_97();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v158, v159, &protocol conformance descriptor for YesNoConfirmationModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_38_22(v160, v161, v162, v163, v164);
      goto LABEL_16;
    case 9u:
      OUTLINED_FUNCTION_41_26(v77, &v188, type metadata accessor for SearchCallHistoryModel);
      LOBYTE(v181) = 9;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52CB60, &v181);
      OUTLINED_FUNCTION_29_25();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v109, v110, &protocol conformance descriptor for SearchCallHistoryModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_37_24();
      v111 = OUTLINED_FUNCTION_6_69();
      v112(v111);
      v97 = type metadata accessor for SearchCallHistoryModel;
      goto LABEL_17;
    case 0xAu:
      v72 = v169;
      outlined init with take of SingleResultCallHistoryModel(v77, v169, type metadata accessor for PlayVoicemailModel);
      LOBYTE(v181) = 10;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();
      OUTLINED_FUNCTION_11_49(&unk_52CBF0, &v181);
      OUTLINED_FUNCTION_28_22();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v151, v152, &protocol conformance descriptor for PlayVoicemailModel);
      v153 = OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_38_22(v153, v154, v171, v168, v155);
      v156 = OUTLINED_FUNCTION_6_69();
      v157(v156);
      v97 = type metadata accessor for PlayVoicemailModel;
      goto LABEL_17;
    case 0xBu:
      v72 = v173[0];
      outlined init with take of SingleResultCallHistoryModel(v77, v173[0], type metadata accessor for SingleResultVoicemailModel);
      LOBYTE(v181) = 11;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();
      OUTLINED_FUNCTION_11_49(&unk_52CC80, &v181);
      OUTLINED_FUNCTION_25_29();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v90, v91, &protocol conformance descriptor for SingleResultVoicemailModel);
      v92 = OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_38_22(v92, v93, v174, v172, v94);
      v95 = OUTLINED_FUNCTION_6_69();
      v96(v95);
      v97 = type metadata accessor for SingleResultVoicemailModel;
      goto LABEL_17;
    case 0xCu:
      v72 = v176[0];
      outlined init with take of SingleResultCallHistoryModel(v77, v176[0], type metadata accessor for SingleResultCallHistoryModel);
      LOBYTE(v181) = 12;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();
      OUTLINED_FUNCTION_11_49(&unk_52CD10, &v181);
      OUTLINED_FUNCTION_22_27();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v102, v103, &protocol conformance descriptor for SingleResultCallHistoryModel);
      v104 = OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_38_22(v104, v105, v177[0], v175, v106);
      v107 = OUTLINED_FUNCTION_6_69();
      v108(v107);
      v97 = type metadata accessor for SingleResultCallHistoryModel;
      goto LABEL_17;
    default:
      outlined init with take of SingleResultCallHistoryModel(v77, v72, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v181) = 0;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();
      OUTLINED_FUNCTION_10_60(&unk_52C650, &v181);
      OUTLINED_FUNCTION_0_97();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v83, v84, &protocol conformance descriptor for YesNoConfirmationModel);
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_38_22(v85, v86, v87, v88, v89);
LABEL_16:
      v165 = OUTLINED_FUNCTION_6_69();
      v166(v165);
      v97 = type metadata accessor for YesNoConfirmationModel;
LABEL_17:
      v117 = v97;
      v118 = v72;
LABEL_18:
      outlined destroy of PhoneSnippetDataModels(v118, v117);
      return (*(v178[0] + 8))(v73, v82);
  }
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of PhoneSnippetDataModels(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

uint64_t PhoneSnippetDataModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v269 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO06SingleE23HistoryRecordCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO06SingleE23HistoryRecordCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v4, &v282);
  v260 = v5;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_3();
  v268[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25SingleVoicemailCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25SingleVoicemailCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v8, &v281);
  v259 = v9;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_27_3();
  v268[0] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27PlayVoicemailListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27PlayVoicemailListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v12, &v280);
  v258 = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_27_3();
  v267[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO0E21HistoryListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO0E21HistoryListCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v16, &v279);
  v257 = v17;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_27_3();
  v267[0] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO34YesNoConfirmationCarPlayCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO34YesNoConfirmationCarPlayCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v20, &v277);
  v256 = v21;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_27_3();
  v266 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27YesNoConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27YesNoConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v24, &v276 + 8);
  v255 = v25;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_27_3();
  v265 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO24StackedButtonsCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO24StackedButtonsCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v28, &v275);
  v254 = v29;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_27_3();
  v264 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO014LocalEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO014LocalEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v32, &v273);
  v253 = v33;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_27_3();
  v263 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO016ForeignEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO016ForeignEmergencyE24DisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v36, v271);
  v252 = v37;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_27_3();
  v262 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO28EmergencyCountdownCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO28EmergencyCountdownCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v40, v270);
  v250 = v41;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_27_3();
  v273 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO29ContactConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO29ContactConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v44, &v269);
  v248 = v45;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_27_3();
  v272 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27AppDisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO27AppDisambiguationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v48, v268);
  v246 = v49;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_27_3();
  v261 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25AppConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO25AppConfirmationCodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_0_7(v52, v267);
  v244 = v53;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v55);
  v271[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO10CodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D17SnippetDataModelsO10CodingKeys33_C871D4EB6E3B2C25D57D2C87DFF96958LLOGMR);
  OUTLINED_FUNCTION_7();
  v270[1] = v56;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v57);
  v59 = v238 - v58;
  v270[0] = type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v63);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v68);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_43_24();
  __chkstk_darwin(v70);
  v72 = v238 - v71;
  __chkstk_darwin(v73);
  v75 = v238 - v74;
  __chkstk_darwin(v76);
  v78 = v238 - v77;
  __chkstk_darwin(v79);
  v81 = v238 - v80;
  v82 = a1[3];
  v274 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v82);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();
  v271[0] = v59;
  v83 = v278;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v83)
  {
    goto LABEL_8;
  }

  v239 = v75;
  v240 = v78;
  v241 = v72;
  v242 = v2;
  v85 = v272;
  v84 = v273;
  v278 = v81;
  v86 = KeyedDecodingContainer.allKeys.getter();
  result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0P4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLO_Tt1g5(v86, 0);
  if (v89 == v90 >> 1)
  {
LABEL_7:
    v100 = v270[0];
    v101 = type metadata accessor for DecodingError();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v103 = v100;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v101 - 8) + 104))(v103, enum case for DecodingError.typeMismatch(_:), v101);
    swift_willThrow();
    swift_unknownObjectRelease();
    v104 = OUTLINED_FUNCTION_4_66();
    v105(v104);
LABEL_8:
    v106 = v274;
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v238[1] = 0;
  if (v89 < (v90 >> 1))
  {
    v238[0] = *(v88 + v89);
    specialized ArraySlice.subscript.getter();
    v92 = v91;
    v94 = v93;
    swift_unknownObjectRelease();
    if (v92 == v94 >> 1)
    {
      v95 = v269;
      switch(v238[0])
      {
        case 1:
          LOBYTE(v275) = 1;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52C6E0, &v275);
          lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
          v154 = v247;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v215 = OUTLINED_FUNCTION_7_60();
          v216(v215, v154);
          v217 = OUTLINED_FUNCTION_39_19();
          v218(v217);
          v219 = v239;
          *v239 = v275;
          *(v219 + 1) = v276;
          goto LABEL_23;
        case 2:
          LOBYTE(v275) = 2;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52C770, &v275);
          type metadata accessor for YesNoConfirmationModel(0);
          OUTLINED_FUNCTION_0_97();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v135, v136, &protocol conformance descriptor for YesNoConfirmationModel);
          OUTLINED_FUNCTION_40_23();
          v137 = v249;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17();
          v194(v85, v137);
          v195 = OUTLINED_FUNCTION_4_66();
          v196(v195);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_92();
          v198 = v85;
          goto LABEL_25;
        case 3:
          LOBYTE(v275) = 3;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();
          OUTLINED_FUNCTION_16_46(&unk_52C800, &v275);
          v138 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for EmergencyCountdownModel(v138);
          OUTLINED_FUNCTION_26_27();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v139, v140, &protocol conformance descriptor for EmergencyCountdownModel);
          v141 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v141, v142, v143, v144, v145);
          swift_unknownObjectRelease();
          v199 = OUTLINED_FUNCTION_5_76();
          v200(v199);
          v201 = OUTLINED_FUNCTION_4_66();
          v202(v201);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 4:
          LOBYTE(v275) = 4;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();
          v115 = v262;
          OUTLINED_FUNCTION_16_46(&unk_52C890, &v275);
          type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
          OUTLINED_FUNCTION_24_33();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v116, v117, &protocol conformance descriptor for ForeignEmergencyCallDisambiguationModel);
          OUTLINED_FUNCTION_40_23();
          v118 = v251;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17();
          v183(v115, v118);
          v184 = OUTLINED_FUNCTION_4_66();
          v185(v184);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_92();
          v212 = v85;
          goto LABEL_22;
        case 5:
          LOBYTE(v275) = 5;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52C920, &v275);
          v155 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for LocalEmergencyCallDisambiguationModel(v155);
          OUTLINED_FUNCTION_23_28();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v156, v157, &protocol conformance descriptor for LocalEmergencyCallDisambiguationModel);
          v158 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v158, v159, v160, v161, v162);
          swift_unknownObjectRelease();
          v220 = OUTLINED_FUNCTION_5_76();
          v221(v220);
          v222 = OUTLINED_FUNCTION_4_66();
          v223(v222);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 6:
          LOBYTE(v275) = 6;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52C9B0, &v275);
          lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v224 = OUTLINED_FUNCTION_5_76();
          v225(v224);
          v226 = OUTLINED_FUNCTION_39_19();
          v227(v226);
          v228 = v276;
          v219 = v243;
          *v243 = v275;
          *(v219 + 8) = v228;
LABEL_23:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_92();
          v198 = v219;
          goto LABEL_25;
        case 7:
          LOBYTE(v275) = 7;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CA40, &v275);
          v146 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for YesNoConfirmationModel(v146);
          OUTLINED_FUNCTION_0_97();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v147, v148, &protocol conformance descriptor for YesNoConfirmationModel);
          v149 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v149, v150, v151, v152, v153);
          swift_unknownObjectRelease();
          v203 = OUTLINED_FUNCTION_5_76();
          v204(v203);
          v205 = OUTLINED_FUNCTION_4_66();
          v206(v205);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 8:
          LOBYTE(v275) = 8;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CAD0, &v275);
          v171 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for YesNoConfirmationModel(v171);
          OUTLINED_FUNCTION_0_97();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v172, v173, &protocol conformance descriptor for YesNoConfirmationModel);
          v174 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v174, v175, v176, v177, v178);
          swift_unknownObjectRelease();
          v233 = OUTLINED_FUNCTION_5_76();
          v234(v233);
          v235 = OUTLINED_FUNCTION_4_66();
          v236(v235);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 9:
          LOBYTE(v275) = 9;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CB60, &v275);
          v127 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for SearchCallHistoryModel(v127);
          OUTLINED_FUNCTION_29_25();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v128, v129, &protocol conformance descriptor for SearchCallHistoryModel);
          v130 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v130, v131, v132, v133, v134);
          swift_unknownObjectRelease();
          v190 = OUTLINED_FUNCTION_5_76();
          v191(v190);
          v192 = OUTLINED_FUNCTION_4_66();
          v193(v192);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 0xALL:
          LOBYTE(v275) = 10;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CBF0, &v275);
          v163 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for PlayVoicemailModel(v163);
          OUTLINED_FUNCTION_28_22();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v164, v165, &protocol conformance descriptor for PlayVoicemailModel);
          v166 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v166, v167, v168, v169, v170);
          swift_unknownObjectRelease();
          v229 = OUTLINED_FUNCTION_5_76();
          v230(v229);
          v231 = OUTLINED_FUNCTION_4_66();
          v232(v231);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 0xBLL:
          LOBYTE(v275) = 11;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CC80, &v275);
          v107 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for SingleResultVoicemailModel(v107);
          OUTLINED_FUNCTION_25_29();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v108, v109, &protocol conformance descriptor for SingleResultVoicemailModel);
          v110 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v110, v111, v112, v113, v114);
          swift_unknownObjectRelease();
          v179 = OUTLINED_FUNCTION_5_76();
          v180(v179);
          v181 = OUTLINED_FUNCTION_4_66();
          v182(v181);
          OUTLINED_FUNCTION_34_18();
          goto LABEL_24;
        case 0xCLL:
          LOBYTE(v275) = 12;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52CD10, &v275);
          v119 = OUTLINED_FUNCTION_36_23();
          type metadata accessor for SingleResultCallHistoryModel(v119);
          OUTLINED_FUNCTION_22_27();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v120, v121, &protocol conformance descriptor for SingleResultCallHistoryModel);
          v122 = OUTLINED_FUNCTION_17_41();
          OUTLINED_FUNCTION_13_48(v122, v123, v124, v125, v126);
          swift_unknownObjectRelease();
          v186 = OUTLINED_FUNCTION_5_76();
          v187(v186);
          v188 = OUTLINED_FUNCTION_4_66();
          v189(v188);
          OUTLINED_FUNCTION_34_18();
LABEL_24:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_92();
          v198 = v84;
LABEL_25:
          v213 = v278;
          outlined init with take of SingleResultCallHistoryModel(v198, v278, v197);
          v214 = v274;
          break;
        default:
          LOBYTE(v275) = 0;
          lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();
          OUTLINED_FUNCTION_8_62(&unk_52C650, &v275);
          type metadata accessor for YesNoConfirmationModel(0);
          OUTLINED_FUNCTION_0_97();
          lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(v96, v97, &protocol conformance descriptor for YesNoConfirmationModel);
          v98 = v240;
          v99 = v245;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v207 = OUTLINED_FUNCTION_7_60();
          v208(v207, v99);
          v209 = OUTLINED_FUNCTION_4_66();
          v210(v209);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_92();
          v212 = v98;
LABEL_22:
          v213 = v278;
          outlined init with take of SingleResultCallHistoryModel(v212, v278, v211);
          v214 = v274;
          v95 = v269;
          break;
      }

      OUTLINED_FUNCTION_2_92();
      outlined init with take of SingleResultCallHistoryModel(v213, v95, v237);
      v106 = v214;
      return __swift_destroy_boxed_opaque_existential_1(v106);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PhoneSnippetDataModels(uint64_t a1)
{
  v1 = type metadata accessor for YesNoConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for EmergencyCountdownModel(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(319);
    if (v5 > 0x3F)
    {
      return v3;
    }

    v3 = type metadata accessor for LocalEmergencyCallDisambiguationModel(319);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for SearchCallHistoryModel(319);
      if (v7 <= 0x3F)
      {
        v1 = type metadata accessor for PlayVoicemailModel(319);
        if (v8 <= 0x3F)
        {
          v1 = type metadata accessor for SingleResultVoicemailModel(319);
          if (v9 <= 0x3F)
          {
            v1 = type metadata accessor for SingleResultCallHistoryModel(319);
            if (v10 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for PhoneSnippetDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneSnippetDataModels.AppConfirmationCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_37_24()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_38_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t PhoneStartCallIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneStartCallIntent.Builder.init()();
  return v0;
}

uint64_t PhoneStartCallIntent.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v1 = swift_allocObject();
  PhoneStartCallIntent.init(builder:)();
  return v1;
}

uint64_t key path setter for PhoneStartCallIntent.Builder.callCapability : PhoneStartCallIntent.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 136))(v6);
}

uint64_t key path setter for PhoneStartCallIntent.Builder.audioRoute : PhoneStartCallIntent.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 160))(v6);
}

uint64_t key path setter for PhoneStartCallIntent.Builder.preferredCallProvider : PhoneStartCallIntent.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 184))(v6);
}

uint64_t key path setter for PhoneStartCallIntent.Builder.destinationType : PhoneStartCallIntent.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 208))(v6);
}

uint64_t key path setter for PhoneStartCallIntent.Builder.contacts : PhoneStartCallIntent.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t PhoneStartCallIntent.Builder.contacts.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_contacts;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_contacts, a2);
  *(v2 + v4) = a1;
}

uint64_t key path setter for PhoneStartCallIntent.Builder.callGroups : PhoneStartCallIntent.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t PhoneStartCallIntent.Builder.callGroups.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callGroups;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callGroups, a2);
  *(v2 + v4) = a1;
}

uint64_t PhoneStartCallIntent.Builder.init()()
{
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_contacts) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callGroups) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t PhoneStartCallIntent.Builder.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_8_7();
  v10 = swift_allocObject();
  PhoneStartCallIntent.Builder.init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:)(a1, a2, a3, a4, a5);
  return v10;
}

void PhoneStartCallIntent.Builder.init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_17_17();
  v9 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callCapability;
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_audioRoute;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v18 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_preferredCallProvider;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
  v22 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_destinationType;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v10);
  v26 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_contacts;
  *(v5 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_contacts) = 0;
  *(v5 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callGroups) = _swiftEmptyArrayStorage;
  v27 = *(*(v10 - 8) + 32);
  v27(v6, a1, v10);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_17_3(v5 + v9, v33);
  outlined assign with take of SpeakableString?(v6, v5 + v9);
  swift_endAccess();
  v27(v6, a2, v10);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_17_3(v5 + v14, v33);
  outlined assign with take of SpeakableString?(v6, v5 + v14);
  swift_endAccess();
  v27(v6, a3, v10);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_17_3(v5 + v18, v33);
  outlined assign with take of SpeakableString?(v6, v5 + v18);
  swift_endAccess();
  v27(v6, a4, v10);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_17_3(v5 + v22, v33);
  outlined assign with take of SpeakableString?(v6, v5 + v22);
  swift_endAccess();
  swift_beginAccess();
  *(v5 + v26) = a5;

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneStartCallIntent.Builder.withCallCapability(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 136))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withCallCapability(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_86(v3);
  (*(v4 + 136))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withAudioRoute(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 160))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withAudioRoute(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_86(v3);
  (*(v4 + 160))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withPreferredCallProvider(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 184))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withPreferredCallProvider(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_86(v3);
  (*(v4 + 184))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withDestinationType(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 208))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withDestinationType(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_86(v3);
  (*(v4 + 208))(v0);
}

uint64_t PhoneStartCallIntent.Builder.withContacts(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 232);

  v1(v2);
}

uint64_t PhoneStartCallIntent.Builder.withContacts(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = (*(*a1 + 128))();
  }

  (*(*v1 + 232))(a1);
}

uint64_t PhoneStartCallIntent.Builder.withCallGroups(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 256);

  v1(v2);
}

uint64_t PhoneStartCallIntent.Builder.build()()
{
  type metadata accessor for PhoneStartCallIntent(0);
  v0 = swift_allocObject();

  PhoneStartCallIntent.init(builder:)();
  return v0;
}

uint64_t PhoneStartCallIntent.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_callCapability);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_audioRoute);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent7Builder_destinationType);

  return v0;
}

uint64_t key path setter for PhoneStartCallIntent.mockGlobals : PhoneStartCallIntent(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t *PhoneStartCallIntent.init(builder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v0[2] = 0;
  OUTLINED_FUNCTION_16_24();
  (*(v4 + 128))();
  OUTLINED_FUNCTION_39_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability);
  OUTLINED_FUNCTION_16_24();
  (*(v5 + 152))();
  OUTLINED_FUNCTION_39_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
  OUTLINED_FUNCTION_16_24();
  (*(v6 + 176))();
  OUTLINED_FUNCTION_39_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
  OUTLINED_FUNCTION_16_24();
  (*(v7 + 200))();
  OUTLINED_FUNCTION_39_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);
  OUTLINED_FUNCTION_16_24();
  *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts) = (*(v8 + 224))();
  OUTLINED_FUNCTION_16_24();
  *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callGroups) = (*(v9 + 248))();
  if (((*(*v0 + 184))() & 1) == 0)
  {
    v10 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_424FD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a5StartB6IntentCmMd, &_s27PhoneCallFlowDelegatePlugin0a5StartB6IntentCmMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("Building an instance of %s without all required inputs", v16);
  }

  return v1;
}

void PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for PhoneStartCallIntent.Builder(0);
  swift_allocObject();
  PhoneStartCallIntent.Builder.init()();
  OUTLINED_FUNCTION_35_0();
  v15 = (*(v14 + 288))(a1);

  (*(*v15 + 304))(a2);

  OUTLINED_FUNCTION_35_0();
  v17 = (*(v16 + 320))(a3);

  (*(*v17 + 336))(a4);

  OUTLINED_FUNCTION_35_0();
  v19 = (*(v18 + 352))(a5);

  v20 = (*(*v19 + 368))(a6);

  (*(v7 + 176))(v20);

  outlined destroy of SpeakableString?(a4);
  outlined destroy of SpeakableString?(a3);
  outlined destroy of SpeakableString?(a2);
  outlined destroy of SpeakableString?(a1);
  OUTLINED_FUNCTION_65();
}

Swift::Bool __swiftcall PhoneStartCallIntent.allRequiredInputsHaveValues()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability, &v17 - v10);
  type metadata accessor for SpeakableString();
  v12 = OUTLINED_FUNCTION_41_27(v11);
  outlined destroy of SpeakableString?(v11);
  result = v12 != 1 && (outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute, v2), v13 = OUTLINED_FUNCTION_41_27(v2), outlined destroy of SpeakableString?(v2), v13 != 1) && (outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider, v7), v14 = OUTLINED_FUNCTION_41_27(v7), outlined destroy of SpeakableString?(v7), v14 != 1) && (outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType, v0), v15 = OUTLINED_FUNCTION_41_27(v0), outlined destroy of SpeakableString?(v0), v15 != 1) && *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts) != 0;
  return result;
}

void PhoneStartCallIntent.getProperty(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_43_24();
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = a1 == 0x617061436C6C6163 && a2 == 0xEE007974696C6962;
  if (v18 || (OUTLINED_FUNCTION_8_4(0x617061436C6C6163, 0xEE007974696C6962) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability, v17);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v17);
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = v17;
    goto LABEL_9;
  }

  v20 = a1 == 0x756F526F69647561 && a2 == 0xEA00000000006574;
  if (v20 || (OUTLINED_FUNCTION_8_4(0x756F526F69647561, 0xEA00000000006574) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute, v14);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v14);
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = v14;
    goto LABEL_9;
  }

  v21 = a1 == 0xD000000000000015 && 0x80000000004522D0 == a2;
  if (v21 || (OUTLINED_FUNCTION_8_4(0xD000000000000015, 0x80000000004522D0) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider, v5);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v5);
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = v5;
LABEL_9:
    outlined destroy of SpeakableString?(v19);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
LABEL_11:
    OUTLINED_FUNCTION_65();
    return;
  }

  v22 = OUTLINED_FUNCTION_32_23();
  v24 = a1 == v22 && a2 == v23;
  if (v24 || (OUTLINED_FUNCTION_8_4(v22, v23) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType, v4);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v4);
    if (!v18)
    {
LABEL_34:
      OUTLINED_FUNCTION_40_24();
      OUTLINED_FUNCTION_16_11();
      (*(v25 + 32))();
      goto LABEL_11;
    }

    v19 = v4;
    goto LABEL_9;
  }

  v26 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v26 || (OUTLINED_FUNCTION_8_4(0x73746361746E6F63, 0xE800000000000000) & 1) != 0)
  {
    if (!*(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts))
    {
      goto LABEL_10;
    }

    v27 = type metadata accessor for PhonePersonList();
    OUTLINED_FUNCTION_18_26(v27);
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v29 = a1 == 0x756F72476C6C6163 && a2 == 0xEA00000000007370;
    if (!v29 && (OUTLINED_FUNCTION_8_4(0x756F72476C6C6163, 0xEA00000000007370) & 1) == 0)
    {
      goto LABEL_10;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMR);
    OUTLINED_FUNCTION_18_26(v30);
    OUTLINED_FUNCTION_65();
  }
}

PhoneCallFlowDelegatePlugin::PhoneStartCallIntent::CodingKeys_optional __swiftcall PhoneStartCallIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneStartCallIntent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneStartCallIntent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x617061436C6C6163;
  switch(a1)
  {
    case 1:
      result = 0x756F526F69647561;
      break;
    case 2:
      result = OUTLINED_FUNCTION_20_36();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32_23();
      break;
    case 4:
      result = 0x73746361746E6F63;
      break;
    case 5:
      result = 0x756F72476C6C6163;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneStartCallIntent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneStartCallIntent.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneStartCallIntent::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneStartCallIntent.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneStartCallIntent.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneStartCallIntent.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneStartCallIntent::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneStartCallIntent.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneStartCallIntent::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneStartCallIntent.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneStartCallIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneStartCallIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneStartCallIntent.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);

  return v0;
}

uint64_t PhoneStartCallIntent.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_35_0();

  return swift_deallocClassInstance();
}

uint64_t PhoneStartCallIntent.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d5StartE6IntentC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d5StartE6IntentC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_13_49();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(v11, v12, &protocol conformance descriptor for SpeakableString);
  OUTLINED_FUNCTION_4_67(v4 + v10);
  if (!v2)
  {
    OUTLINED_FUNCTION_4_67(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
    OUTLINED_FUNCTION_4_67(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
    OUTLINED_FUNCTION_4_67(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);
    type metadata accessor for PhonePersonList();
    OUTLINED_FUNCTION_12_53();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(v13, v14, &protocol conformance descriptor for PhonePersonList);
    OUTLINED_FUNCTION_22_28();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMR);
    lazy protocol witness table accessor for type [PhoneCallGroup] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhoneCallGroup] and conformance <A> [A], &lazy protocol witness table cache variable for type PhoneCallGroup and conformance PhoneCallGroup, &protocol conformance descriptor for PhoneCallGroup, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_22_28();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t lazy protocol witness table accessor for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhoneStartCallIntent.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneStartCallIntent.init(from:)(a1);
  return v2;
}

uint64_t PhoneStartCallIntent.init(from:)(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_43_24();
  __chkstk_darwin(v10);
  v29 = &v27 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d5StartE6IntentC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d5StartE6IntentC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v32 = v2;
  v33 = a1;
  *(v2 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneStartCallIntent.CodingKeys and conformance PhoneStartCallIntent.CodingKeys();
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    v20 = v32;

    type metadata accessor for PhoneStartCallIntent(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v3;
    v28 = v1;
    type metadata accessor for SpeakableString();
    LOBYTE(v35) = 0;
    OUTLINED_FUNCTION_13_49();
    v16 = _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(v14, v15, &protocol conformance descriptor for SpeakableString);
    v17 = v29;
    OUTLINED_FUNCTION_18_28();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v16;
    v20 = v32;
    outlined init with take of SpeakableString?(v17, v32 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability);
    LOBYTE(v35) = 1;
    OUTLINED_FUNCTION_18_28();
    v29 = v19;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v4, v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
    LOBYTE(v35) = 2;
    v21 = v31;
    OUTLINED_FUNCTION_18_28();
    v27 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v21, v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
    LOBYTE(v35) = 3;
    v22 = v28;
    OUTLINED_FUNCTION_18_28();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v22, v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);
    type metadata accessor for PhonePersonList();
    v34 = 4;
    OUTLINED_FUNCTION_12_53();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(v23, v24, &protocol conformance descriptor for PhonePersonList);
    OUTLINED_FUNCTION_21_35();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMR);
    v34 = 5;
    lazy protocol witness table accessor for type [PhoneCallGroup] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhoneCallGroup] and conformance <A> [A], &lazy protocol witness table cache variable for type PhoneCallGroup and conformance PhoneCallGroup, &protocol conformance descriptor for PhoneCallGroup, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_21_35();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = OUTLINED_FUNCTION_2_93();
    v26(v25);
    *(v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callGroups) = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20;
}

uint64_t lazy protocol witness table accessor for type [PhoneCallGroup] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB5GroupCGMR);
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_4(a2, type metadata accessor for PhoneCallGroup, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneStartCallIntent(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 168))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneStartCallIntent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneStartCallIntent(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneStartCallIntent.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneStartCallIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_39_20@<X0>(uint64_t a1@<X8>)
{

  return outlined init with take of SpeakableString?(v2, v1 + a1);
}

uint64_t *OUTLINED_FUNCTION_40_24()
{
  v0[3] = v1;

  return __swift_allocate_boxed_opaque_existential_1(v0);
}

uint64_t *PhoneStartRequestUtterances.confirmUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.confirmUtterance;
}

uint64_t *PhoneStartRequestUtterances.cancelUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for cancelUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.cancelUtterance;
}

uint64_t one-time initialization function for cancelUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v7 = dispatch thunk of MachineUtteranceBuilder.build()();
  v9 = v8;

  *a4 = v7;
  *a5 = v9;
  return result;
}

void _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC26makeTCCConfirmationContext3app07SiriKitC00F6UpdateV0L13AppResolution0O0C_tFZSo8INIntentC_So0Q8ResponseCTt1g5(uint64_t a1)
{
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  v1 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v1 setReason:SAAceConfirmationReasonAUTHORIZE_SIRIKIT_APPValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_426260;
  *(v2 + 32) = v1;
  v3 = v1;
  NLContextUpdate.conversationStateAttachments.setter();
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  App.appIdentifier.getter();
  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  NLContextUpdate.nlInput.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t SimpleConfirmationResponseProvider.init(phoneCallConfirmation:)(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      v12 = type metadata accessor for ConfirmationResponse();
      v10 = v5;
      v11 = 1;
      goto LABEL_7;
    }

    v6 = &enum case for ConfirmationResponse.confirmed(_:);
  }

  else
  {
    v6 = &enum case for ConfirmationResponse.rejected(_:);
  }

  v7 = *v6;
  v8 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_23_1();
  (*(v9 + 104))(v5, v7, v8);
  v10 = v5;
  v11 = 0;
  v12 = v8;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
  return SimpleConfirmationResponseProvider.init(_:)();
}

uint64_t PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  outlined init with copy of SignalProviding(a1, v6 + 272);
  outlined init with copy of SignalProviding(a4, v6 + 192);
  outlined init with copy of SignalProviding(a5, v6 + 232);
  outlined init with copy of SignalProviding(a3, v29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_2();
  v14(v13);
  v15 = v27;
  v16 = v28;
  v17 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v25[3] = v15;
  v25[4] = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  outlined init with copy of SignalProviding(a6, v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = OUTLINED_FUNCTION_2();
  v20(v19);
  v21 = PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(a2, v29, v25, v24, v23);
  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

uint64_t PhoneTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 16) = v3;
  *v3 = v4;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return PhoneTCCFlowStrategy.makeTCCPrompt(app:)();
}

uint64_t PhoneTCCFlowStrategy.actionForInput(input:)()
{
  v0 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  Input.parse.getter();
  v7 = PhoneTCCFlowStrategy.parseForConfirmation(parse:)(v6);
  (*(v2 + 8))(v6, v0);
  if (v7 == 5)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v12, v13, "#PhoneTCCAcceptanceFlowStrategy Did not receive a confirmation, ignoring Input");
      OUTLINED_FUNCTION_26_0(v11);
    }

    return static ActionForInput.ignore()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v19, v20, "#PhoneTCCAcceptanceFlowStrategy Received a confirmation");
      OUTLINED_FUNCTION_26_0(v18);
    }

    return static ActionForInput.handle()();
  }
}

uint64_t PhoneTCCFlowStrategy.parseTCCConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Parse();
  v1[5] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t PhoneTCCFlowStrategy.parseTCCConfirmationResponse(input:)(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 56);
  Input.parse.getter();
  v3 = PhoneTCCFlowStrategy.parseForConfirmation(parse:)(v2);
  v4 = OUTLINED_FUNCTION_92();
  v5(v4);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v1 + 64) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "#PhoneTCCAcceptanceFlowStrategy User responded: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  SimpleConfirmationResponseProvider.init(phoneCallConfirmation:)(v3);

  OUTLINED_FUNCTION_11();

  return v14();
}

uint64_t PhoneTCCFlowStrategy.makeTCCConfirmationRejectedResponse(app:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v1 + 272, (v0 + 2));
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v2 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v2;
  v7 = (*(*v2 + 136) + **(*v2 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v3;
  *v3 = v4;
  v3[1] = PhoneTCCFlowStrategy.makeTCCConfirmationRejectedResponse(app:intent:);
  v5 = v0[7];

  return v7(v5);
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
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t PhoneTCCFlowStrategy.makeTCCCancelledResponse(app:intent:)()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v11 = (*(*v0 + 248) + **(*v0 + 248));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v11(v7, v5, v3);
}

uint64_t PhoneTCCFlowStrategy.parseForConfirmation(parse:)(uint64_t a1)
{
  v85 = type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v78 = v4 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_16_2();
  v80 = v6;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v7);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_16_2();
  v77 = v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  v81 = &v75 - v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  v79 = &v75 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  __chkstk_darwin(v20);
  v22 = (&v75 - v21);
  v23 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v82 = v24;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v29 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v31 = v30;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  (*(v31 + 16))(v34 - v33, a1, v29);
  if ((*(v31 + 88))(v35, v29) == enum case for Parse.directInvocation(_:))
  {
    (*(v31 + 96))(v35, v29);
    (*(v82 + 32))(v28, v35, v23);
    static CommonDirectAction.from(_:)(v22);
    v36 = v85;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v36);
    v37 = v84;
    v38 = *(v84 + 48);
    v39 = OUTLINED_FUNCTION_55();
    outlined init with copy of CommonDirectAction?(v39, v40);
    outlined init with copy of CommonDirectAction?(v19, &v9[v38]);
    OUTLINED_FUNCTION_4_1(v9);
    v83 = v23;
    v41 = v9;
    if (v50)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_4_1(&v9[v38]);
      if (v50)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
LABEL_25:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        v67 = OUTLINED_FUNCTION_17_42();
        v68(v67);
        return 0;
      }
    }

    else
    {
      v48 = v9;
      v49 = v79;
      outlined init with copy of CommonDirectAction?(v48, v79);
      OUTLINED_FUNCTION_4_1(v41 + v38);
      if (!v50)
      {
        v76 = v22;
        v64 = v78;
        outlined init with take of CommonDirectAction(v41 + v38, v78);
        static CommonDirectAction.__derived_enum_equals(_:_:)(v49, v64);
        v66 = v65;
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v64, type metadata accessor for CommonDirectAction);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v49, type metadata accessor for CommonDirectAction);
        v36 = v85;
        v22 = v76;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        if (v66)
        {
          goto LABEL_25;
        }

LABEL_13:
        v52 = v81;
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v52, 0, 1, v36);
        v53 = *(v37 + 48);
        v54 = v80;
        outlined init with copy of CommonDirectAction?(v22, v80);
        outlined init with copy of CommonDirectAction?(v52, v54 + v53);
        OUTLINED_FUNCTION_4_1(v54);
        if (v50)
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
          v55 = OUTLINED_FUNCTION_17_42();
          v56(v55);
          OUTLINED_FUNCTION_4_1(v54 + v53);
          if (!v50)
          {
            goto LABEL_22;
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        }

        else
        {
          v57 = v22;
          v58 = v36;
          v59 = v77;
          outlined init with copy of CommonDirectAction?(v54, v77);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54 + v53, 1, v58);
          if (EnumTagSinglePayload == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
            v61 = OUTLINED_FUNCTION_17_42();
            v62(v61);
            OUTLINED_FUNCTION_1_95();
            _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v59, v63);
LABEL_22:
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMR);
            return 5;
          }

          v69 = v78;
          outlined init with take of CommonDirectAction(v54 + v53, v78);
          static CommonDirectAction.__derived_enum_equals(_:_:)(v59, v69);
          v71 = v70;
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v69, type metadata accessor for CommonDirectAction);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
          v72 = OUTLINED_FUNCTION_17_42();
          v73(v72);
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v59, type metadata accessor for CommonDirectAction);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
          if ((v71 & 1) == 0)
          {
            return 5;
          }
        }

        return 1;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_1_95();
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v49, v51);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSg_ADtMR);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1((v83 + 272), *(v83 + 296));
  v42 = OUTLINED_FUNCTION_55();
  v44 = v43(v42);
  (*(*v44 + 192))(v86, a1);

  if (v87)
  {
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v45 = OUTLINED_FUNCTION_55();
    v47 = v46(v45);
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v47 = 5;
  }

  (*(v31 + 8))(v35, v29);
  return v47;
}

uint64_t PhoneTCCFlowStrategy.makeTCCPrompt(app:)()
{
  OUTLINED_FUNCTION_15();
  v1[246] = v0;
  v1[245] = v2;
  v1[239] = v3;
  v4 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[247] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[248] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v5);
  v1[249] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[250] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[251] = v7;
  v1[252] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for CommonDirectAction(0);
  v1[253] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[254] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for YesNoConfirmationModel(0);
  v1[255] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[256] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for NLContextUpdate();
  v1[257] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[258] = v11;
  v1[259] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for Locale();
  v1[260] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[261] = v13;
  v1[262] = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_21(v14);
  v1[263] = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  v1 = v0[262];
  v2 = v0[261];
  v20 = v0[260];
  v3 = v0[246];
  v4 = v0[245];
  v5 = v3[37];
  v6 = v3[38];
  __swift_project_boxed_opaque_existential_1(v3 + 34, v5);
  (*(v6 + 8))(v5, v6);
  v7 = v3[21];
  v8 = v3[22];
  __swift_project_boxed_opaque_existential_1(v3 + 18, v7);
  __swift_project_boxed_opaque_existential_1(v0 + 167, v0[170]);
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v8 + 16))(v4, v1, v7, v8);
  v10 = v9;
  (*(v2 + 8))(v1, v20);
  if (v10)
  {
    App.isFirstParty()();
    AppDisplayInfo.init(displayName:isFirstParty:)();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v0[263];
  v13 = v0[246];
  v14 = type metadata accessor for AppDisplayInfo();
  __swift_storeEnumTagSinglePayload(v12, v11, 1, v14);
  v15 = v13[32];
  v16 = v13[33];
  __swift_project_boxed_opaque_existential_1(v13 + 29, v15);
  outlined init with copy of SignalProviding((v0 + 167), (v0 + 177));
  v21 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[264] = v17;
  *v17 = v0;
  v17[1] = PhoneTCCFlowStrategy.makeTCCPrompt(app:);
  v18 = v0[263];

  return v21(v18, v0 + 177, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2120) = v5;
  *(v3 + 2128) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 1416, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  __swift_project_boxed_opaque_existential_1((v0 + 1336), *(v0 + 1360));
  OUTLINED_FUNCTION_55();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v1 = *(v0 + 1968);
    v2 = v1[32];
    v3 = v1[33];
    __swift_project_boxed_opaque_existential_1(v1 + 29, v2);
    v11 = (*(v3 + 24) + **(v3 + 24));
    v4 = swift_task_alloc();
    *(v0 + 2136) = v4;
    *v4 = v0;
    v4[1] = PhoneTCCFlowStrategy.makeTCCPrompt(app:);
    v5 = *(v0 + 2104);

    return v11(v5, v2, v3);
  }

  else
  {
    *(v0 + 2168) = 0u;
    _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC26makeTCCConfirmationContext3app07SiriKitC00F6UpdateV0L13AppResolution0O0C_tFZSo8INIntentC_So0Q8ResponseCTt1g5(*(v0 + 1960));
    OUTLINED_FUNCTION_10_61();
    OUTLINED_FUNCTION_9_60();
    v7 = OUTLINED_FUNCTION_7_61();

    return _swift_asyncLet_get_throwing(v7, v8, v9, v10);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v7[268] = v0;

  if (!v0)
  {
    v7[269] = v3;
    v7[270] = v5;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[270];
  v0[272] = v0[269];
  v0[271] = v1;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC26makeTCCConfirmationContext3app07SiriKitC00F6UpdateV0L13AppResolution0O0C_tFZSo8INIntentC_So0Q8ResponseCTt1g5(v0[245]);
  OUTLINED_FUNCTION_10_61();
  OUTLINED_FUNCTION_9_60();
  v2 = OUTLINED_FUNCTION_7_61();

  return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 2184) = v0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v2, v3, v4);
}

{
  v1 = v0[254];
  v2 = v0[246];
  v0[274] = v0[227];
  v0[275] = v0[228];
  swift_storeEnumTagMultiPayload();
  v3 = v2[38];
  __swift_project_boxed_opaque_existential_1(v2 + 34, v2[37]);
  v4 = *(v3 + 8);

  v5 = OUTLINED_FUNCTION_92();
  v4(v5);
  v0[276] = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v0 + 187);
  __swift_destroy_boxed_opaque_existential_1(v0 + 187);
  OUTLINED_FUNCTION_1_95();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v1, v6);

  return _swift_asyncLet_get_throwing(v0 + 82, v0 + 229, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 192);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 2216) = v0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v2, v3, v4);
}

{
  v29 = *(v0 + 2200);
  v28 = *(v0 + 2192);
  v34 = *(v0 + 2176);
  v32 = *(v0 + 2208);
  v33 = *(v0 + 2168);
  v38 = *(v0 + 2120);
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2040);
  v3 = *(v0 + 2032);
  v35 = *(v0 + 2072);
  v36 = *(v0 + 1984);
  v37 = *(v0 + 1976);
  v4 = *(v0 + 1968);
  v31 = *(v0 + 1832);
  v5 = *(v0 + 1840);
  swift_storeEnumTagMultiPayload();
  v30 = v4;
  v6 = v4[37];
  v7 = v4[38];
  __swift_project_boxed_opaque_existential_1(v4 + 34, v6);
  v8 = *(v7 + 8);

  v8(v6, v7);
  v9 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 1576));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1576));
  OUTLINED_FUNCTION_1_95();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v3, v10);
  *(v0 + 1848) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v11 = (v1 + *(v2 + 36));
  *v11 = 0xD000000000000011;
  v11[1] = 0x8000000000456DF0;
  *(v0 + 1864) = v28;
  *(v0 + 1872) = v29;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v12 = v32;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1880) = v31;
  *(v0 + 1888) = v5;
  Loggable.init(wrappedValue:)();
  v13 = v9;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1896) = v33;
  *(v0 + 1904) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  static DialogPhase.confirmation.getter();
  v14 = swift_task_alloc();
  *(v14 + 16) = v1;
  *(v14 + 24) = v35;
  OutputGenerationManifest.init(dialogPhase:_:)();

  __swift_project_boxed_opaque_existential_1((v0 + 1336), *(v0 + 1360));
  dispatch thunk of DeviceState.isCarPlay.getter();
  _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_0(v1, v36, type metadata accessor for YesNoConfirmationModel);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v30 + 34, v30[37]);
  v15 = OUTLINED_FUNCTION_92();
  v16(v15);
  v17 = *(v0 + 1680);
  v18 = *(v0 + 1688);
  __swift_project_boxed_opaque_existential_1((v0 + 1656), v17);
  *(v0 + 1760) = v37;
  *(v0 + 1768) = lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1736));
  _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_0(v36, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v0 + 2224) = v20;
  *(v20 + 16) = xmmword_426260;
  *(v20 + 32) = v38;
  v21 = *(v18 + 8);
  v22 = v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 2232) = v23;
  *v23 = v24;
  v23[1] = PhoneTCCFlowStrategy.makeTCCPrompt(app:);
  v25 = *(v0 + 2016);
  v26 = *(v0 + 1912);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v26, v0 + 1736, v20, v25, v17, v21);
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

  __swift_destroy_boxed_opaque_existential_1((v2 + 1736));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[256];
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v0[248], type metadata accessor for PhoneSnippetDataModels);
  v2 = OUTLINED_FUNCTION_55();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 207);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(v1, type metadata accessor for YesNoConfirmationModel);

  return _swift_asyncLet_finish(v0 + 82, v0 + 229, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 222);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1816, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 1920);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 1832, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1816, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 1456);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 1832, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 1616);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1816, PhoneTCCFlowStrategy.makeTCCPrompt(app:), v0 + 1696);
}

{
  return OUTLINED_FUNCTION_0_1(PhoneTCCFlowStrategy.makeTCCPrompt(app:));
}

uint64_t PhoneTCCFlowStrategy.makeTCCPrompt(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 2104);
  v25 = *(v12 + 1984);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v14 = OUTLINED_FUNCTION_92();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v12 + 1336));

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v12 + 2104), &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 2104);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_27_28();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v13 = OUTLINED_FUNCTION_55();
  v14(v13);
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_27_28();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v13 = OUTLINED_FUNCTION_55();
  v14(v13);
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t implicit closure #1 in PhoneTCCFlowStrategy.makeTCCPrompt(app:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #1 in PhoneTCCFlowStrategy.makeTCCPrompt(app:);

  return static LabelTemplates.yes()();
}

uint64_t implicit closure #1 in PhoneTCCFlowStrategy.makeTCCPrompt(app:)()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t implicit closure #2 in PhoneTCCFlowStrategy.makeTCCPrompt(app:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in PhoneTCCFlowStrategy.makeTCCPrompt(app:);

  return static LabelTemplates.no()();
}

uint64_t implicit closure #2 in PhoneTCCFlowStrategy.makeTCCPrompt(app:)()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t closure #1 in PhoneTCCFlowStrategy.makeTCCPrompt(app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for YesNoConfirmationModel(0);

  OutputGenerationManifest.responseViewId.setter();
  v7 = type metadata accessor for NLContextUpdate();
  (*(*(v7 - 8) + 16))(v6, a3, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t PhoneTCCFlowStrategy.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  return __swift_destroy_boxed_opaque_existential_1(v0 + 34);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.parseTCCConfirmationResponse(input:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 240) + **(**v2 + 240));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 248) + **(**v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 256) + **(**v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for PhoneTCCFlowStrategy(0, *(a5 + 176), *(a5 + 184), v14);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 224) + **(**v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneTCCFlowStrategy(0, *(a4 + 176), *(a4 + 184), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneTCCFlowStrategy(0, *(a4 + 176), *(a4 + 184), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneTCCFlowStrategy(0, *(a4 + 176), *(a4 + 184), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:) in conformance PhoneTCCFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneTCCFlowStrategy(0, *(a4 + 176), *(a4 + 184), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(unint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = specialized Array.count.getter(a1);
  v6 = specialized Array.count.getter(a2);
  if (v6 < v5)
  {
    v5 = v6;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:

    __break(1u);
    return;
  }

  v28 = a1 >> 62;
  v26 = a2 >> 62;
  v23 = a2;
  if (v5)
  {
    v27 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v25 = a2 & 0xC000000000000001;
    v9 = 4;
    v22 = v5;
    v10 = v5;
    while (1)
    {
      v11 = v28 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      v12 = v9 - 4;
      if (v9 - 4 == v11)
      {
        break;
      }

      if (v27)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_51;
        }

        v13 = *(a1 + 8 * v9);
      }

      v5 = v13;
      if (v26)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *(v8 + 16);
      }

      if (v12 == v14)
      {
        goto LABEL_53;
      }

      if (v25)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 8 * v9);
      }

      a3(v5, v15);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v9;
      --v10;
      a2 = v23;
      if (!v10)
      {
        v5 = v22;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v25 = a2 & 0xC000000000000001;
LABEL_25:
  for (i = v5 + 4; ; ++i)
  {
    v17 = v28 ? _CocoaArrayWrapper.endIndex.getter() : *(v7 + 16);
    v5 = i - 4;
    if (i - 4 == v17)
    {
      break;
    }

    if (v27)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_49;
      }

      v18 = *(a1 + 8 * i);
    }

    v19 = v18;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_48;
    }

    if (v26)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *(v8 + 16);
    }

    if (v5 == v20)
    {

      return;
    }

    if (v25)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v8 + 16))
      {
        goto LABEL_50;
      }

      v21 = *(v23 + 8 * i);
    }

    a3(v19, v21);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }
}

void *static PicsDisambiguationBuilder.makeMixedRichCardSectionDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for SiriKitDisambiguationItem();
  v5 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a4, v5, partial apply for closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:));
  v7 = specialized BidirectionalCollection.last.getter(v6);
  if (v7)
  {
    v8 = v7;
    [v7 setSeparatorStyle:1];
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v9 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(_swiftEmptyArrayStorage, v9);
  return v9;
}

void *closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    dispatch thunk of SiriKitDisambiguationItemComponent.toDisplayString(deviceLocked:)();
  }

  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    v7 = SiriKitDisambiguationItemComponent.printBlue.getter();
  }

  else
  {
    v7 = 0;
  }

  if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
  {
    dispatch thunk of SiriKitDisambiguationItemComponent.toDisplayString(deviceLocked:)();
  }

  if (dispatch thunk of SiriKitDisambiguationItem.getThirdComponent()())
  {
    dispatch thunk of SiriKitDisambiguationItemComponent.toDisplayString(deviceLocked:)();
  }

  SiriKitDisambiguationItem.monogramLetters.getter();
  SiriKitDisambiguationItem.contactIdentifiers.getter();
  v8 = SiriKitDisambiguationItem.displayImage.getter();
  v9 = v7 & 1;
  v10 = static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:withBlueTitle:)();

  if (INPerson.isProvidedByPlus.getter())
  {
    static PicsDisambiguationBuilder.tryToAttachPicsSubtitle(person:cardSection:needsBlueTitle:maxLines:sharedGlobals:)(a1, v10, v9, 1, a5);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#DefaultDisambiguationBuilder current person isn't provided by PLUS use regular SFCardSection", v14, 2u);
    }
  }

  v15 = SiriKitDisambiguationItem.directInvocation.getter();
  if (v15)
  {
    v16 = v15;
    static Device.current.getter();
    v17 = static PicsDisambiguationBuilder.makeStartRequestFromDirectInvocation(directInvocationPayload:deviceState:)(v16, v22);

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_426260;
    *(v18 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
    outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v18, v10);
    swift_getObjectType();
    specialized Array.append(_:)(v17, a6);
  }

  return v10;
}

void static PicsDisambiguationBuilder.tryToAttachPicsSubtitle(person:cardSection:needsBlueTitle:maxLines:sharedGlobals:)(void *a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = &dword_54B000;
  v16 = &unk_427000;
  if (v14)
  {
    v17 = v14;
    v47[1] = a3;
    v48 = a4;
    v50 = a1;
    v18 = a5[3];
    v19 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v18);
    v20 = *(v19 + 176);
    v49 = a2;
    v21 = v20(v18, v19);
    type metadata accessor for PhoneCallFlowDelegatePlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v24 = Locale.identifier.getter();
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    v55 = v24;
    v56 = v26;
    v53 = 45;
    v54 = 0xE100000000000000;
    v51 = 95;
    v52 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v29 = v28;

    outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000011, 0x800000000045C400, 1396918608, 0xE400000000000000, v23, v27, v29, v21);
    v31 = v30;

    v16 = &unk_427000;
    a1 = v50;
    if (v31)
    {
      v32 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

      [v17 setLeadingSubtitle:v32];

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.siriPhone);
      v34 = a1;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&dword_0, v35, v36, "#DefaultDisambiguationBuilder use PICS row section for person: %@ ", v37, 0xCu);
        outlined destroy of NSObject?(v38);
      }
    }

    v15 = &dword_54B000;
  }

  if (*(v15 + 369) != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.siriPhone);
  v41 = a1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = v16[411];
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_0, v42, v43, "#DefaultDisambiguationBuilder find PLUS flag but can't generate PICS row section for person:%@ ", v44, 0xCu);
    outlined destroy of NSObject?(v45);
  }
}

id static PicsDisambiguationBuilder.makeStartRequestFromDirectInvocation(directInvocationPayload:deviceState:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = DeviceState.asInvocationContext.getter();
  (*(v5 + 104))(v7, enum case for InputOrigin.dialogButtonTap(_:), v4);
  InputOrigin.aceInputOrigin.getter();
  (*(v5 + 8))(v7, v4);
  v9 = String._bridgeToObjectiveC()();

  [v8 setInputOrigin:v9];

  v10 = objc_opt_self();
  v11 = [v10 runSiriKitExecutorCommandWithContext:v8 payload:a1];
  v12 = [v10 wrapCommandInStartLocalRequest:v11];

  return v12;
}

void outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setReferencedCommands:isa];
}

void outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

uint64_t specialized Array.append(_:)(uint64_t a1, void *a2)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = INPerson.isProvidedByPlus.getter();

    v3 = v4 + 1;
  }

  while (!v7);
}

void *static PicsUtils.splitPicsPerson(persons:speakableStrings:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_33:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = *a2;
  if (v4 == *(*a2 + 16))
  {
    v28 = v4 - 1;
    v6 = specialized Array.count.getter(a1);
    v7 = 0;
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = a1 + 32;
    while (1)
    {
      if (v6 == v8)
      {
        goto LABEL_13;
      }

      if (v9)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v12 = *(v11 + 8 * v8);
      }

      v13 = v12;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (INPerson.isProvidedByPlus.getter())
      {
        break;
      }

      ++v8;
      v7 += 2;
    }

    v14 = v5[2];
    if (v8 >= v14)
    {
      __break(1u);
    }

    else
    {
      v10 = v28;
      if (v28 < v14)
      {
        v11 = v5[v7 + 4];
        v9 = v5[v7 + 5];
        v15 = &v5[2 * v28 + 4];
        v6 = v15[1];
        v27 = *v15;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v5;
LABEL_18:
          v5 = v10;
          v17 = &v16[2 * v10];
          v17[4] = v11;
          v17[5] = v9;

          if (v8 >= v16[2])
          {
            __break(1u);
            goto LABEL_38;
          }

          v18 = &v16[v7];
          v18[4] = v27;
          v18[5] = v6;

          *a2 = v16;

          a2 = specialized Collection.prefix(_:)(v5);
          v5 = v19;
          v8 = v20;
          v6 = v21;
          if (v21)
          {
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v23 = swift_dynamicCastClass();
            if (!v23)
            {
              swift_unknownObjectRelease();
              v23 = _swiftEmptyArrayStorage;
            }

            v24 = v23[2];

            if (__OFSUB__(v6 >> 1, v8))
            {
              goto LABEL_39;
            }

            if (v24 != (v6 >> 1) - v8)
            {
              goto LABEL_40;
            }

            v5 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v5)
            {
              goto LABEL_28;
            }

            v5 = _swiftEmptyArrayStorage;
            goto LABEL_27;
          }

          while (1)
          {
            specialized _copyCollectionToContiguousArray<A>(_:)(a2, v5, v8, v6);
            v5 = v22;
LABEL_27:
            swift_unknownObjectRelease();
LABEL_28:
            if (v28 < v16[2])
            {
              break;
            }

LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            swift_unknownObjectRelease();
          }

          return v5;
        }

LABEL_36:
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v16 = v26;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_13:

  return v5;
}

uint64_t key path setter for PlayVoiceMailAction.nextAction : PlayVoiceMailAction(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 136);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ReadVoiceMailAction.nextAction.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t PlayVoiceMailAction.voicemailIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PlayVoiceMailAction.__allocating_init(voicemailIdentifier:isLeadingSavedVoiceMailPostPrompt:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  PlayVoiceMailAction.init(voicemailIdentifier:isLeadingSavedVoiceMailPostPrompt:aceServiceInvoker:searchCallHistoryCatFamily:)(a1, a2, v7, a4, a5);
  return v10;
}

uint64_t PlayVoiceMailAction.init(voicemailIdentifier:isLeadingSavedVoiceMailPostPrompt:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4, uint64_t a5)
{
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x8000000000441E00;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  outlined init with take of SPHConversation(a4, v5 + 72);
  *(v5 + 112) = a5;
  return v5;
}

void PlayVoiceMailAction.run(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPlayVoicemailIntent, INPlayVoicemailIntent_ptr);
  v14 = static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)();
  if (v2[64] == 1)
  {
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v14;
    v6[5] = v2;
    v7 = *(*v2 + 168);

    v8 = v14;

    v7(partial apply for closure #1 in PlayVoiceMailAction.run(_:), v6);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "#PlayVoiceMailAction Submitting play voicemail action", v12, 2u);
    }

    __swift_project_boxed_opaque_existential_1(v3 + 9, *(v3 + 12));
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    dispatch thunk of AceServiceInvoker.submit<A>(_:completion:)();
  }
}

void closure #1 in PlayVoiceMailAction.run(_:)(void *a1, char a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    a3(0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_427BB0;
    *(v11 + 32) = a1;
    *(v11 + 40) = a5;
    __swift_project_boxed_opaque_existential_1(a6 + 9, a6[12]);
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a1, 0);
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a1, 0);
    v13 = a5;

    dispatch thunk of AceServiceInvoker.submitAllSerial(_:_:)();

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 0);
  }
}

uint64_t closure #1 in closure #1 in PlayVoiceMailAction.run(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SubmitCommandError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLIntent?(a1, v6, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
    return a2(0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    lazy protocol witness table accessor for type PlayVoiceMailAction and conformance PlayVoiceMailAction(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
    v12 = swift_allocError();
    (*(v8 + 16))(v13, v10, v7);
    a2(v12);

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t closure #2 in PlayVoiceMailAction.run(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for SubmitCommandError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  outlined init with copy of PhoneCallNLIntent?(a1, v8, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = a3;
    (*(v10 + 32))(v14, v8, v9);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v37 = a2;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = *(v10 + 16);
    v17 = v38;
    v34 = v14;
    v35 = v16;
    v16(v38, v14, v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v20 = 136315138;
      lazy protocol witness table accessor for type PlayVoiceMailAction and conformance PlayVoiceMailAction(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
      v21 = Error.localizedDescription.getter();
      v23 = v22;
      v24 = v17;
      v25 = *(v10 + 8);
      v25(v24, v9);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v39);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_0, v18, v19, "#PlayVoiceMailAction Error submitting play voicemail command %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {

      v28 = v17;
      v25 = *(v10 + 8);
      v25(v28, v9);
    }

    lazy protocol witness table accessor for type PlayVoiceMailAction and conformance PlayVoiceMailAction(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
    v29 = swift_allocError();
    v30 = v34;
    v35(v31, v34, v9);
    v37(v29);

    return (v25)(v30, v9);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
    return (a2)(0);
  }
}

uint64_t PlayVoiceMailAction.makeSummaryView(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(*v5 + class metadata base offset for SearchCallHistoryCATs + 704);

  v7(partial apply for closure #1 in PlayVoiceMailAction.makeSummaryView(_:), v6);
}

uint64_t closure #1 in PlayVoiceMailAction.makeSummaryView(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = (&v14 - v9);
  outlined init with copy of PhoneCallNLIntent?(a1, &v14 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    swift_errorRetain();
    a2(v11, 1);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for ViewFactory();
    swift_allocObject();
    ViewFactory.init(ttsEnabled:)();
    v13 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();

    a2(v13, 0);

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PlayVoiceMailAction.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return v0;
}

uint64_t PlayVoiceMailAction.__deallocating_deinit()
{
  PlayVoiceMailAction.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for StaticAction.nextAction.modify in conformance PlayVoiceMailAction(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Action.run() in conformance PlayVoiceMailAction(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return Action.run()(a1, a2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayVoiceMailAction()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t lazy protocol witness table accessor for type PlayVoiceMailAction and conformance PlayVoiceMailAction(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t ContactDonationInfo.thirdPartyAppId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlayVoicemailModel.callRecords.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for PlayVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlayVoicemailModel;
  if (!type metadata singleton initialization cache for PlayVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayVoicemailModel.callRecords.setter(uint64_t a1)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.callRecords.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_77(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.voicemailTitle.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for PlayVoicemailModel.voicemailTitle : PlayVoicemailModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return PlayVoicemailModel.voicemailTitle.setter(v1, v2);
}

uint64_t PlayVoicemailModel.voicemailTitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.voicemailTitle.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_77(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.openPhoneText.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for PlayVoicemailModel.openPhoneText : PlayVoicemailModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return PlayVoicemailModel.openPhoneText.setter(v1, v2);
}

uint64_t PlayVoicemailModel.openPhoneText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.openPhoneText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_77(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of PlayVoicemailModel.openPhoneAction(uint64_t a1)
{
  type metadata accessor for SABaseCommand();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t PlayVoicemailModel.openPhoneAction.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t PlayVoicemailModel.openPhoneAction.setter(uint64_t a1)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*PlayVoicemailModel.openPhoneAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_77(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616D6563696F76 && a2 == 0xEE00656C7469546CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t PlayVoicemailModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x6F6365526C6C6163;
      break;
    case 2:
      result = 0x69616D6563696F76;
      break;
    case 3:
    case 4:
      result = 0x6E6F68506E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlayVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PlayVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayVoicemailModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18PlayVoicemailModelV10CodingKeys33_AEB7D46823534ECDC29C21E78A1B5472LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18PlayVoicemailModelV10CodingKeys33_AEB7D46823534ECDC29C21E78A1B5472LLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PlayVoicemailModel(0);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(v9);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v10);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMR);
    lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t PlayVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_7();
  v49 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v52 = v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
  OUTLINED_FUNCTION_7();
  v54 = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18PlayVoicemailModelV10CodingKeys33_AEB7D46823534ECDC29C21E78A1B5472LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18PlayVoicemailModelV10CodingKeys33_AEB7D46823534ECDC29C21E78A1B5472LLOGMR);
  OUTLINED_FUNCTION_7();
  v18 = v17;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  v21 = (v47 - v20);
  v58 = type metadata accessor for PlayVoicemailModel(0);
  __chkstk_darwin(v58);
  v23 = (v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[3];
  v25 = a1[4];
  v59 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();
  v55 = v21;
  v27 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v48 = v9;
    v57 = v18;
    v64[2] = 0;
    v28 = v53;
    *v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v23[1] = v29;
    v47[1] = v29;
    v64[1] = 1;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(v30);
    v31 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v60;
    v33 = v28;
    v34 = v58;
    v35 = *(v58 + 20);
    v36 = *(v54 + 32);
    v47[0] = v23;
    v36(v23 + v35, v16, v31);
    v64[0] = 2;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v37);
    v38 = v12;
    OUTLINED_FUNCTION_12_54(v32, v64, v33);
    v39 = *(v61 + 32);
    v39(v47[0] + v34[6], v38, v32);
    v63 = 3;
    v40 = v48;
    OUTLINED_FUNCTION_12_54(v32, &v63, v53);
    v41 = v57;
    v42 = v47[0];
    v39(v47[0] + v34[7], v40, v32);
    v62 = 4;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    v43 = v51;
    v44 = v52;
    v45 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v41 + 8))(v45, v53);
    (*(v49 + 32))(v42 + v34[8], v44, v43);
    outlined init with copy of PlayVoicemailModel(v42, v50);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return outlined destroy of PlayVoicemailModel(v42);
  }

  OUTLINED_FUNCTION_3_87();
  __swift_destroy_boxed_opaque_existential_1(v59);

  if (!v24)
  {
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = (*(v61 + 8))(v23 + v21[6], v25);
    if (!v26)
    {
      return result;
    }

    return (*(v61 + 8))(v23 + v21[7], v25);
  }

  result = (*(v54 + 8))(v23 + v21[5], v56);
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v26)
  {
    return (*(v61 + 8))(v23 + v21[7], v25);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A]);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of PlayVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayVoicemailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlayVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for PlayVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlayVoicemailModel.init(responseViewId:callRecords:voicemailTitle:openPhoneText:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMR);
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

unint64_t instantiation function for generic protocol witness table for PlayVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(uint64_t a1)
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

void type metadata completion function for PlayVoicemailModel(uint64_t a1)
{
  type metadata accessor for Loggable<[SingleVoicemailModel]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<String>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SABaseCommand>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<[SingleVoicemailModel]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>);
    }
  }
}

void type metadata accessor for Loggable<String>()
{
  if (!lazy cache variable for type metadata for Loggable<String>)
  {
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String>);
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseCommand>)
  {
    type metadata accessor for SABaseCommand();
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlayVoicemailModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_40();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = OUTLINED_FUNCTION_11_50();

      outlined destroy of SpeakableString?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of SpeakableString?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return OUTLINED_FUNCTION_11_50();
}

uint64_t PlayVoicemailReadIntroductionFlow.__allocating_init(app:intent:intentResponse:isSingleVoicemailRequest:items:sharedGlobals:searchCallHistorySharedGlobals:)()
{
  OUTLINED_FUNCTION_2_95();
  v0 = swift_allocObject();
  PlayVoicemailReadIntroductionFlow.init(app:intent:intentResponse:isSingleVoicemailRequest:items:sharedGlobals:searchCallHistorySharedGlobals:)();
  return v0;
}

uint64_t PlayVoicemailReadIntroductionFlow.init(app:intent:intentResponse:isSingleVoicemailRequest:items:sharedGlobals:searchCallHistorySharedGlobals:)()
{
  OUTLINED_FUNCTION_2_95();
  *(v1 + 336) = type metadata accessor for PlayVoicemailReadIntroductionFlow();
  *(v1 + 344) = &outlined read-only object #0 of PlayVoicemailReadIntroductionFlow.init(app:intent:intentResponse:isSingleVoicemailRequest:items:sharedGlobals:searchCallHistorySharedGlobals:);
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 72) = v7;
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  *(v1 + 280) = v4;
  *(v1 + 288) = v3;
  outlined init with take of SPHConversation(v2, v1 + 32);
  outlined init with copy of SearchCallHistorySharedGlobals(v0, v1 + 80);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 + 80, v9);
  outlined destroy of SearchCallHistorySharedGlobals(v0);
  outlined init with take of SPHConversation(v9, v1 + 296);
  return v1;
}

uint64_t PlayVoicemailReadIntroductionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:), v10);
}

uint64_t closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = type metadata accessor for ExecuteResponse();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (*(*a4 + 176) + **(*a4 + 176));
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:);

  return v12(v9);
}

uint64_t closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v4 + 64) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t partial apply for closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = closure #1 in ActionableCallControlFlow.execute();
  v6 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PlayVoicemailReadIntroductionFlow.execute(completion:)(v6, v7, v8, v2, v3, v4);
}

uint64_t PlayVoicemailReadIntroductionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v3 = type metadata accessor for SpeakableString();
  v1[36] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[37] = v4;
  v1[38] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v1[39] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[40] = v6;
  v1[41] = swift_task_alloc();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v7);
  v1[42] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[43] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[44] = v9;
  v1[45] = *(v10 + 64);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 416) = v0;

  if (!v0)
  {
    *(v4 + 424) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v5 = v3[7];
  v4 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
  v6 = *(v4 + 128);
  v7 = v1;
  v6(v5, v4);
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  (*(v2 + 8))(v15, v14);
  v8 = *(v0 + 424);
  LODWORD(v5) = *(v0 + 456);
  v9 = *(v0 + 376);
  v10 = *(v0 + 344);
  v11 = *(v0 + 352);
  static ExecuteResponse.complete(next:)();

  (*(v11 + 8))(v9, v10);
  if (v5 == 1)
  {
  }

  OUTLINED_FUNCTION_12_55();

  OUTLINED_FUNCTION_11();

  return v12();
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 440) = v0;

  if (!v0)
  {
    *(v5 + 448) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 344);
  v6 = *(v0 + 280);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 16))(v7, v8);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  *(v0 + 128) = v9;
  *(v0 + 136) = v10;
  __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  OUTLINED_FUNCTION_40();
  (*(v11 + 16))();
  (*(v4 + 16))(v2, v3, v5);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v1;
  (*(v4 + 32))(v13 + v12, v2, v5);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v14 = v1;
  v15 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 264) = v15;
  Flow.eraseToAnyFlow()();

  LODWORD(v7) = *(v0 + 456);
  v16 = *(v0 + 376);
  v17 = *(v0 + 344);
  v18 = *(v0 + 352);

  static ExecuteResponse.complete(next:)();

  (*(v18 + 8))(v16, v17);
  if (v7 == 1)
  {
  }

  OUTLINED_FUNCTION_12_55();

  OUTLINED_FUNCTION_11();

  return v20();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];

  (*(v3 + 8))(v1, v2);
  (*(v0[37] + 8))(v0[38], v0[36]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_23_0();

  (*(v0[44] + 8))(v0[47], v0[43]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  OUTLINED_FUNCTION_11();

  return v1();
}