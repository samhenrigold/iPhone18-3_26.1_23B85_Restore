uint64_t partial apply for closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()(v4, v0);
}

uint64_t DialogOutputFactory.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in DialogOutputFactory.makeOutput(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a5;
  v9 = (*(*a6 + 128) + **(*a6 + 128));
  v7 = swift_task_alloc();
  v6[10] = v7;
  *v7 = v6;
  v7[1] = closure #1 in DialogOutputFactory.makeOutput(_:);

  return v9(v6 + 2);
}

uint64_t closure #1 in DialogOutputFactory.makeOutput(_:)()
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
  (*(v0 + 64))(v0 + 16);
  outlined destroy of Result<Output, Error>(v0 + 16);
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t partial apply for closure #1 in DialogOutputFactory.makeOutput(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_3(v7);

  return closure #1 in DialogOutputFactory.makeOutput(_:)(v9, v2, v3, v4, v5, v6);
}

uint64_t DialogOutputFactory.makeOutput()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  *v1 = v0;
  v1[1] = DialogOutputFactory.makeOutput();
  v3 = v0[2];
  v4 = v0[3];

  return Result<>.init(catching:)(v3, &async function pointer to partial apply for closure #1 in DialogOutputFactory.makeOutput(), v4, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v1 = OUTLINED_FUNCTION_7_28();
  v2(v1);
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_40();
  (*(v3 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 112) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_11_28(v4);

  return DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)();
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
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(DialogOutputFactory.makeOutput(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t closure #1 in DialogOutputFactory.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(closure #1 in DialogOutputFactory.makeOutput(), 0, 0);
}

uint64_t closure #1 in DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v1 = OUTLINED_FUNCTION_7_28();
  v2(v1);
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_40();
  (*(v3 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 112) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_11_28(v4);

  return DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)();
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
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in DialogOutputFactory.makeOutput(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    OUTLINED_FUNCTION_11();

    return v7();
  }
}

uint64_t partial apply for closure #1 in DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return closure #1 in DialogOutputFactory.makeOutput()(v4, v0);
}

uint64_t DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v6;
  v1[10] = *(v6 - 8);
  v1[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[5];
  v2 = v0[3];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = v2[3];
  v0[12] = v3;
  v0[13] = v2[4];
  v0[14] = __swift_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v0[15] = v4;
  *(v4 + 16) = xmmword_426260;
  v7 = (*(v1 + 56) + **(v1 + 56));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);

  return v7();
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
  *(v5 + 136) = v0;

  if (v0)
  {
    v9 = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  }

  else
  {
    *(v5 + 144) = v3;
    v9 = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  *(v0[15] + 32) = v0[18];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  v10 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v6, v9, v7, v8, v1, v2, v3);
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
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t DialogOutputFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DialogOutputFactory.__deallocating_deinit()
{
  DialogOutputFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DialogOutputFactory(uint64_t a1)
{
  result = type metadata singleton initialization cache for DialogOutputFactory;
  if (!type metadata singleton initialization cache for DialogOutputFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DialogOutputFactory(uint64_t a1)
{
  result = type metadata accessor for DialogPhase();
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

uint64_t outlined destroy of Result<Output, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhoneCallFlowDelegatePlugin::DIIdentifier __swiftcall DIIdentifier.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v14[0] = 46;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v13, a1._countAndFlagsBits, a1._object);
  if (v3)
  {
    v4 = 0x8000000000456A70;
    v5 = 0xD000000000000025;
  }

  else
  {
    String.subscript.getter();
    v5 = static String._fromSubstring(_:)();
    v4 = v6;

    v7 = String.index(after:)();
    specialized Collection.subscript.getter(v7, countAndFlagsBits, object);

    countAndFlagsBits = static String._fromSubstring(_:)();
    object = v8;
  }

  v9 = v5;
  v10 = v4;
  v11 = countAndFlagsBits;
  v12 = object;
  result.id._object = v12;
  result.id._countAndFlagsBits = v11;
  result.namespace._object = v10;
  result.namespace._countAndFlagsBits = v9;
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void DIIdentifier.payloadId.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v6._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v6);
  v7._countAndFlagsBits = a3;
  v7._object = a4;
  String.append(_:)(v7);
}

uint64_t DICodable.userData()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  if (!v2)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_69();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18[0] = 0;
    v8 = [v6 propertyListWithData:isa options:0 format:0 error:v18];

    if (v8)
    {
      v9 = v18[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v10 = v16;
      }

      else
      {
        v10 = Dictionary.init(dictionaryLiteral:)();
      }

      v17 = v10;
      static DICodable.adaptUserDataAfterEncoder(_:)(&v17, a1, a2);
      v14 = OUTLINED_FUNCTION_69();
      outlined consume of Data._Representation(v14, v15);
      return v17;
    }

    else
    {
      v11 = v18[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12 = OUTLINED_FUNCTION_69();
      return outlined consume of Data._Representation(v12, v13);
    }
  }

  return result;
}

uint64_t static DICodable.adaptUserDataAfterEncoder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 56;
    do
    {
      v7 = *(v6 - 24);
      v6 += 32;

      v7(a1);

      --v5;
    }

    while (v5);
  }
}

uint64_t DICodable.toDirectInvocation()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v6 = v5;
  v8 = v7;

  v9._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v9);
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  String.append(_:)(v10);

  DICodable.userData()(a1, a2);
  if (v2)
  {
  }

  else
  {
    return Parse.DirectInvocation.init(identifier:userData:)();
  }
}

objc_class *DICodable.toDirectInvocationPayload()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKIDirectInvocationPayload();
  v5 = (*(a2 + 24))(a1, a2);
  v7 = v6;
  v9 = v8;
  v17 = v5;
  v18 = v10;

  v11._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v11);
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  String.append(_:)(v12);

  v13 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v17, v18);
  v14 = DICodable.userData()(a1, a2);
  isa = v13;
  if (!v2)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v13 setUserData:isa];
  }

  return v13;
}

id DICodable.toStartLocalRequest(deviceState:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = DeviceState.asInvocationContext.getter();
  v4 = OUTLINED_FUNCTION_69();
  v6 = DICodable.toDirectInvocationPayload()(v4, v5);
  if (!v1)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 runSiriKitExecutorCommandWithContext:v3 payload:v7];

    v2 = [v8 wrapCommandInStartLocalRequest:v9];
    v3 = v9;
  }

  return v2;
}

uint64_t static DICodable.from(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a1 = Dictionary.init(dictionaryLiteral:)();
  }

  v15 = a1;

  static DICodable.adaptUserDataBeforeDecoder(_:)(&v15, a2, a3);
  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = 0;
  v7 = [v5 dataWithPropertyList:isa format:200 options:0 error:&v14];

  v8 = v14;
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v9, v11);
  }

  else
  {
    v13 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t static DICodable.adaptUserDataBeforeDecoder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 56;
    do
    {
      v7 = *(v6 - 8);
      v6 += 32;

      v7(a1);

      --v5;
    }

    while (v5);
  }
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  result = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
  }

  return result;
}

void (*static DICodableOverride.undoEncoding<A>(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t *a1)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  return partial apply for closure #1 in static DICodableOverride.undoEncoding<A>(name:type:);
}

void closure #1 in static DICodableOverride.undoEncoding<A>(name:type:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v11)
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v10, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v12 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v27[0] = 0;
        v14 = [v12 dataWithPropertyList:isa format:200 options:0 error:v27];

        v15 = v27[0];
        if (v14)
        {
          v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          v27[3] = a5;
          __swift_allocate_boxed_opaque_existential_1(v27);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          specialized Dictionary.subscript.setter(v27, a2, a3);
          outlined consume of Data._Representation(v16, v18);
        }

        else
        {
          v19 = v15;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, static Logger.siriPhone);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v27[0] = swift_slowAlloc();
            *v23 = 136315394;
            *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v27);
            *(v23 + 12) = 2080;
            swift_getMetatypeMetadata();
            v24 = String.init<A>(describing:)();
            v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v27);

            *(v23 + 14) = v26;
            _os_log_impl(&dword_0, v21, v22, "Could not undo encoding for property %s of type %s", v23, 0x16u);
            swift_arrayDestroy();
          }
        }
      }
    }
  }
}

uint64_t (*static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  v40 = a1;
  v41 = a7;
  v37 = a2;
  v38 = a6;
  v35 = a3;
  v32 = a4;
  v33 = a5;
  v39 = type metadata accessor for Transformer();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v34 = *(v10 + 16);
  v34(&v30 - v14, a3, v13);
  v16 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  v18 = v37;
  v19 = v38;
  v20 = v40;
  v21 = v41;
  *(v17 + 4) = v38;
  *(v17 + 5) = v21;
  *(v17 + 6) = v20;
  *(v17 + 7) = v18;
  v31 = *(v10 + 32);
  v22 = v15;
  v23 = v39;
  v31(&v17[v16], v22, v39);
  v24 = v36;
  (v34)(v36, v35, v23);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 2) = v32;
  *(v25 + 3) = v26;
  v27 = v40;
  v28 = v41;
  *(v25 + 4) = v19;
  *(v25 + 5) = v28;
  *(v25 + 6) = v27;
  *(v25 + 7) = v18;
  v31(&v25[v16], v24, v39);
  swift_bridgeObjectRetain_n();
  return partial apply for closure #1 in static DICodableOverride.transform<A, B>(name:transformer:);
}

void closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v36 = *(a6 - 8);
  __chkstk_darwin(a1);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = *(a5 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v20 = *a1;
  v21 = a2;
  v22 = a3;
  specialized Dictionary.subscript.getter(v21, a3, v20, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a5);
    (*(v16 + 32))(v19, v15, a5);
    type metadata accessor for Transformer();
    v23 = Transformer.transform.getter();
    v24 = v37;
    v23(v19);

    v41 = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    v34 = v36;
    (*(v36 + 16))(boxed_opaque_existential_1, v24, a6);

    specialized Dictionary.subscript.setter(&v40, v21, v22);
    (*(v34 + 8))(v24, a6);
    (*(v16 + 8))(v19, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a5);
    (*(v13 + 8))(v15, v12);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = a5;
      *&v40 = v29;
      *v28 = 136315138;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v40);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "No entry in userData of type %s to override", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void closure #2 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v36 = *(a5 - 8);
  __chkstk_darwin(a1);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = *(a6 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v20 = *a1;
  v21 = a2;
  v22 = a3;
  specialized Dictionary.subscript.getter(v21, a3, v20, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a6);
    (*(v16 + 32))(v19, v15, a6);
    type metadata accessor for Transformer();
    v23 = Transformer.reverseTransform.getter();
    v24 = v37;
    v23(v19);

    v41 = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    v34 = v36;
    (*(v36 + 16))(boxed_opaque_existential_1, v24, a5);

    specialized Dictionary.subscript.setter(&v40, v21, v22);
    (*(v34 + 8))(v24, a5);
    (*(v16 + 8))(v19, a6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a6);
    (*(v13 + 8))(v15, v12);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = a6;
      *&v40 = v29;
      *v28 = 136315138;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v40);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "No entry in userData of type %s to override", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

uint64_t partial apply for closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for Transformer() - 8);
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a2(a1, v9, v10, v11, v4, v5, v6, v7);
}

void *__swift_deallocate_boxed_opaque_existential_0(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t DictionaryBackedCache.__allocating_init(timeToLiveInSeconds:capacity:nowDateProvider:)()
{
  OUTLINED_FUNCTION_5_36();
  v0 = swift_allocObject();
  DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)();
  return v0;
}

void *DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)()
{
  OUTLINED_FUNCTION_5_36();
  type metadata accessor for Optional();
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v1[2] = Dictionary.init(minimumCapacity:)();
  v1[3] = v4;
  v1[4] = v3;
  v1[5] = v2;
  v1[6] = v0;
  return v1;
}

uint64_t DictionaryBackedCache.count.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  type metadata accessor for Date();

  swift_getTupleTypeMetadata2();
  v0 = Dictionary.count.getter();

  return v0;
}

void DictionaryBackedCache.get(key:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v49 = v2;
  v47 = v3;
  v4 = *v0;
  v5 = type metadata accessor for Date();
  OUTLINED_FUNCTION_9_1();
  v45 = v6;
  __chkstk_darwin(v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v4[11];
  v41 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_16_2();
  v43 = v14;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  OUTLINED_FUNCTION_9_1();
  v46 = v18;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  OUTLINED_FUNCTION_4_24((v1 + 2));
  v22 = v4[10];

  v42 = v22;
  Dictionary.subscript.getter();

  if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
  {
    (*(v12 + 8))(v17, v10);
LABEL_7:
    OUTLINED_FUNCTION_7_6();
    v35 = v48;
    goto LABEL_8;
  }

  v40 = v10;
  v23 = v47;
  v24 = (*(v46 + 32))(v21, v17, TupleTypeMetadata2);
  v25 = v44;
  (v1[5])(v24);
  lazy protocol witness table accessor for type Date and conformance Date();
  v26 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v45 + 8))(v25, v5);
  if ((v26 & 1) == 0)
  {
    (*v1)[24](v49);
    v36 = OUTLINED_FUNCTION_8_36();
    v37(v36);
    goto LABEL_7;
  }

  v27 = v43;
  Dictionary.subscript.getter();

  v28 = OUTLINED_FUNCTION_8_36();
  v29(v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, TupleTypeMetadata2);
  v31 = v48;
  if (!EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_40();
    (*(v38 + 16))(v23, v27);
    (*(v12 + 8))(v27, v40);
    goto LABEL_9;
  }

  (*(v12 + 8))(v27, v40);
  OUTLINED_FUNCTION_7_6();
  v35 = v31;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
