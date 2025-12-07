uint64_t one-time initialization function for htons()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt16(_:);
  }

  static Endian.htons = v0;
  *algn_2813272A8 = 0;
  return result;
}

uint64_t one-time initialization function for htonl()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt32(_:);
  }

  static Endian.htonl = v0;
  *algn_2813272B8 = 0;
  return result;
}

uint64_t one-time initialization function for ntohs()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt16(_:);
  }

  static Endian.ntohs = v0;
  unk_27D08E280 = 0;
  return result;
}

uint64_t one-time initialization function for ntohl()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt32(_:);
  }

  static Endian.ntohl = v0;
  *algn_281327298 = 0;
  return result;
}

uint64_t AceStreamCompressionType.init(rawValue:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AceStreamCompressionType@<X0>(_BYTE *a1@<X8>)
{
  result = AceStreamCompressionType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AceDataType@<X0>(_BYTE *a1@<X8>)
{
  result = AceDataType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id static AceSerialization.parseSpeechPacket(withBytes:length:)(unsigned __int8 *a1, int a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  if (!a2)
  {
    return 0;
  }

  v5 = *a1;
  LODWORD(v6) = a2 - 1 - v5;
  if (a2 - 1 < v5)
  {
    return 0;
  }

  v7 = MEMORY[0x223DE13C0](a1 + 1, *a1);
  v9 = v8;
  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  if (!v11)
  {
    outlined consume of Data._Representation(v7, v9);
    return 0;
  }

  v12 = v11;
  if (v6 < 2)
  {
LABEL_8:
    outlined consume of Data._Representation(v7, v9);
    goto LABEL_9;
  }

  v31 = v10;
  v13 = &a1[v5 + 1];
  v14 = *v13;
  if (one-time initialization token for ntohs != -1)
  {
    goto LABEL_33;
  }

LABEL_6:
  v16 = static Endian.ntohs;
  v15 = unk_27D08E280;
  v17 = static Endian.ntohs(v14);
  if (v17 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if ((v6 & 0xFFFFFFFE) == 2)
  {
    goto LABEL_8;
  }

  v20 = v17;
  v28 = v12;
  v29 = v7;
  v30 = v9;
  v14 = v15;
  v21 = v16(*(v13 + 1));
  if ((v21 & 0x8000) != 0)
  {
    goto LABEL_35;
  }

  v7 = 0;
  v27 = v20;
  v32 = v21;
  v12 = (v6 - 4);
  v13 += 4;
  v22 = MEMORY[0x277D84F90];
  for (v33[0] = MEMORY[0x277D84F90]; ; v22 = v33[0])
  {
    if (v7 == v32)
    {
      v26 = objc_allocWithZone(type metadata accessor for SpeechPacket());
      v18 = SpeechPacket.init(aceId:refId:packets:packetNumber:)(0, 0, v31, v28, v22, v27);
      outlined consume of Data._Representation(v29, v30);
      return v18;
    }

    if (v7 == 0x7FFF)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_6;
    }

    v23 = v12 >= 2;
    v12 = (v12 - 2);
    if (!v23)
    {
      break;
    }

    v6 = *v13;
    if ((v16(v6) & 0x8000) != 0)
    {
      break;
    }

    v14 = v15;
    v24 = v16(v6);
    if (v24 < 0)
    {
      goto LABEL_31;
    }

    v9 = v24;
    if (v24)
    {
      if (v12 < v9)
      {
        break;
      }
    }

    v14 = v24;
    v25 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v13 + 2 length:v24];
    v23 = v12 >= v9;
    v12 = (v12 - v9);
    if (!v23)
    {
      goto LABEL_32;
    }

    v6 = v25;
    v14 = v33;
    MEMORY[0x223DE2240]();
    if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v7 = (v7 + 1);
    v13 += v9 + 2;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  outlined consume of Data._Representation(v29, v30);
LABEL_9:

  return 0;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  if (!memcmp(&__s1, &unk_2836AF790, a3))
  {
    v6 = *(&__s1 + a3);
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v6 == 1)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t BackgroundConnectionProtocol.hash(into:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 40))(__src, a2, a3);
  memcpy(v5, __src, sizeof(v5));
  ConnectionConfiguration.hash(into:)(a1);
  return outlined destroy of ConnectionConfiguration(__src);
}

uint64_t static BackgroundConnectionProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 40);
  v6(__src, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = static ConnectionConfiguration.== infix(_:_:)(__src, v8);
  memcpy(__dst, v8, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  memcpy(v11, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v11);
  return v4 & 1;
}

void specialized NetworkActivity.abort()(const char *a1, ...)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriNetwork);

  v37 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v19))
  {
    v34 = v5;
    v36 = a1;
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v20 = 136315394;
    v21 = *(v1 + 35);

    v22 = 0xE700000000000000;
    v23 = 0x64696C61766E69;
    switch(v21)
    {
      case 1:
        v22 = 0xE900000000000074;
        v23 = 0x7365757165526975;
        break;
      case 2:
        v22 = 0xED0000746E617473;
        v23 = 0x6973734164616F6CLL;
        break;
      case 3:
        v22 = 0xEE00676E696D6165;
        v23 = 0x7274536F69647561;
        break;
      case 4:
        v22 = 0xE600000000000000;
        v23 = 0x686365657073;
        break;
      case 5:
        v23 = 0x73746C75736572;
        break;
      case 6:
        v22 = 0xE500000000000000;
        v23 = 0x7972746572;
        break;
      case 7:
        v22 = 0x80000002235F8790;
        v23 = 0xD000000000000016;
        break;
      case 8:
        v25 = 2003790950;
        goto LABEL_18;
      case 9:
        v25 = 1668184435;
LABEL_18:
        v23 = v25 | 0x6D6D6F4300000000;
        v22 = 0xEB00000000646E61;
        break;
      case 10:
        v22 = 0xE400000000000000;
        v23 = 1953718636;
        break;
      default:
        break;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v38);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    specialized NetworkActivity.token.getter(v17);
    outlined init with copy of UUID?(v17, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    else
    {
      v29 = v34;
      (*(v34 + 32))(v11, v15, v3);
      (*(v29 + 16))(v9, v11, v3);
      v27 = String.init<A>(describing:)();
      v28 = v30;
      (*(v29 + 8))(v11, v3);
    }

    outlined destroy of ConnectionSnapshotReport?(v17, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_223515000, v37, v19, v36, v20, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v32, -1, -1);
    MEMORY[0x223DE38F0](v20, -1, -1);
  }

  else
  {

    v24 = v37;
  }
}

unint64_t NetworkActivityCompletionReason.description.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 2:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::NetworkActivityCompletionReason_optional __swiftcall NetworkActivityCompletionReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id static NetworkActivityTracing.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NetworkActivityTracing.shared;

  return v1;
}

id NetworkActivityTracing.init()()
{
  v1 = OBJC_IVAR___SNNetworkActivityTracingInternal_networkActivityTracing;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B23ActivityTracingInternalCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B23ActivityTracingInternalCy0B012NWConnectionCAD10NWActivityCGMR);
  swift_allocObject();
  *&v0[v1] = specialized NetworkActivityTracingInternal.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NetworkActivityTracing();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t NetworkActivityTracing.activate(label:completion:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;

  specialized NetworkActivityTracingInternal.activate(label:completion:)(v5, a2, a3);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of UUID?(a1, &v9 - v5);
  v7 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, isa);
}

id NetworkActivityTracing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkActivityTracing();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized NetworkActivityTracingInternal.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v1 - 8);
  v10 = v1;
  MEMORY[0x28223BE20](v1);
  v8 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMR);
  lazy protocol witness table accessor for type NetworkActivityLabel and conformance NetworkActivityLabel();
  v5 = MEMORY[0x277D84F90];
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  if (specialized Array.count.getter(v5))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Network12NWConnectionC_Tt0g5(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v0[3] = v6;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.default.getter();
  v11 = v5;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v8, *MEMORY[0x277D85260], v10);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t specialized NetworkActivityTracingInternal.activate(label:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriNetwork);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v31 = a1;
    v29 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    a1 = 0xE700000000000000;
    v19 = 0x64696C61766E69;
    v30 = a3;
    switch(v31)
    {
      case 1:
        a1 = 0xE900000000000074;
        v19 = 0x7365757165526975;
        break;
      case 2:
        a1 = 0xED0000746E617473;
        v19 = 0x6973734164616F6CLL;
        break;
      case 3:
        a1 = 0xEE00676E696D6165;
        v19 = 0x7274536F69647561;
        break;
      case 4:
        a1 = 0xE600000000000000;
        v19 = 0x686365657073;
        break;
      case 5:
        v19 = 0x73746C75736572;
        break;
      case 6:
        a1 = 0xE500000000000000;
        v19 = 0x7972746572;
        break;
      case 7:
        a1 = 0x80000002235F8790;
        v19 = 0xD000000000000016;
        break;
      case 8:
        v20 = 2003790950;
        goto LABEL_16;
      case 9:
        v20 = 1668184435;
LABEL_16:
        v19 = v20 | 0x6D6D6F4300000000;
        a1 = 0xEB00000000646E61;
        break;
      case 10:
        a1 = 0xE400000000000000;
        v19 = 1953718636;
        break;
      default:
        break;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, a1, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_223515000, v15, v16, "NetworkActivity Tracing: Activate %s activity", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DE38F0](v18, -1, -1);
    MEMORY[0x223DE38F0](v17, -1, -1);

    a2 = v29;
    a3 = v30;
    LOBYTE(a1) = v31;
  }

  else
  {
  }

  v22 = *(v4 + 32);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a1;
  *(v24 + 32) = a2;
  *(v24 + 40) = a3;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.activate(label:completion:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_75;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2, a3);
  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v13, v10, v25);
  _Block_release(v25);

  (*(v34 + 8))(v10, v8);
  (*(v32 + 8))(v13, v33);
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.activate(label:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v8)
      {

        specialized NetworkActivity.activate()();
      }
    }

    if (a3)
    {
      a3(v7);
    }
  }

  return result;
}

uint64_t specialized NetworkActivityTracingInternal.currentNetworkActivityToken(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 32);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.currentNetworkActivityToken(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_54;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1, a2);
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v11, v8, v15);
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

