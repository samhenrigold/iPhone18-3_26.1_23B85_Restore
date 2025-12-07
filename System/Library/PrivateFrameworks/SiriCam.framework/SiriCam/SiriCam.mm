uint64_t static CaarProvider._caar()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for caarProvider != -1)
  {
    swift_once();
  }

  outlined init with copy of CaarHandler?(static CaarProvider.caarProvider + 16, &v12);
  if (v13)
  {
    outlined init with take of CaarHandler(&v12, v14);
    if (one-time initialization token for kLogger != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, kLogger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266790000, v3, v4, "Found existing Caar Handler, updating it.", v5, 2u);
      MEMORY[0x26D5DDCD0](v5, -1, -1);
    }

    v6 = v15;
    v7 = v16;
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    a1[3] = v6;
    a1[4] = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v12, &_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x800000026681BC20;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t outlined init with copy of CaarHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CaarHandler(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void static CamSingletonProvider.cam(camEnabledFeatures:allowDefaultAskRepeatModel:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.ambiguityHandling);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v10 = 136315394;
    v11 = MEMORY[0x26D5DCE80](a1, &type metadata for CamFeature);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v50);

    *(v10 + 4) = v13;
    v4 = v3;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    _os_log_impl(&dword_266790000, v8, v9, "camEnabledFeatures: %s, allowDefaultAskRepeatModel: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26D5DDCD0](v47, -1, -1);
    OUTLINED_FUNCTION_0_8();
  }

  v14 = qword_28132E398;
  if (qword_28132E398)
  {
    v15 = qword_28132E3A0;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "Found existing CamHandler", v18, 2u);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SiriCam0C7FeatureO_Tt1g5(v14, a1))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_1_8(&dword_266790000, v21, v22, "Trying to update existing CamHandler.");
        OUTLINED_FUNCTION_0_8();
      }

      CamHandler.update()();
      if (v23)
      {
      }

      else
      {
        a3[3] = &type metadata for CamHandler;
        a3[4] = &protocol witness table for CamHandler;
        *a3 = v14;
        a3[1] = v15;
      }

      return;
    }

    v48 = v4;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = 136315394;

      v28 = MEMORY[0x26D5DCE80](v14, &type metadata for CamFeature);
      v46 = a2;
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v50);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = MEMORY[0x26D5DCE80](a1, &type metadata for CamFeature);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);
      a2 = v46;

      *(v26 + 14) = v34;
      _os_log_impl(&dword_266790000, v24, v25, "Feature flags for existing CamHandler %s don't match: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v27, -1, -1);
      OUTLINED_FUNCTION_0_8();
    }

    else
    {
    }

    v4 = v48;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_8(&dword_266790000, v37, v38, "Creating new CamHandler");
    OUTLINED_FUNCTION_0_8();
  }

  if (AFDeviceSupportsFullSiriUOD())
  {
    v39 = AFShouldRunAsrOnServerForUOD() ^ 1;
  }

  else
  {
    v39 = 0;
  }

  v41 = CamHandler.init(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(v40, a2 & 1, v39);
  if (!v4)
  {
    v43 = v41;
    v44 = v42;
    v45 = qword_28132E398;
    qword_28132E398 = v41;
    qword_28132E3A0 = v42;

    outlined consume of CamHandler?(v45);
    a3[3] = &type metadata for CamHandler;
    a3[4] = &protocol witness table for CamHandler;
    *a3 = v43;
    a3[1] = v44;
  }
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_8()
{

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_13()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_0_19()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_0_21@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  *(v5 - 72) = v1;

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SiriCam0C7FeatureO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (v5 == 1)
      {
        v7 = 0x4F5455415F534D53;
      }

      else
      {
        v7 = 0xD000000000000010;
      }

      if (v5 == 1)
      {
        v8 = 0xEC000000444E4553;
      }

      else
      {
        v8 = 0x8000000266819EC0;
      }

      if (*v3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x455045525F4B5341;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xEA00000000005441;
      }

      if (v6 == 1)
      {
        v11 = 0x4F5455415F534D53;
      }

      else
      {
        v11 = 0xD000000000000010;
      }

      if (v6 == 1)
      {
        v12 = 0xEC000000444E4553;
      }

      else
      {
        v12 = 0x8000000266819EC0;
      }

      if (*v4)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x455045525F4B5341;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xEA00000000005441;
      }

      if (v9 == v13 && v10 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return outlined destroy of CamModelMetadata(v0, type metadata accessor for RankedAction);
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_1_4()
{

  JUMPOUT(0x26D5DCD80);
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x26D5DCC90);
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return specialized Dictionary.subscript.getter();
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_1_13()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

id OUTLINED_FUNCTION_1_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return v14;
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_21()
{
}

uint64_t OUTLINED_FUNCTION_1_22()
{
}

uint64_t OUTLINED_FUNCTION_1_28(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CamHandler.update()()
{
  v2 = (v0 + 32);
  v3 = *(v0 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 5;
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v5);
    (*(v6 + 8))(v5, v6);
    v2 = v4;
  }

  while (!v1);
}

uint64_t static AutoConfirmProvider.autoSendProvider(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_22();
  v25 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_22();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.autoSend);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266790000, v17, v18, "In AutoSend provider", v19, 2u);
    MEMORY[0x26D5DDCD0](v19, -1, -1);
  }

  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = partial apply for closure #1 in static AutoConfirmProvider.autoSendProvider(completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D5DD090](0, v15, v10, v21);
  _Block_release(v21);
  (*(v25 + 8))(v10, v6);
  (*(v12 + 8))(v15, v24);
}

uint64_t sub_2667940C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_20()
{
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_4()
{
  v4 = v0 + 16 * v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return specialized Dictionary.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{
  v3 = *(v1 - 128);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void OUTLINED_FUNCTION_20_11()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_20_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in static AutoConfirmProvider.autoSendProvider(completion:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for autoConfirmProvider != -1)
  {
    swift_once();
  }

  v3 = static AutoConfirmProvider.autoConfirmProvider;
  v4 = *(static AutoConfirmProvider.autoConfirmProvider + 2);
  if (v4)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.autoSend);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266790000, v6, v7, "AutoSend handler is nil. Trying to instantiate again in warmup", v8, 2u);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
  }

  type metadata accessor for AutoSendHandler(0);
  swift_allocObject();
  v3[2] = AutoSendHandler.init()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266790000, v9, v10, "Successfully instantiated AutoSendHandler", v11, 2u);
    MEMORY[0x26D5DDCD0](v11, -1, -1);
  }

  v4 = v3[2];
  if (v4)
  {
LABEL_11:

    AutoSendHandler.update()();
    if (v12)
    {
      if (one-time initialization token for autoSend != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.autoSend);
      v14 = v12;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = a2;
        v19 = swift_slowAlloc();
        v35 = v19;
        *v17 = 136315138;
        v20 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v21 = String.init<A>(reflecting:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_266790000, v15, v16, "Autosend handler warmup failed with error: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v24 = v19;
        a2 = v18;
        MEMORY[0x26D5DDCD0](v24, -1, -1);
        MEMORY[0x26D5DDCD0](v17, -1, -1);
      }

      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v35 = 0xD000000000000026;
      v36 = 0x800000026681BDA0;
      v25 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v26 = String.init<A>(reflecting:)();
      MEMORY[0x26D5DCD80](v26);

      v37 = 0;
      v40 = 1;
      a2(&v35);
    }

    else
    {
      if (one-time initialization token for autoSend != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.autoSend);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_266790000, v28, v29, "Successfully warmed up AutoSend handler. Invoking the callback function", v30, 2u);
        MEMORY[0x26D5DDCD0](v30, -1, -1);
      }

      v38 = type metadata accessor for AutoSendHandler(0);
      v39 = &protocol witness table for AutoSendHandler;
      v35 = v4;
      v40 = 0;

      a2(&v35);
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, static Logger.autoSend);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266790000, v31, v32, "Autosend handler warmup failed: cannot warm up nil currentAutoSendHandler", v33, 2u);
      MEMORY[0x26D5DDCD0](v33, -1, -1);
    }

    v35 = 0xD000000000000049;
    v36 = 0x800000026681BD50;
    v37 = 0;
    v40 = 1;
    a2(&v35);
  }

  return outlined destroy of Result<AutoConfirming, AutoConfirmError>(&v35);
}

void OUTLINED_FUNCTION_21()
{

  JUMPOUT(0x26D5DCD80);
}

BOOL OUTLINED_FUNCTION_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_7_0()
{

  JUMPOUT(0x26D5DCD80);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1)
{

  return outlined destroy of (CamLogOutput, CamModelMetadata)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

uint64_t OUTLINED_FUNCTION_7_15()
{
}

BOOL OUTLINED_FUNCTION_7_17()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result)
{
  *(v1 - 72) = result;
  *(v1 - 81) = 2;
  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_10(unint64_t *a1)
{
  v2 = MEMORY[0x277CC97B0];

  return lazy protocol witness table accessor for type Locale and conformance Locale(a1, v2);
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return SiriSignalsContainer.get(from:query:defaultVal:)(a9, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2)
{

  return specialized TrialTieBreakingOverride.check(isFavoured:over:)(a1, a2, v5, v4, v3, v2);
}

BOOL OUTLINED_FUNCTION_4_15()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return _s7SiriCam0B5ParseOWOhTm_3(v0, type metadata accessor for ActionCandidate);
}

uint64_t static EnvironmentUtilities.currentSiriLocale.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v5 = v4;

  if (!v5)
  {
    static Locale.current.getter();
    Locale.identifier.getter();
    (*(v1 + 8))(v3, v0);
  }

  return Locale.init(identifier:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendCoreHandler.update()()
{
  swift_beginAccess();
  AutoSendInputFeatureExtractor.update()();
  swift_endAccess();
  if (!v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 16))(v2, v3);
  }
}

id OUTLINED_FUNCTION_5_1()
{

  return [v0 dataType];
}

id OUTLINED_FUNCTION_5_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t OUTLINED_FUNCTION_5_4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return MEMORY[0x282111940](va, v4, v5);
}

void OUTLINED_FUNCTION_5_8(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_6_0()
{
  v2 = *(v0 + 16) + 1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

void OUTLINED_FUNCTION_5_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_arrayDestroy();
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendInputFeatureExtractor.update()()
{
  v1 = v0;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.autoSend);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Updating AutoSendInputFeatureExtractor", v5, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v6 = *(type metadata accessor for AutoSendInputFeatureExtractor(0) + 36);
  v7 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v6, 1, v7))
  {
    WordEmbeddingFeatureExtractor.update()();
  }
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_3_13()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
}

void OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  outlined consume of AutoConfirmError(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

BOOL OUTLINED_FUNCTION_3_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

void OUTLINED_FUNCTION_3_22(unint64_t a1@<X8>)
{
  *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v6 = (v2[6] + 16 * a1);
  *v6 = v3;
  v6[1] = v4;
  *(v2[7] + 8 * a1) = v1;
  ++v2[2];
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_17_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_17_9(uint64_t a1)
{
  *(v5 - 112) = v3;

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v2, v1);
}

uint64_t OUTLINED_FUNCTION_17_12@<X0>(uint64_t a1@<X8>)
{

  return specialized Dictionary.subscript.getter(0xD000000000000013, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static AssetProvider.fetchModelFromUAF(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v189 = a1;
  v186 = a3;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_11();
  v169 = v6;
  v173 = type metadata accessor for CamModelMetadata(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_11();
  v179 = v9;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_22();
  v183 = v11;
  v184 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v177 = v12;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_11();
  v180 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_5();
  v176 = v17;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  v181 = v163 - v19;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_11();
  v182 = v21;
  v22 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v178 = v26;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_1();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (v163 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v163 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v163 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = (v163 - v38);
  static EnvironmentUtilities.currentSiriLocale.getter();
  v194[0] = Locale.identifier.getter();
  v194[1] = v40;
  v192 = 45;
  v193 = 0xE100000000000000;
  v190 = 95;
  v191 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v41 = v24;

  Locale.init(identifier:)();
  v42 = v24 + 8;
  v43 = *(v24 + 8);
  v43(v37, v22);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v44, static Logger.common);
  v46 = *(v41 + 16);
  v188 = v39;
  v166 = v41 + 16;
  v165 = v46;
  v46(v34, v39, v22);

  v187 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v185 = v22;
  v175 = v31;
  v168 = v41;
  if (v49)
  {
    v31 = v43;
    v50 = v42;
    v51 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, a2, v194);
    *(v51 + 12) = 2080;
    OUTLINED_FUNCTION_4_10(&lazy protocol witness table cache variable for type Locale and conformance Locale);
    dispatch thunk of CustomStringConvertible.description.getter();
    v31(v34, v22);
    v52 = OUTLINED_FUNCTION_10_12();

    *(v51 + 14) = v52;
    _os_log_impl(&dword_266790000, v47, v48, "%s: Trying to fetch model for current siri locale : %s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v42 = v50;
    v43 = v31;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v43(v34, v22);
  }

  v53 = static AssetProvider.uafAssetSet.getter();
  v54 = v188;
  if (!v53)
  {
    v58 = 0;
    v56 = v189;
    goto LABEL_20;
  }

  v55 = v53;
  v56 = v189;
  v57 = MEMORY[0x26D5DCC90](v189, a2);
  v58 = [v55 assetNamed_];

  if (!v58)
  {
LABEL_20:

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = OUTLINED_FUNCTION_11();
      v75 = v56;
      v76 = v74;
      v194[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, a2, v194);
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v82 = v54;
LABEL_24:
    v83 = v185;
    goto LABEL_25;
  }

  v59 = [v58 location];
  if (v59)
  {
    v60 = v59;
    v61 = v181;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v181;
  }

  v63 = v182;
  OUTLINED_FUNCTION_11_10(v61, v62);
  outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v61, v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v63, 1, v31) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
    v54 = v188;
    goto LABEL_20;
  }

  v64 = v63;
  v65 = URL.path.getter();
  v67 = v66;
  v68 = v183 + 8;
  v182 = *(v183 + 8);
  v182(v64, v31);
  v69 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v69 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {

    goto LABEL_19;
  }

  v164 = v58;
  URL.init(fileURLWithPath:isDirectory:)();

  v70 = v176;
  v181 = a2;
  static AssetProvider.defaultModelUrl(for:)(v56, a2, v176);
  OUTLINED_FUNCTION_11_10(v70, 0);
  v88 = v183;
  v89 = v171;
  (*(v183 + 32))(v171, v70, 0);
  v90 = static URL.== infix(_:_:)();
  v91 = v177;
  if (v90)
  {
    v92 = v181;

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v164;
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = OUTLINED_FUNCTION_11();
      v99 = v56;
      v100 = v98;
      v194[0] = v98;
      *v97 = 136315138;
      *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v92, v194);
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v101, v102, v103, v104, v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v106 = v182;
    v182(v171, 0);
    v106(v180, 0);
    v82 = v188;
    goto LABEL_24;
  }

  v171 = v68;
  v182(v89, 0);
  v107 = [v164 metadata];
  v108 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v88 + 16))(v91, v180, 0);
  v109 = v181;

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.info.getter();

  v112 = os_log_type_enabled(v110, v111);
  v163[1] = v42;
  if (v112)
  {
    v113 = OUTLINED_FUNCTION_11();
    v177 = swift_slowAlloc();
    v194[0] = v177;
    *v113 = 136315650;
    *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v109, v194);
    *(v113 + 12) = 2080;
    URL.absoluteString.getter();
    OUTLINED_FUNCTION_6_15();
    v114();
    v115 = OUTLINED_FUNCTION_10_12();

    *(v113 + 14) = v115;
    *(v113 + 22) = 2080;
    v116 = Dictionary.description.getter();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v194);

    *(v113 + 24) = v118;
    v56 = v189;
    _os_log_impl(&dword_266790000, v110, v111, "%s: Model URL from UAF: %s. Model metadata from UAF: %s", v113, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v182(v91, 0);
  }

  v119 = v178;
  v120 = v173;
  type metadata accessor for AssetMetadataProvider();
  v121 = v179;
  static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)(v56, v109, v108, v179);

  v122 = v172;
  outlined init with copy of CamModelMetadata(v121, v172);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v125 = 136315394;
    *(v125 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v109, v194);
    *(v125 + 12) = 2080;
    outlined init with copy of Locale?(v122 + *(v120 + 28), v169);
    v126 = String.init<A>(describing:)();
    v127 = v122;
    v129 = v128;
    outlined destroy of CamModelMetadata(v127);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v129, v194);

    *(v125 + 14) = v130;
    _os_log_impl(&dword_266790000, v123, v124, "%s: Model locale from asset metadata: %s", v125, 0x16u);
    swift_arrayDestroy();
    v121 = v179;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of CamModelMetadata(v122);
  }

  v131 = v185;
  v132 = v175;
  v133 = v174;
  outlined init with copy of Locale?(v121 + *(v120 + 28), v174);
  if (__swift_getEnumTagSinglePayload(v133, 1, v131) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v133, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v136, v137, v138, v139, v140, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_12_14();
    }

    else
    {
      v141 = v134;
      v134 = v164;
    }

    v146 = v180;

    v43(v188, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v143 = OUTLINED_FUNCTION_9_10();
    v145 = v146;
    goto LABEL_44;
  }

  (*(v168 + 32))(v132, v133, v131);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x277CC97A0]);
  v134 = v188;
  v135 = v131;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    OUTLINED_FUNCTION_12_14();

    v43(v132, v131);
    v43(v134, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v143 = OUTLINED_FUNCTION_9_10();
    v145 = v180;
LABEL_44:
    v144(v143, v145, v184);
    outlined init with take of CamModelMetadata(v121, &v132[v135]);
    v85 = v132;
    v86 = 0;
    v84 = v134;
    return __swift_storeEnumTagSinglePayload(v85, v86, 1, v84);
  }

  v147 = v167;
  v148 = v165;
  v165(v167, v134, v131);
  v148(v119, v132, v131);
  v149 = v181;

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = OUTLINED_FUNCTION_11();
    v187 = swift_slowAlloc();
    v194[0] = v187;
    *v152 = 136315650;
    *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v149, v194);
    *(v152 + 12) = 2080;
    OUTLINED_FUNCTION_4_10(&lazy protocol witness table cache variable for type Locale and conformance Locale);
    LODWORD(v189) = v151;
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v155 = v154;
    v43(v147, v131);
    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v194);

    *(v152 + 14) = v156;
    *(v152 + 22) = 2080;
    v157 = v178;
    dispatch thunk of CustomStringConvertible.description.getter();
    v43(v157, v131);
    v158 = OUTLINED_FUNCTION_10_12();

    *(v152 + 24) = v158;
    _os_log_impl(&dword_266790000, v150, v189, "%s: Current Siri Locale %s does not match locale of the model %s delivered by UAF. User possibly switched Siri locale recently. ", v152, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_12_14();

    v43(v175, v131);
    outlined destroy of CamModelMetadata(v179);
    OUTLINED_FUNCTION_6_15();
    v160();
    v43(v134, v131);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_14();

  v43(v178, v131);
  v43(v147, v131);
  v43(v132, v131);
  outlined destroy of CamModelMetadata(v121);
  OUTLINED_FUNCTION_6_15();
  v162();
  v82 = v134;
  v83 = v131;
LABEL_25:
  v43(v82, v83);
LABEL_26:
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v85 = v186;
  v86 = 1;
  return __swift_storeEnumTagSinglePayload(v85, v86, 1, v84);
}

uint64_t type metadata accessor for AutoSendInputFeatureExtractor(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendInputFeatureExtractor;
  if (!type metadata singleton initialization cache for AutoSendInputFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WordEmbeddingFeatureExtractor(uint64_t a1)
{
  result = type metadata singleton initialization cache for WordEmbeddingFeatureExtractor;
  if (!type metadata singleton initialization cache for WordEmbeddingFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 32))(a2, a1);
  return a2;
}

void static AssetProvider.defaultModelUrl(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  static AssetProvider.defaultAssetsUrl()();
  if (!v3)
  {
    URL.appendingPathComponent(_:)();
    v41 = *(v8 + 8);
    v42 = v8 + 8;
    v41(v16, v7);
    if (URL.hasDirectoryPath.getter())
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.common);
      (*(v8 + 16))(v11, a3, v7);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v43);
        *(v20 + 12) = 2080;
        v21 = URL.absoluteString.getter();
        v23 = v22;
        v41(v11, v7);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v43);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_266790000, v18, v19, "%s: Default Model url: %s", v20, 0x16u);
        v25 = v40;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v25, -1, -1);
        MEMORY[0x26D5DDCD0](v20, -1, -1);
      }

      else
      {

        v41(v11, v7);
      }
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.common);
      (*(v8 + 16))(v14, a3, v7);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v29 = 136315650;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v43);
        *(v29 + 12) = 2080;
        *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v43);
        *(v29 + 22) = 2080;
        v30 = URL.absoluteString.getter();
        v32 = v31;
        v33 = v14;
        v34 = v41;
        v41(v33, v7);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

        *(v29 + 24) = v35;
        _os_log_impl(&dword_266790000, v27, v28, "%s: Default Model for %s not found in %s.", v29, 0x20u);
        v36 = v40;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v36, -1, -1);
        MEMORY[0x26D5DDCD0](v29, -1, -1);
      }

      else
      {

        v37 = v14;
        v34 = v41;
        v41(v37, v7);
      }

      lazy protocol witness table accessor for type ModelError and conformance ModelError();
      swift_allocError();
      *v38 = xmmword_266815500;
      *(v38 + 16) = 2;
      swift_willThrow();
      v34(a3, v7);
    }
  }
}

