uint64_t one-time initialization function for payments()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.payments);
  __swift_project_value_buffer(v1, static Logger.payments);
  LogConst.subsystem.unsafeMutableAddressor();

  LogConst.Category.siriPayments.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

__int128 *LogConst.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static LogConst.subsystem;
}

__int128 *LogConst.Category.siriPayments.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPayments != -1)
  {
    swift_once();
  }

  return &static LogConst.Category.siriPayments;
}

uint64_t Logger.payments.unsafeMutableAddressor()
{
  if (one-time initialization token for payments != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.payments);
}

uint64_t static Logger.payments.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.payments.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static Logger.logForCrash(_:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v38 = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  v42 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v44 = partial apply for closure #1 in OSLogArguments.append(_:);
  v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = 0;
  v61 = 0;
  v29 = 0;
  v34 = type metadata accessor for Logger();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v30 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v20 - v30;
  v31 = v20 - v30;
  v60 = MEMORY[0x28223BE20](v35, v36);
  v61 = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v32 + 16))(v2, v4, v34);

  v39 = 32;
  v40 = 7;
  v5 = swift_allocObject();
  v6 = v36;
  v41 = v5;
  *(v5 + 16) = v35;
  *(v5 + 24) = v6;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v37 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v41;
  v43 = v7;
  *(v7 + 16) = v38;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v43;
  v50 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v48 = _allocateUninitializedArray<A>(_:)();
  v51 = v11;

  v12 = v45;
  v13 = v51;
  *v51 = v44;
  v13[1] = v12;

  v14 = v47;
  v15 = v51;
  v51[2] = v46;
  v15[3] = v14;

  v16 = v50;
  v17 = v51;
  v51[4] = v49;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v53, v54))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25 = &v59;
    v59 = v22;
    v26 = &v58;
    v58 = v23;
    v27 = &v57;
    v57 = v24;
    serialize(_:at:)(2, &v59);
    serialize(_:at:)(1, v25);
    v55 = v44;
    v56 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v55, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v55 = v46;
      v56 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v55, &v59, &v58, &v57);
      v20[1] = 0;
      v55 = v49;
      v56 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v55, &v59, &v58, &v57);
      _os_log_impl(&dword_2686B1000, v53, v54, "Fatal error: %s", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v53);
  (*(v32 + 8))(v31, v34);

  return v35;
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static LogConst.subsystem = v1;
  return result;
}

uint64_t static LogConst.subsystem.getter()
{
  v1 = *LogConst.subsystem.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for siriPayments()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SiriPayments", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static LogConst.Category.siriPayments = v1;
  return result;
}

uint64_t static LogConst.Category.siriPayments.getter()
{
  v1 = *LogConst.Category.siriPayments.unsafeMutableAddressor();

  return v1;
}

uint64_t protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADD0](a1, a2, a3);
}

uint64_t protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t protocol witness for TCCResponseProviding.confirmationRejected(deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADD8](a1, a2);
}

uint64_t protocol witness for TCCResponseProviding.confirmationCancelled(deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADE0](a1, a2);
}

id @nonobjc INRequestPaymentIntentResponse.paymentRecord.getter()
{
  MEMORY[0x277D82BE0](v0);
  v2 = [v0 paymentRecord];
  MEMORY[0x277D82BD8](v0);
  return v2;
}

