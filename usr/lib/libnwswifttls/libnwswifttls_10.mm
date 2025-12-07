unint64_t lazy protocol witness table accessor for type PAKEClientConfiguration and conformance PAKEClientConfiguration()
{
  result = lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration;
  if (!lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKEServerRecord and conformance PAKEServerRecord()
{
  result = lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord;
  if (!lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey()
{
  result = lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey;
  if (!lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PAKEClientConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PAKEServerRecord(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 122))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PAKEServerRecord(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PAKEServerRecords.RecordKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PAKEServerRecords.RecordKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata completion function for PAKEServerState(uint64_t a1)
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SymmetricKey?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Extension.PAKE.PAKEServerHello?, &type metadata for Extension.PAKE.PAKEServerHello);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SPAKE2.Verifier();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL static Extension.TicketRequest.__derived_enum_equals(_:_:)(int a1, int a2)
{
  v2 = a1 == a2;
  if ((a2 & 0x10000) == 0)
  {
    v2 = 0;
  }

  v3 = a1 == a2;
  if ((a2 & 0x10000) != 0)
  {
    v3 = 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ByteBuffer.writeTicketRequestExtension(_:)(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x10000) != 0)
  {
    v5 = a1;
    v8 = MEMORY[0x1E69E6290];
    v9 = MEMORY[0x1E6969DF8];
    v6 = &v5;
    v7 = &v6;
    __swift_project_boxed_opaque_existential_0(&v6, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v6);
    return 1;
  }

  else
  {
    v1 = a1 >> 8;
    v5 = a1;
    v2 = MEMORY[0x1E69E6290];
    v3 = MEMORY[0x1E6969DF8];
    v8 = MEMORY[0x1E69E6290];
    v9 = MEMORY[0x1E6969DF8];
    v6 = &v5;
    v7 = &v6;
    __swift_project_boxed_opaque_existential_0(&v6, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v6);
    v5 = v1;
    v8 = v2;
    v9 = v3;
    v6 = &v5;
    v7 = &v6;
    __swift_project_boxed_opaque_existential_0(&v6, v2);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v6);
    return 2;
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV26readTicketRequestExtension11messageTypeAA0H0O0fG0OAA09HandshakeJ0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v6 & 0x100) == 0)
    {
      v5 = v6;
      v4 = 1;
      return v5 | (v4 << 16);
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v1 & 0x100) == 0)
    {
      v2 = v1;
      v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
      if ((v3 & 0x100) == 0)
      {
        v4 = 0;
        v5 = v2 | (v3 << 8);
        return v5 | (v4 << 16);
      }
    }

LABEL_9:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v8 = a1 | 0x3A0000;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v8;
}

void Extension.TicketRequest.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x10000) != 0)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v3) = v2;
  }

  else
  {
    v3 = a2 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int Extension.TicketRequest.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x10000) != 0)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v2) = a1;
  }

  else
  {
    v2 = a1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.TicketRequest()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v3) = v1;
  }

  else
  {
    v3 = v1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.TicketRequest()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v2) = v1;
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.TicketRequest(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v4) = v2;
  }

  else
  {
    v4 = v2 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.TicketRequest(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 2))
  {
    v2 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 2);
  }
}

uint64_t ClientTicketRequest.description.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x1B274D610](0xD00000000000001FLL, 0x80000001B26CE360);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v0);

  MEMORY[0x1B274D610](0xD000000000000013, 0x80000001B26CE380);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

Swift::Int Extension.TicketRequest.ServerTicketRequestHint.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t Extension.TicketRequest.ServerTicketRequestHint.description.getter()
{
  _StringGuts.grow(_:)(34);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v0);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t lazy protocol witness table accessor for type Extension.TicketRequest and conformance Extension.TicketRequest()
{
  result = lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest;
  if (!lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClientTicketRequest and conformance ClientTicketRequest()
{
  result = lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest;
  if (!lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint()
{
  result = lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint;
  if (!lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.TicketRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.TicketRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t specialized ByteBuffer.writeRecord<A>(_:)(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  LOBYTE(v17) = 23;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v20 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v17 = 771;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_0(&v18, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v4 = *(a1 + 16);
  if (v4 >> 16)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v17 = bswap32(v4) >> 16;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_0(&v18, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  if (v4)
  {
    Data._Representation.append(contentsOf:)();
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_1B25F5000, v6, v7, "wrote contentlength: %ld", v8, 0xCu);
    MEMORY[0x1B274ECF0](v8, -1, -1);
  }

  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315906;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001B26CDA10, &v18);
    *(v11 + 12) = 2080;
    v13 = ProtocolVersion.description.getter(771);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2048;

    *(v11 + 24) = v4;

    *(v11 + 32) = 2048;
    *(v11 + 34) = v4 + 5;
    _os_log_impl(&dword_1B25F5000, v9, v10, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v12, -1, -1);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return v4 + 5;
}

uint64_t TLSRecordHandler.pendingApplicationDataBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TLSRecordHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for TLSRecordHandler;
  if (!type metadata singleton initialization cache for TLSRecordHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TLSRecordHandler.receivedApplicationData.getter()
{
  v1 = v0 + *(type metadata accessor for TLSRecordHandler(0) + 44);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

void TLSRecordHandler.receivedApplicationData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t TLSRecordHandler.outgoingBytes.getter()
{
  v1 = v0 + *(type metadata accessor for TLSRecordHandler(0) + 48);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

void TLSRecordHandler.outgoingBytes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t TLSRecordHandler.outgoingBytesCount.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

unint64_t TLSRecordHandler.bytesToReadCount.getter()
{
  result = *(v0 + *(type metadata accessor for TLSRecordHandler(0) + 20) + 24);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TLSRecordHandler.writeEncryptionLevelIsEarlyData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  outlined init with copy of EncryptionLevel?(v0 + *(v4 + 28), v3);
  v5 = type metadata accessor for EncryptionLevel(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return 0;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of EncryptionLevel(v3, type metadata accessor for EncryptionLevel);
    return 0;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    (*(*(v7 - 8) + 8))(v3, v7);
    return 1;
  }
}

uint64_t outlined init with copy of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TLSRecordHandler.getNegotiatedCiphersuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v12 = type metadata accessor for ServerHandshakeStateMachine;
    v13 = v4;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v12 = type metadata accessor for HandshakeStateMachine;
    v13 = v7;
  }

  outlined destroy of EncryptionLevel(v13, v12);
  if ((v11 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t TLSRecordHandler.getNegotiatedPAKE.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of TLSHandshakeStateMachine(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
    v12 = type metadata accessor for ServerHandshakeStateMachine;
    v13 = v4;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedPAKE.getter();
    v12 = type metadata accessor for HandshakeStateMachine;
    v13 = v7;
  }

  outlined destroy of EncryptionLevel(v13, v12);
  return v11 & 0x1FFFF;
}

uint64_t TLSRecordHandler.getNegotiatedEPSK.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v18, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v18, v4, type metadata accessor for ServerHandshakeStateMachine);
    v19 = ServerHandshakeStateMachine.negotiatedEPSK.getter();
    v20 = type metadata accessor for ServerHandshakeStateMachine;
    v21 = v4;
LABEL_13:
    outlined destroy of EncryptionLevel(v21, v20);
    return v19 & 1;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v18, v15, type metadata accessor for HandshakeStateMachine);
  outlined init with copy of TLSHandshakeStateMachine(&v15[*(v13 + 24)], v12, type metadata accessor for HandshakeState);
  outlined destroy of EncryptionLevel(v15, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v9, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v9[*(v7 + 36)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v9;
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v23 = v28;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v28, type metadata accessor for HandshakeState.ReadyState);
      v19 = *(v23 + *(ready + 52));
      v24 = type metadata accessor for HandshakeState.ReadyState;
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v23 = v26;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v26, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v19 = *(v23 + *(v27 + 40));
    v24 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_12:
    v20 = v24;
    v21 = v23;
    goto LABEL_13;
  }

  outlined destroy of EncryptionLevel(v12, type metadata accessor for HandshakeState);
  v19 = 0;
  return v19 & 1;
}

uint64_t TLSRecordHandler.getEPSKOffered.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v5, v14, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v8, type metadata accessor for ServerHandshakeStateMachine);
    v16 = a2(v15);
    v17 = type metadata accessor for ServerHandshakeStateMachine;
    v18 = v8;
  }

  else
  {
    v19 = _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v11, type metadata accessor for HandshakeStateMachine);
    v16 = a1(v19);
    v17 = type metadata accessor for HandshakeStateMachine;
    v18 = v11;
  }

  outlined destroy of EncryptionLevel(v18, v17);
  return v16 & 1;
}

uint64_t TLSRecordHandler.getNegotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v13 = v12;
    v14 = type metadata accessor for ServerHandshakeStateMachine;
    v15 = v4;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedGroup.getter();
    v13 = v16;
    v14 = type metadata accessor for HandshakeStateMachine;
    v15 = v7;
  }

  outlined destroy of EncryptionLevel(v15, v14);
  if (v13)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t TLSRecordHandler.writeOutput()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    if (v6 == result)
    {
      return 0;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v5)
    {
      v7 = v2 >> 32;
    }

    else
    {
      v7 = BYTE6(v3);
    }

    if (v7 >= result)
    {
      v8 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v1, v1[1]);
      result = v8;
      *v1 = xmmword_1B26C6130;
      v1[2] = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TLSRecordHandler.getOutputData(_:)(Swift::Int a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_1B26C6130;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = ByteBuffer.readBytes(length:)(a1);
  if (result)
  {
    v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(result);

    return v13;
  }

  return result;
}

uint64_t TLSRecordHandler.getApplicationData(_:)(Swift::Int a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_1B26C6130;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = ByteBuffer.readBytes(length:)(a1);
  if (result)
  {
    v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(result);

    return v13;
  }

  return result;
}

Swift::Int __swiftcall TLSRecordHandler.getApplicationDataLength()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

BOOL TLSRecordHandler.handshakeComplete.getter()
{
  v1 = v0;
  v21 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v15, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v15, v6, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v6[*(v4 + 24)], v3, type metadata accessor for ServerHandshakeState);
    outlined destroy of EncryptionLevel(v6, type metadata accessor for ServerHandshakeStateMachine);
    v16 = swift_getEnumCaseMultiPayload() > 6;
    v17 = type metadata accessor for ServerHandshakeState;
    v18 = v3;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v15, v12, type metadata accessor for HandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v12[*(v10 + 24)], v9, type metadata accessor for HandshakeState);
    outlined destroy of EncryptionLevel(v12, type metadata accessor for HandshakeStateMachine);
    v16 = swift_getEnumCaseMultiPayload() > 5;
    v17 = type metadata accessor for HandshakeState;
    v18 = v9;
  }

  outlined destroy of EncryptionLevel(v18, v17);
  return v16;
}

uint64_t TLSRecordHandler.handshakeStarted.getter()
{
  v20 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v0, v14, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v5, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v5[*(v3 + 24)], v2, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      v15 = 1;
    }

    else
    {
      v15 = v5[24];
    }

    outlined destroy of EncryptionLevel(v5, type metadata accessor for ServerHandshakeStateMachine);
    v16 = type metadata accessor for ServerHandshakeState;
    v17 = v2;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v11, type metadata accessor for HandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v11[*(v9 + 24)], v8, type metadata accessor for HandshakeState);
    outlined destroy of EncryptionLevel(v11, type metadata accessor for HandshakeStateMachine);
    v15 = swift_getEnumCaseMultiPayload() != 0;
    v16 = type metadata accessor for HandshakeState;
    v17 = v8;
  }

  outlined destroy of EncryptionLevel(v17, v16);
  return v15;
}

uint64_t TLSRecordHandler.bufferedNetworkData.getter()
{
  v1 = type metadata accessor for TLSRecordHandler(0);
  result = 0;
  v3 = (v0 + *(v1 + 20));
  v4 = v3[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    v6 = v3[2];
    v7 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v5 + 24);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = BYTE6(v4);
      v9 = v5 >> 32;
      if (v7)
      {
        v8 = v9;
      }
    }

    result = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
    }
  }

  return result;
}

double TLSRecordHandler.init(stateMachine:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = v4[7];
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + v4[8], 1, 1, v6);
  *(a2 + v4[9]) = 0;
  v8 = a2 + v4[13];
  *v8 = 0;
  *(v8 + 2) = 1;
  v9 = a2 + v4[14];
  *v9 = 0;
  *(v9 + 2) = 1;
  *(a2 + v4[15]) = 0;
  v10 = a2 + v4[16];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(a1, a2, type metadata accessor for TLSHandshakeStateMachine);
  v11 = (a2 + v4[5]);
  *v11 = xmmword_1B26C5EF0;
  v11[1] = xmmword_1B26CBEB0;
  v12 = a2 + v4[6];
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v15 = type metadata accessor for TLSRecordProtector(0);
  v16 = v15[6];
  v22 = v15[5];
  v14(v12 + v16, 1, 1, v13);
  v23 = v15[7];
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  v17 = v12 + v15[10];
  outlined destroy of P256.Signing.PrivateKey?(v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14(v12, 1, 1, v13);
  *(v12 + v22) = 0;
  outlined destroy of P256.Signing.PrivateKey?(v12 + v16, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14(v12 + v16, 1, 1, v13);
  *(v12 + v23) = 0;
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a2 + v4[11];
  result = 0.0;
  *v18 = xmmword_1B26C6130;
  *(v18 + 16) = 0;
  v20 = a2 + v4[10];
  *v20 = xmmword_1B26C6130;
  *(v20 + 16) = 0;
  v21 = a2 + v4[12];
  *v21 = xmmword_1B26C6130;
  *(v21 + 16) = 0;
  return result;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF()
{
  v3 = v0;
  v4 = type metadata accessor for PartialHandshakeResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v3, v9, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of EncryptionLevel(v9, type metadata accessor for TLSHandshakeStateMachine);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "startHandshake called on server", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }

    v20 = xmmword_1B26CBEC0;
    v21 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 30;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v9, v12, type metadata accessor for HandshakeStateMachine);
    _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v19, v6);
    if (v1)
    {
      v2 = v19;
      outlined destroy of EncryptionLevel(v12, type metadata accessor for HandshakeStateMachine);
    }

    else
    {
      _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A007partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(v6);
      outlined destroy of EncryptionLevel(v6, type metadata accessor for PartialHandshakeResult);
      outlined destroy of EncryptionLevel(v3, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v3, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }
  }

  return v2;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A0LL07partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(uint64_t *a1)
{
  v2 = v1;
  v58 = type metadata accessor for Data.Iterator();
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v54 - v9;
  v10 = a1[1];
  if (v10 >> 60 == 15)
  {
LABEL_62:
    v46 = v2;
    v50 = v64;
    v51 = _s15SwiftTLSLibrary16TLSRecordHandlerV23updateEncryptionSecrets33_3A7BCC859838BE1761A4636F58F247A0LLyyAA22PartialHandshakeResultVAA8TLSErrorOYKF(a1);
    if (v50)
    {
      return v51;
    }

    return v46;
  }

  v59 = v8;
  v11 = *a1;
  v55 = a1;
  v12 = a1[2];
  outlined copy of Data._Representation(v11, v10);
  result = v12;
  v14 = (v10 >> 62);
  v67 = v11;
  v60 = v11 >> 32;
  v56 = (v4 + 8);
  v66 = BYTE6(v10);
  v62 = v10;
  v63 = v2;
  v61 = v10 >> 62;
  while (1)
  {
    if (v14 > 1)
    {
      v18 = v14 == 2 ? *(v67 + 24) : 0;
    }

    else
    {
      v18 = v66;
      if (v14)
      {
        v18 = v60;
      }
    }

    v19 = __OFSUB__(v18, result);
    v20 = v18 - result;
    if (v19)
    {
      break;
    }

    if (v20 < 1)
    {
      outlined consume of Data._Representation(v67, v10);
      a1 = v55;
      goto LABEL_62;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v21 = *(v67 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = v66;
      if (v14)
      {
        v21 = v60;
      }
    }

    v19 = __OFSUB__(v21, result);
    v22 = v21 - result;
    if (v19)
    {
      goto LABEL_70;
    }

    if (v22 >= 0x4000)
    {
      v22 = 0x4000;
    }

    v23 = result + v22;
    if (__OFADD__(result, v22))
    {
      goto LABEL_71;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        if (*(v67 + 24) < v23)
        {
          goto LABEL_65;
        }
      }

      else if (v23 > 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v24 = v66;
      if (v14)
      {
        v24 = v60;
      }

      if (v24 < v23)
      {
LABEL_65:
        v46 = 0xD000000000000046;
        v72 = 0xD000000000000046;
        v73 = 0x80000001B26CE460;
        v74 = 1;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        v52 = v67;
        v53 = v10;
LABEL_67:
        outlined consume of Data._Representation(v52, v53);
        return v46;
      }
    }

    if (v23 < result)
    {
      goto LABEL_72;
    }

    result = Data._Representation.subscript.getter();
    v25 = result;
    v27 = v26;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_41;
      }

      result = *(result + 16);
      v29 = *(v25 + 24);
    }

    else
    {
      if (!v28)
      {
        goto LABEL_41;
      }

      result = result;
      v29 = v25 >> 32;
    }

    if (v29 < result)
    {
      goto LABEL_73;
    }

LABEL_41:
    v68 = Data._Representation.subscript.getter();
    v31 = v30;
    outlined consume of Data._Representation(v25, v27);
    v77 = type metadata accessor for TLSRecordHandler(0);
    v32 = *(v77 + 28);
    v33 = v65;
    outlined init with copy of EncryptionLevel?(v2 + v32, v65);
    v34 = type metadata accessor for EncryptionLevel(0);
    v35 = *(*(v34 - 8) + 48);
    v36 = v35(v33, 1, v34);
    result = outlined destroy of P256.Signing.PrivateKey?(v33, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    if (v36 == 1)
    {
      goto LABEL_42;
    }

    v40 = v59;
    outlined init with copy of EncryptionLevel?(v2 + v32, v59);
    if (v35(v40, 1, v34) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v40, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      v38 = v68;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v68;
      if (!EnumCaseMultiPayload)
      {
        v49 = type metadata accessor for SymmetricKey();
        result = (*(*(v49 - 8) + 8))(v40, v49);
LABEL_42:
        v37 = v31 >> 62;
        if ((v31 >> 62) > 1)
        {
          v2 = v63;
          v38 = v68;
          if (v37 == 2)
          {
            v42 = *(v68 + 16);
            v41 = *(v68 + 24);
            v39 = v41 - v42;
            if (__OFSUB__(v41, v42))
            {
              goto LABEL_76;
            }

            outlined copy of Data._Representation(v68, v31);
            if (v39)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v38 = v68;
          if (!v37)
          {
            v39 = BYTE6(v31);
            v2 = v63;
            if (!BYTE6(v31))
            {
              goto LABEL_3;
            }

LABEL_58:
            v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v39, 0);
            v47 = v57;
            v48 = Data._copyContents(initializing:)();
            outlined consume of Data._Representation(v38, v31);
            result = (*v56)(v47, v58);
            if (v48 != v39)
            {
              goto LABEL_74;
            }

LABEL_4:
            v16 = &protocol witness table for TLSPlaintext;
            v76 = &protocol witness table for TLSPlaintext;
            LOWORD(v72) = 790;
            BYTE2(v72) = 3;
            v14 = &type metadata for TLSPlaintext;
            v75 = &type metadata for TLSPlaintext;
            v73 = v15;
            goto LABEL_5;
          }

          if (__OFSUB__(HIDWORD(v68), v68))
          {
            goto LABEL_75;
          }

          v39 = HIDWORD(v68) - v68;
          outlined copy of Data._Representation(v68, v31);
          v2 = v63;
          if (v39)
          {
            goto LABEL_58;
          }
        }

LABEL_3:
        outlined consume of Data._Representation(v38, v31);
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_4;
      }

      outlined destroy of EncryptionLevel(v40, type metadata accessor for EncryptionLevel);
    }

    outlined copy of Data._Representation(v38, v31);
    v44 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v38, v31);
    v2 = v63;
    v45 = v64;
    v46 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v44, 22, 0);

    v64 = v45;
    if (v45)
    {
      outlined consume of Data._Representation(v38, v31);
      v52 = v67;
      v53 = v62;
      goto LABEL_67;
    }

    v71 = &protocol witness table for TLSCiphertext;
    v70 = &type metadata for TLSCiphertext;
    *&v69 = v46;
    outlined init with take of ContiguousBytes(&v69, &v72);
    v14 = v75;
    v16 = v76;