uint64_t static AssetProvider.defaultAssetsUrl()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  type metadata accessor for DummyClassToIdentifyTheCamFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = [v8 resourceURL];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v6, v4, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v6, v0);
  }

  else
  {
    lazy protocol witness table accessor for type ModelError and conformance ModelError();
    swift_allocError();
    *v11 = xmmword_266815500;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }
}

id OUTLINED_FUNCTION_11_0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 (v11 + 2040)];
}

uint64_t OUTLINED_FUNCTION_11_1()
{
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDBA0](a1, a2, v2);
}

void OUTLINED_FUNCTION_11_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_8()
{
  v2 = *(v0 + 16) + 1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 192);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

void OUTLINED_FUNCTION_11_11(uint64_t a1)
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, v3 + 5, v1 | 0x8000000000000000);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendHandler.update()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v62 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v54[-v14];
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v61 = v10;
  v16 = type metadata accessor for Logger();
  v60 = __swift_project_value_buffer(v16, static Logger.autoSend);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_7_5();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266790000, v17, v18, "Updating AutoSendHandler", v21, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  static EnvironmentUtilities.currentSiriLocale.getter();
  v22 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  swift_beginAccess();
  v59 = *(v4 + 16);
  (v59)(v13, v1 + v22, v2);
  OUTLINED_FUNCTION_4_9();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v23, v24, MEMORY[0x277CC97A0]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = v4;
  v64 = *(v4 + 8);
  (v64)(v13, v2);
  if (v25)
  {
    v26 = v64;
  }

  else
  {
    v58 = v1;
    v56 = v22;
    v27 = v61;
    v28 = v59;
    (v59)(v61, v1 + v22, v2);
    v29 = v62;
    v57 = v15;
    (v28)(v62, v15, v2);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65[0] = v60;
      *v34 = 136315394;
      OUTLINED_FUNCTION_4_9();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v35, v36, MEMORY[0x277CC97B0]);
      v59 = v30;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v31;
      v38 = v37;
      v40 = v39;
      v41 = v64;
      (v64)(v27, v2);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v65);
      v26 = v41;

      *(v34 + 4) = v42;
      *(v34 + 12) = 2080;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (v41)(v29, v2);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v65);

      *(v34 + 14) = v46;
      v47 = v59;
      _os_log_impl(&dword_266790000, v59, v55, "Detected locale switch from %s to %s", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v26 = v64;
      (v64)(v29, v2);
      (v26)(v27, v2);
    }

    v48 = v58;
    v49 = v56;
    swift_beginAccess();
    (*(v63 + 24))(v48 + v49, v57, v2);
    swift_endAccess();
    type metadata accessor for AutoSendCoreHandler(0);
    swift_allocObject();
    v50 = v66;
    v51 = AutoSendCoreHandler.init()();
    if (v50)
    {
      v52 = OUTLINED_FUNCTION_10_0();
      v26(v52);
      return;
    }

    *(v48 + 16) = v51;
  }

  AutoSendCoreHandler.update()();
  v53 = OUTLINED_FUNCTION_10_0();
  v26(v53);
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x26D5DCC90);
}

void OUTLINED_FUNCTION_6_6()
{

  _StringGuts.grow(_:)(53);
}

void OUTLINED_FUNCTION_6_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
}

void OUTLINED_FUNCTION_6_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_2667980BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t OUTLINED_FUNCTION_16(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_11()
{

  JUMPOUT(0x26D5DCD80);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CoreMLHandler.update()()
{
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v96 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_17();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v96 - v17;
  v105 = v16;
  v19 = *(v16 + 48);
  v21 = *(v0 + 16);
  v20 = *(v0 + 24);

  v22 = v21;
  v23 = v106;
  static AssetProvider.fetchModel(_:)(v18, &v18[v19], v22, v20);

  if (!v23)
  {
    v99 = v1;
    v100 = v2;
    v103 = v8;
    v104 = v4;
    v101 = v14;
    v106 = 0;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v18, v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v24 = (v3 + *(v105 + 48));
    v25 = v24[2];
    v26 = v24[3];
    v27 = v24[4];
    v28 = v24[5];
    v29 = OUTLINED_FUNCTION_13_15();
    outlined copy of CamModelVersion?(v29, v30, v31, v32);
    outlined destroy of CamModelMetadata(v24);
    v33 = type metadata accessor for URL();
    v98 = *(v33 - 1);
    v34 = (v98 + 8);
    v35 = OUTLINED_FUNCTION_25_9();
    v102 = v36;
    (v36)(v35);
    if (v28 == 1)
    {
      v37 = v104;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.common);

      v39 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_34_1();

      v40 = OUTLINED_FUNCTION_33_2();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_23();
        v43 = OUTLINED_FUNCTION_11();
        v107[0] = v43;
        *v42 = 136315138;
        v44 = *(v37 + 16);
        v45 = *(v37 + 24);

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v107);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_266790000, v39, v27, "%s: UAF didn't provide model version to check if it's a newer model. Skipping update", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v47 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
      v48 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
      v49 = v18;
LABEL_8:
      outlined destroy of (CamLogOutput, CamModelMetadata)(v49, v47, v48);
      return;
    }

    v96 = v34;
    v97 = v33;
    v50 = v104;
    v51 = (v104 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
    swift_beginAccess();
    v52 = v51[5];
    if (v52 == 1)
    {
      v53 = OUTLINED_FUNCTION_13_15();
      v27 = v54;
      outlined consume of CamModelVersion?(v53, v55, v56, v57);
      v58 = OUTLINED_FUNCTION_41_0();
      outlined consume of CamModelVersion?(v58, v59, v27, 1);
    }

    else
    {
      v60 = static CamModelVersion.== infix(_:_:)(v25, v26, v27, v28, v51[2], v51[3], v51[4], v52);
      v61 = OUTLINED_FUNCTION_13_15();
      outlined consume of CamModelVersion?(v61, v62, v63, v64);
      if (v60)
      {
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, static Logger.common);
        v66 = v101;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v18, v101, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

        v67 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_34_1();

        v68 = OUTLINED_FUNCTION_33_2();
        v70 = os_log_type_enabled(v68, v69);
        v72 = v99;
        v71 = v100;
        if (v70)
        {
          OUTLINED_FUNCTION_11_14();
          v73 = swift_slowAlloc();
          OUTLINED_FUNCTION_10_17();
          v103 = swift_slowAlloc();
          v108 = v103;
          *v73 = 136315394;
          LODWORD(v102) = v27;
          v75 = *(v50 + 16);
          v74 = *(v50 + 24);

          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v108);

          *(v73 + 4) = v76;
          OUTLINED_FUNCTION_24_4();
          outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v66, v72, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v77 = *(v105 + 48);
          (*(v98 + 32))(v71, v72, v97);
          outlined init with take of CamModelMetadata(v72 + v77, v71 + v77);
          OUTLINED_FUNCTION_69_0();
          v78 = String.init<A>(describing:)();
          v80 = v79;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v66, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v108);

          *(v73 + 14) = v81;
          OUTLINED_FUNCTION_37_1(&dword_266790000, v67, v102, "%s: Not updating the model %s as it has not changed", v96, v97);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          v49 = v18;
          v47 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
          v48 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
        }

        else
        {

          OUTLINED_FUNCTION_14_17();
          outlined destroy of (CamLogOutput, CamModelMetadata)(v93, v94, v95);
          OUTLINED_FUNCTION_14_17();
        }

        goto LABEL_8;
      }
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.common);

    v83 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    OUTLINED_FUNCTION_34_1();

    v84 = OUTLINED_FUNCTION_33_2();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_23();
      v87 = OUTLINED_FUNCTION_11();
      v108 = v87;
      *v86 = 136315138;
      v88 = *(v50 + 16);
      v89 = *(v50 + 24);

      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v108);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_266790000, v83, v27, "%s: Found a different model than current. Trying provisional model", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v91 = v103;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v18, v103, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v92 = *(v105 + 48);
    CoreMLHandler.loadModel(from:)(v91, v91 + v92);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v18, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined destroy of CamModelMetadata(v91 + v92);
    v102(v91, v97);
  }
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_slowAlloc();
}

uint64_t static AssetProvider.fetchModel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  OUTLINED_FUNCTION_0_2();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  static AssetProvider.fetchModelFromUAF(_:)(a3, a4, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.common);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266790000, v19, v20, "Falling back to default model", v21, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return static AssetProvider.defaultModel(for:)(a1, a2, a3, a4);
  }

  else
  {
    outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v10, v17, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v17, v15, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v23 = *(v11 + 48);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_0_2();
    (*(v24 + 32))(a1, v15);
    return outlined init with take of CamModelMetadata(&v15[v23], a2);
  }
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x26D5DDCD0);
}

unint64_t OUTLINED_FUNCTION_10_12()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 104));
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1)
{

  return SiriSignalsContainer.get(from:query:defaultVal:)(a1, v2, v1, 0);
}

uint64_t type metadata accessor for CamModelMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for CamModelMetadata;
  if (!type metadata singleton initialization cache for CamModelMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *static AssetProvider.uafAssetSet.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-v5];
  static EnvironmentUtilities.currentSiriLocale.getter();
  v24 = Locale.identifier.getter();
  v25 = v7;
  v22 = 45;
  v23 = 0xE100000000000000;
  v26 = 95;
  v27 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Locale.init(identifier:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  if (one-time initialization token for savedLocale != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, static AssetProvider.savedLocale);
  swift_beginAccess();
  (*(v1 + 16))(v4, v9, v0);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x277CC97A0]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8(v4, v0);
  if ((v10 & 1) == 0 || (v11 = static AssetProvider.savedUafAssetSet) == 0)
  {
    swift_beginAccess();
    (*(v1 + 24))(v9, v6, v0);
    swift_endAccess();
    v12 = [objc_opt_self() sharedManager];
    v13 = MEMORY[0x26D5DCC90](0xD00000000000001CLL, 0x800000026681B420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, _ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    strcpy((inited + 32), "cam.language");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = Locale.identifier.getter();
    *(inited + 56) = v15;
    v16 = Dictionary.init(dictionaryLiteral:)();
    v17 = outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(v13, v16, v12);

    v18 = static AssetProvider.savedUafAssetSet;
    static AssetProvider.savedUafAssetSet = v17;

    v11 = static AssetProvider.savedUafAssetSet;
  }

  v19 = v11;
  v8(v6, v0);
  return v11;
}