void variable initialization expression of PaymentsFlow.restrictionGuards()
{
  v2[1] = 0;
  v7 = type metadata accessor for UnlockDevicePolicy();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v6 = v2 - v3;
  v10 = type metadata accessor for CommonFlowGuard();
  v9 = _allocateUninitializedArray<A>(_:)();
  v8 = v1;
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v4 + 8))(v6, v7);
  static CommonFlowGuard.disallowInSharingMode.getter();
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSJSONWritingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSJSONWritingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSJSONWritingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONReadingOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSJSONReadingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSJSONReadingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSJSONReadingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance INBalanceType(uint64_t a2@<X8>)
{
  INSiriAuthorizationStatus.init(rawValue:)();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSPropertyListMutabilityOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSPropertyListMutabilityOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSPropertyListMutabilityOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

NSJSONWritingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSJSONWritingOptions@<X0>(Swift::UInt *a1@<X0>, NSJSONWritingOptions *a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSJSONWritingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSJSONWritingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSJSONWritingOptions protocol witness for RawRepresentable.rawValue.getter in conformance NSJSONWritingOptions@<X0>(NSJSONWritingOptions *a1@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*v1);
  *a1 = result;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D620BD0](v3, a3);
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();
  return _typeName(_:qualified:)();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 159, 0);
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 173, 0);
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Insufficient space allocated to copy string contents", 52, 2, "Swift/StringUTF8View.swift", 26, 2, 531, 0);
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "invalid Collection: less than 'count' elements in collection", 60, 2, "Swift/ContiguousArrayBuffer.swift", 33, 2, 1145, 0);
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "newElements.underestimatedCount was an overestimate", 51, 2, "Swift/Array.swift", 17, 2, 1259, 0);
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Insufficient space allocated to copy array contents", 51, 2, "Swift/Array.swift", 17, 2, 1778, 0);
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D6207A0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "String index is out of bounds", 29, 2, "Swift/StringUTF8View.swift", 26, 2, 167, 0);
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t type metadata accessor for INAccountType(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for INAccountType;
  if (!lazy cache variable for type metadata for INAccountType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INAccountType);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INSiriAuthorizationStatus(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for INSiriAuthorizationStatus;
  if (!lazy cache variable for type metadata for INSiriAuthorizationStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INSiriAuthorizationStatus);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for NSPropertyListMutabilityOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSPropertyListMutabilityOptions;
  if (!lazy cache variable for type metadata for NSPropertyListMutabilityOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSPropertyListMutabilityOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INPersonHandleType(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for INPersonHandleType;
  if (!lazy cache variable for type metadata for INPersonHandleType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INPersonHandleType);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INBalanceType(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for INBalanceType;
  if (!lazy cache variable for type metadata for INBalanceType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INBalanceType);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for NSJSONReadingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSJSONReadingOptions;
  if (!lazy cache variable for type metadata for NSJSONReadingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSJSONReadingOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for NSJSONWritingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSJSONWritingOptions;
  if (!lazy cache variable for type metadata for NSJSONWritingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSJSONWritingOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions()
{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus()
{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType()
{
  v2 = lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType;
  if (!lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType)
  {
    type metadata accessor for INBalanceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType;
  if (!lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType)
  {
    type metadata accessor for INBalanceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType()
{
  v2 = lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType;
  if (!lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType)
  {
    type metadata accessor for INPersonHandleType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType;
  if (!lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType)
  {
    type metadata accessor for INPersonHandleType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t type metadata accessor for NSStringCompareOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSStringCompareOptions;
  if (!lazy cache variable for type metadata for NSStringCompareOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSStringCompareOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for NSDataBase64EncodingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSDataBase64EncodingOptions;
  if (!lazy cache variable for type metadata for NSDataBase64EncodingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataBase64EncodingOptions);
      return v2;
    }
  }

  return v5;
}

uint64_t SearchForAccountsContinueInAppStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSearchForAccountsIntent();
  v2 = type metadata accessor for INSearchForAccountsIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SearchForAccountsCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = SearchForAccountsContinueInAppStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t outlined init with copy of GlobalsProviding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v6 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0, v2);
  v7 = &v5 - v6;
  type metadata accessor for SearchForAccountsCATs(v3);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

unint64_t type metadata accessor for INSearchForAccountsIntent()
{
  v2 = lazy cache variable for type metadata for INSearchForAccountsIntent;
  if (!lazy cache variable for type metadata for INSearchForAccountsIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSearchForAccountsIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INSearchForAccountsIntentResponse()
{
  v2 = lazy cache variable for type metadata for INSearchForAccountsIntentResponse;
  if (!lazy cache variable for type metadata for INSearchForAccountsIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSearchForAccountsIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[26] = v2;
  v3[25] = a2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[28] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0);
}

uint64_t SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  v1 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v21 + 160) = buf;
    *(v21 + 168) = v18;
    *(v21 + 176) = v19;
    serialize(_:at:)(0, (v21 + 160));
    serialize(_:at:)(0, (v21 + 160));
    *(v21 + 184) = v26;
    v20 = swift_task_alloc();
    v20[2] = v21 + 160;
    v20[3] = v21 + 168;
    v20[4] = v21 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#SearchForAccountsContinueInAppStrategy makeContinueInAppResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v21 + 272);
  v10 = *(v21 + 256);
  v14 = *(v21 + 224);
  v11 = *(v21 + 208);
  v8 = *(v21 + 264);
  MEMORY[0x277D82BD8](v25);
  (*(v8 + 8))(v9, v10);

  *(v21 + 280) = *(v11 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v12 = IntentResolutionRecord.intentResponse.getter();
  v13 = [v12 code];
  MEMORY[0x277D82BD8](v12);
  INRequestPaymentIntentResponseCode.speakable.getter(v13);
  v3 = type metadata accessor for SpeakableString();
  (*(*(v3 - 8) + 56))(v14, 0, 1);
  IntentResolutionRecord.app.getter();
  v15 = App.sirikitApp.getter();
  *(v21 + 288) = v15;

  v4 = swift_task_alloc();
  *(v21 + 296) = v4;
  *v4 = *(v21 + 136);
  v4[1] = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v5 = *(v21 + 248);
  v6 = *(v21 + 224);

  return SearchForAccountsCATs.errorWithCode(errorCode:app:)(v5, v6, v15);
}

{
  v5 = *v1;
  v5[17] = *v1;
  v5[38] = v0;

  if (v0)
  {
    v2 = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v4 = v5[28];

    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[31];
  v8 = v0[30];
  v9 = v0[29];
  v11 = v0[27];
  v6 = v0[26];
  v7 = v0[24];
  v0[17] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 2));

  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v11, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v10, v9);

  v2 = *(v0[17] + 8);

  return v2();
}

{
  v3 = *(v0 + 224);
  *(v0 + 136) = v0;

  outlined destroy of SpeakableString?(v3);

  v1 = *(*(v0 + 136) + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t SearchForAccountsContinueInAppStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

void *outlined destroy of FlowActivity?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v3 = type metadata accessor for NLContextUpdate();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SearchForAccountsContinueInAppStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsContinueInAppStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsContinueInAppStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SearchForAccountsContinueInAppStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy)
  {
    type metadata accessor for SearchForAccountsContinueInAppStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy)
  {
    type metadata accessor for SearchForAccountsContinueInAppStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy);
    return WitnessTable;
  }

  return v2;
}

void *ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v14 = a1;
  v13 = a2;
  v12 = a3;
  outlined init with copy of GlobalsProviding(a1, v11);
  outlined init with take of CommonLabelsProviding(v11, __b);
  outlined init with copy of GlobalsProviding(a2, v10);
  outlined init with take of CommonLabelsProviding(v10, &__b[5]);
  outlined init with copy of GlobalsProviding(a3, v9);
  outlined init with take of CommonLabelsProviding(v9, &__b[10]);
  outlined init with copy of ConfirmationViewBuilder(__b, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of ConfirmationViewBuilder(__b);
}

void *outlined init with copy of ConfirmationViewBuilder(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  a2[4] = a1[4];
  (**(v2 - 8))();
  v3 = a1[8];
  a2[8] = v3;
  a2[9] = a1[9];
  (**(v3 - 8))(a2 + 5, a1 + 5);
  v4 = a1[13];
  a2[13] = v4;
  a2[14] = a1[14];
  (**(v4 - 8))(a2 + 10, a1 + 10);
  return a2;
}

void *outlined destroy of ConfirmationViewBuilder(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(a1 + 5);
  __swift_destroy_boxed_opaque_existential_0(a1 + 10);
  return a1;
}

BOOL static ConfirmationViewBuilder.WalletAppLaunchAction.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction()
{
  v2 = lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction;
  if (!lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction;
  if (!lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction);
    return WitnessTable;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29, v22);
  v26 = &v15 - v25;
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v28 = &v15 - v27;
  v34 = &v15 - v27;
  v33 = v7;
  v31 = v8;
  v32 = v9;
  v30 = v10;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v28, 1);
  if (v29)
  {
    if (v29 == 1)
    {
      v13 = String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor();
      v18 = *v13;
      v19 = *(v13 + 1);

      URL.init(string:)();

      outlined assign with take of URL?(v26, v28);
    }
  }

  else
  {
    v12 = String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor();
    v20 = *v12;
    v21 = *(v12 + 1);

    URL.init(string:)();

    outlined assign with take of URL?(v26, v28);
  }

  v16 = static AppUtil.walletApp.getter();
  outlined init with copy of URL?(v28, v26);
  v17 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(v16, v22, v23, v26, v24);
  outlined destroy of URL?(v26);

  outlined destroy of URL?(v28);
  return v17;
}

void *outlined init with copy of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v44 = a1;
  v38 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6);
  v34 = v17 - v33;
  v39 = type metadata accessor for Locale();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v44, v38);
  v43 = v17 - v42;
  v51 = v7;
  v49 = v8;
  v50 = v9;
  v48 = v10;
  v47 = v11;

  if (v44)
  {
    v32 = v44;
    v29 = v44;
    v45 = v44;
    v28 = v37[3];
    v27 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v28);
    dispatch thunk of DeviceState.siriLocale.getter();
    v30 = static AppUtil.buildPunchout(for:locale:)(v29, v43);
    (*(v40 + 8))(v43, v39);
    MEMORY[0x277D82BE0](v30);
    v46 = v30;

    v31 = v30;
  }

  else
  {
    type metadata accessor for SAUIAppPunchOut();
    v26 = SAUIAppPunchOut.__allocating_init()();
    MEMORY[0x277D82BE0](v26);
    v46 = v26;
    v31 = v26;
  }

  v22 = v31;
  outlined init with copy of URL?(v36, v34);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v12 = (*(v24 + 48))(v34, 1);
  if (v12 == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()((v12 - 1));
    v20 = v13;
    (*(v24 + 8))(v34, v23);
    v21 = v20;
  }

  [v22 setPunchOutUri_];
  MEMORY[0x277D82BD8](v17[0]);
  type metadata accessor for SAUIButton();
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  _allocateUninitializedArray<A>(_:)();
  *v14 = v22;
  _finalizeUninitializedArray<A>(_:)();
  v18 = v15;

  v19 = SAUIButton.init(commands:text:)(v18, v38, v35);
  MEMORY[0x277D82BD8](v46);
  return v19;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined assign with take of URL?(const void *a1, void *a2)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t type metadata accessor for SAUIAppPunchOut()
{
  v2 = lazy cache variable for type metadata for SAUIAppPunchOut;
  if (!lazy cache variable for type metadata for SAUIAppPunchOut)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIAppPunchOut);
    return ObjCClassMetadata;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = a1;
  v11 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v10 - v13;
  v22 = MEMORY[0x28223BE20](v12, v11);
  v23 = v5;
  v20 = v6;
  v21 = v7;
  v19 = v8;
  URL.init(string:)();
  v18 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(0, v14, v15, v17, v16);
  outlined destroy of URL?(v17);
  return v18;
}

unint64_t type metadata accessor for SAUIButton()
{
  v2 = lazy cache variable for type metadata for SAUIButton;
  if (!lazy cache variable for type metadata for SAUIButton)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIButton);
    return ObjCClassMetadata;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWatchAppLaunchButton(for:buttonText:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for SASTButtonItem();
  v13 = SAUIAppPunchOut.__allocating_init()();
  v14 = App.appIdentifier.getter();
  v15 = v4;
  if (v4)
  {
    type metadata accessor for SASTCommandTemplateAction();
    swift_getObjectType();
    MEMORY[0x277D82BE0](a4);

    v16 = SASTCommandTemplateAction.init(intent:appId:)(a4, v14, v15);
    MEMORY[0x277D82BE0](v16);
    [v13 setAction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v16);
  }

  type metadata accessor for SAUIDecoratedText();
  v18 = SAUIAppPunchOut.__allocating_init()();

  v7 = MEMORY[0x26D620690](a2, a3);

  [v18 setText_];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v18);
  [v13 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v18);
  type metadata accessor for SASTItemGroup();
  v17 = SAUIAppPunchOut.__allocating_init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  v8 = v5;
  MEMORY[0x277D82BE0](v13);
  *v8 = v13;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v13);
  return v17;
}

unint64_t type metadata accessor for SASTButtonItem()
{
  v2 = lazy cache variable for type metadata for SASTButtonItem;
  if (!lazy cache variable for type metadata for SASTButtonItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTButtonItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIDecoratedText()
{
  v2 = lazy cache variable for type metadata for SAUIDecoratedText;
  if (!lazy cache variable for type metadata for SAUIDecoratedText)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIDecoratedText);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTItemGroup()
{
  v2 = lazy cache variable for type metadata for SASTItemGroup;
  if (!lazy cache variable for type metadata for SASTItemGroup)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTItemGroup);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTCommandTemplateAction()
{
  v2 = lazy cache variable for type metadata for SASTCommandTemplateAction;
  if (!lazy cache variable for type metadata for SASTCommandTemplateAction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTCommandTemplateAction);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v8;
  v9[20] = a8;
  v9[19] = a7;
  v9[18] = a6;
  v9[17] = a5;
  v9[16] = a4;
  v9[15] = a3;
  v9[14] = a2;
  v9[13] = a1;
  v9[7] = v9;
  v9[8] = 0;
  v9[9] = 0;
  v9[10] = 0;
  v9[11] = 0;
  v9[12] = 0;
  v9[8] = a1;
  v9[9] = a2;
  v9[10] = a3;
  v9[11] = a4;
  v9[12] = v8;
  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[21];
  v0[7] = v0;
  outlined init with copy of GlobalsProviding(v1 + 40, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v22 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v22)
  {
    v2 = swift_task_alloc();
    v21[22] = v2;
    *v2 = v21[7];
    v2[1] = ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:);
    v3 = v21[20];
    v4 = v21[19];
    v5 = v21[18];
    v6 = v21[17];
    v7 = v21[16];
    v8 = v21[15];
    v9 = v21[14];
    v10 = v21[13];

    return ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(v10, v9, v8, v7, v6, v5, v4, v3);
  }

  else
  {
    v12 = swift_task_alloc();
    v21[23] = v12;
    *v12 = v21[7];
    v12[1] = ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:);
    v13 = v21[20];
    v14 = v21[19];
    v15 = v21[18];
    v16 = v21[17];
    v17 = v21[16];
    v18 = v21[15];
    v19 = v21[14];
    v20 = v21[13];

    return ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(v20, v19, v18, v17, v16, v15, v14, v13);
  }
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 56) = *v2;
  v8 = v7 + 56;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

{
  v7 = *v2;
  *(v7 + 56) = *v2;
  v8 = v7 + 56;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[106] = v8;
  v9[105] = a8;
  v9[104] = a7;
  v9[103] = a6;
  v9[102] = a5;
  v9[101] = a4;
  v9[100] = a3;
  v9[99] = a2;
  v9[98] = a1;
  v9[58] = v9;
  v9[59] = 0;
  v9[60] = 0;
  v9[61] = 0;
  v9[62] = 0;
  v9[63] = 0;
  v9[64] = 0;
  v9[65] = 0;
  v9[66] = 0;
  v9[67] = 0;
  v9[68] = 0;
  v9[73] = 0;
  v9[74] = 0;
  v9[75] = 0;
  v9[76] = 0;
  v9[44] = 0;
  v9[45] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[46] = 0;
  v9[47] = 0;
  v9[80] = 0;
  v9[81] = 0;
  v9[48] = 0;
  v9[49] = 0;
  v9[82] = 0;
  v9[83] = 0;
  v9[84] = 0;
  v9[85] = 0;
  v9[86] = 0;
  v9[50] = 0;
  v9[51] = 0;
  v9[87] = 0;
  v9[88] = 0;
  v9[52] = 0;
  v9[53] = 0;
  v9[89] = 0;
  v9[90] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[91] = 0;
  v9[92] = 0;
  v9[56] = 0;
  v9[57] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9[107] = swift_task_alloc();
  v9[108] = swift_task_alloc();
  v9[109] = swift_task_alloc();
  v9[110] = swift_task_alloc();
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v9[114] = swift_task_alloc();
  v10 = type metadata accessor for TemplatingResult();
  v9[115] = v10;
  v9[116] = *(v10 - 8);
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v9[119] = swift_task_alloc();
  v9[120] = swift_task_alloc();
  v9[121] = swift_task_alloc();
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v9[124] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[125] = v11;
  v9[126] = *(v11 - 8);
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();
  v9[129] = swift_task_alloc();
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v9[133] = swift_task_alloc();
  v9[134] = swift_task_alloc();
  v9[135] = swift_task_alloc();
  v9[136] = swift_task_alloc();
  v9[137] = swift_task_alloc();
  v9[59] = a1;
  v9[60] = a2;
  v9[61] = a3;
  v9[62] = a4;
  v9[63] = v8;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[137];
  v113 = v0[126];
  v114 = v0[125];
  v0[58] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v115 = *(v113 + 16);
  v0[138] = v115;
  v0[139] = (v113 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v115(v1, v2, v114);
  oslog = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  v0[140] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v118 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v116))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v109 = createStorage<A>(capacity:type:)(0, v107, v107);
    v110 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v112 + 752) = buf;
    *(v112 + 760) = v109;
    *(v112 + 768) = v110;
    serialize(_:at:)(0, (v112 + 752));
    serialize(_:at:)(0, (v112 + 752));
    *(v112 + 776) = v118;
    v111 = swift_task_alloc();
    v111[2] = v112 + 752;
    v111[3] = v112 + 760;
    v111[4] = v112 + 768;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v116, "#ConfirmationViewBuilder makePaymentConfirmationWatchViews", buf, 2u);
    destroyStorage<A>(_:count:)(v109, 0, v107);
    destroyStorage<A>(_:count:)(v110, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v104 = *(v112 + 1096);
  v105 = *(v112 + 1000);
  v103 = *(v112 + 1008);
  MEMORY[0x277D82BD8](oslog);
  v106 = *(v103 + 8);
  *(v112 + 1128) = v106;
  *(v112 + 1136) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = v106(v104, v105);
  if (App.isFirstParty.getter(v3))
  {
    v4 = swift_task_alloc();
    *(v112 + 1144) = v4;
    *v4 = *(v112 + 464);
    v4[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v5 = *(v112 + 832);
    v6 = *(v112 + 824);
    v7 = *(v112 + 816);
    v8 = *(v112 + 808);
    v9 = *(v112 + 800);
    v10 = *(v112 + 792);
    v11 = *(v112 + 784);

    return ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(v11, v10, v9, v8, v7, v6, v5);
  }

  type metadata accessor for SASTItemGroup();
  v99 = SAUIAppPunchOut.__allocating_init()();
  *(v112 + 1152) = v99;
  *(v112 + 512) = v99;
  *(v112 + 1160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v99 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  v13 = App.appIdentifier.getter();
  v101 = v13;
  v102 = v14;
  if (v14)
  {
    v97 = *(v112 + 792);
    *(v112 + 448) = v13;
    *(v112 + 456) = v14;
    type metadata accessor for SASTApplicationBannerItem();
    MEMORY[0x277D82BE0](v97);

    *(v112 + 744) = SASTApplicationBannerItem.init(intent:appId:)(v97, v101, v102);
    v98 = [v99 templateItems];
    if (v98)
    {
      v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v98);
      v96 = v95;
    }

    else
    {
      v96 = 0;
    }

    if (!v96)
    {
      return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 247, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    Array.append(_:)();
    v94 = Array._bridgeToObjectiveC()().super.isa;

    [v99 setTemplateItems_];
    MEMORY[0x277D82BD8](v94);
  }

  type metadata accessor for SASTColumnDataListItem();
  v89 = SAUIAppPunchOut.__allocating_init()();
  *(v112 + 1168) = v89;
  *(v112 + 520) = v89;
  v90 = SAUIAppPunchOut.__allocating_init()();
  *(v112 + 1176) = v90;
  *(v112 + 528) = v90;
  v91 = SAUIAppPunchOut.__allocating_init()();
  *(v112 + 1184) = v91;
  *(v112 + 536) = v91;
  v92 = SAUIAppPunchOut.__allocating_init()();
  *(v112 + 1192) = v92;
  *(v112 + 544) = v92;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v93 = v15;
  *(v112 + 1200) = v15;
  if (v15)
  {
    MEMORY[0x277D82BE0](v15);
    *(v112 + 672) = v93;
    *(v112 + 1208) = type metadata accessor for SAUIDecoratedText();
    v87 = SAUIAppPunchOut.__allocating_init()();
    *(v112 + 1216) = v87;
    *(v112 + 680) = v87;
    v16 = [v93 payer];
    v88 = v16;
    if (v16)
    {
      v82 = [v16 displayName];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v17;
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v82);
      v85 = v83;
      v86 = v84;
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }

    if (v86)
    {
      v80 = MEMORY[0x26D620690](v85);

      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v76 = *(v112 + 912);
    v75 = *(v112 + 848);
    [v87 setText_];
    MEMORY[0x277D82BD8](v81);
    v18 = SAUIAppPunchOut.__allocating_init()();
    *(v112 + 1224) = v18;
    *(v112 + 688) = v18;
    outlined init with copy of GlobalsProviding(v75 + 80, v112 + 176);
    v77 = *(v112 + 200);
    v78 = *(v112 + 208);
    __swift_project_boxed_opaque_existential_1((v112 + 176), v77);
    RequestPaymentSlots.rawValue.getter(0);
    String.toSpeakableString.getter();

    v19 = type metadata accessor for SpeakableString();
    *(v112 + 1232) = v19;
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    *(v112 + 1240) = v21;
    *(v112 + 1248) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v21(v76, 0, 1);
    v79 = (*(v78 + 16) + **(v78 + 16));
    v22 = swift_task_alloc();
    v23 = v77;
    v24 = v78;
    v25 = v79;
    *(v112 + 1256) = v22;
    *v22 = *(v112 + 464);
    v22[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v26 = *(v112 + 992);
    v27 = *(v112 + 912);

    return v25(v26, v27, v23, v24);
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  v74 = v28;
  *(v112 + 1408) = v28;
  if (v28)
  {
    MEMORY[0x277D82BE0](v28);
    *(v112 + 584) = v74;
    *(v112 + 1416) = type metadata accessor for SAUIDecoratedText();
    v72 = SAUIAppPunchOut.__allocating_init()();
    *(v112 + 1424) = v72;
    *(v112 + 592) = v72;
    v29 = [v74 payee];
    v73 = v29;
    if (v29)
    {
      v67 = [v29 displayName];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v30;
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v67);
      v70 = v68;
      v71 = v69;
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    if (v71)
    {
      v65 = MEMORY[0x26D620690](v70);

      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v61 = *(v112 + 880);
    v60 = *(v112 + 848);
    [v72 setText_];
    MEMORY[0x277D82BD8](v66);
    v31 = SAUIAppPunchOut.__allocating_init()();
    *(v112 + 1432) = v31;
    *(v112 + 600) = v31;
    outlined init with copy of GlobalsProviding(v60 + 80, v112 + 16);
    v62 = *(v112 + 40);
    v63 = *(v112 + 48);
    __swift_project_boxed_opaque_existential_1((v112 + 16), v62);
    SendPaymentSlots.rawValue.getter(0);
    String.toSpeakableString.getter();

    v32 = type metadata accessor for SpeakableString();
    *(v112 + 1440) = v32;
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    *(v112 + 1448) = v34;
    *(v112 + 1456) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v34(v61, 0, 1);
    v64 = (*(v63 + 16) + **(v63 + 16));
    v35 = swift_task_alloc();
    v23 = v62;
    v24 = v63;
    v25 = v64;
    *(v112 + 1464) = v35;
    *v35 = *(v112 + 464);
    v35[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v26 = *(v112 + 960);
    v27 = *(v112 + 880);

    return v25(v26, v27, v23, v24);
  }

  v36 = *(v112 + 1024);
  v56 = *(v112 + 1000);
  v37 = Logger.payments.unsafeMutableAddressor();
  v115(v36, v37, v56);
  log = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  v59 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v57))
  {
    v52 = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(0, v51, v51);
    v54 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v112 + 552) = v52;
    *(v112 + 560) = v53;
    *(v112 + 568) = v54;
    serialize(_:at:)(0, (v112 + 552));
    serialize(_:at:)(0, (v112 + 552));
    *(v112 + 576) = v59;
    v55 = swift_task_alloc();
    v55[2] = v112 + 552;
    v55[3] = v112 + 560;
    v55[4] = v112 + 568;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, log, v57, "#ConfirmationViewBuilder makePaymentConfirmationView (Watch) encountered unexpected intent type", v52, 2u);
    destroyStorage<A>(_:count:)(v53, 0, v51);
    destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v52, MEMORY[0x277D84B78]);
  }

  v45 = *(v112 + 1024);
  v46 = *(v112 + 1000);
  MEMORY[0x277D82BD8](log);
  v106(v45, v46);
  *(v112 + 336) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v112 + 344) = v38;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  ObjectType = swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)(ObjectType);
  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v41);

  v48 = *(v112 + 336);
  v47 = *(v112 + 344);

  outlined destroy of String.UTF8View(v112 + 336);
  v50 = MEMORY[0x26D620710](v48, v47);
  v49 = v42;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v43 = v50;
  *(v43 + 8) = v49;
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  *(v43 + 48) = 4;
  swift_willThrow();
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v99);

  v44 = *(*(v112 + 464) + 8);

  return v44();
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1264) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 896));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v209 = v0;
  v185 = v0[153];
  v187 = v0[152];
  v184 = v0[124];
  v182 = v0[116];
  v183 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v186 = MEMORY[0x26D620690](v1);
  v2 = *(v182 + 8);
  v0[159] = v2;
  v0[160] = (v182 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v184, v183);

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  [v185 setText_];
  MEMORY[0x277D82BD8](v186);
  v188 = [v187 text];
  if (v188)
  {
    v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v3;
    MEMORY[0x277D82BD8](v188);
    v179 = v177;
    v180 = v178;
  }

  else
  {
    v179 = 0;
    v180 = 0;
  }

  v176 = Optional<A>.isNilOrEmpty.getter(v179, v180);

  if (v176)
  {
    v175 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v174 = *(v181 + 1216);
    _allocateUninitializedArray<A>(_:)();
    v173 = v4;
    MEMORY[0x277D82BE0](v174);
    *v173 = v174;
    _finalizeUninitializedArray<A>(_:)();
    v175 = v5;
  }

  if (v175)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v172 = isa;
  }

  else
  {
    v172 = 0;
  }

  v159 = *(v181 + 1224);
  v162 = *(v181 + 1216);
  v158 = *(v181 + 1168);
  v161 = *(v181 + 1104);
  v6 = *(v181 + 1088);
  v160 = *(v181 + 1000);
  [v158 setDecoratedRows_];
  MEMORY[0x277D82BD8](v172);
  MEMORY[0x277D82BE0](v159);
  [v158 setTitle_];
  MEMORY[0x277D82BD8](v159);
  v7 = Logger.payments.unsafeMutableAddressor();
  v161(v6, v7, v160);
  MEMORY[0x277D82BE0](v162);
  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  oslog = Logger.logObject.getter();
  v170 = static os_log_type_t.debug.getter();
  v165 = swift_allocObject();
  *(v165 + 16) = 32;
  v166 = swift_allocObject();
  *(v166 + 16) = 8;
  v164 = swift_allocObject();
  *(v164 + 16) = partial apply for implicit closure #5 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v164 + 24) = v163;
  v167 = swift_allocObject();
  *(v167 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v167 + 24) = v164;
  _allocateUninitializedArray<A>(_:)();
  v168 = v8;

  *v168 = partial apply for closure #1 in OSLogArguments.append(_:);
  v168[1] = v165;

  v168[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v168[3] = v166;

  v168[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v168[5] = v167;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v170))
  {
    v9 = *(v181 + 1264);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v156 = createStorage<A>(capacity:type:)(0, v154, v154);
    v157 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v204 = buf;
    v205 = v156;
    v206 = v157;
    serialize(_:at:)(2, &v204);
    serialize(_:at:)(1, &v204);
    v207 = partial apply for closure #1 in OSLogArguments.append(_:);
    v208 = v165;
    closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
    if (v9)
    {
    }

    v207 = partial apply for closure #1 in OSLogArguments.append(_:);
    v208 = v166;
    closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
    v207 = partial apply for closure #1 in OSLogArguments.append(_:);
    v208 = v167;
    closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
    _os_log_impl(&dword_2686B1000, oslog, v170, "Placing payer into request person label %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v156, 0, v154);
    destroyStorage<A>(_:count:)(v157, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

    v153 = 0;
  }

  else
  {

    v153 = *(v181 + 1264);
  }

  v151 = *(v181 + 1200);
  v150 = *(v181 + 1128);
  v148 = *(v181 + 1088);
  v149 = *(v181 + 1000);
  MEMORY[0x277D82BD8](oslog);
  v150(v148, v149);
  v152 = [v151 currencyAmount];
  if (v152)
  {
    v142 = INCurrencyAmount.formattedString.getter();
    v143 = v11;
    MEMORY[0x277D82BD8](v152);
    v144 = Optional<A>.emptyToNil.getter(v142, v143);
    v145 = v12;

    v146 = v144;
    v147 = v145;
  }

  else
  {
    v146 = 0;
    v147 = 0;
  }

  *(v181 + 1288) = v147;
  if (v147)
  {
    v133 = *(v181 + 1104);
    v13 = *(v181 + 1080);
    v132 = *(v181 + 1000);
    *(v181 + 432) = v146;
    *(v181 + 440) = v147;
    v14 = Logger.payments.unsafeMutableAddressor();
    v133(v13, v14, v132);

    v134 = swift_allocObject();
    *(v134 + 16) = v146;
    *(v134 + 24) = v147;
    log = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    v136 = swift_allocObject();
    *(v136 + 16) = 32;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v135 = swift_allocObject();
    *(v135 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v135 + 24) = v134;
    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v138 + 24) = v135;
    _allocateUninitializedArray<A>(_:)();
    v139 = v15;

    *v139 = partial apply for closure #1 in OSLogArguments.append(_:);
    v139[1] = v136;

    v139[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v139[3] = v137;

    v139[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v139[5] = v138;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v141))
    {
      v128 = static UnsafeMutablePointer.allocate(capacity:)();
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v129 = createStorage<A>(capacity:type:)(0, v127, v127);
      v130 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v199 = v128;
      v200 = v129;
      v201 = v130;
      serialize(_:at:)(2, &v199);
      serialize(_:at:)(1, &v199);
      v202 = partial apply for closure #1 in OSLogArguments.append(_:);
      v203 = v136;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      if (v153)
      {
      }

      v202 = partial apply for closure #1 in OSLogArguments.append(_:);
      v203 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      v202 = partial apply for closure #1 in OSLogArguments.append(_:);
      v203 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      _os_log_impl(&dword_2686B1000, log, v141, "Placing amount into request amount label %s", v128, 0xCu);
      destroyStorage<A>(_:count:)(v129, 0, v127);
      destroyStorage<A>(_:count:)(v130, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v128, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v123 = *(v181 + 1240);
    v122 = *(v181 + 1232);
    v117 = *(v181 + 1128);
    v115 = *(v181 + 1080);
    v116 = *(v181 + 1000);
    v121 = *(v181 + 904);
    v120 = *(v181 + 848);
    MEMORY[0x277D82BD8](log);
    v117(v115, v116);
    v118 = SAUIAppPunchOut.__allocating_init()();
    *(v181 + 1296) = v118;
    *(v181 + 728) = v118;

    v119 = MEMORY[0x26D620690](v146, v147);

    [v118 setText_];
    MEMORY[0x277D82BD8](v119);
    v17 = SAUIAppPunchOut.__allocating_init()();
    *(v181 + 1304) = v17;
    *(v181 + 736) = v17;
    outlined init with copy of GlobalsProviding(v120 + 80, v181 + 296);
    v124 = *(v181 + 320);
    v125 = *(v181 + 328);
    __swift_project_boxed_opaque_existential_1((v181 + 296), v124);
    RequestPaymentSlots.rawValue.getter(1);
    String.toSpeakableString.getter();

    v123(v121, 0, 1, v122);
    v126 = (*(v125 + 16) + **(v125 + 16));
    v18 = swift_task_alloc();
    *(v181 + 1312) = v18;
    *v18 = *(v181 + 464);
    v18[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v19 = *(v181 + 984);
    v20 = *(v181 + 904);

    return v126(v19, v20, v124, v125);
  }

  else
  {
    v16 = (*(*(v181 + 840) + 8))(*(v181 + 824));
    v131 = v16;
    if (v16 && (v114 = [v16 feeAmount], MEMORY[0x277D82BD8](v131), v114))
    {
      v108 = INCurrencyAmount.formattedString.getter();
      v109 = v21;
      MEMORY[0x277D82BD8](v114);
      v110 = Optional<A>.emptyToNil.getter(v108, v109);
      v111 = v22;

      v112 = v110;
      v113 = v111;
    }

    else
    {
      v112 = 0;
      v113 = 0;
    }

    *(v181 + 1328) = v113;
    if (v113)
    {
      v99 = *(v181 + 1104);
      v23 = *(v181 + 1072);
      v98 = *(v181 + 1000);
      *(v181 + 416) = v112;
      *(v181 + 424) = v113;
      v24 = Logger.payments.unsafeMutableAddressor();
      v99(v23, v24, v98);

      v100 = swift_allocObject();
      *(v100 + 16) = v112;
      *(v100 + 24) = v113;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      v102 = swift_allocObject();
      *(v102 + 16) = 32;
      v103 = swift_allocObject();
      *(v103 + 16) = 8;
      v101 = swift_allocObject();
      *(v101 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v101 + 24) = v100;
      v104 = swift_allocObject();
      *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v104 + 24) = v101;
      _allocateUninitializedArray<A>(_:)();
      v105 = v25;

      *v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105[1] = v102;

      v105[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v105[3] = v103;

      v105[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v105[5] = v104;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v106, v107))
      {
        v94 = static UnsafeMutablePointer.allocate(capacity:)();
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v95 = createStorage<A>(capacity:type:)(0, v93, v93);
        v96 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v194 = v94;
        v195 = v95;
        v196 = v96;
        serialize(_:at:)(2, &v194);
        serialize(_:at:)(1, &v194);
        v197 = partial apply for closure #1 in OSLogArguments.append(_:);
        v198 = v102;
        closure #1 in osLogInternal(_:log:type:)(&v197, &v194, &v195, &v196);
        if (v153)
        {
        }

        v197 = partial apply for closure #1 in OSLogArguments.append(_:);
        v198 = v103;
        closure #1 in osLogInternal(_:log:type:)(&v197, &v194, &v195, &v196);
        v197 = partial apply for closure #1 in OSLogArguments.append(_:);
        v198 = v104;
        closure #1 in osLogInternal(_:log:type:)(&v197, &v194, &v195, &v196);
        _os_log_impl(&dword_2686B1000, v106, v107, "Placing fee into request fee label %s", v94, 0xCu);
        destroyStorage<A>(_:count:)(v95, 0, v93);
        destroyStorage<A>(_:count:)(v96, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v94, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v89 = *(v181 + 1240);
      v88 = *(v181 + 1232);
      v83 = *(v181 + 1128);
      v81 = *(v181 + 1072);
      v82 = *(v181 + 1000);
      v87 = *(v181 + 896);
      v86 = *(v181 + 848);
      MEMORY[0x277D82BD8](v106);
      v83(v81, v82);
      v84 = SAUIAppPunchOut.__allocating_init()();
      *(v181 + 1336) = v84;
      *(v181 + 712) = v84;

      v85 = MEMORY[0x26D620690](v112, v113);

      [v84 setText_];
      MEMORY[0x277D82BD8](v85);
      v26 = SAUIAppPunchOut.__allocating_init()();
      *(v181 + 1344) = v26;
      *(v181 + 720) = v26;
      outlined init with copy of GlobalsProviding(v86 + 80, v181 + 256);
      v90 = *(v181 + 280);
      v91 = *(v181 + 288);
      __swift_project_boxed_opaque_existential_1((v181 + 256), v90);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
      String.toSpeakableString.getter();

      v89(v87, 0, 1, v88);
      v92 = (*(v91 + 16) + **(v91 + 16));
      v27 = swift_task_alloc();
      *(v181 + 1352) = v27;
      *v27 = *(v181 + 464);
      v27[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v28 = *(v181 + 976);
      v29 = *(v181 + 896);

      return v92(v28, v29, v90, v91);
    }

    else
    {
      v97 = [*(v181 + 1200) note];
      if (v97)
      {
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v30;
        MEMORY[0x277D82BD8](v97);
        v79 = v77;
        v80 = v78;
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      v75 = Optional<A>.emptyToNil.getter(v79, v80);
      v76 = v31;
      *(v181 + 1368) = v31;
      if (v31)
      {
        v66 = *(v181 + 1104);
        v32 = *(v181 + 1064);
        v65 = *(v181 + 1000);
        *(v181 + 400) = v75;
        *(v181 + 408) = v31;

        v33 = Logger.payments.unsafeMutableAddressor();
        v66(v32, v33, v65);

        v67 = swift_allocObject();
        *(v67 + 16) = v75;
        *(v67 + 24) = v76;
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.debug.getter();
        v69 = swift_allocObject();
        *(v69 + 16) = 32;
        v70 = swift_allocObject();
        *(v70 + 16) = 8;
        v68 = swift_allocObject();
        *(v68 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v68 + 24) = v67;
        v71 = swift_allocObject();
        *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v71 + 24) = v68;
        _allocateUninitializedArray<A>(_:)();
        v72 = v34;

        *v72 = partial apply for closure #1 in OSLogArguments.append(_:);
        v72[1] = v69;

        v72[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v72[3] = v70;

        v72[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v72[5] = v71;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v73, v74))
        {
          v56 = static UnsafeMutablePointer.allocate(capacity:)();
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v57 = createStorage<A>(capacity:type:)(0, v55, v55);
          v58 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v189 = v56;
          v190 = v57;
          v191 = v58;
          serialize(_:at:)(2, &v189);
          serialize(_:at:)(1, &v189);
          v192 = partial apply for closure #1 in OSLogArguments.append(_:);
          v193 = v69;
          closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
          if (v153)
          {
          }

          v192 = partial apply for closure #1 in OSLogArguments.append(_:);
          v193 = v70;
          closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
          v192 = partial apply for closure #1 in OSLogArguments.append(_:);
          v193 = v71;
          closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
          _os_log_impl(&dword_2686B1000, v73, v74, "Placing note into request note label %s", v56, 0xCu);
          destroyStorage<A>(_:count:)(v57, 0, v55);
          destroyStorage<A>(_:count:)(v58, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v51 = *(v181 + 1240);
        v50 = *(v181 + 1232);
        v45 = *(v181 + 1128);
        v43 = *(v181 + 1064);
        v44 = *(v181 + 1000);
        v49 = *(v181 + 888);
        v48 = *(v181 + 848);
        MEMORY[0x277D82BD8](v73);
        v45(v43, v44);
        v46 = SAUIAppPunchOut.__allocating_init()();
        *(v181 + 1376) = v46;
        *(v181 + 696) = v46;

        v47 = MEMORY[0x26D620690](v75, v76);

        [v46 setText_];
        MEMORY[0x277D82BD8](v47);
        v39 = SAUIAppPunchOut.__allocating_init()();
        *(v181 + 1384) = v39;
        *(v181 + 704) = v39;
        outlined init with copy of GlobalsProviding(v48 + 80, v181 + 216);
        v52 = *(v181 + 240);
        v53 = *(v181 + 248);
        __swift_project_boxed_opaque_existential_1((v181 + 216), v52);
        RequestPaymentSlots.rawValue.getter(2);
        String.toSpeakableString.getter();

        v51(v49, 0, 1, v50);
        v54 = (*(v53 + 16) + **(v53 + 16));
        v40 = swift_task_alloc();
        *(v181 + 1392) = v40;
        *v40 = *(v181 + 464);
        v40[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v41 = *(v181 + 968);
        v42 = *(v181 + 888);

        return v54(v41, v42, v52, v53);
      }

      else
      {

        v59 = *(v181 + 1216);
        v60 = *(v181 + 1200);
        MEMORY[0x277D82BD8](*(v181 + 1224));
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v60);
        v64 = *(v181 + 1192);
        v63 = *(v181 + 1184);
        v62 = *(v181 + 1176);
        v61 = *(v181 + 1168);
        MEMORY[0x277D82BE0](v61);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v61, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v62);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v62, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v63);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v63, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v64);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v64, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        v35 = swift_task_alloc();
        *(v181 + 1616) = v35;
        *v35 = *(v181 + 464);
        v35[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v36 = *(v181 + 808);
        v37 = *(v181 + 792);
        v38 = *(v181 + 784);

        return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v38, v37, v36);
      }
    }
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1320) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 888));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v121 = v0;
  v106 = v0[163];
  v107 = v0[162];
  v100 = v0[159];
  v105 = v0[147];
  v101 = v0[123];
  v99 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v102 = MEMORY[0x26D620690](v1);
  v100(v101, v99);

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  [v106 setText_];
  MEMORY[0x277D82BD8](v102);
  _allocateUninitializedArray<A>(_:)();
  v103 = v2;
  MEMORY[0x277D82BE0](v107);
  *v103 = v107;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v105 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v106);
  [v105 setTitle_];
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);

  v109 = *(v108 + 1320);
  v3 = (*(*(v108 + 840) + 8))(*(v108 + 824));
  v110 = v3;
  if (v3 && (v98 = [v3 feeAmount], MEMORY[0x277D82BD8](v110), v98))
  {
    v92 = INCurrencyAmount.formattedString.getter();
    v93 = v4;
    MEMORY[0x277D82BD8](v98);
    v94 = Optional<A>.emptyToNil.getter(v92, v93);
    v95 = v5;

    v96 = v94;
    v97 = v95;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  *(v108 + 1328) = v97;
  if (v97)
  {
    v83 = *(v108 + 1104);
    v6 = *(v108 + 1072);
    v82 = *(v108 + 1000);
    *(v108 + 416) = v96;
    *(v108 + 424) = v97;
    v7 = Logger.payments.unsafeMutableAddressor();
    v83(v6, v7, v82);

    v84 = swift_allocObject();
    *(v84 + 16) = v96;
    *(v84 + 24) = v97;
    oslog = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v86 = swift_allocObject();
    *(v86 + 16) = 32;
    v87 = swift_allocObject();
    *(v87 + 16) = 8;
    v85 = swift_allocObject();
    *(v85 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v85 + 24) = v84;
    v88 = swift_allocObject();
    *(v88 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v88 + 24) = v85;
    _allocateUninitializedArray<A>(_:)();
    v89 = v8;

    *v89 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89[1] = v86;

    v89[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v89[3] = v87;

    v89[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v89[5] = v88;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v91))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = createStorage<A>(capacity:type:)(0, v77, v77);
      v80 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v116 = buf;
      v117 = v79;
      v118 = v80;
      serialize(_:at:)(2, &v116);
      serialize(_:at:)(1, &v116);
      v119 = partial apply for closure #1 in OSLogArguments.append(_:);
      v120 = v86;
      closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
      if (v109)
      {
      }

      v119 = partial apply for closure #1 in OSLogArguments.append(_:);
      v120 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
      v119 = partial apply for closure #1 in OSLogArguments.append(_:);
      v120 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
      _os_log_impl(&dword_2686B1000, oslog, v91, "Placing fee into request fee label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v79, 0, v77);
      destroyStorage<A>(_:count:)(v80, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v73 = *(v108 + 1240);
    v72 = *(v108 + 1232);
    v67 = *(v108 + 1128);
    v65 = *(v108 + 1072);
    v66 = *(v108 + 1000);
    v71 = *(v108 + 896);
    v70 = *(v108 + 848);
    MEMORY[0x277D82BD8](oslog);
    v67(v65, v66);
    v68 = SAUIAppPunchOut.__allocating_init()();
    *(v108 + 1336) = v68;
    *(v108 + 712) = v68;

    v69 = MEMORY[0x26D620690](v96, v97);

    [v68 setText_];
    MEMORY[0x277D82BD8](v69);
    v10 = SAUIAppPunchOut.__allocating_init()();
    *(v108 + 1344) = v10;
    *(v108 + 720) = v10;
    outlined init with copy of GlobalsProviding(v70 + 80, v108 + 256);
    v74 = *(v108 + 280);
    v75 = *(v108 + 288);
    __swift_project_boxed_opaque_existential_1((v108 + 256), v74);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v73(v71, 0, 1, v72);
    v76 = (*(v75 + 16) + **(v75 + 16));
    v11 = swift_task_alloc();
    *(v108 + 1352) = v11;
    *v11 = *(v108 + 464);
    v11[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v12 = *(v108 + 976);
    v13 = *(v108 + 896);

    return v76(v12, v13, v74, v75);
  }

  else
  {
    v81 = [*(v108 + 1200) note];
    if (v81)
    {
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v14;
      MEMORY[0x277D82BD8](v81);
      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v59 = Optional<A>.emptyToNil.getter(v63, v64);
    v60 = v15;
    *(v108 + 1368) = v15;
    if (v15)
    {
      v50 = *(v108 + 1104);
      v16 = *(v108 + 1064);
      v49 = *(v108 + 1000);
      *(v108 + 400) = v59;
      *(v108 + 408) = v15;

      v17 = Logger.payments.unsafeMutableAddressor();
      v50(v16, v17, v49);

      v51 = swift_allocObject();
      *(v51 + 16) = v59;
      *(v51 + 24) = v60;
      log = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      v53 = swift_allocObject();
      *(v53 + 16) = 32;
      v54 = swift_allocObject();
      *(v54 + 16) = 8;
      v52 = swift_allocObject();
      *(v52 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      *(v52 + 24) = v51;
      v55 = swift_allocObject();
      *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v55 + 24) = v52;
      _allocateUninitializedArray<A>(_:)();
      v56 = v18;

      *v56 = partial apply for closure #1 in OSLogArguments.append(_:);
      v56[1] = v53;

      v56[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v56[3] = v54;

      v56[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v56[5] = v55;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v58))
      {
        v40 = static UnsafeMutablePointer.allocate(capacity:)();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v41 = createStorage<A>(capacity:type:)(0, v39, v39);
        v42 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v111 = v40;
        v112 = v41;
        v113 = v42;
        serialize(_:at:)(2, &v111);
        serialize(_:at:)(1, &v111);
        v114 = partial apply for closure #1 in OSLogArguments.append(_:);
        v115 = v53;
        closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
        if (v109)
        {
        }

        v114 = partial apply for closure #1 in OSLogArguments.append(_:);
        v115 = v54;
        closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
        v114 = partial apply for closure #1 in OSLogArguments.append(_:);
        v115 = v55;
        closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
        _os_log_impl(&dword_2686B1000, log, v58, "Placing note into request note label %s", v40, 0xCu);
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v40, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v35 = *(v108 + 1240);
      v34 = *(v108 + 1232);
      v29 = *(v108 + 1128);
      v27 = *(v108 + 1064);
      v28 = *(v108 + 1000);
      v33 = *(v108 + 888);
      v32 = *(v108 + 848);
      MEMORY[0x277D82BD8](log);
      v29(v27, v28);
      v30 = SAUIAppPunchOut.__allocating_init()();
      *(v108 + 1376) = v30;
      *(v108 + 696) = v30;

      v31 = MEMORY[0x26D620690](v59, v60);

      [v30 setText_];
      MEMORY[0x277D82BD8](v31);
      v23 = SAUIAppPunchOut.__allocating_init()();
      *(v108 + 1384) = v23;
      *(v108 + 704) = v23;
      outlined init with copy of GlobalsProviding(v32 + 80, v108 + 216);
      v36 = *(v108 + 240);
      v37 = *(v108 + 248);
      __swift_project_boxed_opaque_existential_1((v108 + 216), v36);
      RequestPaymentSlots.rawValue.getter(2);
      String.toSpeakableString.getter();

      v35(v33, 0, 1, v34);
      v38 = (*(v37 + 16) + **(v37 + 16));
      v24 = swift_task_alloc();
      *(v108 + 1392) = v24;
      *v24 = *(v108 + 464);
      v24[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v25 = *(v108 + 968);
      v26 = *(v108 + 888);

      return v38(v25, v26, v36, v37);
    }

    else
    {

      v43 = *(v108 + 1216);
      v44 = *(v108 + 1200);
      MEMORY[0x277D82BD8](*(v108 + 1224));
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      v48 = *(v108 + 1192);
      v47 = *(v108 + 1184);
      v46 = *(v108 + 1176);
      v45 = *(v108 + 1168);
      MEMORY[0x277D82BE0](v45);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v45, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v46);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v46, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v47);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v47, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v48);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v48, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      v19 = swift_task_alloc();
      *(v108 + 1616) = v19;
      *v19 = *(v108 + 464);
      v19[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v20 = *(v108 + 808);
      v21 = *(v108 + 792);
      v22 = *(v108 + 784);

      return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v22, v21, v20);
    }
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1360) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 880));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v72 = v0;
  v62 = v0[168];
  v63 = v0[167];
  v56 = v0[159];
  v61 = v0[148];
  v57 = v0[122];
  v55 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v58 = MEMORY[0x26D620690](v1);
  v56(v57, v55);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  [v62 setText_];
  MEMORY[0x277D82BD8](v58);
  _allocateUninitializedArray<A>(_:)();
  v59 = v2;
  MEMORY[0x277D82BE0](v63);
  *v59 = v63;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v61 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v62);
  [v61 setTitle_];
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);

  v65 = *(v64 + 1360);
  v66 = [*(v64 + 1200) note];
  if (v66)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v3;
    MEMORY[0x277D82BD8](v66);
    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v49 = Optional<A>.emptyToNil.getter(v53, v54);
  v50 = v4;
  *(v64 + 1368) = v4;
  if (v4)
  {
    v40 = *(v64 + 1104);
    v5 = *(v64 + 1064);
    v39 = *(v64 + 1000);
    *(v64 + 400) = v49;
    *(v64 + 408) = v4;

    v6 = Logger.payments.unsafeMutableAddressor();
    v40(v5, v6, v39);

    v41 = swift_allocObject();
    *(v41 + 16) = v49;
    *(v41 + 24) = v50;
    oslog = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v42 + 24) = v41;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v45 + 24) = v42;
    _allocateUninitializedArray<A>(_:)();
    v46 = v7;

    *v46 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[1] = v43;

    v46[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[3] = v44;

    v46[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[5] = v45;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v48))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v67 = buf;
      v68 = v31;
      v69 = v32;
      serialize(_:at:)(2, &v67);
      serialize(_:at:)(1, &v67);
      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      if (v65)
      {
      }

      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      _os_log_impl(&dword_2686B1000, oslog, v48, "Placing note into request note label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v25 = *(v64 + 1240);
    v24 = *(v64 + 1232);
    v19 = *(v64 + 1128);
    v17 = *(v64 + 1064);
    v18 = *(v64 + 1000);
    v23 = *(v64 + 888);
    v22 = *(v64 + 848);
    MEMORY[0x277D82BD8](oslog);
    v19(v17, v18);
    v20 = SAUIAppPunchOut.__allocating_init()();
    *(v64 + 1376) = v20;
    *(v64 + 696) = v20;

    v21 = MEMORY[0x26D620690](v49, v50);

    [v20 setText_];
    MEMORY[0x277D82BD8](v21);
    v13 = SAUIAppPunchOut.__allocating_init()();
    *(v64 + 1384) = v13;
    *(v64 + 704) = v13;
    outlined init with copy of GlobalsProviding(v22 + 80, v64 + 216);
    v26 = *(v64 + 240);
    v27 = *(v64 + 248);
    __swift_project_boxed_opaque_existential_1((v64 + 216), v26);
    RequestPaymentSlots.rawValue.getter(2);
    String.toSpeakableString.getter();

    v25(v23, 0, 1, v24);
    v28 = (*(v27 + 16) + **(v27 + 16));
    v14 = swift_task_alloc();
    *(v64 + 1392) = v14;
    *v14 = *(v64 + 464);
    v14[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v15 = *(v64 + 968);
    v16 = *(v64 + 888);

    return v28(v15, v16, v26, v27);
  }

  else
  {

    v33 = *(v64 + 1216);
    v34 = *(v64 + 1200);
    MEMORY[0x277D82BD8](*(v64 + 1224));
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    v38 = *(v64 + 1192);
    v37 = *(v64 + 1184);
    v36 = *(v64 + 1176);
    v35 = *(v64 + 1168);
    MEMORY[0x277D82BE0](v35);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v35, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v36);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v36, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v37);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v37, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v38);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v38, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    v8 = swift_task_alloc();
    *(v64 + 1616) = v8;
    *v8 = *(v64 + 464);
    v8[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v9 = *(v64 + 808);
    v10 = *(v64 + 792);
    v11 = *(v64 + 784);

    return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v11, v10, v9);
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1400) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 872));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v15 = v0[173];
  v16 = v0[172];
  v9 = v0[159];
  v14 = v0[149];
  v10 = v0[121];
  v8 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v11 = MEMORY[0x26D620690](v1);
  v9(v10, v8);

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  [v15 setText_];
  MEMORY[0x277D82BD8](v11);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  MEMORY[0x277D82BE0](v16);
  *v12 = v16;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v15);
  [v14 setTitle_];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v17 = v0[152];
  v18 = v0[150];
  MEMORY[0x277D82BD8](v0[153]);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v22 = v0[149];
  v21 = v0[148];
  v20 = v0[147];
  v19 = v0[146];
  MEMORY[0x277D82BE0](v19);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v19, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v20);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v20, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v21);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v21, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v22);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v22, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v23[202] = v3;
  *v3 = v23[58];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v23[101];
  v5 = v23[99];
  v6 = v23[98];

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v6, v5, v4);
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1472) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 864));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v227 = v0;
  v203 = v0[179];
  v205 = v0[178];
  v202 = v0[120];
  v200 = v0[116];
  v201 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v204 = MEMORY[0x26D620690](v1);
  v2 = *(v200 + 8);
  v0[185] = v2;
  v0[186] = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v202, v201);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v203 setText_];
  MEMORY[0x277D82BD8](v204);
  v206 = [v205 text];
  if (v206)
  {
    v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v196 = v3;
    MEMORY[0x277D82BD8](v206);
    v197 = v195;
    v198 = v196;
  }

  else
  {
    v197 = 0;
    v198 = 0;
  }

  v194 = Optional<A>.isNilOrEmpty.getter(v197, v198);

  if (v194)
  {
    v193 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v192 = *(v199 + 1424);
    _allocateUninitializedArray<A>(_:)();
    v191 = v4;
    MEMORY[0x277D82BE0](v192);
    *v191 = v192;
    _finalizeUninitializedArray<A>(_:)();
    v193 = v5;
  }

  if (v193)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v190 = isa;
  }

  else
  {
    v190 = 0;
  }

  v177 = *(v199 + 1432);
  v180 = *(v199 + 1424);
  v176 = *(v199 + 1168);
  v179 = *(v199 + 1104);
  v6 = *(v199 + 1056);
  v178 = *(v199 + 1000);
  [v176 setDecoratedRows_];
  MEMORY[0x277D82BD8](v190);
  MEMORY[0x277D82BE0](v177);
  [v176 setTitle_];
  MEMORY[0x277D82BD8](v177);
  v7 = Logger.payments.unsafeMutableAddressor();
  v179(v6, v7, v178);
  MEMORY[0x277D82BE0](v180);
  v181 = swift_allocObject();
  *(v181 + 16) = v180;
  oslog = Logger.logObject.getter();
  v188 = static os_log_type_t.debug.getter();
  v183 = swift_allocObject();
  *(v183 + 16) = 32;
  v184 = swift_allocObject();
  *(v184 + 16) = 8;
  v182 = swift_allocObject();
  *(v182 + 16) = partial apply for implicit closure #5 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v182 + 24) = v181;
  v185 = swift_allocObject();
  *(v185 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v185 + 24) = v182;
  _allocateUninitializedArray<A>(_:)();
  v186 = v8;

  *v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v186[1] = v183;

  v186[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v186[3] = v184;

  v186[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v186[5] = v185;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v188))
  {
    v9 = *(v199 + 1472);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v174 = createStorage<A>(capacity:type:)(0, v172, v172);
    v175 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v222 = buf;
    v223 = v174;
    v224 = v175;
    serialize(_:at:)(2, &v222);
    serialize(_:at:)(1, &v222);
    v225 = partial apply for closure #1 in OSLogArguments.append(_:);
    v226 = v183;
    closure #1 in osLogInternal(_:log:type:)(&v225, &v222, &v223, &v224);
    if (v9)
    {
    }

    v225 = partial apply for closure #1 in OSLogArguments.append(_:);
    v226 = v184;
    closure #1 in osLogInternal(_:log:type:)(&v225, &v222, &v223, &v224);
    v225 = partial apply for closure #1 in OSLogArguments.append(_:);
    v226 = v185;
    closure #1 in osLogInternal(_:log:type:)(&v225, &v222, &v223, &v224);
    _os_log_impl(&dword_2686B1000, oslog, v188, "Placing payee into send person label %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v174, 0, v172);
    destroyStorage<A>(_:count:)(v175, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

    v171 = 0;
  }

  else
  {

    v171 = *(v199 + 1472);
  }

  v169 = *(v199 + 1408);
  v168 = *(v199 + 1128);
  v166 = *(v199 + 1056);
  v167 = *(v199 + 1000);
  MEMORY[0x277D82BD8](oslog);
  v168(v166, v167);
  v170 = [v169 currencyAmount];
  if (v170)
  {
    v160 = INCurrencyAmount.formattedString.getter();
    v161 = v11;
    MEMORY[0x277D82BD8](v170);
    v162 = Optional<A>.emptyToNil.getter(v160, v161);
    v163 = v12;

    v164 = v162;
    v165 = v163;
  }

  else
  {
    v164 = 0;
    v165 = 0;
  }

  *(v199 + 1496) = v165;
  if (v165)
  {
    v151 = *(v199 + 1104);
    v13 = *(v199 + 1048);
    v150 = *(v199 + 1000);
    *(v199 + 384) = v164;
    *(v199 + 392) = v165;
    v14 = Logger.payments.unsafeMutableAddressor();
    v151(v13, v14, v150);

    v152 = swift_allocObject();
    *(v152 + 16) = v164;
    *(v152 + 24) = v165;
    log = Logger.logObject.getter();
    v159 = static os_log_type_t.debug.getter();
    v154 = swift_allocObject();
    *(v154 + 16) = 32;
    v155 = swift_allocObject();
    *(v155 + 16) = 8;
    v153 = swift_allocObject();
    *(v153 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v153 + 24) = v152;
    v156 = swift_allocObject();
    *(v156 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v156 + 24) = v153;
    _allocateUninitializedArray<A>(_:)();
    v157 = v15;

    *v157 = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[1] = v154;

    v157[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[3] = v155;

    v157[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[5] = v156;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v159))
    {
      v146 = static UnsafeMutablePointer.allocate(capacity:)();
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v147 = createStorage<A>(capacity:type:)(0, v145, v145);
      v148 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v217 = v146;
      v218 = v147;
      v219 = v148;
      serialize(_:at:)(2, &v217);
      serialize(_:at:)(1, &v217);
      v220 = partial apply for closure #1 in OSLogArguments.append(_:);
      v221 = v154;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v217, &v218, &v219);
      if (v171)
      {
      }

      v220 = partial apply for closure #1 in OSLogArguments.append(_:);
      v221 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v217, &v218, &v219);
      v220 = partial apply for closure #1 in OSLogArguments.append(_:);
      v221 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v217, &v218, &v219);
      _os_log_impl(&dword_2686B1000, log, v159, "Placing amount into send amount label %s", v146, 0xCu);
      destroyStorage<A>(_:count:)(v147, 0, v145);
      destroyStorage<A>(_:count:)(v148, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v146, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v141 = *(v199 + 1448);
    v140 = *(v199 + 1440);
    v132 = *(v199 + 1128);
    v130 = *(v199 + 1048);
    v131 = *(v199 + 1000);
    v139 = *(v199 + 872);
    v138 = *(v199 + 848);
    MEMORY[0x277D82BD8](log);
    v132(v130, v131);
    v136 = SAUIAppPunchOut.__allocating_init()();
    *(v199 + 1504) = v136;
    *(v199 + 656) = v136;

    v133 = MEMORY[0x26D620690](v164, v165);

    [v136 setText_];
    MEMORY[0x277D82BD8](v133);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v135 = v17;
    v18 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v134 = static SATextDecorationRegion.from(_:property:)(v164, v165, v18, v19);

    *v135 = v134;
    _finalizeUninitializedArray<A>(_:)();
    v137 = Array._bridgeToObjectiveC()().super.isa;

    [v136 setRegions_];
    MEMORY[0x277D82BD8](v137);
    v20 = SAUIAppPunchOut.__allocating_init()();
    *(v199 + 1512) = v20;
    *(v199 + 664) = v20;
    outlined init with copy of GlobalsProviding(v138 + 80, v199 + 136);
    v142 = *(v199 + 160);
    v143 = *(v199 + 168);
    __swift_project_boxed_opaque_existential_1((v199 + 136), v142);
    SendPaymentSlots.rawValue.getter(1);
    String.toSpeakableString.getter();

    v141(v139, 0, 1, v140);
    v144 = (*(v143 + 16) + **(v143 + 16));
    v21 = swift_task_alloc();
    *(v199 + 1520) = v21;
    *v21 = *(v199 + 464);
    v21[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v22 = *(v199 + 952);
    v23 = *(v199 + 872);

    return v144(v22, v23, v142, v143);
  }

  else
  {
    v16 = (*(*(v199 + 840) + 8))(*(v199 + 824));
    v149 = v16;
    if (v16 && (v129 = [v16 feeAmount], MEMORY[0x277D82BD8](v149), v129))
    {
      v123 = INCurrencyAmount.formattedString.getter();
      v124 = v24;
      MEMORY[0x277D82BD8](v129);
      v125 = Optional<A>.emptyToNil.getter(v123, v124);
      v126 = v25;

      v127 = v125;
      v128 = v126;
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    *(v199 + 1536) = v128;
    if (v128)
    {
      v114 = *(v199 + 1104);
      v26 = *(v199 + 1040);
      v113 = *(v199 + 1000);
      *(v199 + 368) = v127;
      *(v199 + 376) = v128;
      v27 = Logger.payments.unsafeMutableAddressor();
      v114(v26, v27, v113);

      v115 = swift_allocObject();
      *(v115 + 16) = v127;
      *(v115 + 24) = v128;
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.debug.getter();
      v117 = swift_allocObject();
      *(v117 + 16) = 32;
      v118 = swift_allocObject();
      *(v118 + 16) = 8;
      v116 = swift_allocObject();
      *(v116 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v116 + 24) = v115;
      v119 = swift_allocObject();
      *(v119 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v119 + 24) = v116;
      _allocateUninitializedArray<A>(_:)();
      v120 = v28;

      *v120 = partial apply for closure #1 in OSLogArguments.append(_:);
      v120[1] = v117;

      v120[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v120[3] = v118;

      v120[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v120[5] = v119;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v121, v122))
      {
        v109 = static UnsafeMutablePointer.allocate(capacity:)();
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v110 = createStorage<A>(capacity:type:)(0, v108, v108);
        v111 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v212 = v109;
        v213 = v110;
        v214 = v111;
        serialize(_:at:)(2, &v212);
        serialize(_:at:)(1, &v212);
        v215 = partial apply for closure #1 in OSLogArguments.append(_:);
        v216 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v215, &v212, &v213, &v214);
        if (v171)
        {
        }

        v215 = partial apply for closure #1 in OSLogArguments.append(_:);
        v216 = v118;
        closure #1 in osLogInternal(_:log:type:)(&v215, &v212, &v213, &v214);
        v215 = partial apply for closure #1 in OSLogArguments.append(_:);
        v216 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v215, &v212, &v213, &v214);
        _os_log_impl(&dword_2686B1000, v121, v122, "Placing fee into send fee label %s", v109, 0xCu);
        destroyStorage<A>(_:count:)(v110, 0, v108);
        destroyStorage<A>(_:count:)(v111, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v109, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v104 = *(v199 + 1448);
      v103 = *(v199 + 1440);
      v95 = *(v199 + 1128);
      v93 = *(v199 + 1040);
      v94 = *(v199 + 1000);
      v102 = *(v199 + 864);
      v101 = *(v199 + 848);
      MEMORY[0x277D82BD8](v121);
      v95(v93, v94);
      v99 = SAUIAppPunchOut.__allocating_init()();
      *(v199 + 1544) = v99;
      *(v199 + 640) = v99;

      v96 = MEMORY[0x26D620690](v127, v128);

      [v99 setText_];
      MEMORY[0x277D82BD8](v96);
      type metadata accessor for SATextDecorationRegion();
      _allocateUninitializedArray<A>(_:)();
      v98 = v29;
      v30 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
      v97 = static SATextDecorationRegion.from(_:property:)(v127, v128, v30, v31);

      *v98 = v97;
      _finalizeUninitializedArray<A>(_:)();
      v100 = Array._bridgeToObjectiveC()().super.isa;

      [v99 setRegions_];
      MEMORY[0x277D82BD8](v100);
      v32 = SAUIAppPunchOut.__allocating_init()();
      *(v199 + 1552) = v32;
      *(v199 + 648) = v32;
      outlined init with copy of GlobalsProviding(v101 + 80, v199 + 96);
      v105 = *(v199 + 120);
      v106 = *(v199 + 128);
      __swift_project_boxed_opaque_existential_1((v199 + 96), v105);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
      String.toSpeakableString.getter();

      v104(v102, 0, 1, v103);
      v107 = (*(v106 + 16) + **(v106 + 16));
      v33 = swift_task_alloc();
      *(v199 + 1560) = v33;
      *v33 = *(v199 + 464);
      v33[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v34 = *(v199 + 944);
      v35 = *(v199 + 864);

      return v107(v34, v35, v105, v106);
    }

    else
    {
      v112 = [*(v199 + 1408) note];
      if (v112)
      {
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v36;
        MEMORY[0x277D82BD8](v112);
        v91 = v89;
        v92 = v90;
      }

      else
      {
        v91 = 0;
        v92 = 0;
      }

      v87 = Optional<A>.emptyToNil.getter(v91, v92);
      v88 = v37;
      *(v199 + 1576) = v37;
      if (v37)
      {
        v78 = *(v199 + 1104);
        v38 = *(v199 + 1032);
        v77 = *(v199 + 1000);
        *(v199 + 352) = v87;
        *(v199 + 360) = v37;

        v39 = Logger.payments.unsafeMutableAddressor();
        v78(v38, v39, v77);

        v79 = swift_allocObject();
        *(v79 + 16) = v87;
        *(v79 + 24) = v88;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();
        v81 = swift_allocObject();
        *(v81 + 16) = 32;
        v82 = swift_allocObject();
        *(v82 + 16) = 8;
        v80 = swift_allocObject();
        *(v80 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v80 + 24) = v79;
        v83 = swift_allocObject();
        *(v83 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v83 + 24) = v80;
        _allocateUninitializedArray<A>(_:)();
        v84 = v40;

        *v84 = partial apply for closure #1 in OSLogArguments.append(_:);
        v84[1] = v81;

        v84[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v84[3] = v82;

        v84[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v84[5] = v83;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v85, v86))
        {
          v68 = static UnsafeMutablePointer.allocate(capacity:)();
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v69 = createStorage<A>(capacity:type:)(0, v67, v67);
          v70 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v207 = v68;
          v208 = v69;
          v209 = v70;
          serialize(_:at:)(2, &v207);
          serialize(_:at:)(1, &v207);
          v210 = partial apply for closure #1 in OSLogArguments.append(_:);
          v211 = v81;
          closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
          if (v171)
          {
          }

          v210 = partial apply for closure #1 in OSLogArguments.append(_:);
          v211 = v82;
          closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
          v210 = partial apply for closure #1 in OSLogArguments.append(_:);
          v211 = v83;
          closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
          _os_log_impl(&dword_2686B1000, v85, v86, "Placing note into send note label %s", v68, 0xCu);
          destroyStorage<A>(_:count:)(v69, 0, v67);
          destroyStorage<A>(_:count:)(v70, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v68, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v63 = *(v199 + 1448);
        v62 = *(v199 + 1440);
        v54 = *(v199 + 1128);
        v52 = *(v199 + 1032);
        v53 = *(v199 + 1000);
        v61 = *(v199 + 856);
        v60 = *(v199 + 848);
        MEMORY[0x277D82BD8](v85);
        v54(v52, v53);
        v58 = SAUIAppPunchOut.__allocating_init()();
        *(v199 + 1584) = v58;
        *(v199 + 624) = v58;

        v55 = MEMORY[0x26D620690](v87, v88);

        [v58 setText_];
        MEMORY[0x277D82BD8](v55);
        type metadata accessor for SATextDecorationRegion();
        _allocateUninitializedArray<A>(_:)();
        v57 = v45;
        v46 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
        v56 = static SATextDecorationRegion.from(_:property:)(v87, v88, v46, v47);

        *v57 = v56;
        _finalizeUninitializedArray<A>(_:)();
        v59 = Array._bridgeToObjectiveC()().super.isa;

        [v58 setRegions_];
        MEMORY[0x277D82BD8](v59);
        v48 = SAUIAppPunchOut.__allocating_init()();
        *(v199 + 1592) = v48;
        *(v199 + 632) = v48;
        outlined init with copy of GlobalsProviding(v60 + 80, v199 + 56);
        v64 = *(v199 + 80);
        v65 = *(v199 + 88);
        __swift_project_boxed_opaque_existential_1((v199 + 56), v64);
        SendPaymentSlots.rawValue.getter(2);
        String.toSpeakableString.getter();

        v63(v61, 0, 1, v62);
        v66 = (*(v65 + 16) + **(v65 + 16));
        v49 = swift_task_alloc();
        *(v199 + 1600) = v49;
        *v49 = *(v199 + 464);
        v49[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v50 = *(v199 + 936);
        v51 = *(v199 + 856);

        return v66(v50, v51, v64, v65);
      }

      else
      {

        v71 = *(v199 + 1424);
        v72 = *(v199 + 1408);
        MEMORY[0x277D82BD8](*(v199 + 1432));
        MEMORY[0x277D82BD8](v71);
        MEMORY[0x277D82BD8](v72);
        v76 = *(v199 + 1192);
        v75 = *(v199 + 1184);
        v74 = *(v199 + 1176);
        v73 = *(v199 + 1168);
        MEMORY[0x277D82BE0](v73);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v73, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v74);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v74, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v75);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v75, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v76);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v76, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        v41 = swift_task_alloc();
        *(v199 + 1616) = v41;
        *v41 = *(v199 + 464);
        v41[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v42 = *(v199 + 808);
        v43 = *(v199 + 792);
        v44 = *(v199 + 784);

        return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v44, v43, v42);
      }
    }
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1528) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 856));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v133 = v0;
  v118 = v0[189];
  v119 = v0[188];
  v112 = v0[185];
  v117 = v0[147];
  v113 = v0[119];
  v111 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v114 = MEMORY[0x26D620690](v1);
  v112(v113, v111);

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  [v118 setText_];
  MEMORY[0x277D82BD8](v114);
  _allocateUninitializedArray<A>(_:)();
  v115 = v2;
  MEMORY[0x277D82BE0](v119);
  *v115 = v119;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v117 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v118);
  [v117 setTitle_];
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v119);

  v121 = *(v120 + 1528);
  v3 = (*(*(v120 + 840) + 8))(*(v120 + 824));
  v122 = v3;
  if (v3 && (v110 = [v3 feeAmount], MEMORY[0x277D82BD8](v122), v110))
  {
    v104 = INCurrencyAmount.formattedString.getter();
    v105 = v4;
    MEMORY[0x277D82BD8](v110);
    v106 = Optional<A>.emptyToNil.getter(v104, v105);
    v107 = v5;

    v108 = v106;
    v109 = v107;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  *(v120 + 1536) = v109;
  if (v109)
  {
    v95 = *(v120 + 1104);
    v6 = *(v120 + 1040);
    v94 = *(v120 + 1000);
    *(v120 + 368) = v108;
    *(v120 + 376) = v109;
    v7 = Logger.payments.unsafeMutableAddressor();
    v95(v6, v7, v94);

    v96 = swift_allocObject();
    *(v96 + 16) = v108;
    *(v96 + 24) = v109;
    oslog = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v97 + 24) = v96;
    v100 = swift_allocObject();
    *(v100 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v100 + 24) = v97;
    _allocateUninitializedArray<A>(_:)();
    v101 = v8;

    *v101 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[1] = v98;

    v101[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[3] = v99;

    v101[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[5] = v100;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v103))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v91 = createStorage<A>(capacity:type:)(0, v89, v89);
      v92 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v128 = buf;
      v129 = v91;
      v130 = v92;
      serialize(_:at:)(2, &v128);
      serialize(_:at:)(1, &v128);
      v131 = partial apply for closure #1 in OSLogArguments.append(_:);
      v132 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
      if (v121)
      {
      }

      v131 = partial apply for closure #1 in OSLogArguments.append(_:);
      v132 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
      v131 = partial apply for closure #1 in OSLogArguments.append(_:);
      v132 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
      _os_log_impl(&dword_2686B1000, oslog, v103, "Placing fee into send fee label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v91, 0, v89);
      destroyStorage<A>(_:count:)(v92, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v85 = *(v120 + 1448);
    v84 = *(v120 + 1440);
    v76 = *(v120 + 1128);
    v74 = *(v120 + 1040);
    v75 = *(v120 + 1000);
    v83 = *(v120 + 864);
    v82 = *(v120 + 848);
    MEMORY[0x277D82BD8](oslog);
    v76(v74, v75);
    v80 = SAUIAppPunchOut.__allocating_init()();
    *(v120 + 1544) = v80;
    *(v120 + 640) = v80;

    v77 = MEMORY[0x26D620690](v108, v109);

    [v80 setText_];
    MEMORY[0x277D82BD8](v77);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v79 = v10;
    v11 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v78 = static SATextDecorationRegion.from(_:property:)(v108, v109, v11, v12);

    *v79 = v78;
    _finalizeUninitializedArray<A>(_:)();
    v81 = Array._bridgeToObjectiveC()().super.isa;

    [v80 setRegions_];
    MEMORY[0x277D82BD8](v81);
    v13 = SAUIAppPunchOut.__allocating_init()();
    *(v120 + 1552) = v13;
    *(v120 + 648) = v13;
    outlined init with copy of GlobalsProviding(v82 + 80, v120 + 96);
    v86 = *(v120 + 120);
    v87 = *(v120 + 128);
    __swift_project_boxed_opaque_existential_1((v120 + 96), v86);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v85(v83, 0, 1, v84);
    v88 = (*(v87 + 16) + **(v87 + 16));
    v14 = swift_task_alloc();
    *(v120 + 1560) = v14;
    *v14 = *(v120 + 464);
    v14[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v15 = *(v120 + 944);
    v16 = *(v120 + 864);

    return v88(v15, v16, v86, v87);
  }

  else
  {
    v93 = [*(v120 + 1408) note];
    if (v93)
    {
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v17;
      MEMORY[0x277D82BD8](v93);
      v72 = v70;
      v73 = v71;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v68 = Optional<A>.emptyToNil.getter(v72, v73);
    v69 = v18;
    *(v120 + 1576) = v18;
    if (v18)
    {
      v59 = *(v120 + 1104);
      v19 = *(v120 + 1032);
      v58 = *(v120 + 1000);
      *(v120 + 352) = v68;
      *(v120 + 360) = v18;

      v20 = Logger.payments.unsafeMutableAddressor();
      v59(v19, v20, v58);

      v60 = swift_allocObject();
      *(v60 + 16) = v68;
      *(v60 + 24) = v69;
      log = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = 32;
      v63 = swift_allocObject();
      *(v63 + 16) = 8;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      *(v61 + 24) = v60;
      v64 = swift_allocObject();
      *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v64 + 24) = v61;
      _allocateUninitializedArray<A>(_:)();
      v65 = v21;

      *v65 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[1] = v62;

      v65[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[3] = v63;

      v65[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[5] = v64;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v67))
      {
        v49 = static UnsafeMutablePointer.allocate(capacity:)();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v50 = createStorage<A>(capacity:type:)(0, v48, v48);
        v51 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v123 = v49;
        v124 = v50;
        v125 = v51;
        serialize(_:at:)(2, &v123);
        serialize(_:at:)(1, &v123);
        v126 = partial apply for closure #1 in OSLogArguments.append(_:);
        v127 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
        if (v121)
        {
        }

        v126 = partial apply for closure #1 in OSLogArguments.append(_:);
        v127 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
        v126 = partial apply for closure #1 in OSLogArguments.append(_:);
        v127 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
        _os_log_impl(&dword_2686B1000, log, v67, "Placing note into send note label %s", v49, 0xCu);
        destroyStorage<A>(_:count:)(v50, 0, v48);
        destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v49, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v44 = *(v120 + 1448);
      v43 = *(v120 + 1440);
      v35 = *(v120 + 1128);
      v33 = *(v120 + 1032);
      v34 = *(v120 + 1000);
      v42 = *(v120 + 856);
      v41 = *(v120 + 848);
      MEMORY[0x277D82BD8](log);
      v35(v33, v34);
      v39 = SAUIAppPunchOut.__allocating_init()();
      *(v120 + 1584) = v39;
      *(v120 + 624) = v39;

      v36 = MEMORY[0x26D620690](v68, v69);

      [v39 setText_];
      MEMORY[0x277D82BD8](v36);
      type metadata accessor for SATextDecorationRegion();
      _allocateUninitializedArray<A>(_:)();
      v38 = v26;
      v27 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
      v37 = static SATextDecorationRegion.from(_:property:)(v68, v69, v27, v28);

      *v38 = v37;
      _finalizeUninitializedArray<A>(_:)();
      v40 = Array._bridgeToObjectiveC()().super.isa;

      [v39 setRegions_];
      MEMORY[0x277D82BD8](v40);
      v29 = SAUIAppPunchOut.__allocating_init()();
      *(v120 + 1592) = v29;
      *(v120 + 632) = v29;
      outlined init with copy of GlobalsProviding(v41 + 80, v120 + 56);
      v45 = *(v120 + 80);
      v46 = *(v120 + 88);
      __swift_project_boxed_opaque_existential_1((v120 + 56), v45);
      SendPaymentSlots.rawValue.getter(2);
      String.toSpeakableString.getter();

      v44(v42, 0, 1, v43);
      v47 = (*(v46 + 16) + **(v46 + 16));
      v30 = swift_task_alloc();
      *(v120 + 1600) = v30;
      *v30 = *(v120 + 464);
      v30[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v31 = *(v120 + 936);
      v32 = *(v120 + 856);

      return v47(v31, v32, v45, v46);
    }

    else
    {

      v52 = *(v120 + 1424);
      v53 = *(v120 + 1408);
      MEMORY[0x277D82BD8](*(v120 + 1432));
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      v57 = *(v120 + 1192);
      v56 = *(v120 + 1184);
      v55 = *(v120 + 1176);
      v54 = *(v120 + 1168);
      MEMORY[0x277D82BE0](v54);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v54, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v55);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v55, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v56);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v56, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v57);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v57, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      v22 = swift_task_alloc();
      *(v120 + 1616) = v22;
      *v22 = *(v120 + 464);
      v22[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v23 = *(v120 + 808);
      v24 = *(v120 + 792);
      v25 = *(v120 + 784);

      return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v25, v24, v23);
    }
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1568) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 848));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v78 = v0;
  v68 = v0[194];
  v69 = v0[193];
  v62 = v0[185];
  v67 = v0[148];
  v63 = v0[118];
  v61 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v64 = MEMORY[0x26D620690](v1);
  v62(v63, v61);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  [v68 setText_];
  MEMORY[0x277D82BD8](v64);
  _allocateUninitializedArray<A>(_:)();
  v65 = v2;
  MEMORY[0x277D82BE0](v69);
  *v65 = v69;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v68);
  [v67 setTitle_];
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);

  v71 = *(v70 + 1568);
  v72 = [*(v70 + 1408) note];
  if (v72)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v3;
    MEMORY[0x277D82BD8](v72);
    v59 = v57;
    v60 = v58;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v55 = Optional<A>.emptyToNil.getter(v59, v60);
  v56 = v4;
  *(v70 + 1576) = v4;
  if (v4)
  {
    v46 = *(v70 + 1104);
    v5 = *(v70 + 1032);
    v45 = *(v70 + 1000);
    *(v70 + 352) = v55;
    *(v70 + 360) = v4;

    v6 = Logger.payments.unsafeMutableAddressor();
    v46(v5, v6, v45);

    v47 = swift_allocObject();
    *(v47 + 16) = v55;
    *(v47 + 24) = v56;
    oslog = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v48 + 24) = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v51 + 24) = v48;
    _allocateUninitializedArray<A>(_:)();
    v52 = v7;

    *v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52[1] = v49;

    v52[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v52[3] = v50;

    v52[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v52[5] = v51;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v54))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v37 = createStorage<A>(capacity:type:)(0, v35, v35);
      v38 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v73 = buf;
      v74 = v37;
      v75 = v38;
      serialize(_:at:)(2, &v73);
      serialize(_:at:)(1, &v73);
      v76 = partial apply for closure #1 in OSLogArguments.append(_:);
      v77 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
      if (v71)
      {
      }

      v76 = partial apply for closure #1 in OSLogArguments.append(_:);
      v77 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
      v76 = partial apply for closure #1 in OSLogArguments.append(_:);
      v77 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
      _os_log_impl(&dword_2686B1000, oslog, v54, "Placing note into send note label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v31 = *(v70 + 1448);
    v30 = *(v70 + 1440);
    v22 = *(v70 + 1128);
    v20 = *(v70 + 1032);
    v21 = *(v70 + 1000);
    v29 = *(v70 + 856);
    v28 = *(v70 + 848);
    MEMORY[0x277D82BD8](oslog);
    v22(v20, v21);
    v26 = SAUIAppPunchOut.__allocating_init()();
    *(v70 + 1584) = v26;
    *(v70 + 624) = v26;

    v23 = MEMORY[0x26D620690](v55, v56);

    [v26 setText_];
    MEMORY[0x277D82BD8](v23);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v25 = v13;
    v14 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v24 = static SATextDecorationRegion.from(_:property:)(v55, v56, v14, v15);

    *v25 = v24;
    _finalizeUninitializedArray<A>(_:)();
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v26 setRegions_];
    MEMORY[0x277D82BD8](v27);
    v16 = SAUIAppPunchOut.__allocating_init()();
    *(v70 + 1592) = v16;
    *(v70 + 632) = v16;
    outlined init with copy of GlobalsProviding(v28 + 80, v70 + 56);
    v32 = *(v70 + 80);
    v33 = *(v70 + 88);
    __swift_project_boxed_opaque_existential_1((v70 + 56), v32);
    SendPaymentSlots.rawValue.getter(2);
    String.toSpeakableString.getter();

    v31(v29, 0, 1, v30);
    v34 = (*(v33 + 16) + **(v33 + 16));
    v17 = swift_task_alloc();
    *(v70 + 1600) = v17;
    *v17 = *(v70 + 464);
    v17[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v18 = *(v70 + 936);
    v19 = *(v70 + 856);

    return v34(v18, v19, v32, v33);
  }

  else
  {

    v39 = *(v70 + 1424);
    v40 = *(v70 + 1408);
    MEMORY[0x277D82BD8](*(v70 + 1432));
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    v44 = *(v70 + 1192);
    v43 = *(v70 + 1184);
    v42 = *(v70 + 1176);
    v41 = *(v70 + 1168);
    MEMORY[0x277D82BE0](v41);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v41, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v42);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v42, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v43);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v43, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v44);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v44, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    v8 = swift_task_alloc();
    *(v70 + 1616) = v8;
    *v8 = *(v70 + 464);
    v8[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v9 = *(v70 + 808);
    v10 = *(v70 + 792);
    v11 = *(v70 + 784);

    return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v11, v10, v9);
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 464) = *v1;
  *(v5 + 1608) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 840));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v15 = v0[199];
  v16 = v0[198];
  v9 = v0[185];
  v14 = v0[149];
  v10 = v0[117];
  v8 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v11 = MEMORY[0x26D620690](v1);
  v9(v10, v8);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  [v15 setText_];
  MEMORY[0x277D82BD8](v11);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  MEMORY[0x277D82BE0](v16);
  *v12 = v16;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v15);
  [v14 setTitle_];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v17 = v0[178];
  v18 = v0[176];
  MEMORY[0x277D82BD8](v0[179]);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v22 = v0[149];
  v21 = v0[148];
  v20 = v0[147];
  v19 = v0[146];
  MEMORY[0x277D82BE0](v19);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v19, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v20);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v20, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v21);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v21, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v22);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v22, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v23[202] = v3;
  *v3 = v23[58];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v23[101];
  v5 = v23[99];
  v6 = v23[98];

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v6, v5, v4);
}