LABEL_9:
  OUTLINED_FUNCTION_65();
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

void DictionaryBackedCache.put(key:value:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v26 = v3;
  v24 = v4;
  v5 = *v0;
  v6 = type metadata accessor for Optional();
  v7 = type metadata accessor for Date();
  v25 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_2_48();
  v10 = *(v5 + 80);
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v27 = v7;
  v23 = *(v7 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v2[5])(v17);
  OUTLINED_FUNCTION_4_24((v2 + 2));

  v20 = Dictionary.count.getter();

  if (v20 == v2[4])
  {
    DictionaryBackedCache.evict(at:)();
  }

  (*(v12 + 16))(v15, v24, v10);
  OUTLINED_FUNCTION_40();
  (*(v21 + 16))(v1);
  Date.addingTimeInterval(_:)();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, TupleTypeMetadata2);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  (*(v23 + 8))(v19, v27);
  OUTLINED_FUNCTION_65();
}

uint64_t DictionaryBackedCache.remove(key:)(uint64_t a1)
{
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for Optional();
  type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_2_48();
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 16))(&v14 - v8, a1, v5, v7);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, TupleTypeMetadata2);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

void DictionaryBackedCache.evict(at:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v35 = *v0;
  v3 = *(v35 + 80);
  v4 = type metadata accessor for Optional();
  v32 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v30 = v8;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_2_48();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v33 = v11;
  v34 = v10;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  OUTLINED_FUNCTION_9_1();
  v31 = v15;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  DictionaryBackedCache.evictStaleEntries(at:)();
  if ((v19 & 1) == 0)
  {
    v29[1] = v4;
    OUTLINED_FUNCTION_4_24((v0 + 2));
    v36 = v0[2];
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    Collection.randomElement()();
    if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
    {
      (*(v30 + 8))(v1, v7);
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
    }

    else
    {
      v23 = v1 + *(v6 + 48);
      v24 = *(TupleTypeMetadata2 + 48);
      v25 = v31;
      v26 = *(v31 + 32);
      v26(v14, v1, v3);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
      OUTLINED_FUNCTION_40();
      (*(v27 + 8))(v23 + v24);
      OUTLINED_FUNCTION_40();
      (*(v28 + 8))(v23);
      if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
      {
        v26(v18, v14, v3);
        (*(*v2 + 192))(v18);
        (*(v25 + 8))(v18, v3);
        goto LABEL_7;
      }
    }

    (*(v33 + 8))(v14, v34);
  }

LABEL_7:
  OUTLINED_FUNCTION_65();
}

void DictionaryBackedCache.evictStaleEntries(at:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for Optional();
  v9 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_16_2();
  v48 = v14;
  __chkstk_darwin(v15);
  v47 = &v39 - v16;
  swift_beginAccess();
  v57 = v5;
  v58 = v7;
  v50 = v0;
  v59 = *(v3 + 96);
  v17 = v59;
  v60 = v2;

  v39 = v17;
  v18 = Dictionary.filter(_:)();
  v19 = *(v18 + 64);
  v41 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v40 = (v20 + 63) >> 6;
  v55 = v5;
  v46 = v5 - 8;
  v54 = TupleTypeMetadata2;
  v45 = TupleTypeMetadata2 - 8;
  v52 = v8;
  v44 = v8 - 8;
  v51 = v9;
  v43 = v9 - 8;
  v42 = (v12 + 8);
  v53 = v18;

  v23 = 0;
  v24 = v54;
  while (v22)
  {
    v25 = v23;
LABEL_9:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = v26 | (v25 << 6);
    v28 = v53;
    v29 = v55;
    v30 = *(v55 - 8);
    v31 = v47;
    (*(v30 + 16))(v47, *(v53 + 48) + *(v30 + 72) * v27, v55);
    v32 = *(v24 - 8);
    v33 = *(v28 + 56) + *(v32 + 72) * v27;
    v34 = v49;
    v35 = &v31[*(v49 + 48)];
    (*(v32 + 16))(v35, v33, v24);
    v56 = *(v24 + 48);
    v36 = v48;
    v37 = v48 + *(v34 + 48);
    (*(v30 + 32))(v48, v31, v29);
    v38 = *(v24 + 48);
    (*(*(v52 - 8) + 32))(v37, v35);
    (*(*(v51 - 8) + 32))(v37 + v38, &v35[v56]);
    (*(*v50 + 192))(v36);
    (*v42)(v36, v34);
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v40)
    {

      Dictionary.isEmpty.getter();

      OUTLINED_FUNCTION_65();
      return;
    }

    v22 = *(v41 + 8 * v25);
    ++v23;
    if (v22)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL closure #1 in DictionaryBackedCache.evictStaleEntries(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Optional();
  type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = swift_getTupleTypeMetadata2();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v16 - v12;
  (*(*(a4 - 8) + 16))(&v16 - v12, a1, a4, v11);
  (*(*(TupleTypeMetadata2 - 8) + 16))(&v13[*(v9 + 48)], a2, TupleTypeMetadata2);
  lazy protocol witness table accessor for type Date and conformance Date();
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v10 + 8))(v13, v9);
  return (v14 & 1) == 0;
}

uint64_t specialized DictionaryCodable.toDictionary()(uint64_t a1, uint64_t a2, double a3)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v15];

  if (v9)
  {
    v10 = v15[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v11 = v14;
    }

    else
    {
      v11 = Dictionary.init(dictionaryLiteral:)();
    }

    v3 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v12 = v15[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v4, v6);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v3;
}

uint64_t specialized DictionaryCodable.toDictionary()(uint64_t a1, double a2)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v14];

  if (v8)
  {
    v9 = v14[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v10 = v13;
    }

    else
    {
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v2 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);
    outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v11 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v3, v5);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v2;
}

uint64_t specialized DictionaryCodable.toDictionary()(char a1, uint64_t a2, double a3)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v15];

  if (v9)
  {
    v10 = v15[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v11 = v14;
    }

    else
    {
      v11 = Dictionary.init(dictionaryLiteral:)();
    }

    v3 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v12 = v15[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v4, v6);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v3;
}

uint64_t specialized DictionaryCodable.toDictionary()(uint64_t a1)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:0 error:v13];

  if (v7)
  {
    v8 = v13[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v9 = v12;
    }

    else
    {
      v9 = Dictionary.init(dictionaryLiteral:)();
    }

    v1 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);
    outlined consume of Data._Representation(v2, v4);
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v2, v4);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v1;
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance AnnounceVoicemailHintHistory@<X0>(uint64_t a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5 & 1;
  return result;
}

id specialized static DictionaryCodable.fromDictionary(dictionary:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t specialized static DictionaryCodable.fromDictionary(dictionary:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t static DictionaryCodable.fromDictionary(dictionary:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  static DictionaryEncoderDecoder.decode<A>(type:_:)();

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, a2);
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(void *a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for encoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id static DictionaryEncoderDecoder.encode<A>(_:)(id a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:isa options:0 error:v16];

    if (v11)
    {
      v12 = v16[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v13 = v15;
      }

      else
      {
        v13 = Dictionary.init(dictionaryLiteral:)();
      }

      a1 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);
      outlined consume of Data._Representation(v7, v8);
    }

    else
    {
      a1 = v16[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v7, v8);
    }
  }

  return a1;
}

uint64_t static DictionaryEncoderDecoder.decode<A>(type:_:)()
{
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v6 = [v4 dataWithJSONObject:isa options:0 error:&v13];

  v7 = v13;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    v12 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance ForcedAppDisambiguationHistory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance OneTimeHintHistory@<X0>(uint64_t a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory()
{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

id SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = DeviceState.asInvocationContext.getter();
  v4 = objc_opt_self();
  v5 = [v4 runSiriKitExecutorCommandWithContext:v3 payload:v2];
  v6 = [v4 wrapCommandInStartLocalRequest:v5];

  return v6;
}

id static SKIDirectInvocationPayload.contactDisambiguation(contact:)(void *a1)
{
  v2 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_0, v7, v8, "#DirectInvocationPayload Building disambiguation item for contact: %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  v12 = v6;
  v13 = CommonDirectAction.identifier.getter();
  v15 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v13, v14);
  v16 = CommonDirectAction.userData.getter();
  v17 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v16);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v17, v15);
  v18 = v15;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v27 = outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v19, v20, "#DirectInvocationPayload built payload: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_26_0(v21);
  }

  outlined destroy of CommonDirectAction(v4);
  return v18;
}

uint64_t outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(void *a1)
{
  v1 = [a1 userData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v16 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a1;
  *(v17 + 7) = a2;
  (*(v10 + 32))(&v17[v16], &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return DisambiguationItemFactory.buildDisambiguationItemList()(a7, a8);
}

uint64_t partial apply for closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = DisambiguationItemFactory.buildDisambiguationItemList();

  return DisambiguationItemFactory.buildDisambiguationItems()();
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v25 = v0;
  v1 = v0[13];
  v2 = OUTLINED_FUNCTION_2_49();
  v3(v2);
  swift_getAssociatedTypeWitness();
  _arrayForceCast<A, B>(_:)();

  v4 = *(v1 + 24);
  v5 = OUTLINED_FUNCTION_2_49();
  v4(v5);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v7 + 8))(v6, v7);
  v8 = OUTLINED_FUNCTION_2_49();
  v4(v8);
  v9 = v0[10];
  v10 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  (*(v10 + 16))(v9, v10);
  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  v11 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;

    SiriKitDisambiguationList.description.getter();
    v18 = v17;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "Finished building SiriKitDisambiguationList: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v22 = v0[1];

  return v22(v11);
}

uint64_t DisambiguationItemFactory.buildDisambiguationItems()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[9] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[10] = v5;
  v1[11] = *(v5 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v0[2] = _swiftEmptyArrayStorage;
  v0[14] = (*(v0[7] + 16))(v0[6]);
  v1 = Array.startIndex.getter();
  v0[3] = v1;
  if (v1 != Array.endIndex.getter())
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v0[10] + 16))(v0[13], v0[14] + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v1, v0[9]);
    }

    else
    {
      v23 = v0[11];
      v22 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v23 != 8)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v22);
      }

      v24 = v22;
      v25 = v0[13];
      v26 = v0[9];
      v27 = v0[10];
      v0[4] = v24;
      (*(v27 + 16))(v25, v0 + 4, v26);
      swift_unknownObjectRelease();
    }

    v5 = v0[13];
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];
    Array.formIndex(after:)(v0 + 3);
    (*(v8 + 32))(v6, v5, v7);
    v10 = swift_task_alloc();
    OUTLINED_FUNCTION_4_25(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    *(v20 + 32) = v9;
    *(v20 + 40) = v6;
    v21 = swift_task_alloc();
    v0[16] = v21;
    type metadata accessor for SiriKitDisambiguationItem();
    *v21 = v0;
    v21[1] = DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v22);
  }

  v2 = v0[1];

  return v2(_swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v4 = v0[2];
  (*(v3 + 8))(v1, v2);
  v5 = Array.endIndex.getter();
  v6 = v0[3];
  if (v6 != v5)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v0[10] + 16))(v0[13], v0[14] + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v6, v0[9]);
    }

    else
    {
      v28 = v0[11];
      v27 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v28 != 8)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v27);
      }

      v29 = v27;
      v30 = v0[13];
      v31 = v0[9];
      v32 = v0[10];
      v0[4] = v29;
      (*(v32 + 16))(v30, v0 + 4, v31);
      swift_unknownObjectRelease();
    }

    v10 = v0[13];
    v11 = v0[12];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];
    Array.formIndex(after:)(v0 + 3);
    (*(v13 + 32))(v11, v10, v12);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_4_25(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    *(v25 + 32) = v14;
    *(v25 + 40) = v11;
    v26 = swift_task_alloc();
    v0[16] = v26;
    type metadata accessor for SiriKitDisambiguationItem();
    *v26 = v0;
    v26[1] = DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v27);
  }

  v7 = v0[1];

  return v7(v4);
}

uint64_t closure #1 in DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - v12;
  (*(v10 + 16))(&v18 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA;
  *(v16 + 24) = v15;
  (*(a5 + 40))(a3, _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA, v16, a4, a5);
}

uint64_t static DisambiguationItemUtils.getUpdatedPersonList(selectedIndex:selectedPerson:persons:)(uint64_t a1, void *a2, unint64_t a3)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_36();
    v26 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "getUpdatedPersonList# initial contacts: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  if (!a3 || !specialized Array.count.getter(a3) || specialized Array.count.getter(a3) <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_426260;
    *(a3 + 32) = a2;
    v17 = a2;
    goto LABEL_15;
  }

  v14 = a2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || a3 >> 62)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    a3 = result;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(&stru_20.cmd + 8 * a1 + (a3 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * a1 + (a3 & 0xFFFFFFFFFFFFFF8)) = v14;

LABEL_15:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_36();
    v26 = v21;
    *v20 = 136315138;
    type metadata accessor for INPerson();

    v22 = Array.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "getUpdatedPersonList# updated contacts: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_26_0(v21);
    OUTLINED_FUNCTION_26_0(v20);
  }

  return a3;
}