unint64_t lazy protocol witness table accessor for type NetworkActivityLabel and conformance NetworkActivityLabel()
{
  result = lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason()
{
  result = lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason;
  if (!lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel()
{
  result = lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkActivityLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityLabel(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkActivityCompletionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityCompletionReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NetworkActivityParentLabel(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of NetworkActivityTracing.start(label:activate:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

uint64_t dispatch thunk of NetworkActivityTracing.activate(label:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

uint64_t dispatch thunk of NetworkActivityTracing.stop(label:reason:error:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.currentNetworkActivityToken(_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v37 = &v33[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v33[-v18];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v38 = a3;
    swift_beginAccess();
    if (specialized Dictionary.subscript.getter(1, *(v21 + 16)))
    {
      specialized NetworkActivity.token.getter(v19);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriNetwork);
    outlined init with copy of UUID?(v19, v17);
    v23 = Logger.logObject.getter();
    LODWORD(v24) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v36 = a2;
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v25 = 136315138;
      outlined init with copy of UUID?(v17, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
      {
        v26 = 0xE100000000000000;
        v27 = 45;
      }

      else
      {
        v28 = *(v6 + 32);
        v34 = v24;
        v24 = v37;
        v28(v37, v14, v5);
        (*(v6 + 16))(v9, v24, v5);
        v27 = String.init<A>(describing:)();
        v26 = v29;
        v30 = v24;
        LOBYTE(v24) = v34;
        (*(v6 + 8))(v30, v5);
      }

      outlined destroy of ConnectionSnapshotReport?(v17, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v39);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_223515000, v23, v24, "NetworkActivity Tracing: Current Network Activity Token: %s", v25, 0xCu);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DE38F0](v32, -1, -1);
      MEMORY[0x223DE38F0](v25, -1, -1);

      a2 = v36;
    }

    else
    {

      outlined destroy of ConnectionSnapshotReport?(v17, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }

    if (a2)
    {
      a2(v19);

      return outlined destroy of ConnectionSnapshotReport?(v19, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(v19, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }
  }

  return result;
}

uint64_t NetworkActivityTracingInternal.deinit()
{

  return v0;
}

uint64_t NetworkActivityTracingInternal.__deallocating_deinit()
{
  NetworkActivityTracingInternal.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t QueueMonitorManager.__deallocating_deinit()
{
  QueueMonitorManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t QueueObserver.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t QueueObserver.__deallocating_deinit()
{
  QueueObserver.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t QueueMonitor.deinit()
{

  v1 = OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_initialWaitingTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_handler), *(v0 + OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_handler + 8));
  return v0;
}

uint64_t QueueMonitor.__deallocating_deinit()
{
  QueueMonitor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for QueueMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for QueueMonitor;
  if (!type metadata singleton initialization cache for QueueMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for QueueMonitor(uint64_t a1)
{
  result = type metadata accessor for Date();
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEndpoint(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MessageCenterEndpoint(uint64_t result, int a2, int a3)
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

uint64_t MessageCenterEndpoint.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {

    outlined init with copy of RPCOspreyConnectionProtocol(a1, v10);
    v7 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v11;
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    swift_allocError();
    *v8 = 19;
    *(v8 + 8) = 8;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MessageCenterEndpoint.isMeDevice.getter()
{
  OUTLINED_FUNCTION_3_20();
  v0 = OUTLINED_FUNCTION_1_19();
  return v1(v0) & 1;
}

uint64_t MessageCenterEndpoint.discoverActor(persona:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t MessageCenterEndpoint.idsIdentifier.getter()
{
  OUTLINED_FUNCTION_3_20();
  v0 = OUTLINED_FUNCTION_1_19();
  return v1(v0);
}

uint64_t static MessageCenterEndpoint.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_1_19();
  v5 = v4(v3);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (v7)
  {
    if (v11)
    {
      if (v5 == v10 && v7 == v11)
      {

        v13 = 1;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = 1;
      return v13 & 1;
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t MessageCenterEndpoint.deviceModel.getter()
{
  OUTLINED_FUNCTION_3_20();
  v0 = OUTLINED_FUNCTION_1_19();
  return v1(v0);
}

uint64_t MessageCenterEndpoint.endpointPayload.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_0_40();
  return v2(v1);
}

uint64_t MessageCenterEndpoint.description.getter()
{
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD00000000000001CLL, 0x80000002235F8CF0);
  OUTLINED_FUNCTION_2_25();
  v0 = OUTLINED_FUNCTION_0_40();
  v2 = v1(v0);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x223DE2180](v2, v4);

  MEMORY[0x223DE2180](0x656369766564202CLL, 0xEF203A6C65646F4DLL);
  OUTLINED_FUNCTION_2_25();
  v5 = OUTLINED_FUNCTION_0_40();
  v7 = v6(v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 7104878;
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DE2180](v7, v9);

  MEMORY[0x223DE2180](0x6544654D7369202CLL, 0xEE00203A65636976);
  OUTLINED_FUNCTION_2_25();
  v10 = OUTLINED_FUNCTION_0_40();
  v12 = v11(v10);
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v14, v15);

  MEMORY[0x223DE2180](62, 0xE100000000000000);
  return 0;
}

void MessageCenterEndpoint.hash(into:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = OUTLINED_FUNCTION_0_40();
  v3(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MessageCenterEndpoint.hashValue.getter()
{
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterEndpoint(uint64_t a1)
{
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MessageCenterEndpoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  *(a1 + 8) = result;
  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = OUTLINED_FUNCTION_13_7();
  outlined init with copy of ConnectionSnapshotReport?(v11, v12, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v5);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v5, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(a3);
    OUTLINED_FUNCTION_3();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_3();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;

  v20 = swift_task_create();

  outlined destroy of TaskPriority?(a3);

  return v20;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = OUTLINED_FUNCTION_13_7();
  outlined init with copy of ConnectionSnapshotReport?(v11, v12, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v5);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v5, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(a3);
    OUTLINED_FUNCTION_3();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_3();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  v19 = swift_task_create();

  outlined destroy of TaskPriority?(a3);

  return v19;
}

uint64_t MessageCenterUser.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(30);

  strcpy(v6, "SharedSiriID: ");
  MEMORY[0x223DE2180](v1, v2);
  MEMORY[0x223DE2180](0x616E6F7372655020, 0xEC000000203A4449);
  MEMORY[0x223DE2180](v3, v4);
  return v6[0];
}

uint64_t static MessageCenterUser.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t MessageCenterUser.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int MessageCenterUser.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterUser(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for MessageCenterUser(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MessageCenterUser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageCenterUserManagerDelegate.didUpdateUsers()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_8_14(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_12_6(v3);

  return v5(v4);
}

uint64_t dispatch thunk of MessageCenterUserProviderProtocol.allUsers()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_8_14(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_12_6(v3);

  return v5(v4);
}

{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_0();
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void *MessageCenterUserManager.init(userProvider:)(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[17] = 0;
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = closure #1 in implicit closure #1 in MessageCenterUserManager.init(userProvider:);
  }

  if (a1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v2[14] = v5;
  v2[15] = v6;
  return v2;
}

uint64_t closure #1 in implicit closure #1 in MessageCenterUserManager.init(userProvider:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MessageCenterProfileStore(0);
  a1[4] = &protocol witness table for MessageCenterProfileStore;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return MessageCenterProfileStore.init()(boxed_opaque_existential_1);
}

uint64_t MessageCenterProfileStore.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyt__GMd, &_sScS12ContinuationV15BufferingPolicyOyyt__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v5, v2);
  outlined init with copy of ConnectionSnapshotReport?(v12, v10, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  v13 = *(v7 + 56);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  OUTLINED_FUNCTION_18_7();
  v16 = v15;
  (*(v15 + 32))(a1, v10, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
  OUTLINED_FUNCTION_18_7();
  v19 = v18;
  (*(v18 + 8))(&v10[v13], v17);
  outlined init with take of (stream: AsyncStream<()>, continuation: AsyncStream<()>.Continuation)(v12, v10);
  v20 = *(v7 + 56);
  v21 = type metadata accessor for MessageCenterProfileStore(0);
  (*(v19 + 32))(a1 + *(v21 + 20), &v10[v20], v17);
  return (*(v16 + 8))(v10, v14);
}

uint64_t MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_7_0();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_29();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = MessageCenterUserManager.start();

    return MessageCenterActorBrowser.didUpdateUsers()();
  }

  else
  {
    type metadata accessor for TaskPriority();
    v4 = OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
    lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_15_7(v7);
    OUTLINED_FUNCTION_4_21();

    OUTLINED_FUNCTION_6_3();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_29();
  swift_unknownObjectRelease();
  type metadata accessor for TaskPriority();
  v0 = OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
  lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_15_7(v3);
  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_6_3();

  return v4();
}

uint64_t closure #1 in MessageCenterUserManager.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyt_GMd, &_sScS8IteratorVyyt_GMR);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MessageCenterUserManager.start(), a4, 0);
}

uint64_t closure #1 in MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_40_3();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v0[7] + 112);

  v4(v5);

  v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v2 + 16))(v1, v6, v3);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[14] = lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_1_20(v7);
  v8 = OUTLINED_FUNCTION_10_9();

  return MEMORY[0x2822003E8](v8);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_29();
  if (*(v0 + 144))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    OUTLINED_FUNCTION_6_3();

    return v1();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 128) = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      *(v0 + 136) = v4;
      *v4 = v0;
      v4[1] = closure #1 in MessageCenterUserManager.start();

      return MessageCenterActorBrowser.didUpdateUsers()();
    }

    else
    {
      v5 = swift_task_alloc();
      *(v0 + 120) = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_1_20(v5);
      v6 = OUTLINED_FUNCTION_10_9();

      return MEMORY[0x2822003E8](v6);
    }
  }
}

{
  OUTLINED_FUNCTION_40_3();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  swift_unknownObjectRelease();
  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v3;
  OUTLINED_FUNCTION_1_20(v4);

  return MEMORY[0x2822003E8](v1 + 144);
}

uint64_t MessageCenterUserManager.allUsers()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](MessageCenterUserManager.allUsers(), v0, 0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);

  v2(v3);

  return MEMORY[0x2822009F8](MessageCenterUserManager.allUsers(), v1, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84FA0];

  return v1(v2);
}

uint64_t MessageCenterUserManager.deinit()
{

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterUserManager.__deallocating_deinit()
{
  MessageCenterUserManager.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager()
{
  result = lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager;
  if (!lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager)
  {
    type metadata accessor for MessageCenterUserManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager);
  }

  return result;
}

uint64_t partial apply for closure #1 in MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_21(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenterUserManager.start()(v2, v3, v4, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_21(v3);
  *v4 = v5;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(v1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
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
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_6_3();

  return v6();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_33()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
}

uint64_t type metadata accessor for MessageCenterProfileStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageCenterProfileStore;
  if (!type metadata singleton initialization cache for MessageCenterProfileStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (stream: AsyncStream<()>, continuation: AsyncStream<()>.Continuation)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for MessageCenterProfileStore(uint64_t a1)
{
  type metadata accessor for AsyncStream<()>(319, &lazy cache variable for type metadata for AsyncStream<()>, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<()>(319, &lazy cache variable for type metadata for AsyncStream<()>.Continuation, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<()>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConnectionPingInfoReport(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConnectionPingInfoReport(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v136 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_0_0();
  v101 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v105 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v112 = &v97 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_5();
  v99 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  v103 = type metadata accessor for NWPath();
  OUTLINED_FUNCTION_0_0();
  v100 = v23;
  MEMORY[0x28223BE20](v24);
  v102 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135[0] = 1;
  v134[0] = 1;
  LOBYTE(v132[0]) = 1;
  LOBYTE(v128[0]) = 1;
  v127[0] = 1;
  LOBYTE(v126[0]) = 1;
  LOBYTE(v125[0]) = 1;
  v124[0] = 1;
  LOBYTE(v123[0]) = 1;
  v122[0] = 1;
  LOBYTE(v121[0]) = 1;
  LOBYTE(v120[0]) = 1;
  LOBYTE(v119[0]) = 1;
  LOBYTE(v118[0]) = 1;
  LODWORD(v133[0]) = 0;
  BYTE4(v133[0]) = 1;
  memset(&v133[1], 0, 24);
  LOBYTE(v133[4]) = 1;
  memset(&v133[5], 0, 52);
  BYTE4(v133[11]) = 1;
  LODWORD(v133[12]) = 0;
  BYTE4(v133[12]) = 1;
  v26 = MEMORY[0x277D84F98];
  v133[13] = MEMORY[0x277D84F98];
  memset(&v133[14], 0, 24);
  LOBYTE(v133[17]) = 1;
  v133[18] = 0;
  LOBYTE(v133[19]) = 1;
  HIDWORD(v133[19]) = *(v121 + 3);
  *(&v133[19] + 1) = v121[0];
  v133[20] = 0;
  LOBYTE(v133[21]) = 1;
  HIDWORD(v133[21]) = *(v120 + 3);
  *(&v133[21] + 1) = v120[0];
  v133[22] = 0;
  LOBYTE(v133[23]) = 1;
  HIDWORD(v133[23]) = *(v119 + 3);
  *(&v133[23] + 1) = v119[0];
  v133[24] = 0;
  LOBYTE(v133[25]) = 1;
  HIDWORD(v133[25]) = *(v118 + 3);
  *(&v133[25] + 1) = v118[0];
  v133[26] = 0;
  LOBYTE(v133[27]) = 1;
  HIDWORD(v133[27]) = *&v117[3];
  *(&v133[27] + 1) = *v117;
  memset(&v133[28], 0, 24);
  LOBYTE(v133[31]) = 1;
  HIDWORD(v133[31]) = *&v116[3];
  *(&v133[31] + 1) = *v116;
  v133[32] = 0;
  LOWORD(v133[33]) = 1;
  *(&v133[33] + 2) = *&v114[7];
  HIWORD(v133[33]) = v115;
  v133[34] = 0;
  LOBYTE(v133[35]) = 1;
  *(&v133[35] + 1) = *v114;
  HIDWORD(v133[35]) = *&v114[3];
  v133[36] = 0;
  LOBYTE(v133[37]) = 1;
  *(&v133[37] + 1) = *v113;
  HIDWORD(v133[37]) = *&v113[3];
  v133[38] = 0;
  LOBYTE(v133[39]) = 1;
  destructiveProjectEnumData for ConnectionConfigurationError();
  OUTLINED_FUNCTION_3_22(v134);
  outlined destroy of ConnectionSnapshotReport?(v134, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  memcpy(v4 + 5, v133, 0x139uLL);
  memcpy(v135, v133, 0x139uLL);
  OUTLINED_FUNCTION_12_0(v135);
  if (!v27)
  {

    v4[19] = a3;
    v4[20] = a4;
  }

  v4[85] = MEMORY[0x277D84F90];
  if (a2)
  {
    outlined init with copy of NetworkConnectionProtocol?(v111, v132);
    if (v132[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v128[0];
        NWConnection.currentPath.getter();
        v30 = v103;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v103);
        v104 = v5;
        v111 = v9;
        if (EnumTagSinglePayload == 1)
        {
          v32 = outlined destroy of ConnectionSnapshotReport?(v22, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
          v33 = v101;
        }

        else
        {
          (*(v100 + 32))(v102, v22, v30);
          NWPath.nw.getter();
          v34 = nw_path_copy_interface();
          swift_unknownObjectRelease();
          v33 = v101;
          if (v34)
          {
            LODWORD(v110) = nw_interface_get_index(v34);
            swift_unknownObjectRelease();
          }

          else
          {
            LODWORD(v110) = 0;
          }

          v35 = NWPath.availableInterfaces.getter();
          v36 = *(v35 + 16);
          if (v36)
          {
            v97 = v35;
            v98 = v29;
            v37 = v33;
            v38 = v5 + 85;
            v39 = *(v37 + 16);
            v37 += 16;
            v108 = v5[86];
            v109 = v39;
            v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
            v106 = *(v37 + 56);
            v107 = (v37 - 8);
            for (i = v36 - 1; ; --i)
            {
              v42 = v109;
              v109(v17, v40, v9);
              v43 = v112;
              v42(v112, v17, v9);
              v44 = ConnectionInterfaceReport.init(interface:)(v43, v128);
              MEMORY[0x28223BE20](v44);
              *(&v97 - 2) = v17;
              specialized Sequence.first(where:)(partial apply for closure #1 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:), v108, v122);
              memcpy(v123, v122, 0xF9uLL);
              if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v123) != 1)
              {
                memcpy(v132, v131, 0xF9uLL);
                outlined destroy of ConnectionSnapshotReport?(v132, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
                memcpy(v131, v122, sizeof(v131));
              }

              if (v130 == v110)
              {
                OUTLINED_FUNCTION_8_15(v125);
                OUTLINED_FUNCTION_8_15(v126);
                destructiveProjectEnumData for ConnectionConfigurationError();
                v45 = v104;
                memcpy(v127, v104 + 48, 0x121uLL);
                memcpy(v104 + 48, v126, 0x121uLL);
                outlined init with copy of ConnectionInterfaceReport(v125, v124);
                outlined destroy of ConnectionSnapshotReport?(v127, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
                memcpy(v132, v45 + 5, 0x139uLL);
                OUTLINED_FUNCTION_12_0(v132);
                if (!v27)
                {
                  v124[0] = v129;
                  v46 = ConnectionType.stringRawValue.getter();
                  v48 = v47;

                  v45[12] = v46;
                  v45[13] = v48;
                }

                v9 = v111;
              }

              OUTLINED_FUNCTION_8_15(v127);
              outlined init with copy of ConnectionInterfaceReport(v127, v126);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v49 = *(*v38 + 16);
              specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v49);
              v50 = *v38;
              *(v50 + 16) = v49 + 1;
              memcpy((v50 + 296 * v49 + 32), v127, 0x121uLL);
              *v38 = v50;
              OUTLINED_FUNCTION_8_15(v132);
              outlined destroy of ConnectionInterfaceReport(v132);
              (*v107)(v17, v9);
              if (!i)
              {
                break;
              }

              v40 += v106;
            }

            v5 = v104;
            v29 = v98;
            v33 = v101;
            v26 = MEMORY[0x277D84F98];
          }

          else
          {
          }

          v32 = (*(v100 + 8))(v102, v103);
        }

        v51 = v105;
        MEMORY[0x223DE1A50](v32);
        v52 = nw_connection_uses_multipath();
        v53 = swift_unknownObjectRelease();
        if (v52)
        {
          OUTLINED_FUNCTION_0_42();
          v54 = OUTLINED_FUNCTION_12_0(v132);
          if (!v27)
          {

            *(v5 + 6) = xmmword_2235F4430;
          }

          MEMORY[0x223DE1A50](v54);
          subflow_count = nw_connection_multipath_get_subflow_count();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_3_22(v128);
          OUTLINED_FUNCTION_12_0(v128);
          if (!v27)
          {
            *(v5 + 32) = subflow_count;
            *(v5 + 132) = 0;
          }

          OUTLINED_FUNCTION_3_22(v127);
          v56 = OUTLINED_FUNCTION_12_0(v127);
          v57 = v99;
          if (!v27)
          {
            *(v5 + 34) = subflow_count;
            *(v5 + 140) = 0;
          }

          MEMORY[0x223DE1A50](v56);
          primary_subflow_interface_index = nw_connection_multipath_get_primary_subflow_interface_index();
          swift_unknownObjectRelease();
          NWConnection.currentPath.getter();
          v59 = v103;
          if (__swift_getEnumTagSinglePayload(v57, 1, v103) == 1)
          {
            v60 = outlined destroy of ConnectionSnapshotReport?(v57, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
          }

          else
          {
            v61 = v59;
            v62 = NWPath.availableInterfaces.getter();
            (*(v100 + 8))(v57, v61);
            v63 = *(v62 + 16);
            if (v63)
            {
              v98 = v29;
              v112 = primary_subflow_interface_index;
              v66 = *(v33 + 16);
              v64 = v33 + 16;
              v65 = v66;
              v67 = (*(v64 + 64) + 32) & ~*(v64 + 64);
              v110 = v62;
              v68 = v62 + v67;
              v69 = *(v64 + 56);
              v70 = (v64 - 8);
              do
              {
                v71 = v111;
                v65(v51, v68, v111);
                if (NWInterface.index.getter() == v112)
                {
                  v72 = v104;
                  memcpy(v126, v104 + 5, 0x139uLL);
                  v73 = OUTLINED_FUNCTION_12_0(v126);
                  if (v27)
                  {
                    (*v70)(v51, v111);
                  }

                  else
                  {
                    v74 = MEMORY[0x223DE1820](v73);
                    v75 = v64;
                    v77 = v76;
                    (*v70)(v105, v111);

                    v72[14] = v74;
                    v72[15] = v77;
                    v64 = v75;
                    v51 = v105;
                  }
                }

                else
                {
                  (*v70)(v51, v71);
                }

                v68 += v69;
                --v63;
              }

              while (v63);

              v5 = v104;
            }

            else
            {
            }

            v26 = MEMORY[0x277D84F98];
          }

          MEMORY[0x223DE1A50](v60);
          v78 = nw_connection_multipath_copy_subflow_counts();
          v53 = swift_unknownObjectRelease();
          if (v78)
          {
            v79 = MEMORY[0x223DE3B00](v78);
            if (v79 == XPC_TYPE_DICTIONARY.getter())
            {
              v125[0] = v26;
              v92 = swift_allocObject();
              *(v92 + 16) = v125;
              v93 = swift_allocObject();
              *(v93 + 16) = partial apply for closure #2 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:);
              *(v93 + 24) = v92;
              v126[4] = _sSPys4Int8VGSo13OS_xpc_object_pSbIgygd_ACSoAD_pSbIegygd_TRTA_0;
              v126[5] = v93;
              v126[0] = MEMORY[0x277D85DD0];
              v126[1] = 1107296256;
              v126[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
              v126[3] = &block_descriptor_13;
              v94 = _Block_copy(v126);

              xpc_dictionary_apply(v78, v94);
              swift_unknownObjectRelease();
              _Block_release(v94);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
              }

              OUTLINED_FUNCTION_3_22(v126);
              OUTLINED_FUNCTION_12_0(v126);
              if (!v27)
              {
                v96 = v125[0];

                v5[18] = v96;
              }
            }

            else
            {
              v53 = swift_unknownObjectRelease();
            }
          }
        }

        memset(v123, 0, 24);
        MEMORY[0x223DE1A50](v53);
        v80 = nw_connection_fillout_tcp_statistics();
        swift_unknownObjectRelease();
        if (v80)
        {
          OUTLINED_FUNCTION_0_42();
          OUTLINED_FUNCTION_12_0(v132);
          if (!v27)
          {
            v5[21] = v123[0];
            *(v5 + 176) = 0;
          }

          OUTLINED_FUNCTION_3_22(v128);
          OUTLINED_FUNCTION_12_0(v128);
          if (!v27)
          {
            v5[23] = v123[1];
            *(v5 + 192) = 0;
          }

          OUTLINED_FUNCTION_3_22(v127);
          OUTLINED_FUNCTION_12_0(v127);
          if (!v27)
          {
            v5[25] = v123[2];
            *(v5 + 208) = 0;
          }

          OUTLINED_FUNCTION_3_22(v126);
          OUTLINED_FUNCTION_12_0(v126);
          if (!v27)
          {
            v5[27] = v123[3];
            *(v5 + 224) = 0;
          }

          OUTLINED_FUNCTION_3_22(v125);
          OUTLINED_FUNCTION_12_0(v125);
          if (!v27)
          {
            v5[31] = v123[4];
            *(v5 + 256) = 0;
          }

          OUTLINED_FUNCTION_3_22(v124);
          v81 = OUTLINED_FUNCTION_12_0(v124);
          if (!v27)
          {
            v5[29] = v123[5];
            *(v5 + 240) = 0;
          }
        }

        else
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v82 = type metadata accessor for Logger();
          __swift_project_value_buffer(v82, static Logger.siriNetwork);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_223515000, v83, v84, "NetworkMetrics: Establishment report is not ready to extract TCP statistics for ConnectionSnapshotReport (connectionNetworkReport)", v85, 2u);
            MEMORY[0x223DE38F0](v85, -1, -1);
          }
        }

        v86 = MEMORY[0x223DE1A50](v81);
        v87 = MEMORY[0x223DE31B0](v86);
        v88 = v87;
        v89 = nw_connection_copy_protocol_metadata(v86, v87);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v89)
        {
          negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v89);
          switch(negotiated_tls_protocol_version)
          {
            case 769:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v88 == 1)
              {
                return OUTLINED_FUNCTION_5_21();
              }

              result = OUTLINED_FUNCTION_5_21();
              v91 = xmmword_2235F4460;
              goto LABEL_89;
            case 770:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v88 == 1)
              {
                return OUTLINED_FUNCTION_5_21();
              }

              result = OUTLINED_FUNCTION_5_21();
              v91 = xmmword_2235F4450;
              goto LABEL_89;
            case 771:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v88 == 1)
              {
                return OUTLINED_FUNCTION_5_21();
              }

              result = OUTLINED_FUNCTION_5_21();
              v91 = xmmword_2235F4480;
              goto LABEL_89;
            case 772:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v88 == 1)
              {
                return OUTLINED_FUNCTION_5_21();
              }

              result = OUTLINED_FUNCTION_5_21();
              v91 = xmmword_2235F4470;
              goto LABEL_89;
            default:
              if (negotiated_tls_protocol_version == 65277)
              {
                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_1_21();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v88 == 1)
                {
                  return OUTLINED_FUNCTION_5_21();
                }

                result = OUTLINED_FUNCTION_5_21();
                v91 = xmmword_2235F4490;
              }

              else
              {
                if (negotiated_tls_protocol_version != 65279)
                {

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return OUTLINED_FUNCTION_5_21();
                }

                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_1_21();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v88 == 1)
                {
                  return OUTLINED_FUNCTION_5_21();
                }

                result = OUTLINED_FUNCTION_5_21();
                v91 = xmmword_2235F4440;
              }

LABEL_89:
              *(v5 + 33) = v91;
              break;
          }
        }

        else
        {

          return OUTLINED_FUNCTION_5_21();
        }
      }
    }

    else
    {
      return outlined destroy of ConnectionSnapshotReport?(v132, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = MEMORY[0x223DE1820]();
  if (v2)
  {
    if (v1 == v3 && v2 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t closure #2 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(uint64_t a1, xpc_object_t xuint, uint64_t *a3)
{
  value = xpc_uint64_get_value(xuint);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
  _print_unlocked<A, B>(_:_:)();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *a3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(value, 0, 0xE000000000000000);
  *a3 = v6;

  return 1;
}

Swift::Int ConnectionPolicyRoute.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionPolicyRoute(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute);
  }

  return result;
}

id static WiFiRecordRepresentation.wiFiRecordRepresentation(from:)(char *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 1);
  v16 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = *(a1 + 6);
  HIDWORD(v15) = a1[56];
  v12 = type metadata accessor for WiFiRecord(0);
  (*(v3 + 16))(v5, &a1[*(v12 + 40)], v2);
  v13 = objc_allocWithZone(type metadata accessor for WiFiRecordRepresentation(0));

  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(v16, v6, v7, v8, v9, v10, v11, SBYTE4(v15), v5);
}

SiriNetwork::WiFiAssertionType_optional __swiftcall WiFiAssertionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WiFiAssertionType@<X0>(uint64_t *a1@<X8>)
{
  result = WiFiAssertionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WiFiRecord.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WiFiRecord(0) + 40);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_71();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id @objc WiFiRecordRepresentation.channelInfo.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = MEMORY[0x223DE2070](v3);

  return v4;
}

uint64_t WiFiRecordRepresentation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SNWiFiRecordInternal_timestamp;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_71();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id WiFiRecordRepresentation.__allocating_init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a8;
  v18 = objc_allocWithZone(v9);
  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(a1, a2, a3, a4, a5, a6, a7, v10, a9);
}

id WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_rssi] = a1;
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_snr] = a2;
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_cca] = a3;
  v10 = &v9[OBJC_IVAR___SNWiFiRecordInternal_channelInfo];
  *v10 = a4;
  v10[1] = a5;
  v11 = &v9[OBJC_IVAR___SNWiFiRecordInternal_phyMode];
  *v11 = a6;
  v11[1] = a7;
  v9[OBJC_IVAR___SNWiFiRecordInternal_isCaptive] = a8;
  v12 = OBJC_IVAR___SNWiFiRecordInternal_timestamp;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v9[v12], a9, v13);
  v17.receiver = v9;
  v17.super_class = type metadata accessor for WiFiRecordRepresentation(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a9, v13);
  return v15;
}

id WiFiRecordRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiRecordRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiRecordRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type WiFiAssertionType and conformance WiFiAssertionType()
{
  result = lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType;
  if (!lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiAssertionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for WiFiRecord(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WiFiRecordRepresentation(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for ConnectionHTTPHeaderReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ConnectionHTTPHeaderReport(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t ConnectionHTTPHeaderReport.debugDescription.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v2);

  if (v0[3])
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v3, v4);

  _StringGuts.grow(_:)(52);
  MEMORY[0x223DE2180](0xD00000000000002ELL, 0x80000002235F8ED0);
  MEMORY[0x223DE2180](0x2074736F48656361, 0xE800000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x6E65674172657375, 0xEA00000000002074);

  return 0;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = specialized Set.startIndex.getter(a1);
  v4 = v3;
  v6 = v5;
  v7 = specialized Set.endIndex.getter(a1);
  v9 = v8;
  v11 = v10;
  v12 = _sSh5IndexV2eeoiySbAByx_G_ADtFZ11SiriNetwork20BackgroundConnectionC_Tt1g5(v2, v4, v6 & 1, v7, v8, v10 & 1);
  outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v7, v9, v11 & 1);
  if (v12)
  {
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    v13 = specialized Set.subscript.getter(v2, v4, v6 & 1, a1);
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t (*Connection.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___SNConnectionInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_27_3(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Connection.delegate.modify;
}

uint64_t Connection.connectionConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration), 0x204uLL);
  memcpy(a1, (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, &v4);
}

char *Connection.__allocating_init(connectionConfiguration:connectionQueue:)(void *__src, void *a2)
{
  memcpy(__dst, __src, 0x204uLL);
  v3 = objc_allocWithZone(type metadata accessor for ConnectionInfo());
  v4 = ConnectionInfo.init(connectionConfiguration:)(__dst);
  v5 = objc_allocWithZone(type metadata accessor for Connection());
  return Connection.init(connectionInfo:connectionQueue:)(v4, a2);
}

char *Connection.__allocating_init(connectionInfo:connectionQueue:)()
{
  OUTLINED_FUNCTION_13_3();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_32();
  return Connection.init(connectionInfo:connectionQueue:)(v2, v3);
}

char *Connection.init(connectionInfo:connectionQueue:networkManager:networkAnalytics:)(char *a1, void *a2, void *a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] = 0;
  OUTLINED_FUNCTION_43_4(&v4[OBJC_IVAR___SNConnectionInternal_activeRoute], xmmword_2235EFB30);
  v4[OBJC_IVAR___SNConnectionInternal_isCanceled] = 0;
  v4[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] = 0;
  *&v4[OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR___SNConnectionInternal_networkManager;
  *&v4[OBJC_IVAR___SNConnectionInternal_networkManager] = 0;
  v10 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  memcpy(__dst, &a1[v10], 0x204uLL);
  memmove(&v4[OBJC_IVAR___SNConnectionInternal_connectionConfiguration], &a1[v10], 0x204uLL);
  *&v4[OBJC_IVAR___SNConnectionInternal_connectionQueue] = a2;
  v11 = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR___SNConnectionInternal_pendingRoutes] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_comatoseRoutes] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_scheduledRoutes] = v11;
  outlined init with copy of ConnectionConfiguration(__dst, v19);
  v12 = a2;
  v13 = dispatch_group_create();
  *&v4[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup] = v13;
  dispatch_group_enter(v13);
  v14 = *&v4[v9];
  *&v4[v9] = a3;
  v15 = a3;

  *&v4[OBJC_IVAR___SNConnectionInternal_networkAnalytics] = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for Connection();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  for (i = 32; ; i += 120)
  {
    if (v3 == v2)
    {
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(__dst, (v1 + i), 0x72uLL);
    ++v2;
    outlined init with copy of ConnectionPolicyRoute(__dst, v6);
    specialized Set._Variant.insert(_:)();
    memcpy(v6, __src, 0x72uLL);
    result = outlined destroy of ConnectionPolicyRoute(v6);
  }

  __break(1u);
  return result;
}

char *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11SiriNetwork21ConnectionPolicyRouteV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 32, v2, a1);
  outlined consume of Set<MessageCenterUser>.Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void Connection.sendData(_:with:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v18 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v9);
  swift_unknownObjectWeakInit();
  outlined init with copy of Any(v4, v20);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  outlined init with take of Any(v20, (v10 + 24));
  *(v10 + 56) = v3;
  *(v10 + 64) = v0;
  v19[4] = partial apply for closure #1 in Connection.sendData(_:with:);
  v19[5] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v19[2] = v11;
  v19[3] = &block_descriptor_14;
  v12 = _Block_copy(v19);

  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v13, v14, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v15);
  _Block_release(v12);
  v16 = OUTLINED_FUNCTION_3_2();
  v17(v16);
  (*(v7 + 8))(v1, v18);

  OUTLINED_FUNCTION_47();
}