LABEL_5:
    v17 = __swift_project_boxed_opaque_existential_0(&v72, v14);
    ByteBuffer.writeRecord<A>(_:)(v17, v14, v16);
    outlined consume of Data._Representation(v38, v31);
    __swift_destroy_boxed_opaque_existential_0(&v72);
    result = v23;
    LODWORD(v14) = v61;
    v10 = v62;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t TLSRecordHandler.addIncomingHandshakeBytes(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v2, v12, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v6, type metadata accessor for ServerHandshakeStateMachine);
    ServerHandshakeStateMachine.receivedNetworkData(_:)(a1);
    outlined destroy of EncryptionLevel(v2, type metadata accessor for TLSHandshakeStateMachine);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v6, v2, type metadata accessor for ServerHandshakeStateMachine);
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v9, type metadata accessor for HandshakeStateMachine);
    HandshakeStateMachine.receivedNetworkData(_:)(a1);
    outlined destroy of EncryptionLevel(v2, type metadata accessor for TLSHandshakeStateMachine);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v9, v2, type metadata accessor for HandshakeStateMachine);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV23updateEncryptionSecrets33_3A7BCC859838BE1761A4636F58F247A0LLyyAA22PartialHandshakeResultVAA8TLSErrorOYKF(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = type metadata accessor for SymmetricKey();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for EncryptionLevel(0);
  v72 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v2, v28, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v28, v22, type metadata accessor for ServerHandshakeStateMachine);
    v29 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v30 = type metadata accessor for ServerHandshakeStateMachine;
    v31 = v22;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v28, v25, type metadata accessor for HandshakeStateMachine);
    v29 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v30 = type metadata accessor for HandshakeStateMachine;
    v31 = v25;
  }

  outlined destroy of EncryptionLevel(v31, v30);
  v32 = v13;
  v33 = v72;
  if ((v29 & 0x10000) == 0)
  {
    v34 = v2 + *(type metadata accessor for TLSRecordHandler(0) + 24);
    v35 = v34 + *(type metadata accessor for TLSRecordProtector(0) + 40);
    *v35 = v29;
    *(v35 + 2) = 0;
  }

  v69 = v2;
  v64 = v6;
  v36 = type metadata accessor for PartialHandshakeResult(0);
  outlined init with copy of EncryptionLevel?(v74 + *(v36 + 24), v12);
  v37 = *(v33 + 48);
  if (v37(v12, 1, v32) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  }

  else
  {
    v63 = v37;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v12, v19, type metadata accessor for EncryptionLevel);
    v38 = type metadata accessor for TLSRecordHandler(0);
    v39 = *(v38 + 32);
    v40 = v69;
    outlined destroy of P256.Signing.PrivateKey?(v69 + v39, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined init with copy of TLSHandshakeStateMachine(v19, v40 + v39, type metadata accessor for EncryptionLevel);
    (*(v33 + 56))(v40 + v39, 0, 1, v32);
    v41 = v67;
    v42 = TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(v67, v19);
    v43 = v40 + *(v38 + 24);
    v44 = v73;
    v45 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v41, v42);
    if (v44)
    {
LABEL_14:
      v29 = v45;

      (*(v70 + 8))(v41, v71);
      outlined destroy of EncryptionLevel(v19, type metadata accessor for EncryptionLevel);
      return v29;
    }

    v73 = 0;
    v62 = v32;
    outlined destroy of EncryptionLevel(v19, type metadata accessor for EncryptionLevel);
    v46 = type metadata accessor for TLSRecordProtector(0);
    v47 = v46[6];
    outlined destroy of P256.Signing.PrivateKey?(v43 + v47, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v49 = v70;
    v48 = v71;
    (*(v70 + 32))(v43 + v47, v41, v71);
    (*(v49 + 56))(v43 + v47, 0, 1, v48);
    v29 = v46[7];

    *(v43 + v29) = v42;
    *(v43 + v46[9]) = 0;
    v32 = v62;
    v37 = v63;
  }

  v50 = v68;
  outlined init with copy of EncryptionLevel?(v74 + *(v36 + 20), v68);
  if (v37(v50, 1, v32) != 1)
  {
    v19 = v66;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v50, v66, type metadata accessor for EncryptionLevel);
    v51 = type metadata accessor for TLSRecordHandler(0);
    v52 = *(v51 + 28);
    v53 = v69;
    outlined destroy of P256.Signing.PrivateKey?(v69 + v52, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined init with copy of TLSHandshakeStateMachine(v19, v53 + v52, type metadata accessor for EncryptionLevel);
    (*(v72 + 56))(v53 + v52, 0, 1, v32);
    v29 = v65;
    outlined init with copy of TLSHandshakeStateMachine(v19, v65, type metadata accessor for EncryptionLevel);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined destroy of EncryptionLevel(v19, type metadata accessor for EncryptionLevel);
      (*(v70 + 8))(v29, v71);
      return v29;
    }

    outlined destroy of EncryptionLevel(v29, type metadata accessor for EncryptionLevel);
    v41 = v64;
    v54 = TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(v64, v19);
    v55 = v53 + *(v51 + 24);
    v56 = v73;
    v45 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v41, v54);
    if (!v56)
    {
      v29 = 0;
      outlined destroy of EncryptionLevel(v19, type metadata accessor for EncryptionLevel);
      outlined destroy of P256.Signing.PrivateKey?(v55, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v59 = v70;
      v58 = v71;
      (*(v70 + 32))(v55, v41, v71);
      (*(v59 + 56))(v55, 0, 1, v58);
      v60 = type metadata accessor for TLSRecordProtector(0);
      v61 = *(v60 + 20);

      *(v55 + v61) = v54;
      *(v55 + *(v60 + 32)) = 0;
      return v29;
    }

    goto LABEL_14;
  }

  outlined destroy of P256.Signing.PrivateKey?(v50, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  return v29;
}

void *TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v21 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  outlined init with copy of TLSHandshakeStateMachine(a2, v6, type metadata accessor for EncryptionLevel);
  (*(v8 + 32))(v16, v6, v7);
  v17 = MEMORY[0x1E69E7CC0];
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(7955819, 0xE300000000000000, MEMORY[0x1E69E7CC0], 0x20uLL, v14);
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(30313, 0xE200000000000000, v17, 0xCuLL, v11);
  v18 = *(v8 + 8);
  v18(v16, v7);
  (*(v8 + 16))(a1, v14, v7);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v19 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v21[2], v21[3]);
  v18(v11, v7);
  v18(v14, v7);
  return v19;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV14parseOneRecord33_3A7BCC859838BE1761A4636F58F247A0LLAA0C0OSgyAA8TLSErrorOYKF()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for TLSRecordHandler(0);
  outlined init with copy of EncryptionLevel?(v0 + *(v5 + 32), v4);
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if (v7 == 1)
  {
    result = _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF();
    if (!v1)
    {
      if (v9)
      {
        return result & 0xFFFFFF;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  result = _s15SwiftTLSLibrary15TLSRecordParserV21parseCiphertextRecordAA13TLSCiphertextVSgyAA8TLSErrorOYKF();
  if (v1)
  {
    v12 = v10;
    v13 = *(v0 + *(v5 + 36));
    v14 = result;
    v32 = v11;
    if (v13)
    {
LABEL_8:
      v30[1] = result;
      v30[2] = v12;
      v31 = v11;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v14;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = __swift_project_value_buffer(v15, logger);
    v17 = v32;
    outlined copy of TLSError(v14, v12, v32);
    v30[0] = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    outlined consume of TLSError(v14, v12, v17);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_allocError();
      *v22 = v14;
      *(v22 + 8) = v12;
      v23 = v32;
      *(v22 + 16) = v32;
      outlined copy of TLSError(v14, v12, v23);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v24;
      *v21 = v24;
      _os_log_impl(&dword_1B25F5000, v18, v19, "error parsing first potential ciphertext record: %@. checking for plaintext alert.", v20, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v21, -1, -1);
      MEMORY[0x1B274ECF0](v20, -1, -1);
    }

    v26 = _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF();
    if (!v25)
    {
      outlined consume of TLSError(v14, v12, v32);
      return 0;
    }

    if (v26 != 21)
    {

      LOBYTE(v11) = v32;
      result = v14;
      goto LABEL_8;
    }

    outlined consume of TLSError(v14, v12, v32);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B25F5000, v27, v28, "Received plaintext alert record", v29, 2u);
      MEMORY[0x1B274ECF0](v29, -1, -1);
    }

    return *&v26 & 0xFFFF15;
  }

  else if (result)
  {
    *(v0 + *(v5 + 36)) = 1;
  }

  return result;
}

void _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  v21 = type metadata accessor for PartialHandshakeResult(0);
  v52 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));

  v54 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v24);
  v26 = v25;

  v27 = 0;
  v28 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    v29 = v54;
    if (v28 == 2)
    {
      v27 = *(v54 + 16);
    }
  }

  else
  {
    v29 = v54;
    if (v28)
    {
      v27 = v54;
    }
  }

  v61 = v29;
  v62 = v26;
  v63 = v27;
  TLSRecordHandler.addIncomingHandshakeBytes(_:)(&v61);
  v30 = type metadata accessor for TLSRecordHandler(0);
  v54 = v1 + *(v30 + 56);
  v49 = v1 + 2;
  v50 = v30;
  v31 = (v52 + 7);
  v51 = (v52 + 7);
  v52 += 6;
  v45 = v23;
  while (1)
  {
    if (*(v54 + 2) == 1)
    {
      (*v31)(v18, 1, 1, v21);
      goto LABEL_11;
    }

    v32 = *v31;
    if ((*(v49 + *(v50 + 52)) & 1) == 0)
    {
      break;
    }

    v32(v18, 1, 1, v21);
LABEL_11:
    outlined init with copy of TLSHandshakeStateMachine(v4, v10, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v18;
      v34 = v48;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v48, type metadata accessor for ServerHandshakeStateMachine);
      v35 = v46;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v58, v46);
      if (v3)
      {
        v42 = v58;
        v41 = v59;
        v43 = v60;
        outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
        outlined init with copy of TLSHandshakeStateMachine(v34, v4, type metadata accessor for ServerHandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v55 = v42;
        v56 = v41;
        v57 = v43;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of EncryptionLevel(v34, type metadata accessor for ServerHandshakeStateMachine);
        v40 = v33;
        goto LABEL_24;
      }

      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined init with take of PartialHandshakeResult?(v35, v18);
      outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v34, v4, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v23 = v45;
    }

    else
    {
      v36 = v47;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v10, v47, type metadata accessor for HandshakeStateMachine);
      _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v58, v53);
      if (v3)
      {
        v38 = v58;
        v37 = v59;
        v39 = v60;
        outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
        outlined init with copy of TLSHandshakeStateMachine(v36, v4, type metadata accessor for HandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v55 = v38;
        v56 = v37;
        v57 = v39;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of EncryptionLevel(v36, type metadata accessor for HandshakeStateMachine);
        v40 = v18;
LABEL_24:
        outlined destroy of P256.Signing.PrivateKey?(v40, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
        goto LABEL_25;
      }

      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined init with take of PartialHandshakeResult?(v53, v18);
      outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v36, v4, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }

    outlined init with take of PartialHandshakeResult?(v18, v20);
    if ((*v52)(v20, 1, v21) == 1)
    {
      goto LABEL_19;
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v20, v23, type metadata accessor for PartialHandshakeResult);
    _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A007partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(v23);
    v3 = 0;
    outlined destroy of EncryptionLevel(v23, type metadata accessor for PartialHandshakeResult);
    v31 = v51;
  }

  v32(v20, 1, 1, v21);
LABEL_19:
  outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  if (TLSRecordHandler.handshakeComplete.getter())
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF();
  }

LABEL_25:
  outlined consume of Data._Representation(v61, v62);
}