void *static DisambiguationItemUtils.getPersonsList(container:)()
{
  v0 = type metadata accessor for SiriKitDisambiguationItemPair();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v30 - v5;
  v40 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v7 = PaginatedItemContainer.items.getter();
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v1 + 16);
    v11 = v1 + 16;
    v10 = v12;
    v13 = *(v11 + 64);
    v30[1] = v7;
    v14 = v7 + ((v13 + 32) & ~v13);
    v37 = *(v11 + 56);
    v36 = _swiftEmptyArrayStorage;
    v38 = (v11 - 8);
    *&v8 = 136315138;
    v31 = v8;
    v32 = v11;
    v33 = v6;
    v34 = v12;
    v35 = v0;
    do
    {
      v10(v6, v14, v0);
      SiriKitDisambiguationItemPair.rawItem.getter();
      type metadata accessor for INPerson();
      if (swift_dynamicCast())
      {
        v15 = v39;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v38)(v6, v0);
        v36 = v40;
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.siriPhone);
        v10(v3, v6, v0);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_42();
          v39 = OUTLINED_FUNCTION_36();
          v20 = v39;
          *v19 = v31;
          SiriKitDisambiguationItemPair.rawItem.getter();
          v21 = String.init<A>(describing:)();
          v22 = v3;
          v24 = v23;
          v25 = *v38;
          (*v38)(v22, v35);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v39);
          v3 = v22;

          *(v19 + 4) = v26;
          _os_log_impl(&dword_0, v17, v18, "getPersonsList# couldn't retrieve pair %s as an INPerson object", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          v27 = v20;
          v0 = v35;
          OUTLINED_FUNCTION_26_0(v27);
          OUTLINED_FUNCTION_26_0(v19);

          v25(v33, v0);
          v6 = v33;
        }

        else
        {

          v28 = *v38;
          (*v38)(v3, v0);
          v28(v6, v0);
        }

        v10 = v34;
      }

      v14 += v37;
      --v9;
    }

    while (v9);

    return v36;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

id static DisambiguationItemUtils.getSelectedPersonByName(nameComponents:persons:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v103 - v9;
  __chkstk_darwin(v11);
  v13 = &v103 - v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v109 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  v108 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v116 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v111 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_13_5();
  v110 = v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_5();
  v117 = v25;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_13_5();
  v113 = v27;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_13_5();
  v112 = v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  v32 = &v103 - v31;
  v121 = specialized Array.count.getter(a2);
  if (!v121)
  {
    v35 = 0;
LABEL_99:
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_115:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.siriPhone);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "getSelectedPerson# no matching criteria was found", v88, 2u);
      OUTLINED_FUNCTION_26_0(v88);
    }

    return v35;
  }

  v115 = v13;
  v106 = v10;
  v107 = v7;
  v34 = 0;
  v119 = 0;
  LOBYTE(v13) = 0;
  v35 = 0;
  v120 = a2 & 0xC000000000000001;
  v114 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v33 = 136315138;
  v105 = v33;
  v118 = a1;
  v122 = v32;
  v104 = a2;
  while (1)
  {
    if (v120)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= *(v114 + 16))
      {
        goto LABEL_114;
      }

      v36 = *(a2 + 8 * v34 + 32);
    }

    v123 = v36;
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    outlined init with copy of PersonNameComponents?(a1, v32);
    v38 = type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_21_3(v32);
    if (v45)
    {
      outlined destroy of PersonNameComponents?(v32);
    }

    else
    {
      PersonNameComponents.givenName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v39 + 8))(v40, v38);
      if (v2)
      {
        v41 = [v123 nameComponents];
        if (v41)
        {
          v42 = v41;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v44 = OUTLINED_FUNCTION_3_39(v41, v43);
        v13 = v112;
        outlined init with take of PersonNameComponents?(v44, v112);
        if (OUTLINED_FUNCTION_7_29())
        {
LABEL_50:
          outlined destroy of PersonNameComponents?(v13);
LABEL_51:

          OUTLINED_FUNCTION_13_26();
          if (v45)
          {
            return v35;
          }

          OUTLINED_FUNCTION_2_50();
          a1 = v118;
LABEL_86:
          v32 = v122;
          goto LABEL_87;
        }

        PersonNameComponents.givenName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v13)
        {
          goto LABEL_51;
        }

        v45 = v32 == a1 && v2 == v13;
        if (v45)
        {
        }

        else
        {
          v32 = OUTLINED_FUNCTION_4_26();

          if ((v32 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v118;
      }
    }

    v46 = v117;
    outlined init with copy of PersonNameComponents?(a1, v117);
    OUTLINED_FUNCTION_21_3(v46);
    if (v45)
    {
      outlined destroy of PersonNameComponents?(v46);
    }

    else
    {
      PersonNameComponents.familyName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v47 + 8))(v46, v38);
      if (v2)
      {
        v48 = [v123 nameComponents];
        if (v48)
        {
          v49 = v48;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = 0;
        }

        else
        {
          v50 = 1;
        }

        v51 = OUTLINED_FUNCTION_3_39(v48, v50);
        v13 = v110;
        outlined init with take of PersonNameComponents?(v51, v110);
        if (OUTLINED_FUNCTION_7_29())
        {
          goto LABEL_50;
        }

        PersonNameComponents.familyName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v13)
        {
          goto LABEL_51;
        }

        if (v32 == a1 && v2 == v13)
        {
        }

        else
        {
          v32 = OUTLINED_FUNCTION_4_26();

          if ((v32 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v118;
      }
    }

    v53 = v116;
    outlined init with copy of PersonNameComponents?(a1, v116);
    OUTLINED_FUNCTION_21_3(v53);
    if (v45)
    {
      outlined destroy of PersonNameComponents?(v53);
    }

    else
    {
      PersonNameComponents.middleName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v54 + 8))(v53, v38);
      if (v2)
      {
        v55 = [v123 nameComponents];
        if (v55)
        {
          v56 = v55;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v58 = OUTLINED_FUNCTION_3_39(v55, v57);
        v13 = v108;
        outlined init with take of PersonNameComponents?(v58, v108);
        if (OUTLINED_FUNCTION_7_29())
        {
          goto LABEL_50;
        }

        PersonNameComponents.middleName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v13)
        {
          goto LABEL_51;
        }

        if (v32 == a1 && v2 == v13)
        {
        }

        else
        {
          v32 = OUTLINED_FUNCTION_4_26();

          if ((v32 & 1) == 0)
          {
LABEL_59:

            OUTLINED_FUNCTION_13_26();
            a1 = v118;
            if (v45)
            {
              return v35;
            }

LABEL_85:
            OUTLINED_FUNCTION_2_50();
            goto LABEL_86;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v118;
      }
    }

    v60 = v115;
    outlined init with copy of PersonNameComponents?(a1, v115);
    OUTLINED_FUNCTION_21_3(v60);
    if (v45)
    {
      outlined destroy of PersonNameComponents?(v60);
LABEL_70:
      if (v13)
      {
        goto LABEL_71;
      }

      v32 = v122;
      if (v37 == v121)
      {
        goto LABEL_109;
      }

      LOBYTE(v13) = 0;
      goto LABEL_87;
    }

    PersonNameComponents.nickname.getter();
    OUTLINED_FUNCTION_1_59();
    (*(v61 + 8))(v60, v38);
    if (!v2)
    {
      goto LABEL_70;
    }

    v62 = [v123 nameComponents];
    if (v62)
    {
      v63 = v62;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v79 = OUTLINED_FUNCTION_3_39(v62, v64);
    v13 = v106;
    outlined init with take of PersonNameComponents?(v79, v106);
    if (OUTLINED_FUNCTION_7_29())
    {
      outlined destroy of PersonNameComponents?(v13);
LABEL_84:

      OUTLINED_FUNCTION_13_26();
      if (v45)
      {
        return v35;
      }

      goto LABEL_85;
    }

    v80 = PersonNameComponents.nickname.getter();
    v82 = v81;
    outlined destroy of PersonNameComponents?(v13);
    if (!v82)
    {
      goto LABEL_84;
    }

    if (v32 == v80 && v2 == v82)
    {
      break;
    }

    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v84)
    {
      goto LABEL_97;
    }

    v32 = v122;
    if (v37 == v121)
    {
      return v35;
    }

    OUTLINED_FUNCTION_2_50();
LABEL_87:
    ++v34;
  }

LABEL_97:
  v119 = 1;
LABEL_71:
  v32 = v122;
  if (v35)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.siriPhone);
    v91 = v123;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = OUTLINED_FUNCTION_42();
      v95 = OUTLINED_FUNCTION_36();
      v124[0] = v95;
      *v94 = v105;
      v96 = v91;
      v97 = v35;
      v98 = [v96 description];
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v124);

      *(v94 + 4) = v102;
      _os_log_impl(&dword_0, v92, v93, "getSelectedPerson# found another contact candidate: %s which becomes ambiguous", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_26_0(v95);
      OUTLINED_FUNCTION_26_0(v94);
    }

    else
    {
    }

    return 0;
  }

  v65 = one-time initialization token for siriPhone;
  v66 = v123;
  if (v65 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.siriPhone);
  v2 = v66;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = OUTLINED_FUNCTION_42();
    v71 = OUTLINED_FUNCTION_36();
    v124[0] = v71;
    *v70 = v105;
    v72 = [v2 description];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v124);

    *(v70 + 4) = v76;
    a2 = v104;
    _os_log_impl(&dword_0, v68, v69, "getSelectedPerson# found contact candidate: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v77 = v71;
    a1 = v118;
    OUTLINED_FUNCTION_26_0(v77);
    v78 = v70;
    v32 = v122;
    OUTLINED_FUNCTION_26_0(v78);
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_26();
  if (!v45)
  {
    LOBYTE(v13) = 1;
    v35 = v123;
    goto LABEL_87;
  }

  v35 = v123;
LABEL_109:
  if ((v119 & 1) == 0)
  {
    goto LABEL_99;
  }

  return v35;
}

uint64_t outlined init with copy of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PersonNameComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id DisambiguationReferenceResolver.resolveDisambiguationReference(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MatchedResultsSetting();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = DisambiguationReferenceResolver.extractReferenceResolutionEntity(parse:)();
  if (!v15)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v37, v38, "#DisambiguationReferenceResolver No reference or entity found, returning nil");
      OUTLINED_FUNCTION_12_3();
    }

    return 0;
  }

  v16 = v15;
  v53 = v1;
  v54 = v2;
  v17 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);

  v55 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v56 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = v16;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v17;
    v27 = v25;
    v57 = v26;
    v58 = v25;
    *v24 = 136315138;
    type metadata accessor for Graph();
    v52 = v14;
    lazy protocol witness table accessor for type Graph and conformance Graph();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v58);

    *(v24 + 4) = v30;
    v14 = v52;
    _os_log_impl(&dword_0, v20, v21, "#DisambiguationReferenceResolver found entity, querying SRR for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);

    v16 = v51;
  }

  v31 = v54;
  (*(v3 + 104))(v5, enum case for MatchedResultsSetting.defaultMatching(_:), v54);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v16, v53, v5, v8);
  (*(v3 + 8))(v5, v31);
  v32 = type metadata accessor for PhoneRRTarget(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v32) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v8, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    v33 = 1;
  }

  else
  {
    outlined init with copy of PhoneRRTarget.Target(v8, v14);
    outlined destroy of PhoneRRTarget.Target(v8, type metadata accessor for PhoneRRTarget);
    v33 = 0;
  }

  v39 = type metadata accessor for PhoneRRTarget.Target(0);
  __swift_storeEnumTagSinglePayload(v14, v33, 1, v39);
  outlined init with copy of PhoneRRTarget.Target?(v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v39) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v11, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
LABEL_18:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v42, v43, "#DisambiguationReferenceResolver SRR didn't return an INPerson");
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
    }

    outlined destroy of PhoneCallNLIntent?(v14, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PhoneRRTarget.Target(v11, type metadata accessor for PhoneRRTarget.Target);
    goto LABEL_18;
  }

  v44 = *v11;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v44;
    *v49 = v44;
    v50 = v44;
    _os_log_impl(&dword_0, v46, v47, "#DisambiguationReferenceResolver SRR selected %@", v48, 0xCu);
    outlined destroy of PhoneCallNLIntent?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    OUTLINED_FUNCTION_12_3();
  }

  else
  {
  }

  outlined destroy of PhoneCallNLIntent?(v14, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  return v44;
}

uint64_t DisambiguationReferenceResolver.extractReferenceResolutionEntity(parse:)()
{
  if (!Parse.usoTask.getter())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#DisambiguationReferenceResolver couldn't extract UsoTask from Parse", v5, 2u);
    }

    return 0;
  }

  v0 = DisambiguationReferenceResolver.extractPositionEntity(task:)();
  if (!v0)
  {
    if (UsoTask.convertToCommonPhoneCallEntity()())
    {
      v1 = DisambiguationReferenceResolver.extractAgentEntity(commonPhoneCall:)();

      if (v1)
      {
        return v1;
      }
    }

    else
    {
    }

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t DisambiguationReferenceResolver.extractPositionEntity(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v6[3])
  {
    outlined destroy of PhoneCallNLIntent?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (!v6[0])
  {

    return 0;
  }

  v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

  if (v0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#DisambiguationReferenceResolver Found position reference, passing to SRR", v4, 2u);
    }

    v0 = CodeGenBase.entity.getter();
  }

  else
  {
  }

  return v0;
}