{
  v42 = v0;
  v1 = v0[203];
  v0[58] = v0;
  v0[76] = v1;
  v36 = [v1 templateItems];
  if (v36)
  {
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v36);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (!v34)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 366, 0);
  }

  v2 = v35[144];
  v35[77] = v34;
  v32 = [v2 templateItems];
  if (v32)
  {
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v32);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 366, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
  lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();
  Array.append<A>(contentsOf:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = v35[144];
  v19 = v35[138];
  v4 = v35[127];
  v18 = v35[125];
  [v20 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  v5 = Logger.payments.unsafeMutableAddressor();
  v19(v4, v5, v18);
  MEMORY[0x277D82BE0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  oslog = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #9 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v22;
  _allocateUninitializedArray<A>(_:)();
  v26 = v6;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v28))
  {
    v7 = v35[204];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v16;
    v39 = v17;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    if (v7)
    {
    }

    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, oslog, v28, "#ConfirmationViewBuilder created SASTItemGroup %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v35[144];
  v12 = v35[141];
  v10 = v35[127];
  v11 = v35[125];
  MEMORY[0x277D82BD8](oslog);
  v12(v10, v11);
  MEMORY[0x277D82BE0](v13);
  v8 = swift_task_alloc();
  v35[205] = v8;
  *v8 = v35[58];
  v8[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v9 = v35[101];

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v9);
}

{
  v6 = v0[206];
  v8 = v0[203];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v1 = v0[144];
  v13 = v1;
  v0[58] = v0;
  [v1 setConfirmationOptions_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v13);
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  MEMORY[0x277D82BE0](v13);
  *v7 = v13;
  _finalizeUninitializedArray<A>(_:)();
  v14 = v3;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v4 = *(v0[58] + 8);

  return v4(v14);
}

{
  v4 = v0[153];
  v5 = v0[152];
  v6 = v0[150];
  v7 = v0[149];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[146];
  v11 = v0[144];
  v1 = v0[114];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[153];
  v7 = v0[152];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[113];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[168];
  v5 = v0[167];
  v6 = v0[153];
  v7 = v0[152];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[112];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[153];
  v7 = v0[152];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[111];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[149];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[146];
  v11 = v0[144];
  v1 = v0[110];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[189];
  v5 = v0[188];
  v6 = v0[179];
  v7 = v0[178];
  v8 = v0[176];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[109];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[194];
  v5 = v0[193];
  v6 = v0[179];
  v7 = v0[178];
  v8 = v0[176];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[108];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[179];
  v7 = v0[178];
  v8 = v0[176];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v12 = v0[146];
  v13 = v0[144];
  v1 = v0[107];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v1 = v0[149];
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[144];
  v0[58] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  v2 = *(v0[58] + 8);

  return v2();
}

{
  v4 = v0[203];
  v5 = v0[149];
  v6 = v0[148];
  v7 = v0[147];
  v8 = v0[146];
  v1 = v0[144];
  v9 = v1;
  v0[58] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  v2 = *(v0[58] + 8);

  return v2();
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v7 = *v2 + 464;
  *v7 = *v2;

  if (v1)
  {

    v4 = *(*v7 + 8);
  }

  else
  {

    v3 = a1;
    v4 = *(*v7 + 8);
  }

  return v4(v3);
}

{
  v5 = *v2;
  v5[58] = *v2;
  v5[203] = a1;
  v5[204] = v1;

  if (v1)
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  v5[58] = *v2;
  v5[206] = a1;
  v5[207] = v1;

  if (v1)
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[111] = v8;
  v9[110] = a8;
  v9[109] = a6;
  v9[108] = a4;
  v9[107] = a3;
  v9[106] = a2;
  v9[105] = a1;
  v9[68] = v9;
  v9[69] = 0;
  v9[70] = 0;
  v9[71] = 0;
  v9[72] = 0;
  v9[73] = 0;
  v9[74] = 0;
  v9[75] = 0;
  v9[76] = 0;
  v9[77] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[86] = 0;
  v9[90] = 0;
  v9[24] = 0;
  v9[25] = 0;
  v9[30] = 0;
  v9[31] = 0;
  v9[95] = 0;
  v9[97] = 0;
  v9[48] = 0;
  v9[49] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[99] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v10 = type metadata accessor for TemplatingResult();
  v9[114] = v10;
  v9[115] = *(v10 - 8);
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[118] = v11;
  v9[119] = *(v11 - 8);
  v9[120] = swift_task_alloc();
  v9[121] = swift_task_alloc();
  v9[69] = a1;
  v9[70] = a2;
  v9[71] = a3;
  v9[72] = a4;
  v9[73] = v8;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[121];
  v287 = v0[119];
  v288 = v0[118];
  v0[68] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v289 = *(v287 + 16);
  v289(v1, v2, v288);
  v291 = Logger.logObject.getter();
  v290 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v292 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v291, v290))
  {
    v282 = static UnsafeMutablePointer.allocate(capacity:)();
    v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v283 = createStorage<A>(capacity:type:)(0, v281, v281);
    v284 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v286 + 808) = v282;
    *(v286 + 816) = v283;
    *(v286 + 824) = v284;
    serialize(_:at:)(0, (v286 + 808));
    serialize(_:at:)(0, (v286 + 808));
    *(v286 + 832) = v292;
    v285 = swift_task_alloc();
    v285[2] = v286 + 808;
    v285[3] = v286 + 816;
    v285[4] = v286 + 824;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v291, v290, "#ConfirmationViewBuilder makePaymentConfirmationPhoneView", v282, 2u);
    destroyStorage<A>(_:count:)(v283, 0, v281);
    destroyStorage<A>(_:count:)(v284, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v282, MEMORY[0x277D84B78]);
  }

  v278 = *(v286 + 968);
  v279 = *(v286 + 944);
  v277 = *(v286 + 952);
  MEMORY[0x277D82BD8](v291);
  v280 = *(v277 + 8);
  v3 = v280(v278, v279);
  if (App.isFirstParty.getter(v3))
  {
    MEMORY[0x277D82BE0](*(v286 + 848));
    v276 = App.systemUIExtensionBundleId.getter();
    if (v4)
    {
      v274 = MEMORY[0x26D620690](v276);

      v275 = v274;
    }

    else
    {
      v275 = 0;
    }

    v273 = *(v286 + 848);
    [v273 _setUiExtensionBundleId_];
    MEMORY[0x277D82BD8](v275);
    MEMORY[0x277D82BD8](v273);
  }

  v271 = static CasinoFactory.makePlaceholderCardSection()();
  *(v286 + 976) = v271;
  *(v286 + 592) = v271;
  type metadata accessor for SAAppsLaunchApp();
  v272 = SAUIAppPunchOut.__allocating_init()();
  *(v286 + 984) = v272;
  *(v286 + 600) = v272;
  MEMORY[0x277D82BE0](v272);
  v5 = App.appIdentifier.getter();
  if (v6)
  {
    v269 = MEMORY[0x26D620690](v5);

    v270 = v269;
  }

  else
  {
    v270 = 0;
  }

  [v272 setAppId_];
  MEMORY[0x277D82BD8](v270);
  MEMORY[0x277D82BD8](v272);
  type metadata accessor for SFAbstractCommand();
  _allocateUninitializedArray<A>(_:)();
  v263 = v7;
  MEMORY[0x277D82BE0](v272);
  v262 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  swift_unknownObjectRelease();
  *v263 = v262;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v271 setCommands_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SFCardSection();
  *(v286 + 608) = Array.init()();
  type metadata accessor for SFRichTitleCardSection();
  v265 = SAUIAppPunchOut.__allocating_init()();
  *(v286 + 992) = v265;
  *(v286 + 616) = v265;
  type metadata accessor for SFRowCardSection();
  v266 = SAUIAppPunchOut.__allocating_init()();
  *(v286 + 1000) = v266;
  *(v286 + 624) = v266;
  v267 = SAUIAppPunchOut.__allocating_init()();
  *(v286 + 1008) = v267;
  *(v286 + 632) = v267;
  *(v286 + 96) = 0;
  *(v286 + 104) = 0;
  *(v286 + 640) = 0;
  *(v286 + 648) = 0;
  objc_opt_self();
  v268 = swift_dynamicCastObjCClass();
  if (v268)
  {
    MEMORY[0x277D82BE0](v268);
    *(v286 + 776) = v268;
    MEMORY[0x277D82BE0](v265);
    _allocateUninitializedArray<A>(_:)();
    v259 = v8;
    *(v286 + 352) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v286 + 360) = v9;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v256 = type metadata accessor for INRequestPaymentIntent();
    *(v286 + 368) = SiriKitPaymentsIntent.simpleClassName.getter(v256);
    *(v286 + 376) = v11;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v286 + 368);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".payer", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v12);

    v258 = *(v286 + 352);
    v257 = *(v286 + 360);

    outlined destroy of String.UTF8View(v286 + 352);
    *v259 = MEMORY[0x26D620710](v258, v257);
    v259[1] = v13;
    _finalizeUninitializedArray<A>(_:)();
    v260 = Array._bridgeToObjectiveC()().super.isa;

    [v265 setParameterKeyPaths_];
    MEMORY[0x277D82BD8](v260);
    MEMORY[0x277D82BD8](v265);
    MEMORY[0x277D82BE0](v265);
    v14 = [v268 payer];
    v261 = v14;
    if (v14)
    {
      v251 = [v14 displayName];
      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v253 = v15;
      MEMORY[0x277D82BD8](v261);
      MEMORY[0x277D82BD8](v251);
      v254 = v252;
      v255 = v253;
    }

    else
    {
      v254 = 0;
      v255 = 0;
    }

    if (v255)
    {
      v249 = MEMORY[0x26D620690](v254);

      v250 = v249;
    }

    else
    {
      v250 = 0;
    }

    [v265 setTitle_];
    MEMORY[0x277D82BD8](v250);
    MEMORY[0x277D82BD8](v265);
    v248 = [v268 currencyAmount];
    if (v248)
    {
      *(v286 + 792) = v248;
      MEMORY[0x277D82BE0](v265);
      v247 = [v265 parameterKeyPaths];
      if (v247)
      {
        v245 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v247);
        v246 = v245;
      }

      else
      {
        v246 = 0;
      }

      *(v286 + 800) = v246;
      if (*(v286 + 800))
      {
        *(v286 + 496) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v286 + 504) = v16;
        v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v17);

        *(v286 + 512) = SiriKitPaymentsIntent.simpleClassName.getter(v256);
        *(v286 + 520) = v18;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v286 + 512);
        v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".currencyAmount", 0xFuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v19);

        v241 = *(v286 + 496);
        v240 = *(v286 + 504);

        outlined destroy of String.UTF8View(v286 + 496);
        *(v286 + 528) = MEMORY[0x26D620710](v241, v240);
        *(v286 + 536) = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v286 + 800))
        {
          v238 = Array._bridgeToObjectiveC()().super.isa;

          v239 = v238;
        }

        else
        {
          v239 = 0;
        }

        [v265 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v239);
        MEMORY[0x277D82BD8](v265);
      }

      else
      {
        v244 = *(v286 + 800);

        if (v244)
        {
          v242 = Array._bridgeToObjectiveC()().super.isa;

          v243 = v242;
        }

        else
        {
          v243 = 0;
        }

        [v265 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v243);
        outlined destroy of [SFCardSection]((v286 + 800));
        MEMORY[0x277D82BD8](v265);
      }

      *(v286 + 96) = INCurrencyAmount.formattedString.getter();
      *(v286 + 104) = v21;

      MEMORY[0x277D82BD8](v248);
    }

    v237 = (*(*(v286 + 880) + 8))(*(v286 + 872));
    if (v237 && (v236 = [v237 feeAmount], MEMORY[0x277D82BD8](v237), v236))
    {
      v230 = INCurrencyAmount.formattedString.getter();
      v231 = v22;
      MEMORY[0x277D82BD8](v236);
      v232 = Optional<A>.emptyToNil.getter(v230, v231);
      v233 = v23;

      v234 = v232;
      v235 = v233;
    }

    else
    {
      v234 = 0;
      v235 = 0;
    }

    if (v235)
    {
      *(v286 + 432) = v234;
      *(v286 + 440) = v235;
      MEMORY[0x277D82BE0](v266);
      v229 = [v266 parameterKeyPaths];
      if (v229)
      {
        v227 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v229);
        v228 = v227;
      }

      else
      {
        v228 = 0;
      }

      *(v286 + 784) = v228;
      if (*(v286 + 784))
      {
        *(v286 + 448) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v286 + 456) = v24;
        v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v25);

        *(v286 + 464) = SiriKitPaymentsIntent.simpleClassName.getter(v256);
        *(v286 + 472) = v26;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v286 + 464);
        v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".feeAmount", 0xAuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v27);

        v223 = *(v286 + 448);
        v222 = *(v286 + 456);

        outlined destroy of String.UTF8View(v286 + 448);
        *(v286 + 480) = MEMORY[0x26D620710](v223, v222);
        *(v286 + 488) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v286 + 784))
        {
          v220 = Array._bridgeToObjectiveC()().super.isa;

          v221 = v220;
        }

        else
        {
          v221 = 0;
        }

        [v266 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v221);
        MEMORY[0x277D82BD8](v266);
      }

      else
      {
        v226 = *(v286 + 784);

        if (v226)
        {
          v224 = Array._bridgeToObjectiveC()().super.isa;

          v225 = v224;
        }

        else
        {
          v225 = 0;
        }

        [v266 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v225);
        outlined destroy of [SFCardSection]((v286 + 784));
        MEMORY[0x277D82BD8](v266);
      }

      type metadata accessor for SFRichText();

      v29 = @nonobjc SFRichText.__allocating_init(string:)(v234, v235);
      v30 = *(v286 + 640);
      *(v286 + 640) = v29;
      MEMORY[0x277D82BD8](v30);
    }

    v219 = [v268 note];
    if (v219)
    {
      v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v216 = v31;
      MEMORY[0x277D82BD8](v219);
      v217 = v215;
      v218 = v216;
    }

    else
    {
      v217 = 0;
      v218 = 0;
    }

    v213 = Optional<A>.emptyToNil.getter(v217, v218);
    v214 = v32;
    if (v32)
    {
      *(v286 + 384) = v213;
      *(v286 + 392) = v32;

      MEMORY[0x277D82BE0](v267);
      _allocateUninitializedArray<A>(_:)();
      v211 = v33;
      *(v286 + 400) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v286 + 408) = v34;
      v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v35);

      *(v286 + 416) = SiriKitPaymentsIntent.simpleClassName.getter(v256);
      *(v286 + 424) = v36;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v286 + 416);
      v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".note", 5uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v37);

      v210 = *(v286 + 400);
      v209 = *(v286 + 408);

      outlined destroy of String.UTF8View(v286 + 400);
      *v211 = MEMORY[0x26D620710](v210, v209);
      v211[1] = v38;
      _finalizeUninitializedArray<A>(_:)();
      v212 = Array._bridgeToObjectiveC()().super.isa;

      [v267 setParameterKeyPaths_];
      MEMORY[0x277D82BD8](v212);
      MEMORY[0x277D82BD8](v267);
      type metadata accessor for SFRichText();

      v39 = @nonobjc SFRichText.__allocating_init(string:)(v213, v214);
      v40 = *(v286 + 648);
      *(v286 + 648) = v39;
      MEMORY[0x277D82BD8](v40);
    }

    MEMORY[0x277D82BD8](v268);
  }

  else
  {
    objc_opt_self();
    v208 = swift_dynamicCastObjCClass();
    if (!v208)
    {
      v74 = *(v286 + 960);
      v151 = *(v286 + 944);
      v75 = Logger.payments.unsafeMutableAddressor();
      v289(v74, v75, v151);
      oslog = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      v154 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v152))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v148 = createStorage<A>(capacity:type:)(0, v146, v146);
        v149 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v286 + 656) = buf;
        *(v286 + 664) = v148;
        *(v286 + 672) = v149;
        serialize(_:at:)(0, (v286 + 656));
        serialize(_:at:)(0, (v286 + 656));
        *(v286 + 680) = v154;
        v150 = swift_task_alloc();
        v150[2] = v286 + 656;
        v150[3] = v286 + 664;
        v150[4] = v286 + 672;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v152, "#ConfirmationViewBuilder makePaymentConfirmationView (Phone) encountered unexpected intent type", buf, 2u);
        destroyStorage<A>(_:count:)(v148, 0, v146);
        destroyStorage<A>(_:count:)(v149, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      v140 = *(v286 + 960);
      v141 = *(v286 + 944);
      MEMORY[0x277D82BD8](oslog);
      v280(v140, v141);
      *(v286 + 112) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v286 + 120) = v76;
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v77);

      ObjectType = swift_getObjectType();
      DefaultStringInterpolation.appendInterpolation(_:)(ObjectType);
      v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v79);

      v143 = *(v286 + 112);
      v142 = *(v286 + 120);

      outlined destroy of String.UTF8View(v286 + 112);
      v145 = MEMORY[0x26D620710](v143, v142);
      v144 = v80;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v81 = v145;
      *(v81 + 8) = v144;
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      *(v81 + 32) = 0;
      *(v81 + 40) = 0;
      *(v81 + 48) = 4;
      swift_willThrow();
      outlined destroy of SFRichText?((v286 + 648));
      outlined destroy of SFRichText?((v286 + 640));
      outlined destroy of String.UTF8View(v286 + 96);
      MEMORY[0x277D82BD8](v267);
      MEMORY[0x277D82BD8](v266);
      MEMORY[0x277D82BD8](v265);
      outlined destroy of [SFCardSection]((v286 + 608));
      MEMORY[0x277D82BD8](v272);
      MEMORY[0x277D82BD8](v271);

      v82 = *(*(v286 + 544) + 8);

      return v82();
    }

    MEMORY[0x277D82BE0](v208);
    *(v286 + 688) = v208;
    MEMORY[0x277D82BE0](v265);
    _allocateUninitializedArray<A>(_:)();
    v205 = v41;
    *(v286 + 128) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v286 + 136) = v42;
    v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v43);

    v202 = type metadata accessor for INSendPaymentIntent();
    *(v286 + 144) = SiriKitPaymentsIntent.simpleClassName.getter(v202);
    *(v286 + 152) = v44;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v286 + 144);
    v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".payee", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v45);

    v204 = *(v286 + 128);
    v203 = *(v286 + 136);

    outlined destroy of String.UTF8View(v286 + 128);
    *v205 = MEMORY[0x26D620710](v204, v203);
    v205[1] = v46;
    _finalizeUninitializedArray<A>(_:)();
    v206 = Array._bridgeToObjectiveC()().super.isa;

    [v265 setParameterKeyPaths_];
    MEMORY[0x277D82BD8](v206);
    MEMORY[0x277D82BD8](v265);
    MEMORY[0x277D82BE0](v265);
    v47 = [v208 payee];
    v207 = v47;
    if (v47)
    {
      v197 = [v47 displayName];
      v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v199 = v48;
      MEMORY[0x277D82BD8](v207);
      MEMORY[0x277D82BD8](v197);
      v200 = v198;
      v201 = v199;
    }

    else
    {
      v200 = 0;
      v201 = 0;
    }

    if (v201)
    {
      v195 = MEMORY[0x26D620690](v200);

      v196 = v195;
    }

    else
    {
      v196 = 0;
    }

    [v265 setTitle_];
    MEMORY[0x277D82BD8](v196);
    MEMORY[0x277D82BD8](v265);
    v194 = [v208 currencyAmount];
    if (v194)
    {
      *(v286 + 760) = v194;
      MEMORY[0x277D82BE0](v265);
      v193 = [v265 parameterKeyPaths];
      if (v193)
      {
        v191 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v193);
        v192 = v191;
      }

      else
      {
        v192 = 0;
      }

      *(v286 + 768) = v192;
      if (*(v286 + 768))
      {
        *(v286 + 304) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v286 + 312) = v49;
        v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v50);

        *(v286 + 320) = SiriKitPaymentsIntent.simpleClassName.getter(v202);
        *(v286 + 328) = v51;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v286 + 320);
        v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".currencyAmount", 0xFuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v52);

        v187 = *(v286 + 304);
        v186 = *(v286 + 312);

        outlined destroy of String.UTF8View(v286 + 304);
        *(v286 + 336) = MEMORY[0x26D620710](v187, v186);
        *(v286 + 344) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v286 + 768))
        {
          v184 = Array._bridgeToObjectiveC()().super.isa;

          v185 = v184;
        }

        else
        {
          v185 = 0;
        }

        [v265 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v185);
        MEMORY[0x277D82BD8](v265);
      }

      else
      {
        v190 = *(v286 + 768);

        if (v190)
        {
          v188 = Array._bridgeToObjectiveC()().super.isa;

          v189 = v188;
        }

        else
        {
          v189 = 0;
        }

        [v265 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v189);
        outlined destroy of [SFCardSection]((v286 + 768));
        MEMORY[0x277D82BD8](v265);
      }

      *(v286 + 96) = INCurrencyAmount.formattedString.getter();
      *(v286 + 104) = v54;

      MEMORY[0x277D82BD8](v194);
    }

    v183 = (*(*(v286 + 880) + 8))(*(v286 + 872));
    if (v183 && (v182 = [v183 feeAmount], MEMORY[0x277D82BD8](v183), v182))
    {
      v176 = INCurrencyAmount.formattedString.getter();
      v177 = v55;
      MEMORY[0x277D82BD8](v182);
      v178 = Optional<A>.emptyToNil.getter(v176, v177);
      v179 = v56;

      v180 = v178;
      v181 = v179;
    }

    else
    {
      v180 = 0;
      v181 = 0;
    }

    if (v181)
    {
      *(v286 + 240) = v180;
      *(v286 + 248) = v181;
      MEMORY[0x277D82BE0](v266);
      v175 = [v266 parameterKeyPaths];
      if (v175)
      {
        v173 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v175);
        v174 = v173;
      }

      else
      {
        v174 = 0;
      }

      *(v286 + 752) = v174;
      if (*(v286 + 752))
      {
        *(v286 + 256) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v286 + 264) = v57;
        v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v58);

        *(v286 + 272) = SiriKitPaymentsIntent.simpleClassName.getter(v202);
        *(v286 + 280) = v59;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v286 + 272);
        v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".feeAmount", 0xAuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v60);

        v169 = *(v286 + 256);
        v168 = *(v286 + 264);

        outlined destroy of String.UTF8View(v286 + 256);
        *(v286 + 288) = MEMORY[0x26D620710](v169, v168);
        *(v286 + 296) = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v286 + 752))
        {
          v166 = Array._bridgeToObjectiveC()().super.isa;

          v167 = v166;
        }

        else
        {
          v167 = 0;
        }

        [v266 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v167);
        MEMORY[0x277D82BD8](v266);
      }

      else
      {
        v172 = *(v286 + 752);

        if (v172)
        {
          v170 = Array._bridgeToObjectiveC()().super.isa;

          v171 = v170;
        }

        else
        {
          v171 = 0;
        }

        [v266 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v171);
        outlined destroy of [SFCardSection]((v286 + 752));
        MEMORY[0x277D82BD8](v266);
      }

      type metadata accessor for SFRichText();

      v62 = @nonobjc SFRichText.__allocating_init(string:)(v180, v181);
      v63 = *(v286 + 640);
      *(v286 + 640) = v62;
      MEMORY[0x277D82BD8](v63);
    }

    v165 = [v208 note];
    if (v165)
    {
      v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v162 = v64;
      MEMORY[0x277D82BD8](v165);
      v163 = v161;
      v164 = v162;
    }

    else
    {
      v163 = 0;
      v164 = 0;
    }

    v159 = Optional<A>.emptyToNil.getter(v163, v164);
    v160 = v65;
    if (v65)
    {
      *(v286 + 192) = v159;
      *(v286 + 200) = v65;

      MEMORY[0x277D82BE0](v267);
      _allocateUninitializedArray<A>(_:)();
      v157 = v66;
      *(v286 + 208) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v286 + 216) = v67;
      v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v68);

      *(v286 + 224) = SiriKitPaymentsIntent.simpleClassName.getter(v202);
      *(v286 + 232) = v69;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v286 + 224);
      v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".note", 5uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v70);

      v156 = *(v286 + 208);
      v155 = *(v286 + 216);

      outlined destroy of String.UTF8View(v286 + 208);
      *v157 = MEMORY[0x26D620710](v156, v155);
      v157[1] = v71;
      _finalizeUninitializedArray<A>(_:)();
      v158 = Array._bridgeToObjectiveC()().super.isa;

      [v267 setParameterKeyPaths_];
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v267);
      type metadata accessor for SFRichText();

      v72 = @nonobjc SFRichText.__allocating_init(string:)(v159, v160);
      v73 = *(v286 + 648);
      *(v286 + 648) = v72;
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v208);
  }

  MEMORY[0x277D82BE0](v265);
  v138 = *(v286 + 96);
  v139 = *(v286 + 104);

  if (v139)
  {
    v136 = MEMORY[0x26D620690](v138);

    v137 = v136;
  }

  else
  {
    v137 = 0;
  }

  [v265 setSubtitle_];
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v265);
  MEMORY[0x277D82BE0](v265);
  [v265 setIsCentered_];
  MEMORY[0x277D82BD8](v265);
  MEMORY[0x277D82BE0](v271);
  *(v286 + 696) = v271;
  *(v286 + 1016) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BE0](v265);
  v135 = [v265 title];
  if (v135)
  {
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v84;
    MEMORY[0x277D82BD8](v135);
    v133 = v131;
    v134 = v132;
  }

  else
  {
    v133 = 0;
    v134 = 0;
  }

  MEMORY[0x277D82BD8](v265);
  v129 = Optional<A>.emptyToNil.getter(v133, v134);
  v130 = v85;

  *(v286 + 160) = v129;
  *(v286 + 168) = v130;
  v128 = *(v286 + 168) != 0;
  outlined destroy of String.UTF8View(v286 + 160);
  MEMORY[0x277D82BE0](v265);
  if (v128)
  {
    v127 = 1;
  }

  else
  {
    MEMORY[0x277D82BE0](v265);
    v126 = [v265 subtitle];
    if (v126)
    {
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v86;
      MEMORY[0x277D82BD8](v126);
      v124 = v122;
      v125 = v123;
    }

    else
    {
      v124 = 0;
      v125 = 0;
    }

    MEMORY[0x277D82BD8](v265);
    v120 = Optional<A>.emptyToNil.getter(v124, v125);
    v121 = v87;

    *(v286 + 176) = v120;
    *(v286 + 184) = v121;
    v119 = *(v286 + 184) != 0;
    outlined destroy of String.UTF8View(v286 + 176);
    v127 = v119;
  }

  MEMORY[0x277D82BD8](v265);
  if (v127)
  {
    MEMORY[0x277D82BE0](v265);
    *(v286 + 744) = v265;
    Array.append(_:)();
  }

  v118 = *(v286 + 648);
  MEMORY[0x277D82BE0](v118);
  *(v286 + 704) = v118;
  v117 = *(v286 + 704) != 0;
  outlined destroy of SFRichText?((v286 + 704));
  if (v117)
  {
    v113 = *(v286 + 904);
    v112 = *(v286 + 888);
    *(v286 + 1024) = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v112 + 80, v286 + 56);
    v114 = *(v286 + 80);
    v115 = *(v286 + 88);
    __swift_project_boxed_opaque_existential_1((v286 + 56), v114);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Note", 4uLL, 1);
    String.toSpeakableString.getter();

    v88 = type metadata accessor for SpeakableString();
    (*(*(v88 - 8) + 56))(v113, 0, 1);
    v116 = (*(v115 + 8) + **(v115 + 8));
    v89 = swift_task_alloc();
    v90 = v114;
    v91 = v115;
    v92 = v116;
    *(v286 + 1032) = v89;
    *v89 = *(v286 + 544);
    v89[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v93 = *(v286 + 936);
    v94 = *(v286 + 904);

    return v92(v93, v94, v90, v91);
  }

  v95 = *(v286 + 640);
  MEMORY[0x277D82BE0](v95);
  *(v286 + 712) = v95;
  v111 = *(v286 + 712) != 0;
  outlined destroy of SFRichText?((v286 + 712));
  if (v111)
  {
    v107 = *(v286 + 896);
    v106 = *(v286 + 888);
    *(v286 + 1048) = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v106 + 80, v286 + 16);
    v108 = *(v286 + 40);
    v109 = *(v286 + 48);
    __swift_project_boxed_opaque_existential_1((v286 + 16), v108);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v96 = type metadata accessor for SpeakableString();
    (*(*(v96 - 8) + 56))(v107, 0, 1);
    v110 = (*(v109 + 16) + **(v109 + 16));
    v97 = swift_task_alloc();
    v90 = v108;
    v91 = v109;
    v92 = v110;
    *(v286 + 1056) = v97;
    *v97 = *(v286 + 544);
    v97[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v93 = *(v286 + 928);
    v94 = *(v286 + 896);

    return v92(v93, v94, v90, v91);
  }

  v101 = *(v286 + 856);
  v102 = *(v286 + 848);
  v103 = *(v286 + 840);
  type metadata accessor for SACardSnippet();

  MEMORY[0x277D82BE0](v102);
  MEMORY[0x277D82BE0](v101);
  v105 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  *(v286 + 1072) = v105;
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);

  *(v286 + 720) = v105;
  MEMORY[0x277D82BE0](v105);
  v98 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v104 = static AceViewProviding.makeSash(app:isDisambiguation:)(v103, v98 & 1);
  [v105 setSash_];
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BE0](v105);
  v99 = swift_task_alloc();
  *(v286 + 1080) = v99;
  *v99 = *(v286 + 544);
  v99[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  v100 = *(v286 + 864);

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v100);
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 544) = *v1;
  *(v5 + 1040) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 888));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v30 = v0[126];
  v24 = v0[117];
  v23 = v0[115];
  v25 = v0[114];
  v0[68] = v0;
  v26 = TemplatingResult.resultSectionsAsString.getter();
  v27 = v1;
  (*(v23 + 8))(v24, v25);
  v28 = @nonobjc SFRichText.__allocating_init(string:)(v26, v27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  [v30 setLeadingText_];
  MEMORY[0x277D82BD8](v28);
  v29 = v0[81];
  MEMORY[0x277D82BE0](v29);
  [v30 setTrailingText_];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BE0](v30);
  v0[92] = v30;
  Array.append(_:)();
  v2 = v0[80];
  MEMORY[0x277D82BE0](v2);
  v0[89] = v2;
  v21 = v0[89] != 0;
  outlined destroy of SFRichText?(v22 + 89);
  if (v21)
  {
    v17 = v22[112];
    v16 = v22[111];
    v22[131] = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v16 + 80, (v22 + 2));
    v18 = v22[5];
    v19 = v22[6];
    __swift_project_boxed_opaque_existential_1(v22 + 2, v18);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v3 = type metadata accessor for SpeakableString();
    (*(*(v3 - 8) + 56))(v17, 0, 1);
    v20 = (*(v19 + 16) + **(v19 + 16));
    v4 = swift_task_alloc();
    v22[132] = v4;
    *v4 = v22[68];
    v4[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v5 = v22[116];
    v6 = v22[112];

    return v20(v5, v6, v18, v19);
  }

  else
  {
    v11 = v22[107];
    v12 = v22[106];
    v13 = v22[105];
    type metadata accessor for SACardSnippet();

    MEMORY[0x277D82BE0](v12);
    MEMORY[0x277D82BE0](v11);
    v15 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
    v22[134] = v15;
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);

    v22[90] = v15;
    MEMORY[0x277D82BE0](v15);
    v8 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v14 = static AceViewProviding.makeSash(app:isDisambiguation:)(v13, v8 & 1);
    [v15 setSash_];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BE0](v15);
    v9 = swift_task_alloc();
    v22[135] = v9;
    *v9 = v22[68];
    v9[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v10 = v22[108];

    return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v10);
  }
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 544) = *v1;
  *(v5 + 1064) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 880));
    v2 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v13 = v0[125];
  v7 = v0[116];
  v6 = v0[115];
  v8 = v0[114];
  v0[68] = v0;
  v9 = TemplatingResult.resultSectionsAsString.getter();
  v10 = v1;
  (*(v6 + 8))(v7, v8);
  v11 = @nonobjc SFRichText.__allocating_init(string:)(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v13 setLeadingText_];
  MEMORY[0x277D82BD8](v11);
  v12 = v0[80];
  MEMORY[0x277D82BE0](v12);
  [v13 setTrailingText_];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v13);
  v0[91] = v13;
  Array.append(_:)();
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  type metadata accessor for SACardSnippet();

  MEMORY[0x277D82BE0](v15);
  MEMORY[0x277D82BE0](v14);
  v18 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  v0[134] = v18;
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v0[90] = v18;
  MEMORY[0x277D82BE0](v18);
  v2 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v17 = static AceViewProviding.makeSash(app:isDisambiguation:)(v16, v2 & 1);
  [v18 setSash_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BE0](v18);
  v3 = swift_task_alloc();
  v19[135] = v3;
  *v3 = v19[68];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v19[108];

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v4);
}