void _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF()
{
  v48 = type metadata accessor for Data.Iterator();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TLSRecordHandler(0);
  if (*(v0 + *(v4 + 56) + 2) != 1)
  {
    return;
  }

  v5 = v4;
  v6 = (v0 + *(v4 + 40));
  v7 = v6[1];
  v8 = v7 >> 62;
  v44 = *v6;
  v43 = v44 >> 32;
  v45 = (v2 + 8);
  v46 = BYTE6(v7);
  v49 = v7 >> 62;
  v50 = v1;
  while (1)
  {
    v9 = v6[2];
    if (v8 > 1)
    {
      v10 = v8 == 2 ? *(v44 + 24) : 0;
    }

    else
    {
      v10 = v46;
      if (v8)
      {
        v10 = v43;
      }
    }

    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (v11)
    {
      break;
    }

    v13 = *v6;
    v14 = v6[1];
    if (v12 < 1)
    {
      outlined consume of Data._Representation(v13, v14);
      *v6 = xmmword_1B26C6130;
      v6[2] = 0;
      return;
    }

    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v16 = *(v13 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else if (v15)
    {
      v16 = v13 >> 32;
    }

    else
    {
      v16 = BYTE6(v14);
    }

    v11 = __OFSUB__(v16, v9);
    v17 = v16 - v9;
    if (v11)
    {
      goto LABEL_52;
    }

    if (v17 >= 0x4000)
    {
      v18 = 0x4000;
    }

    else
    {
      v18 = v17;
    }

    v19 = ByteBuffer.readSlice(length:)(v18);
    if (v20 >> 60 == 15)
    {
      v51 = 0xD000000000000046;
      v52 = 0x80000001B26CE460;
      v53 = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return;
    }

    v22 = v19;
    v23 = v20;
    v24 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v19 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = v19 >> 32;
    }

    else
    {
      v25 = BYTE6(v20);
    }

    if (v25 < v21)
    {
      goto LABEL_53;
    }

    v54 = Data._Representation.subscript.getter();
    v27 = v26;
    outlined consume of ByteBuffer?(v22, v23);
    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      v30 = v54;
      if (v28 != 2)
      {
        goto LABEL_44;
      }

      v32 = *(v54 + 16);
      v31 = *(v54 + 24);
      v29 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (!v28)
      {
        v29 = BYTE6(v27);
        v30 = v54;
        if (!BYTE6(v27))
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v30 = v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
        goto LABEL_55;
      }

      v29 = HIDWORD(v54) - v54;
    }

    outlined copy of Data._Representation(v30, v27);
    if (!v29)
    {
LABEL_44:
      outlined consume of Data._Representation(v30, v27);
      v33 = MEMORY[0x1E69E7CC0];
      goto LABEL_45;
    }

LABEL_42:
    v33 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v29, 0);
    v34 = v5;
    v35 = v47;
    v36 = Data._copyContents(initializing:)();
    v37 = v30;
    v38 = v36;
    outlined consume of Data._Representation(v37, v27);
    v39 = v35;
    v5 = v34;
    (*v45)(v39, v48);
    if (v38 != v29)
    {
      goto LABEL_54;
    }

LABEL_45:
    v40 = v50;
    v41 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v33, 23, 0);

    v50 = v40;
    if (v40)
    {
      outlined consume of Data._Representation(v54, v27);
      return;
    }

    specialized ByteBuffer.writeRecord<A>(_:)(v41);
    outlined consume of Data._Representation(v54, v27);

    LODWORD(v8) = v49;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void _s15SwiftTLSLibrary16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(uint64_t *a1)
{
  type metadata accessor for TLSRecordHandler(0);
  ByteBuffer.writeBuffer(_:)(a1);
  if (TLSRecordHandler.handshakeComplete.getter())
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF();
  }
}

uint64_t TLSRecordHandler.alertRead.setter(int a1)
{
  result = type metadata accessor for TLSRecordHandler(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.setter(int a1)
{
  result = type metadata accessor for TLSRecordHandler(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t TLSRecordHandler.closureAlertRead.setter(char a1)
{
  result = type metadata accessor for TLSRecordHandler(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t TLSRecordHandler.tlsError.getter()
{
  v1 = v0 + *(type metadata accessor for TLSRecordHandler(0) + 64);
  v2 = *v1;
  outlined copy of TLSError?(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t TLSRecordHandler.tlsError.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for TLSRecordHandler(0) + 64);
  result = outlined consume of TLSError?(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t TLSRecordHandler.alertSentOrReceived.getter()
{
  v1 = type metadata accessor for TLSRecordHandler(0);
  if (*(v0 + *(v1 + 52) + 2) == 1)
  {
    v2 = *(v0 + *(v1 + 56) + 2) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

unint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(__int16 a1)
{
  v3 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - v9;
  v11 = type metadata accessor for TLSRecordHandler(0);
  v12 = v1 + *(v11 + 56);
  if (*(v12 + 2) == 1)
  {
    *v12 = a1;
    *(v12 + 2) = 0;
    v55 = v2;
    v56 = v11;
    if (a1 != 1 || HIBYTE(a1))
    {
      v54 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, logger);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v60 = v23;
        *v22 = 136315138;
        v24 = Alert.description.getter(a1);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v60);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_1B25F5000, v20, v21, "write alert %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x1B274ECF0](v23, -1, -1);
        MEMORY[0x1B274ECF0](v22, -1, -1);
      }

      v3 = v54;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = v3;
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B25F5000, v14, v15, "write alert close notify", v17, 2u);
        v18 = v17;
        v3 = v16;
        MEMORY[0x1B274ECF0](v18, -1, -1);
      }
    }

    v64 = xmmword_1B26C6130;
    v65 = 0;
    LOBYTE(v57) = a1;
    v27 = MEMORY[0x1E69E6290];
    v28 = MEMORY[0x1E6969DF8];
    v62 = MEMORY[0x1E69E6290];
    v63 = MEMORY[0x1E6969DF8];
    v60 = &v57;
    v61 = &v57 + 1;
    __swift_project_boxed_opaque_existential_0(&v60, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v60);
    LOBYTE(v57) = HIBYTE(a1);
    v62 = v27;
    v63 = v28;
    v60 = &v57;
    v61 = &v57 + 1;
    __swift_project_boxed_opaque_existential_0(&v60, v27);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v60);
    v29 = *(v56 + 28);
    outlined init with copy of EncryptionLevel?(v3 + v29, v10);
    v30 = type metadata accessor for EncryptionLevel(0);
    v31 = *(*(v30 - 8) + 48);
    LODWORD(v27) = v31(v10, 1, v30);
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v32 = v27 == 1;
    v33 = v55;
    if (!v32)
    {
      outlined init with copy of EncryptionLevel?(v3 + v29, v8);
      v37 = v31(v8, 1, v30);
      if (v37 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v8, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
        goto LABEL_25;
      }

      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of EncryptionLevel(v8, type metadata accessor for EncryptionLevel);
LABEL_25:
        v35 = *(&v64 + 1);
        v34 = v64;
        v39 = *(&v64 + 1) >> 62;
        if ((*(&v64 + 1) >> 62) > 1)
        {
          if (v39 != 2)
          {
            goto LABEL_37;
          }

          v41 = *(v64 + 24);
        }

        else
        {
          if (!v39)
          {
            v40 = v3;
LABEL_38:
            v47 = Data._Representation.subscript.getter();
            v49 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v47, v48);
            v1 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v49, 21, 0);
            if (v33)
            {
              outlined consume of Data._Representation(v34, v35);

              return v1;
            }

            v58 = &type metadata for TLSCiphertext;
            v59 = &protocol witness table for TLSCiphertext;
            *&v57 = v1;
            outlined init with take of ContiguousBytes(&v57, &v60);
            v45 = v62;
            v46 = v63;
            v3 = v40;
LABEL_41:
            v50 = __swift_project_boxed_opaque_existential_0(&v60, v45);
            v1 = v3 + *(v56 + 48);
            ByteBuffer.writeRecord<A>(_:)(v50, v45, v46);
            outlined consume of Data._Representation(v34, v35);
            __swift_destroy_boxed_opaque_existential_0(&v60);
            return v1;
          }

          v41 = v64 >> 32;
        }

        v40 = v3;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_37:
        v40 = v3;
        goto LABEL_38;
      }

      v52 = type metadata accessor for SymmetricKey();
      (*(*(v52 - 8) + 8))(v8, v52);
    }

    v35 = *(&v64 + 1);
    v34 = v64;
    v36 = *(&v64 + 1) >> 62;
    if ((*(&v64 + 1) >> 62) > 1)
    {
      if (v36 != 2)
      {
LABEL_33:
        v42 = Data._Representation.subscript.getter();
        v44 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v42, v43);
        v45 = &type metadata for TLSPlaintext;
        v46 = &protocol witness table for TLSPlaintext;
        v62 = &type metadata for TLSPlaintext;
        v63 = &protocol witness table for TLSPlaintext;
        LOWORD(v60) = 789;
        BYTE2(v60) = 3;
        v61 = v44;
        goto LABEL_41;
      }

      v38 = *(v64 + 24);
    }

    else
    {
      if (!v36)
      {
        goto LABEL_33;
      }

      v38 = v64 >> 32;
    }

    if (v38 < 0)
    {
      __break(1u);
    }

    goto LABEL_33;
  }

  return v1;
}

NSObject *_s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF(uint64_t a1)
{
  v3 = v1;

  v5 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v4);
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v5 + 16);
    }
  }

  else
  {
    v9 = v5;
    if (!v8)
    {
      v9 = 0;
    }
  }

  v31 = v5;
  v32 = v7;
  v33 = v9;
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v11 = &v31;
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if (((v10 | v12) & 0x100) != 0)
  {
    goto LABEL_22;
  }

  if (v10 != 1 || v12)
  {
    v20 = v12;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v11 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      v25 = v10 | (v20 << 8);
      v26 = Alert.description.getter(v25);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v34);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B25F5000, v11, v22, "read alert %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B274ECF0](v24, -1, -1);
      MEMORY[0x1B274ECF0](v23, -1, -1);
    }

    else
    {

      v25 = v10 | (v20 << 8);
    }

    v29 = v3 + *(type metadata accessor for TLSRecordHandler(0) + 52);
    *v29 = v25;
    v29[2] = 0;
    goto LABEL_22;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B25F5000, v14, v15, "read alert close notify", v16, 2u);
    MEMORY[0x1B274ECF0](v16, -1, -1);
  }

  v17 = type metadata accessor for TLSRecordHandler(0);
  v18 = v3 + *(v17 + 52);
  *v18 = 1;
  v18[2] = 0;
  *(&v3->isa + *(v17 + 60)) = 1;
  v11 = v3;
  v19 = _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(1);
  if (!v2)
  {
LABEL_22:
    outlined consume of Data._Representation(v31, v32);
    return v11;
  }

  v11 = v19;
  outlined consume of Data._Representation(v31, v32);
  return v11;
}

uint64_t TLSRecordHandler.tlsErrorToAlert(error:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 80;
    }

    else
    {
      v3 = byte_1B26CBF2A[a1];
    }
  }

  else
  {
    v3 = 50;
  }

  return (v3 << 8) | 2u;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(uint64_t *a1)
{
  v4 = v1;
  v6 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TLSRecordHandler(0);
  if (*(v4 + v9[13] + 2) == 1 && (*(v4 + v9[14] + 2) & 1) != 0)
  {
    v48[2] = v6;
    v49 = v9;
    v10 = *a1;
    v3 = a1[1];
    v52 = a1[2];
    outlined copy of Data._Representation(v10, v3);
    v11 = _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKFyAGzAIYKXEfU_(a1, v4);
    if (v2)
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v10;
      a1[1] = v3;
      a1[2] = v52;
      *&v50 = v14;
      *(&v50 + 1) = v15;
      v51 = v16;
      v52 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v17 = v15;
      v3 = v14;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      v19 = __swift_project_value_buffer(v18, logger);
      outlined copy of TLSError(v14, v15, v16);
      v48[1] = v19;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      outlined consume of TLSError(v14, v15, v16);
      v22 = v16;
      if (os_log_type_enabled(v20, v21))
      {
        v23 = v17;
        v24 = swift_slowAlloc();
        v48[0] = swift_slowAlloc();
        *v24 = 138412290;
        swift_allocError();
        *v25 = v14;
        *(v25 + 8) = v23;
        *(v25 + 16) = v22;
        outlined copy of TLSError(v14, v23, v22);
        v3 = v14;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        v27 = v48[0];
        *v48[0] = v26;
        _os_log_impl(&dword_1B25F5000, v20, v21, "error processing network data: %@", v24, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v27, -1, -1);
        v28 = v24;
        v17 = v23;
        MEMORY[0x1B274ECF0](v28, -1, -1);
      }

      if (TLSRecordHandler.handshakeStarted.getter())
      {
        v29 = TLSRecordHandler.tlsErrorToAlert(error:)(v3, v17, v22);
        if (v29 > 0xFFu || v29 != 1)
        {
          v30 = v4 + v49[16];
          v31 = *v30;
          v32 = *(v30 + 8);
          v33 = v3;
          v34 = *(v30 + 16);
          v35 = v29;
          outlined copy of TLSError(v33, v17, v22);
          v36 = v34;
          v3 = v33;
          outlined consume of TLSError?(v31, v32, v36);
          v29 = v35;
          *v30 = v33;
          *(v30 + 8) = v17;
          *(v30 + 16) = v22;
        }

        _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(v29);
        *&v50 = v3;
        *(&v50 + 1) = v17;
        v51 = v22;
        swift_willThrowTypedImpl();
      }

      else
      {
        outlined consume of TLSError(v3, v17, v22);
        outlined init with copy of TLSHandshakeStateMachine(v4, v8, type metadata accessor for TLSHandshakeStateMachine);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of EncryptionLevel(v8, type metadata accessor for TLSHandshakeStateMachine);
        if (EnumCaseMultiPayload == 1)
        {
          v40 = ", resumptionCount: ";
        }

        else
        {
          v40 = "alid Client Hello";
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          if (EnumCaseMultiPayload == 1)
          {
            v43 = 0xD000000000000041;
          }

          else
          {
            v43 = 0xD000000000000065;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v50 = v45;
          *v44 = 136315138;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v40 | 0x8000000000000000, &v50);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_1B25F5000, v41, v42, "TLS error occurred from processing network data before handshake started: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x1B274ECF0](v45, -1, -1);
          MEMORY[0x1B274ECF0](v44, -1, -1);
        }

        else
        {
        }

        v47 = v4 + v49[16];
        outlined consume of TLSError?(*v47, *(v47 + 8), *(v47 + 16));
        *v47 = xmmword_1B26CBED0;
        *(v47 + 16) = 2;
        v50 = xmmword_1B26CBED0;
        v51 = 2;
        swift_willThrowTypedImpl();
        return 37;
      }
    }

    else
    {
      outlined consume of Data._Representation(v10, v3);
    }
  }

  else
  {
    v37 = (v4 + v9[5]);
    outlined consume of ByteBuffer?(*v37, v37[1]);
    *v37 = xmmword_1B26C5EF0;
    v37[2] = 0;
  }

  return v3;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKFyAGzAIYKXEfU_(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  v88 = type metadata accessor for ServerHandshakeState(0);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v76 - v10;
  v87 = type metadata accessor for ServerHandshakeStateMachine(0);
  v11 = MEMORY[0x1EEE9AC00](v87);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v76 - v14;
  v86 = type metadata accessor for HandshakeState(0);
  v15 = MEMORY[0x1EEE9AC00](v86);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v76 - v17;
  v85 = type metadata accessor for HandshakeStateMachine(0);
  v18 = MEMORY[0x1EEE9AC00](v85);
  v80 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v76 - v20;
  v91 = type metadata accessor for TLSHandshakeStateMachine(0);
  v21 = MEMORY[0x1EEE9AC00](v91);
  v90 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v76 - v23;
  v24 = type metadata accessor for TLSRecordHandler(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v89 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - v28;
  v92 = v27;
  v30 = (a2 + *(v27 + 20));
  HandshakeMessageParser.appendBytes(_:)(a1);
  v31 = v30[1];
  if (v31 >> 60 == 15)
  {
    return v4;
  }

  v93 = v13;
  v84 = v29;
  while (1)
  {
    v32 = *v30;
    v33 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v32 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = BYTE6(v31);
      v35 = v32 >> 32;
      if (v33)
      {
        v34 = v35;
      }
    }

    v36 = v30[2];
    v37 = __OFSUB__(v34, v36);
    v38 = v34 - v36;
    if (v37)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v38 < 1)
    {
      return v4;
    }

    v39 = _s15SwiftTLSLibrary16TLSRecordHandlerV14parseOneRecord33_3A7BCC859838BE1761A4636F58F247A0LLAA0C0OSgyAA8TLSErrorOYKF();
    v4 = v39;
    v5 = v40;
    v3 = v41;
    if (v2 || v41 == -1)
    {
      return v4;
    }

    if (v41)
    {
      break;
    }

    if ((v39 - 21) >= 2u)
    {
      if (one-time initialization token for logger == -1)
      {
LABEL_41:
        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, logger);
        outlined copy of TLSRecord(v4, v5, 0);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        outlined consume of TLSRecord?(v4, v5, v3);
        if (!os_log_type_enabled(v61, v62))
        {
          goto LABEL_64;
        }

        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v94 = v64;
        *v63 = 136315138;
        v65 = ContentType.description.getter(v4);
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v94);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_1B25F5000, v61, v62, "got a plaintext record with type not handshake or alert: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1B274ECF0](v64, -1, -1);
        goto LABEL_63;
      }