uint64_t static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  if (*(a3 + 16))
  {
    value = static AssetMetadataProvider.getShadowLogField(for:using:)(a1, a2, a3).value;
    static AssetMetadataProvider.getLocale(from:)(a3, v10);
    v12 = static AssetMetadataProvider.getModelVersion(for:using:)(a1, a2, a3);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = a4 + *(type metadata accessor for CamModelMetadata(0) + 28);
    v20 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v12;
    *(a4 + 24) = v14;
    *(a4 + 32) = v16;
    *(a4 + 40) = v18;
    *(a4 + 48) = value;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.common);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
      _os_log_impl(&dword_266790000, v22, v23, "%s: Model metadata is empty. Setting modelname alone", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D5DDCD0](v25, -1, -1);
      MEMORY[0x26D5DDCD0](v24, -1, -1);
    }

    v26 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v26);
    v19 = a4 + *(type metadata accessor for CamModelMetadata(0) + 28);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
    *(a4 + 48) = 2;
  }

  return outlined assign with take of Locale?(v10, v19);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_82();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

Swift::Bool_optional static AssetMetadataProvider.getShadowLogField(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0x6F4C776F64616873, 0xE900000000000067), (v5 & 1) != 0))
  {
  }

  else
  {
    if (one-time initialization token for defaultModelMetadata != -1)
    {
      swift_once();
    }

    v6 = static AssetMetadataProvider.defaultModelMetadata;
    if (!*(static AssetMetadataProvider.defaultModelMetadata + 16))
    {
      return 2;
    }

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v8 & 1) == 0)
    {
      return 2;
    }

    v9 = *(*(v6 + 56) + 8 * v7);

    specialized Dictionary.subscript.getter(0x6F4C776F64616873, 0xE900000000000067, v9);
    v11 = v10;

    if (!v11)
    {
      return 2;
    }
  }

  v12 = String.lowercased()();

  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  return Bool.init(_:)(*&countAndFlagsBits);
}

BOOL OUTLINED_FUNCTION_76()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t static AssetMetadataProvider.getLocale(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized Dictionary.subscript.getter(0x656C61636F6CLL, 0xE600000000000000, a1);
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      Locale.init(identifier:)();
      v17[4] = Locale.identifier.getter();
      v17[5] = v11;
      v17[2] = 45;
      v17[3] = 0xE100000000000000;
      v17[0] = 95;
      v17[1] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      Locale.init(identifier:)();
      (*(v5 + 8))(v7, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.common);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266790000, v14, v15, "Locale not present in asset metadata", v16, 2u);
    MEMORY[0x26D5DDCD0](v16, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t static AssetMetadataProvider.getModelVersion(for:using:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(0x6E6F6973726576, 0xE700000000000000, a3);
  if (v5)
  {

    CamModelVersion.init(_:)();
    v15 = v14;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.common);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
      *(v9 + 12) = 2080;
      v11 = Dictionary.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_266790000, v7, v8, "%s: Version information not present in UAF asset metadata : %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v10, -1, -1);
      MEMORY[0x26D5DDCD0](v9, -1, -1);
    }

    return 0;
  }

  return v15;
}