void closure #1 in closure #1 in Connection.sendData(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {

    BackgroundConnection.sendData(_:with:)(a2, a3);
  }

  else if (a3)
  {
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v5 = swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 3;
    *(v6 + 24) = xmmword_2235F01E0;
    (a3)();
  }
}

uint64_t closure #1 in Connection.getConnectionMetrics(_:with:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  result = Connection.activeOrAnyPendingConnection()();
  if (result)
  {
    swift_beginAccess();

    BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v4);
  }

  else if (a2)
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__src);
    memcpy(v5, __src, 0x599uLL);
    return a2(v5);
  }

  return result;
}

void Connection.getConnectionAnalysisInfo(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v7 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v11);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v5;
  v12[4] = v3;
  v20[4] = partial apply for closure #1 in Connection.getConnectionAnalysisInfo(_:);
  v20[5] = v12;
  OUTLINED_FUNCTION_1_1();
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v20[2] = v13;
  v20[3] = &block_descriptor_63;
  v14 = _Block_copy(v20);

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v5, v3);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v15, v16, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v17);
  _Block_release(v14);
  v18 = OUTLINED_FUNCTION_3_2();
  v19(v18);
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

void closure #1 in Connection.getConnectionAnalysisInfo(_:)(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (Connection.activeOrAnyPendingConnection()())
    {
      if (a2)
      {
        BackgroundConnection.connectionAnalysisInfo.getter();
        a2(v5);

LABEL_7:
        outlined destroy of NetworkConnectionProtocol?(v5, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        return;
      }
    }

    else
    {
      if (a2)
      {
        v8 = type metadata accessor for ConnectionAnalysisInfo(0);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
        a2(v5);

        goto LABEL_7;
      }
    }
  }
}