LABEL_67:
      swift_once();
      goto LABEL_41;
    }

    v96 = v40;
    if (v39 == 21)
    {
      v49 = v89;
      outlined init with copy of TLSHandshakeStateMachine(a2, v89, type metadata accessor for TLSRecordHandler);
      v50 = v90;
      outlined init with copy of TLSHandshakeStateMachine(v49, v90, type metadata accessor for TLSHandshakeStateMachine);
      outlined copy of TLSRecord(v4, v5, 0);
      outlined destroy of EncryptionLevel(v49, type metadata accessor for TLSRecordHandler);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v50, v13, type metadata accessor for ServerHandshakeStateMachine);
        v51 = v82;
        outlined init with copy of TLSHandshakeStateMachine(&v13[*(v87 + 24)], v82, type metadata accessor for ServerHandshakeState);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of EncryptionLevel(v13, type metadata accessor for ServerHandshakeStateMachine);
          outlined destroy of EncryptionLevel(v51, type metadata accessor for ServerHandshakeState);
          v29 = v84;
        }

        else
        {
          v58 = v51;
          v59 = v93[24];
          outlined destroy of EncryptionLevel(v93, type metadata accessor for ServerHandshakeStateMachine);
          outlined destroy of EncryptionLevel(v58, type metadata accessor for ServerHandshakeState);
          v29 = v84;
          if ((v59 & 1) == 0)
          {
LABEL_43:
            outlined consume of TLSRecord?(v4, v5, v3);
            v94 = xmmword_1B26CBEE0;
            v95 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of TLSRecord?(v4, v5, v3);
            return 36;
          }
        }
      }

      else
      {
        v52 = v50;
        v53 = v80;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v52, v80, type metadata accessor for HandshakeStateMachine);
        v54 = v81;
        outlined init with copy of TLSHandshakeStateMachine(v53 + *(v85 + 24), v81, type metadata accessor for HandshakeState);
        outlined destroy of EncryptionLevel(v53, type metadata accessor for HandshakeStateMachine);
        LODWORD(v53) = swift_getEnumCaseMultiPayload();
        outlined destroy of EncryptionLevel(v54, type metadata accessor for HandshakeState);
        v29 = v84;
        if (!v53)
        {
          goto LABEL_43;
        }
      }

      _s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF(v5);
    }

    else
    {
      outlined copy of TLSRecord(v39, v40, 0);
      _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(&v96);
    }

    outlined consume of TLSRecord?(v4, v5, v3);
    outlined consume of TLSRecord?(v4, v5, v3);
LABEL_6:
    v31 = v30[1];
    v2 = 0;
    v13 = v93;
    if (v31 >> 60 == 15)
    {
      return v4;
    }
  }

  v42 = _s15SwiftTLSLibrary18TLSRecordProtectorV9deprotect10ciphertextAA17DeprotectedRecordVAA13TLSCiphertextV_tAA8TLSErrorOYKF(v39);
  v44 = v42;
  v96 = v42;
  if (v43 == 21)
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF(v42);
    goto LABEL_37;
  }

  if (v43 == 22)
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(&v96);
    goto LABEL_37;
  }

  if (v43 != 23)
  {
    v68 = v43;

    if (v68)
    {
      if (v68 == 20)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, logger);
        v61 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v70))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          v71 = "got an encrypted change cipher spec message";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, logger);
      v61 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v61, v70))
      {
        goto LABEL_64;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      v71 = "got an encrypted record with an unrecognized content type";
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, logger);
      v61 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v61, v70))
      {
        goto LABEL_64;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      v71 = "got an encrypted record with an invalid content type";
    }

LABEL_62:
    _os_log_impl(&dword_1B25F5000, v61, v70, v71, v63, 2u);
LABEL_63:
    MEMORY[0x1B274ECF0](v63, -1, -1);
    goto LABEL_64;
  }

  outlined init with copy of TLSHandshakeStateMachine(a2, v29, type metadata accessor for TLSRecordHandler);
  v45 = v83;
  outlined init with copy of TLSHandshakeStateMachine(v29, v83, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v45;
    v47 = v78;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v46, v78, type metadata accessor for ServerHandshakeStateMachine);
    v48 = v79;
    outlined init with copy of TLSHandshakeStateMachine(v47 + *(v87 + 24), v79, type metadata accessor for ServerHandshakeState);
    outlined destroy of EncryptionLevel(v47, type metadata accessor for ServerHandshakeStateMachine);
    LODWORD(v47) = swift_getEnumCaseMultiPayload();
    outlined destroy of EncryptionLevel(v48, type metadata accessor for ServerHandshakeState);
    v29 = v84;
    outlined destroy of EncryptionLevel(v84, type metadata accessor for TLSRecordHandler);
    if (v47 <= 6)
    {
      goto LABEL_50;
    }

LABEL_35:
    if (*(v44 + 16))
    {
      Data._Representation.append(contentsOf:)();
    }

LABEL_37:
    outlined consume of TLSRecord?(v4, v5, v3);

    goto LABEL_6;
  }

  v55 = v45;
  v56 = v76;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v55, v76, type metadata accessor for HandshakeStateMachine);
  v57 = v77;
  outlined init with copy of TLSHandshakeStateMachine(v56 + *(v85 + 24), v77, type metadata accessor for HandshakeState);
  outlined destroy of EncryptionLevel(v56, type metadata accessor for HandshakeStateMachine);
  LODWORD(v56) = swift_getEnumCaseMultiPayload();
  outlined destroy of EncryptionLevel(v57, type metadata accessor for HandshakeState);
  v29 = v84;
  outlined destroy of EncryptionLevel(v84, type metadata accessor for TLSRecordHandler);
  if (v56 >= 6)
  {
    goto LABEL_35;
  }

LABEL_50:

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, logger);
  v61 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v70))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v71 = "got application data before handshake complete";
    goto LABEL_62;
  }

LABEL_64:

  v94 = xmmword_1B26C6430;
  v95 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of TLSRecord?(v4, v5, v3);
  return 4;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
      v14 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void type metadata completion function for TLSRecordHandler(uint64_t a1)
{
  type metadata accessor for TLSHandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TLSRecordProtector(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EncryptionLevel?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for TLSError?, &type metadata for TLSError);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for EncryptionLevel?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EncryptionLevel?)
  {
    type metadata accessor for EncryptionLevel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EncryptionLevel?);
    }
  }
}

uint64_t outlined destroy of EncryptionLevel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PartialHandshakeResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TLSHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static Extension.ApplicationLayerProtocolNegotiation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, __n128 a7, __n128 a8, __n128 a9)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a4);
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Extension.ApplicationLayerProtocolNegotiation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1B274DB20](1);

    return String.hash(into:)();
  }

  else
  {
    MEMORY[0x1B274DB20](0, a2, a3);
    v6 = *(a2 + 16);
    result = MEMORY[0x1B274DB20](v6);
    if (v6)
    {
      v7 = a2 + 40;
      do
      {

        String.hash(into:)();

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

Swift::Int Extension.ApplicationLayerProtocolNegotiation.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v5 = *(a1 + 16);
    MEMORY[0x1B274DB20](v5);
    if (v5)
    {
      v6 = a1 + 40;
      do
      {

        String.hash(into:)();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ApplicationLayerProtocolNegotiation(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Extension.ApplicationLayerProtocolNegotiation.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.ApplicationLayerProtocolNegotiation(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (v6 == *a2 && v7 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation()
{
  result = lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation;
  if (!lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation);
  }

  return result;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _StringGuts.copyUTF8(into:)();
  if ((v5 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t static HashFunction.zeroHash.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of HashFunction.init()();
  dispatch thunk of HashFunction.finalize()();
  return (*(v3 + 8))(v5, a1);
}

uint64_t static Extension.ServerName.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    return a5 >> 60 == 15;
  }

  if (a5 >> 60 == 15)
  {
    return 0;
  }

  return specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a4, a5, a6);
}

void Extension.ServerName.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    MEMORY[0x1B274DB20](1, a2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v8 = 0;
      if (v7 == 2)
      {
        v8 = *(a2 + 24);
      }
    }

    else if (v7)
    {
      v8 = a2 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }

    if (v8 < a4)
    {
      __break(1u);
    }

    else
    {
      v9 = Data._Representation.subscript.getter();
      v11 = v10;
      Data.hash(into:)();

      outlined consume of Data._Representation(v9, v11);
    }
  }
}

uint64_t Extension.ServerName.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2 >> 60 == 15)
  {
    MEMORY[0x1B274DB20](1);
    return Hasher._finalize()();
  }

  result = MEMORY[0x1B274DB20](0);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 >= a3)
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ServerName(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Extension.ServerName.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.ServerName(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return specialized static ByteBuffer.== infix(_:_:)(*a1, v3, a1[2], *a2, v4, a2[2]);
  }
}

void _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFA2CzAMYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v6 = 0xF000000000000000;
  while (1)
  {
    v45 = v6;
    v44 = v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(v7 + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = v7 >> 32;
    }

    else
    {
      v11 = BYTE6(v8);
    }

    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (v12)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
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
    }

    if (v13 < 1)
    {
      if (v6 >> 60 != 15)
      {
        *a3 = v4;
        a3[1] = v6;
        a3[2] = v5;
        return;
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_86;
    }

    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_93;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (*(v7 + 24) < v14)
        {
          goto LABEL_90;
        }
      }

      else if (v14 > 0)
      {
        goto LABEL_90;
      }
    }

    else if (v10)
    {
      if (v7 >> 32 < v14)
      {
        goto LABEL_90;
      }
    }

    else if (BYTE6(v8) < v14)
    {
      goto LABEL_90;
    }

    v46 = *a1;
    v47 = a1[1];
    if (v14 < v9)
    {
      goto LABEL_94;
    }

    outlined copy of Data._Representation(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v46, v47);
    a1[2] = v14;
    v15 = *a1;
    v16 = a1[1];
    v17 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_95;
    }

    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      break;
    }

    if (v19)
    {
      v20 = v15 >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

LABEL_33:
    if (v20 < v17)
    {
      goto LABEL_88;
    }

LABEL_36:
    if (v17 < v14)
    {
      goto LABEL_96;
    }

    outlined copy of Data._Representation(v15, v16);
    outlined copy of Data._Representation(v15, v16);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v15, v16);
    v21 = bswap32(0) >> 16;
    a1[2] = v17;
    v22 = v17 + v21;
    if (__OFADD__(v17, v21))
    {
      goto LABEL_97;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v23 >> 32;
      }

      else
      {
        v26 = BYTE6(v24);
      }

LABEL_44:
      if (v26 < v22)
      {
        goto LABEL_89;
      }

      goto LABEL_47;
    }

    if (v25 == 2)
    {
      v26 = *(v23 + 24);
      goto LABEL_44;
    }

    if (v22 > 0)
    {
      goto LABEL_89;
    }

LABEL_47:
    if (v22 < v17)
    {
      goto LABEL_98;
    }

    v27 = Data._Representation.subscript.getter();
    v29 = v27;
    a1[2] = v22;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v27 = *(v27 + 16);
        v31 = *(v29 + 24);
      }

      else
      {
        v27 = 0;
        v31 = 0;
      }
    }

    else if (v30)
    {
      v27 = v27;
      v31 = v29 >> 32;
    }

    else
    {
      v27 = 0;
      v31 = BYTE6(v28);
    }

    v12 = __OFSUB__(v31, v27);
    v32 = v31 - v27;
    if (v12)
    {
      goto LABEL_99;
    }

    v33 = v27 + v32;
    if (__OFADD__(v27, v32))
    {
      goto LABEL_100;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        if (v33 > 0)
        {
          goto LABEL_104;
        }

        goto LABEL_66;
      }

      v34 = *(v29 + 24);
    }

    else if (v30)
    {
      v34 = v29 >> 32;
    }

    else
    {
      v34 = BYTE6(v28);
    }

    if (v34 < v33)
    {
      goto LABEL_103;
    }

LABEL_66:
    if (v33 < v27)
    {
      goto LABEL_101;
    }

    v40 = v29;
    v41 = v28;
    v35 = Data._Representation.subscript.getter();
    v4 = v35;
    v6 = v36;
    v5 = 0;
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v5 = *(v35 + 16);
      }
    }

    else if (v37)
    {
      v5 = v35;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = *(v40 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v30)
    {
      v38 = v40 >> 32;
    }

    else
    {
      v38 = BYTE6(v41);
    }

    if (__OFSUB__(v38, v33))
    {
      goto LABEL_102;
    }

    if (v38 != v33)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v4, v6);
      outlined consume of Data._Representation(v40, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v44, v45);
      v39 = 1;
      goto LABEL_91;
    }

    outlined consume of Data._Representation(v40, v41);
    outlined consume of Data._Representation(v15, v16);
    if (v45 >> 60 != 15)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v4, v6);
      outlined consume of ByteBuffer?(v44, v45);
LABEL_86:
      v39 = 5;
      goto LABEL_91;
    }
  }

  if (v19 == 2)
  {
    v20 = *(v15 + 24);
    goto LABEL_33;
  }

  if (v17 < 1)
  {
    goto LABEL_36;
  }

LABEL_88:
  outlined copy of Data._Representation(v15, v16);
  v23 = *a1;
  v24 = a1[1];
LABEL_89:
  outlined consume of Data._Representation(v23, v24);
  *a1 = v15;
  a1[1] = v16;
  a1[2] = v14;
LABEL_90:
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v44, v6);
  v39 = 0;
LABEL_91:
  *a2 = v39;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerName and conformance Extension.ServerName()
{
  result = lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName;
  if (!lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerName.Names and conformance Extension.ServerName.Names()
{
  result = lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names;
  if (!lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension.ServerName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Extension.ServerName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Extension.ServerName(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t ByteBuffer.writeKeyShare(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = (a3 >> 60) & 3;
  if (!v5)
  {
    v8 = *v4;
    v9 = v4[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v14 = *(v8 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v12 = BYTE6(v9);
      v13 = v8 >> 32;
      if (v10)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    v17 = 0;
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    v15 = specialized Sequence.reduce<A>(into:_:)(0, a1);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v16 = v15;
      if (!(v15 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v15, v14);
        return v16 + 2;
      }
    }

    __break(1u);
  }

  if (v5 == 1)
  {
    v6 = a3 & 0xCFFFFFFFFFFFFFFFLL;

    return ByteBuffer.writeKeyShareEntry(_:)(a1, a2, v6, a4);
  }

  else
  {
    v17 = bswap32(a1) >> 16;
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    return 2;
  }
}

uint64_t Extension.KeyShare.KeyShareEntry.description.getter(unsigned __int16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(47);

  v8 = NamedGroup.description.getter(a1);
  MEMORY[0x1B274D610](v8);

  result = MEMORY[0x1B274D610](0x63784579656B202CLL, 0xEF203A65676E6168);
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a2 + 24);
    }
  }

  else
  {
    v11 = BYTE6(a3);
    if (v10)
    {
      v11 = a2 >> 32;
    }
  }

  if (__OFSUB__(v11, a4))
  {
    __break(1u);
  }

  else
  {
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v12);

    MEMORY[0x1B274D610](0x29736574796220, 0xE700000000000000);
    return 0xD000000000000015;
  }

  return result;
}

void Extension.KeyShare.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = (a4 >> 60) & 3;
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x1B274DB20](1);
      Hasher._combine(_:)(v5);
      v10 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        v12 = a5;
        if (v10 == 2)
        {
          v11 = *(a3 + 24);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        if (v10)
        {
          v11 = a3 >> 32;
        }

        else
        {
          v11 = BYTE6(a4);
        }

        v12 = a5;
      }

      if (v11 < v12)
      {
        __break(1u);
      }

      else
      {
        v13 = Data._Representation.subscript.getter();
        v15 = v14;
        Data.hash(into:)();

        outlined consume of Data._Representation(v13, v15);
      }
    }

    else
    {
      MEMORY[0x1B274DB20](2, a2, a3);
      Hasher._combine(_:)(v5);
    }
  }

  else
  {
    MEMORY[0x1B274DB20](0, a2, a3);

    specialized Array<A>.hash(into:)();
  }
}