void CamModelVersion.init(_:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x800000026681ABD0;
    *(v9 + 16) = 0;
    swift_willThrow();
    goto LABEL_92;
  }

  v4 = v0;
  v47 = v0;
  v48 = v1;
  v45 = 45;
  v46 = 0xE100000000000000;
  MEMORY[0x28223BE20](v0);
  v42[2] = &v45;

  v5 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v42, v4, v2);
  if (v6)
  {
    v7 = v2;
    v8 = v4;
  }

  else
  {
    if (4 * v3 < v5 >> 14)
    {
      __break(1u);
      goto LABEL_87;
    }

    v10 = String.subscript.getter();
    MEMORY[0x26D5DCD30](v10);

    String.removeSubrange(_:)();
    v8 = v47;
    v7 = v48;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v45 = 0x206E6F6973726556;
  v46 = 0xE800000000000000;
  MEMORY[0x26D5DCD80](v4, v2);

  MEMORY[0x26D5DCD80](0x61766E6920736920, 0xEB0000000064696CLL);
  v4 = v45;
  v2 = v46;
  v45 = v8;
  v46 = v7;
  v43 = 46;
  v44 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.components<A>(separatedBy:)();

  if (v11[2] != 3)
  {

    v24 = 1;
LABEL_91:
    lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError();
    swift_allocError();
    *v41 = v4;
    *(v41 + 8) = v2;
    *(v41 + 16) = v24;
    swift_willThrow();

    goto LABEL_92;
  }

  v12 = v11[4];
  v13 = v11[5];
  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_87:

    v24 = 2;
    goto LABEL_91;
  }

  v49 = v4;
  if ((v13 & 0x1000000000000000) != 0)
  {

    v40 = specialized _parseInteger<A, B>(ascii:radix:)(v12, v13, 10);

    if ((v40 & 0x100000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_89:

LABEL_90:
    v24 = 2;
    v4 = v49;
    goto LABEL_91;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v45 = v11[4];
    v46 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_12_5();
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || __CFADD__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v12 != 45)
      {
        if (v14)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || __CFADD__(v35, v34))
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_12_5();
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || v26 < v25)
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
    }

    __break(1u);
    return;
  }

  if ((v12 & 0x1000000000000000) == 0)
  {
    goto LABEL_94;
  }

  for (i = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = _StringObject.sharedUTF8.getter())
  {
    v18 = *i;
    if (v18 == 43)
    {
      if (v15 < 1)
      {
        goto LABEL_98;
      }

      if (v15 != 1)
      {
        if (!i)
        {
          goto LABEL_70;
        }

        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_10_4();
          if (!v20 || __CFADD__(v28, v27))
          {
            break;
          }

          OUTLINED_FUNCTION_9_5();
          if (v20)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v18 == 45)
    {
      if (v15 < 1)
      {
        goto LABEL_96;
      }

      if (v15 != 1)
      {
        if (!i)
        {
          goto LABEL_70;
        }

        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_10_4();
          if (!v20 || v22 < v21)
          {
            break;
          }

          OUTLINED_FUNCTION_9_5();
          if (v20)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v15)
    {
      v31 = 0;
      if (!i)
      {
LABEL_70:
        v23 = 0;
        goto LABEL_80;
      }

      while (1)
      {
        v32 = *i - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v31;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v31 = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++i;
        if (!--v15)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_79:
    v23 = 1;
LABEL_80:
    LOBYTE(v43) = v23;
    if (v23)
    {
      goto LABEL_89;
    }

LABEL_81:
    if (v11[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_94:
    ;
  }

  v36 = v11[6];
  v37 = v11[7];

  if ((_ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v36, v37) & 0x100000000) != 0)
  {
    goto LABEL_89;
  }

  if (v11[2] < 3uLL)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v38 = v11[8];
  v39 = v11[9];

  if ((_ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v38, v39) & 0x100000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_92:
  OUTLINED_FUNCTION_15_3();
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

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t OUTLINED_FUNCTION_9_0()
{
}

void OUTLINED_FUNCTION_2_4()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_9_3()
{

  JUMPOUT(0x26D5DCD80);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return outlined destroy of ActionCandidate();
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{

  return SiriSignalsContainer.get(from:query:defaultVal:)(a1, v2, v1, 0);
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x26D5DCD80);
}

uint64_t OUTLINED_FUNCTION_2_6(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void a6, void a7, void a8, uint64_t a3, uint64_t a4, char a5)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return _s7SiriCam12RankedActionVWOhTm_0(v0, type metadata accessor for TopTwo);
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, ...)
{

  return StringProtocol.contains<A>(_:)();
}

unint64_t OUTLINED_FUNCTION_2_14()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48);
}

void OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  _s7SiriCam34WordEmbeddingFeatureExtractorErrorOWOe_0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_2_19()
{
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_26(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t _s7SiriCam34WordEmbeddingFeatureExtractorErrorOWOe_0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_6(uint64_t a1@<X8>)
{

  specialized MutableCollection<>.sort(by:)(a1 + 16, specialized _ArrayBuffer._consumeAndCreateNew());
}

BOOL OUTLINED_FUNCTION_8_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v16 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__CFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v10 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (v10 < v9)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v24 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__CFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v13 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (v13 < v12)
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__CFADD__(v19, v18))
        {
          break;
        }

        ++v17;
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

uint64_t outlined assign with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CamModelVersion(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for CamModelVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CamModelMetadata(uint64_t a1)
{
  v2 = type metadata accessor for CamModelMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2();
  v5 = OUTLINED_FUNCTION_8_0();
  v6(v5);
  return a2;
}

BOOL OUTLINED_FUNCTION_24()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_13_9(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(v0, 0);
}

uint64_t outlined copy of CamModelVersion?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of CamModelVersion?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t static CamModelVersion.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  result = (a4 | a8) == 0;
  if (a4 && a8)
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      return OUTLINED_FUNCTION_6_7(a3, a4, a7, a8);
    }
  }

  return result;
}

id OUTLINED_FUNCTION_33(void *a1)
{

  return [a1 (v1 + 376)];
}

uint64_t OUTLINED_FUNCTION_33_0()
{
}

BOOL OUTLINED_FUNCTION_34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_8(uint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_12_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t OUTLINED_FUNCTION_12_11()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48);
}

void OUTLINED_FUNCTION_12_18()
{

  JUMPOUT(0x26D5DCC90);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t outlined destroy of (CamLogOutput, CamModelMetadata)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for AutoSendHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendHandler;
  if (!type metadata singleton initialization cache for AutoSendHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Result<AutoConfirming, AutoConfirmError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7SiriCam14AutoConfirming_pAC0D12ConfirmErrorOGMd, &_ss6ResultOy7SiriCam14AutoConfirming_pAC0D12ConfirmErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26679B818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AutoSendInputFeatureExtractor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26679B8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AutoSendInputFeatureExtractor(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26679B96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26679B9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26679BA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26679BAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26679BB54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ResponseMode();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26679BBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ResponseMode();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679BE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679BF6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679C068(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_10();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_1_10();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      v8 = type metadata accessor for CamRequestContext(0);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[6] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26679C184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_10();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_1_10();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = type metadata accessor for CamRequestContext(0);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26679C2EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for RankedAction(0);
    v11 = &a1[*(a3 + 32)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679C374(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RankedAction(0);
    v8 = &v5[*(a4 + 32)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679C3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_26679C4B0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26679C568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26679C5A4()
{

  OUTLINED_FUNCTION_29_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26679C5D8()
{
  v1 = type metadata accessor for CamModelMetadata(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 40) != 1)
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for Locale();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

char *_sSp14moveInitialize4from5countySpyxG_SitF7SiriCam31UncertaintyPromptActionEnforcer_p_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

unint64_t _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RankedAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueSSvg_0(char a1)
{
  result = 0x646E6148776F6C66;
  switch(a1)
  {
    case 1:
      result = 0x6174614472657375;
      break;
    case 2:
      result = 0x6573726170;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26679C85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26679C928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26679CA48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for RankedAction(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26679CA8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for RankedAction(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26679CAD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679CB68(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679CC2C()
{
  v1 = type metadata accessor for CamInput(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v8(v0 + v3 + v1[5], v6);

  v9 = v1[7];
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26679CDB4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for RankedAction(0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679CE3C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RankedAction(0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CamUSOParse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C646E7542707061;
      break;
    case 3:
      result = 0x646E4970756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOs0F3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = CamParse.PommesResponseCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

unint64_t _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesResponse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6E6F437972657571;
  }

  return 0xD000000000000012;
}

uint64_t sub_26679D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_1_10();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_1_10();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_26679D348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_1_10();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_1_10();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26679D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26679D5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26679D674()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_48();
  v7 = type metadata accessor for RankerContext(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_26679D77C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RankerContext(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D56C88]) init];
  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D56C78]) init];
    v9 = v8;
    if ((a1 & 0x100000000) != 0)
    {
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v13 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v13, static Logger.common);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266790000, v14, v15, "CAM action for logging is nil", v16, 2u);
        OUTLINED_FUNCTION_3_1();
      }

      if (a4)
      {
LABEL_4:
        if (v9)
        {
          v10 = v9;
          v11 = OUTLINED_FUNCTION_42_1();
          v12 = MEMORY[0x26D5DCC90](v11);
          [v10 setEnforcer_];

LABEL_12:
          [v9 setResponseStatusCode_];
        }

LABEL_13:
        [v7 setResponse_];

        return v7;
      }
    }

    else
    {
      [v8 setAction_];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  return v7;
}

uint64_t sub_26679DD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_26679DDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679DE80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679DEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679DF40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679E028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26679E108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26679E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26679E2B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26679E378()
{
  v1 = (type metadata accessor for AutoSendInput(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v7(v0 + v3 + v1[10], v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26679E4AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679E4E4()
{
  v1 = type metadata accessor for CamModelMetadata(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 40) != 1)
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for Locale();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

uint64_t one-time initialization function for defaultModelMetadata()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x8000000266819F10;
  *(inited + 48) = OUTLINED_FUNCTION_0(&outlined read-only object #0 of one-time initialization function for defaultModelMetadata);
  *(inited + 56) = 0xD000000000000029;
  *(inited + 64) = 0x8000000266819F40;
  *(inited + 72) = OUTLINED_FUNCTION_0(&outlined read-only object #1 of one-time initialization function for defaultModelMetadata);
  *(inited + 80) = 0xD000000000000031;
  *(inited + 88) = 0x8000000266819F70;
  *(inited + 96) = OUTLINED_FUNCTION_0(&outlined read-only object #2 of one-time initialization function for defaultModelMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static AssetMetadataProvider.defaultModelMetadata = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MLMultiArrayDataType(uint64_t a2@<X8>)
{
  MLMultiArrayDataType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for RepetitionType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CamInputFeatureExtractor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CamInputFeatureExtractor(uint64_t result, int a2, int a3)
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

void *static CamInputFeatureExtractor.extractedFeatures.getter()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

id CamInputFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.ambiguityHandling);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266790000, v6, v7, "Extracting CAM features", v8, 2u);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
  }

  type metadata accessor for MLMultiArray();
  v31 = Dictionary.init(dictionaryLiteral:)();
  v9 = specialized FeatureExtracting.extract(from:)(a2);
  if (v2)
  {
  }

  OUTLINED_FUNCTION_0_0(v9);
  v11 = *(a1 + *(type metadata accessor for CamInput(0) + 32));
  if (v11)
  {
    v12 = v11;
    v13 = [v12 recognition];
    if (v13)
    {
      v14 = v13;
      v15 = [v12 audioAnalytics];
      if (v15)
      {
        v16 = v15;
        v17 = specialized FeatureExtracting.extract(from:)();
        OUTLINED_FUNCTION_0_0(v17);
        result = [v14 aceRecognition];
        if (result)
        {
          v26 = result;
          v29 = specialized FeatureExtracting.extract(from:)();

          OUTLINED_FUNCTION_0_0(v29);
          result = [v14 aceRecognition];
          if (result)
          {
            v27 = result;

            v28 = specialized FeatureExtracting.extract(from:)(v27);

            OUTLINED_FUNCTION_0_0(v28);

            goto LABEL_16;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v12;
    }
  }

LABEL_16:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315138;
    swift_beginAccess();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v30);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_266790000, v18, v19, "Extracted CAM features: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D5DDCD0](v21, -1, -1);
    MEMORY[0x26D5DDCD0](v20, -1, -1);
  }

  swift_beginAccess();
  return v31;
}

unint64_t type metadata accessor for MLMultiArray()
{
  result = lazy cache variable for type metadata for MLMultiArray;
  if (!lazy cache variable for type metadata for MLMultiArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLMultiArray);
  }

  return result;
}

uint64_t LatticePathFeatureExtractor.getLatticePathFeatures(from:)(void *a1)
{
  v6 = v1;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  v75 = Dictionary.init(dictionaryLiteral:)();
  v72 = outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1);
  if (!v72)
  {
    goto LABEL_40;
  }

  v71 = outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a1, &selRef_phrases, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
  if (!v71)
  {

LABEL_40:

    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.common);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_266790000, v43, v44, "LatticePathFeature Extractor failed due to empty SASRecognition", v45, 2u);
      MEMORY[0x26D5DDCD0](v45, -1, -1);
    }

    v46 = lazy protocol witness table accessor for type CamError and conformance CamError();
    v47 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v46);
    *v48 = 0xD000000000000014;
    v48[1] = 0x800000026681A0A0;
    return OUTLINED_FUNCTION_2(v47, v48);
  }

  v8 = v72;
  v9 = specialized Array.count.getter();
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v69 = a1;
  v70 = -v9;
  v5 = MEMORY[0x277D84F90];
  v2 = 4;
  v74 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v12 = v72;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v70 + v2 == 4)
    {

      v50 = static MLMultiArray.make1DSetOrSequence(from:)(v5);
      if (!v6)
      {
        v51 = v50;
        v16 = 0;
        v52 = static MLMultiArray.make1DSetOrSequence(from:)(v8);

        v53 = static MLMultiArray.make1DSetOrSequence(from:)(v74);

        v54 = static MLMultiArray.make1DSetOrSequence(from:)(v10);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
        *(swift_initStackObject() + 16) = xmmword_266813E50;
        OUTLINED_FUNCTION_3_3();
        *(v55 + 32) = 0xD00000000000002CLL;
        *(v55 + 40) = v56;
        OUTLINED_FUNCTION_3_3();
        v57[6] = v53;
        v57[7] = v58;
        v57[8] = v59;
        v57[9] = v52;
        OUTLINED_FUNCTION_3_3();
        *(v61 + 80) = v60 | 1;
        *(v61 + 88) = v62;
        OUTLINED_FUNCTION_3_3();
        v63[12] = v51;
        v63[13] = v64;
        v63[14] = v65;
        v63[15] = v54;
        v3 = v53;
        v2 = v52;
        v5 = v51;
        v8 = v54;
        v66 = Dictionary.init(dictionaryLiteral:)();
        specialized Dictionary.update(other:allowDuplicateKeys:)(v66, 0);
        goto LABEL_54;
      }

LABEL_49:
    }

    v73 = v8;
    v8 = v10;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v13 = v5;
    if ((v72 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D5DD230](v2 - 4, v12);
    }

    else
    {
      v14 = *(v12 + 8 * v2);
    }

    v3 = v14;
    LatticePathFeatureExtractor.getTokenConfidences(from:for:)(v71, v14);
    if (v6)
    {

      goto LABEL_49;
    }

    v5 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v32;
    }

    v16 = *(v11 + 16);
    OUTLINED_FUNCTION_7();
    if (v18)
    {
      OUTLINED_FUNCTION_1_0(v17);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v33;
    }

    *(v11 + 16) = v12;
    *(v11 + 8 * v16 + 32) = v5;
    if (v2 - 4 > v16)
    {
      break;
    }

    v19 = specialized Sequence<>.max()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v19);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v5 = v13;
      v20 = v74;
    }

    else
    {
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v34;
      v5 = v13;
    }

    v16 = *(v20 + 16);
    OUTLINED_FUNCTION_7();
    v10 = v8;
    if (v18)
    {
      OUTLINED_FUNCTION_1_0(v22);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v35;
    }

    v8 = v73;
    *(v21 + 16) = v12;
    OUTLINED_FUNCTION_4_0(v21 + 8 * v16);
    if (v18)
    {
      goto LABEL_51;
    }

    v74 = v23;
    v24 = COERCE_DOUBLE(specialized Sequence<>.min()(*(v11 + 8 * v2)));
    if (v25)
    {
      v26 = 1000.0;
    }

    else
    {
      v26 = v24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v36;
    }

    v16 = v8[2];
    OUTLINED_FUNCTION_7();
    if (v18)
    {
      OUTLINED_FUNCTION_1_0(v27);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v37;
    }

    v8[2] = v12;
    OUTLINED_FUNCTION_4_0(&v8[v16]);
    if (v18)
    {
      goto LABEL_52;
    }

    v28 = specialized Array<A>.avg()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = v38;
    }

    v16 = v5[2];
    OUTLINED_FUNCTION_7();
    if (v18)
    {
      OUTLINED_FUNCTION_1_0(v29);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = v39;
    }

    v5[2] = v12;
    OUTLINED_FUNCTION_4_0(&v5[v16]);
    if (v18)
    {
      goto LABEL_53;
    }

    v30 = specialized Array<A>.variance()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v40;
    }

    v6 = 0;
    v31 = *(v10 + 16);
    if (v31 >= *(v10 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v41;
    }

    *(v10 + 16) = v31 + 1;
    *(v10 + 8 * v31 + 32) = v26;
    ++v2;
    v12 = v72;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  LatticePathFeatureExtractor.getTopLatticePathScoresFeatures(tokenConfidences:meanConfidences:)(v11);
  if (v16)
  {
    OUTLINED_FUNCTION_9_0();

    goto LABEL_49;
  }

  v68 = v67;

  specialized Dictionary.update(other:allowDuplicateKeys:)(v68, 0);

  v9 = LatticePathFeatureExtractor.getTopLatticePathLeadingSilenceFeature(recognition:)(v69);
  v4 = 0;
LABEL_58:
  specialized Dictionary.update(other:allowDuplicateKeys:)(v9, 0);
  if (v4)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {

    return v75;
  }
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Array<A>.avg()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    *&result = v3 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t specialized Array<A>.variance()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    v4 = 0.0;
    do
    {
      v5 = v3[v2++];
      v4 = v4 + v5;
    }

    while (v1 != v2);
    v6 = v4 / v1;
    v7 = 0.0;
    v8 = *(a1 + 16);
    do
    {
      v9 = *v3++;
      v7 = v7 + (v6 - v9) * (v6 - v9);
      --v8;
    }

    while (v8);
    *&result = v7 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void LatticePathFeatureExtractor.getTopLatticePathScoresFeatures(tokenConfidences:meanConfidences:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
    v3 = *(v2 + 16);

    v4 = static MLMultiArray.makeScalar(from:)(v3);
    if (v1)
    {
    }

    else
    {
      v8 = v4;
      v9 = static MLMultiArray.make1DSetOrSequence(from:)(v2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
      *(swift_initStackObject() + 16) = xmmword_266813E60;
      OUTLINED_FUNCTION_3_3();
      v10[4] = 0xD00000000000002BLL;
      v10[5] = v11;
      v10[6] = v8;
      v10[7] = 0xD00000000000002CLL;
      v10[8] = 0x8000000266818E70;
      v10[9] = v9;
      Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    v5 = lazy protocol witness table accessor for type CamError and conformance CamError();
    v6 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v5);
    *v7 = 0xD000000000000014;
    v7[1] = 0x800000026681A080;
    OUTLINED_FUNCTION_2(v6, v7);
  }
}

void LatticePathFeatureExtractor.getTokenConfidences(from:for:)(uint64_t a1, void *a2)
{
  if (outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a2, &selRef_interpretationIndices, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0))
  {

    v2 = specialized Zip2Sequence.Iterator.next()();
    if (v2)
    {
      v4 = v2;
      v5 = v3;
      static Int._conditionallyBridgeFromObjectiveC(_:result:)();

      v6 = lazy protocol witness table accessor for type CamError and conformance CamError();
      v7 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v6);
      *v8 = 0xD000000000000022;
      v8[1] = 0x800000026681A020;
      OUTLINED_FUNCTION_2(v7, v8);
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

uint64_t LatticePathFeatureExtractor.getTopLatticePathLeadingSilenceFeature(recognition:)(void *a1)
{
  result = outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a1, &selRef_phrases, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
  if (!result)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = result;
  if (!specialized Array.count.getter())
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D5DD230](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v6, &selRef_interpretations, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7;
  result = outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1);
  if (!result)
  {
    goto LABEL_38;
  }

  v9 = result;
  if (!specialized Array.count.getter())
  {
LABEL_24:

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D5DD230](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  result = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v11, &selRef_interpretationIndices, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = result;
  if (!specialized Array.count.getter())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26D5DD230](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = Int.init(truncating:)();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x26D5DD230](v15, v8);
  }

  else
  {
    v16 = *(v8 + 8 * v15 + 32);
  }

  result = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v16, &selRef_tokens, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
  if (result)
  {
    v17 = result;

    if (specialized Array.count.getter())
    {
      OUTLINED_FUNCTION_8_1();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5DD230](0, v17);
      }

      else
      {
        v18 = *(v17 + 32);
      }

      v19 = v18;

      v20 = [v19 startTime];

      if (v20)
      {
        v21 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
        v22 = MEMORY[0x26D5DCF40](v20);
        v23 = static MLMultiArray.makeScalar(from:)(v22);
        if (v1)
        {
        }

        else
        {
          v27 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
          *(swift_initStackObject() + 16) = xmmword_266813E60;
          OUTLINED_FUNCTION_3_3();
          v28[4] = 0xD00000000000002CLL;
          v28[5] = v29;
          v28[6] = v27;
          v28[7] = 0xD00000000000001BLL;
          v28[8] = 0x8000000266818E20;
          v28[9] = v27;
          v30 = v27;
          v21 = Dictionary.init(dictionaryLiteral:)();
        }

        return v21;
      }

LABEL_28:
      v21 = 0x8000000266819FE0;
      v24 = lazy protocol witness table accessor for type CamError and conformance CamError();
      v25 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v24);
      *v26 = 0xD000000000000038;
      v26[1] = 0x8000000266819FE0;
      OUTLINED_FUNCTION_2(v25, v26);
      return v21;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  type metadata accessor for MLMultiArray(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for MLMultiArray(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

unint64_t lazy protocol witness table accessor for type CamError and conformance CamError()
{
  result = lazy protocol witness table cache variable for type CamError and conformance CamError;
  if (!lazy protocol witness table cache variable for type CamError and conformance CamError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamError and conformance CamError);
  }

  return result;
}

uint64_t type metadata accessor for MLMultiArray(uint64_t a1, unint64_t *a2, void *a3)
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

id static CamModelLogger.map(from:)(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for CamModelMetadata(0);
  OUTLINED_FUNCTION_0_2();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v39 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  *(&v39 - v18) = a1;
  outlined init with copy of CamModelMetadata(a2, &v39 + *(v14 + 56) - v18);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v19, v17, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v20 = *v17;
  outlined init with take of CamModelMetadata(v17 + *(v14 + 56), v12);
  v21 = one-time initialization token for common;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.common);
  outlined init with copy of CamModelMetadata(v12, v10);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136315138;
    outlined init with copy of CamModelMetadata(v10, v7);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    outlined destroy of CamModelMetadata(v10);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_266790000, v23, v24, "Model metadata used for logging: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26D5DDCD0](v26, -1, -1);
    MEMORY[0x26D5DDCD0](v25, -1, -1);
  }

  else
  {

    outlined destroy of CamModelMetadata(v10);
  }

  v31 = objc_allocWithZone(MEMORY[0x277D56C58]);
  v32 = [v31 init];
  if (!v32)
  {

LABEL_13:
    outlined destroy of CamModelMetadata(v12);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v19, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
    return v32;
  }

  v33 = _s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA0bC6LoggerV_Tt1g5Tm(v12, 0xD000000000000013, 0x800000026681A0C0);
  result = [v32 setAsset_];
  v35 = *(v20 + 16);
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v35))
  {
    [v32 setPrediction_];
    v36 = *(v20 + 24);
    *&v36 = v36;
    [v32 setPredictionScore_];
    v37 = *(v20 + 32);
    *&v37 = v37;
    [v32 setPredictionThreshold_];
    v38 = *(v12 + 48);
    if (v38 != 2)
    {
      [v32 setIsShadowLog_];
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA0bC6LoggerV_Tt1g5Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D5A7A0]) init];
  v14 = v13;
  if (v13)
  {
    v35 = v12;
    v15 = v10;
    v16 = *a1;
    v17 = a1[1];
    v18 = v13;
    v19 = MEMORY[0x26D5DCC90](v16, v17);
    [v18 setAssetName_];

    v20 = v18;
    v21 = _s7SiriCam20ModelLoggingProtocolPAAE08generateC7Version5usingSo08SISchemaG0CSgAA0bC8MetadataV_tFZAA0bC6LoggerV_Tt0g5Tm(a1);
    [v20 setAssetVersion_];

    v22 = v20;
    v23 = MEMORY[0x26D5DCC90](a2, a3);
    [v22 setTrialNamespace_];

    v10 = v15;
    v12 = v35;
  }

  v24 = type metadata accessor for CamModelMetadata(0);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1 + *(v24 + 28), v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v40 = Locale.identifier.getter();
    v41 = v25;
    v38 = 95;
    v39 = 0xE100000000000000;
    v36 = 45;
    v37 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v28 = v27;

    if (v14)
    {
      v29 = objc_opt_self();
      v30 = v14;
      v31 = MEMORY[0x26D5DCC90](v26, v28);

      v32 = [v29 convertLanguageCodeToSchemaLocale_];

      [v30 setAssetLocale_];
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return v14;
}