{
  v6 = v0[136];
  v1 = v0[134];
  v8 = v1;
  v9 = v0[126];
  v10 = v0[125];
  v11 = v0[124];
  v12 = v0[123];
  v13 = v0[122];
  v0[68] = v0;
  [v1 setConfirmationOptions_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  MEMORY[0x277D82BE0](v8);
  *v7 = v8;
  _finalizeUninitializedArray<A>(_:)();
  v14 = v3;
  MEMORY[0x277D82BD8](v8);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v4 = *(v0[68] + 8);

  return v4(v14);
}

{
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  v8 = v0[122];
  v1 = v0[113];
  v0[68] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = *(v0[68] + 8);

  return v2();
}

{
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  v8 = v0[122];
  v1 = v0[112];
  v0[68] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = *(v0[68] + 8);

  return v2();
}

{
  v1 = v0[134];
  v4 = v1;
  v5 = v0[126];
  v6 = v0[125];
  v7 = v0[124];
  v8 = v0[123];
  v9 = v0[122];
  v0[68] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  v2 = *(v0[68] + 8);

  return v2();
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v5 = *v2;
  v5[68] = *v2;
  v5[136] = a1;
  v5[137] = v1;

  if (v1)
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v3 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[106] = v8;
  v9[105] = v22;
  v9[104] = a8;
  v9[103] = a7;
  v9[102] = a6;
  v9[101] = a5;
  v9[100] = a4;
  v9[99] = a3;
  v9[98] = a2;
  v9[97] = a1;
  v9[74] = v9;
  v9[75] = 0;
  v9[76] = 0;
  v9[77] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[80] = 0;
  v9[81] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[56] = 0;
  v9[57] = 0;
  v9[82] = 0;
  v9[83] = 0;
  v9[85] = 0;
  v9[87] = 0;
  v9[58] = 0;
  v9[59] = 0;
  v9[60] = 0;
  v9[61] = 0;
  v9[92] = 0;
  v9[93] = 0;
  v9[94] = 0;
  v9[95] = 0;
  v9[96] = 0;
  v10 = type metadata accessor for Logger();
  v9[107] = v10;
  v9[108] = *(v10 - 8);
  v9[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v9[110] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v9[111] = swift_task_alloc();
  type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v9[112] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v9[113] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  v9[114] = v11;
  v9[115] = *(v11 - 8);
  v9[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v9[117] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v9[118] = swift_task_alloc();
  type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v9[119] = swift_task_alloc();
  v12 = type metadata accessor for OutputGenerationManifest();
  v9[120] = v12;
  v9[121] = *(v12 - 8);
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v9[124] = type metadata accessor for SiriPaymentsSnippetModel(0);
  v9[125] = swift_task_alloc();
  v9[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();
  v13 = type metadata accessor for TemplatingResult();
  v9[129] = v13;
  v9[130] = *(v13 - 8);
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v9[133] = swift_task_alloc();
  v9[75] = a2;
  v9[76] = a3;
  v9[77] = a4;
  v9[78] = a5;
  v9[79] = a6;
  v9[80] = a7;
  v9[81] = v8;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)()
{
  v1 = *(v0 + 816);
  *(v0 + 592) = v0;
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(v7 + 8) + **(v7 + 8));
  v2 = swift_task_alloc();
  v5[134] = v2;
  *v2 = v5[74];
  v2[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v3 = v5[133];

  return v8(v3, v6, v7);
}

{
  v4 = *v1;
  *(v4 + 592) = *v1;
  *(v4 + 1080) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v7 = v0[133];
  v6 = v0[130];
  v8 = v0[129];
  v9 = v0[106];
  v0[74] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[136] = v1;
  v0[137] = v2;
  v0[54] = v1;
  v0[55] = v2;
  v3 = *(v6 + 8);
  v0[138] = v3;
  v0[139] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v8);
  outlined init with copy of GlobalsProviding(v9, (v0 + 44));
  v13 = v0[47];
  v11 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v4 = swift_task_alloc();
  *(v10 + 1120) = v4;
  *v4 = *(v10 + 592);
  v4[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);

  return v12(v13, v11);
}

{
  v26 = v0[143];
  v25 = v0[142];
  v24 = v0[137];
  v23 = v0[136];
  v0[74] = v0;
  v0[56] = v25;
  v0[57] = v26;
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  v1 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v23, v24, v25, v26);
  v27 = v2;
  v0[144] = v1;
  v0[145] = v2;
  v0[82] = v1;
  v0[83] = v2;
  v28 = [v1 commands];
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v28);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 146, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  Array.subscript.getter();
  v3 = v22[84];
  v22[146] = v3;
  v22[85] = v3;

  v19 = [v27 commands];
  if (v19)
  {
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v19);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 147, 0);
  }

  v13 = v22[128];
  v12 = v22[103];
  Array.subscript.getter();
  v5 = v22[86];
  v22[147] = v5;
  v22[87] = v5;

  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1);
  SpeakableString.init(serializedValue:)();
  v6 = type metadata accessor for SpeakableString();
  v22[148] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v22[149] = v8;
  v22[150] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v13, 0, 1);
  v16 = (*(v15 + 16) + **(v15 + 16));
  v9 = swift_task_alloc();
  v22[151] = v9;
  *v9 = v22[74];
  v9[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v10 = v22[132];
  v11 = v22[128];

  return v16(v10, v11, v14, v15);
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 592) = *v1;
  *(v5 + 1216) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 1008));
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v13 = v0[149];
  v12 = v0[148];
  v7 = v0[138];
  v8 = v0[132];
  v9 = v0[129];
  v11 = v0[127];
  v10 = v0[103];
  v0[74] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[153] = v1;
  v0[154] = v2;
  v0[58] = v1;
  v0[59] = v2;
  v7(v8, v9);
  v15 = v10[3];
  v16 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v15);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
  SpeakableString.init(serializedValue:)();
  v13(v11, 0, 1, v12);
  v17 = (*(v16 + 16) + **(v16 + 16));
  v3 = swift_task_alloc();
  v14[155] = v3;
  *v3 = v14[74];
  v3[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v4 = v14[131];
  v5 = v14[127];

  return v17(v4, v5, v15, v16);
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 592) = *v1;
  *(v5 + 1248) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v4 + 1000));
    v2 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v99 = v0[138];
  v100 = v0[131];
  v102 = v0[129];
  v0[74] = v0;
  v101 = TemplatingResult.resultSectionsAsString.getter();
  v103 = v1;
  v0[157] = v1;
  v0[60] = v101;
  v0[61] = v1;
  v99(v100, v102);

  swift_getObjectType();
  swift_unknownObjectRetain();
  v104 = SAClientBoundCommand.data.getter();
  v105 = v2;
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v106 = SAClientBoundCommand.data.getter();
  v107 = v3;
  swift_unknownObjectRelease();
  v0[62] = App.appIdentifier.getter();
  v0[63] = v4;
  if (v0[63])
  {
    v108 = *(v98 + 496);
  }

  else
  {
    v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (*(v98 + 504))
    {
      outlined destroy of String.UTF8View(v98 + 496);
    }
  }

  v5 = SiriPaymentsSnippetModel.PaymentConfirmationModel.init(confirmLabel:cancelLabel:noteLabel:feeLabel:confirmDI:cancelDI:appId:)(*(v98 + 1088), *(v98 + 1096), *(v98 + 1136), *(v98 + 1144), *(v98 + 1224), *(v98 + 1232), v101, v103, (v98 + 16), v104, v105, v106, v107, v108._countAndFlagsBits, v108._object);
  if (App.isFirstParty.getter(v5))
  {
    MEMORY[0x277D82BE0](*(v98 + 792));
    v97 = App.systemUIExtensionBundleId.getter();
    if (v6)
    {
      v95 = MEMORY[0x26D620690](v97);

      v96 = v95;
    }

    else
    {
      v96 = 0;
    }

    v94 = *(v98 + 792);
    [v94 _setUiExtensionBundleId_];
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v94);
  }

  v93 = *(v98 + 800);
  v92 = *(v98 + 792);
  MEMORY[0x277D82BE0](v92);
  MEMORY[0x277D82BE0](v93);
  MEMORY[0x277D82BE0](v92);
  MEMORY[0x277D82BE0](v93);
  *(v98 + 512) = v92;
  *(v98 + 520) = v93;
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INRequestPaymentIntentC_So0abC8ResponseCtMd, &_sSo22INRequestPaymentIntentC_So0abC8ResponseCtMR);
  if (swift_dynamicCast())
  {
    v79 = *(v98 + 1008);
    v78 = *(v98 + 1000);
    v81 = *(v98 + 984);
    v82 = *(v98 + 976);
    v83 = *(v98 + 960);
    v87 = *(v98 + 952);
    v77 = *(v98 + 944);
    v76 = *(v98 + 936);
    v86 = *(v98 + 928);
    v85 = *(v98 + 912);
    v91 = *(v98 + 800);
    v90 = *(v98 + 792);
    v80 = *(v98 + 968);
    v84 = *(v98 + 920);
    v89 = *(v98 + 528);
    v88 = *(v98 + 536);
    *(v98 + 760) = v89;
    *(v98 + 768) = v88;
    MEMORY[0x277D82BE0](v89);
    type metadata accessor for INRequestPaymentIntent();
    CodableIntent.init(wrappedValue:)();
    MEMORY[0x277D82BE0](v88);
    type metadata accessor for INRequestPaymentIntentResponse();
    CodableIntentResponse.init(wrappedValue:)();
    outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v98 + 16), (v98 + 240));
    SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(intent:response:confirmation:)(v77, v76, (v98 + 16), v87);
    outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v87, v78);
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v78, v79);
    static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v86);
    static DialogPhase.confirmation.getter();
    *(swift_task_alloc() + 16) = v86;
    OutputGenerationManifest.init(dialogPhase:_:)();

    (*(v80 + 32))(v81, v82, v83);
    (*(v84 + 8))(v86, v85);
    outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    outlined destroy of (A, B)((v98 + 512));
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
LABEL_24:
    v26 = *(v98 + 1008);
    v25 = *(v98 + 992);
    v30 = *(v98 + 984);
    v32 = *(v98 + 976);
    v31 = *(v98 + 960);
    v28 = *(v98 + 808);
    v29 = *(v98 + 968);
    type metadata accessor for ResponseFactory();
    *(v98 + 1264) = ResponseFactory.__allocating_init()();
    *(v98 + 416) = v25;
    *(v98 + 424) = lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v98 + 392));
    outlined init with copy of SiriPaymentsSnippetModel(v26, boxed_opaque_existential_1);
    type metadata accessor for DialogExecutionResult();
    _allocateUninitializedArray<A>(_:)();
    v27 = v20;
    MEMORY[0x277D82BE0](v28);
    *v27 = v28;
    _finalizeUninitializedArray<A>(_:)();
    v33 = v21;
    *(v98 + 1272) = v21;
    (*(v29 + 16))(v32, v30, v31);
    v34 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v22 = swift_task_alloc();
    *(v98 + 1280) = v22;
    *v22 = *(v98 + 592);
    v22[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
    v23 = *(v98 + 976);
    v24 = *(v98 + 776);

    return v34(v24, v98 + 392, v33, v23);
  }

  v75 = *(v98 + 800);
  v74 = *(v98 + 792);
  outlined destroy of (A, B)((v98 + 512));
  MEMORY[0x277D82BE0](v74);
  MEMORY[0x277D82BE0](v75);
  *(v98 + 544) = v74;
  *(v98 + 552) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19INSendPaymentIntentC_So0abC8ResponseCtMd, &_sSo19INSendPaymentIntentC_So0abC8ResponseCtMR);
  if (swift_dynamicCast())
  {
    v60 = *(v98 + 1008);
    v59 = *(v98 + 1000);
    v61 = *(v98 + 928);
    v58 = *(v98 + 896);
    v57 = *(v98 + 888);
    v56 = *(v98 + 880);
    v71 = *(v98 + 560);
    v70 = *(v98 + 568);
    *(v98 + 736) = v71;
    *(v98 + 744) = v70;
    MEMORY[0x277D82BE0](v71);
    type metadata accessor for INSendPaymentIntent();
    CodableIntent.init(wrappedValue:)();
    MEMORY[0x277D82BE0](v70);
    type metadata accessor for INSendPaymentIntentResponse();
    CodableIntentResponse.init(wrappedValue:)();
    outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v98 + 16), (v98 + 128));
    SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(intent:response:confirmation:)(v57, v56, (v98 + 16), v58);
    outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v58, v59);
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v59, v60);
    *(v98 + 752) = v61;
    v63 = *(v98 + 984);
    v64 = *(v98 + 976);
    v65 = *(v98 + 960);
    v68 = *(v98 + 928);
    v67 = *(v98 + 912);
    v69 = *(v98 + 896);
    v73 = *(v98 + 800);
    v72 = *(v98 + 792);
    v62 = *(v98 + 968);
    v66 = *(v98 + 920);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v68);
    static DialogPhase.confirmation.getter();
    *(swift_task_alloc() + 16) = v68;
    OutputGenerationManifest.init(dialogPhase:_:)();

    (*(v62 + 32))(v63, v64, v65);
    (*(v66 + 8))(v68, v67);
    outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    outlined destroy of (A, B)((v98 + 544));
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    goto LABEL_24;
  }

  v8 = *(v98 + 872);
  v52 = *(v98 + 856);
  v51 = *(v98 + 864);
  outlined destroy of (A, B)((v98 + 544));
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v51 + 16))(v8, v9, v52);
  oslog = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v55 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v53))
  {
    v10 = *(v98 + 1248);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v48 = createStorage<A>(capacity:type:)(0, v46, v46);
    v49 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v98 + 704) = buf;
    *(v98 + 712) = v48;
    *(v98 + 720) = v49;
    serialize(_:at:)(0, (v98 + 704));
    serialize(_:at:)(0, (v98 + 704));
    *(v98 + 728) = v55;
    v50 = swift_task_alloc();
    v50[2] = v98 + 704;
    v50[3] = v98 + 712;
    v50[4] = v98 + 720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v10)
    {
    }

    _os_log_impl(&dword_2686B1000, oslog, v53, "#ConfirmationViewBuilder makeModernizedPaymentConfirmation encountered unexpected intent type", buf, 2u);
    destroyStorage<A>(_:count:)(v48, 0, v46);
    destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v44 = *(v98 + 1160);
  v45 = *(v98 + 1152);
  v36 = *(v98 + 872);
  v37 = *(v98 + 856);
  v43 = *(v98 + 800);
  v42 = *(v98 + 792);
  v35 = *(v98 + 864);
  MEMORY[0x277D82BD8](oslog);
  (*(v35 + 8))(v36, v37);
  *(v98 + 576) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v98 + 584) = v12;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  ObjectType = swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)(ObjectType);
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v15);

  v39 = *(v98 + 576);
  v38 = *(v98 + 584);

  outlined destroy of String.UTF8View(v98 + 576);
  v41 = MEMORY[0x26D620710](v39, v38);
  v40 = v16;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v17 = v41;
  *(v17 + 8) = v40;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 4;
  swift_willThrow();
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v98 + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);

  v18 = *(*(v98 + 592) + 8);

  return v18();
}