Swift::Int Extension.KeyShare.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.KeyShare()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.KeyShare(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

uint64_t ByteBuffer.readKeyShareEntry()()
{
  v2 = v0;
  v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = v3;
  v6 = *v0;
  v5 = *(v0 + 1);
  v7 = *(v0 + 2);
  outlined copy of Data._Representation(*v0, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, *(v0 + 1));
    result = 0;
    *v0 = v6;
    *(v0 + 1) = v5;
    *(v0 + 2) = v7;
    return result;
  }

  *&v21 = v9;
  *(&v21 + 1) = v10;
  v22 = v11;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  v15 = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_26;
  }

  v0 = &v21;
  v15 = ByteBuffer.readSlice(length:)(v15);
  if (v10 >> 60 == 15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v0 = v15;
  v1 = v10;
  v10 = *(&v21 + 1);
  v15 = v21;
  v16 = *(&v21 + 1) >> 62;
  if ((*(&v21 + 1) >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v21 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v21 >> 32;
  }

  else
  {
    v17 = BYTE14(v21);
  }

  if (__OFSUB__(v17, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 == v22)
  {
    outlined consume of Data._Representation(v21, *(&v21 + 1));
    outlined consume of Data._Representation(v6, v5);
    return v4;
  }

LABEL_28:
  v18 = v15;
  v19 = v10;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v0, v1);
  outlined consume of Data._Representation(v18, v19);
  outlined consume of Data._Representation(*v2, v2[1]);
  *v2 = v6;
  v2[1] = v5;
  v2[2] = v7;
  v21 = xmmword_1B26C66C0;
  LOBYTE(v22) = 2;
  swift_willThrowTypedImpl();
  swift_allocError();
  *v20 = xmmword_1B26C66C0;
  *(v20 + 16) = 2;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKFSayAJ0fG5EntryVGACzXEfU_(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = v9 - v5;
  if (__OFSUB__(v9, v5))
  {
    goto LABEL_100;
  }

  if (v10 >= 0)
  {
    v11 = v9 - v5;
  }

  else
  {
    v11 = v10 + 31;
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v11 >> 5) & ~(v11 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v13 = v2[1];
  v51 = *v2;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
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
  }

  v15 = v12;
  v16 = v13 >> 62;
  v52 = BYTE6(v13);
  v53 = v13 >> 62;
  v54 = v2;
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v51 + 24) < v14)
        {
          goto LABEL_87;
        }
      }

      else if (v14 >= 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v17 = v52;
      if (v16)
      {
        v17 = v51 >> 32;
      }

      if (v17 < v14)
      {
        goto LABEL_87;
      }
    }

    v56 = *v2;
    v57 = v2[1];
    if (v14 < v5)
    {
      goto LABEL_89;
    }

    v55 = v15;
    outlined copy of Data._Representation(*v2, v2[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v56, v57);
    v2[2] = v14;
    v18 = *v2;
    v19 = v2[1];
    v20 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_90;
    }

    v21 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      break;
    }

    if (v21)
    {
      v22 = v18 >> 32;
    }

    else
    {
      v22 = BYTE6(v19);
    }

LABEL_31:
    if (v22 < v20)
    {
      goto LABEL_85;
    }

LABEL_34:
    if (v20 < v14)
    {
      goto LABEL_91;
    }

    outlined copy of Data._Representation(v18, v19);
    outlined copy of Data._Representation(v18, v19);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v18, v19);
    v23 = bswap32(0) >> 16;
    v2[2] = v20;
    v5 = v20 + v23;
    if (__OFADD__(v20, v23))
    {
      goto LABEL_92;
    }

    v24 = *v2;
    v25 = v2[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        v27 = v24 >> 32;
      }

      else
      {
        v27 = BYTE6(v25);
      }

LABEL_42:
      if (v27 < v5)
      {
        goto LABEL_86;
      }

      goto LABEL_45;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_42;
    }

    if (v5 > 0)
    {
      goto LABEL_86;
    }

LABEL_45:
    if (v5 < v20)
    {
      goto LABEL_93;
    }

    v28 = Data._Representation.subscript.getter();
    v30 = v28;
    v31 = v29;
    v2[2] = v5;
    v32 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v32 == 2)
      {
        v28 = *(v28 + 16);
        v33 = *(v30 + 24);
      }

      else
      {
        v28 = 0;
        v33 = 0;
      }
    }

    else if (v32)
    {
      v28 = v28;
      v33 = v30 >> 32;
    }

    else
    {
      v28 = 0;
      v33 = BYTE6(v29);
    }

    v34 = __OFSUB__(v33, v28);
    v35 = v33 - v28;
    if (v34)
    {
      goto LABEL_94;
    }

    v36 = v28 + v35;
    if (__OFADD__(v28, v35))
    {
      goto LABEL_95;
    }

    if (v32 <= 1)
    {
      if (v32)
      {
        v37 = v30 >> 32;
      }

      else
      {
        v37 = BYTE6(v29);
      }

LABEL_61:
      if (v37 < v36)
      {
        goto LABEL_98;
      }

      goto LABEL_64;
    }

    if (v32 == 2)
    {
      v37 = *(v30 + 24);
      goto LABEL_61;
    }

    if (v36 > 0)
    {
      goto LABEL_99;
    }

LABEL_64:
    if (v36 < v28)
    {
      goto LABEL_96;
    }

    v38 = Data._Representation.subscript.getter();
    v40 = v39;
    v41 = 0;
    v42 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v42 == 2)
      {
        v41 = *(v38 + 16);
      }
    }

    else if (v42)
    {
      v41 = v38;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v43 = *(v30 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v32)
    {
      v43 = v30 >> 32;
    }

    else
    {
      v43 = BYTE6(v31);
    }

    if (__OFSUB__(v43, v36))
    {
      goto LABEL_97;
    }

    v44 = v38;
    if (v43 != v36)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v44, v40);
      outlined consume of Data._Representation(v30, v31);
      outlined consume of Data._Representation(*v54, v54[1]);
      *v54 = v18;
      v54[1] = v19;
      v54[2] = v14;
      swift_willThrowTypedImpl();
      swift_allocError();
      *v49 = xmmword_1B26C66C0;
      *(v49 + 16) = 2;
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v45 = v41;
    outlined consume of Data._Representation(v30, v31);
    outlined consume of Data._Representation(v18, v19);
    v15 = v55;
    v47 = *(v55 + 2);
    v46 = *(v55 + 3);
    if (v47 >= v46 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v55);
    }

    *(v15 + 2) = v47 + 1;
    v48 = &v15[32 * v47];
    *(v48 + 16) = bswap32(0) >> 16;
    *(v48 + 5) = v44;
    *(v48 + 6) = v40;
    *(v48 + 7) = v45;
    v14 = v5 + 2;
    LODWORD(v16) = v53;
    v2 = v54;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_88;
    }
  }

  if (v21 == 2)
  {
    v22 = *(v18 + 24);
    goto LABEL_31;
  }

  if (v20 < 1)
  {
    goto LABEL_34;
  }

LABEL_85:
  outlined copy of Data._Representation(v18, v19);
  v24 = *v2;
  v25 = v2[1];
LABEL_86:
  outlined consume of Data._Representation(v24, v25);
  *v2 = v18;
  v2[1] = v19;
  v2[2] = v14;
  v15 = v55;
LABEL_87:
  *a2 = v15;
}

uint64_t specialized static Extension.KeyShare.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a3 >> 60) & 3;
  if (v9)
  {
    if (v9 == 1)
    {
      return (a7 & 0x3000000000000000) == 0x1000000000000000 && a1 == a5 && (specialized static ByteBuffer.== infix(_:_:)(a2, a3 & 0xCFFFFFFFFFFFFFFFLL, a4, a6, a7 & 0xCFFFFFFFFFFFFFFFLL, a8) & 1) != 0;
    }

    return (a7 & 0x3000000000000000) == 0x2000000000000000 && a1 == a5;
  }

  else
  {
    if ((a7 & 0x3000000000000000) != 0)
    {
      return 0;
    }

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(a1, a5);
  }
}

unint64_t lazy protocol witness table accessor for type Extension.KeyShare and conformance Extension.KeyShare()
{
  result = lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare;
  if (!lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry()
{
  result = lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry;
  if (!lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension.KeyShare(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.KeyShare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_1B26CC2B0;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21ExportedAuthenticatorV13authenticator21handshakeStateMachineAcA10ByteBufferVz_AA09HandshakegH0VtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1B26C5EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HandshakeMessageParser.appendBytes(_:)(a1);
  v5 = type metadata accessor for ExportedAuthenticator(0);
  return _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(a2, a3 + *(v5 + 24), type metadata accessor for HandshakeStateMachine);
}

uint64_t type metadata accessor for ExportedAuthenticator(uint64_t a1)
{
  result = type metadata singleton initialization cache for ExportedAuthenticator;
  if (!type metadata singleton initialization cache for ExportedAuthenticator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(uint64_t (*a1)(void), uint64_t a2)
{
  v217 = a1;
  v218 = a2;
  v4 = type metadata accessor for P256.Signing.ECDSASignature();
  v210 = *(v4 - 8);
  v211 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v213 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v219 = &v192 - v7;
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v9 = *(v8 - 8);
  v215 = v8;
  v216 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v214 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v12 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v220 = type metadata accessor for HandshakeState(0);
  v13 = MEMORY[0x1EEE9AC00](v220);
  v212 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v192 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v192 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v192 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v192 - v27;
  v29 = type metadata accessor for SymmetricKey();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  if (v2[1] >> 60 == 15)
  {
    goto LABEL_2;
  }

  v206 = v34;
  v207 = &v192 - v32;
  v208 = v33;
  v209 = v31;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v304, &v305);
  if (v3)
  {
    return v304;
  }

  v205 = 0;
  v292 = v311;
  v293 = v312;
  v288 = v307;
  v289 = v308;
  v291 = v310;
  v290 = v309;
  v287 = v306;
  v286 = v305;
  v301 = v311;
  v302 = v312;
  v297 = v307;
  v298 = v308;
  v300 = v310;
  v299 = v309;
  v294 = v313;
  v303 = v313;
  v296 = v306;
  v295 = v305;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v295) == 1)
  {
LABEL_2:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B25F5000, v36, v37, "incomplete message, invalid", v38, 2u);
      MEMORY[0x1B274ECF0](v38, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v305 = xmmword_1B26CC550;
    LOBYTE(v306) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v220;
  }

  if (v303 != 4)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, logger);
    v283 = v292;
    v284 = v293;
    v285 = v294;
    v279 = v288;
    v280 = v289;
    v282 = v291;
    v281 = v290;
    v278 = v287;
    v277 = v286;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v277, &v268);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v268 = v51;
      *v50 = 136315138;
      if (v303 > 3u)
      {
        if (v303 > 5u)
        {
          if (v303 == 6)
          {
            v52 = 0xE800000000000000;
            v53 = 0x64656873696E6966;
          }

          else
          {
            v53 = 0xD000000000000010;
            v52 = 0x80000001B26CD8F0;
          }
        }

        else if (v303 == 4)
        {
          v53 = 0x6369666974726563;
          v52 = 0xEB00000000657461;
        }

        else
        {
          v52 = 0x80000001B26CD910;
          v53 = 0xD000000000000011;
        }
      }

      else if (v303 > 1u)
      {
        if (v303 == 2)
        {
          v52 = 0x80000001B26CD950;
          v53 = 0xD000000000000013;
        }

        else
        {
          v52 = 0x80000001B26CD930;
          v53 = 0xD000000000000012;
        }
      }

      else
      {
        v52 = 0xEB000000006F6C6CLL;
        if (v303)
        {
          v53 = 0x6548726576726573;
        }

        else
        {
          v53 = 0x6548746E65696C63;
        }
      }

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v268);

      *(v50 + 4) = v61;
      _os_log_impl(&dword_1B25F5000, v48, v49, "unexpected message %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1B274ECF0](v51, -1, -1);
      MEMORY[0x1B274ECF0](v50, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v268 = xmmword_1B26CC550;
    LOBYTE(v269) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_50;
  }

  v204 = v12;
  v41 = v298;
  v42 = v2[1];
  outlined copy of Data._Representation(*(&v296 + 1), v297);
  v203 = v41;

  if (v42 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v54 = v205;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v304, &v277);
  if (v54)
  {
    v220 = v304;
LABEL_28:
    outlined destroy of HandshakeMessage(&v296 + 8);
LABEL_50:
    outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    return v220;
  }

  v205 = 0;
  v265 = v283;
  v266 = v284;
  v261 = v279;
  v262 = v280;
  v264 = v282;
  v263 = v281;
  v259 = v277;
  v260 = v278;
  v274 = v283;
  v275 = v284;
  v270 = v279;
  v271 = v280;
  v273 = v282;
  v272 = v281;
  v267 = v285;
  v276 = v285;
  v269 = v278;
  v268 = v277;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v268) == 1)
  {
LABEL_14:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, logger);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B25F5000, v44, v45, "incomplete message, invalid", v46, 2u);
      MEMORY[0x1B274ECF0](v46, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v277 = xmmword_1B26CC550;
    LOBYTE(v278) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_28;
  }

  if (v276 != 5)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, logger);
    v256 = v265;
    v257 = v266;
    v258 = v267;
    v252 = v261;
    v253 = v262;
    v254 = v263;
    v255 = v264;
    v250 = v259;
    v251 = v260;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v250, &v241);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v241 = v66;
      *v65 = 136315138;
      if (v276 > 3u)
      {
        if (v276 > 5u)
        {
          if (v276 == 6)
          {
            v67 = 0xE800000000000000;
            v68 = 0x64656873696E6966;
          }

          else
          {
            v68 = 0xD000000000000010;
            v67 = 0x80000001B26CD8F0;
          }
        }

        else if (v276 == 4)
        {
          v68 = 0x6369666974726563;
          v67 = 0xEB00000000657461;
        }

        else
        {
          v67 = 0x80000001B26CD910;
          v68 = 0xD000000000000011;
        }
      }

      else if (v276 > 1u)
      {
        if (v276 == 2)
        {
          v67 = 0x80000001B26CD950;
          v68 = 0xD000000000000013;
        }

        else
        {
          v67 = 0x80000001B26CD930;
          v68 = 0xD000000000000012;
        }
      }

      else
      {
        v67 = 0xEB000000006F6C6CLL;
        if (v276)
        {
          v68 = 0x6548726576726573;
        }

        else
        {
          v68 = 0x6548746E65696C63;
        }
      }

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v67, &v241);

      *(v65 + 4) = v74;
      _os_log_impl(&dword_1B25F5000, v63, v64, "unexpected message %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x1B274ECF0](v66, -1, -1);
      MEMORY[0x1B274ECF0](v65, -1, -1);
    }

    else
    {
    }

    v220 = xmmword_1B26CC550;
    v241 = xmmword_1B26CC550;
    LOBYTE(v242) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_78;
  }

  v55 = v270;
  v201 = v271;
  v202 = *(&v270 + 1);
  v56 = v2[1];
  outlined copy of Data._Representation(v270, *(&v270 + 1));
  if (v56 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v69 = v205;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v304, &v250);
  if (v69)
  {
    v220 = v304;
    outlined destroy of HandshakeMessage(&v269 + 8);
LABEL_78:
    outlined destroy of HandshakeMessage(&v296 + 8);
LABEL_79:
    outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    return v220;
  }

  v205 = 0;
  v238 = v256;
  v239 = v257;
  v234 = v252;
  v235 = v253;
  v236 = v254;
  v237 = v255;
  v232 = v250;
  v233 = v251;
  v247 = v256;
  v248 = v257;
  v243 = v252;
  v244 = v253;
  v245 = v254;
  v246 = v255;
  v240 = v258;
  v249 = v258;
  v241 = v250;
  v242 = v251;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v241) == 1)
  {
LABEL_35:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, logger);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1B25F5000, v58, v59, "incomplete message, invalid", v60, 2u);
      MEMORY[0x1B274ECF0](v60, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v250 = xmmword_1B26CC550;
    LOBYTE(v251) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v269 + 8);
    goto LABEL_78;
  }

  v200 = v55;
  if (v249 != 6)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, logger);
    v229 = v238;
    v230 = v239;
    v231 = v240;
    v225 = v234;
    v226 = v235;
    v227 = v236;
    v228 = v237;
    v223 = v232;
    v224 = v233;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v223, &v221);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v221 = v79;
      *v78 = 136315138;
      if (v249 > 3u)
      {
        if (v249 > 5u)
        {
          if (v249 == 6)
          {
            v80 = 0xE800000000000000;
            v81 = 0x64656873696E6966;
          }

          else
          {
            v81 = 0xD000000000000010;
            v80 = 0x80000001B26CD8F0;
          }
        }

        else if (v249 == 4)
        {
          v81 = 0x6369666974726563;
          v80 = 0xEB00000000657461;
        }

        else
        {
          v80 = 0x80000001B26CD910;
          v81 = 0xD000000000000011;
        }
      }

      else if (v249 > 1u)
      {
        if (v249 == 2)
        {
          v80 = 0x80000001B26CD950;
          v81 = 0xD000000000000013;
        }

        else
        {
          v80 = 0x80000001B26CD930;
          v81 = 0xD000000000000012;
        }
      }

      else
      {
        v80 = 0xEB000000006F6C6CLL;
        if (v249)
        {
          v81 = 0x6548726576726573;
        }

        else
        {
          v81 = 0x6548746E65696C63;
        }
      }

      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, &v221);

      *(v78 + 4) = v115;
      _os_log_impl(&dword_1B25F5000, v76, v77, "unexpected message %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1B274ECF0](v79, -1, -1);
      MEMORY[0x1B274ECF0](v78, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v221 = xmmword_1B26CC550;
    v222 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v269 + 8);
    outlined destroy of HandshakeMessage(&v296 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    goto LABEL_79;
  }

  v197 = v243;
  v195 = *(&v242 + 1);
  v196 = *(&v243 + 1);
  v70 = v2 + *(type metadata accessor for ExportedAuthenticator(0) + 24);
  v198 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v199 = v70;
  outlined init with copy of HandshakeState(&v70[v198], v22);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v71 = v204;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v22, v204, type metadata accessor for HandshakeState.ReadyState);
    outlined copy of Data._Representation(*(&v242 + 1), v243);
    specialized SessionKeyManager.generateTLSExporterKey(_:)(0xD00000000000002FLL, 0x80000001B26CE500, v28);
    v72 = type metadata accessor for HandshakeState.ReadyState;
    v73 = v71;
  }

  else
  {
    (*(v208 + 56))(v28, 1, 1, v209);
    outlined copy of Data._Representation(*(&v242 + 1), v243);
    v72 = type metadata accessor for HandshakeState;
    v73 = v22;
  }

  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v73, v72);
  v82 = v208;
  v83 = *(v208 + 48);
  if (v83(v28, 1, v209) == 1)
  {
    v26 = v28;
LABEL_98:
    outlined destroy of P256.Signing.PrivateKey?(v26, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, logger);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1B25F5000, v88, v89, "failed to export keys", v90, 2u);
      MEMORY[0x1B274ECF0](v90, -1, -1);
    }

    v220 = xmmword_1B26CC560;
    v223 = xmmword_1B26CC560;
    LOBYTE(v224) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v269 + 8);
    outlined destroy of HandshakeMessage(&v296 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of HandshakeMessage(&v242 + 8);
    return v220;
  }

  v84 = *(v82 + 32);
  v84(v207, v28, v209);
  outlined init with copy of HandshakeState(&v199[v198], v20);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v85 = v20;
    v20 = v204;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v85, v204, type metadata accessor for HandshakeState.ReadyState);
    specialized SessionKeyManager.generateTLSExporterKey(_:)(0xD00000000000002ALL, 0x80000001B26CE530, v26);
    v86 = type metadata accessor for HandshakeState.ReadyState;
  }

  else
  {
    (*(v208 + 56))(v26, 1, 1, v209);
    v86 = type metadata accessor for HandshakeState;
  }

  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v20, v86);
  if (v83(v26, 1, v209) == 1)
  {
    (*(v208 + 8))(v207, v209);
    goto LABEL_98;
  }

  v91 = (v84)(v206, v26, v209);
  v223 = xmmword_1B26C6130;
  *&v224 = 0;
  MEMORY[0x1EEE9AC00](v91);
  *(&v192 - 2) = &v223;
  v92 = v205;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v93 = *(&v295 + 1) >> 62;
  if ((*(&v295 + 1) >> 62) > 1)
  {
    v94 = 0;
    if (v93 == 2)
    {
      v94 = *(v295 + 24);
    }
  }

  else if (v93)
  {
    v94 = v295 >> 32;
  }

  else
  {
    v94 = BYTE14(v295);
  }

  if (v94 < v296)
  {
    __break(1u);
    goto LABEL_218;
  }

  v95 = Data._Representation.subscript.getter();
  v97 = v96;
  specialized ByteBuffer.writeBytes<A>(_:)(v95, v96);
  outlined consume of Data._Representation(v95, v97);
  v98 = v223;
  v99 = v224;
  outlined init with copy of HandshakeState(&v199[v198], v17);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v17, type metadata accessor for HandshakeState);
    if (one-time initialization token for logger == -1)
    {
LABEL_120:
      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, logger);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1B25F5000, v112, v113, "failed to create authenticator hash", v114, 2u);
        MEMORY[0x1B274ECF0](v114, -1, -1);
      }

      v220 = xmmword_1B26CC560;
      v221 = xmmword_1B26CC560;
      v222 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of HandshakeMessage(&v296 + 8);
      goto LABEL_134;
    }