uint64_t Connection.getSNConnectionAnalysisInfo(_:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v3, v4);
  Connection.getConnectionAnalysisInfo(_:)();
}

void closure #1 in Connection.getSNConnectionAnalysisInfo(_:)(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  if (a2)
  {
    outlined init with copy of NetworkConnectionProtocol?(a1, &v20 - v8, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v10 = type metadata accessor for ConnectionAnalysisInfo(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v9, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v11 = 0;
    }

    else
    {
      v12 = [objc_allocWithZone(SNConnectionType) initWithTechnology_];
      outlined init with copy of NetworkConnectionProtocol?(v9, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v13 = &v9[v10[5]];
      if (v13[4])
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13;
      }

      if ((v14 & 0x80000000) != 0)
      {
        __break(1u);
        return;
      }

      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v15 = v9[v10[7]];
      v16 = &v9[v10[9]];
      v17 = *v16;
      v18 = v16[1];
      v19 = objc_allocWithZone(SNConnectionAnalysisInfo);

      v11 = @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(v6, v14, isa, v15, v12, v17, v18);
      outlined destroy of ConnectionAnalysisInfo(v9, type metadata accessor for ConnectionAnalysisInfo);
    }

    a2(v11);
  }
}

Swift::Void __swiftcall Connection.probeConnection()()
{
  OUTLINED_FUNCTION_46();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  v3 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v7);
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for closure #1 in Connection.probeConnection();
  v16 = v1;
  OUTLINED_FUNCTION_1_1();
  v15[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v15[2] = v8;
  v15[3] = &block_descriptor_70_0;
  v9 = _Block_copy(v15);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v10, v11, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v12);
  _Block_release(v9);
  v13 = OUTLINED_FUNCTION_3_2();
  v14(v13);
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

void closure #1 in Connection.probeConnection()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (Connection.activeOrAnyPendingConnection()())
    {
      BackgroundConnection.probeConnection()();
    }

    else
    {
    }
  }
}

uint64_t Connection.barrier(with:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_1();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;

  v4 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v4, v5);
  Connection.waitForActiveConnectionToExecute(_:)();
}

void closure #1 in Connection.barrier(with:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*&Strong[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] && (Strong[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] & 1) == 0)
    {

      BackgroundConnection.barrier(with:)();

      return;
    }
  }

  if (a2)
  {
    a2(0);
  }
}

void closure #1 in Connection.didReceiveObject(_:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    type metadata accessor for BackgroundConnection();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      if (v36 == *&v35[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
      {
        OUTLINED_FUNCTION_8();
        swift_beginAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          v47 = one-time initialization token for siriNetwork;
          swift_unknownObjectRetain();
          if (v47 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v48, static Logger.siriNetwork);
          swift_unknownObjectRetain();
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_4_3();
            v65 = swift_slowAlloc();
            a15 = v65;
            *v51 = 136315138;
            if (*(v37 + 448) >= 2uLL)
            {

              v37 = String.init<A>(describing:)();
              v52 = v62;
            }

            else
            {
              OUTLINED_FUNCTION_19_7();
              v52 = 0xE700000000000000;
            }

            v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v52, &a15);

            *(v51 + 4) = v63;
            _os_log_impl(&dword_223515000, v49, v50, "Connection - Reader: Background Connection. Received object from active background connection route %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          if (v33 >> 60 == 15)
          {
            isa = 0;
          }

          else
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
          }

          [v46 didReceiveObject:v35 object:isa];
          swift_unknownObjectRelease();

          goto LABEL_25;
        }
      }

      v38 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v38 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v39, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_4_3();
        v43 = swift_slowAlloc();
        a15 = v43;
        *v42 = 136315138;
        if (*(v37 + 448) >= 2uLL)
        {

          v37 = String.init<A>(describing:)();
          v44 = v53;
        }

        else
        {
          OUTLINED_FUNCTION_19_7();
          v44 = 0xE700000000000000;
        }

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v44, &a15);

        *(v42 + 4) = v54;
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v60 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v60);
        v61 = OUTLINED_FUNCTION_1_2();
        MEMORY[0x223DE38F0](v61);

LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_66_3();
}

void *closure #1 in Connection.didClose(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    OUTLINED_FUNCTION_7_1();
    *(swift_allocObject() + 16) = v4;

    v5 = v4;
    specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(a2, v5, a2, partial apply for closure #1 in closure #1 in Connection.didClose(_:));
  }

  return result;
}

void *closure #1 in closure #1 in Connection.didClose(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCloseConnection_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #2 in closure #1 in Connection.didClose(_:)(char a1, char a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_22;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    if (*(a3 + 448) >= 2uLL)
    {

      v12 = String.init<A>(describing:)();
      v11 = v18;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v11 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v21);

    *(v9 + 4) = v19;
    _os_log_impl(&dword_223515000, v7, v8, "Connection - Status: Background connection. Closing active background connection route %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DE38F0](v10, -1, -1);
LABEL_21:
    MEMORY[0x223DE38F0](v9, -1, -1);
LABEL_22:

    a4();
    return;
  }

  if (a2)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriNetwork);
    v7 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v14))
    {
      goto LABEL_22;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223515000, v7, v14, "Connection - Status: Background connection. Ran out of pending connections; forwarding close from last background connection", v9, 2u);
    goto LABEL_21;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223515000, oslog, v16, "Connection - Status: Background connection. Ignoring connection close from inactive backgrund connection", v17, 2u);
    MEMORY[0x223DE38F0](v17, -1, -1);
  }
}

void closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v11 = OUTLINED_FUNCTION_15(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    outlined init with copy of NetworkConnectionProtocol?(v7, v15, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v9;
    outlined init with take of ConnectionAnalysisInfo?(v15, v19 + v18);
    v20 = v9;
    v21 = v17;
    v22 = v9;

    specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(v5, v21, v5, v9, partial apply for closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:), v19, v21, v3, v1);
  }

  OUTLINED_FUNCTION_47();
}

void closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = _convertErrorToNSError(_:)();
    outlined init with copy of NetworkConnectionProtocol?(a3, v10, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v14 = type metadata accessor for ConnectionAnalysisInfo(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v10, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v15 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(SNConnectionType) initWithTechnology_];
      outlined init with copy of NetworkConnectionProtocol?(v10, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v17 = &v10[v14[5]];
      if (*(v17 + 4))
      {
        v18 = 0;
      }

      else
      {
        v18 = *v17;
      }

      if ((v18 & 0x80000000) != 0)
      {
        __break(1u);
        return;
      }

      v19.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v27 = v13;
      isa = v19.super.super.isa;
      v26 = v10[v14[7]];
      v21 = &v10[v14[9]];
      v22 = *v21;
      v23 = v21[1];
      objc_allocWithZone(SNConnectionAnalysisInfo);

      v24 = isa;
      v13 = v27;
      v15 = @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(v7, v18, v24, v26, v16, v22, v23);
      outlined destroy of ConnectionAnalysisInfo(v10, type metadata accessor for ConnectionAnalysisInfo);
    }

    [v12 didEncounterError:a1 error:v13 analysisInfo:v15];
    swift_unknownObjectRelease();
  }
}

void closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(char a1, char a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriNetwork);

    v13 = a4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v66 = a5;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v73 = v18;
      *v16 = 136315394;
      if (*(a3 + 448) >= 2uLL)
      {
        v68 = *(a3 + 440);
        v69 = *(a3 + 448);

        v19 = String.init<A>(describing:)();
        v20 = v43;
      }

      else
      {
        v19 = 0x6E776F6E6B6E75;
        swift_bridgeObjectRelease_n();
        v20 = 0xE700000000000000;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v73);

      *(v16 + 4) = v44;
      *(v16 + 12) = 2112;
      v45 = a4;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v46;
      *v17 = v46;
      _os_log_impl(&dword_223515000, v14, v15, "Connection - Error: Background Connection. Got an error from active background connection route %s. Error: %@", v16, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DE38F0](v18, -1, -1);
      MEMORY[0x223DE38F0](v16, -1, -1);

      a5 = v66;
    }

    else
    {
    }

    v73 = a4;
    v47 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      outlined consume of NetworkConnectionError(v68, v69, v70, v71, v72);
      if (v71 >> 60 == 5)
      {
        BackgroundConnection.updateActiveBackgroundConnectionWithSecondary()();
      }
    }

LABEL_31:
    a5(v48);
    return;
  }

  v23 = a9;
  if (a2)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);

    v25 = a4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v65 = a8;
      v67 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v73 = v30;
      *v28 = 136315394;
      if (*(a3 + 448) >= 2uLL)
      {

        v31 = String.init<A>(describing:)();
        v32 = v49;
      }

      else
      {
        v31 = 0x6E776F6E6B6E75;
        swift_bridgeObjectRelease_n();
        v32 = 0xE700000000000000;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v73);

      *(v28 + 4) = v50;
      *(v28 + 12) = 2112;
      v51 = a4;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v52;
      *v29 = v52;
      _os_log_impl(&dword_223515000, v26, v27, "Connection - Error: Background Connection. Ran out of pending connections; forwarding error from last background connection route %s. Error: %@", v28, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223DE38F0](v30, -1, -1);
      MEMORY[0x223DE38F0](v28, -1, -1);

      v23 = a9;
      a5 = v67;
      a8 = v65;
    }

    else
    {
    }

    if (!*(a7 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
    {
      v53 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v54 = *(*(a7 + v53) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v54);
      v55 = *(a7 + v53);
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 16 * v54;
      *(v56 + 32) = a8;
      *(v56 + 40) = v23;
      *(a7 + v53) = v55;
      v48 = swift_endAccess();
    }

    goto LABEL_31;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);

  v34 = a4;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = a8;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73 = v40;
    *v38 = 136315394;
    if (*(a3 + 448) >= 2uLL)
    {

      v41 = String.init<A>(describing:)();
      v42 = v57;
    }

    else
    {
      v41 = 0x6E776F6E6B6E75;
      swift_bridgeObjectRelease_n();
      v42 = 0xE700000000000000;
    }

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v73);

    *(v38 + 4) = v58;
    *(v38 + 12) = 2112;
    v59 = a4;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v60;
    *v39 = v60;
    _os_log_impl(&dword_223515000, v35, v36, "Connection - Error: Background Connection. Ignoring error from inactive background connection route %s. Error: %@", v38, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223DE38F0](v40, -1, -1);
    MEMORY[0x223DE38F0](v38, -1, -1);

    a8 = v37;
    v23 = a9;
  }

  else
  {
  }

  if (!*(a7 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v61 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v62 = *(*(a7 + v61) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v62);
    v63 = *(a7 + v61);
    *(v63 + 16) = v62 + 1;
    v64 = v63 + 16 * v62;
    *(v64 + 32) = a8;
    *(v64 + 40) = v23;
    *(a7 + v61) = v63;
    swift_endAccess();
  }
}

void closure #1 in Connection.didEncounterIntermediateError(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_65_3(v36);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v41, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v42 = v33;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_30();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v47 = swift_slowAlloc();
        a12 = v47;
        *v45 = 136315394;
        if (*(v35 + 448) >= 2uLL)
        {

          v49 = String.init<A>(describing:)();
          v48 = v50;
        }

        else
        {
          OUTLINED_FUNCTION_46_4();
          v48 = 0xE700000000000000;
          v49 = OUTLINED_FUNCTION_3_18();
        }

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &a12);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2112;
        v52 = v33;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v53;
        *v46 = v53;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
        outlined destroy of NetworkConnectionProtocol?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v59 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v59);
      }

      v60 = _convertErrorToNSError(_:)();
      [v40 didEncounterIntermediateError:v38 error:v60];

      swift_unknownObjectRelease();
      v38 = v60;
    }
  }

  OUTLINED_FUNCTION_66_3();
}