void *_s7SiriCam20ModelLoggingProtocolPAAE08generateC7Version5usingSo08SISchemaG0CSgAA0bC8MetadataV_tFZAA0bC6LoggerV_Tt0g5Tm(void *a1)
{
  v1 = a1[5];
  if (v1 == 1)
  {
    return 0;
  }

  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[2];
  v6 = [objc_allocWithZone(MEMORY[0x277D5AC98]) init];
  v2 = v6;
  if (v6)
  {
    [v6 setMajor_];
    [v2 setMinor_];
    [v2 setPatch_];
    v7 = v2;
    if (v1)
    {
      v1 = MEMORY[0x26D5DCC90](v3, v1);
    }

    [v2 setPrerelease_];
  }

  return v2;
}

uint64_t outlined init with copy of (CamLogOutput, CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AutoSendPersonalFeatureExtractor(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendPersonalFeatureExtractor;
  if (!type metadata singleton initialization cache for AutoSendPersonalFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendPersonalFeatureExtractor(uint64_t a1)
{
  result = type metadata accessor for AutoSendInputFeatureExtractor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PersonalContextFeatureExtractor();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static AutoSendPersonalFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for extractedFeatures != -1)
  {
    swift_once();
  }

  v2 = static PersonalContextFeatureExtractor.extractedFeatures;

  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for CRR_FEATURES);
  v0 = static AutoSendInputFeatureExtractor.extractedFeatures.getter();
  specialized Array.append<A>(contentsOf:)(v0);
  return v2;
}

uint64_t AutoSendPersonalFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMd, &_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMR);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-v10];
  outlined init with copy of AutoSendInput(a1, &v31[-v10]);
  *&v11[*(v9 + 56)] = a2;
  v12 = one-time initialization token for autoSend;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.autoSend);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266790000, v14, v15, "Extracting Personal AutoSend features", v16, 2u);
    MEMORY[0x26D5DDCD0](v16, -1, -1);
  }

  type metadata accessor for MLMultiArray();
  v33 = Dictionary.init(dictionaryLiteral:)();
  v17 = v5;
  v18 = specialized FeatureExtracting.extract(from:)(v11);
  if (v4)
  {

    outlined destroy of (autoSendInput: AutoSendInput, crrSignals: [String : Int])(v11);
  }

  else
  {
    v19 = v18;
    v20 = specialized FeatureExtracting.extract(from:)(a2);
    type metadata accessor for AutoSendPersonalFeatureExtractor(0);
    v22 = specialized FeatureExtracting.extract(from:)();
    specialized Dictionary.update(other:allowDuplicateKeys:)(v19, 0);

    specialized Dictionary.update(other:allowDuplicateKeys:)(v20, 0);

    specialized Dictionary.update(other:allowDuplicateKeys:)(v22, 0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      swift_beginAccess();

      v27 = Dictionary.Keys.description.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_266790000, v23, v24, "Extracted Personal AutoSend features: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D5DDCD0](v26, -1, -1);
      MEMORY[0x26D5DDCD0](v25, -1, -1);
    }

    swift_beginAccess();
    v17 = v33;
    outlined destroy of (autoSendInput: AutoSendInput, crrSignals: [String : Int])(v11);
  }

  return v17;
}

uint64_t outlined init with copy of AutoSendInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutoSendPersonalHandlerProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AutoSendPersonalHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  outlined destroy of AutoSendPersonalFeatureExtractor(v0 + OBJC_IVAR____TtC7SiriCam23AutoSendPersonalHandler_autoSendPersonalFeatureExtractor);
  return v0;
}