{
  v7 = *v0;
  v6 = (*v0 + 392);
  v4 = *(*v0 + 976);
  v3 = *(*v0 + 968);
  v5 = *(*v0 + 960);
  v7[74] = *v0;

  v1 = *(v3 + 8);
  v7[161] = v1;
  v7[162] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v6);

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:), 0);
}

{
  v1 = v0[161];
  v4 = v0[145];
  v5 = v0[144];
  v6 = v0[126];
  v0[74] = v0;
  v1();
  outlined destroy of SiriPaymentsSnippetModel(v6);
  outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v0 + 2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[74] + 8);

  return v2();
}

{
  *(v0 + 592) = v0;

  v1 = *(*(v0 + 592) + 8);

  return v1();
}

{
  *(v0 + 592) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));

  v1 = *(*(v0 + 592) + 8);

  return v1();
}

{
  v4 = v0[145];
  v5 = v0[144];
  v1 = v0[128];
  v0[74] = v0;
  outlined destroy of SpeakableString?(v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[74] + 8);

  return v2();
}

{
  v4 = v0[145];
  v5 = v0[144];
  v1 = v0[127];
  v0[74] = v0;
  outlined destroy of SpeakableString?(v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[74] + 8);

  return v2();
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[74] = *v3;
  v6[141] = v2;
  v6[142] = a1;
  v6[143] = a2;

  if (v2)
  {
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

id ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v108 = a3;
  v112 = a2;
  v111 = a1;
  v122 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v134 = 0;
  v107 = 0;
  v119 = type metadata accessor for Logger();
  v113 = v119;
  v114 = *(v119 - 8);
  v118 = v114;
  v115 = v114;
  v116 = *(v114 + 64);
  v4 = &v30 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v4;
  v145 = MEMORY[0x28223BE20](v111, v112);
  v146 = v5;
  v143 = v6;
  v144 = v7;
  v142 = v8;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v118 + 16))(v4, v9, v119);
  v124 = Logger.logObject.getter();
  v120 = v124;
  v123 = static os_log_type_t.debug.getter();
  v121 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v125 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v124, v123))
  {
    v10 = v107;
    v98 = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = v98;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = 0;
    v99 = createStorage<A>(capacity:type:)(0, v95, v95);
    v97 = v99;
    v100 = createStorage<A>(capacity:type:)(v96, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v129 = v98;
    v128 = v99;
    v127 = v100;
    v101 = 0;
    v102 = &v129;
    serialize(_:at:)(0, &v129);
    serialize(_:at:)(v101, v102);
    v126 = v125;
    v103 = &v30;
    MEMORY[0x28223BE20](&v30, v11);
    v104 = &v30 - 6;
    *(&v30 - 4) = v12;
    *(&v30 - 3) = &v128;
    *(&v30 - 2) = &v127;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v106 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v120, v121, "#ConfirmationViewBuilder makeYesNoOptions", v94, 2u);
      v92 = 0;
      destroyStorage<A>(_:count:)(v97, 0, v95);
      destroyStorage<A>(_:count:)(v100, v92, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v94, MEMORY[0x277D84B78]);

      v93 = v106;
    }
  }

  else
  {

    v93 = v107;
  }

  (*(v115 + 8))(v117, v113);
  v34 = 0;
  v30 = type metadata accessor for SAUIConfirmationOption();
  v90 = SAUIAppPunchOut.__allocating_init()();
  v141 = v90;

  v31 = MEMORY[0x26D620690](v111, v112);

  v32 = 0x1FB677000uLL;
  [v90 0x1FB6776F8];

  v91 = SAUIAppPunchOut.__allocating_init()();
  v140 = v91;

  v33 = MEMORY[0x26D620690](v108, v109);

  [v91 (v32 + 1784)];

  v43 = type metadata accessor for SKIDirectInvocationPayload();
  v54 = 0;
  v89 = static SKIDirectInvocationPayload.from(_:)(0);
  v139 = v89;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v56 = 1;
  v69 = 1;
  v36 = _allocateUninitializedArray<A>(_:)();
  v35 = v13;
  v138[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(v54);
  v138[1] = v14;
  v57 = MEMORY[0x277D837D0];
  v55 = MEMORY[0x277D837E0];
  v37 = v138;
  _convertToAnyHashable<A>(_:)();
  v15 = Constants.DirectInvocationButtonType.rawValue.getter(v54);
  v16 = v35;
  *(v35 + 64) = v57;
  *(v16 + 40) = v15;
  *(v16 + 48) = v17;
  _finalizeUninitializedArray<A>(_:)();
  v38 = v18;
  outlined destroy of String.UTF8View(v37);
  v64 = MEMORY[0x277D84F70] + 8;
  v63 = MEMORY[0x277D84030];
  v65 = MEMORY[0x277D84038];
  v39 = Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = 0x1FAB7F000uLL;
  [v89 0x1FAB7FD8BLL];

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v51 = _allocateUninitializedArray<A>(_:)();
  v49 = v19;
  v70 = 0x277D5C000uLL;
  v47 = objc_opt_self();
  v44 = objc_opt_self();
  v71 = v110 + 40;
  v46 = v135;
  outlined init with copy of GlobalsProviding(v110 + 40, v135);
  v42 = v136;
  v41 = v137;
  __swift_project_boxed_opaque_existential_1(v46, v136);
  v45 = DeviceState.asInvocationContext.getter();
  v74 = 0x1FC634000uLL;
  v48 = [v44 0x1FC6346A7];

  __swift_destroy_boxed_opaque_existential_0(v46);
  v78 = 0x1FC634000uLL;
  v50 = [v47 0x1FC634687];
  swift_unknownObjectRelease();
  *v49 = v50;
  _finalizeUninitializedArray<A>(_:)();
  v52 = v20;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  v86 = 0x1FAAC5000uLL;
  [v90 0x1FAAC564BLL];

  v88 = static SKIDirectInvocationPayload.from(_:)(v54);
  v134 = v88;
  v59 = _allocateUninitializedArray<A>(_:)();
  v58 = v21;
  v133[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(v54);
  v133[1] = v22;
  v61 = v133;
  _convertToAnyHashable<A>(_:)();
  v23 = Constants.DirectInvocationButtonType.rawValue.getter(v56);
  v24 = v58;
  *(v58 + 64) = v57;
  *(v24 + 40) = v23;
  *(v24 + 48) = v25;
  _finalizeUninitializedArray<A>(_:)();
  v62 = v26;
  outlined destroy of String.UTF8View(v61);
  v66 = Dictionary.init(dictionaryLiteral:)();
  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v88 (v67 + 3467)];

  v83 = _allocateUninitializedArray<A>(_:)();
  v81 = v27;
  v79 = objc_opt_self();
  v75 = objc_opt_self();
  v77 = v130;
  outlined init with copy of GlobalsProviding(v71, v130);
  v73 = v131;
  v72 = v132;
  __swift_project_boxed_opaque_existential_1(v77, v131);
  v76 = DeviceState.asInvocationContext.getter();
  v80 = [v75 (v74 + 1703)];

  __swift_destroy_boxed_opaque_existential_0(v77);
  v82 = [v79 (v78 + 1671)];
  swift_unknownObjectRelease();
  *v81 = v82;
  _finalizeUninitializedArray<A>(_:)();
  v85 = v28;
  v87 = Array._bridgeToObjectiveC()().super.isa;

  [v91 (v86 + 1611)];

  return v90;
}