LABEL_218:
    swift_once();
    goto LABEL_120;
  }

  v100 = v17;
  v101 = v204;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v100, v204, type metadata accessor for HandshakeState.ReadyState);
  v102 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(v98, *(&v98 + 1), v99);
  v104 = v103;
  v106 = v105;
  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v101, type metadata accessor for HandshakeState.ReadyState);
  v107 = v102;
  v193 = v104;
  v194 = ExportedAuthenticator.generateDataToSignInAuthenticatorCertificateVerify(authenticatorTranscriptHash:)(v102, v104, v106);
  v205 = v108;
  v110 = v109;
  _s15SwiftTLSLibrary21ExportedAuthenticatorV10extractKey18certificateMessage9keyParser9CryptoKit4P256O7SigningO06PublicF0VSgAA011CertificateH0V_10Foundation4DataVSgASXEtAA8TLSErrorOYKF(v203, v217, v218, &v304, v219);
  if (v92)
  {
    v220 = v304;
LABEL_133:
    outlined consume of Data._Representation(v102, v193);
    outlined destroy of HandshakeMessage(&v296 + 8);
    outlined consume of Data._Representation(v194, v205);
LABEL_134:
    outlined destroy of HandshakeMessage(&v269 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
LABEL_135:
    v120 = v209;
    v121 = *(v208 + 8);
    v121(v206, v209);
    v121(v207, v120);
    outlined destroy of HandshakeMessage(&v242 + 8);
    outlined consume of Data._Representation(v223, *(&v223 + 1));
    return v220;
  }

  if ((*(v216 + 48))(v219, 1, v215) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v219, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, logger);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_1B25F5000, v117, v118, "failed to extract key from certificate", v119, 2u);
      MEMORY[0x1B274ECF0](v119, -1, -1);
    }

    v220 = xmmword_1B26CC550;
    v221 = xmmword_1B26CC550;
    v222 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_133;
  }

  (*(v216 + 32))(v214, v219, v215);
  v122 = v202 >> 62;
  if ((v202 >> 62) <= 1)
  {
    if (!v122)
    {
      v123 = BYTE6(v202);
      goto LABEL_144;
    }

    v123 = v200 >> 32;
    goto LABEL_142;
  }

  if (v122 == 2)
  {
    v123 = *(v200 + 24);
LABEL_142:
    outlined copy of Data._Representation(v270, *(&v270 + 1));
    goto LABEL_144;
  }

  v123 = 0;
LABEL_144:
  if (v123 < v201)
  {
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  *&v221 = Data._Representation.subscript.getter();
  *(&v221 + 1) = v124;
  lazy protocol witness table accessor for type Data and conformance Data();
  P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
  v219 = 0;
  outlined destroy of HandshakeMessage(&v269 + 8);
  v125 = v205 >> 62;
  if ((v205 >> 62) > 1)
  {
    if (v125 == 2)
    {
      v126 = *(v194 + 24);
    }

    else
    {
      v126 = 0;
    }
  }

  else if (v125)
  {
    v126 = v194 >> 32;
  }

  else
  {
    v126 = BYTE6(v205);
  }

  if (v126 < v110)
  {
    goto LABEL_221;
  }

  *&v221 = Data._Representation.subscript.getter();
  *(&v221 + 1) = v127;
  v128 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
  outlined consume of Data._Representation(v221, *(&v221 + 1));
  if ((v128 & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_158:
      v131 = type metadata accessor for Logger();
      __swift_project_value_buffer(v131, logger);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_1B25F5000, v132, v133, "signature validation failed", v134, 2u);
        MEMORY[0x1B274ECF0](v134, -1, -1);
      }

      v135 = xmmword_1B26CC550;
LABEL_177:
      v220 = v135;
      v221 = v135;
      v222 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v153 = v107;
      v154 = v193;
LABEL_178:
      outlined consume of Data._Representation(v153, v154);
      outlined destroy of HandshakeMessage(&v296 + 8);
LABEL_179:
      outlined consume of Data._Representation(v194, v205);
      outlined destroy of HandshakeMessage(&v269 + 8);
      outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      (*(v210 + 8))(v213, v211);
      (*(v216 + 8))(v214, v215);
      goto LABEL_135;
    }

LABEL_222:
    swift_once();
    goto LABEL_158;
  }

  v129 = *(&v268 + 1) >> 62;
  if ((*(&v268 + 1) >> 62) > 1)
  {
    if (v129 == 2)
    {
      v130 = *(v268 + 24);
    }

    else
    {
      v130 = 0;
    }
  }

  else if (v129)
  {
    v130 = v268 >> 32;
  }

  else
  {
    v130 = BYTE14(v268);
  }

  if (v130 < v269)
  {
    __break(1u);
    goto LABEL_224;
  }

  v136 = Data._Representation.subscript.getter();
  v138 = v137;
  specialized ByteBuffer.writeBytes<A>(_:)(v136, v137);
  outlined consume of Data._Representation(v136, v138);
  v139 = v223;
  v140 = v224;
  outlined init with copy of HandshakeState(&v199[v198], v212);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v212, type metadata accessor for HandshakeState);
    if (one-time initialization token for logger == -1)
    {
LABEL_174:
      v155 = type metadata accessor for Logger();
      __swift_project_value_buffer(v155, logger);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_1B25F5000, v156, v157, "failed to create finished authenticator hash", v158, 2u);
        MEMORY[0x1B274ECF0](v158, -1, -1);
      }

      v135 = xmmword_1B26CC560;
      goto LABEL_177;
    }

LABEL_224:
    swift_once();
    goto LABEL_174;
  }

  v141 = v204;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v212, v204, type metadata accessor for HandshakeState.ReadyState);
  v142 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(v139, *(&v139 + 1), v140);
  v144 = v143;
  v146 = v145;
  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v141, type metadata accessor for HandshakeState.ReadyState);
  v204 = v142;
  v212 = v144;
  v217 = HandshakeStateMachine.generateHMACForAuthenticator(transcript:key:)(v142, v144, v146, v206);
  v218 = v147;
  ready = v148;
  if (v148 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    __swift_project_value_buffer(v149, logger);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1B25F5000, v150, v151, "failed to create finished authenticator HMAC", v152, 2u);
      MEMORY[0x1B274ECF0](v152, -1, -1);
    }

    v220 = xmmword_1B26CC560;
    v221 = xmmword_1B26CC560;
    v222 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v107, v193);
    v153 = v204;
    v154 = v212;
    goto LABEL_178;
  }

  v159 = ready >> 62;
  if ((ready >> 62) > 1)
  {
    if (v159 == 2)
    {
      v160 = *(v217 + 24);
    }

    else
    {
      v160 = 0;
    }
  }

  else if (v159)
  {
    v160 = v217 >> 32;
  }

  else
  {
    v160 = BYTE6(ready);
  }

  if (v160 < v218)
  {
    __break(1u);
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v161 = Data._Representation.subscript.getter();
  v163 = v162;
  v164 = v197 >> 62;
  if ((v197 >> 62) > 1)
  {
    if (v164 == 2)
    {
      v165 = *(v195 + 24);
    }

    else
    {
      v165 = 0;
    }
  }

  else if (v164)
  {
    v165 = v195 >> 32;
  }

  else
  {
    v165 = BYTE6(v197);
  }

  if (v165 < v196)
  {
    goto LABEL_226;
  }

  v166 = Data._Representation.subscript.getter();
  v168 = v167;
  v169 = specialized static Data.== infix(_:_:)(v161, v163, v166, v167);
  outlined consume of Data._Representation(v166, v168);
  outlined consume of Data._Representation(v161, v163);
  if (!v169)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_212:
      v184 = type metadata accessor for Logger();
      __swift_project_value_buffer(v184, logger);
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&dword_1B25F5000, v185, v186, "invalid finished payload", v187, 2u);
        MEMORY[0x1B274ECF0](v187, -1, -1);
      }

      v220 = xmmword_1B26CC550;
      v221 = xmmword_1B26CC550;
      v222 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v107, v193);
      outlined consume of Data._Representation(v204, v212);
      outlined destroy of HandshakeMessage(&v296 + 8);
      outlined consume of ByteBuffer?(v217, ready);
      goto LABEL_179;
    }

LABEL_227:
    swift_once();
    goto LABEL_212;
  }

  v170 = v203[2];
  if (v170)
  {
    *&v221 = MEMORY[0x1E69E7CC0];
    v171 = v203;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v170, 0);
    *&v220 = v221;
    v172 = v171 + 7;
    while (1)
    {
      v173 = *(v172 - 3);
      v174 = *(v172 - 2);
      v175 = v174 >> 62;
      if ((v174 >> 62) > 1)
      {
        v176 = v175 == 2 ? *(v173 + 24) : 0;
      }

      else
      {
        v176 = v175 ? v173 >> 32 : BYTE6(v174);
      }

      if (v176 < *(v172 - 1))
      {
        goto LABEL_220;
      }

      outlined copy of Data._Representation(*(v172 - 3), *(v172 - 2));

      v177 = Data._Representation.subscript.getter();
      v179 = v178;
      outlined consume of Data._Representation(v173, v174);

      *&v221 = v220;
      v181 = *(v220 + 16);
      v180 = *(v220 + 24);
      if (v181 >= v180 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v180 > 1), v181 + 1, 1);
        *&v220 = v221;
      }

      v182 = v220;
      *(v220 + 16) = v181 + 1;
      v183 = v182 + 16 * v181;
      *(v183 + 32) = v177;
      *(v183 + 40) = v179;
      v172 += 4;
      if (!--v170)
      {
        outlined consume of Data._Representation(v107, v193);
        outlined consume of Data._Representation(v204, v212);
        outlined destroy of HandshakeMessage(&v296 + 8);
        outlined consume of ByteBuffer?(v217, ready);
        outlined consume of Data._Representation(v194, v205);

        outlined destroy of HandshakeMessage(&v269 + 8);
        outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        (*(v210 + 8))(v213, v211);
        (*(v216 + 8))(v214, v215);
        v188 = v209;
        v189 = *(v208 + 8);
        v189(v206, v209);
        v189(v207, v188);
        outlined destroy of HandshakeMessage(&v242 + 8);
        goto LABEL_216;
      }
    }
  }

  outlined consume of Data._Representation(v107, v193);
  outlined consume of Data._Representation(v204, v212);
  outlined destroy of HandshakeMessage(&v296 + 8);
  outlined consume of ByteBuffer?(v217, ready);
  outlined consume of Data._Representation(v194, v205);
  outlined destroy of HandshakeMessage(&v269 + 8);
  outlined destroy of P256.Signing.PrivateKey?(&v232, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v259, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v286, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  (*(v210 + 8))(v213, v211);
  (*(v216 + 8))(v214, v215);
  v190 = v209;
  v191 = *(v208 + 8);
  v191(v206, v209);
  v191(v207, v190);
  outlined destroy of HandshakeMessage(&v242 + 8);
  *&v220 = MEMORY[0x1E69E7CC0];
LABEL_216:
  outlined consume of Data._Representation(v223, *(&v223 + 1));
  return v220;
}

uint64_t ExportedAuthenticator.generateDataToSignInAuthenticatorCertificateVerify(authenticatorTranscriptHash:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = xmmword_1B26C6130;
  v15 = 0;
  specialized Data.append<A>(contentsOf:)(64, 32);
  specialized Data.append<A>(contentsOf:)(0xD000000000000016, 0x80000001B26CE560);
  if (("authenticator finished key" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v12 = 0;
  v13[3] = MEMORY[0x1E69E6290];
  v13[4] = MEMORY[0x1E6969DF8];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_0(v13, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = a1 >> 32;
  }

  else
  {
    v7 = BYTE6(a2);
  }

  if (v7 < a3)
  {
    __break(1u);
  }

  v8 = Data._Representation.subscript.getter();
  v10 = v9;
  specialized ByteBuffer.writeBytes<A>(_:)(v8, v9);
  outlined consume of Data._Representation(v8, v10);
  return v14;
}

void _s15SwiftTLSLibrary21ExportedAuthenticatorV10extractKey18certificateMessage9keyParser9CryptoKit4P256O7SigningO06PublicF0VSgAA011CertificateH0V_10Foundation4DataVSgASXEtAA8TLSErrorOYKF(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  if (!a1[2])
  {
    goto LABEL_12;
  }

  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (v12 <= 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = *(v11 + 24);
LABEL_9:
    outlined copy of Data._Representation(a1[4], a1[5]);
    if (v14 >= v12)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (v13)
  {
    v14 = v11 >> 32;
    goto LABEL_9;
  }

  if (BYTE6(v10) < v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  a2 = a2();
  a3 = v18;
  outlined consume of Data._Representation(v15, v17);
  if (a3 >> 60 == 15)
  {
    outlined consume of Data._Representation(v11, v10);
LABEL_12:
    v19 = type metadata accessor for P256.Signing.PublicKey();
    (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
    return;
  }

  outlined copy of Data._Representation(a2, a3);
  P256.Signing.PublicKey.init<A>(x963Representation:)();
  if (v5)
  {

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(a2, a3);
    outlined consume of Data._Representation(v11, v10);
    *a4 = xmmword_1B26C6420;
    *(a4 + 16) = 2;
    return;
  }

LABEL_17:
  outlined consume of Data._Representation(v11, v10);
  outlined consume of ByteBuffer?(a2, a3);
  v20 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
}

uint64_t outlined init with copy of HandshakeState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ExportedAuthenticator(uint64_t a1)
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static CertificateMessage.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a5, a6, a7))
  {

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(a4, a8);
  }
}

uint64_t CertificateMessage.hash(into:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = a2 >> 32;
  }

  else
  {
    v8 = BYTE6(a3);
  }

  if (v8 < a4)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);

    return specialized Array<A>.hash(into:)(v6, a5);
  }

  return result;
}