uint64_t DisambiguationReferenceResolver.extractAgentEntity(commonPhoneCall:)()
{
  v0 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = dispatch thunk of UsoEntity_common_PhoneCall.participants.getter();
  if (!v2)
  {
    v2 = _swiftEmptyArrayStorage;
  }

  specialized Array.append<A>(contentsOf:)(v2);
  v3 = specialized Array.count.getter(v1);
  v4 = 0;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (v11)
    {

      goto LABEL_19;
    }

    if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();

      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_19:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v4;
    }

    else
    {

LABEL_17:
      ++v4;
    }
  }

  if (!specialized Array.count.getter(_swiftEmptyArrayStorage))
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (_swiftEmptyArrayStorage & 0xC000000000000001) == 0, _swiftEmptyArrayStorage);
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
  {

    goto LABEL_26;
  }

LABEL_35:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:

  v5 = CodeGenBase.entity.getter();

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#DisambiguationReferenceResolver Found agent entity, passing to SRR", v9, 2u);
  }

  return v5;
}

uint64_t outlined init with copy of PhoneRRTarget.Target?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PhoneRRTarget.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRRTarget.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

{
  v3 = OUTLINED_FUNCTION_88();
  v4(v3);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of PhoneRRTarget.Target(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Graph and conformance Graph()
{
  result = lazy protocol witness table cache variable for type Graph and conformance Graph;
  if (!lazy protocol witness table cache variable for type Graph and conformance Graph)
  {
    type metadata accessor for Graph();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Graph and conformance Graph);
  }

  return result;
}

uint64_t HandleIntentSubmitter.__allocating_init(aceServiceInvoker:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v2 + 16);
  return v2;
}

uint64_t one-time initialization function for typeName(uint64_t a1)
{
  type metadata accessor for DismissSiriFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin011DismissSiriC0CmMd, &_s27PhoneCallFlowDelegatePlugin011DismissSiriC0CmMR);
  result = String.init<A>(describing:)();
  static DismissSiriFlow.typeName = result;
  unk_551B20 = v2;
  return result;
}

uint64_t DismissSiriFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DismissSiriFlow();
  lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow()
{
  result = lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow;
  if (!lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow)
  {
    type metadata accessor for DismissSiriFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow);
  }

  return result;
}

uint64_t DismissSiriFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for AceOutput();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(DismissSiriFlow.execute(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 160) = v0;

  if (v0)
  {
    v4 = DismissSiriFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v4 = DismissSiriFlow.execute();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  static ExecuteResponse.complete()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v13 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      OUTLINED_FUNCTION_0_51(&one-time initialization token for typeName);
    }

    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_551B20, &v12);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&dword_0, v1, v2, "%s: Error publishing SAUICloseAssistant command: %@", v3, 0x16u);
    outlined destroy of NSObject?(v4);
    OUTLINED_FUNCTION_26_0(v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v3);
  }

  else
  {
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  static ExecuteResponse.complete()();
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t DismissSiriFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v41 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_426260;
  *(v17 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  AceOutput.init(commands:flowActivity:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v16[18] = __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v39[0] = v22;
    *v21 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      OUTLINED_FUNCTION_0_51(&one-time initialization token for typeName);
    }

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_551B20, v39);
    _os_log_impl(&dword_0, v19, v20, "%s: Dismissing Siri", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_26_0(v21);
  }

  v24 = v16[16];
  v23 = v16[17];
  v25 = v16[14];
  v26 = v16[15];
  v27 = v25[5];
  v28 = v25[6];
  __swift_project_boxed_opaque_existential_1(v25 + 2, v27);
  (*(v28 + 16))(v27, v28);
  v29 = v16[5];
  v30 = v16[7];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v29);
  v16[11] = v26;
  v16[12] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 8);
  (*(v24 + 16))(boxed_opaque_existential_1, v23, v26);
  v37 = swift_task_alloc();
  v16[19] = v37;
  *v37 = v16;
  v37[1] = DismissSiriFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 8, v29, v30, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t protocol witness for Flow.execute() in conformance DismissSiriFlow(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance DismissSiriFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissSiriFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

PhoneCallFlowDelegatePlugin::DucFamilyNames_optional __swiftcall DucFamilyNames.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DucFamilyNames.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t DucFamilyNames.rawValue.getter(char a1)
{
  result = 0x6C6143656E6F6870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x75446E6F6D6D6F63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6C61437472617473;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      v3 = 0x7055676E6168;
      goto LABEL_10;
    case 7:
      v3 = 0x726577736E61;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DucFamilyNames and conformance DucFamilyNames()
{
  result = lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames;
  if (!lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::DucFamilyNames_optional protocol witness for RawRepresentable.init(rawValue:) in conformance DucFamilyNames@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::DucFamilyNames_optional *a2@<X8>)
{
  result.value = DucFamilyNames.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DucFamilyNames@<X0>(uint64_t *a1@<X8>)
{
  result = DucFamilyNames.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DucFamilyNames(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a1;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EmergencyContactResolution();
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  (*(v10 + 8))(v17, v11, v10);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  *(v12 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();

  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, char a2, void (*a3)(uint64_t, void, void))
{
  v5 = a2 & 1;
  outlined copy of Result<[INPerson], Error>(a1, a2 & 1);
  a3(a1, 0, (v5 << 8));

  return outlined consume of Result<[INPerson], Error>(a1, v5);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance EmergencyContactSlotResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a1, v8, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> (), v7);
}

uint64_t instantiation function for generic protocol witness table for EmergencyContactSlotResolver<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for EmergencyContactSlotResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined copy of Result<[INPerson], Error>(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

id static StartCallViewBuilders.makeEmergencyCountdownViewBuilder(templatingService:app:intent:intentResponse:sharedGlobals:isDirectInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#StartCallViewBuilders Providing EmergencyCountdownBuilder", v16, 2u);
  }

  outlined init with copy of SignalProviding(a5, a7 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 72) = a6 & 1;

  v17 = a3;

  return a4;
}

void EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = EmergencyCountdownBuilder.getButtonCommands()();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v7;
  v11 = objc_allocWithZone(SASTCommandTemplateAction);
  v21 = v7;
  v12 = [v11 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v10, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = v9;
  v14 = objc_allocWithZone(SASTCommandTemplateAction);
  swift_unknownObjectRetain();
  v15 = [v14 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v13, v15);
  v16 = *v3;
  outlined init with copy of EmergencyCountdownBuilder(v3, __src);
  v17 = swift_allocObject();
  memcpy(v17 + 2, __src, 0x49uLL);
  v17[12] = v12;
  v17[13] = v15;
  v17[14] = a2;
  v17[15] = a3;
  v17[16] = a1;
  v18 = *(*v16 + class metadata base offset for PhoneCallBaseCatTemplatingService + 152);
  v19 = v12;
  v20 = v15;

  v18(partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:), v17);

  swift_unknownObjectRelease();
}

uint64_t EmergencyCountdownBuilder.getButtonCommands()()
{
  v1 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  if (*(v0 + 72) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v5);
    (*(v6 + 8))(v14, v5, v6);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v7 = CommonDirectAction.identifier.getter();
    v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v7, v8);
    v10 = CommonDirectAction.userData.getter();
    v11 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v11, v9);
    SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(v14);

    __swift_destroy_boxed_opaque_existential_1(v14);
    outlined destroy of CommonDirectAction(v3);
  }

  else
  {
    if (one-time initialization token for cancelUtterance != -1)
    {
      swift_once();
    }

    static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }

  return v4;
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void **a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v27 - v15;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v27 - v15);
  outlined init with copy of EmergencyCountdownBuilder(a2, __src);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v17 + v14 + 87) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  outlined init with take of Result<TemplatingResult, Error>(v16, v19 + v17);
  memcpy((v19 + ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x49uLL);
  *(v19 + v18) = a3;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v20 = *a2;
  v21 = swift_allocObject();
  v21[2] = partial apply for closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:);
  v21[3] = v19;
  v22 = v28;
  v21[4] = a3;
  v21[5] = v22;
  v23 = *(*v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);
  v24 = a3;

  v25 = v22;
  v23(partial apply for closure #1 in EmergencyCountdownBuilder.getSideBySideButtons(callAction:cancelAction:_:), v21);
}

uint64_t closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(partial apply for closure #1 in closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:));
  v11 = v10;
  a3(v9, v10 & 1);
  return outlined consume of Result<[INPerson], Error>(v9, v11 & 1);
}

void closure #1 in closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(void *a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  if (a3)
  {
    swift_errorRetain();
LABEL_5:
    *a7 = a2;
    *(a7 + 8) = a3 & 1;
    return;
  }

  v12 = TemplatingResult.print.getter();
  if (v12[2])
  {
    v13 = v12[4];
    v14 = v12[5];

    v15 = EmergencyCountdownBuilder.makeCountdownItem(sashTitle:callAction:)(v13, v14, a5);

    v16 = [objc_allocWithZone(SASTItemGroup) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_427BB0;
    *(v17 + 32) = v15;
    *(v17 + 40) = a2;
    v18 = v15;
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a2, 0);
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v17, v16);
    type metadata accessor for SiriKitAceViewBuilder();
    v19 = a4[7];
    v20 = a4[8];
    __swift_project_boxed_opaque_existential_1(a4 + 4, v19);
    (*(v20 + 8))(v21, v19, v20);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v21);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addButtonGroup(buttonGroup:)();

    a2 = dispatch thunk of SiriKitAceViewBuilder.build()();

    goto LABEL_5;
  }

  __break(1u);
}

id EmergencyCountdownBuilder.makeCountdownItem(sashTitle:callAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SASTCountdownTimerItem) init];
  [v6 setAction:a3];
  [v6 setActionDelayInSeconds:5];
  v7 = static ColorFactory.white.getter();
  [v6 setBodyBackgroundColor:v7];

  v8 = static ColorFactory.black.getter();
  [v6 setCountdownTextColor:v8];

  v9 = static ColorFactory.white.getter();
  [v6 setHeaderBackgroundColor:v9];

  outlined bridged method (mbgnn) of @objc SASTCountdownTimerItem.headerText.setter(a1, a2, v6);
  v10 = static ColorFactory.emergencyRed.getter();
  [v6 setHeaderTextColor:v10];

  return v6;
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  outlined init with copy of Result<TemplatingResult, Error>(v1, &v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v9;
  }

  (*(v4 + 32))(v6, v9, v3);
  a1(&v11, v6);
  (*(v4 + 8))(v6, v3);
  return v11;
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSS4call_SS6canceltTg5@<X0>(void (*a1)(uint64_t *__return_ptr, char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TemplatingResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  outlined init with copy of Result<TemplatingResult, Error>(v2, &v17 - v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v13 = 0;
    v14 = *v11;
    v15 = 0uLL;
    v16 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    a1(&v18, v8);
    result = (*(v6 + 8))(v8, v5);
    v14 = v18;
    v15 = v19;
    v13 = v20;
    v16 = v21;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

uint64_t EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(SAPhoneCallEmergencySnippet) init];
  [v8 setCountDownSeconds:5];
  v9 = static ColorFactory.emergencyRed.getter();
  OUTLINED_FUNCTION_0_52(v9, "setHeaderTextColor:");

  v10 = static ColorFactory.white.getter();
  OUTLINED_FUNCTION_0_52(v10, "setHeaderBackgroundColor:");

  v11 = static ColorFactory.black.getter();
  OUTLINED_FUNCTION_0_52(v11, "setBodyTextColor:");

  v12 = static ColorFactory.white.getter();
  OUTLINED_FUNCTION_0_52(v12, "setBodyBackgroundColor:");

  outlined init with copy of EmergencyCountdownBuilder(v4, __src);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v8;
  memcpy(v13 + 5, __src, 0x49uLL);
  v13[15] = a1;
  v14 = *v4;
  outlined init with copy of EmergencyCountdownBuilder(v4, v19);
  v15 = swift_allocObject();
  memcpy(v15 + 2, v19, 0x49uLL);
  v15[12] = partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:);
  v15[13] = v13;
  v16 = *(*v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v17 = v8;

  v16(closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)partial apply, v15);
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:)(void *a1, char a2, void (*a3)(void *, void), uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v9 = a1;
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    [a5 setConfirmationOptions:a1];
    type metadata accessor for SiriKitAceViewBuilder();
    v11 = a6[7];
    v12 = a6[8];
    __swift_project_boxed_opaque_existential_1(a6 + 4, v11);
    (*(v12 + 8))(v15, v11, v12);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v15);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    v13 = dispatch thunk of SiriKitAceViewBuilder.build()();

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v9, 0);
    v9 = v13;
  }

  a3(v9, a2 & 1);
  return outlined consume of Result<[INPerson], Error>(v9, a2 & 1);
}