uint64_t AutoSendPersonalHandler.__deallocating_deinit()
{
  AutoSendPersonalHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AutoSendPersonalHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendPersonalHandler;
  if (!type metadata singleton initialization cache for AutoSendPersonalHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendPersonalHandler(uint64_t a1)
{
  result = type metadata accessor for AutoSendPersonalFeatureExtractor(319);
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

uint64_t outlined destroy of AutoSendPersonalFeatureExtractor(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendPersonalFeatureExtractor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHistoryFeatureExtractor.extractImpl(from:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v4 = 0;
  if (v2)
  {
    v3 = *a1 == *(v1 + 16) && v2 == a1[1];
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000002668193F0;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t ConversationHistoryFeatureExtractor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t type metadata accessor for MLFeatureValue()
{
  result = lazy cache variable for type metadata for MLFeatureValue;
  if (!lazy cache variable for type metadata for MLFeatureValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLFeatureValue);
  }

  return result;
}

uint64_t Array<A>.topTwo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) >= 2uLL)
  {
    v7 = *(type metadata accessor for RankedAction(0) - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    outlined init with copy of RankedAction(v8, a2);
    v9 = type metadata accessor for TopTwo(0);
    outlined init with copy of RankedAction(v8 + *(v7 + 72), a2 + *(v9 + 20));
    v4 = a2;
    v5 = 0;
    v3 = v9;
  }

  else
  {
    v3 = type metadata accessor for TopTwo(0);
    v4 = a2;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
}

uint64_t outlined init with copy of RankedAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TopTwo(uint64_t a1)
{
  result = type metadata singleton initialization cache for TopTwo;
  if (!type metadata singleton initialization cache for TopTwo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Array<A>.nonTopTwo.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 3)
  {
    return MEMORY[0x277D84F90];
  }

  specialized Array.subscript.getter(2uLL, v1, a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {
LABEL_3:
    specialized _copyCollectionToContiguousArray<A>(_:)(v3, v5, v7, v9);
    v11 = v10;
LABEL_11:
    swift_unknownObjectRelease();
    return v11;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v11;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for RankedAction(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t type metadata completion function for TopTwo(uint64_t a1)
{
  result = type metadata accessor for RankedAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [String : MLFeatureValue].Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t Dictionary<>.debugDescription.getter(uint64_t a1)
{
  v2 = 0xD00000000000001ALL;
  v16 = 0xD00000000000001ALL;
  v17 = 0x800000026681A240;

  v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(v3);

  specialized MutableCollection<>.sort(by:)(&v14);

  v4 = v14[2];
  if (!v4)
  {

    return v2;
  }

  v5 = v14 + 5;
  do
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v14 = 0;
    v15 = 0xE000000000000000;

    MEMORY[0x26D5DCD80](8237, 0xE200000000000000);
    MEMORY[0x26D5DCD80](v7, v6);
    MEMORY[0x26D5DCD80](8250, 0xE200000000000000);
    if (*(a1 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(a1 + 56) + 8 * v8);
        v12 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = 0;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MLFeatureValueCSgMd, &_sSo14MLFeatureValueCSgMR);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x26D5DCD80](10, 0xE100000000000000);
    MEMORY[0x26D5DCD80](v14, v15);

    v5 += 2;
    --v4;
  }

  while (v4);

  return v16;
}

void *Dictionary<>.toFeatureDictionary()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);
      v20 = objc_opt_self();

      result = [v20 featureValueWithInt64_];
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v21 = (v3[6] + 16 * v15);
      *v21 = v18;
      v21[1] = v17;
      *(v3[7] + 8 * v15) = result;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS13flowHandlerId_10Foundation4UUIDV05parseJ0Si13affinityScoret_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS13flowHandlerId_10Foundation4UUIDV05parseF0Si13affinityScoretGMd, &_ss23_ContiguousArrayStorageCySS13flowHandlerId_10Foundation4UUIDV05parseF0Si13affinityScoretGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 40 * a3;
  v6 = result - a3;
  while (2)
  {
    v45 = a3;
    v37 = v6;
    v38 = v5;
    while (1)
    {
      outlined init with copy of SignalProviding(v5, &v42);
      outlined init with copy of SignalProviding(v5 - 40, v39);
      v7 = v43;
      v8 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      v9 = (*(v8 + 40))(v7, v8);
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      v14 = v40;
      v13 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v15 = (*(v13 + 40))(v14, v13);
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = v11 == v15 && v12 == v16;
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_17;
      }

      v18 = v43;
      v19 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      v20 = ActionProtocol.actionRepresentation.getter(v18, v19);
      v22 = v21;
      v23 = v40;
      v24 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v25 = ActionProtocol.actionRepresentation.getter(v23, v24);
      v27 = v26;
      if (v22)
      {
        if (v26)
        {
          if (v20 == v25 && v22 == v26)
          {

LABEL_31:

            break;
          }

LABEL_17:
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          goto LABEL_25;
        }
      }

      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.ranker);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_266790000, v31, v32, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v33, 2u);
        MEMORY[0x26D5DDCD0](v33, -1, -1);
      }

      v29 = v27 == 0;
LABEL_25:

      __swift_destroy_boxed_opaque_existential_0(v39);
      result = __swift_destroy_boxed_opaque_existential_0(&v42);
      if (v29)
      {
        if (!v4)
        {
          __break(1u);
          return result;
        }

        outlined init with take of ActionProtocol(v5, &v42);
        v34 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v34;
        *(v5 + 32) = *(v5 - 8);
        result = outlined init with take of ActionProtocol(&v42, v5 - 40);
        v5 -= 40;
        if (!__CFADD__(v6++, 1))
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    __swift_destroy_boxed_opaque_existential_0(v39);
    result = __swift_destroy_boxed_opaque_existential_0(&v42);
LABEL_33:
    a3 = v45 + 1;
    v5 = v38 + 40;
    v6 = v37 - 1;
    if (v45 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v91, *result, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t getEnumTagSinglePayload for MixingModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for MixingModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AppLaunchCountFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for APP_LAUNCH_COUNT != -1)
  {
    swift_once();
  }
}

void *AppLaunchCountFeatureExtractor.extractAppLaunchCount(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = ActionProtocol.inferBundleId()();
  if (v3.value._object)
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    type metadata accessor for AppLaunchCountSignal();
    v4 = MEMORY[0x26D5DC3E0]();
    v5 = SiriSignalsContainer.get(from:query:defaultVal:)(v4, v3.value._countAndFlagsBits, v3.value._object, 0);
    if (v2)
    {
    }

    else
    {
      v8 = v5;

      v9 = Dictionary<>.toFeatureDictionary()(v8);

      return v9;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v7 = 0xD000000000000022;
    *(v7 + 8) = 0x800000026681A260;
    *(v7 + 16) = 1;
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CaarError and conformance CaarError()
{
  result = lazy protocol witness table cache variable for type CaarError and conformance CaarError;
  if (!lazy protocol witness table cache variable for type CaarError and conformance CaarError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaarError and conformance CaarError);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchCountFeatureExtractor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppLaunchCountFeatureExtractor(uint64_t result, int a2, int a3)
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

uint64_t one-time initialization function for modelOutputToAutoConfirmAction()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static AutoSendOutput.modelOutputToAutoConfirmAction = result;
  return result;
}

uint64_t AutoSendOutput.init(decision:score:threshold:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (one-time initialization token for modelOutputToAutoConfirmAction != -1)
  {
    swift_once();
  }

  v8 = static AutoSendOutput.modelOutputToAutoConfirmAction;
  if (*(static AutoSendOutput.modelOutputToAutoConfirmAction + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
    *(v4 + 57) = v11;
    *(v4 + 56) = v11;
    return CamLogOutput.init(prediction:score:threshold:)(a1, a2, a3);
  }

  else
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x26D5DCD80](0xD000000000000044, 0x800000026681A2D0);
    v20[5] = a1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v13);

    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.autoSend);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v20);
      _os_log_impl(&dword_266790000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
      MEMORY[0x26D5DDCD0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 5;
    swift_willThrow();
    type metadata accessor for AutoSendOutput();
    return swift_deallocPartialClassInstance();
  }
}

Swift::Void __swiftcall AutoSendOutput.overrideAction(action:enforcer:)(SiriCam::AutoConfirmAction action, Swift::String enforcer)
{
  *(v2 + 57) = *action;
  *(v2 + 40) = enforcer;
}

uint64_t AutoSendOutput.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 58, 7);
}

unint64_t lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError()
{
  result = lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError;
  if (!lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError);
  }

  return result;
}

uint64_t type metadata accessor for AutoSendInput(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendInput;
  if (!type metadata singleton initialization cache for AutoSendInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for AutoSendInput(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for AFSpeechPackage();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t type metadata accessor for AFSpeechPackage()
{
  result = lazy cache variable for type metadata for AFSpeechPackage;
  if (!lazy cache variable for type metadata for AFSpeechPackage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSpeechPackage);
  }

  return result;
}

void AutoSendOutputProvider.toAutoSendOutput(from:)(void *a1)
{
  v2 = MEMORY[0x26D5DCC90](0xD00000000000001ALL, 0x800000026681A320);
  v3 = [a1 featureValueForName_];

  if (v3 && (v4 = [v3 multiArrayValue], v3, v4))
  {
    v5 = MLMultiArray.toDoubleScalar()();

    if (v6)
    {
      return;
    }

    v7 = "rom output feature name : ";
    v8 = MEMORY[0x26D5DCC90](0xD00000000000001ELL, 0x800000026681A380);
    v9 = [a1 objectForKeyedSubscript_];

    if (v9 && (v10 = [v9 multiArrayValue], v9, v10))
    {
      v11 = MLMultiArray.toDoubleScalar()();

      if (v12)
      {
        return;
      }

      v7 = "ld from output feature: ";
      v13 = MEMORY[0x26D5DCC90](0xD00000000000001DLL, 0x800000026681A3E0);
      v14 = [a1 featureValueForName_];

      if (v14)
      {
        v15 = [v14 multiArrayValue];

        if (v15)
        {
          v16 = MLMultiArray.toIntScalar()();

          if (!v17)
          {
            type metadata accessor for AutoSendOutput();
            swift_allocObject();
            AutoSendOutput.init(decision:score:threshold:)(v16, v5, v11);
          }

          return;
        }
      }

      OUTLINED_FUNCTION_0_3();
      _StringGuts.grow(_:)(63);
      MEMORY[0x26D5DCD80](0xD00000000000003DLL, 0x800000026681A400);
      v19 = 0xD00000000000001DLL;
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      _StringGuts.grow(_:)(58);
      MEMORY[0x26D5DCD80](0xD000000000000038, 0x800000026681A3A0);
      v19 = 0xD00000000000001ELL;
    }

    v18 = v7 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(60);
    MEMORY[0x26D5DCD80](0xD00000000000003ALL, 0x800000026681A340);
    v18 = 0x800000026681A320;
    v19 = 0xD00000000000001ALL;
  }

  MEMORY[0x26D5DCD80](v19, v18);
  v20 = v28[0];
  v21 = v28[1];
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.autoSend);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v28);
    _os_log_impl(&dword_266790000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26D5DDCD0](v26, -1, -1);
    MEMORY[0x26D5DDCD0](v25, -1, -1);
  }

  lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
  swift_allocError();
  *v27 = v20;
  *(v27 + 8) = v21;
  *(v27 + 16) = 5;
  swift_willThrow();
}