void Connection.accessPotentiallyActiveConnections(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50_4();
  v34 = v33;
  if (*(v32 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal))
  {
LABEL_2:
    v34(0);
LABEL_3:
    OUTLINED_FUNCTION_40_5();
    return;
  }

  if (*(v32 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {

    v34(v35);
    OUTLINED_FUNCTION_40_5();

    return;
  }

  v37 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  v38 = *(v32 + v37);

  if (specialized Set.isEmpty.getter(v39))
  {

    goto LABEL_2;
  }

  v57 = v34;
  if ((v38 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for BackgroundConnection();
    OUTLINED_FUNCTION_8_16();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v40, v41, &protocol conformance descriptor for BackgroundConnection);
    Set.Iterator.init(_cocoa:)();
    v38 = a16;
    v43 = a18;
  }

  else
  {
    a19 = 0;
    OUTLINED_FUNCTION_18_8();
    a17 = v38 + 56;
    OUTLINED_FUNCTION_31_6();
    a20 = v46 & v47;
  }

  v48 = (v43 + 64) >> 6;
  if (v38 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v49 = a19;
    v50 = a19;
    if (!a20)
    {
      break;
    }

LABEL_18:
    OUTLINED_FUNCTION_49_0();
    v53 = v52 & v51;
    v55 = *(*(v38 + 48) + ((v50 << 9) | (8 * v54)));

    if (!v55)
    {
LABEL_24:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant(v38);
      goto LABEL_3;
    }

    while (1)
    {

      v57(v56);

      a19 = v50;
      a20 = v53;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for BackgroundConnection();
        swift_dynamicCast();
        v50 = a19;
        v53 = a20;
        if (a12)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v48)
    {
      goto LABEL_24;
    }

    ++v49;
    if (*(a17 + 8 * v50))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void Connection.cancelSynchronously(_:)(void (*a1)(uint64_t))
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {

    BackgroundConnection.cancel()();
  }

  v3 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_70_2();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for BackgroundConnection();
    OUTLINED_FUNCTION_8_16();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v5, v6, &protocol conformance descriptor for BackgroundConnection);
    Set.Iterator.init(_cocoa:)();
    v4 = v42;
    v7 = v43;
    v9 = v44;
    v8 = v45;
    v10 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_18_8();
    v7 = v4 + 56;
    v9 = ~v11;
    OUTLINED_FUNCTION_31_6();
    v10 = v12 & v13;

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v14 = v8;
    v15 = v8;
    if (!v10)
    {
      break;
    }

LABEL_11:
    OUTLINED_FUNCTION_49_0();
    v18 = v17 & v16;
    v20 = *(*(v4 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
LABEL_17:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant(v4);
      v21 = OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v22 = *(v2 + v21);
      if ((v22 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_70_2();
        __CocoaSet.makeIterator()();
        OUTLINED_FUNCTION_53_1();
        type metadata accessor for BackgroundConnection();
        OUTLINED_FUNCTION_8_16();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v23, v24, &protocol conformance descriptor for BackgroundConnection);
        Set.Iterator.init(_cocoa:)();
        v22 = v47;
        v25 = v48;
        v26 = v49;
        v27 = v50;
        v28 = v51;
      }

      else
      {
        OUTLINED_FUNCTION_18_8();
        v25 = v22 + 56;
        v26 = ~v29;
        OUTLINED_FUNCTION_31_6();
        v28 = v30 & v31;

        v27 = 0;
      }

      if (v22 < 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v32 = v27;
        v33 = v27;
        if (!v28)
        {
          break;
        }

LABEL_25:
        OUTLINED_FUNCTION_49_0();
        v36 = v35 & v34;
        v38 = *(*(v22 + 48) + ((v33 << 9) | (8 * v37)));

        if (!v38)
        {
LABEL_31:
          v39 = outlined consume of Set<MessageCenterUser>.Iterator._Variant(v22);
          *(v2 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal) = 1;
          if (a1)
          {
            a1(v39);
          }

          return;
        }

        while (1)
        {
          BackgroundConnection.cancel()();

          v27 = v33;
          v28 = v36;
          if ((v22 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_27:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for BackgroundConnection();
            swift_dynamicCast();
            v33 = v27;
            v36 = v28;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_31;
        }
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_35;
        }

        if (v33 >= ((v26 + 64) >> 6))
        {
          goto LABEL_31;
        }

        ++v32;
        if (*(v25 + 8 * v33))
        {
          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      BackgroundConnection.cancel()();

      v8 = v15;
      v10 = v18;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_13:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for BackgroundConnection();
        swift_dynamicCast();
        v15 = v8;
        v18 = v10;
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= ((v9 + 64) >> 6))
    {
      goto LABEL_17;
    }

    ++v14;
    if (*(v7 + 8 * v15))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
  v7 = *(a2 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (v7)
  {
    v8 = v7 == a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v14 = 1;
    goto LABEL_25;
  }

  v11 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = __CocoaSet.contains(_:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(v12 + 16))
  {
    v27 = a4;
    Hasher.init(_seed:)();

    specialized BackgroundConnectionProtocol.hash(into:)(v34);
    v15 = Hasher._finalize()();
    v16 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v17 = v15 & v16;
      if (((*(v12 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
      {

        a4 = v27;
        goto LABEL_17;
      }

      v18 = *(*(v12 + 48) + 8 * v17);
      memcpy(__dst, (v18 + 40), 0x204uLL);
      memcpy(v30, (v18 + 40), 0x204uLL);
      memcpy(v32, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v28);
      outlined init with copy of ConnectionConfiguration(v32, v28);
      LOBYTE(v18) = static ConnectionConfiguration.== infix(_:_:)(v30, __src);
      memcpy(v33, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v33);
      memcpy(v34, v30, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v34);
      if (v18)
      {
        break;
      }

      v15 = v17 + 1;
    }

    a4 = v27;
LABEL_16:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

LABEL_17:
  memcpy(v33, (a1 + 440), 0x72uLL);
  if (v33[1] != 1)
  {
    v34[0] = v33[0];
    v34[1] = v33[1];
    memcpy(&v34[2], (a1 + 456), 0x62uLL);
    v19 = OBJC_IVAR___SNConnectionInternal_pendingRoutes;
    swift_beginAccess();
    v20 = *(a2 + v19);
    outlined init with copy of NetworkConnectionProtocol?(v33, v32, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

    v21 = specialized Set.contains(_:)(v34, v20);

    if (v21)
    {
      swift_beginAccess();
      memcpy(v30, v33, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v30, v32);
      specialized Set._Variant.insert(_:)();
      swift_endAccess();
      outlined destroy of ConnectionPolicyRoute(__dst);
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v32, v34);
      swift_endAccess();
      outlined destroy of NetworkConnectionProtocol?(v32, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    }

    outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  }

  if (!*(a2 + v6))
  {

    v23 = specialized Set.isEmpty.getter(v22);

    if (v23)
    {
      v24 = OBJC_IVAR___SNConnectionInternal_scheduledRoutes;
      swift_beginAccess();
      if (!*(*(a2 + v24) + 16))
      {
        v14 = 0;
        v25 = 1;
        goto LABEL_26;
      }
    }
  }

  v14 = 0;
LABEL_25:
  v25 = 0;
LABEL_26:
  closure #2 in closure #1 in Connection.didClose(_:)(v14, v25, a3, a4);
}

uint64_t specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a4;
  v13 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
  v14 = *(a2 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (v14)
  {
    v15 = v14 == a1;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(1, 0, a3, a4, a5, a6, a7, a8, a9);
    goto LABEL_26;
  }

  v18 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v19 = *(a2 + v18);
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = __CocoaSet.contains(_:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(v19 + 16))
  {
    v34 = v9;
    v35 = v10;
    Hasher.init(_seed:)();

    specialized BackgroundConnectionProtocol.hash(into:)(v45);
    v21 = Hasher._finalize()();
    v22 = ~(-1 << *(v19 + 32));
    while (1)
    {
      v23 = v21 & v22;
      if (((*(v19 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
      {

        v9 = v34;
        v10 = v35;
        goto LABEL_17;
      }

      v24 = *(*(v19 + 48) + 8 * v23);
      memcpy(__dst, (v24 + 40), 0x204uLL);
      memcpy(v41, (v24 + 40), 0x204uLL);
      memcpy(v43, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v39);
      outlined init with copy of ConnectionConfiguration(v43, v39);
      LOBYTE(v24) = static ConnectionConfiguration.== infix(_:_:)(v41, __src);
      memcpy(v44, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v44);
      memcpy(v45, v41, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v45);
      if (v24)
      {
        break;
      }

      v21 = v23 + 1;
    }

    v9 = v34;
    v10 = v35;
LABEL_16:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

LABEL_17:
  memcpy(v44, (a1 + 440), 0x72uLL);
  if (v44[1] != 1)
  {
    v45[0] = v44[0];
    v45[1] = v44[1];
    memcpy(&v45[2], (a1 + 456), 0x62uLL);
    v25 = OBJC_IVAR___SNConnectionInternal_pendingRoutes;
    swift_beginAccess();
    v26 = *(a2 + v25);
    outlined init with copy of NetworkConnectionProtocol?(v44, v43, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

    v27 = specialized Set.contains(_:)(v45, v26);

    if (v27)
    {
      swift_beginAccess();
      memcpy(v41, v44, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v41, v43);
      specialized Set._Variant.insert(_:)();
      swift_endAccess();
      outlined destroy of ConnectionPolicyRoute(__dst);
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v43, v45);
      swift_endAccess();
      outlined destroy of NetworkConnectionProtocol?(v43, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    }

    outlined destroy of NetworkConnectionProtocol?(v44, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  }

  if (*(a2 + v13) || (v28 = , v29 = specialized Set.isEmpty.getter(v28), , !v29) || (v30 = OBJC_IVAR___SNConnectionInternal_scheduledRoutes, swift_beginAccess(), *(*(a2 + v30) + 16)))
  {
    v33 = a9;
    v31 = 0;
  }

  else
  {
    v33 = a9;
    v31 = 1;
  }

  v11 = a4;
  closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(0, v31, a3, a4, a5, v10, v9, a8, v33);
LABEL_26:
}

id Connection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*protocol witness for ConnectionProtocol.delegate.modify in conformance Connection(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___SNConnectionInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return protocol witness for ConnectionProtocol.delegate.modify in conformance Connection;
}

void Connection.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = type metadata accessor for URL();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a7)
  {
    v20 = MEMORY[0x223DE2070](a6, a7);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 initWithConnectionURL:v18 interfaceIndex:a2 sendBufferSize:a3 wwanPreferred:a4 & 1 connectionType:a5 policyId:v20];

  return v21;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Network12NWConnectionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
    OUTLINED_FUNCTION_32();
    v2 = static _SetStorage.convert(_:capacity:)();
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return;
      }

      v3 = type metadata accessor for NWConnection();
      v5 = OUTLINED_FUNCTION_56_4(v3, v4);
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      OUTLINED_FUNCTION_69_2(v5);
      v6 = NWConnection.identifier.getter();
      MEMORY[0x223DE29A0](v6);
      Hasher._finalize()();
      OUTLINED_FUNCTION_34_5();
      if (v10)
      {
        break;
      }

      OUTLINED_FUNCTION_62_2();
LABEL_15:
      OUTLINED_FUNCTION_22_8(v11);
    }

    v12 = 0;
    v13 = (63 - v9) >> 6;
    while (++v8 != v13 || (v12 & 1) == 0)
    {
      v14 = v8 == v13;
      if (v8 == v13)
      {
        v8 = 0;
      }

      v12 |= v14;
      if (*(v7 + 8 * v8) != -1)
      {
        OUTLINED_FUNCTION_61_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11SiriNetwork20BackgroundConnectionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd, &_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMR);
    OUTLINED_FUNCTION_32();
    v2 = static _SetStorage.convert(_:capacity:)();
    v25 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      v3 = __CocoaSet.Iterator.next()();
      if (!v3)
      {

        return;
      }

      v24[0] = v3;
      v4 = type metadata accessor for BackgroundConnection();
      v6 = OUTLINED_FUNCTION_56_4(v4, v5);
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        specialized _NativeSet.resize(capacity:)(v14 + 1, v7, v8, v9, v10, v11, v12, v13, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v25, v26, v27, v28, v29, v30, v31, v32, v33, vars0, vars8);
      }

      OUTLINED_FUNCTION_69_2(v6);
      specialized BackgroundConnectionProtocol.hash(into:)(v24);
      Hasher._finalize()();
      OUTLINED_FUNCTION_34_5();
      if (v18)
      {
        break;
      }

      OUTLINED_FUNCTION_62_2();
LABEL_15:
      OUTLINED_FUNCTION_22_8(v19);
    }

    v20 = 0;
    v21 = (63 - v17) >> 6;
    while (++v16 != v21 || (v20 & 1) == 0)
    {
      v22 = v16 == v21;
      if (v16 == v21)
      {
        v16 = 0;
      }

      v20 |= v22;
      if (*(v15 + 8 * v16) != -1)
      {
        OUTLINED_FUNCTION_61_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)()
{
  OUTLINED_FUNCTION_13_3();
  Hasher.init(_seed:)();
  v0 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v0);
  Hasher._finalize()();
  OUTLINED_FUNCTION_18_8();
  v1 = _HashTable.nextHole(atOrAfter:)();
  return OUTLINED_FUNCTION_20_5(v1);
}

{
  OUTLINED_FUNCTION_13_3();
  Hasher.init(_seed:)();
  specialized BackgroundConnectionProtocol.hash(into:)(v2);
  Hasher._finalize()();
  OUTLINED_FUNCTION_18_8();
  v0 = _HashTable.nextHole(atOrAfter:)();
  return OUTLINED_FUNCTION_20_5(v0);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21ConnectionPolicyRouteV_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  for (i = *(a1 + 16); v5 < i; i = *(a1 + 16))
  {
    v8 = (a1 + 32 + 120 * v5);
    memcpy(__dst, v8, 0x72uLL);
    ++v5;
    memcpy(v25, v8, 0x72uLL);
    memcpy(v24, v8, 0x72uLL);
    Hasher.init(_seed:)();
    outlined init with copy of ConnectionPolicyRoute(__dst, v23);
    ConnectionPolicyRoute.hash(into:)(__src);
    v9 = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = v9 & v10;
      v12 = (v9 & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (v9 & v10);
      v15 = 120 * (v9 & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v16 = *(v3 + 48);
      memcpy(v23, (v16 + v15), 0x72uLL);
      memcpy(__src, (v16 + v15), 0x72uLL);
      v17 = static ConnectionPolicyRoute.== infix(_:_:)(__src, v25);
      memcpy(v24, __src, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v23, v21);
      outlined destroy of ConnectionPolicyRoute(v24);
      if (v17)
      {
        memcpy(__src, v25, 0x72uLL);
        result = outlined destroy of ConnectionPolicyRoute(__src);
        goto LABEL_12;
      }

      v9 = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    result = memcpy((*(v3 + 48) + v15), v25, 0x72uLL);
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_17;
    }

    *(v3 + 16) = v20;
LABEL_12:
    if (v5 == v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined init with take of ConnectionAnalysisInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(v3, v4, v5);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  OUTLINED_FUNCTION_15_8();
  v2 = static _SetStorage.allocate(capacity:)();
  v33 = *(v1 + 16);
  if (!v33)
  {
    goto LABEL_26;
  }

  v3 = 0;
  v31 = v1;
  v32 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    outlined init with copy of MessageCenterEndpoint(v32 + 40 * v3, &v35);
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    v4 = OUTLINED_FUNCTION_54_4();
    v5(v4);
    if (v6)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v8 = ~v7;
    v10 = v9 & ~v7;
    OUTLINED_FUNCTION_64_2();
    if ((v13 & v12) == 0)
    {
      break;
    }

    while (1)
    {
      outlined init with copy of MessageCenterEndpoint(*(v2 + 48) + 40 * v10, v34);
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v14 = OUTLINED_FUNCTION_54_4();
      v16 = v15(v14);
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v19 = OUTLINED_FUNCTION_55_3();
      v21 = v20(v19);
      if (!v18)
      {
        if (!v22)
        {
          goto LABEL_23;
        }

LABEL_18:

        outlined destroy of MessageCenterEndpoint(v34);
        goto LABEL_19;
      }

      if (!v22)
      {
        goto LABEL_18;
      }

      if (v16 == v21 && v18 == v22)
      {
        break;
      }

      v24 = OUTLINED_FUNCTION_72_1(v16, v18, v21);

      outlined destroy of MessageCenterEndpoint(v34);
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_19:
      v10 = (v10 + 1) & v8;
      OUTLINED_FUNCTION_64_2();
      if ((v12 & v13) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    outlined destroy of MessageCenterEndpoint(v34);
LABEL_24:
    outlined destroy of MessageCenterEndpoint(&v35);
LABEL_25:
    ++v3;
    v1 = v31;
    if (v3 == v33)
    {
LABEL_26:

      return;
    }
  }

LABEL_20:
  *(v2 + 56 + 8 * v11) = v12 | v13;
  v25 = *(v2 + 48) + 40 * v10;
  v26 = v35;
  v27 = v36;
  *(v25 + 32) = v37;
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = *(v2 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v2 + 16) = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork25MessageCenterActorWrapperV_Tt0g5()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  v3 = OUTLINED_FUNCTION_15(v2);
  v35 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR), OUTLINED_FUNCTION_15_8(), v10 = static _SetStorage.allocate(capacity:)(), v11 = v10, (v34 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v13 = v10 + 56;
    v14 = *(v35 + 80);
    v32 = v1;
    v33 = v1 + ((v14 + 32) & ~v14);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v35 + 72);
      v16 = v12 + 1;
      outlined init with copy of MessageCenterActorWrapper(v33 + v15 * v12, v9);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_18_8();
      v19 = ~v18;
      while (1)
      {
        v20 = v17 & v19;
        v21 = (v17 & v19) >> 6;
        v22 = *(v13 + 8 * v21);
        v23 = 1 << (v17 & v19);
        if ((v23 & v22) == 0)
        {
          break;
        }

        outlined init with copy of MessageCenterActorWrapper(*(v11 + 48) + v20 * v15, v7);
        v24 = static UUID.== infix(_:_:)();
        OUTLINED_FUNCTION_23_2();
        outlined destroy of ConnectionAnalysisInfo(v7, v25);
        if (v24)
        {
          OUTLINED_FUNCTION_23_2();
          outlined destroy of ConnectionAnalysisInfo(v9, v29);
          goto LABEL_12;
        }

        v17 = v20 + 1;
      }

      *(v13 + 8 * v21) = v23 | v22;
      outlined init with take of MessageCenterActorWrapper(v9, *(v11 + 48) + v20 * v15);
      v26 = *(v11 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_16;
      }

      *(v11 + 16) = v28;
LABEL_12:
      v12 = v16;
      v30 = v16 == v34;
      v1 = v32;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_47();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Network12NWConnectionC_Tt0g5(unint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
    OUTLINED_FUNCTION_15_8();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v22 = specialized Array.count.getter(v1);
  if (v22)
  {
    v3 = 0;
    v4 = v2 + 56;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v21 == 0, v1);
      if (v21)
      {
        v5 = MEMORY[0x223DE2730](v3, v1);
      }

      else
      {
        v5 = *(v19 + 8 * v3);
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      Hasher.init(_seed:)();
      v7 = NWConnection.identifier.getter();
      MEMORY[0x223DE29A0](v7);
      Hasher._finalize()();
      OUTLINED_FUNCTION_18_8();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v15 = NWConnection.identifier.getter();
        v16 = NWConnection.identifier.getter();

        if (v15 == v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v5;
      v17 = *(v2 + 16);
      v6 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v6)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v18;
LABEL_17:
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50_4();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v58 = v37;
  v38 = *v32;
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)(&a12);
  Hasher._finalize()();
  OUTLINED_FUNCTION_18_8();
  v41 = v40 & ~v39;
  if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
  {
LABEL_14:
    *(v58 + 32) = 0;
    *v58 = 0u;
    *(v58 + 16) = 0u;
    goto LABEL_20;
  }

  v42 = ~v39;
  while (1)
  {
    outlined init with copy of MessageCenterEndpoint(*(v38 + 48) + 40 * v41, &a12);
    __swift_project_boxed_opaque_existential_1(&a12, a15);
    v43 = OUTLINED_FUNCTION_55_3();
    v45 = v44(v43);
    v47 = v46;
    v48 = v36[3];
    v49 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v48);
    v50 = (*(v49 + 16))(v48, v49);
    if (!v47)
    {
      if (!v51)
      {
        goto LABEL_16;
      }

LABEL_12:

      outlined destroy of MessageCenterEndpoint(&a12);
      goto LABEL_13;
    }

    if (!v51)
    {
      goto LABEL_12;
    }

    if (v45 == v50 && v47 == v51)
    {
      break;
    }

    v53 = OUTLINED_FUNCTION_72_1(v45, v47, v50);

    outlined destroy of MessageCenterEndpoint(&a12);
    if (v53)
    {
      goto LABEL_17;
    }

LABEL_13:
    v41 = (v41 + 1) & v42;
    if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  outlined destroy of MessageCenterEndpoint(&a12);
LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v32;
  a12 = *v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v55 = a12;
  }

  *v58 = OUTLINED_FUNCTION_60_3(v55);
  *(v58 + 16) = v56;
  *(v58 + 32) = *(v57 + 32);
  specialized _NativeSet._delete(at:)(v41);
  *v32 = a12;
LABEL_20:
  OUTLINED_FUNCTION_40_5();
}

{
  OUTLINED_FUNCTION_50_4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v60 = v32;
  v61 = v41;
  v42 = *v32;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._finalize()();
  v43 = v42 + 56;
  OUTLINED_FUNCTION_18_8();
  v46 = v45 & ~v44;
  if ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v44;
    v48 = *(v42 + 48);
    while (1)
    {
      v49 = (v48 + 32 * v46);
      v50 = v49[2];
      v51 = v49[3];
      v52 = *v49 == v40 && v49[1] == v38;
      if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v53 = v50 == v36 && v51 == v34;
        if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v46 = (v46 + 1) & v47;
      if (((*(v43 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *v60;
    v62 = *v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v55 = v62;
    }

    v56 = *(v55 + 48) + 32 * v46;
    v57 = *v56;
    v59 = *(v56 + 16);
    v58 = *(v56 + 24);
    *v61 = v57;
    *(v61 + 16) = v59;
    *(v61 + 24) = v58;
    specialized _NativeSet._delete(at:)(v46);
    *v60 = v62;
  }

  else
  {
LABEL_14:
    *v61 = 0u;
    *(v61 + 16) = 0u;
  }

  OUTLINED_FUNCTION_40_5();
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    Hasher.init(_seed:)();
    specialized BackgroundConnectionProtocol.hash(into:)(v21);
    v8 = Hasher._finalize()();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      memcpy(__dst, (v11 + 40), 0x204uLL);
      memcpy(v17, (v11 + 40), 0x204uLL);
      memcpy(v19, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v15);
      outlined init with copy of ConnectionConfiguration(v19, v15);
      LOBYTE(v11) = static ConnectionConfiguration.== infix(_:_:)(v17, __src);
      memcpy(v20, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v20);
      memcpy(v21, v17, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v21);
      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v2;
        v17[0] = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v13 = v17[0];
        }

        v7 = *(*(*&v13 + 48) + 8 * v10);
        specialized _NativeSet._delete(at:)(v10);
        *v2 = v17[0];
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaSet.contains(_:)();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = specialized Set._Variant._migrateToNative(_:removing:)(v5);

  return v7;
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  OUTLINED_FUNCTION_18_8();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    if (((*(v6 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v10, v16);
    v11 = MEMORY[0x223DE26B0](v16, a1);
    outlined destroy of AnyHashable(v16);
    if (v11)
    {
      break;
    }

    v7 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v16[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v13 = v16[0];
  }

  *a2 = OUTLINED_FUNCTION_60_3(v13);
  *(a2 + 16) = v14;
  *(a2 + 32) = *(v15 + 32);
  specialized _NativeSet._delete(at:)(v10);
  *v3 = v16[0];
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1)
{
  v2 = v1;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Network12NWConnectionC_Tt1g5(v4, v3);
  v6 = v5;
  v16 = v5;
  Hasher.init(_seed:)();

  v7 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v7);
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    v11 = NWConnection.identifier.getter();
    v12 = NWConnection.identifier.getter();

    if (v11 == v12)
    {

      v13 = *(*(v6 + 48) + 8 * v10);
      specialized _NativeSet._delete(at:)(v10);
      v14 = NWConnection.identifier.getter();
      if (v14 == NWConnection.identifier.getter())
      {
        *v2 = v16;
        return v13;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11SiriNetwork20BackgroundConnectionC_Tt1g5(v6, v5);
  v8 = v7;
  v26 = v7;
  Hasher.init(_seed:)();

  specialized BackgroundConnectionProtocol.hash(into:)(v25);
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      break;
    }

    v12 = *(*(v8 + 48) + 8 * v11);
    memcpy(__dst, (v12 + 40), 0x204uLL);
    memcpy(v21, (v12 + 40), 0x204uLL);
    memcpy(v23, (v4 + 40), 0x204uLL);
    memcpy(__src, (v4 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(__dst, v19);
    outlined init with copy of ConnectionConfiguration(v23, v19);
    LOBYTE(v12) = static ConnectionConfiguration.== infix(_:_:)(v21, __src);
    memcpy(v24, __src, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v24);
    memcpy(v25, v21, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v25);
    if (v12)
    {

      v13 = *(*(v8 + 48) + 8 * v11);
      specialized _NativeSet._delete(at:)(v11);
      memcpy(v18, (v4 + 40), 0x204uLL);
      memcpy(v17, (v4 + 40), 0x204uLL);
      memcpy(v19, (v13 + 40), 0x204uLL);
      memcpy(v16, (v13 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(v18, v21);
      outlined init with copy of ConnectionConfiguration(v19, v21);
      v14 = static ConnectionConfiguration.== infix(_:_:)(v17, v16);
      memcpy(__src, v16, 0x204uLL);
      outlined destroy of ConnectionConfiguration(__src);
      memcpy(v21, v17, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v21);
      if (v14)
      {
        *v2 = v26;
        return v13;
      }

      __break(1u);
      break;
    }

    v9 = v11 + 1;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ConnectionAnalysisInfo(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_71();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t specialized Set.endIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of MessageCenterEndpoint(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for MessageCenterActorWrapper(0);
  OUTLINED_FUNCTION_11_1(v7);
  v9 = v6 + *(v8 + 72) * v4;

  return outlined init with copy of MessageCenterActorWrapper(v9, a4);
}

uint64_t specialized Set.subscript.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v5 = a4;
      }

      else
      {
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v16[0] = MEMORY[0x223DE2660](result, a2, v5);
      type metadata accessor for BackgroundConnection();
      swift_dynamicCast();
      return v17[0];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      v16[0] = __CocoaSet.Index.element.getter();
      type metadata accessor for BackgroundConnection();
      swift_dynamicCast();
      v6 = v17[0];
      Hasher.init(_seed:)();
      specialized BackgroundConnectionProtocol.hash(into:)(v17);
      v7 = Hasher._finalize()();
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_24;
        }

        v10 = *(*(a4 + 48) + 8 * v9);
        memcpy(__dst, (v10 + 40), 0x204uLL);
        memcpy(v13, (v10 + 40), 0x204uLL);
        memcpy(v15, (v6 + 40), 0x204uLL);
        memcpy(__src, (v6 + 40), 0x204uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v11);
        outlined init with copy of ConnectionConfiguration(v15, v11);
        LOBYTE(v10) = static ConnectionConfiguration.== infix(_:_:)(v13, __src);
        memcpy(v16, __src, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v16);
        memcpy(v17, v13, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v17);
        if (v10)
        {
          goto LABEL_18;
        }

        v7 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }
}

BOOL _sSh5IndexV2eeoiySbAByx_G_ADtFZ11SiriNetwork20BackgroundConnectionC_Tt1g5(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x223DE2610);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v1, v0);

  return static DispatchQoS.unspecified.getter();
}

void *OUTLINED_FUNCTION_69_2(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

Swift::Bool __swiftcall NWError.sn_isNetworkUnreachable()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_47(v2, v19);
  v4(v3);
  v5 = OUTLINED_FUNCTION_2_27();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277CD8FB0])
  {
    v8 = OUTLINED_FUNCTION_3_24();
    v9(v8);
    return (*v0 - 49) < 3;
  }

  else if (v7 == *MEMORY[0x277CD8FA0])
  {
    v11 = OUTLINED_FUNCTION_3_24();
    v12(v11);
    OUTLINED_FUNCTION_9_12();
    v15 = v14 | 0xFFFE0000;
    return v16 || v13 == v15;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_41_0();
    v18(v17);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkUnreachableForServerCause()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_47(v2, v13);
  v4(v3);
  v5 = OUTLINED_FUNCTION_2_27();
  if (v6(v5) != *MEMORY[0x277CD8FB0])
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11(v10);
    goto LABEL_5;
  }

  v7 = OUTLINED_FUNCTION_3_24();
  v8(v7);
  if (*v0 >= 0x3Eu)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v9 = 0x2060000000000000uLL >> *v0;
  return v9 & 1;
}

Swift::Bool __swiftcall NWError.sn_isNetworkDown()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_47(v2, v12);
  v4(v3);
  v5 = OUTLINED_FUNCTION_2_27();
  if (v6(v5) == *MEMORY[0x277CD8FB0])
  {
    v7 = OUTLINED_FUNCTION_3_24();
    v8(v7);
    return *v0 == 50;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11(v10);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryableNow()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_47(v2, v12);
  v4(v3);
  v5 = OUTLINED_FUNCTION_2_27();
  if (v6(v5) == *MEMORY[0x277CD8FB0])
  {
    v7 = OUTLINED_FUNCTION_3_24();
    v8(v7);
    return *v0 == 54;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11(v10);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryableAfterDelay()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v4);
  v6 = (&v23 - v5);
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_5_23();
  v7();
  v8 = *(v2 + 88);
  v9 = OUTLINED_FUNCTION_3_2();
  v10 = v8(v9);
  v11 = *MEMORY[0x277CD8FB0];
  if (v10 == *MEMORY[0x277CD8FB0])
  {
    v12 = OUTLINED_FUNCTION_3_2();
    v13(v12);
    if (*v6 == 54)
    {
      return 1;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_3_2();
    v16(v15);
  }

  OUTLINED_FUNCTION_5_23();
  v7();
  v17 = OUTLINED_FUNCTION_41_0();
  if (v8(v17) == v11)
  {
    v18 = OUTLINED_FUNCTION_41_0();
    v19(v18);
    return *v0 == 50 || *v0 == 55;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_41_0();
    v22(v21);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkOperationRetryable()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v4);
  v6 = (&v25 - v5);
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_5_23();
  v7();
  v8 = *(v2 + 88);
  v9 = OUTLINED_FUNCTION_3_2();
  v10 = v8(v9);
  v11 = *MEMORY[0x277CD8FB0];
  if (v10 != *MEMORY[0x277CD8FB0])
  {
    if (v10 != *MEMORY[0x277CD8FA0])
    {
      v18 = OUTLINED_FUNCTION_3_2();
      v19(v18);
      goto LABEL_12;
    }

    v14 = OUTLINED_FUNCTION_3_2();
    v15(v14);
    if (*v6 != -65554 && *v6 != -65537)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v12 = OUTLINED_FUNCTION_3_2();
  v13(v12);
  if ((*v6 - 49) < 3)
  {
    return 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_5_23();
  v7();
  v20 = OUTLINED_FUNCTION_41_0();
  if (v8(v20) == v11)
  {
    v21 = OUTLINED_FUNCTION_41_0();
    v22(v21);
    return *v0 != 60;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_41_0();
    v24(v23);
    return 1;
  }
}

Swift::Bool __swiftcall NWError.isFallbackConnectionMethodRetryable(for:)(SiriNetwork::ConnectionMethod a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277CD8FB0])
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  (*(v5 + 96))(v7, v4);
  v8 = *v7;
  result = 1;
  if (*v7 != 9 && v8 != 57)
  {
    if (v8 == 54)
    {
      return a1 == SiriNetwork_ConnectionMethod_peer;
    }

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryable()()
{
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_47(v2, v19);
  v4(v3);
  v5 = OUTLINED_FUNCTION_2_27();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277CD8FB0])
  {
    v8 = OUTLINED_FUNCTION_3_24();
    v9(v8);
    return (*v0 - 52) < 0xFFFFFFFD;
  }

  else if (v7 == *MEMORY[0x277CD8FA0])
  {
    v11 = OUTLINED_FUNCTION_3_24();
    v12(v11);
    OUTLINED_FUNCTION_9_12();
    v15 = v14 | 0xFFFE0000;
    v16 = v16 || v13 == v15;
    return !v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_41_0();
    v18(v17);
    return 1;
  }
}

uint64_t ConnectionPolicyType.stringRawValue.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      result = static String._unconditionallyBridgeFromObjectiveC(_:)();
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::ConnectionPolicyType_optional __swiftcall ConnectionPolicyType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ConnectionPolicyProtocol.stringRawValue.getter()
{
  result = *v0;
  if (*v0)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return result;
}

SiriNetwork::ConnectionPolicyProtocol_optional __swiftcall ConnectionPolicyProtocol.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ConnectionPolicyRoute.routeId.setter()
{
  OUTLINED_FUNCTION_13_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.connectionId.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.cname.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.host.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.resolver.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

void __swiftcall ConnectionPolicyRoute.init()(SiriNetwork::ConnectionPolicyRoute *__return_ptr retstr)
{
  retstr->host.value._object = 0;
  *&retstr->priority = 0u;
  *&retstr->cname.value._object = 0u;
  retstr->routeId = 0u;
  retstr->connectionId = 0u;
  retstr->mptcp = 1;
  retstr->resolver.value._countAndFlagsBits = 0;
  retstr->resolver.value._object = 0;
  retstr->resolverProtocol.value = SiriNetwork_ConnectionPolicyProtocol_unknownDefault;
  *(&retstr->timeout.value + 7) = 0.0;
  LOWORD(retstr[1].routeId.value._countAndFlagsBits) = 1281;
}

id ConnectionPolicyRoute.connectionPolicyRouteObject()()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v28 = *v0;
  v29 = *(v0 + 4);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 11);
  v27 = *(v0 + 10);
  v30 = *(v0 + 96);
  v31 = *(v0 + 1);
  v8 = v0[13];
  v32 = *(v0 + 112);
  v33 = *(v0 + 113);
  v9 = [objc_allocWithZone(MEMORY[0x277D47228]) init];
  if (v4)
  {
    v4 = MEMORY[0x223DE2070](v3, v4);
  }

  [v9 setCname_];

  if (v1)
  {
    v10 = MEMORY[0x223DE2070](v2, v1);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_6_4(v10, sel_setConnectionId_);

  if (v6)
  {
    v12 = MEMORY[0x223DE2070](v5, v6);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_6_4(v12, sel_setHost_);

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  OUTLINED_FUNCTION_6_4(isa, sel_setMptcp_);

  v15 = [v9 setPriority_];
  if (v7)
  {
    v15 = MEMORY[0x223DE2070](v27, v7);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_6_4(v15, sel_setResolver_);

  v18 = 0;
  switch(v30)
  {
    case 1:
    case 2:
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = MEMORY[0x223DE2070](v19);

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_4(v17, sel_setResolverProtocol_);

  if (v31)
  {
    v20 = MEMORY[0x223DE2070](*&v28);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_6_4(v20, sel_setRouteId_);

  if ((v32 & 1) == 0)
  {
    v23 = MEMORY[0x223DE2360](v8);
    OUTLINED_FUNCTION_6_4(v23, sel_setTimeout_);
  }

  v24 = 0;
  switch(v33)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = MEMORY[0x223DE2070](v25);

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_4(v22, sel_setType_);

  return v9;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v13 < v10) ^ (v17 >= v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v87, *a1, a3);
LABEL_89:
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
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyType and conformance ConnectionPolicyType()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConnectionPolicyType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConnectionPolicyProtocol(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 120 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x72uLL);
      memmove(v11, v18, 0x72uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 120;
      result = outlined init with copy of ConnectionPolicyRoute(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    outlined init with copy of ConnectionPolicyRoute(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *closure #1 in NetworkManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5[0] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B15ManagerObserver_pMd, &_s11SiriNetwork0B15ManagerObserver_pMR);
    if (swift_dynamicCast())
    {
      v9[0] = v6;
      v9[1] = v7;
      v10 = v8;
      outlined init with copy of AnyHashable(v9, v5);
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v6, v5);
      outlined destroy of AnyHashable(&v6);
      swift_endAccess();

      return outlined destroy of AnyHashable(v9);
    }

    else
    {

      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      return outlined destroy of AnyHashable?(&v6);
    }
  }

  return result;
}

uint64_t NetworkManager.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v27 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v26 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  v18 = *(v7 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  v31 = a3;
  v32 = v20;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v29 = v21;
  v30 = a4;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v22);

  (*(v27 + 8))(v5, v9);
  (*(v13 + 8))(v17, v26);
}

void closure #1 in NetworkManager.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B15ManagerObserver_pMd, &_s11SiriNetwork0B15ManagerObserver_pMR);
    if (swift_dynamicCast())
    {
      v8[0] = v5;
      v8[1] = v6;
      v9 = v7;
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v8, &v5);
      outlined destroy of AnyHashable?(&v5);
      swift_endAccess();
      outlined destroy of AnyHashable(v8);
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      outlined destroy of AnyHashable?(&v5);
    }

    v4 = OBJC_IVAR___SNNetworkManagerInternal_observers;
    swift_beginAccess();
    if (!*(*&v3[v4] + 16))
    {
      [v3 stopMonitoringNetwork];
    }
  }
}

void @objc NetworkManager.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void closure #1 in closure #1 in NetworkManager.startMonitoringNetwork(_:)(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_unknownObjectRetain();
    status = nw_path_get_status(v2);
    v4 = MEMORY[0x223DE31A0](a1, 2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    status = nw_path_status_invalid;
  }

  NetworkManager.pathUpdated(status:usesCellular:)(status, v4);
}

Swift::Void __swiftcall NetworkManager.pathUpdated(status:usesCellular:)(nw_path_status_t status, Swift::Bool usesCellular)
{
  v3 = v2;
  LOBYTE(v4) = usesCellular;
  v6 = OBJC_IVAR___SNNetworkManagerInternal_pathStatus;
  v7 = &OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular;
  if (*&v2[OBJC_IVAR___SNNetworkManagerInternal_pathStatus] == status && v2[OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular] == usesCellular)
  {
    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriNetwork);
    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109888;
      *(v12 + 4) = status;
      *(v12 + 8) = 1024;
      *(v12 + 10) = *(v6 + v3);
      *(v12 + 14) = 1024;
      *(v12 + 16) = v4 & 1;
      *(v12 + 20) = 1024;
      *(v12 + 22) = *(&v9->isa + *v7);

      _os_log_impl(&dword_223515000, v10, v11, "NetworkManager - PathEvaluator: Path updated, status %u from %u, usesCellular %{BOOL}d from %{BOOL}d", v12, 0x1Au);
      MEMORY[0x223DE38F0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v13 = *v7;
    v14 = *(&v9->isa + *v7);
    v15 = *(v6 + v3);
    if (v15 == 3)
    {
      if (status == nw_path_status_satisfiable)
      {
        if (v14 & 1 | ((v4 & 1) == 0))
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_8_18();
        v50 = 1;
        v51 = 1;
        goto LABEL_34;
      }

      v17 = status == nw_path_status_satisfied;
      if (!*(&v9->isa + *v7))
      {
        if (v4)
        {
          OUTLINED_FUNCTION_8_18();
          v50 = 1;
          v51 = v28;
          goto LABEL_34;
        }

        goto LABEL_45;
      }

      if (v4)
      {
        goto LABEL_45;
      }

      if (status == nw_path_status_satisfied)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }

    if (status == nw_path_status_satisfiable)
    {
      break;
    }

    v17 = status == nw_path_status_satisfied;
    if ((*(&v9->isa + *v7) & 1) == 0)
    {
      if (v4)
      {
        v50 = v15 == 1;
        v51 = status == nw_path_status_satisfied;
        OUTLINED_FUNCTION_8_18();
        goto LABEL_34;
      }

LABEL_44:
      if (v15 != 1)
      {
        goto LABEL_55;
      }

LABEL_45:
      if (v17)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (v4)
    {
      goto LABEL_44;
    }

    if (status == nw_path_status_satisfied)
    {
LABEL_21:
      OUTLINED_FUNCTION_8_18();
      v18 = OBJC_IVAR___SNNetworkManagerInternal_observers;
      OUTLINED_FUNCTION_13_9();
      v19 = *(&v9->isa + v18);
      OUTLINED_FUNCTION_49();
      v22 = v21 & v20;
      v4 = (v23 + 63) >> 6;

      v24 = 0;
      v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
      v7 = 40;
      if (!v22)
      {
        goto LABEL_23;
      }

      do
      {
        v25 = v24;
LABEL_26:
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        outlined init with copy of AnyHashable(*(v19 + 48) + (v26 | (v25 << 6)) * v7, v57);
        v27 = OUTLINED_FUNCTION_5_25();
        __swift_instantiateConcreteTypeFromMangledNameV2(v27, &_s11SiriNetwork0B15ManagerObserver_pMR);
        if (swift_dynamicCast())
        {
          v7 = v6;
          v6 = v55;
          [v55 networkManagerNonWWANDidBecomeAvailable_];
          OUTLINED_FUNCTION_12_7();
        }

        v24 = v25;
      }

      while (v22);
LABEL_23:
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_61;
        }

        if (v25 >= v4)
        {
LABEL_54:

          LOBYTE(v4) = v54;
          v13 = v52;
          v6 = v53;
          goto LABEL_55;
        }

        v22 = *(v19 + 56 + 8 * v25);
        ++v24;
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    if (v15 != 1)
    {
      goto LABEL_55;
    }

LABEL_46:
    OUTLINED_FUNCTION_8_18();
    v39 = OBJC_IVAR___SNNetworkManagerInternal_observers;
    OUTLINED_FUNCTION_13_9();
    v40 = *(&v9->isa + v39);
    v4 = v40 + 56;
    OUTLINED_FUNCTION_49();
    v43 = v42 & v41;
    v45 = (v44 + 63) >> 6;

    v46 = 0;
    v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
    v7 = 40;
    if (v43)
    {
      while (1)
      {
        v47 = v46;
LABEL_51:
        OUTLINED_FUNCTION_9_14();
        outlined init with copy of AnyHashable(*(v40 + 48) + v48 * v7, v57);
        v49 = OUTLINED_FUNCTION_5_25();
        __swift_instantiateConcreteTypeFromMangledNameV2(v49, &_s11SiriNetwork0B15ManagerObserver_pMR);
        if (swift_dynamicCast())
        {
          v7 = v6;
          v6 = v56;
          [v56 networkManagerNetworkUnreachable_];
          OUTLINED_FUNCTION_12_7();
        }

        v46 = v47;
      }
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v47 >= v45)
      {
        goto LABEL_54;
      }

      ++v46;
      if (*(v4 + 8 * v47))
      {
        goto LABEL_51;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  if (v14 & 1 | ((v4 & 1) == 0))
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_8_18();
  v50 = v16;
  v51 = 1;
LABEL_34:
  v29 = OBJC_IVAR___SNNetworkManagerInternal_observers;
  swift_beginAccess();
  v4 = *(&v9->isa + v29);
  OUTLINED_FUNCTION_49();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;

  v35 = 0;
  v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
  v7 = 40;
  if (v32)
  {
    while (1)
    {
      v36 = v35;
LABEL_39:
      OUTLINED_FUNCTION_9_14();
      outlined init with copy of AnyHashable(*(v4 + 48) + v37 * v7, v57);
      v38 = OUTLINED_FUNCTION_5_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, &_s11SiriNetwork0B15ManagerObserver_pMR);
      if (swift_dynamicCast())
      {
        v7 = v6;
        v6 = v58[0];
        [v58[0] networkManagerLostNonWWANConnectivity_];
        OUTLINED_FUNCTION_12_7();
      }

      v35 = v36;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v36 >= v34)
    {
      break;
    }

    ++v35;
    if (*(v4 + 56 + 8 * v36))
    {
      goto LABEL_39;
    }
  }

  LOBYTE(v4) = v54;
  v13 = v52;
  v6 = v53;
  v17 = v51;
  if (v50)
  {
    goto LABEL_45;
  }

LABEL_55:
  *(v6 + v3) = status;
  *(&v9->isa + v13) = v4 & 1;
}

Swift::Void __swiftcall NetworkManager.stopMonitoringNetwork()()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v17 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  v12 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = partial apply for closure #1 in NetworkManager.stopMonitoringNetwork();
  v22 = v13;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v19 = v14;
  v20 = &block_descriptor_21;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v15);

  (*(v4 + 8))(v1, v2);
  (*(v7 + 8))(v11, v17);
}

void closure #1 in NetworkManager.stopMonitoringNetwork()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator;
    if (*&Strong[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
    {
      v4 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.siriNetwork);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_223515000, v6, v7, "NetworkManager - PathEvaluator: Stop monitoring network", v8, 2u);
        MEMORY[0x223DE38F0](v8, -1, -1);
      }

      nw_path_evaluator_cancel();
      swift_unknownObjectRelease();
      *&v2[v3] = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path setter for ConnectionInfo.connectionConfiguration : ConnectionInfo(void *__src)
{
  memcpy(__dst, __src, 0x204uLL);
  outlined init with copy of ConnectionConfiguration(__dst, &v3);
  return ConnectionInfo.connectionConfiguration.setter(__src);
}

uint64_t ConnectionInfo.connectionConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1(v1 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v6);
  memcpy(__dst, (v1 + v3), 0x204uLL);
  memcpy(a1, (v1 + v3), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v5);
}

uint64_t ConnectionInfo.connectionConfiguration.setter(const void *a1)
{
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_95(v1 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, &v5);
  memcpy(__dst, (v1 + v3), 0x204uLL);
  memcpy((v1 + v3), a1, 0x204uLL);
  return outlined destroy of ConnectionConfiguration(__dst);
}

id ConnectionInfo.init(connectionConfiguration:)(void *__src)
{
  *&v1[OBJC_IVAR___SNConnectionInfoInternal_policy] = 0;
  *&v1[OBJC_IVAR___SNConnectionInfoInternal_policyRoute] = 0;
  memcpy(&v1[OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration], __src, 0x204uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConnectionInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ConnectionInfo.connectionProtocolTechnology.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 32) = v0;
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1(v0 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v1);
  *(v1 + 24) = *(v0 + v3);
  return OUTLINED_FUNCTION_7_19();
}

uint64_t ConnectionInfo.communicationProtocolTechnology.setter(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = OUTLINED_FUNCTION_3_25(OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration);
  result = OUTLINED_FUNCTION_95(v3, v4);
  *(v1 + 8) = v2;
  return result;
}

uint64_t ConnectionInfo.communicationProtocolTechnology.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 32) = v0;
  v3 = v0 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1(v3, v1);
  *(v1 + 24) = *(v3 + 8);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.connectionProtocolTechnology.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 24), a2);

  free(v3);
}

uint64_t ConnectionInfo.assistantIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 24);
  *(v1 + 24) = *(v0 + 16);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.assistantIdentifier.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.peerAssistantIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 40);
  *(v1 + 24) = *(v0 + 32);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerAssistantIdentifier.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 32) = v4;
  *(v3 + 40) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.connectionId.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 64) = v0;
  *(v1 + 48) = ConnectionInfo.connectionId.getter();
  *(v1 + 56) = v3;
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.connectionId.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v6 = v4 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  if (a2)
  {
    OUTLINED_FUNCTION_95(v4 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v2);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
  }

  else
  {
    OUTLINED_FUNCTION_95(v4 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v2 + 24);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
  }

  free(v2);
}

uint64_t ConnectionInfo.aceHost.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 72);
  *(v1 + 24) = *(v0 + 64);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.aceHost.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 64) = v4;
  *(v3 + 72) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.languageCode.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 88);
  *(v1 + 24) = *(v0 + 80);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.languageCode.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 80) = v4;
  *(v3 + 88) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.prefersWWAN.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 96);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.prefersWWAN.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 96) = v3;
  free(v1);
}

uint64_t ConnectionInfo.skipPeer.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 97);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.skipPeer.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 97) = v3;
  free(v1);
}

uint64_t ConnectionInfo.useWiFiHint.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 98);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.useWiFiHint.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 98) = v3;
  free(v1);
}