unint64_t type metadata accessor for SASTColumnDataListItem()
{
  v2 = lazy cache variable for type metadata for SASTColumnDataListItem;
  if (!lazy cache variable for type metadata for SASTColumnDataListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTColumnDataListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t closure #1 in ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v8 = a2;
  v16 = 0;
  v15 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v8);
  v12 = &v7 - v7;
  v16 = a1;
  v15 = v4;
  v11 = type metadata accessor for NLContextUpdate();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v12, v8);
  v5 = *(v9 + 56);
  v14 = 1;
  v5(v12, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, v14 & 1);
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t closure #2 in ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v8 = a2;
  v16 = 0;
  v15 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v8);
  v12 = &v7 - v7;
  v16 = a1;
  v15 = v4;
  v11 = type metadata accessor for NLContextUpdate();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v12, v8);
  v5 = *(v9 + 56);
  v14 = 1;
  v5(v12, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, v14 & 1);
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t DefaultStringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x26D620760](v1);
}

uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(uint64_t a1)
{
  v2[26] = v1;
  v2[16] = v2;
  v2[17] = 0;
  v2[18] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v3 = type metadata accessor for Logger();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[17] = a1;
  v2[18] = v1;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeTCCAcceptanceView(app:), 0);
}

uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)()
{
  v1 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v0[16] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v17 + 176) = buf;
    *(v17 + 184) = v14;
    *(v17 + 192) = v15;
    serialize(_:at:)(0, (v17 + 176));
    serialize(_:at:)(0, (v17 + 176));
    *(v17 + 200) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 176;
    v16[3] = v17 + 184;
    v16[4] = v17 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#ConfirmationViewBuilder makeTCCAcceptanceView", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v6 = *(v17 + 232);
  v7 = *(v17 + 216);
  v8 = *(v17 + 208);
  v5 = *(v17 + 224);
  MEMORY[0x277D82BD8](v21);
  (*(v5 + 8))(v6, v7);
  outlined init with copy of GlobalsProviding(v8, v17 + 16);
  v11 = *(v17 + 40);
  v9 = *(v17 + 48);
  __swift_project_boxed_opaque_existential_1((v17 + 16), v11);
  v10 = (*(v9 + 24) + **(v9 + 24));
  v3 = swift_task_alloc();
  *(v17 + 240) = v3;
  *v3 = *(v17 + 128);
  v3[1] = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);

  return v10(v11, v9);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v5 = v0[26];
  v0[16] = v0;
  v0[12] = v2;
  v0[13] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of GlobalsProviding(v5, (v0 + 7));
  v9 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  v8 = (*(v7 + 16) + **(v7 + 16));
  v3 = swift_task_alloc();
  *(v6 + 272) = v3;
  *v3 = *(v6 + 128);
  v3[1] = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);

  return v8(v9, v7);
}