void *CertificateMessage.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = Hasher.init(_seed:)();
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }
  }

  else if (v9)
  {
    v10 = a1 >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    v11 = Data._Representation.subscript.getter();
    v13 = v12;
    Data.hash(into:)();
    outlined consume of Data._Representation(v11, v13);
    specialized Array<A>.hash(into:)(v14, a4);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CertificateMessage(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[3];
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);

    return specialized Array<A>.hash(into:)(a1, v8);
  }

  return result;
}

void *protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateMessage(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  result = Hasher.init(_seed:)();
  v7 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v3 >> 32;
  }

  else
  {
    v8 = BYTE6(v2);
  }

  if (v8 < v5)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    specialized Array<A>.hash(into:)(v12, v4);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateMessage(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a2[3];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

unint64_t CertificateMessage.write(into:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v15 = 0;
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  LOBYTE(v36) = 0;
  v16 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v39 = MEMORY[0x1E69E6290];
  v40 = MEMORY[0x1E6969DF8];
  v37 = &v36;
  v38 = (&v36 + 1);
  __swift_project_boxed_opaque_existential_0(&v37, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(a2 + 16);
      v19 = *(a2 + 24);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    if (v18)
    {
      v19 = a2 >> 32;
    }

    else
    {
      v19 = BYTE6(a3);
    }

    if (v18)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }
  }

  if (v19 < a4 || v19 < v20)
  {
    __break(1u);
    goto LABEL_43;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  Data.append(_:)();
  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v25)
    {
      outlined consume of Data._Representation(v21, v23);
      v21 = BYTE6(v23);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v25 != 2)
  {
    goto LABEL_31;
  }

  v27 = *(v21 + 16);
  v26 = *(v21 + 24);
  outlined consume of Data._Representation(v21, v24);
  v21 = v26 - v27;
  if (__OFSUB__(v26, v27))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v21, v24);
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_46;
    }

    v21 = HIDWORD(v21) - v21;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v21 <= 0xFF)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v21, v24);
  v21 = 0;
LABEL_32:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v21, v15);
  v28 = *a1;
  v29 = a1[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v28 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v28 >> 32;
  }

  else
  {
    v31 = BYTE6(v29);
  }

  LOBYTE(v36) = 0;
  v39 = v16;
  v40 = v17;
  v37 = &v36;
  v38 = (&v36 + 1);
  __swift_project_boxed_opaque_existential_0(&v37, v16);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v36 = 0;
  v39 = v16;
  v40 = v17;
  v37 = &v36;
  v38 = &v37;
  __swift_project_boxed_opaque_existential_0(&v37, v16);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v32 = specialized Sequence.reduce<A>(into:_:)(0, a5);
  if (v32 > 0xFFFFFF)
  {
    goto LABEL_44;
  }

  v33 = v32;
  v34 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v32), v31);
  if (__OFADD__(v31, v34))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v33, v31 + v34);
  return v21 + v33 + 4;
}

unint64_t ByteBuffer.writeCertificateEntry(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = v4[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v14 = 0;
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = v9 >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  LOBYTE(v35) = 0;
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = (&v35 + 1);
  __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v35 = 0;
  v38 = v15;
  v39 = v16;
  v36 = &v35;
  v37 = &v36;
  __swift_project_boxed_opaque_existential_0(&v36, v15);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + 16);
      v19 = *(a1 + 24);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = a1;
    v19 = a1 >> 32;
  }

  else
  {
    v18 = 0;
    v19 = BYTE6(a2);
  }

  if (v19 < a3 || v19 < v18)
  {
    __break(1u);
    goto LABEL_40;
  }

  v20 = Data._Representation.subscript.getter();
  v22 = v21;
  Data.append(_:)();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v24)
    {
      outlined consume of Data._Representation(v20, v22);
      v20 = BYTE6(v22);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v24 != 2)
  {
    goto LABEL_27;
  }

  v26 = *(v20 + 16);
  v25 = *(v20 + 24);
  outlined consume of Data._Representation(v20, v23);
  v20 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
LABEL_23:
    outlined consume of Data._Representation(v20, v23);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_43;
    }

    v20 = HIDWORD(v20) - v20;
  }

  if (v20 <= 0xFFFFFF)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_27:
  outlined consume of Data._Representation(v20, v23);
  v20 = 0;
LABEL_28:
  v27 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v20), v14);
  if (__OFADD__(v14, v27))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v20, v14 + v27);
  v28 = *v4;
  v29 = v4[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v28 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v28 >> 32;
  }

  else
  {
    v31 = BYTE6(v29);
  }

  v35 = 0;
  v38 = v15;
  v39 = v16;
  v36 = &v35;
  v37 = &v36;
  __swift_project_boxed_opaque_existential_0(&v36, v15);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v32 = specialized Sequence.reduce<A>(into:_:)(0, a4);
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v33 = v32;
  if (v32 >> 16)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v32, v31);
  return v20 + v33 + 5;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF()
{
  v2 = v0;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  outlined copy of Data._Representation(*v0, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v6 & 0x100) != 0 || (v7 = v6, v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v8 & 0x10000) != 0) || (v9 = ByteBuffer.readSlice(length:)(v8 | (v7 << 16)), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, v0[1]);
LABEL_5:
    result = 0;
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v5;
    return result;
  }

  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  result = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v15 >> 60 == 15)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v16 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v22 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v22 >> 32;
  }

  else
  {
    v17 = BYTE6(v23);
  }

  if (__OFSUB__(v17, v24))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  v19 = v15;
  if (v17 == v24)
  {
    outlined consume of Data._Representation(v22, v23);
    outlined consume of Data._Representation(v4, v3);
    v4 = *v2;
    v3 = v2[1];
    v5 = v2[2];
    outlined copy of Data._Representation(*v2, v3);
    v20 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l121OIglozo_AcfHIeglrzo_TR04_s15a12TLSLibrary10cd47V20readCertificateEntryAA0F7MessageV0fG0VSgyAA8f27OYKF0E10ExtensionsL_ySayU22E10OGACzAKYKFTf3nnpf_nTf1nc_n(v2);
    if (v1)
    {
      v21 = v20;
      outlined consume of Data._Representation(*v2, v2[1]);
      *v2 = v4;
      v2[1] = v3;
      v2[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v18, v19);
      return v21;
    }

    else
    {
      if (!v20)
      {
        outlined consume of Data._Representation(*v2, v2[1]);
        outlined consume of ByteBuffer?(v18, v19);
        goto LABEL_5;
      }

      outlined consume of Data._Representation(v4, v3);
      return v18;
    }
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v18, v19);
    outlined consume of Data._Representation(v22, v23);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v5;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageVAA09HandshakeD8ProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateMessage and conformance CertificateMessage()
{
  result = lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage;
  if (!lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry()
{
  result = lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry;
  if (!lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry);
  }

  return result;
}

double _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v11, v13);
  if (v3)
  {
    v6 = v12;
    result = *&v11;
    *a2 = v11;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v13[3];
    a3[2] = v13[2];
    a3[3] = v8;
    v9 = v13[5];
    a3[4] = v13[4];
    a3[5] = v9;
    result = *v13;
    v10 = v13[1];
    *a3 = v13[0];
    a3[1] = v10;
  }

  return result;
}

__n128 ServerHello.init(legacyVersion:random:legacySessionIDEcho:cipherSuite:legacyCompressionMethod:extensions:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 40) = *a6;
  v12 = *(a6 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v11;
  *(a9 + 72) = v12;
  *(a9 + 80) = a7;
  *(a9 + 82) = a8;
  *(a9 + 88) = a10;
  return result;
}

BOOL ServerHello.isHelloRetryRequest.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return v1 == static Random.helloRetryRequest && v2 == xmmword_1ED4D5F88 && v4 == *(&xmmword_1ED4D5F88 + 1) && v3 == qword_1ED4D5F98;
}

uint64_t ServerHello.random.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1] = result;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

__n128 ServerHello.legacySessionIDEcho.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ServerHello.legacySessionIDEcho.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t ServerHello.extensions.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t ServerHello.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x1B274DB60](*(v1 + 8));
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  MEMORY[0x1B274DB60](v6);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  MEMORY[0x1B274DB20](*(v1 + 72));
  MEMORY[0x1B274DB60](v7);
  MEMORY[0x1B274DB60](v8);
  MEMORY[0x1B274DB60](v9);
  MEMORY[0x1B274DB60](v10);
  Hasher._combine(_:)(*(v1 + 80));
  Hasher._combine(_:)(*(v1 + 82));
  v11 = *(v1 + 88);
  v12 = *(v11 + 16);
  result = MEMORY[0x1B274DB20](v12);
  if (v12)
  {
    v14 = v11 + 32;
    do
    {
      v15 = *(v14 + 16);
      v20[0] = *v14;
      v20[1] = v15;
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v18 = *(v14 + 64);
      v21 = *(v14 + 80);
      v20[3] = v17;
      v20[4] = v18;
      v20[2] = v16;
      outlined init with copy of Extension(v20, v19);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v20);
      v14 += 88;
      --v12;
    }

    while (v12);
  }

  return result;
}

Swift::Int ServerHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  ServerHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ServerHello(uint64_t a1)
{
  Hasher.init(_seed:)();
  ServerHello.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ServerHello(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return specialized static ServerHello.__derived_struct_equals(_:_:)(v9, v10) & 1;
}

unint64_t ServerHello.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v27 = *MEMORY[0x1E69E9840];
  LOWORD(v21) = *v2;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  *(&v25 + 1) = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  *&v24 = &v21;
  *(&v24 + 1) = &v21 + 2;
  __swift_project_boxed_opaque_existential_0(&v24, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v6 = *(v2 + 24);
  v21 = *(v2 + 8);
  v22 = v6;
  *(&v25 + 1) = v4;
  v26 = v5;
  *&v24 = &v21;
  *(&v24 + 1) = &v23;
  __swift_project_boxed_opaque_existential_0(&v24, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v7 = *(v2 + 56);
  v24 = *(v2 + 40);
  v25 = v7;
  v26 = *(v2 + 72);
  v8 = ByteBuffer.writeLegacySessionID(_:)(&v24);
  v9 = v8 + 34;
  if (__OFADD__(v8, 34))
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = bswap32(*(v2 + 80)) >> 16;
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_0(&v21, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v10 = __OFADD__(v9, 2);
  v11 = v9 + 2;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v20) = *(v2 + 82);
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v20 + 1;
  __swift_project_boxed_opaque_existential_0(&v21, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v10 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v13 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v13 >> 32;
  }

  else
  {
    v16 = BYTE6(v14);
  }

  v20 = 0;
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_0(&v21, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v17 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 88));
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v18 = v17;
  if (v17 >> 16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v17, v16);
  result = v12 + v18 + 2;
  if (__OFADD__(v12, v18 + 2))
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static ServerHello.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && *(a1 + 40) == *(a2 + 40) && a1[82] == a2[82])
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(*(a1 + 11), *(a2 + 11));
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ServerHello and conformance ServerHello()
{
  result = lazy protocol witness table cache variable for type ServerHello and conformance ServerHello;
  if (!lazy protocol witness table cache variable for type ServerHello and conformance ServerHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServerHello and conformance ServerHello);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EncryptedExtensions.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 32);
      v8 = *(v6 + 64);
      v11[3] = *(v6 + 48);
      v11[4] = v8;
      v12 = *(v6 + 80);
      v9 = *(v6 + 16);
      v11[0] = *v6;
      v11[1] = v9;
      v11[2] = v7;
      outlined init with copy of Extension(v11, v10);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v11);
      v6 += 88;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int EncryptedExtensions.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v9[2] = *(v3 + 32);
      v9[3] = v4;
      v9[4] = *(v3 + 64);
      v10 = *(v3 + 80);
      v5 = *(v3 + 16);
      v9[0] = *v3;
      v9[1] = v5;
      outlined init with copy of Extension(v9, &v7);
      Extension.hash(into:)(v8);
      outlined destroy of Extension(v9);
      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncryptedExtensions(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  EncryptedExtensions.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t EncryptedExtensions.write(into:)(uint64_t *a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v12 = 0;
  v13[3] = MEMORY[0x1E69E6290];
  v13[4] = MEMORY[0x1E6969DF8];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_0(v13, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v9 = specialized Sequence.reduce<A>(into:_:)(0, a2);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v10 = v9;
  if (v9 >> 16)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v9, v8);
  return v10 + 2;
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, uint64_t *a3@<X0>)
{
  result = _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a3);
  if (v3)
  {
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a43TLSLibrary19EncryptedExtensionsV5bytesAcA10cd7Vz_tAA8f23OYKcfc04readD0L_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
  v7 = v6;
  if (v1 || !v6)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined consume of Data._Representation(v4, v3);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type EncryptedExtensions and conformance EncryptedExtensions()
{
  result = lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions;
  if (!lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions);
  }

  return result;
}

__n128 _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v10, v12);
  if (v3)
  {
    v7 = v11;
    result.n128_u64[0] = v10;
    *a2 = v10;
    *(a2 + 16) = v7;
  }

  else
  {
    v8 = v12[5];
    *(a3 + 64) = v12[4];
    *(a3 + 80) = v8;
    *(a3 + 96) = v13;
    v9 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v9;
    result = v12[3];
    *(a3 + 32) = v12[2];
    *(a3 + 48) = result;
  }

  return result;
}

__n128 ClientHello.init(legacyVersion:random:legacySessionID:cipherSuites:legacyCompressionMethods:extensions:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v11;
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t ClientHello.extensions.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t ClientHello.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x1B274DB60](*(v1 + 8));
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  MEMORY[0x1B274DB60](v6);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  MEMORY[0x1B274DB20](*(v1 + 72));
  MEMORY[0x1B274DB60](v7);
  MEMORY[0x1B274DB60](v8);
  MEMORY[0x1B274DB60](v9);
  MEMORY[0x1B274DB60](v10);
  v11 = *(v1 + 80);
  v12 = *(v11 + 16);
  MEMORY[0x1B274DB20](v12);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  v15 = *(v1 + 88);
  v16 = *(v15 + 16);
  MEMORY[0x1B274DB20](v16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v18 = *v17++;
      Hasher._combine(_:)(v18);
      --v16;
    }

    while (v16);
  }

  v19 = *(v1 + 96);
  v20 = *(v19 + 16);
  result = MEMORY[0x1B274DB20](v20);
  if (v20)
  {
    v22 = v19 + 32;
    do
    {
      v23 = *(v22 + 16);
      v28[0] = *v22;
      v28[1] = v23;
      v24 = *(v22 + 32);
      v25 = *(v22 + 48);
      v26 = *(v22 + 64);
      v29 = *(v22 + 80);
      v28[3] = v25;
      v28[4] = v26;
      v28[2] = v24;
      outlined init with copy of Extension(v28, v27);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v28);
      v22 += 88;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int ClientHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  ClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClientHello(uint64_t a1)
{
  Hasher.init(_seed:)();
  ClientHello.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClientHello(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static ClientHello.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

void *_s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc22readCompressionMethodsL_ySays5UInt8VGAFzF(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
LABEL_20:
      if (v9 >= result)
      {
        v11 = Data._Representation.subscript.getter();
        result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v11, v12);
        a1[2] = v9;
        return result;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 <= 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *_s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v2 = v1;
  v70 = *MEMORY[0x1E69E9840];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x1E69E7CC0]);
  v5 = a1[1];
  v47 = *a1;
  LOWORD(v67) = 0;
  v6 = a1[2];
  v7 = v6 + 2;
  if (__OFADD__(v6, 2))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  v8 = v4;
  v9 = v5 >> 62;
  v48 = BYTE6(v5);
  v49 = v5 >> 62;
  while (1)
  {
    if (v9 <= 1)
    {
      v10 = v48;
      if (v9)
      {
        v10 = v47 >> 32;
      }

LABEL_8:
      if (v10 < v7)
      {
        return v8;
      }

      goto LABEL_11;
    }

    if (v9 == 2)
    {
      v10 = *(v47 + 24);
      goto LABEL_8;
    }

    if (v7 >= 1)
    {
      return v8;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v61 = *a1;
    *(&v61 + 1) = v12;
    if (v7 < v6)
    {
      goto LABEL_62;
    }

    v50 = v8;
    v51 = v2;
    *&v53 = v6;
    *(&v53 + 1) = v7;
    v52 = v7;
    outlined copy of Data._Representation(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v61, *(&v61 + 1));
    v13 = v67;
    a1[2] = v52;
    v15 = *a1;
    v14 = a1[1];
    LOWORD(v67) = 0;
    v16 = v52 + 2;
    if (__OFADD__(v52, 2))
    {
      goto LABEL_63;
    }

    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v15 >> 32;
    }

    else
    {
      v18 = BYTE6(v14);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_56;
    }

LABEL_22:
    *&v61 = v15;
    *(&v61 + 1) = v14;
    if (v16 < v52)
    {
      goto LABEL_64;
    }

    *&v53 = v52;
    *(&v53 + 1) = v52 + 2;
    outlined copy of Data._Representation(v15, v14);
    outlined copy of Data._Representation(v15, v14);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v61, *(&v61 + 1));
    v19 = bswap32(v67) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_65;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_57;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_66;
    }

    v25 = Data._Representation.subscript.getter();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v51;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v51;
      if (v28)
      {
        v27 = v25;
      }
    }

    v67 = v25;
    v68 = v26;
    v69 = v27;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v67, bswap32(v13) >> 16, 1, 0, v59, &v61);
    if (v29)
    {
      v45 = v59[0];
      v44 = v59[1];
      v39 = v60;
      v43 = v67;
      v42 = v68;
      goto LABEL_59;
    }

    v2 = 0;
    v30 = v68 >> 62;
    if ((v68 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v67 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v67 >> 32;
    }

    else
    {
      v31 = BYTE6(v68);
    }

    if (__OFSUB__(v31, v69))
    {
      goto LABEL_67;
    }

    if (v31 != v69)
    {
      v39 = 2;
      v40 = v67;
      v41 = v68;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v55 = v63;
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v53 = v61;
      v54 = v62;
      outlined destroy of Extension(&v53);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_59:
      outlined consume of Data._Representation(v43, v42);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v14;
      a1[2] = v52;
      *&v61 = v45;
      *(&v61 + 1) = v44;
      LOBYTE(v62) = v39;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      return v45;
    }

    outlined consume of Data._Representation(v67, v68);
    outlined consume of Data._Representation(v15, v14);
    v58 = v66;
    v56 = v64;
    v57 = v65;
    v54 = v62;
    v55 = v63;
    v53 = v61;
    v8 = v50;
    v33 = *(v50 + 2);
    v32 = *(v50 + 3);
    if (v33 >= v32 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v50);
    }

    LODWORD(v9) = v49;
    *(v8 + 2) = v33 + 1;
    v34 = &v8[88 * v33];
    v35 = v54;
    *(v34 + 2) = v53;
    *(v34 + 3) = v35;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v34[112] = v58;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v67) = 0;
    v6 = a1[2];
    v7 = v6 + 2;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_61;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v15 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_56:
  outlined copy of Data._Representation(v15, v14);
  v21 = *a1;
  v22 = a1[1];