void key path setter for ConnectionInfo.skipPeerErrorReason : ConnectionInfo(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConnectionInfo.skipPeerErrorReason.setter(v1);
}

uint64_t ConnectionInfo.skipPeerErrorReason.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 32) = v0;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 104);
  *(v1 + 24) = v6;
  v7 = v6;
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.skipPeerErrorReason.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 3);
  v3 = *v4;
  v5 = v2[4] + v2[5];
  v6 = *(v5 + 104);
  *(v5 + 104) = *v4;
  if (a2)
  {
    v7 = v3;

    v6 = *v4;
  }

  free(v2);
}

uint64_t ConnectionInfo.forceReconnect.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 113);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.forceReconnect.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 113) = v3;
  free(v1);
}

uint64_t ConnectionInfo.timeout.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  v3 = OUTLINED_FUNCTION_6_20(v2);
  *(v3 + 56) = v0;
  *(v1 + 48) = ConnectionInfo.timeout.getter(v3);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.timeout.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56) + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  v5 = 24;
  if (a2)
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_95(*(*a1 + 56) + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v2 + v5);
  *(v4 + 120) = v3;
  *(v4 + 128) = 0;

  free(v2);
}

uint64_t ConnectionInfo.imposePolicyBan.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 313);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.imposePolicyBan.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 313) = v3;
  free(v1);
}