{
  v37 = v0[37];
  v36 = v0[36];
  v35 = v0[33];
  v34 = v0[32];
  v0[16] = v0;
  v0[14] = v36;
  v0[15] = v37;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v39 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v34, v35, v36, v37);
  v38 = v1;
  v0[19] = v39;
  v0[20] = v1;
  type metadata accessor for SAUIConfirmationView();
  v40 = SAUIAppPunchOut.__allocating_init()();
  v0[21] = v40;
  v41 = [v39 commands];
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v41);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = isa;
  }

  else
  {
    v30 = 0;
  }

  [v40 setConfirmCommands_];
  MEMORY[0x277D82BD8](v30);
  v28 = [v39 label];
  if (v28)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v2;
    MEMORY[0x277D82BD8](v28);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  if (v27)
  {
    v22 = MEMORY[0x26D620690](v26);

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v40 setConfirmText_];
  MEMORY[0x277D82BD8](v23);
  v21 = [v38 commands];
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v21);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v40 setDenyCommands_];
  MEMORY[0x277D82BD8](v18);
  v16 = [v38 label];
  if (v16)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v3;
    MEMORY[0x277D82BD8](v16);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v15)
  {
    v10 = MEMORY[0x26D620690](v14);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v40 setDenyText_];
  MEMORY[0x277D82BD8](v7);
  type metadata accessor for SAUIConfirmationOption();
  _allocateUninitializedArray<A>(_:)();
  v8 = v4;
  MEMORY[0x277D82BE0](v39);
  *v8 = v39;
  MEMORY[0x277D82BE0](v38);
  v8[1] = v38;
  _finalizeUninitializedArray<A>(_:)();
  v9 = Array._bridgeToObjectiveC()().super.isa;

  [v40 setAllConfirmationOptions_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);

  v5 = *(*(v33 + 128) + 8);

  return v5(v40);
}