uint64_t EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static CasinoFactory.makePlaceholderCardSection()();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

  outlined init with copy of EmergencyCountdownBuilder(v4, v18);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  memcpy(v12 + 5, v18, 0x49uLL);
  v12[15] = a1;
  v13 = *v4;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:);
  *(v14 + 24) = v12;
  v15 = *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 152);

  v16 = v11;

  v15(partial apply for closure #1 in EmergencyCountdownBuilder.getEmergencySashTitle(_:), v14);
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6, void **a7, uint64_t a8)
{
  if (a3)
  {
    return a4(a1, 1);
  }

  v16 = [objc_allocWithZone(SAUISash) init];
  v17 = static ColorFactory.emergencyRed.getter();
  [v16 setBackgroundColor:v17];

  v18 = static ColorFactory.white.getter();
  [v16 setTextColor:v18];

  outlined bridged method (mbgnn) of @objc SAUISash.title.setter(a1, a2, v16);
  [a6 setSash:v16];
  outlined init with copy of EmergencyCountdownBuilder(a7, __src);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  memcpy(v19 + 5, __src, 0x49uLL);
  v19[15] = a8;
  v20 = *a7;
  outlined init with copy of EmergencyCountdownBuilder(a7, v24);
  v21 = swift_allocObject();
  memcpy(v21 + 2, v24, 0x49uLL);
  v21[12] = partial apply for closure #2 in closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:);
  v21[13] = v19;
  v22 = *(*v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v23 = a6;

  v22(partial apply for closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:), v21);
}

void closure #2 in closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    swift_errorRetain();
    a3(a1, 1);

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 1);
  }

  else
  {
    [a5 setConfirmationOptions:a1];
    type metadata accessor for SiriKitAceViewBuilder();
    v10 = a6[7];
    v11 = a6[8];
    __swift_project_boxed_opaque_existential_1(a6 + 4, v10);
    (*(v11 + 8))(v13, v10, v11);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v13);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    v12 = dispatch thunk of SiriKitAceViewBuilder.build()();

    a3(v12, 0);

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 0);
  }
}

void *closure #1 in EmergencyCountdownBuilder.getEmergencySashTitle(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, BOOL))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = (&v15 - v9);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v15 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = 0;
    v13 = *v10;
LABEL_5:
    a2(v13, v12, EnumCaseMultiPayload == 1);
    return outlined consume of Result<String, Error>(v13, v12, EnumCaseMultiPayload == 1);
  }

  (*(v5 + 32))(v7, v10, v4);
  result = TemplatingResult.print.getter();
  if (result[2])
  {
    v13 = result[4];
    v12 = result[5];

    (*(v5 + 8))(v7, v4);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = EmergencyCountdownBuilder.getButtonCommands()();
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    swift_errorRetain();
  }

  else
  {
    v14[0] = v5;
    v14[1] = v6;
    v14[2] = v8;
    v14[3] = v7;

    closure #1 in closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)(v14, v9, v11, &v13);

    v5 = v13;
  }

  a3(v5, v12 & 1);
  swift_unknownObjectRelease();

  outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v5, v12 & 1);
}

void *closure #1 in closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1[1];
  v25 = *a1;
  v6 = a1[3];
  v27 = a1[2];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = a2;

  v14 = a2;
  v15 = SAUIConfirmationOption.init(label:type:iconType:commands:)(v25, v5, v7, v9, v10, v12, v13);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_426260;
  *(v22 + 32) = a3;

  swift_unknownObjectRetain();
  v23 = SAUIConfirmationOption.init(label:type:iconType:commands:)(v27, v6, v16, v18, v19, v21, v22);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOptions, SAUIConfirmationOptions_ptr);
  result = SAUIConfirmationOptions.init(denyOption:confirmOption:)(v23, v15);
  *a4 = result;
  return result;
}

void closure #1 in EmergencyCountdownBuilder.getSideBySideButtons(callAction:cancelAction:_:)(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 32);
  if (v7)
  {
    swift_errorRetain();
  }

  else
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = *(a1 + 8);
    v13 = objc_allocWithZone(SASTSideBySideButtonsItem);

    v14 = [v13 init];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SASTSideBySideButtonsItem.buttonsViewStyle.setter(v15, v16, v14);
    [v14 setPrimaryButtonAction:a4];
    [v14 setPrimaryButtonEnabled:1];
    outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.primaryButtonLabel.setter(v6, v12, v14);
    v17 = static ColorFactory.white.getter();
    [v14 setPrimaryButtonTextColor:v17];

    [v14 setSecondaryButtonAction:a5];
    [v14 setSecondaryButtonEnabled:1];
    outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.secondaryButtonLabel.setter(v11, v10, v14);

    v6 = v14;
  }

  a2(v6, v7 & 1);

  outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v6, v7 & 1);
}

uint64_t getEnumTagSinglePayload for EmergencyCountdownBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for EmergencyCountdownBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Result<String, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void outlined bridged method (mbgnn) of @objc SASTCountdownTimerItem.headerText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setHeaderText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUISash.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setTitle:v4];
}

uint64_t objectdestroyTm_5()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t outlined init with take of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 87) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(a1, a2 & 1, v10, v11, v2 + v6, v2 + v8, v12, v13);
}

void outlined bridged method (mbnn) of @objc SASTSideBySideButtonsItem.buttonsViewStyle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setButtonsViewStyle:v4];
}

void outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.primaryButtonLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setPrimaryButtonLabel:v4];
}

void outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setSecondaryButtonLabel:v4];
}

id outlined copy of Result<SASTSideBySideButtonsItem, Error>(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t EmergencyCountdownModel.sashTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for EmergencyCountdownModel.sashTitle : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.sashTitle.setter(v1, v2);
}

uint64_t (*EmergencyCountdownModel.sashTitle.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.cancelButtonText.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t type metadata accessor for EmergencyCountdownModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for EmergencyCountdownModel;
  if (!type metadata singleton initialization cache for EmergencyCountdownModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmergencyCountdownModel.cancelButtonText.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.cancelButtonText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.cancelledText.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.cancelledText.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.cancelledText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callButtonText.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.callButtonText.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.callButtonText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callingLabel.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.callingLabel.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.callingLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.emergencyServicesLabel.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.emergencyServicesLabel.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.emergencyServicesLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.sos.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.sos.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.sos.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.dialog.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.dialog.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.dialog.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.localeIdentifier.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t EmergencyCountdownModel.localeIdentifier.setter()
{
  OUTLINED_FUNCTION_25_12();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t (*EmergencyCountdownModel.localeIdentifier.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.isSmartEnabled.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t EmergencyCountdownModel.isSmartEnabled.setter(char a1)
{
  type metadata accessor for EmergencyCountdownModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], a1);
}

uint64_t (*EmergencyCountdownModel.isSmartEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.isSAEAvailable.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t EmergencyCountdownModel.isSAEAvailable.setter(char a1)
{
  type metadata accessor for EmergencyCountdownModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], a1);
}

uint64_t (*EmergencyCountdownModel.isSAEAvailable.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.shouldPlayTTSCountdown.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t EmergencyCountdownModel.shouldPlayTTSCountdown.setter(char a1)
{
  type metadata accessor for EmergencyCountdownModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], a1);
}