LABEL_57:
  outlined consume of Data._Representation(v21, v22);
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v52;
  return v50;
}

uint64_t specialized static ClientHello.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) == 0 || *(a1 + 9) != *(a2 + 9) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(*(a1 + 10), *(a2 + 10)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(*(a1 + 11), *(a2 + 11)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v5);
}

void _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  v8 = v7;
  ByteBuffer.readRandom()(v49);
  if (v50)
  {
    goto LABEL_7;
  }

  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  outlined copy of Data._Representation(*a1, v9);
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  v13 = ByteBuffer.readSlice(length:)(v12);
  if (v14 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v46 = v13;
  v47 = v14;
  v48 = v15;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v46, v41, &v43);
  if (v3)
  {
    v19 = v11;
    v17 = v41[0];
    v18 = v41[1];
    v16 = v42;
    v20 = v46;
    v21 = v47;
LABEL_22:
    outlined consume of Data._Representation(v20, v21);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v19;
    *&v43 = v17;
    *(&v43 + 1) = v18;
    LOBYTE(v44) = v16;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_8;
  }

  v22 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v46 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v46 >> 32;
  }

  else
  {
    v23 = BYTE6(v47);
  }

  if (__OFSUB__(v23, v48))
  {
    __break(1u);
  }

  else
  {
    if (v23 != v48)
    {
      v19 = v11;
      v16 = 2;
      v26 = v46;
      v27 = v47;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v21 = v27;
      v20 = v26;
      v18 = 0;
      v17 = 1;
      goto LABEL_22;
    }

    outlined consume of Data._Representation(v46, v47);
    outlined consume of Data._Representation(v10, v9);
    v38 = v44;
    v39 = v43;
    v37 = v45;
    v10 = *a1;
    v9 = a1[1];
    v51 = a1[2];
    outlined copy of Data._Representation(v10, v9);
    v24 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA11CipherSuiteVGTg504_s15a12TLSLibrary10cd8VSayAA11qr5VGAA8L128OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8g12OYKcfc16reade17SuitesL_ySayAA0J5F6VGAFzFTf3nnpf_nTf1nc_n();
    v25 = v24;
    v11 = v51;
    if (!v24)
    {
LABEL_5:
      outlined consume of Data._Representation(*a1, a1[1]);
LABEL_6:
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
LABEL_7:
      v43 = 0uLL;
      v16 = 2;
      LOBYTE(v44) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v17 = 0;
      v18 = 0;
LABEL_8:
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 16) = v16;
      return;
    }

    outlined consume of Data._Representation(v10, v9);
    v10 = *a1;
    v28 = a1[1];
    v51 = a1[2];
    v35 = v28;
    outlined copy of Data._Representation(v10, v28);
    v29 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAKGTg504_s15a12TLSLibrary10cd6VSays5p5VGAA8L134OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f38OYKcfc22readCompressionMethodsL_ySays5E6VGAFzFTf3nnpf_nTf1nc_n();
    v11 = v51;
    v9 = v35;
    v34 = v29;
    if (!v29)
    {
      outlined consume of Data._Representation(*a1, a1[1]);

      goto LABEL_6;
    }

    outlined consume of Data._Representation(v10, v35);
    v10 = *a1;
    v30 = a1[1];
    v51 = a1[2];
    v36 = v30;
    outlined copy of Data._Representation(v10, v30);
    v31 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
    v32 = v51;
    v33 = v31;
    if (!v31)
    {
      outlined consume of Data._Representation(*a1, a1[1]);

      v9 = v36;
      v11 = v32;
      goto LABEL_6;
    }

    outlined consume of Data._Representation(v10, v36);
    *&v40[6] = v49[0];
    *&v40[22] = v49[1];
    *(a3 + 2) = *v40;
    *a3 = bswap32(v8) >> 16;
    *(a3 + 18) = *&v40[16];
    *(a3 + 32) = *&v40[30];
    *(a3 + 56) = v38;
    *(a3 + 40) = v39;
    *(a3 + 72) = v37;
    *(a3 + 80) = v25;
    *(a3 + 88) = v34;
    *(a3 + 96) = v33;
  }
}

unint64_t lazy protocol witness table accessor for type ClientHello and conformance ClientHello()
{
  result = lazy protocol witness table cache variable for type ClientHello and conformance ClientHello;
  if (!lazy protocol witness table cache variable for type ClientHello and conformance ClientHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHello and conformance ClientHello);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t GeneratedEphemeralPrivateKey.namedGroup.getter()
{
  v1 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v0, v3);
  v4 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
  outlined destroy of GeneratedEphemeralPrivateKey(v3, type metadata accessor for GeneratedEphemeralPrivateKey);
  return v4;
}

uint64_t generateEphemeralKeyForNamedGroup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0x11ECu:
      X25519MLKEM768EphemeralKey.init()(a2);
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 0x1Du:
      Curve25519.KeyAgreement.PrivateKey.init()();
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 0x18u:
      P384.KeyAgreement.PrivateKey.init()();
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v4 = *(*(v3 - 8) + 56);
      v5 = a2;
      v6 = 0;
      v7 = v3;
      goto LABEL_9;
  }

  v8 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v4 = *(*(v8 - 8) + 56);
  v7 = v8;
  v5 = a2;
  v6 = 1;
LABEL_9:

  return v4(v5, v6, 1, v7);
}

uint64_t _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v39 = a4;
  v5 = v4;
  v44 = a3;
  v41 = a2;
  v38 = a1;
  v6 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymmetricKey();
  v37 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v5, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v23, v20, type metadata accessor for Curve25519EphemeralKey);
    v32 = v40;
    v5 = v41;
    v26 = v44;
    _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(v41, v44, &v42, v17);
    if (v32)
    {
      v28 = *(&v42 + 1);
      v27 = v42;
      v29 = v43;
      v30 = type metadata accessor for Curve25519EphemeralKey;
      v31 = v20;
      goto LABEL_9;
    }

    outlined destroy of GeneratedEphemeralPrivateKey(v20, type metadata accessor for Curve25519EphemeralKey);
    (*(v37 + 32))(v38, v17, v12);
LABEL_12:
    outlined copy of Data._Representation(v5, v26);
    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v23, v8, type metadata accessor for X25519MLKEM768EphemeralKey);
    v33 = v40;
    v34 = _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(v38, v41, v44, &v42);
    if (!v33)
    {
      v5 = v34;
      outlined destroy of GeneratedEphemeralPrivateKey(v8, type metadata accessor for X25519MLKEM768EphemeralKey);
      return v5;
    }

    v28 = *(&v42 + 1);
    v27 = v42;
    v29 = v43;
    v30 = type metadata accessor for X25519MLKEM768EphemeralKey;
    v31 = v8;
    goto LABEL_9;
  }

  outlined init with take of X25519MLKEM768EphemeralKey(v23, v11, type metadata accessor for P384EphemeralKey);
  v25 = v40;
  v5 = v41;
  v26 = v44;
  _s15SwiftTLSLibrary16P384EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(v41, v44, &v42, v15);
  if (!v25)
  {
    outlined destroy of GeneratedEphemeralPrivateKey(v11, type metadata accessor for P384EphemeralKey);
    (*(v37 + 32))(v38, v15, v12);
    goto LABEL_12;
  }

  v28 = *(&v42 + 1);
  v27 = v42;
  v29 = v43;
  v30 = type metadata accessor for P384EphemeralKey;
  v31 = v11;
LABEL_9:
  outlined destroy of GeneratedEphemeralPrivateKey(v31, v30);
  v35 = v39;
  *v39 = v27;
  v35[1] = v28;
  *(v35 + 16) = v29;
  return v5;
}

double X25519MLKEM768EphemeralKey.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MLKEM768.PublicKey();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLKEM768.PrivateKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  *(a1 + v12[7]) = 32;
  *(a1 + v12[8]) = 1184;
  *(a1 + v12[9]) = 1088;
  Curve25519.KeyAgreement.PrivateKey.init()();
  static MLKEM768.PrivateKey.generate()();
  (*(v9 + 32))(a1 + v12[5], v11, v8);
  MLKEM768.PrivateKey.publicKey.getter();
  v13 = MLKEM768.PublicKey.rawRepresentation.getter();
  v15 = v14;
  (*(v5 + 8))(v7, v23);
  Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
  v16 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
  v18 = v17;
  (*(v24 + 8))(v4, v25);
  *&v27[0] = v13;
  *(&v27[0] + 1) = v15;
  v26[3] = MEMORY[0x1E6969080];
  v26[4] = MEMORY[0x1E6969078];
  v26[0] = v16;
  v26[1] = v18;
  v19 = __swift_project_boxed_opaque_existential_0(v26, MEMORY[0x1E6969080]);
  v20 = *v19;
  v21 = v19[1];
  outlined copy of Data._Representation(v13, v15);
  outlined copy of Data._Representation(v16, v18);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v21, v27);
  outlined consume of Data._Representation(v16, v18);
  outlined consume of Data._Representation(v13, v15);
  __swift_destroy_boxed_opaque_existential_0(v26);
  result = *v27;
  *(a1 + v12[6]) = v27[0];
  return result;
}

uint64_t Curve25519EphemeralKey.publicKeyData.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a2(v7);
  v11 = a3(v10);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5encap06publicE4Data10Foundation0H0V_9CryptoKit09SymmetricE0VtAH_tAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, __int128 *))
{
  v18 = a1;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(a2, a3, &v16);
  if (v5)
  {
    v14 = v17;
    *a4 = v16;
    *(a4 + 16) = v14;
  }

  else
  {
    (*(v11 + 32))(v18, v13, v10);
    outlined copy of Data._Representation(a2, a3);
  }

  return a2;
}

uint64_t _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v64 = a1;
  v66 = type metadata accessor for SymmetricKey();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for KEM.EncapsulationResult();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v70 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLKEM768.PublicKey();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKey();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SharedSecret();
  v75 = *(v73 - 8);
  v16 = MEMORY[0x1EEE9AC00](v73);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v55 - v19;
  v20 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v21);
  v87 = &v55 - v26;
  v27 = a3 >> 62;
  v69 = v12;
  if ((a3 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_10;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = HIDWORD(a2) - a2;
LABEL_10:
  v68 = v11;
  v77 = v25;
  v78 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v31 = *(v4 + *(result + 28));
  v32 = *(v4 + *(result + 32));
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v28 < v34)
  {
    v80 = xmmword_1B26C7200;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v35 = 9;
LABEL_16:
    *a4 = v35;
    *(a4 + 8) = 0;
    *(a4 + 16) = 2;
    return v4;
  }

  v61 = a4;
  v60 = v23;
  outlined copy of Data._Representation(a2, a3);
  specialized Collection.prefix(_:)(v32, a2, a3, &v80);
  v36 = v80;
  outlined copy of Data._Representation(a2, a3);
  specialized Collection.dropFirst(_:)(v32, a2, a3, &v80);
  v4 = *(&v80 + 1);
  v37 = v80;
  outlined copy of Data._Representation(v80, *(&v80 + 1));
  Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  if (v5)
  {

    v80 = xmmword_1B26C6420;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v36, *(&v36 + 1));
    outlined consume of Data._Representation(v37, v4);
    v35 = 32;
    a4 = v61;
    goto LABEL_16;
  }

  v57 = v37;
  v58 = v4;
  v59 = v36;
  v38 = v79;
  Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  (*(v75 + 16))(v18, v38, v73);
  lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
  SymmetricKey.init<A>(data:)();
  v80 = v59;
  outlined copy of Data._Representation(v59, *(&v59 + 1));
  lazy protocol witness table accessor for type Data and conformance Data();
  MLKEM768.PublicKey.init<A>(rawRepresentation:)();
  MLKEM768.PublicKey.encapsulate()();
  v39 = KEM.EncapsulationResult.sharedSecret.getter();
  v85 = xmmword_1B26C6130;
  v86 = 0;
  MEMORY[0x1EEE9AC00](v39);
  *(&v55 - 2) = &v85;
  v40 = SymmetricKey.withUnsafeBytes<A>(_:)();
  MEMORY[0x1EEE9AC00](v40);
  *(&v55 - 2) = &v85;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v61 = 0;
  result = v86;
  v41 = *(&v85 + 1) >> 62;
  if ((*(&v85 + 1) >> 62) > 1)
  {
    v44 = 0;
    v42 = MEMORY[0x1E6969078];
    v43 = v60;
    if (v41 == 2)
    {
      v44 = *(v85 + 24);
    }
  }

  else
  {
    v42 = MEMORY[0x1E6969078];
    v43 = v60;
    if (v41)
    {
      v44 = v85 >> 32;
    }

    else
    {
      v44 = BYTE14(v85);
    }
  }

  if (v44 >= v86)
  {
    v60 = Data._Representation.subscript.getter();
    v56 = v45;
    v46 = KEM.EncapsulationResult.encapsulated.getter();
    v48 = v47;
    Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
    v49 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
    v51 = v50;
    v77 = *(v77 + 8);
    (v77)(v43, v78);
    v84[0] = v46;
    v84[1] = v48;
    v82 = MEMORY[0x1E6969080];
    v83 = v42;
    *&v80 = v49;
    *(&v80 + 1) = v51;
    v52 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E6969080]);
    v54 = *v52;
    v53 = v52[1];
    outlined copy of Data._Representation(v46, v48);
    outlined copy of Data._Representation(v49, v51);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v54, v53, v84);
    outlined consume of Data._Representation(v49, v51);
    outlined consume of Data._Representation(v46, v48);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    v4 = v84[0];
    *&v80 = v60;
    *(&v80 + 1) = v56;
    SymmetricKey.init<A>(data:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    outlined consume of Data._Representation(v57, v58);
    (*(v65 + 8))(v67, v66);
    (*(v62 + 8))(v70, v63);
    (*(v71 + 8))(v76, v72);
    (*(v75 + 8))(v79, v73);
    outlined consume of Data._Representation(v85, *(&v85 + 1));
    (*(v69 + 8))(v74, v68);
    (v77)(v87, v78);
    return v4;
  }

LABEL_28:
  __break(1u);
  return result;
}