uint64_t key path setter for ConnectionInfo.connectionPolicy : ConnectionInfo(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ConnectionInfo.connectionPolicy.setter(v1);
}

uint64_t ConnectionInfo.connectionPolicy.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policy);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return OUTLINED_FUNCTION_41_0();
}

uint64_t key path setter for ConnectionInfo.connectionPolicyRoute : ConnectionInfo(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ConnectionInfo.connectionPolicyRoute.setter(v1);
}

uint64_t ConnectionInfo.connectionPolicyRoute.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policyRoute);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return OUTLINED_FUNCTION_41_0();
}

void ConnectionInfo.connectionPolicy.modify(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t ConnectionInfo.forceOnDeviceOnlyDictation.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 114);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.forceOnDeviceOnlyDictation.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 114) = v3;
  free(v1);
}

uint64_t ConnectionInfo.productTypePrefix.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.productTypePrefix.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 160);
  *(v1 + 24) = *(v0 + 152);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.productTypePrefix.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 152) = v4;
  *(v3 + 160) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.peerType.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 176);
  *(v1 + 24) = *(v0 + 168);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerType.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 168) = v4;
  *(v3 + 176) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t key path setter for ConnectionInfo.assistantIdentifier : ConnectionInfo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t ConnectionInfo.peerVersion.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 192);
  *(v1 + 24) = *(v0 + 184);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerVersion.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  *(v3 + 184) = v4;
  *(v3 + 192) = v2;
  if (v5)
  {
  }

  free(v1);
}