uint64_t (*EmergencyCountdownModel.shouldPlayTTSCountdown.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callAction.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t EmergencyCountdownModel.callAction.setter(uint64_t a1)
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*EmergencyCountdownModel.callAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t EmergencyCountdownModel.cancelAction.getter()
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t EmergencyCountdownModel.cancelAction.setter(uint64_t a1)
{
  type metadata accessor for EmergencyCountdownModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*EmergencyCountdownModel.cancelAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_37(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.responseViewId.getter()
{
  v1 = *(v0 + *(type metadata accessor for EmergencyCountdownModel(0) + 72));

  return v1;
}

uint64_t EmergencyCountdownModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EmergencyCountdownModel(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void EmergencyCountdownModel.init(sashTitle:cancelButtonText:cancelledText:callButtonText:callingLabel:emergencyServicesLabel:sos:dialog:callAction:cancelAction:localeIdentifier:shouldPlayTTSCountdown:isSmartEnabled:isSAEAvailable:)(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, char a22, char a23, char a24)
{
  v24 = (a9 + *(type metadata accessor for EmergencyCountdownModel(0) + 72));
  *v24 = 0xD000000000000017;
  v24[1] = 0x8000000000456AA0;
  Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v25 = a18;
  CodableAceObject.init(wrappedValue:)();
  v26 = a19;
  CodableAceObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_9_29();
}

uint64_t EmergencyCountdownModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C74695468736173 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000000045B130 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C6C65636E6163 && a2 == 0xED00007478655464;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747475426C6C6163 && a2 == 0xEE00747865546E6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C676E696C6C6163 && a2 == 0xEC0000006C656261;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000000045B150 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7565171 && a2 == 0xE300000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000000045B170 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6176414541537369 && a2 == 0xEE00656C62616C69;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x800000000045B190 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x697463416C6C6163 && a2 == 0xEA00000000006E6FLL;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
  }
}

unint64_t EmergencyCountdownModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C74695468736173;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x747475426C6C6163;
      break;
    case 4:
      result = 0x4C676E696C6C6163;
      break;
    case 5:
    case 11:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 7565171;
      break;
    case 7:
      result = 0x676F6C616964;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x457472616D537369;
      break;
    case 10:
      result = 0x6176414541537369;
      break;
    case 12:
      result = 0x697463416C6C6163;
      break;
    case 13:
      result = 0x63416C65636E6163;
      break;
    case 14:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmergencyCountdownModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EmergencyCountdownModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance EmergencyCountdownModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneCallVerbSemantics.associatedSemantic.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmergencyCountdownModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmergencyCountdownModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmergencyCountdownModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_16_3();
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v11);
  OUTLINED_FUNCTION_2_6(v3, &v42);
  if (!v2)
  {
    v12 = type metadata accessor for EmergencyCountdownModel(0);
    v13 = v12[5];
    v41 = 1;
    OUTLINED_FUNCTION_2_6(v3 + v13, &v41);
    v14 = v12[6];
    v40 = 2;
    OUTLINED_FUNCTION_2_6(v3 + v14, &v40);
    v15 = v12[7];
    v39 = 3;
    OUTLINED_FUNCTION_2_6(v3 + v15, &v39);
    v16 = v12[8];
    v38 = 4;
    OUTLINED_FUNCTION_2_6(v3 + v16, &v38);
    v17 = v12[9];
    v37 = 5;
    OUTLINED_FUNCTION_2_6(v3 + v17, &v37);
    v18 = v12[10];
    v36 = 6;
    OUTLINED_FUNCTION_2_6(v3 + v18, &v36);
    v19 = v12[11];
    v35 = 7;
    OUTLINED_FUNCTION_2_6(v3 + v19, &v35);
    v20 = v12[12];
    v34 = 8;
    OUTLINED_FUNCTION_2_6(v3 + v20, &v34);
    v21 = v12[13];
    v33 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v22);
    OUTLINED_FUNCTION_2_6(v3 + v21, &v33);
    v23 = v12[14];
    v32 = 10;
    OUTLINED_FUNCTION_2_6(v3 + v23, &v32);
    v24 = v12[15];
    v31 = 11;
    OUTLINED_FUNCTION_2_6(v3 + v24, &v31);
    v25 = v12[16];
    v30 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_2_6(v3 + v25, &v30);
    v26 = v12[17];
    v29 = 13;
    OUTLINED_FUNCTION_2_6(v3 + v26, &v29);
    v28[9] = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void EmergencyCountdownModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v138 = v4;
  v139 = v3;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_16_2();
  v124 = v5;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v6);
  v125 = v121 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_7();
  v140 = v9;
  v141 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  v126 = v10;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v11);
  v127 = v121 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  v128 = v121 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v145 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_16_2();
  v129 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  v130 = v121 - v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  v131 = v121 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v24 = v121 - v23;
  __chkstk_darwin(v25);
  v27 = (v121 - v26);
  __chkstk_darwin(v28);
  v30 = v121 - v29;
  __chkstk_darwin(v31);
  v33 = v121 - v32;
  __chkstk_darwin(v34);
  v36 = v121 - v35;
  __chkstk_darwin(v37);
  v135 = (v121 - v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMR);
  OUTLINED_FUNCTION_7();
  v132 = v40;
  v133 = v39;
  __chkstk_darwin(v39);
  v42 = v121 - v41;
  v143 = type metadata accessor for EmergencyCountdownModel(0);
  __chkstk_darwin(v143);
  v144 = v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();
  v134 = v42;
  v45 = v142;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    v46 = v136;
    v142 = v45;
    v50 = 0;
    LODWORD(v51) = 0;
    v52 = 0;
    LODWORD(v53) = 0;
    v54 = 0;
    OUTLINED_FUNCTION_0_53();
  }

  else
  {
    v47 = v33;
    v142 = v30;
    v122 = v27;
    v121[1] = v24;
    v149[26] = 0;
    OUTLINED_FUNCTION_17_15();
    v49 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v48);
    v46 = v136;
    v51 = v133;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v145 + 32;
    v69 = *(v145 + 32);
    v69(v144, v135, v46);
    v149[25] = 1;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v69(&v144[v143[5]], v36, v46);
    v149[24] = 2;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v70 = &v144[v143[6]];
    v135 = v69;
    v69(v70, v47, v46);
    v149[23] = 3;
    v71 = v142;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v132;
    v72 = v143;
    v135(&v144[v143[7]], v71, v46);
    v149[22] = 4;
    v73 = v49;
    v74 = v122;
    v121[0] = v73;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v72;
    v50 = v46;
    v135(&v144[v27[8]], v74, v46);
    v149[21] = 5;
    v75 = OUTLINED_FUNCTION_20_18();
    v52 = v121[0];
    OUTLINED_FUNCTION_27_11(v75, v76, v77, v78);
    v79 = OUTLINED_FUNCTION_11_29(v27[9]);
    v80(v79);
    v149[20] = 6;
    v81 = OUTLINED_FUNCTION_20_18();
    OUTLINED_FUNCTION_27_11(v81, v82, v83, v84);
    v85 = OUTLINED_FUNCTION_11_29(v27[10]);
    v86(v85);
    v149[19] = 7;
    v87 = OUTLINED_FUNCTION_20_18();
    OUTLINED_FUNCTION_27_11(v87, v88, v89, v90);
    v142 = 0;
    v91 = OUTLINED_FUNCTION_11_29(v27[11]);
    v92(v91);
    v149[2] = 8;
    v53 = v129;
    v93 = v134;
    v94 = v142;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v142 = v94;
    if (v94)
    {
      v95 = *(v42 + 1);
      LODWORD(v42) = v42 + 8;
      v95(v93, v51);
      LODWORD(v131) = 0;
      LODWORD(v134) = 0;
      OUTLINED_FUNCTION_1_60();
      OUTLINED_FUNCTION_7_30();
    }

    else
    {
      v135(&v144[v143[12]], v53, v46);
      v149[1] = 9;
      OUTLINED_FUNCTION_17_15();
      v50 = lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v96);
      v97 = v142;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v142 = v97;
      if (!v97)
      {
        v101 = *(v140 + 32);
        v102 = v101(&v144[v143[13]], v128, v141);
        v149[0] = 10;
        OUTLINED_FUNCTION_21_13(v102, v149);
        v142 = 0;
        v103 = v101(&v144[v143[14]], v127, v141);
        v148 = 11;
        OUTLINED_FUNCTION_21_13(v103, &v148);
        LODWORD(v135) = 1;
        v142 = 0;
        v101(&v144[v143[15]], v126, v141);
        v147[1] = 12;
        _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
        v104 = v142;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v142 = v104;
        if (v104)
        {
          v105 = OUTLINED_FUNCTION_6_34();
          v106(v105);
          LODWORD(v132) = 0;
          LODWORD(v133) = 0;
        }

        else
        {
          v108 = *(v138 + 32);
          v109 = v108(&v144[v143[16]], v125, v139);
          v147[0] = 13;
          OUTLINED_FUNCTION_21_13(v109, v147);
          v142 = 0;
          v108(&v144[v143[17]], v124, v139);
          v146 = 14;
          v110 = v142;
          v111 = KeyedDecodingContainer.decode(_:forKey:)();
          v142 = v110;
          if (!v110)
          {
            v115 = v111;
            v116 = v112;
            v117 = v144;
            v118 = &v144[v143[18]];
            v119 = OUTLINED_FUNCTION_6_34();
            v120(v119);
            *v118 = v115;
            *(v118 + 1) = v116;
            outlined init with copy of EmergencyCountdownModel(v117, v123);
            __swift_destroy_boxed_opaque_existential_1(v137);
            outlined destroy of EmergencyCountdownModel(v117);
            return;
          }

          v113 = OUTLINED_FUNCTION_6_34();
          v114(v113);
          LODWORD(v132) = 1;
          LODWORD(v133) = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v137);
        LOBYTE(v51) = 1;
        v52 = 1;
        LODWORD(v53) = 1;
        v54 = 1;
        OUTLINED_FUNCTION_7_30();
        LODWORD(v131) = v107;
        LODWORD(v134) = v107;
        LODWORD(v137) = v107;
        goto LABEL_6;
      }

      v98 = OUTLINED_FUNCTION_6_34();
      v99(v98);
      LODWORD(v134) = 0;
      OUTLINED_FUNCTION_1_60();
      OUTLINED_FUNCTION_7_30();
      LODWORD(v131) = v100;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v137);
  if ((v50 & 1) == 0)
  {
    if (!v51)
    {
      OUTLINED_FUNCTION_30_14();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_30_14();
    v50 = *(v145 + 8);
LABEL_10:
    v55 = v144;
    v56 = OUTLINED_FUNCTION_22_9(v143[5]);
    (v50)(v56);
    if (v52)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  LODWORD(v137) = 0;
  LODWORD(v135) = 0;
  LODWORD(v132) = 0;
  LODWORD(v133) = 0;
LABEL_6:
  v50 = *(v145 + 8);
  (v50)(v144, v46);
  if (v51)
  {
    goto LABEL_10;
  }

LABEL_13:
  v55 = v144;
  if (v52)
  {
    OUTLINED_FUNCTION_5_37();
LABEL_15:
    v57 = v143;
    v58 = OUTLINED_FUNCTION_22_9(v143[6]);
    (v50)(v58);
    if ((v53 & 1) == 0)
    {
      if (v54)
      {
LABEL_17:
        OUTLINED_FUNCTION_5_37();
        v59 = v141;
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_18:
  if (!v53)
  {
    v57 = v143;
    if (v54)
    {
      goto LABEL_17;
    }

LABEL_25:
    v59 = v141;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_37();
  v57 = v143;
LABEL_20:
  v60 = OUTLINED_FUNCTION_22_9(v57[7]);
  (v50)(v60);
  v59 = v141;
  if (v54)
  {
LABEL_21:
    v61 = OUTLINED_FUNCTION_22_9(v57[8]);
    (v50)(v61);
    v62 = v138;
    if ((v42 & 1) == 0)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (!v42)
  {
    v62 = v138;
    if (!v27)
    {
      goto LABEL_34;
    }

LABEL_31:
    OUTLINED_FUNCTION_5_37();
LABEL_32:
    v64 = OUTLINED_FUNCTION_22_9(v57[10]);
    (v50)(v64);
    if (v130)
    {
      goto LABEL_36;
    }

LABEL_38:
    if (!v131)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_5_37();
LABEL_40:
    v66 = OUTLINED_FUNCTION_22_9(v57[12]);
    (v50)(v66);
    if (v134)
    {
      goto LABEL_44;
    }

LABEL_41:
    if (v137)
    {
      v67 = *(v140 + 8);
      v67(&v55[v57[14]], v59);
      goto LABEL_46;
    }

LABEL_48:
    if (!v135)
    {
      goto LABEL_53;
    }

    v67 = *(v140 + 8);
LABEL_50:
    v67(&v55[v57[15]], v59);
    if (v132)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_5_37();
  v62 = v138;
LABEL_28:
  v63 = OUTLINED_FUNCTION_22_9(v57[9]);
  (v50)(v63);
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (!v130)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_5_37();
LABEL_36:
  v65 = OUTLINED_FUNCTION_22_9(v57[11]);
  (v50)(v65);
  if (v131)
  {
    goto LABEL_40;
  }

LABEL_43:
  if (!v134)
  {
    goto LABEL_41;
  }

LABEL_44:
  v67 = *(v140 + 8);
  v67(&v55[v57[13]], v59);
  if ((v137 & 1) == 0)
  {
    goto LABEL_48;
  }

  v67(&v55[v57[14]], v59);
LABEL_46:
  if (v135)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v132)
  {
LABEL_54:
    v68 = *(v62 + 8);
    v68(&v55[v57[16]], v139);
    if (v133)
    {
      v68(&v55[v57[17]], v139);
    }

    return;
  }

LABEL_51:
  if (v133)
  {
    (*(v62 + 8))(&v55[v57[17]], v139);
  }
}

unint64_t lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of EmergencyCountdownModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyCountdownModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EmergencyCountdownModel(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyCountdownModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance EmergencyCountdownModel(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional __swiftcall EmergencyCountdownUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EmergencyCountdownUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyCountdownUpdateAction_startTimer;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyCountdownUpdateAction_unknownDefault;
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

uint64_t EmergencyCountdownUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D69547472617473;
  }

  else
  {
    return 0x69546C65636E6163;
  }
}

unint64_t instantiation function for generic protocol witness table for EmergencyCountdownModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmergencyCountdownModel and conformance EmergencyCountdownModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownModel and conformance EmergencyCountdownModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    type metadata accessor for EmergencyCountdownModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyCountdownUpdateAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional *a2@<X8>)
{
  result.value = EmergencyCountdownUpdateAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyCountdownUpdateAction@<X0>(uint64_t *a1@<X8>)
{
  result = EmergencyCountdownUpdateAction.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance EmergencyCountdownUpdateAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance EmergencyCountdownUpdateAction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  return UpdateResponseCommand<>.serializeData()();
}

void type metadata completion function for EmergencyCountdownModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>, &type metadata for String);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>, &type metadata for Bool);
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

void type metadata accessor for Loggable<String>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Loggable();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EmergencyCountdownUpdateAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EmergencyCountdownModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyCountdownModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_26_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return Loggable.wrappedValue.getter();
}

uint64_t static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0[623] = v1;
  v0[617] = v2;
  v0[611] = v3;
  v0[605] = v4;
  v0[599] = v5;
  v0[593] = v6;
  v0[587] = v7;
  v8 = type metadata accessor for PhoneError(0);
  v0[629] = v8;
  OUTLINED_FUNCTION_21(v8);
  v0[635] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v0[641] = OUTLINED_FUNCTION_45();
  v0[647] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v0[653] = v10;
  v0[659] = OUTLINED_FUNCTION_45();
  v0[665] = type metadata accessor for Locale();
  OUTLINED_FUNCTION_24_5();
  v0[671] = v11;
  v0[677] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for EmergencyCountdownModel(0);
  v0[683] = v12;
  OUTLINED_FUNCTION_21(v12);
  v0[689] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for CommonDirectAction(0);
  v0[695] = v13;
  OUTLINED_FUNCTION_21(v13);
  v0[701] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 4936);
  v2 = *(v0 + 4840);
  v3 = *(v0 + 4744);

  OUTLINED_FUNCTION_24_15(v0 + 656, v4, v5, &async function pointer to partial apply for implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v6, v0 + 4376);

  OUTLINED_FUNCTION_24_15(v0 + 1936, v7, v8, &async function pointer to partial apply for implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v9, v0 + 4568);

  OUTLINED_FUNCTION_24_15(v0 + 3216, v10, v11, &async function pointer to partial apply for implicit closure #3 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v12, v0 + 4552);

  OUTLINED_FUNCTION_24_15(v0 + 16, v13, v14, &async function pointer to partial apply for implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v15, v0 + 4536);
  outlined init with copy of SignalProviding(v3, v0 + 3896);
  v16 = swift_allocObject();
  *(v0 + 5656) = v16;
  *(v16 + 16) = v1;
  *(v16 + 24) = v2;
  outlined init with take of PhoneCallFeatureFlagProviding((v0 + 3896), v16 + 32);
  *(v16 + 72) = 0;

  v17 = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine20LabelExecutionResultCy27PhoneCallFlowDelegatePlugin05StartH10CATsSimpleC018EmergencyCountdownB3IdsOGMd, &_s16SiriDialogEngine20LabelExecutionResultCy27PhoneCallFlowDelegatePlugin05StartH10CATsSimpleC018EmergencyCountdownB3IdsOGMR);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_get_throwing(v18, v19, v20, v21);
}

{
  *(v1 + 5704) = v0;
  if (!v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  v2 = OUTLINED_FUNCTION_22_10();
  return _swift_asyncLet_finish(v2, v1 + v3, v5, v1 + v4);
}

{
  OUTLINED_FUNCTION_24_1();
  v39 = v0;
  v1 = [*(v0 + 4648) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 fullPrint];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 5752) = v6;
    *(v0 + 5800) = v8;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v9 = *(v0 + 4840);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = v9;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 4840);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v14;
      *v16 = v14;
      *(v15 + 12) = 2080;
      v18 = v14;
      v19 = App.appIdentifier.getter();
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v19 = 7104878;
        v21 = 0xE300000000000000;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_0, v12, v13, "EmergencyCountdown intent for launch app = %@ \n app=%s", v15, 0x16u);
      outlined destroy of PhoneCallNLIntent?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v15);
    }

    v23 = *(v0 + 5608);
    v24 = *(v0 + 4744);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    v25 = v24[3];
    v26 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v26 + 8))(v25, v26);
    *(v0 + 5848) = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 3976));
    __swift_destroy_boxed_opaque_existential_1((v0 + 3976));
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v23, type metadata accessor for CommonDirectAction);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    v27 = v24[3];
    v28 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v27);
    (*(v28 + 8))(v27, v28);
    *(v0 + 5896) = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 4056));
    __swift_destroy_boxed_opaque_existential_1((v0 + 4056));
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v23, type metadata accessor for CommonDirectAction);
    v29 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
    v30 = v0 + 656;
    v31 = v0 + 4376;
    v32 = v0 + 4896;
  }

  else
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "#EmergencyCountdownOutputBuilder intentConfirmationEmergency CAT returned no dialog. ", v36, 2u);
      OUTLINED_FUNCTION_26_0(v36);
    }

    v29 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
    v30 = v0 + 2576;
    v31 = v0 + 4648;
    v32 = v0 + 7584;
  }

  return _swift_asyncLet_get_throwing(v30, v31, v29, v32);
}