{
  *(v0 + 128) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 128) + 8);

  return v1();
}

{
  *(v0 + 128) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(*(v0 + 128) + 8);

  return v1();
}

uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[16] = *v3;
  v6[31] = v2;
  v6[32] = a1;
  v6[33] = a2;

  if (v2)
  {
    v4 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  else
  {
    v4 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v6 = *v3;
  v6[16] = *v3;
  v6[35] = v2;
  v6[36] = a1;
  v6[37] = a2;

  if (v2)
  {
    v4 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  else
  {
    v4 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[24] = v7;
  v8[23] = a7;
  v8[22] = a5;
  v8[21] = a4;
  v8[20] = a3;
  v8[19] = a2;
  v8[18] = a1;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v9 = type metadata accessor for Logger();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = v7;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[27];
  v36 = v0[26];
  v37 = v0[25];
  v0[4] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v36 + 16))(v1, v2, v37);
  v39 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v40 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v39, v38))
  {
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(0, v30, v30);
    v33 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v35 + 112) = v31;
    *(v35 + 120) = v32;
    *(v35 + 128) = v33;
    serialize(_:at:)(0, (v35 + 112));
    serialize(_:at:)(0, (v35 + 112));
    *(v35 + 136) = v40;
    v34 = swift_task_alloc();
    v34[2] = v35 + 112;
    v34[3] = v35 + 120;
    v34[4] = v35 + 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v39, v38, "#ConfirmationViewBuilder makeWatchFirstPartyView", v31, 2u);
    destroyStorage<A>(_:count:)(v32, 0, v30);
    destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v31, MEMORY[0x277D84B78]);
  }

  v27 = *(v35 + 216);
  v28 = *(v35 + 200);
  v26 = *(v35 + 208);
  MEMORY[0x277D82BD8](v39);
  (*(v26 + 8))(v27, v28);
  type metadata accessor for SASTItemGroup();
  v29 = SAUIAppPunchOut.__allocating_init()();
  *(v35 + 224) = v29;
  *(v35 + 80) = v29;
  if ((static RFFeatureFlags.ResponseFramework.SMART.getter() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    _allocateUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setTemplateItems_];
    MEMORY[0x277D82BD8](isa);
    v24 = App.appIdentifier.getter();
    v25 = v3;
    if (v3)
    {
      v21 = *(v35 + 152);
      *(v35 + 16) = v24;
      *(v35 + 24) = v3;
      type metadata accessor for SASTApplicationBannerItem();
      MEMORY[0x277D82BE0](v21);

      *(v35 + 104) = SASTApplicationBannerItem.init(intent:appId:)(v21, v24, v25);
      v22 = [v29 templateItems];
      if (v22)
      {
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v22);
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (!v20)
      {
        return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 541, 0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
      Array.append(_:)();
      v18 = Array._bridgeToObjectiveC()().super.isa;

      [v29 setTemplateItems_];
      MEMORY[0x277D82BD8](v18);
    }
  }

  MEMORY[0x277D82BE0](*(v35 + 152));
  v17 = App.systemUIExtensionBundleId.getter();
  if (v5)
  {
    v15 = MEMORY[0x26D620690](v17);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v12 = *(v35 + 160);
  v10 = *(v35 + 152);
  [v10 _setUiExtensionBundleId_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v10);
  type metadata accessor for SAIntentGroupSendPaymentSnippet();
  v13 = SAUIAppPunchOut.__allocating_init()();
  *(v35 + 232) = v13;
  *(v35 + 88) = v13;
  type metadata accessor for SAIntentGroupProtobufMessage();
  MEMORY[0x277D82BE0](v10);
  v11 = SAIntentGroupProtobufMessage.init(intent:)(v10);
  [v13 setIntent_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v12);
  v14 = SAIntentGroupProtobufMessage.init(response:)(v12);
  [v13 setIntentResponse_];
  MEMORY[0x277D82BD8](v14);
  v6 = swift_task_alloc();
  *(v35 + 240) = v6;
  *v6 = *(v35 + 32);
  v6[1] = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  v7 = *(v35 + 168);
  v8 = *(v35 + 152);
  v9 = *(v35 + 144);

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v9, v8, v7);
}

{
  v1 = v0[31];
  v0[4] = v0;
  v0[12] = v1;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v9 = v19[31];
    v10 = v19[29];
    v11 = v19[28];
    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();
    v8 = v4;
    MEMORY[0x277D82BE0](v10);
    *v8 = v10;
    MEMORY[0x277D82BE0](v9);
    v8[1] = v9;
    _finalizeUninitializedArray<A>(_:)();
    v12 = v5;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v18 = v12;
  }

  else
  {
    v14 = v19[31];
    v15 = v19[29];
    v16 = v19[28];
    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();
    v13 = v2;
    MEMORY[0x277D82BE0](v16);
    *v13 = v16;
    MEMORY[0x277D82BE0](v15);
    v13[1] = v15;
    MEMORY[0x277D82BE0](v14);
    v13[2] = v14;
    _finalizeUninitializedArray<A>(_:)();
    v17 = v3;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v18 = v17;
  }

  v6 = *(v19[4] + 8);

  return v6(v18);
}

{
  v1 = v0[29];
  v4 = v0[28];
  v0[4] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[31] = a1;
  v5[32] = v1;

  if (v1)
  {
    v3 = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v3 = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

unint64_t lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError()
{
  v2 = lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError;
  if (!lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t default argument 1 of static SATextDecorationRegion.from(_:property:)()
{
  v1 = *MEMORY[0x277D487B8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D487B8]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = v3;
  v4[27] = a3;
  v4[26] = a2;
  v4[25] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v5 = type metadata accessor for TemplatingResult();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)()
{
  v1 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v0[7] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v2, v26);
  v28 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v29 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v28, v27))
  {
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0, v19, v19);
    v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v24 + 168) = v20;
    *(v24 + 176) = v21;
    *(v24 + 184) = v22;
    serialize(_:at:)(0, (v24 + 168));
    serialize(_:at:)(0, (v24 + 168));
    *(v24 + 192) = v29;
    v23 = swift_task_alloc();
    v23[2] = v24 + 168;
    v23[3] = v24 + 176;
    v23[4] = v24 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v28, v27, "#ConfirmationViewBuilder makeWatchConfirmationButtons", v20, 2u);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
  }

  v15 = *(v24 + 272);
  v16 = *(v24 + 256);
  v17 = *(v24 + 208);
  v14 = *(v24 + 264);
  MEMORY[0x277D82BD8](v28);
  (*(v14 + 8))(v15, v16);
  *(v24 + 280) = type metadata accessor for SASTCommandTemplateAction();
  MEMORY[0x277D82BE0](v17);
  v18 = App.appIdentifier.getter();
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 568, 0);
  }

  v10 = *(v24 + 216);
  v4 = SASTCommandTemplateAction.init(intent:appId:)(*(v24 + 208), v18, v3);
  *(v24 + 288) = v4;
  *(v24 + 96) = v4;
  *(v24 + 296) = type metadata accessor for SASTButtonItem();
  v5 = SAUIAppPunchOut.__allocating_init()();
  *(v24 + 304) = v5;
  *(v24 + 104) = v5;
  *(v24 + 312) = type metadata accessor for SAUIDecoratedText();
  v6 = SAUIAppPunchOut.__allocating_init()();
  *(v24 + 320) = v6;
  *(v24 + 112) = v6;
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = (*(v12 + 8) + **(v12 + 8));
  v7 = swift_task_alloc();
  *(v24 + 328) = v7;
  *v7 = *(v24 + 56);
  v7[1] = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  v8 = *(v24 + 248);

  return v13(v8, v11, v12);
}

{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 336) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  else
  {
    v2 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v18 = v0[40];
  v17 = v0[38];
  v15 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v19 = v0[26];
  v0[7] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v16 = MEMORY[0x26D620690](v1);
  (*(v13 + 8))(v15, v14);

  [v18 setText_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BE0](v18);
  [v17 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BE0](v19);
  v20 = App.appIdentifier.getter();
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 574, 0);
  }

  v8 = *(v12 + 224);
  v3 = SASTCommandTemplateAction.init(intent:appId:)(*(v12 + 208), v20, v2);
  *(v12 + 344) = v3;
  *(v12 + 120) = v3;
  v4 = SAUIAppPunchOut.__allocating_init()();
  *(v12 + 352) = v4;
  *(v12 + 128) = v4;
  v5 = SAUIAppPunchOut.__allocating_init()();
  *(v12 + 360) = v5;
  *(v12 + 136) = v5;
  outlined init with copy of GlobalsProviding(v8, v12 + 16);
  v11 = *(v12 + 40);
  v9 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_1((v12 + 16), v11);
  v10 = (*(v9 + 8) + **(v9 + 8));
  v6 = swift_task_alloc();
  *(v12 + 368) = v6;
  *v6 = *(v12 + 56);
  v6[1] = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);

  return v10(v11, v9);
}

{
  v1 = v0[48];
  v41 = v0[45];
  v40 = v0[44];
  v42 = v0[40];
  v0[7] = v0;
  v39 = MEMORY[0x26D620690](v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v41 setText_];
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BE0](v41);
  [v40 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v41);
  v43 = [v42 text];
  if (v43)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v2;
    MEMORY[0x277D82BD8](v43);
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  if (!v37)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 580, 0);
  }

  v33 = [*(v38 + 360) text];
  if (v33)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v4;
    MEMORY[0x277D82BD8](v33);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (!v32)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/ConfirmationViewBuilder.swift", 49, 2, 580, 0);
  }

  v27 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v36, v37, v31, v32);
  v26 = v5;

  *(v38 + 144) = v27;
  *(v38 + 152) = v26;
  v28 = [v27 commands];
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v28);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = isa;
  }

  else
  {
    v23 = 0;
  }

  [*(v38 + 288) setCommands_];
  MEMORY[0x277D82BD8](v23);
  v21 = [v26 commands];
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v21);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v10 = *(v38 + 360);
  v11 = *(v38 + 352);
  v12 = *(v38 + 344);
  v13 = *(v38 + 320);
  v14 = *(v38 + 304);
  v15 = *(v38 + 288);
  [v12 setCommands_];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BE0](v15);
  [v14 0x1FAEC4178];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v12);
  [v11 0x1FAEC4178];
  swift_unknownObjectRelease();
  [v14 0x1FBDBEDF3];
  [v11 0x1FBDBEDF3];
  type metadata accessor for SASTItemGroup();
  v16 = SAUIAppPunchOut.__allocating_init()();
  *(v38 + 160) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  v8 = v6;
  MEMORY[0x277D82BE0](v14);
  *v8 = v14;
  MEMORY[0x277D82BE0](v11);
  v8[1] = v11;
  _finalizeUninitializedArray<A>(_:)();
  v9 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setTemplateItems_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v7 = *(*(v38 + 56) + 8);

  return v7(v16);
}

{
  v1 = v0[40];
  v4 = v0[38];
  v5 = v0[36];
  v0[7] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[7] + 8);

  return v2();
}

{
  v3 = v0[45];
  v4 = v0[44];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[36];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v1 = *(v0[7] + 8);

  return v1();
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[7] = *v3;
  v6[47] = v2;
  v6[48] = a1;
  v6[49] = a2;

  if (v2)
  {
    v4 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  else
  {
    v4 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t implicit closure #9 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for SASTItemGroup();
  lazy protocol witness table accessor for type SASTItemGroup and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[11] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v3 = type metadata accessor for TemplatingResult();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[12] = a1;
  v2[13] = v1;

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)()
{
  v1 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v0[11] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v19 + 16))(v1, v2, v20);
  v22 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v22, v21))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 136) = buf;
    *(v18 + 144) = v15;
    *(v18 + 152) = v16;
    serialize(_:at:)(0, (v18 + 136));
    serialize(_:at:)(0, (v18 + 136));
    *(v18 + 160) = v23;
    v17 = swift_task_alloc();
    v17[2] = v18 + 136;
    v17[3] = v18 + 144;
    v17[4] = v18 + 152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v22, v21, "#ConfirmationViewBuilder makeConfirmationOptions", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v18 + 224);
  v8 = *(v18 + 208);
  v9 = *(v18 + 168);
  v6 = *(v18 + 216);
  MEMORY[0x277D82BD8](v22);
  (*(v6 + 8))(v7, v8);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v3 = swift_task_alloc();
  *(v18 + 232) = v3;
  *v3 = *(v18 + 88);
  v3[1] = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  v4 = *(v18 + 200);

  return v12(v4, v10, v11);
}

{
  v4 = *v1;
  *(v4 + 88) = *v1;
  *(v4 + 240) = v0;

  if (v0)
  {
    v2 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  else
  {
    v2 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v6 = v0[25];
  v5 = v0[24];
  v7 = v0[23];
  v8 = v0[22];
  v0[11] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[31] = v1;
  v0[32] = v2;
  v0[7] = v1;
  v0[8] = v2;
  (*(v5 + 8))(v6, v7);
  outlined init with copy of GlobalsProviding(v8, (v0 + 2));
  v12 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v11 = (*(v10 + 8) + **(v10 + 8));
  v3 = swift_task_alloc();
  *(v9 + 264) = v3;
  *v3 = *(v9 + 88);
  v3[1] = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);

  return v11(v12, v10);
}

{
  v37 = v0[36];
  v36 = v0[35];
  v35 = v0[32];
  v34 = v0[31];
  v0[11] = v0;
  v0[9] = v36;
  v0[10] = v37;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v46 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v34, v35, v36, v37);
  v42 = v1;
  v0[14] = v46;
  v0[15] = v1;
  v38 = *MEMORY[0x277D48B80];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B80]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = MEMORY[0x26D620690](v2);

  MEMORY[0x277D82BD8](v38);
  [v46 setButtonRole_];
  MEMORY[0x277D82BD8](v39);
  v40 = *MEMORY[0x277D48B88];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B88]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = MEMORY[0x26D620690](v3);

  MEMORY[0x277D82BD8](v40);
  [v46 setType_];
  MEMORY[0x277D82BD8](v41);
  type metadata accessor for SAUIConfirmationOptions();
  v44 = SAUIAppPunchOut.__allocating_init()();
  v0[16] = v44;
  type metadata accessor for SAUIConfirmationOption();
  _allocateUninitializedArray<A>(_:)();
  v43 = v4;
  MEMORY[0x277D82BE0](v46);
  *v43 = v46;
  MEMORY[0x277D82BE0](v42);
  v43[1] = v42;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 setAllConfirmationOptions_];
  MEMORY[0x277D82BD8](isa);
  v47 = [v46 commands];
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v47);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  [v44 setConfirmCommands_];
  MEMORY[0x277D82BD8](v30);
  v28 = [v46 label];
  if (v28)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v5;
    MEMORY[0x277D82BD8](v28);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  if (v27)
  {
    v22 = MEMORY[0x26D620690](v26);

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v44 setConfirmText_];
  MEMORY[0x277D82BD8](v23);
  v21 = [v42 commands];
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v21);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v44 setDenyCommands_];
  MEMORY[0x277D82BD8](v18);
  v16 = [v42 label];
  if (v16)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v6;
    MEMORY[0x277D82BD8](v16);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v15)
  {
    v10 = MEMORY[0x26D620690](v14);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v44 setDenyText_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v46);

  v7 = *(*(v33 + 88) + 8);

  return v7(v44);
}

{
  *(v0 + 88) = v0;

  v1 = *(*(v0 + 88) + 8);

  return v1();
}

{
  *(v0 + 88) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 88) + 8);

  return v1();
}