uint64_t ConnectionInfo.deviceIsInWalkaboutExperimentGroup.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 514);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.deviceIsInWalkaboutExperimentGroup.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 514) = v3;
  free(v1);
}

uint64_t ConnectionInfo.usesProxyConnection.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 99);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.usesProxyConnection.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 99) = v3;
  free(v1);
}

uint64_t ConnectionInfo.usesPeerManagedSync.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 515);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.usesPeerManagedSync.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 515) = v3;
  free(v1);
}

id ConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized StringProtocol.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

SNUtilities __swiftcall SNUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SNUtilities()
{
  result = lazy cache variable for type metadata for SNUtilities;
  if (!lazy cache variable for type metadata for SNUtilities)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNUtilities);
  }

  return result;
}

Swift::Int ConnectionPolicy.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionPolicy.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionPolicy(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConnectionPolicy.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicy and conformance ConnectionPolicy()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy;
  if (!lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionPreparationReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 336) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Data.init(copying:)@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData();
  result = DataProtocol.copyBytes(to:)();
  *a3 = result;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t *__return_ptr, __int128 *, __int128 *), uint64_t a2)
{
  v5 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v7, v6);
      *v5 = xmmword_2235EF6F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      v14 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_14;
      }

      if (v14 < v7)
      {
        goto LABEL_18;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v15 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v13 = v15;
LABEL_14:
      if (v14 < v7)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v4 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      *v5 = v7;
      v5[1] = v13 | 0x4000000000000000;
      return v4;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v7, v6);
      *&v19 = v7;
      *(&v19 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_2235EF6F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v10 = *(&v19 + 1);
      v11 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v19 + 16), *(v19 + 24), a1);
      *v5 = v19;
      v5[1] = v10 | 0x8000000000000000;
      if (!v3)
      {
        return v11;
      }

      return v4;
    case 3uLL:
      *(&v19 + 7) = 0;
      *&v19 = 0;
      a1(&v18, &v19, &v19);
      if (!v3)
      {
        return v18;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      outlined consume of Data._Representation(v7, v6);
      *&v19 = v7;
      WORD4(v19) = v6;
      BYTE10(v19) = BYTE2(v6);
      BYTE11(v19) = BYTE3(v6);
      BYTE12(v19) = BYTE4(v6);
      BYTE13(v19) = BYTE5(v6);
      BYTE14(v19) = BYTE6(v6);
      a1(&v18, &v19, (&v19 + BYTE6(v6)));
      if (!v3)
      {
        v4 = v18;
      }

      v9 = DWORD2(v19) | ((WORD6(v19) | (BYTE14(v19) << 16)) << 32);
      *v5 = v19;
      v5[1] = v9;
      return v4;
  }
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x223DE1260]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchData and conformance DispatchData()
{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    type metadata accessor for DispatchData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

uint64_t *BackgroundConnectionError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53(&one-time initialization token for errorDomain);
  }

  return &static BackgroundConnectionError.errorDomain;
}

uint64_t static BackgroundConnectionError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static BackgroundConnectionError.errorDomain;

  return v0;
}

uint64_t static BackgroundConnectionError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static BackgroundConnectionError.errorDomain = a1;
  qword_27D08A6D0 = a2;
}

uint64_t (*static BackgroundConnectionError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static BackgroundConnectionError.errorDomain : BackgroundConnectionError.Type@<D0>(void *a1@<X8>)
{
  BackgroundConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D08A6D0;
  *a1 = static BackgroundConnectionError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static BackgroundConnectionError.errorDomain : BackgroundConnectionError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  BackgroundConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static BackgroundConnectionError.errorDomain = v2;
  qword_27D08A6D0 = v1;
}

uint64_t BackgroundConnectionError.errorCode.getter()
{
  v1 = *v0;
  result = *(v0 + 32);
  switch(*(v0 + 32))
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      v5 = v4 | v1 | v3;
      v6 = v4 | v3;
      v7 = 5;
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v1 == 3;
      }

      v9 = 8;
      if (v8)
      {
        v9 = 6;
      }

      if (v1 != 2 || v6 != 0)
      {
        v7 = v9;
      }

      if (v1 == 1 && v6 == 0)
      {
        v12 = 4;
      }

      else
      {
        v12 = v7;
      }

      if (v5)
      {
        result = v12;
      }

      else
      {
        result = 1;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t BackgroundConnectionError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32))
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2235F4F80;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = MEMORY[0x277D83B88];
      *(inited + 32) = v6;
      *(inited + 40) = v8;
      *(inited + 72) = v7;
      *(inited + 48) = v1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v9;
      type metadata accessor for CFStringRef(0);
      *(inited + 120) = v10;

      if (v2)
      {
        v11 = v2;
      }

      else
      {
        v11 = MEMORY[0x223DE2070](0, 0xE000000000000000);
      }

      *(inited + 96) = v11;
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v14;
      *(inited + 168) = MEMORY[0x277D837D0];
      if (v3)
      {
        v15 = v4;
      }

      else
      {
        v15 = 0;
      }

      v16 = 0xE000000000000000;
      if (v3)
      {
        v16 = v3;
      }

      *(inited + 144) = v15;
      *(inited + 152) = v16;
      v17 = v2;
      result = Dictionary.init(dictionaryLiteral:)();
      break;
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_28();
      result = BackgroundConnectionError.shouldSkipIDSOrTuscanyUserInfo(_:_:)(v1 & 1, v12);
      break;
    default:

      result = Dictionary.init(dictionaryLiteral:)();
      break;
  }

  return result;
}