{
  OUTLINED_FUNCTION_15();
  v1[743] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v1[749] = v1[547];
    v1[755] = v1[548];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[761] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v1[767] = v1[571];
    v1[773] = v1[572];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[779] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v1[785] = v1[569];
    v1[791] = v1[570];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1[797] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v1[803] = v1[567];
    v1[809] = v1[568];

    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_27();
  *(v1 + 6520) = v0;
  if (v0)
  {

    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  *(v0 + 7245) = 0;

  v1 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v3 = v2;

  *(v0 + 6568) = v1;
  *(v0 + 6616) = v3;
  v4 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_get_throwing(v4, v0 + 4600, v5, v0 + 6624);
}

{
  OUTLINED_FUNCTION_23_0();
  *(v1 + 6664) = v0;
  if (v0)
  {

    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  *(v0 + 7244) = 1;

  v1 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v3 = v2;
  *(v0 + 4584) = v1;
  *(v0 + 4592) = v2;

  *(v0 + 6712) = v3;
  v4 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_get_throwing(v4, v0 + 4600, v5, v0 + 7008);
}

{
  OUTLINED_FUNCTION_23_0();
  v1[845] = v0;
  if (v0)
  {

    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v1[851] = v1[573];
    v2 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v43 = *(v0 + 6808);
  v41 = *(v0 + 6616);
  v42 = *(v0 + 6712);
  v39 = *(v0 + 6568);
  v44 = *(v0 + 6424);
  v45 = *(v0 + 6472);
  v29 = *(v0 + 6136);
  v30 = *(v0 + 6184);
  v25 = *(v0 + 5992);
  v26 = *(v0 + 6040);
  v35 = *(v0 + 6328);
  v36 = *(v0 + 5896);
  v32 = *(v0 + 6280);
  v33 = *(v0 + 5848);
  *(v0 + 7243) = 2;
  v40 = *(v0 + 5800);
  v38 = *(v0 + 5752);
  v1 = *(v0 + 5512);
  v2 = *(v0 + 5464);
  v3 = *(v0 + 5416);
  v24 = *(v0 + 5368);
  v31 = *(v0 + 5320);
  v48 = *(v0 + 4888);
  v47 = *(v0 + 4840);
  v4 = *(v0 + 4744);

  v5 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v27 = v6;
  v28 = v5;

  v46 = v4;
  v8 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v9 = *(v7 + 8);
  v34 = v33;
  v37 = v36;
  v9(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 4136), *(v0 + 4160));
  dispatch thunk of DeviceState.siriLocale.getter();
  v10 = Locale.identifier.getter();
  v12 = v11;
  (*(v24 + 8))(v3, v31);
  LOBYTE(v31) = [objc_opt_self() saeAvailable];
  v13 = (v1 + *(v2 + 72));
  *v13 = 0xD000000000000017;
  v13[1] = 0x8000000000456AA0;
  *(v0 + 4520) = v25;
  *(v0 + 4528) = v26;
  Loggable.init(wrappedValue:)();
  *(v0 + 4504) = v29;
  *(v0 + 4512) = v30;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4488) = v32;
  *(v0 + 4496) = v35;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4472) = v39;
  *(v0 + 4480) = v41;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4456) = v43;
  *(v0 + 4464) = v42;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4440) = v28;
  *(v0 + 4448) = v27;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4424) = v44;
  *(v0 + 4432) = v45;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 4408) = v38;
  *(v0 + 4416) = v40;
  OUTLINED_FUNCTION_25_13();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v14 = v34;
  CodableAceObject.init(wrappedValue:)();
  v15 = v37;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 4392) = v10;
  *(v0 + 4400) = v12;
  OUTLINED_FUNCTION_25_13();
  *(v0 + 7242) = 0;
  Loggable.init(wrappedValue:)();
  *(v0 + 7241) = 1;
  Loggable.init(wrappedValue:)();
  *(v0 + 7240) = v31;
  Loggable.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 4136));
  static DialogPhase.confirmation.getter();
  v16 = swift_task_alloc();
  *(v16 + 16) = v1;
  *(v16 + 24) = v47;
  *(v16 + 32) = v48;
  *(v16 + 40) = v46;
  *(v16 + 48) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v17 = v46[3];
  v18 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v17);
  (*(v18 + 136))(v17, v18);
  v19 = *(v0 + 4240);
  *(v0 + 6856) = v19;
  *(v0 + 6904) = *(v0 + 4248);
  *(v0 + 6952) = __swift_project_boxed_opaque_existential_1((v0 + 4216), v19);
  *(v0 + 4320) = type metadata accessor for PhoneSnippetDataModels(0);
  *(v0 + 4328) = lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1((v0 + 4296));
  v20 = OUTLINED_FUNCTION_55();
  outlined init with copy of EmergencyCountdownModel(v20, v21);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v0 + 7000) = v22;
  *(v22 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 2576, v0 + 4648, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 7968);
}

{
  *(v1 + 7048) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[863];
  v2 = v0[581];
  *(v0[875] + 32) = v2;
  v3 = *(v1 + 8);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[887] = v5;
  *v5 = v0;
  v5[1] = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  v6 = v0[875];
  v7 = v0[857];
  v8 = v0[659];
  v9 = v0[587];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v9, v0 + 537, v6, v8, v7, v3);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v1 + 4296));
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 5848);
  v2 = *(v0 + 5512);

  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 4216));
  OUTLINED_FUNCTION_16_26();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v2, v5);
  v6 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_finish(v6, v0 + 4600, v7, v0 + 7872);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7824);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7776);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7728);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7680);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7632);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  *(v1 + 7144) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }
}

{
  v1 = *(v0 + 5080);
  v2 = [*(v0 + 4648) catId];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *v1 = v3;
  v1[1] = v5;
  v1[2] = 0xD000000000000041;
  v1[3] = 0x800000000045B1B0;
  v1[4] = 0xD000000000000071;
  v1[5] = 0x800000000045B200;
  v1[6] = 37;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  *(v0 + 7192) = swift_allocError();
  PhoneError.logged()(v6);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v1, type metadata accessor for PhoneError);
  swift_willThrow();
  v7 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_finish(v7, v0 + 4600, v8, v0 + 4176);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 2576, v0 + 4648, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 4016);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8160);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 3216, v0 + 4552, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 4096);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4256);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6576);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  v0 = OUTLINED_FUNCTION_22_10();
  return OUTLINED_FUNCTION_1_61(v0, v1, v2);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7488);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7440);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7392);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7344);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6960);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4656);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4704);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4752);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4800);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4848);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4992);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5040);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5088);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5136);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5184);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5328);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5376);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5424);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5472);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5520);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5664);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5712);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5760);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5808);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5856);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6000);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6048);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6096);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6144);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6192);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6336);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6384);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6432);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6480);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6528);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6720);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6768);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6816);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6864);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6912);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7104);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7152);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7200);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7248);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7296);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 7000);
  v2 = *(v0 + 5848);
  v3 = *(v0 + 5512);
  v4 = *(v0 + 5272);
  v5 = *(v0 + 5224);
  v6 = *(v0 + 5176);

  (*(v5 + 8))(v4, v6);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 4296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 4216));
  OUTLINED_FUNCTION_16_26();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v3, v7);
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v8, v9, v10, v11);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8064);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8112);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 3216, v0 + 4552, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 3936);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 4568, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 3856);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7920);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

uint64_t static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 136) + **(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 136));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);

  return v5();
}

uint64_t implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56) + **(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);

  return v5();
}

uint64_t implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t implicit closure #3 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 72) + **(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 72));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);

  return v5();
}

uint64_t implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 0, 0);
}

uint64_t implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 32);
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  OUTLINED_FUNCTION_24_5();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  v5 = *(v0 + 32);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 48) = v0;

  v7 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of PhoneCallNLIntent?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of PhoneCallNLIntent?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 0, 0);
}

uint64_t implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  v14 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
  v4 = v3;
  *(v0 + 48) = v3;
  type metadata accessor for SirikitDeviceState();
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 8))(v13, v5, v6);
  v7 = SirikitDeviceState.__allocating_init(from:)();
  *(v0 + 56) = v7;
  OUTLINED_FUNCTION_24_5();
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  v10 = *(v0 + 88);

  return v12(v4, v7, v10);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {
    v8 = implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {

    *(v4 + 80) = v3;
    v8 = implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  return OUTLINED_FUNCTION_13_0(*(v0 + 80));
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #6 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for StartCallCATsSimple + 280) + **(*a2 + class metadata base offset for StartCallCATsSimple + 280));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #6 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);

  return v5();
}

uint64_t implicit closure #6 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  return OUTLINED_FUNCTION_13_0(*(v0 + 32));
}

uint64_t closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v31 = a6;
  v9 = type metadata accessor for ResponseMode();
  __chkstk_darwin(v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17DismissalSettingsVSgMd, &_s11SiriKitFlow17DismissalSettingsVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v30 = type metadata accessor for EmergencyCountdownModel(0);

  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v16 = a5[3];
  v17 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v16);
  (*(v17 + 8))(v32, v16, v17);
  if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a3, a4))
  {
    static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.resultViewId.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v18 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  OutputGenerationManifest.nlContextUpdate.setter();
  DismissalSettings.init(_:)();
  v19 = type metadata accessor for DismissalSettings();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  OutputGenerationManifest.dismissalSettings.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "#EmergencyCountdownOutputBuilder added dismissalSettings to prevent auto-dismissal", v23, 2u);
  }

  static ResponseMode.voiceForward.getter();
  result = OutputGenerationManifest.responseMode.setter();
  if (v31)
  {
    v25 = specialized UpdateResponseCommand<>.asUpdateCommand(for:)(v30, &protocol witness table for EmergencyCountdownModel, 1);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#EmergencyCountdownOutputBuilder adding startTimerCommand to additional commands", v28, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_426260;
    *(v29 + 32) = v25;
    return OutputGenerationManifest.additionalCommands.setter();
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v3, v4);
}

uint64_t partial apply for implicit closure #3 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #3 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v3, v4);
}

uint64_t partial apply for implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v3, v4);
}

uint64_t partial apply for implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 72);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18(v6);
  *v7 = v8;
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return implicit closure #5 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v2, v3, v4, v0 + 32, v5);
}

uint64_t partial apply for implicit closure #6 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #6 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(v3, v4);
}

uint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t DisambiguationItemWithDirectInvocationModel.init(id:personHandle:spokenHandle:shouldPrintHandleBlue:label:rskeCommand:type:)@<X0>(uint64_t a1@<X0>, unint64_t a5@<X4>, uint64_t a9@<X8>, void *a10, uint64_t a11, unint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_27_3();
  v15 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v16 = *(v15 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  OUTLINED_FUNCTION_48_11();
  v17 = *(v15 + 32);
  OUTLINED_FUNCTION_48_11();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v19 = v18;
  v28 = a1;
  v26 = v20;
  (*(v18 + 16))(a9, a1);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_23_1();
  v23 = *(v22 + 8);
  v23(a9 + v16, v21);
  OUTLINED_FUNCTION_48_11();
  Loggable.init(wrappedValue:)();
  v23(a9 + v17, v21);
  OUTLINED_FUNCTION_48_11();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v24 = a10;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  if (a5)
  {
  }

  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();

  return (*(v19 + 8))(v28, v26);
}

uint64_t ForeignEmergencyCallDisambiguationModel.init(emergencyServicesItem:foreignEmergencyNumberItem:prompt:shouldEnableCarPlayUIRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v13 = (a6 + v12[8]);
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x8000000000456AC0;
  outlined init with take of DisambiguationItemWithDirectInvocationModel?(a1, a6);
  result = outlined init with take of DisambiguationItemWithDirectInvocationModel?(a2, a6 + v12[5]);
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[7]) = a5;
  return result;
}

uint64_t LocalEmergencyCallDisambiguationModel.init(appBundleId:prompt:items:shouldEnableCarPlayUIRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = (a7 + *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 36));
  *v12 = 0xD00000000000001CLL;
  v12[1] = 0x8000000000456AE0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  UUID.init()();
  return Loggable.init(wrappedValue:)();
}

uint64_t DisambiguationItemWithDirectInvocationModel.id.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  v0 = OUTLINED_FUNCTION_19_0();

  return v1(v0);
}

uint64_t DisambiguationItemWithDirectInvocationModel.personHandle.getter()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t DisambiguationItemWithDirectInvocationModel.personHandle.setter()
{
  v0 = OUTLINED_FUNCTION_34_7();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*DisambiguationItemWithDirectInvocationModel.personHandle.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.spokenHandle.getter()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t DisambiguationItemWithDirectInvocationModel.spokenHandle.setter()
{
  v0 = OUTLINED_FUNCTION_34_7();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*DisambiguationItemWithDirectInvocationModel.spokenHandle.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.getter()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.setter(char a1)
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

void (*DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.label.getter()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t DisambiguationItemWithDirectInvocationModel.label.setter()
{
  v0 = OUTLINED_FUNCTION_34_7();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*DisambiguationItemWithDirectInvocationModel.label.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.sashTitle.modify;
}

void property wrapper backing initializer of DisambiguationItemWithDirectInvocationModel.rskeCommand(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_17_17();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v3 = a1;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
}

uint64_t DisambiguationItemWithDirectInvocationModel.rskeCommand.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v6 = CodableAceObject.wrappedValue.getter();
  (*(v2 + 8))(v5, v0);
  return v6;
}

void DisambiguationItemWithDirectInvocationModel.rskeCommand.setter()
{
  v1 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v1);
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  v3 = Loggable.wrappedValue.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  CodableAceObject.wrappedValue.setter();
  v3(&v4, 0);
}

void (*DisambiguationItemWithDirectInvocationModel.rskeCommand.modify())(uint64_t a1)
{
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  v2 = OUTLINED_FUNCTION_8_38(v1);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  *(v0 + 64) = OUTLINED_FUNCTION_14_29(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v0 + 72) = CodableAceObject.wrappedValue.modify();
  return DisambiguationItemWithDirectInvocationModel.rskeCommand.modify;
}

void DisambiguationItemWithDirectInvocationModel.rskeCommand.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t outlined init with take of DisambiguationItemWithDirectInvocationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DisambiguationItemWithDirectInvocationModel.type.getter()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.personHandle : DisambiguationItemWithDirectInvocationModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t DisambiguationItemWithDirectInvocationModel.type.setter()
{
  v0 = OUTLINED_FUNCTION_34_7();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*DisambiguationItemWithDirectInvocationModel.type.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.sashTitle.modify;
}

unint64_t DisambiguationItemWithDirectInvocationModel.ItemType.description.getter(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xD000000000000018;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v7, ".phoneNumber(");
  HIWORD(v7[1]) = -4864;
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

uint64_t DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000000045B2D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int SharedNeedsValueContext.NeedsValueCase.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = default argument 1 of SharedConfirmationRepromptContext.hasPrompted(for:times:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void DisambiguationItemWithDirectInvocationModel.ItemType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_30_1();
  v48 = v24;
  v49 = v23;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO33EmergencySentinelPersonCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO33EmergencySentinelPersonCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v45 = v27;
  v46 = v26;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_27_3();
  v44 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO0D16NumberCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO0D16NumberCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v32 = v31;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  v35 = &v44 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v38 = v37;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v39);
  v41 = &v44 - v40;
  OUTLINED_FUNCTION_15_26();
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();
  v42 = v48;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v42)
  {
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v32 + 8))(v35, v30);
  }

  else
  {
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();
    v43 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v45 + 8))(v43, v46);
  }

  (*(v38 + 8))(v41, v36);
  OUTLINED_FUNCTION_29_2();
}