uint64_t RankerContext.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RankerContext(0) + 20);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RankerContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for RankerContext;
  if (!type metadata singleton initialization cache for RankerContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RankerContext.previousConversationHandlerId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RankerContext(0) + 24));

  return v1;
}

uint64_t RankerContext.init(rrCandidates:responseMode:previousConversationHandlerId:maxNLProba:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for RankerContext(0);
  v14 = v13[5];
  v15 = type metadata accessor for ResponseMode();
  result = (*(*(v15 - 8) + 32))(&a7[v14], a2, v15);
  v17 = &a7[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &a7[v13[7]];
  *v18 = a5;
  v18[8] = a6 & 1;
  return result;
}

uint64_t RankerContext.description.getter()
{
  _StringGuts.grow(_:)(100);
  MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A440);
  v1 = *v0;
  v2 = type metadata accessor for RRCandidate();
  v3 = MEMORY[0x26D5DCE80](v1, v2);
  MEMORY[0x26D5DCD80](v3);

  MEMORY[0x26D5DCD80](0xD000000000000010, 0x800000026681A460);
  type metadata accessor for RankerContext(0);
  v4 = ResponseMode.aceValue.getter();
  MEMORY[0x26D5DCD80](v4);

  MEMORY[0x26D5DCD80](0xD000000000000021, 0x800000026681A480);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v5);

  MEMORY[0x26D5DCD80](0x504C4E78616D202CLL, 0xEE00203A61626F72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v6);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

void type metadata completion function for RankerContext(uint64_t a1)
{
  type metadata accessor for [RRCandidate](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ResponseMode();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [RRCandidate](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [RRCandidate])
  {
    type metadata accessor for RRCandidate();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [RRCandidate]);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CaarError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CaarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5DD300);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

id static MLMultiArray.make1DSetOrSequence(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_266813FC0;
      *(v5 + 32) = v4;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 8 * v7 + 32) = v5;
      ++v3;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  v8 = OUTLINED_FUNCTION_18_1();
  v9 = static MLMultiArray.make1DSetOrSequence(from:)(v8);

  return v9;
}

{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v16 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v16);
    *v17 = 0xD000000000000037;
    *(v17 + 8) = 0x800000026681A4E0;
    *(v17 + 16) = 1;
    swift_willThrow();
    return v1;
  }

  v4 = a1 + 32;
  v5 = *(*(a1 + 32) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 1;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v7 = specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v1 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = @nonobjc MLMultiArray.init(shape:dataType:)(v7, 65600);
  if (v2)
  {
    return v1;
  }

  v1 = v8;
  v9 = 0;
  v18 = v3;
LABEL_4:
  if (v9 == v3)
  {
    return v1;
  }

  v10 = *(v4 + 8 * v9);
  v11 = *(v10 + 16);

  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      v3 = v18;
      ++v9;
      goto LABEL_4;
    }

    if (i >= *(v10 + 16))
    {
      break;
    }

    v14 = *(v10 + 8 * i + 32);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_266813C70;
    *(v15 + 32) = 0;
    *(v15 + 40) = v9;
    *(v15 + 48) = i;
    specialized MLMultiArray.safeAssign<A>(_:at:)(v15, v14);
  }

  __break(1u);
  return result;
}

uint64_t static MLMultiArray.makeScalar(from:)(double a1)
{
  v3 = specialized _arrayForceCast<A, B>(_:)(&outlined read-only object #0 of static MLMultiArray.makeScalar(from:));
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  @nonobjc MLMultiArray.init(shape:dataType:)(v3, 65600);
  if (!v1)
  {
    specialized MLMultiArray.safeAssign<A>(_:at:)(&outlined read-only object #1 of static MLMultiArray.makeScalar(from:), a1);
  }

  return OUTLINED_FUNCTION_18_1();
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toDoubleScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = MEMORY[0x26D5DCF40]();

    return v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    v7 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v8 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v7);
    OUTLINED_FUNCTION_6_3(v8, v9);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toIntScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = Int.init(truncating:)();

    return v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    v7 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v8 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v7);
    return OUTLINED_FUNCTION_6_3(v8, v9);
  }
}

uint64_t MLMultiArrayDataType.description.getter(uint64_t a1)
{
  v1 = 0x656C62756F64;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 65552)
  {
    v2 = 0x363174616F6C66;
  }

  if (a1 != 65600)
  {
    v1 = v2;
  }

  if (a1 == 65568)
  {
    v1 = 0x323374616F6C66;
  }

  if (a1 == 131104)
  {
    return 0x3233746E69;
  }

  else
  {
    return v1;
  }
}

void specialized MLMultiArray.safeAssign<A>(_:at:)(uint64_t a1, double a2)
{
  MLMultiArray.indexExists(_:)(a1);
  if (!v3)
  {
    if (v6)
    {
      v7 = MEMORY[0x26D5DCF50](a2);
      specialized _arrayForceCast<A, B>(_:)(a1);
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setObject:v7 forKeyedSubscript:isa];
    }

    else
    {
      _StringGuts.grow(_:)(38);

      v9 = MEMORY[0x26D5DCE80](a1, MEMORY[0x277D83B88]);
      MEMORY[0x26D5DCD80](v9);

      MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A520);
      v10 = [v2 shape];
      v11 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = MEMORY[0x26D5DCE80](v12, v11);
      v15 = v14;

      MEMORY[0x26D5DCD80](v13, v15);

      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v16 = 0x207865646E49;
      *(v16 + 8) = 0xE600000000000000;
      *(v16 + 16) = 2;
      swift_willThrow();
    }
  }
}

void specialized MLMultiArray.safeAssign<A>(_:at:)(uint64_t a1, uint64_t a2)
{
  MLMultiArray.indexExists(_:)(a2);
  if (!v3)
  {
    if (v5)
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      specialized _arrayForceCast<A, B>(_:)(a2);
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v7 = Array._bridgeToObjectiveC()().super.isa;

      [v2 setObject:isa forKeyedSubscript:v7];
    }

    else
    {
      _StringGuts.grow(_:)(38);

      v8 = MEMORY[0x26D5DCE80](a2, MEMORY[0x277D83B88]);
      MEMORY[0x26D5DCD80](v8);

      MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A520);
      v9 = [v2 shape];
      v10 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = MEMORY[0x26D5DCE80](v11, v10);
      v14 = v13;

      MEMORY[0x26D5DCD80](v12, v14);

      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v15 = 0x207865646E49;
      *(v15 + 8) = 0xE600000000000000;
      *(v15 + 16) = 2;
      swift_willThrow();
    }
  }
}

void MLMultiArray.indexExists(_:)(uint64_t a1)
{
  v3 = [v1 shape];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v4);
  v6 = 0;
  v7 = a1;
  v8 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_12:

      return;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v9 = MEMORY[0x26D5DD230](v6, v4);
LABEL_6:
    v10 = v9;
    v11 = Int.init(exactly:)();
    if (v12)
    {

      _StringGuts.grow(_:)(39);

      v15 = [v10 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      MEMORY[0x26D5DCD80](v16, v18);

      MEMORY[0x26D5DCD80](0x746E69206F7420, 0xE700000000000000);
      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v19 = 0xD00000000000001ELL;
      *(v19 + 8) = 0x800000026681A540;
      *(v19 + 16) = 0;
      swift_willThrow();

      return;
    }

    if (v6 >= *(v7 + 16))
    {
      goto LABEL_15;
    }

    v13 = v11;
    v14 = *(v8 + 8 * v6);

    if ((v14 & 0x8000000000000000) == 0)
    {
      ++v6;
      if (v14 < v13)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v4 + 8 * v6 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      Int._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of CaarHandler(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      outlined init with copy of RankedAction(v10, v7);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = &protocol witness table for RankedAction;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      outlined init with copy of RankedAction(v7, boxed_opaque_existential_1);
      *(v9 + 16) = v13 + 1;
      outlined init with take of CaarHandler(&v16, v9 + 40 * v13 + 32);
      outlined destroy of RankedAction(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

id static MLMultiArray.makeScalar(from:)(uint64_t a1)
{
  v3 = specialized _arrayForceCast<A, B>(_:)(&outlined read-only object #0 of static MLMultiArray.makeScalar(from:));
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = @nonobjc MLMultiArray.init(shape:dataType:)(v3, 131104);
  if (!v1)
  {
    specialized MLMultiArray.safeAssign<A>(_:at:)(a1, &outlined read-only object #1 of static MLMultiArray.makeScalar(from:));
  }

  return v5;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toBoolScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = Bool.init(truncating:)();

    return v2 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    v7 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v8 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v7);
    OUTLINED_FUNCTION_6_3(v8, v9);
    return 0;
  }
}

uint64_t MLMultiArray.toDoubleArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 65600)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(38);

    v15 = OUTLINED_FUNCTION_11_0(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23);
    v16 = MLMultiArrayDataType.description.getter(v15);
    MEMORY[0x26D5DCD80](v16);

    v17 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v18 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v17);
    OUTLINED_FUNCTION_10_1(v18, v19);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  v2 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v1, 0.0);
  v3 = [v0 dataPointer];
  v4 = OUTLINED_FUNCTION_19();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v4;
    if (!v4)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v4 <= *(v2 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v2 = v21;
LABEL_6:
  v5 = (v2 + 32);
  do
  {
    v6 = *v3++;
    *v5++ = v6;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}

uint64_t MLMultiArray.toIntArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 131104)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(35);

    v16 = OUTLINED_FUNCTION_11_0(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24);
    v17 = MLMultiArrayDataType.description.getter(v16);
    MEMORY[0x26D5DCD80](v17);

    v18 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v19 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v18);
    OUTLINED_FUNCTION_10_1(v19, v20);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  _sSa9repeating5countSayxGx_SitcfCs5Int32V_Tt1g5(0, v1);
  v3 = v2;
  v4 = [v0 dataPointer];
  v5 = OUTLINED_FUNCTION_19();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v5;
    if (!v5)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v5 <= *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = v22;
LABEL_6:
  v6 = (v3 + 32);
  do
  {
    v7 = *v4++;
    *v6++ = v7;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}

uint64_t MLMultiArray.toFloatArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 65568)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(37);

    v16 = OUTLINED_FUNCTION_11_0(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24);
    v17 = MLMultiArrayDataType.description.getter(v16);
    MEMORY[0x26D5DCD80](v17);

    v18 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v19 = OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v18);
    OUTLINED_FUNCTION_10_1(v19, v20);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v1, 0.0);
  v3 = v2;
  v4 = [v0 dataPointer];
  v5 = OUTLINED_FUNCTION_19();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v5;
    if (!v5)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v5 <= *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = v22;
LABEL_6:
  v6 = (v3 + 32);
  do
  {
    v7 = *v4++;
    *v6++ = v7;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}