void DisambiguationItemWithDirectInvocationModel.ItemType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30_1();
  a23 = v25;
  a24 = v26;
  v71 = v24;
  v28 = v27;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO33EmergencySentinelPersonCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO33EmergencySentinelPersonCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v67 = v29;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v30);
  v32 = &v64 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO0D16NumberCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO0D16NumberCodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v68 = v33;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  v36 = &v64 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v69 = v38;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v39);
  v41 = &v64 - v40;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();
  v42 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {
    goto LABEL_9;
  }

  v65 = v32;
  v66 = v36;
  v71 = v28;
  v43 = v70;
  v44 = KeyedDecodingContainer.allKeys.getter();
  v45 = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0P4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLO_Tt1g5(v44, 0);
  v49 = v37;
  if (v47 == v48 >> 1)
  {
LABEL_8:
    v57 = type metadata accessor for DecodingError();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = &type metadata for DisambiguationItemWithDirectInvocationModel.ItemType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v57 - 8) + 104))(v59, enum case for DecodingError.typeMismatch(_:), v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v41, v49);
    v28 = v71;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
    OUTLINED_FUNCTION_29_2();
    return;
  }

  if (v47 < (v48 >> 1))
  {
    a10 = *(v46 + v47);
    specialized ArraySlice.subscript.getter(v47 + 1, v48 >> 1, v45, v46, v47, v48);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      v54 = v37;
      if (a10)
      {
        a14 = 1;
        lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();
        v55 = v65;
        OUTLINED_FUNCTION_46_8(&unk_5212D0, &a14);
        v56 = v69;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v55, v43);
        (*(v56 + 8))(v41, v54);
      }

      else
      {
        a13 = 0;
        lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();
        OUTLINED_FUNCTION_46_8(&unk_5212B0, &a13);
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_44_6();
        v61(v60);
        v62 = OUTLINED_FUNCTION_31_10();
        v63(v62);
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_10;
    }

    v49 = v37;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t DisambiguationItemWithDirectInvocationModel.hash(into:)()
{
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_54();
  _s10Foundation4UUIDVACSHAAWlTm_1(v0);

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t DisambiguationItemWithDirectInvocationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61486E6F73726570 && a2 == 0xEC000000656C646ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61486E656B6F7073 && a2 == 0xEC000000656C646ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000000045B2F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D6D6F43656B7372 && a2 == 0xEB00000000646E61;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701869940 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t DisambiguationItemWithDirectInvocationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F73726570;
      goto LABEL_5;
    case 2:
      v3 = 0x6E656B6F7073;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6148000000000000;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
      result = 0x6D6D6F43656B7372;
      break;
    case 6:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = DisambiguationItemWithDirectInvocationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static PhoneAppResolutionHelper.appUsageLookUpDays.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void DisambiguationItemWithDirectInvocationModel.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_15_26();
  v6 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();
  OUTLINED_FUNCTION_23_11(&unk_521190, v7, v6);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_54();
  _s10Foundation4UUIDVACSHAAWlTm_1(v8);
  OUTLINED_FUNCTION_6_35();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(v9);
    OUTLINED_FUNCTION_7_31();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_42_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v10);
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_41_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v11);
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_7_31();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(v12);
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(v13);
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_29_2();
}

Swift::Int DisambiguationItemWithDirectInvocationModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_54();
  _s10Foundation4UUIDVACSHAAWlTm_1(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void DisambiguationItemWithDirectInvocationModel.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v107 = v0;
  v2 = v1;
  v90 = v3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
  OUTLINED_FUNCTION_7();
  v89 = v4;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_27_3();
  v91 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  OUTLINED_FUNCTION_7();
  v101 = v8;
  v102 = v7;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_27_3();
  v93 = v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_7();
  v103 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  v95 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v104 = v15;
  v105 = v14;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_27_3();
  v98 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_7();
  v112 = v19;
  v113 = v18;
  __chkstk_darwin(v18);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v87 - v22;
  v24 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v96 = v25;
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v97 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v99 = v30;
  v100 = v29;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  v33 = &v87 - v32;
  v34 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_4();
  v38 = v37 - v36;
  v40 = *(v39 + 20);
  v114 = 0;
  v115 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v111 = v40;
  Loggable.init(wrappedValue:)();
  v116 = v34;
  v41 = *(v34 + 32);
  v114 = 0;
  v115 = 0;
  v110 = v41;
  Loggable.init(wrappedValue:)();
  v43 = v2[3];
  v42 = v2[4];
  v109 = v2;
  v44 = __swift_project_boxed_opaque_existential_1(v2, v43);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();
  v106 = v33;
  v45 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    v107 = v45;
    v52 = v113;
    __swift_destroy_boxed_opaque_existential_1(v109);
    OUTLINED_FUNCTION_19_20();
    v53 = v38;
    v54 = *(v112 + 8);
    v54(v53 + v111, v52);
    if (v33)
    {
      (*(v104 + 8))(v53 + v116[6], v105);
    }

    if (v42)
    {
      (*(v103 + 8))(v53 + v116[7], v45);
    }

    v54(v53 + v110, v52);
    if (v44)
    {
      (*(v101 + 8))(v53 + v116[9], v102);
    }
  }

  else
  {
    v46 = v98;
    LOBYTE(v114) = 0;
    OUTLINED_FUNCTION_0_54();
    _s10Foundation4UUIDVACSHAAWlTm_1(v47);
    OUTLINED_FUNCTION_33_10();
    v48 = v97;
    v49 = v100;
    OUTLINED_FUNCTION_37_12(v24, v50, v100, v24, v51);
    v55 = v24;
    v56 = *(v96 + 32);
    v57 = v38;
    v97 = v55;
    v56(v38, v48);
    LOBYTE(v114) = 1;
    OUTLINED_FUNCTION_17_15();
    v59 = v23;
    v60 = lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(v58);
    v61 = v113;
    OUTLINED_FUNCTION_37_12(v113, &v114, v49, v113, v60);
    v107 = v60;
    v62 = *(v112 + 40);
    v62(v57 + v111, v59, v61);
    LOBYTE(v114) = 2;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v63);
    OUTLINED_FUNCTION_33_10();
    v64 = v105;
    OUTLINED_FUNCTION_37_12(v105, v65, v49, v105, v66);
    v67 = v57;
    v88 = v62;
    (*(v104 + 32))(v57 + v116[6], v46, v64);
    LOBYTE(v114) = 3;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v68);
    OUTLINED_FUNCTION_33_10();
    v69 = v95;
    v70 = v108;
    OUTLINED_FUNCTION_37_12(v108, v71, v100, v108, v72);
    (*(v103 + 32))(v67 + v116[7], v69, v70);
    LOBYTE(v114) = 4;
    v73 = v94;
    v74 = v113;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v88(v67 + v110, v73, v74);
    LOBYTE(v114) = 5;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(v75);
    OUTLINED_FUNCTION_33_10();
    v76 = v93;
    v77 = v102;
    OUTLINED_FUNCTION_37_12(v102, v78, v100, v102, v79);
    (*(v101 + 32))(v67 + v116[9], v76, v77);
    LOBYTE(v114) = 6;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(v80);
    OUTLINED_FUNCTION_33_10();
    v81 = v91;
    v82 = v92;
    OUTLINED_FUNCTION_37_12(v92, v83, v100, v92, v84);
    v85 = OUTLINED_FUNCTION_20_19();
    v86(v85, v100);
    (*(v89 + 32))(v67 + v116[10], v81, v82);
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v67, v90, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
    __swift_destroy_boxed_opaque_existential_1(v109);
    outlined destroy of DisambiguationItemWithDirectInvocationModel();
  }

  OUTLINED_FUNCTION_29_2();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisambiguationItemWithDirectInvocationModel(uint64_t a1)
{
  Hasher.init(_seed:)();
  DisambiguationItemWithDirectInvocationModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ForeignEmergencyCallDisambiguationModel.foreignEmergencyNumberItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 20);

  return outlined init with copy of DisambiguationItemWithDirectInvocationModel?(v3, a1);
}

uint64_t ForeignEmergencyCallDisambiguationModel.prompt.getter()
{
  type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_36_12();
  return OUTLINED_FUNCTION_19_0();
}

uint64_t ForeignEmergencyCallDisambiguationModel.responseViewId.getter()
{
  type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_36_12();
  return OUTLINED_FUNCTION_19_0();
}

uint64_t ForeignEmergencyCallDisambiguationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::Void (__swiftcall *ForeignEmergencyCallDisambiguationModel.responseViewId.modify())(Swift::OpaquePointer newCallGroups)
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for ForeignEmergencyCallDisambiguationModel(v0);
  return INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
}

uint64_t ForeignEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000000045B310 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000000045B330 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000000045B350 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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

unint64_t ForeignEmergencyCallDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ForeignEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ForeignEmergencyCallDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin016ForeignEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin016ForeignEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_15_26();
  v6 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();
  OUTLINED_FUNCTION_23_11(&unk_521100, v7, v6);
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  OUTLINED_FUNCTION_4_27();
  _s10Foundation4UUIDVACSHAAWlTm_1(v8);
  OUTLINED_FUNCTION_7_31();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
    OUTLINED_FUNCTION_7_31();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_43_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_41_11();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_43_12();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_29_2();
}

void ForeignEmergencyCallDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_30_1();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v63 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  __chkstk_darwin(v32 - 8);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v64 = &v62 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin016ForeignEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin016ForeignEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v65 = v38;
  v66 = v37;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v39);
  v41 = &v62 - v40;
  v42 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_4();
  v46 = v45 - v44;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();
  v67 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v47 = v34;
    v62 = v46;
    v48 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
    a16 = 0;
    OUTLINED_FUNCTION_4_27();
    _s10Foundation4UUIDVACSHAAWlTm_1(v49);
    v50 = v64;
    OUTLINED_FUNCTION_47_11(v48, &a16);
    v51 = v50;
    v52 = v62;
    outlined init with take of DisambiguationItemWithDirectInvocationModel?(v51, v62);
    a15 = 1;
    OUTLINED_FUNCTION_47_11(v48, &a15);
    outlined init with take of DisambiguationItemWithDirectInvocationModel?(v47, v52 + v42[5]);
    OUTLINED_FUNCTION_42_9();
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = (v52 + v42[6]);
    *v54 = v53;
    v54[1] = v55;
    OUTLINED_FUNCTION_41_11();
    *(v52 + v42[7]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v58 = v57;
    v59 = (v52 + v42[8]);
    v60 = OUTLINED_FUNCTION_32_11();
    v61(v60);
    *v59 = v56;
    v59[1] = v58;
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v52, v63, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v30);
    outlined destroy of DisambiguationItemWithDirectInvocationModel();
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance ForeignEmergencyCallDisambiguationModel(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t LocalEmergencyCallDisambiguationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 28);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

uint64_t LocalEmergencyCallDisambiguationModel.prompt.getter()
{
  type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t LocalEmergencyCallDisambiguationModel.prompt.setter()
{
  v0 = OUTLINED_FUNCTION_34_7();
  type metadata accessor for LocalEmergencyCallDisambiguationModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*LocalEmergencyCallDisambiguationModel.prompt.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_38(v2);
  type metadata accessor for LocalEmergencyCallDisambiguationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_14_29(v4);
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t LocalEmergencyCallDisambiguationModel.responseViewId.getter()
{
  type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_36_12();
  return OUTLINED_FUNCTION_19_0();
}

uint64_t LocalEmergencyCallDisambiguationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::Void (__swiftcall *LocalEmergencyCallDisambiguationModel.responseViewId.modify())(Swift::OpaquePointer newCallGroups)
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for LocalEmergencyCallDisambiguationModel(v0);
  return INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
}

uint64_t LocalEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000000045B350 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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