uint64_t HandshakeStateMachine.pakeClientState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.IdleState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v1 + *(v12 + 24), v11, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v11, v5, type metadata accessor for HandshakeState.ClientHelloState);
    outlined init with copy of Any?(&v5[*(v3 + 48)], a1, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v14 = type metadata accessor for HandshakeState.ClientHelloState;
    v15 = v5;
  }

  else if (EnumCaseMultiPayload)
  {
    v16 = type metadata accessor for PAKEClientState(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    v14 = type metadata accessor for HandshakeState;
    v15 = v11;
  }

  else
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v11, v8, type metadata accessor for HandshakeState.IdleState);
    outlined init with copy of Any?(&v8[*(v6 + 32)], a1, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v14 = type metadata accessor for HandshakeState.IdleState;
    v15 = v8;
  }

  return outlined destroy of SessionTicket(v15, v14);
}

BOOL HandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v4 + 24), v3, type metadata accessor for HandshakeState);
  v5 = swift_getEnumCaseMultiPayload() > 5;
  outlined destroy of SessionTicket(v3, type metadata accessor for HandshakeState);
  return v5;
}

BOOL HandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v4 + 24), v3, type metadata accessor for HandshakeState);
  v5 = swift_getEnumCaseMultiPayload() != 0;
  outlined destroy of SessionTicket(v3, type metadata accessor for HandshakeState);
  return v5;
}

uint64_t HandshakeStateMachine.clientRandom.getter()
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = xmmword_1B26C6130;
  v8 = 0;
  v1 = (v0 + *(type metadata accessor for HandshakeStateMachine(0) + 32));
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v6[3] = MEMORY[0x1E69E6290];
  v6[4] = MEMORY[0x1E6969DF8];
  v6[0] = v4;
  v6[1] = &v5;
  __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v7;
}

void HandshakeStateMachine.logUnexpectedMessage(message:)(uint64_t a1)
{
  v3 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v1 + *(v6 + 24), v5, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v10 = 0x6548726576726573;
    if (EnumCaseMultiPayload == 1)
    {
      v10 = 0x6548746E65696C63;
    }

    if (EnumCaseMultiPayload)
    {
      v8 = v10;
    }

    else
    {
      v8 = 1701602409;
    }

    if (EnumCaseMultiPayload)
    {
      v9 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v9 = 0x80000001B26CD890;
      v8 = 0xD000000000000017;
    }

    else
    {
      v9 = 0xEC00000061746144;
      v8 = 0x726F467964616572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v8 = 0xD000000000000019;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v9 = 0x80000001B26CD8D0;
    }

    else
    {
      v9 = 0x80000001B26CD8B0;
    }
  }

  outlined destroy of SessionTicket(v5, type metadata accessor for HandshakeState);
  v11 = 0xE800000000000000;
  v12 = *(a1 + 104);
  v13 = 0x64656873696E6966;
  if (v12 != 6)
  {
    v13 = 0xD000000000000010;
    v11 = 0x80000001B26CD8F0;
  }

  v14 = 0xEB00000000657461;
  v15 = 0x6369666974726563;
  if (v12 != 4)
  {
    v15 = 0xD000000000000011;
    v14 = 0x80000001B26CD910;
  }

  if (*(a1 + 104) <= 5u)
  {
    v13 = v15;
    v11 = v14;
  }

  v16 = 0x80000001B26CD950;
  v17 = 0xD000000000000013;
  if (v12 != 2)
  {
    v17 = 0xD000000000000012;
    v16 = 0x80000001B26CD930;
  }

  v18 = 0x6548726576726573;
  if (!*(a1 + 104))
  {
    v18 = 0x6548746E65696C63;
  }

  if (*(a1 + 104) <= 1u)
  {
    v17 = v18;
    v16 = 0xEB000000006F6C6CLL;
  }

  if (*(a1 + 104) <= 3u)
  {
    v19 = v17;
  }

  else
  {
    v19 = v13;
  }

  if (v12 <= 3)
  {
    v20 = v16;
  }

  else
  {
    v20 = v11;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315394;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v29);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_1B25F5000, v22, v23, "unexpected message %s in state %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v25, -1, -1);
    MEMORY[0x1B274ECF0](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t Collection<>.confirmNegotiated(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = Sequence<>.contains(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  if (v6)
  {
    v12 = *(AssociatedTypeWitness - 8);
    (*(v12 + 16))(a4, a1, AssociatedTypeWitness);
    v8 = v12;
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v8 + 56);

  return v10(a4, v9, 1, AssociatedTypeWitness);
}

BOOL TLSHandshakeStateMachine.isServer.getter()
{
  v1 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SessionTicket(v0, v3, type metadata accessor for TLSHandshakeStateMachine);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  outlined destroy of SessionTicket(v3, type metadata accessor for TLSHandshakeStateMachine);
  return v4;
}

uint64_t outlined init with copy of SwiftTLSClock(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_1B26C6130;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_1B26C6130;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = MEMORY[0x1B274CD90]();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = MEMORY[0x1B274CD90]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = MEMORY[0x1B274CD90]();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t type metadata accessor for SwiftTLSClock()
{
  result = lazy cache variable for type metadata for SwiftTLSClock;
  if (!lazy cache variable for type metadata for SwiftTLSClock)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SwiftTLSClock);
  }

  return result;
}

uint64_t type metadata completion function for TLSHandshakeStateMachine(uint64_t a1)
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for HandshakeStateMachine.ProcessStep(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for HandshakeStateMachine.ProcessStep(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for HandshakeStateMachine.ProcessStep(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v99 = a5;
  v103 = a2;
  v92 = a1;
  v9 = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v76 - v10;
  v11 = type metadata accessor for SymmetricKey();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA384();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA384Digest();
  v82 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
  v101 = v15;
  v95 = v17;
  v18 = dispatch thunk of static Digest.byteCount.getter();
  *&v110[0] = specialized Data.init(count:)(v18);
  *(&v110[0] + 1) = v19;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v110, 0);
  v100 = *(&v110[0] + 1);
  v20 = *&v110[0];
  v21 = *(&v110[0] + 1) >> 62;
  if ((*(&v110[0] + 1) >> 62) > 1)
  {
    if (v21 == 2)
    {
      v9 = *(*&v110[0] + 16);
    }
  }

  else if (v21)
  {
    v9 = SLODWORD(v110[0]);
  }

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
  v22 = swift_allocObject();
  v102 = xmmword_1B26C6030;
  *(v22 + 16) = xmmword_1B26C6030;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 48) = v99;
  *(v22 + 56) = a6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = v102;
  v24 = v100;
  *(v23 + 32) = v20;
  *(v23 + 40) = v24;
  *(v23 + 48) = v9;
  v109 = 0;
  v25 = v20;
  v26 = *(v103 + 96);
  outlined copy of Data._Representation(a3, a4);
  v89 = v25;
  outlined copy of Data._Representation(v25, v24);
  v98 = v22;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = a3;
  v85 = a4;
  v83 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
  }

  *(v26 + 2) = v29 + 1;
  v30 = &v26[88 * v29];
  *(v30 + 4) = v98;
  *(v30 + 5) = v23;
  v30[48] = v109;
  v30[112] = -96;
  v31 = v103;
  *(v103 + 96) = v26;
  v107 = xmmword_1B26C6130;
  v108 = 0;
  v32 = v31[5];
  v110[4] = v31[4];
  v110[5] = v32;
  v111 = v26;
  v33 = v31[1];
  v110[0] = *v31;
  v110[1] = v33;
  v34 = v31[3];
  v110[2] = v31[2];
  v110[3] = v34;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, logger);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = dispatch thunk of static Digest.byteCount.getter() + 3;
    _os_log_impl(&dword_1B25F5000, v36, v37, "bindersarray length should be %ld", v38, 0xCu);
    MEMORY[0x1B274ECF0](v38, -1, -1);
  }

  v39 = *(&v107 + 1) >> 62;
  if ((*(&v107 + 1) >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_22;
    }

    v40 = *(v107 + 24);
  }

  else
  {
    if (!v39)
    {
      goto LABEL_22;
    }

    v40 = v107 >> 32;
  }

  if (v40 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v79 = v23;
  v41 = Data._Representation.subscript.getter();
  v43 = v42;
  v44 = dispatch thunk of static Digest.byteCount.getter();
  specialized BidirectionalCollection.dropLast(_:)(v44 + 3, v41, v43, v105);
  v46 = *(&v105[0] + 1);
  v45 = *&v105[0];
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  v47 = v88;
  v48 = v91;
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v45, v46);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v45, v46, v47);
  v77 = v46;
  v78 = v45;
  outlined consume of Data._Representation(v45, v46);
  v49 = v96;
  dispatch thunk of HashFunction.finalize()();
  (*(v90 + 8))(v47, v48);
  v50 = dispatch thunk of static Digest.byteCount.getter();
  v51 = v97;
  v52 = _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v50, v97);
  v53 = &v76;
  MEMORY[0x1EEE9AC00](v52);
  *(&v76 - 2) = v51;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  v54 = v93;
  v55 = v49;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v56 = _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v54);
  v58 = v57;
  v60 = v59;
  outlined consume of Data._Representation(v89, v100);
  v61 = *(&v107 + 1) >> 62;
  if ((*(&v107 + 1) >> 62) > 1)
  {
    v62 = 0;
    if (v61 == 2)
    {
      v62 = *(v107 + 24);
    }
  }

  else if (v61)
  {
    v62 = v107 >> 32;
  }

  else
  {
    v62 = BYTE14(v107);
  }

  v63 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v63 == 2)
    {
      v64 = *(v56 + 24);
    }

    else
    {
      v64 = 0;
    }
  }

  else if (v63)
  {
    v64 = v56 >> 32;
  }

  else
  {
    v64 = BYTE6(v58);
  }

  v65 = __OFSUB__(v64, v60);
  v66 = v64 - v60;
  if (v65)
  {
    __break(1u);
  }

  else
  {
    v53 = v111;
    ByteBuffer.setImmutableBuffer(_:at:)(v56, v58, v60, v62 - v66);
    v54 = *(v53 + 2);
    v55 = swift_allocObject();
    *(v55 + 16) = v102;
    v68 = v84;
    v67 = v85;
    *(v55 + 32) = v84;
    *(v55 + 40) = v67;
    *(v55 + 48) = v99;
    *(v55 + 56) = v83;
    v46 = swift_allocObject();
    *(v46 + 16) = v102;
    *(v46 + 32) = v56;
    *(v46 + 40) = v58;
    *(v46 + 48) = v60;
    outlined copy of Data._Representation(v68, v67);
    outlined copy of Data._Representation(v56, v58);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_37;
    }
  }

  v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
LABEL_37:
  outlined consume of Data._Representation(v78, v77);

  v104 = 0;

  (*(v82 + 8))(v96, v101);
  result = (*(v86 + 8))(v97, v87);
  if (v54)
  {
    if (v54 <= *(v53 + 2))
    {
      v70 = &v53[88 * v54];
      v71 = *(v70 - 40);
      v105[0] = *(v70 - 56);
      v105[1] = v71;
      v72 = *(v70 - 24);
      v73 = *(v70 - 8);
      v74 = *(v70 + 8);
      v106 = v70[24];
      v105[3] = v73;
      v105[4] = v74;
      v105[2] = v72;
      *(v70 - 7) = v55;
      *(v70 - 6) = v46;
      *(v70 - 40) = v104;
      v70[24] = -96;
      outlined destroy of Extension(v105);
      *(v103 + 96) = v53;
      v75 = v107;
      outlined copy of Data._Representation(v107, *(&v107 + 1));
      outlined consume of Data._Representation(v75, *(&v75 + 1));
      outlined consume of Data._Representation(v56, v58);
      return v75;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HandshakeState.IdleState.init(configuration:sessionToResume:epsks:pakeClientState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for HandshakeState.IdleState(0);
  v11 = v10[5];
  v12 = type metadata accessor for SessionTicket(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = v10[8];
  v14 = type metadata accessor for PAKEClientState(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v15;
  *(a5 + 64) = *(a1 + 64);
  v16 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v16;
  outlined assign with take of PartialHandshakeResult?(a2, a5 + v11, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(a5 + v10[7]) = a3;
  return outlined assign with take of PartialHandshakeResult?(a4, a5 + v13, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
}

uint64_t HandshakeState.logDescription.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v0, v3, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v8 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v8 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v7 = v8;
    }

    else
    {
      v7 = 1701602409;
    }
  }

  else
  {
    v5 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v5 = 0x726F467964616572;
    }

    v6 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v6 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  outlined destroy of HandshakeState(v3, type metadata accessor for HandshakeState);
  return v7;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO18sendingClientHello_15sessionToResume5epsks17ephemeralKeyShare11currentTimeAA07PartialC6ResultVAA0fG0Vz_AA13SessionTicketVSgSayAA11GeneralEPSKVGAA025GeneratedEphemeralPrivateM0OSg10Foundation4DateVtAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *&v83 = a6;
  v80 = a7;
  v94 = a3;
  *&v82 = a5;
  v85 = a4;
  v91 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v75 - v9;
  v10 = type metadata accessor for SymmetricKey();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v92 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v90 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v75 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v109);
  v21 = &v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v75 - v23;
  v84 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v25 = MEMORY[0x1EEE9AC00](v84);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v75 - v28;
  v29 = type metadata accessor for HandshakeState.IdleState(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v95, v34, type metadata accessor for HandshakeState);
  v78 = v32;
  if (swift_getEnumCaseMultiPayload())
  {
    result = outlined destroy of HandshakeState(v34, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with take of HandshakeState.IdleState(v34, v31, type metadata accessor for HandshakeState.IdleState);
  v35 = v31[64];
  v36 = v29;
  outlined init with copy of Any?(&v31[*(v29 + 24)], v24, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v24, v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() < 4)
  {
    outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v95 = xmmword_1B26C6450;
    v97 = xmmword_1B26C6450;
    LOBYTE(v98) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeState(v31, type metadata accessor for HandshakeState.IdleState);
    result = outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v38 = v83;
    *v83 = v95;
    *(v38 + 16) = 2;
    return result;
  }

  v39 = v81;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v81, a1, v91, v94, v35, v82);
  v76 = v41;
  v77 = v40;
  v75 = v42;
  outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v39, v24, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  v43 = *(v31 + 3);
  v99 = *(v31 + 2);
  v100 = v43;
  v101 = v31[64];
  v44 = *(v31 + 1);
  v97 = *v31;
  v98 = v44;
  v45 = *(a1 + 80);
  v109 = *(a1 + 72);
  v46 = *(a1 + 40);
  v82 = *(a1 + 56);
  v83 = v46;
  v47 = *(a1 + 16);
  v102 = *a1;
  v103 = v47;
  v48 = *(a1 + 32);
  v49 = *(a1 + 48);
  v50 = *(a1 + 64);
  v51 = *(a1 + 80);
  v108 = *(a1 + 96);
  v106 = v50;
  v107 = v51;
  v104 = v48;
  v105 = v49;
  v81 = ClientHello.serverCertificateTypes.getter();
  outlined init with copy of Any?(v85, v90, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v52 = v84;
  outlined init with copy of Any?(v24, &v27[*(v84 + 36)], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v91, v92, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  outlined init with copy of Any?(&v31[*(v36 + 32)], v93, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v53 = v52[8];
  v54 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v54 - 8) + 56))(&v27[v53], 1, 1, v54);
  v55 = v52[10];
  v56 = type metadata accessor for SessionTicket(0);
  (*(*(v56 - 8) + 56))(&v27[v55], 1, 1, v56);
  v57 = v52[12];
  v58 = type metadata accessor for PAKEClientState(0);
  (*(*(v58 - 8) + 56))(&v27[v57], 1, 1, v58);
  v59 = v100;
  *(v27 + 2) = v99;
  *(v27 + 3) = v59;
  v27[64] = v101;
  v60 = v98;
  *v27 = v97;
  *(v27 + 1) = v60;
  v61 = v83;
  *(v27 + 88) = v82;
  *(v27 + 72) = v61;
  *(v27 + 13) = v109;
  *(v27 + 14) = v45;
  *(v27 + 15) = v81;
  outlined init with copy of HandshakeStateMachine.Configuration(&v97, &v96);

  outlined assign with take of PartialHandshakeResult?(v90, &v27[v53], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  outlined assign with take of PartialHandshakeResult?(v92, &v27[v55], &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  *&v27[v52[11]] = v94;

  outlined assign with take of PartialHandshakeResult?(v93, &v27[v57], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v62 = v86;
  outlined init with take of HandshakeState.IdleState(v27, v86, type metadata accessor for HandshakeState.ClientHelloState);
  v63 = v87;
  specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter(v87);
  v65 = v88;
  v64 = v89;
  result = (*(v88 + 48))(v63, 1, v89);
  if (result == 1)
  {
    goto LABEL_8;
  }

  v66 = v95;
  outlined destroy of HandshakeState(v95, type metadata accessor for HandshakeState);
  outlined destroy of HandshakeState(v31, type metadata accessor for HandshakeState.IdleState);
  v67 = *(v65 + 32);
  v68 = v79;
  v67(v79, v63, v64);
  outlined init with take of HandshakeState.IdleState(v62, v66, type metadata accessor for HandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  v69 = type metadata accessor for PartialHandshakeResult(0);
  v70 = v69[5];
  v71 = v80;
  v67(&v80[v70], v68, v64);
  v72 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(*(v72 - 8) + 56);
  v73(&v71[v70], 0, 1, v72);
  result = v73(&v71[v69[6]], 1, 1, v72);
  v74 = v76;
  *v71 = v77;
  *(v71 + 1) = v74;
  *(v71 + 2) = v75;
  *&v71[v69[7]] = xmmword_1B26C5EF0;
  return result;
}

uint64_t HandshakeState.ReadyState.generateHMACForAuthenticator(transcript:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17[-v10];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 == 2)
    {
      v13 = *(a1 + 24);
    }
  }

  else if (v12)
  {
    v13 = a1 >> 32;
  }

  else
  {
    v13 = BYTE6(a2);
  }

  if (v13 < a3)
  {
    __break(1u);
  }

  else
  {
    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    MEMORY[0x1EEE9AC00](v14);
    *&v17[-16] = a4;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:), &v17[-32], v14, v16);
    outlined consume of Data._Representation(v14, v16);
    return _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v11);
  }

  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedCipherSuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionTicket(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HandshakeState(v1, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v7;
    }

    else
    {
      outlined init with take of HandshakeState.IdleState(v7, v4, type metadata accessor for SessionTicket);
      v9 = *&v4[*(v2 + 44)];
      outlined destroy of HandshakeState(v4, type metadata accessor for SessionTicket);
    }
  }

  else
  {
    v9 = *v7;
  }

  return v9;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionTicket(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of HandshakeState(v1, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *(v7 + 1);

LABEL_6:
    v10 = 0;
    return v9 | (v10 << 16);
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of HandshakeState.IdleState(v7, v4, type metadata accessor for SessionTicket);
    v9 = *&v4[*(v2 + 48)];
    outlined destroy of HandshakeState(v4, type metadata accessor for SessionTicket);
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  return v9 | (v10 << 16);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO011ClientHelloD0V07sendingeF008originalD006clientF015sessionToResume5epsks11useRawEPSKs17ephemeralKeyShare11currentTimeAE5state_AA10ByteBufferV0iF5BytestAC04IdleD0V_AA0eF0VzAA13SessionTicketVSgSayAA11GeneralEPSKVGSbAA025GeneratedEphemeralPrivateR0OSg10Foundation4DateVtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a8;
  v63 = a7;
  LODWORD(v61) = a6;
  v82 = a5;
  v64 = a4;
  *&v68 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v53 - v24;
  v60 = type metadata accessor for HandshakeState.IdleState(0);
  outlined init with copy of Any?(v68 + *(v60 + 24), v25, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v25, v22, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v27 = v64;
    _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v19, a3, v64, v82, v61 & 1, v62);
    v61 = v29;
    v62 = v28;
    v59 = v30;
    outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    outlined init with take of P256.Signing.PublicKey?(v19, v25, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
    swift_storeEnumTagMultiPayload();
    v31 = v68;
    v32 = *(v68 + 48);
    v72 = *(v68 + 32);
    v73 = v32;
    v74 = *(v68 + 64);
    v33 = *(v68 + 16);
    v70 = *v68;
    v71 = v33;
    v34 = *(a3 + 72);
    v57 = *(a3 + 80);
    v58 = v34;
    v35 = *(a3 + 40);
    v55 = *(a3 + 56);
    v56 = v35;
    v36 = *(a3 + 16);
    v75 = *a3;
    v76 = v36;
    v37 = *(a3 + 32);
    v38 = *(a3 + 48);
    v39 = *(a3 + 64);
    v40 = *(a3 + 80);
    v81 = *(a3 + 96);
    v79 = v39;
    v80 = v40;
    v77 = v37;
    v78 = v38;
    v54 = ClientHello.serverCertificateTypes.getter();
    outlined init with copy of Any?(v63, v66, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v41 = type metadata accessor for HandshakeState.ClientHelloState(0);
    outlined init with copy of Any?(v25, a1 + v41[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v42 = v65;
    outlined init with copy of Any?(v27, v65, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined init with copy of Any?(v31 + *(v60 + 32), v67, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v43 = v41[8];
    v44 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    (*(*(v44 - 8) + 56))(a1 + v43, 1, 1, v44);
    v45 = v41[10];
    v46 = type metadata accessor for SessionTicket(0);
    (*(*(v46 - 8) + 56))(a1 + v45, 1, 1, v46);
    v47 = v41[12];
    v48 = type metadata accessor for PAKEClientState(0);
    (*(*(v48 - 8) + 56))(a1 + v47, 1, 1, v48);
    v49 = v73;
    *(a1 + 32) = v72;
    *(a1 + 48) = v49;
    *(a1 + 64) = v74;
    v50 = v71;
    *a1 = v70;
    *(a1 + 16) = v50;
    v51 = v56;
    *(a1 + 88) = v55;
    *(a1 + 72) = v51;
    v52 = v57;
    *(a1 + 104) = v58;
    *(a1 + 112) = v52;
    *(a1 + 120) = v54;
    outlined init with copy of HandshakeStateMachine.Configuration(&v70, &v69);

    outlined assign with take of PartialHandshakeResult?(v66, a1 + v43, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    outlined assign with take of PartialHandshakeResult?(v42, a1 + v45, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    *(a1 + v41[11]) = v82;

    outlined assign with take of PartialHandshakeResult?(v67, a1 + v47, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    return v62;
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v68 = xmmword_1B26C6450;
    v70 = xmmword_1B26C6450;
    LOBYTE(v71) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    *a9 = v68;
    *(a9 + 16) = 2;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v152 = a8;
  v151 = a7;
  v150 = a6;
  v155 = a5;
  v157 = a4;
  v156 = a3;
  v146 = a1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v158 = *(v159 - 8);
  v11 = MEMORY[0x1EEE9AC00](v159);
  v149 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v166 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v148 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v143 - v17;
  v18 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v164 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v163 = &v143 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v154 = (&v143 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v168 = &v143 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v143 - v31;
  v162 = type metadata accessor for SessionTicket(0);
  v33 = MEMORY[0x1EEE9AC00](v162);
  v153 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v143 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v147 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v143 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v145 = &v143 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v143 - v45;
  v47 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v48 = *(a2 + v47[11]);
  v180 = v47;
  if ((v48 & 1) == 0 && (*(a2 + v47[10]) & 1) == 0)
  {
    outlined init with copy of Any?(a2 + v47[12], v46, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v49 = type metadata accessor for PAKEClientState(0);
    v50 = v41;
    v51 = a2;
    v52 = (*(*(v49 - 8) + 48))(v46, 1, v49);
    outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v47 = v180;
    v53 = v52 == 1;
    a2 = v51;
    v41 = v50;
    if (v53)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, logger);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1B25F5000, v55, v56, "received server finished message while not resuming session or using an external pre shared key", v57, 2u);
        MEMORY[0x1B274ECF0](v57, -1, -1);
      }

      v171 = xmmword_1B26C6430;
      v58 = 2;
      LOBYTE(v172) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v59 = 0;
      v60 = 4;
      goto LABEL_49;
    }
  }

  v61 = v47;
  v62 = type metadata accessor for PeerCertificateBundle(0);
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v169 = v41;
  v161 = v64;
  v160 = v63 + 56;
  v64(v41, 1, 1, v62);
  v65 = a2;
  v66 = v61[5];
  v67 = v65;
  outlined init with copy of Any?(v65 + v66, v32, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v68 = *(v19 + 48);
  v69 = v68(v32, 1, v18);
  v144 = v62;
  if (v69 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v32, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v70 = v169;
      outlined destroy of P256.Signing.PrivateKey?(v169, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      outlined init with take of HandshakeState.IdleState(v32, v36, type metadata accessor for SessionTicket);
      v71 = *&v36[v162[11]];
      v72 = *&v36[v162[12]];
      outlined init with copy of HandshakeState(&v36[v162[14]], v70, type metadata accessor for PeerCertificateBundle);
      outlined destroy of HandshakeState(v36, type metadata accessor for SessionTicket);
      v73 = 1;
      v161(v70, 0, 1, v62);
      LODWORD(v168) = 0;
      LODWORD(v163) = 0;
      v74 = 0;
      v75 = v167;
      v76 = v67;
      v77 = v70;
LABEL_17:
      v81 = v166;
      goto LABEL_33;
    }

    outlined destroy of HandshakeState(v32, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  }

  v78 = v67 + v66;
  v76 = v67;
  outlined init with copy of Any?(v78, v30, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v79 = v68(v30, 1, v18);
  v80 = v164;
  if (v79 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
    LODWORD(v168) = 0;
    v72 = 0;
    v71 = 0;
    v73 = 1;
    LODWORD(v163) = 1;
    v74 = 1;
    v75 = v167;
    v77 = v169;
    goto LABEL_17;
  }

  v77 = v169;
  outlined destroy of P256.Signing.PrivateKey?(v169, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v82 = v168;
  outlined init with take of HandshakeState.IdleState(v30, v168, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  v83 = v154;
  outlined init with copy of HandshakeState(v82, v154, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v75 = v167;
  v81 = v166;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v71 = *v83;
    }

    else
    {
      v85 = v153;
      outlined init with take of HandshakeState.IdleState(v83, v153, type metadata accessor for SessionTicket);
      v71 = *(v85 + v162[11]);
      outlined destroy of HandshakeState(v85, type metadata accessor for SessionTicket);
    }
  }

  else
  {
    v71 = *v83;
  }

  outlined init with copy of HandshakeState(v168, v163, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  v86 = swift_getEnumCaseMultiPayload();
  if (!v86)
  {
    v72 = *(v163 + 2);

LABEL_28:
    LODWORD(v163) = 0;
    goto LABEL_29;
  }

  if (v86 != 1)
  {
    v87 = v71;
    v88 = v76;
    v89 = v153;
    outlined init with take of HandshakeState.IdleState(v163, v153, type metadata accessor for SessionTicket);
    v90 = *(v89 + v162[12]);
    v91 = v89;
    v76 = v88;
    v71 = v87;
    v72 = v90;
    outlined destroy of HandshakeState(v91, type metadata accessor for SessionTicket);
    goto LABEL_28;
  }

  v72 = 0;
  LODWORD(v163) = 1;
LABEL_29:
  outlined init with take of HandshakeState.IdleState(v168, v80, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LODWORD(v168) = *(v80 + 2);
    v73 = *(v80 + 4);
  }

  else
  {
    outlined destroy of HandshakeState(v80, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    LODWORD(v168) = 0;
    v73 = 1;
  }

  v161(v77, 1, 1, v62);
  v74 = 0;
LABEL_33:
  outlined init with copy of Any?(v76 + v180[9], v75, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v92 = v165;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v178, v81);
  if (v92)
  {
    v60 = v178[0];
    v59 = v178[1];
    v58 = v179;
    outlined destroy of P256.Signing.PrivateKey?(v75, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    outlined destroy of P256.Signing.PrivateKey?(v77, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    goto LABEL_49;
  }

  v93 = v157 >> 62;
  if ((v157 >> 62) > 1)
  {
    v94 = v155;
    if (v93 == 2)
    {
      v95 = *(v156 + 24);
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v94 = v155;
    if (v93)
    {
      v95 = v156 >> 32;
    }

    else
    {
      v95 = BYTE6(v157);
    }
  }

  if (v95 < v94)
  {
    __break(1u);
    goto LABEL_61;
  }

  LODWORD(v165) = v73;
  LODWORD(v166) = v72;
  LODWORD(v167) = v71;
  *&v171 = Data._Representation.subscript.getter();
  *(&v171 + 1) = v96;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B8]);
  lazy protocol witness table accessor for type Data and conformance Data();
  v97 = v81;
  v98 = v159;
  v99 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v171, *(&v171 + 1));
  v100 = *(v158 + 8);
  v100(v97, v98);
  if ((v99 & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_46:
      v101 = type metadata accessor for Logger();
      __swift_project_value_buffer(v101, logger);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      v104 = os_log_type_enabled(v102, v103);
      v105 = v169;
      if (v104)
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_1B25F5000, v102, v103, "invalid server finished payload", v106, 2u);
        MEMORY[0x1B274ECF0](v106, -1, -1);
      }

      v171 = xmmword_1B26C6400;
      v58 = 2;
      LOBYTE(v172) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v75, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      outlined destroy of P256.Signing.PrivateKey?(v105, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      v59 = 0;
      v60 = 6;
      goto LABEL_49;
    }

LABEL_61:
    swift_once();
    goto LABEL_46;
  }

  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v150, v151, v152);
  v107 = v149;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v178, v149);
  v109 = v159;
  *(&v172 + 1) = v159;
  v164 = 0;
  *&v173 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
  (*(v158 + 16))(boxed_opaque_existential_1, v107, v109);
  __swift_project_boxed_opaque_existential_0(&v171, *(&v172 + 1));
  v111 = v164;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v112 = v111;
  v100(v107, v109);
  v113 = v170[0];
  v114 = v170[1];
  __swift_destroy_boxed_opaque_existential_0(&v171);
  v115 = 0;
  v176 = xmmword_1B26C6130;
  v177 = 0;
  v116 = v114 >> 62;
  if ((v114 >> 62) > 1)
  {
    if (v116 == 2)
    {
      v115 = *(v113 + 16);

      goto LABEL_56;
    }
  }

  else if (v116)
  {
    v115 = v113;
LABEL_56:
  }

  specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v113, v114, v115);
  outlined consume of Data._Representation(v113, v114);
  v117 = v176;
  v118 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v176, *(&v176 + 1), v177);
  v59 = v120;
  v121 = v114;
  if (!v112)
  {
    v164 = 0;
    outlined consume of Data._Representation(v113, v114);
    v122 = *(v76 + 48);
    v173 = *(v76 + 32);
    v174 = v122;
    v175 = *(v76 + 64);
    v123 = *(v76 + 16);
    v171 = *v76;
    v172 = v123;
    outlined init with take of P256.Signing.PublicKey?(v169, v147, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v124 = v180;
    v125 = v180[7];
    v126 = (v76 + v180[6]);
    v127 = v126[1];
    v159 = *v126;
    v129 = *(v76 + v125 + 8);
    v157 = *(v76 + v125);
    v128 = v157;
    v156 = v129;
    v155 = *(v76 + v125 + 16);
    LODWORD(v162) = *(v76 + v180[8]);
    outlined init with take of P256.Signing.PublicKey?(v75, v148, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    LODWORD(v169) = *(v76 + v124[10]);
    v130 = v124[12];
    LODWORD(v180) = *(v76 + v124[13]);
    v131 = v145;
    outlined init with copy of Any?(v76 + v130, v145, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v132 = type metadata accessor for PAKEClientState(0);
    LODWORD(v158) = (*(*(v132 - 8) + 48))(v131, 1, v132) != 1;
    outlined init with copy of HandshakeStateMachine.Configuration(&v171, v170);

    outlined copy of Data?(v128, v129);
    outlined destroy of P256.Signing.PrivateKey?(v131, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    ready = type metadata accessor for HandshakeState.ReadyState(0);
    v134 = ready[7];
    v135 = v146;
    v161(v146 + v134, 1, 1, v144);
    v136 = (v135 + ready[8]);
    v137 = (v135 + ready[9]);
    *v137 = xmmword_1B26C5EF0;
    v137[2] = 0;
    v138 = v135 + ready[12];
    v139 = v174;
    *(v135 + 32) = v173;
    *(v135 + 48) = v139;
    *(v135 + 64) = v175;
    v140 = v172;
    *v135 = v171;
    *(v135 + 16) = v140;
    *(v135 + 66) = v167;
    *(v135 + 68) = v74;
    *(v135 + 70) = v166;
    *(v135 + 72) = v163;
    outlined assign with take of PartialHandshakeResult?(v147, v135 + v134, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    *v136 = v159;
    v136[1] = v127;
    outlined consume of ByteBuffer?(*v137, v137[1]);
    v141 = v156;
    *v137 = v157;
    v137[1] = v141;
    v137[2] = v155;
    *(v135 + ready[10]) = v162;
    outlined init with take of P256.Signing.PublicKey?(v148, v135 + ready[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    *v138 = v168;
    *(v138 + 2) = v165;
    *(v135 + ready[13]) = v169;
    *(v135 + ready[14]) = v180;
    *(v135 + ready[15]) = v158;
    v142 = *(&v176 + 1);
    v58 = v176;
    outlined copy of Data._Representation(v176, *(&v176 + 1));
    outlined consume of Data._Representation(v58, v142);
    return v58;
  }

  v60 = v118;
  v58 = v119;
  outlined consume of Data._Representation(v113, v121);
  outlined destroy of P256.Signing.PrivateKey?(v75, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined destroy of P256.Signing.PrivateKey?(v169, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  outlined consume of Data._Representation(v117, *(&v117 + 1));
LABEL_49:
  *a10 = v60;
  *(a10 + 8) = v59;
  *(a10 + 16) = v58;
  return v58;
}

uint64_t HandshakeState.IdleState.epsks.getter()
{
  type metadata accessor for HandshakeState.IdleState(0);
}

uint64_t HandshakeState.IdleState.epsks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HandshakeState.IdleState(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

__n128 HandshakeState.ClientHelloState.expectedLegacySessionID.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 HandshakeState.ClientHelloState.expectedLegacySessionID.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

uint64_t HandshakeState.ClientHelloState.allowedCipherSuites.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t HandshakeState.ClientHelloState.serverCertificateTypes.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t HandshakeState.ClientHelloState.epsks.getter()
{
  type metadata accessor for HandshakeState.ClientHelloState(0);
}

uint64_t HandshakeState.ClientHelloState.epsks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HandshakeState.ClientHelloState(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.negotiatedCipherSuite.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.negotiatedGroup.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.sessionResumed.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.pskNegotiatedIndex.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverALPN.getter()
{
  v1 = *(v0 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 24));

  return v1;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverALPN.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverQUICTransportParameters.getter()
{
  v1 = v0 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 28);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void HandshakeState.EncryptedExtensionsState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 28));
  outlined consume of ByteBuffer?(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t HandshakeState.EncryptedExtensionsState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.sessionResumed.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.NewSession.serverName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.PAKESession.negotiatedPAKE.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedPAKE.getter()
{
  v1 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v0, v3, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v3 + 1);
    v5 = v3[4];
  }

  else
  {
    outlined destroy of HandshakeState(v3, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

uint64_t HandshakeState.EncryptedExtensionsState.isResumption.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  outlined init with copy of Any?(v0 + *(v4 + 20), v3, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    return 0;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return result;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  outlined destroy of HandshakeState(v3, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  return v8;
}

uint64_t HandshakeState.ServerCertificateState.serverALPN.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t HandshakeState.ServerCertificateState.serverALPN.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t HandshakeState.ServerCertificateState.serverQUICTransportParameters.getter()
{
  v1 = *(v0 + 88);
  outlined copy of Data?(v1, *(v0 + 96));
  return v1;
}

void HandshakeState.ServerCertificateState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ByteBuffer?(v3[11], v3[12]);
  v3[11] = a1;
  v3[12] = a2;
  v3[13] = a3;
}

uint64_t HandshakeState.ServerCertificateVerifyState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedCipherSuite.setter(uint64_t result)
{
  *(v1 + 66) = result;
  *(v1 + 68) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedGroup.setter(uint64_t result)
{
  *(v1 + 70) = result;
  *(v1 + 72) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverALPN.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverALPN.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

void HandshakeState.ServerCertificateVerifyState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (v4 + *(a4(0) + 36));
  outlined consume of ByteBuffer?(*v8, v8[1]);
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
}

uint64_t HandshakeState.ReadyState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedPAKE.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ReadyState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t outlined assign with take of HandshakeState.ServerHelloState.SessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata completion function for HandshakeState.ServerHelloState(uint64_t a1)
{
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for CipherSuite?, &type metadata for CipherSuite, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for UInt16?, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for HandshakeState.EncryptedExtensionsState(uint64_t a1)
{
  type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for HandshakeState.EncryptedExtensionsState.SessionData?, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for HandshakeState.ServerHelloState.SessionData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for SessionTicket(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeState.EncryptedExtensionsState.SessionData.NewSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeState.EncryptedExtensionsState.SessionData.NewSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for HandshakeState.ServerCertificateState(uint64_t a1)
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PeerCertificateBundle(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for HandshakeState.ServerCertificateVerifyState(uint64_t a1)
{
  type metadata accessor for PeerCertificateBundle(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for HandshakeState.ReadyState(uint64_t a1)
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for CipherSuite?, &type metadata for CipherSuite, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PeerCertificateBundle?, type metadata accessor for PeerCertificateBundle, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ClientSessionKeyManager<SHA384>(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ContentType.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0x14u)
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 == 20)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x15u:
        return 0x7472656C612ELL;
      case 0x16u:
        return 0x616873646E61682ELL;
      case 0x17u:
        return 0xD000000000000010;
    }
  }

  _StringGuts.grow(_:)(25);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t lazy protocol witness table accessor for type ContentType and conformance ContentType()
{
  result = lazy protocol witness table cache variable for type ContentType and conformance ContentType;
  if (!lazy protocol witness table cache variable for type ContentType and conformance ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentType and conformance ContentType);
  }

  return result;
}

unint64_t CipherSuite.description.getter(__int16 a1)
{
  if (a1 == 4865)
  {
    return 0xD000000000000016;
  }

  if (a1 == 4866)
  {
    return 0xD000000000000016;
  }

  lazy protocol witness table accessor for type UInt16 and conformance UInt16();
  v2 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x1B274D610](v2);

  return 30768;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CipherSuite and conformance CipherSuite()
{
  result = lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite;
  if (!lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite);
  }

  return result;
}

uint64_t ByteBuffer.writeProtocolVersion(_:)(__int16 a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return 2;
}

uint64_t ByteBuffer.readProtocolVersion()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v1 = bswap32(v0) >> 16;
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x10000 | v1;
}

uint64_t ProtocolVersion.description.getter(__int16 a1)
{
  if (a1 != 3)
  {
LABEL_10:
    _StringGuts.grow(_:)(37);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v2);

    MEMORY[0x1B274D610](0x3A726F6E696D202CLL, 0xE900000000000020);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  if (HIBYTE(a1) <= 1u)
  {
    if (HIBYTE(a1))
    {
      if (HIBYTE(a1) == 1)
      {
        return 0x303176736C742ELL;
      }

      goto LABEL_10;
    }

    return 0x33766C73732ELL;
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 2u:
        return 0x313176736C742ELL;
      case 3u:
        return 0x323176736C742ELL;
      case 4u:
        return 0x333176736C742ELL;
      default:
        goto LABEL_10;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProtocolVersion and conformance ProtocolVersion()
{
  result = lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion;
  if (!lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion);
  }

  return result;
}

uint64_t ByteBuffer.readableBytesView.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = result >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  if (v4 >= a3)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.writeInteger<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v10 = v9 + 7;
  if (__OFADD__(v9, 7))
  {
    __break(1u);
  }

  if (v10 < 0)
  {
    v10 = v9 + 14;
  }

  v11 = v10 >> 3;
  v12 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  MEMORY[0x1EEE9AC00](v12);
  v16 = v4;
  v15 = 803;
  _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v8, partial apply for closure #1 in ByteBuffer.writeInteger<A>(_:as:), &v17[-4], a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
  (*(v6 + 8))(v8, a3);
  return v11;
}

uint64_t ByteBuffer.readInteger<A>(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v27[3] = *MEMORY[0x1E69E9840];
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v14 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v15 = v14 + 7;
  if (__OFADD__(v14, 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 0)
  {
    v15 = v14 + 14;
  }

  v16 = v5[2];
  v17 = v16 + (v15 >> 3);
  if (__OFADD__(v16, v15 >> 3))
  {
LABEL_17:
    __break(1u);
  }

  v18 = *v5;
  v19 = v5[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 == 2)
    {
      if (*(v18 + 24) < v17)
      {
        goto LABEL_14;
      }
    }

    else if (v17 > 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    MEMORY[0x1EEE9AC00](v14);
    v26 = v17;
    v25 = 4039;
    _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v13, partial apply for closure #1 in ByteBuffer.readInteger<A>(as:), &v27[-4], a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v23);
    (*(v8 + 16))(v11, v13, a2);
    dispatch thunk of FixedWidthInteger.init(bigEndian:)();
    (*(v8 + 8))(v13, a2);
    result = (*(v8 + 56))(a4, 0, 1, a2);
    v5[2] = v17;
    return result;
  }

  v21 = BYTE6(v19);
  v22 = v18 >> 32;
  if (!v20)
  {
    v22 = v21;
  }

  if (v22 >= v17)
  {
    goto LABEL_9;
  }

LABEL_14:
  (*(v8 + 8))(v13, a2);
  return (*(v8 + 56))(a4, 1, 1, a2);
}

uint64_t ByteBuffer.readableBytes.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = a1 >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  result = v4 - a3;
  if (__OFSUB__(v4, a3))
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ByteBuffer.readUInt24()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v1 = v0;
    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    v3 = (v2 & 0x10000) == 0;
    if ((v2 & 0x10000) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 | (v1 << 16);
    }

    v5 = !v3;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  outlined copy of Data._Representation(*a1, v9);
  _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKFAgA10ByteBufferVzAIYKXEfU_(a1, a2, v34, &v36);
  if (v4)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    v12 = v34[0];
    v13 = v34[1];
    v14 = v35;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *&v25 = v12;
    *(&v25 + 1) = v13;
    LOBYTE(v26) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
  }

  else
  {
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v25 = v36;
    v26 = v37;
    if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v25) == 1)
    {
      outlined consume of Data._Representation(*a1, a1[1]);
      v23[6] = v42;
      v23[7] = v43;
      v24 = v44;
      v23[2] = v38;
      v23[3] = v39;
      v23[4] = v40;
      v23[5] = v41;
      v23[0] = v36;
      v23[1] = v37;
      outlined destroy of P256.Signing.PrivateKey?(v23, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      v15 = v43;
      *(a4 + 96) = v42;
      *(a4 + 112) = v15;
      *(a4 + 128) = v44;
      v16 = v39;
      *(a4 + 32) = v38;
      *(a4 + 48) = v16;
      v17 = v41;
      *(a4 + 64) = v40;
      *(a4 + 80) = v17;
      v18 = v37;
      *a4 = v36;
      *(a4 + 16) = v18;
    }

    else
    {
      outlined consume of Data._Representation(v10, v9);
      v19 = v43;
      *(a4 + 96) = v42;
      *(a4 + 112) = v19;
      *(a4 + 128) = v44;
      v20 = v39;
      *(a4 + 32) = v38;
      *(a4 + 48) = v20;
      v21 = v41;
      *(a4 + 64) = v40;
      *(a4 + 80) = v21;
      v22 = v37;
      *a4 = v36;
      *(a4 + 16) = v22;
      _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
    }
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v7 = v6;
  v44 = a1;
  v38 = a6;
  v39 = a2;
  v9 = type metadata accessor for Optional();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v40 = a3;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = *v6;
  v23 = v6[1];
  v43 = v6[2];
  outlined copy of Data._Representation(v22, v23);
  v24 = v45;
  v44(v6, v19);
  if (v24)
  {
    outlined consume of Data._Representation(*v6, v6[1]);
    v25 = *(v13 + 32);
    v26 = v19;
    v27 = v40;
    v25(v21, v26, v40);
    v25(v16, v21, v27);
    *v6 = v22;
    v6[1] = v23;
    v6[2] = v43;
    (*(v13 + 16))(v42, v16, v27);
    swift_willThrowTypedImpl();
    return (*(v13 + 8))(v16, v27);
  }

  else
  {
    v30 = v36;
    v29 = v37;
    v31 = v38;
    v32 = v39;
    v45 = 0;
    v33 = *(v39 - 8);
    if ((*(v33 + 48))(v12, 1, v39) == 1)
    {
      outlined consume of Data._Representation(*v7, v7[1]);
      (*(v30 + 8))(v12, v29);
      *v7 = v22;
      v7[1] = v23;
      v34 = 1;
      v7[2] = v43;
    }

    else
    {
      outlined consume of Data._Representation(v22, v23);
      (*(v33 + 32))(v31, v12, v32);
      v34 = 0;
    }

    return (*(v33 + 56))(v31, v34, 1, v32);
  }
}

uint64_t ByteBuffer.writeVariableLengthVector<A>(lengthFieldType:_:)(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    v15 = BYTE6(v13);
    v16 = v12 >> 32;
    if (!v14)
    {
      v16 = v15;
    }

    goto LABEL_7;
  }

  if (v14 == 2)
  {
    v16 = *(v12 + 24);
LABEL_7:
    v24 = v16;
    goto LABEL_9;
  }

  v24 = 0;
LABEL_9:
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v18 = ByteBuffer.writeInteger<A>(_:as:)(v11, v17, a4, a5);
  v19 = *(v9 + 8);
  v19(v11, a4);
  v20 = a2(v5);
  v26 = v20;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
  ByteBuffer.setInteger<A>(_:at:as:)(v11, v24, v21, a4, a5);
  v19(v11, a4);
  result = v18 + v20;
  if (__OFADD__(v18, v20))
  {
    __break(1u);
  }

  return result;
}

double _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lF@<D0>(uint64_t a1@<X4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF(_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_TA, a1, &type metadata for TLSError, v7, &v10, a3);
  if (v3)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t ByteBuffer.writerIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    return a1 >> 32;
  }

  else
  {
    return BYTE6(a2);
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(v2 + 16);
    }
  }

  else
  {
    v5 = v2;
    if (!v4)
    {
      v5 = 0;
    }
  }

  if (v5 > to)
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v4)
      {
        v7 = v6;
      }
    }

    if (v7 >= to)
    {
      v1[2] = to;
      return;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall ByteBuffer.writeUInt24(_:)(Swift::Int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 > 0xFFFFFF)
  {
    __break(1u);
  }

  v1 = a1;
  LOBYTE(v5) = BYTE2(a1);
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v6 = &v5;
  v7 = (&v5 + 1);
  __swift_project_boxed_opaque_existential_0(&v6, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v6);
  v5 = bswap32(v1) >> 16;
  v8 = v2;
  v9 = v3;
  v6 = &v5;
  v7 = &v6;
  __swift_project_boxed_opaque_existential_0(&v6, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v6);
  return 3;
}

Swift::Int __swiftcall ByteBuffer.setUInt24(_:at:)(Swift::Int _, Swift::Int at)
{
  if (_ > 0xFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = _;
  _ = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(_), at);
  if (__OFADD__(at, _))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = _;
  v5 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v3, at + _);
  v6 = __OFADD__(v4, v5);
  _ = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Data.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void ByteBuffer.setImmutableBuffer(_:at:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }
  }

  else
  {
    v9 = BYTE6(v7);
    if (v8)
    {
      v9 = v6 >> 32;
    }
  }

  if (v9 < a4)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v8 > 1)
  {
    v10 = 0;
    if (v8 == 2)
    {
      v10 = *(v6 + 16);
    }
  }

  else if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a4)
  {
    goto LABEL_60;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = a1 >> 32;
    }

    else
    {
      v12 = BYTE6(a2);
    }

    if (v11)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < a3 || v12 < v13)
  {
    goto LABEL_61;
  }

  v14 = Data._Representation.subscript.getter();
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(v15);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_37;
  }

  v21 = *(v14 + 16);
  v20 = *(v14 + 24);
  v22 = __OFSUB__(v20, v21);
  v19 = v20 - v21;
  if (v22)
  {
    __break(1u);
LABEL_34:
    LODWORD(v19) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v19 = v19;
  }

LABEL_37:
  v23 = *v4;
  v24 = v4[1];
  v25 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    v26 = BYTE6(v24);
    v27 = v23 >> 32;
    if (!v25)
    {
      v27 = v26;
    }

    goto LABEL_43;
  }

  if (v25 == 2)
  {
    v27 = *(v23 + 24);
LABEL_43:
    v28 = v27 - a4;
    if (v28 < v19)
    {
      v19 = v28;
    }

    goto LABEL_48;
  }

  if (v19 >= -a4)
  {
    v19 = -a4;
  }

LABEL_48:
  if (v19 + a4 < a4)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  specialized Data._Representation.withUnsafeBytes<A>(_:)(v14, v15, v4, a4);
  if (v18 <= 1)
  {
    if (!v18)
    {
LABEL_51:
      outlined consume of Data._Representation(v16, v17);
      return;
    }

LABEL_56:
    outlined consume of Data._Representation(v16, v17);
    if (!__OFSUB__(HIDWORD(v16), v16))
    {
      return;
    }

LABEL_64:
    __break(1u);
    return;
  }

  if (v18 != 2)
  {
    goto LABEL_51;
  }

  v30 = *(v16 + 16);
  v29 = *(v16 + 24);
  outlined consume of Data._Representation(v16, v17);
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
    goto LABEL_56;
  }
}

uint64_t ByteBuffer.setInteger<A>(_:at:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v12 = v11 + 7;
  if (__OFADD__(v11, 7))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < 0)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  v14 = a2 + (v12 >> 3);
  if (__OFADD__(a2, v12 >> 3))
  {
    goto LABEL_16;
  }

  if (v5[2] > a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *v5;
  v16 = v5[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v15 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  if (v19 < v14)
  {
LABEL_18:
    __break(1u);
  }

  v20 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  MEMORY[0x1EEE9AC00](v20);
  v25[-4] = v13;
  v25[-3] = v5;
  v24 = v14;
  v23 = 803;
  _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v10, partial apply for closure #1 in ByteBuffer.setInteger<A>(_:at:as:), &v25[-6], a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
  (*(v8 + 8))(v10, a4);
  return v13;
}

uint64_t static FixedWidthInteger.byteWidth.getter(uint64_t a1, uint64_t a2)
{
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v3 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v3 < 0)
    {
      v3 = result + 14;
    }

    return v3 >> 3;
  }

  return result;
}

uint64_t closure #1 in ByteBuffer.writeInteger<A>(_:as:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = a2 - result;
  if (!result)
  {
    v5 = 0;
  }

  if (v5 == a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    v6[3] = MEMORY[0x1E69E6290];
    v6[4] = MEMORY[0x1E6969DF8];
    v6[0] = result;
    v6[1] = a2;
    __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t closure #1 in ByteBuffer.setInteger<A>(_:at:as:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - result;
  if (!result)
  {
    v6 = 0;
  }

  if (v6 == a3)
  {
    if (a6 >= a5)
    {
      v7[3] = MEMORY[0x1E69E6290];
      v7[4] = MEMORY[0x1E6969DF8];
      v7[0] = result;
      v7[1] = a2;
      __swift_project_boxed_opaque_existential_0(v7, MEMORY[0x1E69E6290]);
      Data._Representation.replaceSubrange(_:with:count:)();
      return __swift_destroy_boxed_opaque_existential_0(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in ByteBuffer.readInteger<A>(as:)(uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  if (a3[2] > a4)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(*a3, a3[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    v6 = DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v7, v8);
    *a5 = v6;
  }
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v3 = v1[2];
  v4 = v3 + length;
  if (__OFADD__(v3, length))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4 <= 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v3 = 0;
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v4)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v4 < v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = Data._Representation.subscript.getter();
  v3 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v9, v10);
  v1[2] = v4;
LABEL_16:
  result.value._rawValue = v3;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  if (forwardBy < 0)
  {
    __break(1u);
  }

  else
  {
    specialized Data.append<A>(contentsOf:)(forwardBy, 0);
  }
}

uint64_t ByteBuffer.writeVariableLengthVectorUInt24(_:)(uint64_t (*a1)(uint64_t *))
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
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

  LOBYTE(v15) = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v18 = MEMORY[0x1E69E6290];
  v19 = MEMORY[0x1E6969DF8];
  v16 = &v15;
  v17 = (&v15 + 1);
  __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v15 = 0;
  v18 = v9;
  v19 = v10;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_0(&v16, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v11 = a1(v1);
  if (v11 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v12 = v11;
  v13 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v11), v8);
  if (__OFADD__(v8, v13))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v12, v8 + v13);
  return v12 + 3;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAKGTg504_s15a12TLSLibrary10cd6VSays5p5VGAA8L134OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f38OYKcfc22readCompressionMethodsL_ySays5E6VGAFzFTf3nnpf_nTf1nc_n()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  v1 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v12 = v3;
  result = _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc22readCompressionMethodsL_ySays5UInt8VGAFzF(&v10);
  v5 = v10;
  v6 = v11;
  v7 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v10 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v10 >> 32;
  }

  else
  {
    v8 = BYTE6(v11);
  }

  if (__OFSUB__(v8, v12))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v8 == v12)
    {
      outlined consume of Data._Representation(v10, v11);
      return v9;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      outlined consume of Data._Representation(v5, v6);
      return 1;
    }
  }

  return result;
}

char *_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA11CipherSuiteVGTg504_s15a12TLSLibrary10cd8VSayAA11qr5VGAA8L128OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8g12OYKcfc16reade17SuitesL_ySayAA0J5F6VGAFzFTf3nnpf_nTf1nc_n()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v0 & 0x10000) != 0)
  {
    return 0;
  }

  v1 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(v1 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = v1 >> 32;
  }

  else
  {
    v10 = BYTE6(v2);
  }

  v11 = __OFSUB__(v10, v3);
  v12 = v10 - v3;
  if (v11)
  {
    goto LABEL_40;
  }

  v19 = v1 >> 32;
  v20 = BYTE6(v2);
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 / 2) & ~((v12 + (v12 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v14 = v8 + 2;
  if (__OFADD__(v8, 2))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = v13;
  while (v9 > 1)
  {
    if (v9 == 2)
    {
      if (*(v6 + 24) < v14)
      {
        goto LABEL_30;
      }
    }

    else if (v14 >= 1)
    {
      v18 = 0;
      goto LABEL_34;
    }

LABEL_24:
    if (v14 < v8)
    {
      goto LABEL_39;
    }

    outlined copy of Data._Representation(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v6, v7);
    v17 = *(v4 + 2);
    v16 = *(v4 + 3);
    if (v17 >= v16 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
    }

    *(v4 + 2) = v17 + 1;
    *&v4[2 * v17 + 32] = bswap32(0) >> 16;
    v8 = v14;
    v11 = __OFADD__(v14, 2);
    v14 += 2;
    if (v11)
    {
      goto LABEL_38;
    }
  }

  v15 = v20;
  if (v9)
  {
    v15 = v19;
  }

  if (v15 >= v14)
  {
    goto LABEL_24;
  }

LABEL_30:
  v18 = v20;
  if (v9)
  {
    v18 = v19;
    if (v9 == 2)
    {
      v18 = *(v6 + 24);
    }
  }

LABEL_34:
  if (__OFSUB__(v18, v8))
  {
LABEL_41:
    __break(1u);
  }

  if (v18 == v8)
  {
    outlined consume of Data._Representation(v6, v7);
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v6, v7);
    return 1;
  }

  return v4;
}

void _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L125OIglozo_A2cEIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8E30OYKcfc04readcD7ContextL_yA2FzFTf3nnpf_nTf1nnc_n(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v4 & 0x100) != 0 || (v5 = ByteBuffer.readSlice(length:)(v4), v6 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v8 = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readcD7ContextL_yA2FzFTf4n_g(&v18);
    v11 = v10;
    v12 = v18;
    v13 = v19;
    v14 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v18 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = v18 >> 32;
    }

    else
    {
      v15 = BYTE6(v19);
    }

    if (__OFSUB__(v15, v20))
    {
      __break(1u);
    }

    else if (v15 == v20)
    {
      v16 = v8;
      v17 = v9;
      outlined copy of Data._Representation(v8, v9);
      outlined consume of Data._Representation(v12, v13);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v11;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v12, v13);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }
}

char *_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  v1 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = v1;
  v8 = v2;
  v9 = v2 >> 62;
  v15 = v1 >> 32;
  v4 = MEMORY[0x1E69E7CC0];
  v16 = BYTE6(v2);
  while (v9 > 1)
  {
    if (v9 == 2)
    {
      if (*(v7 + 24) < v6)
      {
        goto LABEL_24;
      }
    }

    else if (v6 >= 1)
    {
      v14 = 0;
      goto LABEL_28;
    }

LABEL_16:
    if (v6 < v3)
    {
      goto LABEL_33;
    }

    outlined copy of Data._Representation(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v7, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v4[v12 + 32] = 0;
    v3 = v6;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_32;
    }
  }

  v10 = v16;
  if (v9)
  {
    v10 = v15;
  }

  if (v10 >= v6)
  {
    goto LABEL_16;
  }

LABEL_24:
  v14 = v16;
  if (v9)
  {
    v14 = v15;
    if (v9 == 2)
    {
      v14 = *(v7 + 24);
    }
  }

LABEL_28:
  if (__OFSUB__(v14, v3))
  {
LABEL_34:
    __break(1u);
  }

  if (v14 == v3)
  {
    outlined consume of Data._Representation(v7, v8);
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v7, v8);
    return 1;
  }

  return v4;
}

void _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_(uint64_t a1@<X0>, void (*a2)(uint64_t *, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a7;
  v62 = a3;
  v63 = a2;
  v67 = a8;
  v68 = *(a5 - 8);
  v69 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v64 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v11 + 8);
  v59 = *(*(v66 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57[1] = v57 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v57 - v16;
  v18 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v61 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v57 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v57 - v25;
  v65 = a1;
  ByteBuffer.readInteger<A>(as:)(v24, a4, v17);
  if ((*(v18 + 48))(v17, 1, a4) == 1)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_28;
  }

  (*(v18 + 32))(v26, v17, a4);
  (*(v18 + 16))(v23, v26, a4);
  v27 = v26;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  *&v70 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v28)
  {
    v27 = v26;
    if (v29 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v32 = v61;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v18 + 8))(v32, a4);
      if (v33)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }

LABEL_10:
    lazy protocol witness table accessor for type Int and conformance Int();
    v30 = v61;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v30, a4);
    if (v31)
    {
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  v27 = v26;
  if (v29 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v70 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v36 = v61;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v36, a4);
    if (v37)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v35 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v38 = dispatch thunk of BinaryInteger._lowWord.getter();
  v39 = *(v18 + 8);
  v39(v23, a4);
  v40 = ByteBuffer.readSlice(length:)(v38);
  if (v41 >> 60 != 15)
  {
    v74 = v40;
    v75 = v41;
    v76 = v42;
    v43 = v64;
    v44 = v77;
    v63(&v74, v72);
    if (v44)
    {
      v45 = v72[0];
      v46 = v72[1];
      v47 = v73;
      v39(v27, a4);
      outlined consume of Data._Representation(v74, v75);
      v48 = v60;
      *v60 = v45;
      v48[1] = v46;
      *(v48 + 16) = v47;
      return;
    }

    v49 = v74;
    v50 = v75;
    v51 = v75 >> 62;
    if ((v75 >> 62) > 1)
    {
      if (v51 == 2)
      {
        v52 = *(v74 + 24);
      }

      else
      {
        v52 = 0;
      }
    }

    else if (v51)
    {
      v52 = v74 >> 32;
    }

    else
    {
      v52 = BYTE6(v75);
    }

    if (!__OFSUB__(v52, v76))
    {
      if (v52 == v76)
      {
        v39(v27, a4);
        outlined consume of Data._Representation(v49, v50);
        v54 = v67;
        v53 = v68;
        v55 = v69;
        (*(v68 + 32))(v67, v43, v69);
        (*(v53 + 56))(v54, 0, 1, v55);
      }

      else
      {
        v56 = v60;
        *v60 = xmmword_1B26C66C0;
        *(v56 + 16) = 2;
        v70 = xmmword_1B26C66C0;
        v71 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        (*(v68 + 8))(v43, v69);
        v39(v27, a4);
        outlined consume of Data._Representation(v49, v50);
      }

      return;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v39(v27, a4);
LABEL_28:
  (*(v68 + 56))(v67, 1, 1, v69);
}

double _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlF@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF(_s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_TA, a1, &type metadata for TLSError, v7, &v10, a3);
  if (v3)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_(uint64_t a1@<X0>, void (*a2)(uint64_t *, void *)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v12 & 0x100) != 0 || (v13 = v12, v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v14 & 0x10000) != 0) || (v15 = ByteBuffer.readSlice(length:)(v14 | (v13 << 16)), v16 >> 60 == 15))
  {
    (*(v9 + 56))(a5, 1, 1, a3);
  }

  else
  {
    v31 = v15;
    v32 = v16;
    v33 = v17;
    a2(&v31, v29);
    if (v5)
    {
      v18 = v29[0];
      v19 = v29[1];
      v20 = v30;
      outlined consume of Data._Representation(v31, v32);
      v21 = v34;
      *v34 = v18;
      v21[1] = v19;
      *(v21 + 16) = v20;
    }

    else
    {
      v22 = v31;
      v23 = v32;
      v24 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v25 = *(v31 + 24);
        }

        else
        {
          v25 = 0;
        }
      }

      else if (v24)
      {
        v25 = v31 >> 32;
      }

      else
      {
        v25 = BYTE6(v32);
      }

      if (__OFSUB__(v25, v33))
      {
        __break(1u);
      }

      else if (v25 == v33)
      {
        outlined consume of Data._Representation(v31, v32);
        (*(v9 + 32))(a5, v11, a3);
        (*(v9 + 56))(a5, 0, 1, a3);
      }

      else
      {
        v26 = v34;
        *v34 = xmmword_1B26C66C0;
        *(v26 + 16) = 2;
        v27 = xmmword_1B26C66C0;
        v28 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        (*(v9 + 8))(v11, a3);
        outlined consume of Data._Representation(v22, v23);
      }
    }
  }
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(MEMORY[0x1E69E7508], partial apply for closure #1 in closure #3 in Data.init<A>(_:), v10, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v9);
}

uint64_t closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a6 + v12) = result;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v6, v5))
    {
LABEL_13:
      MEMORY[0x1B274CD90]();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t specialized static ByteBuffer.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
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
    result = Data._Representation.subscript.getter();
    v11 = result;
    v13 = v12;
    v14 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a4 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = a4 >> 32;
    }

    else
    {
      v15 = BYTE6(a5);
    }

    if (v15 >= a6)
    {
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = specialized static Data.== infix(_:_:)(v11, v13, v16, v17);
      outlined consume of Data._Representation(v16, v18);
      outlined consume of Data._Representation(v11, v13);
      return v19;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t specialized Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v32, &v34);
    __swift_project_boxed_opaque_existential_0(&v34, v35);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_0(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  outlined destroy of P256.Signing.PrivateKey?(v32, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v32[0] = specialized Data._Representation.init(count:)(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x1EEE9AC00](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v26) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of ByteBuffer?(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  outlined consume of ByteBuffer?(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  outlined copy of Data._Representation(*&v32[0], *(&v32[0] + 1));
  outlined consume of Data._Representation(v27, *(&v27 + 1));
  return v27;
}

unint64_t lazy protocol witness table accessor for type ByteBuffer and conformance ByteBuffer()
{
  result = lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer;
  if (!lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer);
  }

  return result;
}

uint64_t static PAKEScheme.fromFeatureFlags()()
{
  v2[3] = &type metadata for SwiftTLSFeatureFlags;
  v2[4] = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v2);
  if (v0)
  {
    return 32150;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _s15SwiftTLSLibrary15PAKEServerStateVyAcA0C6RecordVAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = type metadata accessor for SPAKE2.CipherSuite();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SPAKE2.Verifier();
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_1B26C5EF0;
  v10 = type metadata accessor for PAKEServerState(0);
  v11 = v10[5];
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(*(v12 - 8) + 56);
  v86 = v11;
  result = v13(a3 + v11, 1, 1, v12);
  v15 = (a3 + v10[6]);
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0xF000000000000000;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  *(a3 + v10[7]) = 0;
  v16 = (a3 + v10[8]);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  v19 = *(a1 + 3);
  v16[4] = *(a1 + 4);
  v16[5] = v17;
  v16[6] = v18;
  *(v16 + 106) = *(a1 + 53);
  v20 = *(a1 + 1);
  v21 = *(a1 + 2);
  *v16 = *a1;
  v16[1] = v20;
  v16[2] = v21;
  v16[3] = v19;
  v22 = *a1;
  if (v22 != 0xFFFF && v22 != 32150)
  {
    *&v78[0] = 0;
    *(&v78[0] + 1) = 0xE000000000000000;
    outlined init with copy of PAKEServerRecord(a1, &v79);
    _StringGuts.grow(_:)(26);

    *&v79 = 0xD000000000000018;
    *(&v79 + 1) = 0x80000001B26CE210;
    v31 = PAKEScheme.description.getter(v22);
    MEMORY[0x1B274D610](v31);

    v32 = *(&v79 + 1);
    v33 = v79;
    v34 = 1;
    LOBYTE(v80) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of PAKEServerRecord(a1);
LABEL_37:
    outlined consume of ByteBuffer?(*a3, *(a3 + 8));
    outlined destroy of P256.Signing.PrivateKey?(a3 + v86, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v54 = v15[3];
    v78[2] = v15[2];
    v55 = v15[4];
    v78[3] = v54;
    v78[4] = v55;
    v56 = *v15;
    v78[1] = v15[1];
    v78[0] = v56;
    outlined destroy of P256.Signing.PrivateKey?(v78, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMR);
    v57 = v16[5];
    v83 = v16[4];
    v84 = v57;
    *v85 = v16[6];
    *&v85[10] = *(v16 + 106);
    v58 = v16[1];
    v79 = *v16;
    v80 = v58;
    v59 = v16[3];
    v81 = v16[2];
    v82 = v59;
    result = outlined destroy of PAKEServerRecord(&v79);
    *a2 = v33;
    *(a2 + 8) = v32;
    *(a2 + 16) = v34;
    return result;
  }

  v69 = v8;
  v70 = v3;
  v24 = *(a1 + 7);
  v23 = *(a1 + 8);
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_16;
    }

    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    v28 = __OFSUB__(v26, v27);
    v29 = v26 - v27;
    if (v28)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v29 != 97)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v25)
    {
      if (BYTE6(v23) != 97)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_43:
      __break(1u);
      return result;
    }

    if (HIDWORD(v24) - v24 != 97)
    {
LABEL_16:
      v32 = 0x80000001B26CE230;
      v33 = 0xD000000000000020;
      *&v79 = 0xD000000000000020;
      *(&v79 + 1) = 0x80000001B26CE230;
      v34 = 1;
      LOBYTE(v80) = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_37;
    }
  }

LABEL_10:
  v71 = *(a1 + 8);
  if (v25)
  {
    if (v25 == 2)
    {
      v30 = *(v24 + 16);
    }

    else
    {
      v30 = v24;
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = v30 + 32;
  if (__OFADD__(v30, 32))
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v62 = a2;
  if (v25)
  {
    if (v25 == 2)
    {
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
    }

    else
    {
      v37 = v24;
      v36 = v24 >> 32;
    }
  }

  else
  {
    v37 = 0;
    v36 = BYTE6(v71);
  }

  if (v36 < v37 || v35 < v37)
  {
    goto LABEL_40;
  }

  outlined init with copy of PAKEServerRecord(a1, &v79);
  v38 = v35;
  v39 = BYTE6(v71);
  v40 = Data._Representation.subscript.getter();
  v72 = v41;
  if (!v25)
  {
    v43 = 0;
    v42 = v39;
LABEL_31:
    result = v38;
    if (v42 < v38)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v25 == 2)
  {
    v43 = *(v24 + 16);
    v42 = *(v24 + 24);
    goto LABEL_31;
  }

  result = v38;
  v43 = v24;
  v42 = v24 >> 32;
  if (v24 >> 32 < v38)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_34:
  if (v42 < v43)
  {
    goto LABEL_41;
  }

  v66 = a3;
  v61 = v10;
  v44 = v40;
  v45 = Data._Representation.subscript.getter();
  v67 = v45;
  v47 = v46;
  v68 = v46;
  v48 = *(a1 + 1);
  v63 = *(a1 + 2);
  v49 = *(a1 + 6);
  v65 = *(a1 + 5);
  v64 = v49;
  v51 = *(a1 + 3);
  v50 = *(a1 + 4);
  v71 = v44;
  (*(v74 + 104))(v77, *MEMORY[0x1E6999678], v75);
  outlined copy of Data._Representation(v71, v72);
  outlined copy of Data._Representation(v45, v47);
  outlined copy of Data._Representation(v48, v63);
  outlined copy of Data._Representation(v65, v64);
  outlined copy of Data._Representation(v51, v50);
  v52 = v76;
  v53 = v70;
  SPAKE2.Verifier.init(w0:L:context:verifierID:proverID:cipherSuite:)();
  if (v53)
  {

    outlined destroy of PAKEServerRecord(a1);
    v79 = xmmword_1B26C6420;
    v34 = 2;
    LOBYTE(v80) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v71, v72);
    outlined consume of Data._Representation(v67, v68);
    v32 = 0;
    v33 = 32;
    a2 = v62;
    a3 = v66;
    goto LABEL_37;
  }

  outlined destroy of PAKEServerRecord(a1);
  outlined consume of Data._Representation(v71, v72);
  outlined consume of Data._Representation(v67, v68);
  return (*(v73 + 32))(v66 + v61[9], v52, v69);
}

void _s15SwiftTLSLibrary15PAKEServerStateV26deriveKeysAndServerMessage11clientShare9CryptoKit12SymmetricKeyVAA9ExtensionO4PAKEO9PAKEShareV_tAA8TLSErrorOYKF(__int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a2 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = a2 >> 32;
  }

  else
  {
    v12 = BYTE6(a3);
  }

  if (v12 < a4)
  {
    __break(1u);
    return;
  }

  v13 = Data._Representation.subscript.getter();
  v15 = v14;
  v16 = _s15SwiftTLSLibrary15PAKEServerStateV31deriveSharedKeyAndServerMessage33_D47F730883CC8E2AE40D0B8BEB52DCE811clientShare9CryptoKit09SymmetricG0V_10Foundation4DataVtAL_tAA8TLSErrorOYKF(a6, v13, v14, v43);
  if (v7)
  {
    v18 = v43[0];
    v19 = v43[1];
    v20 = v44;
    outlined consume of Data._Representation(v13, v15);
    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 16) = v20;
    return;
  }

  v21 = v16;
  v22 = v17;
  v45 = 0;
  outlined consume of Data._Representation(v13, v15);
  v23 = type metadata accessor for PAKEServerState(0);
  v24 = v23[5];
  outlined destroy of P256.Signing.PrivateKey?(v6 + v24, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v25 = type metadata accessor for SymmetricKey();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v6 + v24, a6, v25);
  (*(v26 + 56))(v6 + v24, 0, 1, v25);
  v27 = 0;
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v27 = v21[2];
    }
  }

  else if (v28)
  {
    v27 = v21;
  }

  v29 = v6 + v23[6];
  v30 = *(v29 + 48);
  v42[2] = *(v29 + 32);
  v42[3] = v30;
  v42[4] = *(v29 + 64);
  v31 = *(v29 + 16);
  v42[0] = *v29;
  v42[1] = v31;
  outlined destroy of P256.Signing.PrivateKey?(v42, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMR);
  *v29 = a1;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v27;
  *(v29 + 32) = xmmword_1B26C5EF0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = xmmword_1B26C8CA0;
  if (a1 == -1 && v22 >> 60 != 15)
  {
    v32 = 0;
    v33 = v6 + v23[8];
    v34 = *(v33 + 24);
    v35 = *(v33 + 32);
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_24;
      }

      v32 = *(v34 + 16);
    }

    else
    {
      if (!v36)
      {
        goto LABEL_24;
      }

      v32 = v34;
    }

    outlined copy of Data._Representation(v34, v35);
LABEL_24:
    outlined consume of ByteBuffer?(*(v29 + 32), *(v29 + 40));
    *(v29 + 32) = v34;
    *(v29 + 40) = v35;
    *(v29 + 48) = v32;
    if (*(v29 + 16) >> 60 == 15)
    {
      return;
    }

    v37 = 0;
    v38 = v6 + v23[8];
    v39 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v41 == 2)
      {
        v37 = *(v39 + 16);
        goto LABEL_30;
      }
    }

    else if (v41)
    {
      v37 = v39;
LABEL_30:
      outlined copy of Data._Representation(v39, v40);
    }

    outlined consume of ByteBuffer?(*(v29 + 56), *(v29 + 64));
    *(v29 + 56) = v39;
    *(v29 + 64) = v40;
    *(v29 + 72) = v37;
  }
}

Swift::Bool __swiftcall PAKEServerRecord.restorePAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 112))(v3) & 1;
}

double _s15SwiftTLSLibrary23PAKEClientConfigurationV20generateInitialStateAA0cG0VyAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  outlined init with copy of PAKEClientConfiguration(v2, v10);
  _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(v2, &v8, a2);
  if (v3)
  {
    v7 = v9;
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateV19generateClientHelloAA9ExtensionO4PAKEO0cG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v7 = *(v2 + 88);
  v29[0] = *(v2 + 72);
  v29[1] = v7;
  v29[2] = *(v2 + 104);
  v30 = *(v2 + 120);
  if ((*(*SwiftTLSPAKELimiter + 88))(v29, 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "new client credential added to PAKE Limiter";
LABEL_12:
      _os_log_impl(&dword_1B25F5000, v9, v10, v12, v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "client credential already tracked by PAKE Limiter";
      goto LABEL_12;
    }
  }

  type metadata accessor for PAKEClientState(0);
  v14 = SPAKE2.Prover.getShare()();
  if (v3)
  {

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *a1 = xmmword_1B26C6420;
    *(a1 + 16) = 2;
    return result;
  }

  v17 = v14;
  v18 = v15;
  v19 = 0;
  v20 = *(v5 + 24);
  v21 = *(v5 + 32);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_21;
    }

    v19 = *(v20 + 16);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_21;
    }

    v19 = v20;
  }

  outlined copy of Data._Representation(v20, v21);
LABEL_21:
  v31 = v19;
  v23 = 0;
  v24 = *(v5 + 40);
  v25 = *(v5 + 48);
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v23 = *(v24 + 16);
      goto LABEL_26;
    }
  }

  else if (v26)
  {
    v23 = v24;
LABEL_26:
    outlined copy of Data._Representation(*(v5 + 40), *(v5 + 48));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMR);
  result = swift_allocObject();
  v27 = 0;
  *(result + 16) = xmmword_1B26C6030;
  v28 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v27 = *(v17 + 16);
    }
  }

  else if (v28)
  {
    v27 = v17;
  }

  *(result + 32) = *v5;
  *(result + 40) = v17;
  *(result + 48) = v18;
  *(result + 56) = v27;
  *a2 = v20;
  a2[1] = v21;
  a2[2] = v31;
  a2[3] = v24;
  a2[4] = v25;
  a2[5] = v23;
  a2[6] = result;
  return result;
}

Swift::Bool __swiftcall PAKEClientConfiguration.hasPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 96))(v3) & 1;
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateV18processServerHelloyyAA9ExtensionO4PAKEO010PAKEServerG0VAA8TLSErrorOYKF(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = *v1;
  v8 = *a1;
  if (v8 != v7)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    outlined init with copy of Extension.PAKE.PAKEServerHello(a1, &v33);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of Extension.PAKE.PAKEServerHello(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v33 = v18;
      *v17 = 136315394;
      v19 = PAKEScheme.description.getter(v8);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = PAKEScheme.description.getter(v7);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v33);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1B25F5000, v15, v16, "Server PAKE message scheme mismatch, got %s, expected %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274ECF0](v18, -1, -1);
      MEMORY[0x1B274ECF0](v17, -1, -1);
    }

    v33 = xmmword_1B26C6400;
    v34 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 6;
  }

  v9 = a1[1];
  v10 = a1[2];
  result = a1[3];
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v9 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v9 >> 32;
  }

  else
  {
    v13 = BYTE6(v10);
  }

  if (v13 >= result)
  {
    v26 = Data._Representation.subscript.getter();
    v28 = v27;
    _s15SwiftTLSLibrary15PAKEClientStateV15deriveSharedKey33_D47F730883CC8E2AE40D0B8BEB52DCE8LLy9CryptoKit09SymmetricG0V10Foundation4DataVAA8TLSErrorOYKF(v26, v27, &v32, v6);
    if (v2)
    {
      v25 = v32;
      outlined consume of Data._Representation(v26, v28);
    }

    else
    {
      v25 = 0;
      outlined consume of Data._Representation(v26, v28);
      v29 = type metadata accessor for SymmetricKey();
      (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
      v30 = type metadata accessor for PAKEClientState(0);
      outlined assign with take of PartialHandshakeResult?(v6, v1 + *(v30 + 20), &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }

    return v25;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PAKEClientConfiguration.claimPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v6[0] = *(v0 + 72);
  v6[1] = v1;
  v6[2] = *(v0 + 104);
  v7 = *(v0 + 120);
  if (((*(*SwiftTLSPAKELimiter + 104))(v6) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, oslog, v3, "client claiming PAKE attempt failed", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }
  }
}

uint64_t PAKEClientConfiguration.context.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

void PAKEClientConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t PAKEClientConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data._Representation(v1, *(v0 + 32));
  return v1;
}

void PAKEClientConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t PAKEClientConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

void PAKEClientConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data._Representation(v1, *(v0 + 64));
  return v1;
}

void PAKEClientConfiguration.clientPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t PAKEClientConfiguration.description.getter()
{
  _StringGuts.grow(_:)(88);
  MEMORY[0x1B274D610](0xD000000000000020, 0x80000001B26CE260);
  v1 = PAKEScheme.description.getter(*v0);
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v2 = Data.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE290);
  v3 = Data.description.getter();
  MEMORY[0x1B274D610](v3);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE2B0);
  v4 = Data.description.getter();
  MEMORY[0x1B274D610](v4);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

void _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  if (a1 == 32150 || a1 == 0xFFFF)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a4, a5);
    outlined copy of Data._Representation(a6, a7);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 0;
  }

  else
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a4, a5);
    outlined copy of Data._Representation(a6, a7);
    _StringGuts.grow(_:)(26);

    v19 = PAKEScheme.description.getter(a1);
    MEMORY[0x1B274D610](v19);

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v21 = a1;
    v22 = v39;
    v23 = v40;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a10;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = 0;
    outlined destroy of PAKEClientConfiguration(&v21);
    *a11 = 0xD000000000000018;
    *(a11 + 8) = 0x80000001B26CE210;
    *(a11 + 16) = 1;
  }
}

void PAKEClientConfiguration.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  v2 = *(v1 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int PAKEClientConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  v1 = *(v0 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEClientConfiguration()
{
  v3 = *(v0 + 120);
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKEClientConfiguration(uint64_t a1)
{
  v2 = *(v1 + 120);
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEClientConfiguration(uint64_t a1)
{
  v4 = *(v1 + 120);
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKEClientConfiguration(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static PAKEClientConfiguration.__derived_struct_equals(_:_:)(v12, v14) & 1;
}

uint64_t PAKEServerRecord.description.getter()
{
  _StringGuts.grow(_:)(81);
  MEMORY[0x1B274D610](0xD000000000000019, 0x80000001B26CE2D0);
  v1 = PAKEScheme.description.getter(*v0);
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v2 = Data.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE2B0);
  v3 = Data.description.getter();
  MEMORY[0x1B274D610](v3);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE290);
  v4 = Data.description.getter();
  MEMORY[0x1B274D610](v4);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

void _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  if (a1 == 32150 || a1 == 0xFFFF)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a6, a7);
    outlined copy of Data._Representation(a4, a5);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 1;
    *(a9 + 121) = a11 & 1;
  }

  else
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a6, a7);
    outlined copy of Data._Representation(a4, a5);
    _StringGuts.grow(_:)(26);

    v20 = PAKEScheme.description.getter(a1);
    MEMORY[0x1B274D610](v20);

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v22 = a1;
    v23 = v41;
    v24 = v42;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = a10;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = 1;
    v40 = a11 & 1;
    outlined destroy of PAKEServerRecord(&v22);
    *a12 = 0xD000000000000018;
    *(a12 + 8) = 0x80000001B26CE210;
    *(a12 + 16) = 1;
  }
}

Swift::Bool __swiftcall PAKEServerRecord.claimPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 104))(v3) & 1;
}

void PAKEServerRecord.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  v2 = *(v1 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2 & 1);
  Hasher._combine(_:)(*(v1 + 121) & 1);
}

Swift::Int PAKEServerRecord.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  v1 = *(v0 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1 & 1);
  Hasher._combine(_:)(*(v0 + 121) & 1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKEServerRecord(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 121);
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEServerRecord(uint64_t a1)
{
  v4 = *(v1 + 120);
  v5 = *(v1 + 121);
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKEServerRecord(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 10) = *(a1 + 106);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[10] = *(a2 + 106);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static PAKEServerRecord.__derived_struct_equals(_:_:)(v12, v14) & 1;
}

uint64_t PAKEServerRecords.RecordKey.init(pakeScheme:serverIdentity:clientIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

BOOL static PAKEServerRecords.RecordKey.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return specialized static Data.== infix(_:_:)(v4, v5, v6, v7);
}

uint64_t PAKEServerRecords.RecordKey.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int PAKEServerRecords.RecordKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEServerRecords.RecordKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PAKEServerRecords.RecordKey(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEServerRecords.RecordKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PAKEServerRecords.RecordKey(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, __int128 *)@<X4>, _OWORD *a5@<X8>)
{
  a4(v17, a1, a2, &v15);
  if (v5)
  {
    v8 = v16;
    result = *&v15;
    *a3 = v15;
    *(a3 + 16) = v8;
  }

  else
  {
    v10 = v17[7];
    a5[6] = v17[6];
    a5[7] = v10;
    v11 = v17[9];
    a5[8] = v17[8];
    a5[9] = v11;
    v12 = v17[3];
    a5[2] = v17[2];
    a5[3] = v12;
    v13 = v17[5];
    a5[4] = v17[4];
    a5[5] = v13;
    result = *v17;
    v14 = v17[1];
    *a5 = v17[0];
    a5[1] = v14;
  }

  return result;
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZ@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n(a1, a2, a3, a4, a5, &v15, v17);
  if (v7)
  {
    v10 = v16;
    result = *&v15;
    *a6 = v15;
    *(a6 + 16) = v10;
  }

  else
  {
    v12 = v21;
    a7[4] = v20;
    a7[5] = v12;
    a7[6] = v22[0];
    *(a7 + 106) = *(v22 + 10);
    v13 = v17[1];
    *a7 = v17[0];
    a7[1] = v13;
    result = *&v18;
    v14 = v19;
    a7[2] = v18;
    a7[3] = v14;
  }

  return result;
}

uint64_t static PAKEServerRecords.generateRandomBytes(length:)(uint64_t a1)
{
  v2 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 0x1000000000000000) >> 61 == 7)
  {
    SymmetricKeySize.init(bitCount:)();
    SymmetricKey.init(size:)();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v4 + 8))(v7, v3);
    return v8[2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PAKEClientState.prover.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = type metadata accessor for SPAKE2.Prover();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEClientState.prover.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = type metadata accessor for SPAKE2.Prover();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = type metadata accessor for SPAKE2.CipherSuite();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SPAKE2.Prover();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PAKEClientState(0);
  v13 = *(v63 + 20);
  v14 = type metadata accessor for SymmetricKey();
  result = (*(*(v14 - 8) + 56))(a3 + v13, 1, 1, v14);
  v16 = *(a1 + 5);
  v17 = *(a1 + 6);
  v18 = *(a1 + 3);
  a3[4] = *(a1 + 4);
  a3[5] = v16;
  a3[6] = v17;
  *(a3 + 105) = *(a1 + 105);
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  *a3 = *a1;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v18;
  v21 = *a1;
  if (v21 != 0xFFFF && v21 != 32150)
  {
    v73 = 0;
    v74 = 0xE000000000000000;
    outlined init with copy of PAKEClientConfiguration(a1, &v66);
    _StringGuts.grow(_:)(26);

    *&v66 = 0xD000000000000018;
    *(&v66 + 1) = 0x80000001B26CE210;
    v31 = PAKEScheme.description.getter(v21);
    MEMORY[0x1B274D610](v31);

    v32 = *(&v66 + 1);
    v33 = v66;
    v34 = 1;
    LOBYTE(v67) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of PAKEClientConfiguration(a1);
LABEL_30:
    v47 = a3[5];
    v70 = a3[4];
    v71 = v47;
    v72[0] = a3[6];
    *(v72 + 9) = *(a3 + 105);
    v48 = a3[1];
    v66 = *a3;
    v67 = v48;
    v49 = a3[3];
    v68 = a3[2];
    v69 = v49;
    outlined destroy of PAKEClientConfiguration(&v66);
    result = outlined destroy of P256.Signing.PrivateKey?(a3 + v13, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    *a2 = v33;
    *(a2 + 8) = v32;
    *(a2 + 16) = v34;
    return result;
  }

  v61 = v11;
  v62 = v10;
  v22 = *(a1 + 7);
  v23 = *(a1 + 8);
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (v27)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v28 != 64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v24)
    {
      if (BYTE6(v23) != 64)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v22), v22))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (HIDWORD(v22) - v22 != 64)
    {
LABEL_16:
      v32 = 0x80000001B26CE2F0;
      v33 = 0xD000000000000020;
      *&v66 = 0xD000000000000020;
      *(&v66 + 1) = 0x80000001B26CE2F0;
      v34 = 1;
      LOBYTE(v67) = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_30;
    }
  }

LABEL_10:
  v58 = v3;
  if (v24)
  {
    if (v24 == 2)
    {
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
    }

    else
    {
      v30 = v22;
      v29 = v22 >> 32;
    }
  }

  else
  {
    v30 = 0;
    v29 = BYTE6(v23);
  }

  if (v29 < v30 || v30 > 32)
  {
    __break(1u);
    goto LABEL_33;
  }

  outlined init with copy of PAKEClientConfiguration(a1, &v66);
  result = Data._Representation.subscript.getter();
  v57 = v35;
  if (v24)
  {
    if (v24 == 2)
    {
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
    }

    else
    {
      v37 = v22;
      v36 = v22 >> 32;
    }
  }

  else
  {
    v37 = 0;
    v36 = BYTE6(v23);
  }

  v60 = result;
  v50 = v13;
  v51 = a2;
  if (v36 < 32 || v36 < v37)
  {
    goto LABEL_35;
  }

  v38 = Data._Representation.subscript.getter();
  v59 = v38;
  v40 = v39;
  v53 = *(a1 + 1);
  v41 = v53;
  v42 = *(a1 + 3);
  v54 = *(a1 + 2);
  v52 = *(a1 + 5);
  v43 = v52;
  v55 = *(a1 + 6);
  v56 = *(a1 + 4);
  (*(v64 + 104))(v9, *MEMORY[0x1E6999678], v65);
  v65 = v9;
  v44 = v57;
  outlined copy of Data._Representation(v60, v57);
  outlined copy of Data._Representation(v38, v40);
  outlined copy of Data._Representation(v41, v54);
  outlined copy of Data._Representation(v43, v55);
  outlined copy of Data._Representation(v42, v56);
  v45 = v75;
  v65 = v40;
  v46 = v58;
  SPAKE2.Prover.init(w0:w1:context:verifierID:proverID:cipherSuite:)();
  if (v46)
  {

    outlined destroy of PAKEClientConfiguration(a1);
    v66 = xmmword_1B26C6420;
    v34 = 2;
    LOBYTE(v67) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v60, v44);
    outlined consume of Data._Representation(v59, v65);
    v32 = 0;
    v33 = 32;
    a2 = v51;
    v13 = v50;
    goto LABEL_30;
  }

  outlined destroy of PAKEClientConfiguration(a1);
  outlined consume of Data._Representation(v60, v44);
  outlined consume of Data._Representation(v59, v65);
  return (*(v61 + 32))(a3 + *(v63 + 24), v45, v62);
}

void _s15SwiftTLSLibrary15PAKEClientStateV15deriveSharedKey33_D47F730883CC8E2AE40D0B8BEB52DCE8LLy9CryptoKit09SymmetricG0V10Foundation4DataVAA8TLSErrorOYKF(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v5 = v4;
  v9 = type metadata accessor for SPAKE2.Spake2Error();
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymmetricKey();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v19 = (&v66 - v18);
  v20 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v24 == 97)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v20)
    {
      if (BYTE6(a2) != 97)
      {
        goto LABEL_13;
      }

LABEL_8:
      v68 = a4;
      if (v20)
      {
        if (v20 == 2)
        {
          v25 = *(a1 + 16);
        }

        else
        {
          v25 = a1;
        }

LABEL_26:
        v31 = v25 + 65;
        if (__OFADD__(v25, 65))
        {
          __break(1u);
        }

        else
        {
          v32 = v16;
          if (v20)
          {
            if (v20 == 2)
            {
              v33 = *(a1 + 16);
              v34 = *(a1 + 24);
            }

            else
            {
              v33 = a1;
              v34 = a1 >> 32;
            }
          }

          else
          {
            v33 = 0;
            v34 = BYTE6(a2);
          }

          if (v34 >= v33 && v31 >= v33)
          {
            v66 = v17;
            v67 = v32;
            v69 = Data._Representation.subscript.getter();
            v70 = v35;
            if (!v20)
            {
              v37 = 0;
              v36 = BYTE6(a2);
LABEL_38:
              v20 = v5;
              if (v36 < v31)
              {
                goto LABEL_69;
              }

LABEL_41:
              if (v36 >= v37)
              {
                v5 = Data._Representation.subscript.getter();
                a1 = v38;
                type metadata accessor for PAKEClientState(0);
                v39 = v72;
                v40 = SPAKE2.Prover.processPeerShareAndGenerateVerificationTag(peerShare:)();
                v20 = v39;
                if (!v39)
                {
                  outlined consume of Data._Representation(v40, v41);
                  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)();
                  v55 = v66;
                  v54 = v67;
                  (*(v66 + 16))(v15, v19, v67);
                  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
                  SymmetricKey.init<A>(data:)();
                  outlined consume of Data._Representation(v5, a1);
                  outlined consume of Data._Representation(v69, v70);
                  (*(v55 + 8))(v19, v54);
                  return;
                }

                v76 = v39;
                v42 = v39;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v43 = swift_dynamicCast();
                v44 = v71;
                if (v43)
                {
                  v45 = (*(v71 + 88))(v11, v9);
                  if (v45 == *MEMORY[0x1E6999680])
                  {

                    if (one-time initialization token for logger != -1)
                    {
                      swift_once();
                    }

                    v46 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v46, logger);
                    v47 = Logger.logObject.getter();
                    v48 = static os_log_type_t.error.getter();
                    if (!os_log_type_enabled(v47, v48))
                    {
                      goto LABEL_55;
                    }

                    v49 = swift_slowAlloc();
                    *v49 = 0;
                    v50 = "SPAKE2 integrity issue";
                    goto LABEL_54;
                  }

                  if (v45 == *MEMORY[0x1E6999688])
                  {

                    if (one-time initialization token for logger == -1)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_74;
                  }

                  (*(v44 + 8))(v11, v9);
                }

                a2 = a1;
                if (one-time initialization token for logger == -1)
                {
LABEL_63:
                  v56 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v56, logger);
                  v57 = v20;
                  v58 = Logger.logObject.getter();
                  v59 = static os_log_type_t.error.getter();

                  v60 = v5;
                  if (os_log_type_enabled(v58, v59))
                  {
                    v61 = swift_slowAlloc();
                    v62 = swift_slowAlloc();
                    *v61 = 138412290;
                    v63 = v20;
                    v64 = _swift_stdlib_bridgeErrorToNSError();
                    *(v61 + 4) = v64;
                    *v62 = v64;
                    _os_log_impl(&dword_1B25F5000, v58, v59, "failed to process server PAKE message: %@", v61, 0xCu);
                    outlined destroy of P256.Signing.PrivateKey?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    MEMORY[0x1B274ECF0](v62, -1, -1);
                    MEMORY[0x1B274ECF0](v61, -1, -1);
                  }

                  v74 = xmmword_1B26C6450;
                  v52 = 2;
                  v75 = 2;
                  lazy protocol witness table accessor for type TLSError and conformance TLSError();
                  swift_willThrowTypedImpl();
                  outlined consume of Data._Representation(v60, a2);
                  outlined consume of Data._Representation(v69, v70);

                  goto LABEL_66;
                }

LABEL_72:
                swift_once();
                goto LABEL_63;
              }

              goto LABEL_69;
            }

            if (v20 == 2)
            {
              v37 = *(a1 + 16);
              v36 = *(a1 + 24);
              goto LABEL_38;
            }

            v20 = v5;
            v37 = a1;
            v36 = a1 >> 32;
            if (a1 >> 32 >= v31)
            {
              goto LABEL_41;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_24:
      v25 = v20;
      goto LABEL_26;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (HIDWORD(a1) - a1 == 97)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  outlined copy of Data._Representation(a1, a2);
  v19 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v19, v27))
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_60:

    v74 = xmmword_1B26C6400;
    v75 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v52 = 6;
    goto LABEL_66;
  }

  v16 = swift_slowAlloc();
  *v16 = 134218240;
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v28 = 0;
      goto LABEL_59;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v23 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!v23)
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v20)
  {
    v28 = BYTE6(a2);
LABEL_59:
    *(v16 + 4) = v28;
    v53 = v16;
    outlined consume of Data._Representation(a1, a2);
    *(v53 + 12) = 2048;
    *(v53 + 14) = 97;
    _os_log_impl(&dword_1B25F5000, v19, v27, "Invalid server PAKE message size, got %ld, expected %ld", v53, 0x16u);
    MEMORY[0x1B274ECF0](v53, -1, -1);
    goto LABEL_60;
  }

  LODWORD(v28) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v28 = v28;
    goto LABEL_59;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_52:
  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, logger);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "SPAKE2 invalid input length issue";
LABEL_54:
    _os_log_impl(&dword_1B25F5000, v47, v48, v50, v49, 2u);
    MEMORY[0x1B274ECF0](v49, -1, -1);
  }

LABEL_55:

  v74 = xmmword_1B26C9520;
  v75 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(v5, a1);
  outlined consume of Data._Representation(v69, v70);

  v52 = 31;
LABEL_66:
  v65 = v73;
  *v73 = v52;
  v65[1] = 0;
  *(v65 + 16) = 2;
}

uint64_t PAKEServerState.clientShare.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

void PAKEServerState.clientShare.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of ByteBuffer?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t PAKEServerState.useDummyDerivation.setter(char a1)
{
  result = type metadata accessor for PAKEServerState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PAKEServerState.record.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PAKEServerState(0) + 32);

  return outlined init with copy of PAKEServerRecord(v3, a1);
}

uint64_t PAKEServerState.record.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PAKEServerState(0) + 32);

  return outlined assign with take of PAKEServerRecord(a1, v3);
}

uint64_t PAKEServerState.verifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = type metadata accessor for SPAKE2.Verifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEServerState.verifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = type metadata accessor for SPAKE2.Verifier();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id _s15SwiftTLSLibrary15PAKEServerStateV31deriveSharedKeyAndServerMessage33_D47F730883CC8E2AE40D0B8BEB52DCE8LL11clientShare9CryptoKit09SymmetricG0V_10Foundation4DataVtAL_tAA8TLSErrorOYKF(uint64_t a1, id a2, uint64_t a3, uint64_t *a4)
{
  v58 = a4;
  v54 = a1;
  v57 = type metadata accessor for SPAKE2.Spake2Error();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - v11;
  type metadata accessor for PAKEServerState(0);
  v13 = v64;
  v14 = SPAKE2.Verifier.processPeerShareAndGenerateVerificationTag(peerShare:)();
  if (v13)
  {
    v63[0] = v13;
    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v28 = v56;
    v27 = v57;
    if (swift_dynamicCast())
    {
      v29 = (*(v55 + 88))(v28, v27);
      if (v29 == *MEMORY[0x1E6999680])
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, logger);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_15;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "SPAKE2 integrity issue";
LABEL_14:
        _os_log_impl(&dword_1B25F5000, v31, v32, v34, v33, 2u);
        MEMORY[0x1B274ECF0](v33, -1, -1);
LABEL_15:

        v59 = xmmword_1B26C9520;
        v60 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();

        v36 = 31;
LABEL_22:
        v45 = v58;
        *v58 = v36;
        v45[1] = 0;
        *(v45 + 16) = 2;
        return a2;
      }

      if (v29 == *MEMORY[0x1E6999688])
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, logger);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_15;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "encountered an invalid input length in SPAKE2+ while deriving shared key in PAKE server";
        goto LABEL_14;
      }

      (*(v55 + 8))(v28, v27);
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, logger);
    v38 = v13;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v13;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1B25F5000, v39, v40, "error deriving shared key in PAKE server: %@", v41, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v42, -1, -1);
      MEMORY[0x1B274ECF0](v41, -1, -1);
    }

    v59 = xmmword_1B26C6450;
    v36 = 2;
    v60 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    goto LABEL_22;
  }

  v16 = v14;
  v64 = v15;
  v51 = v10;
  v52 = v7;
  v53 = v12;
  v50 = v6;
  v63[0] = SPAKE2.Verifier.getShare()();
  v63[1] = v17;
  v61 = MEMORY[0x1E6969080];
  v62 = MEMORY[0x1E6969078];
  v18 = v16;
  v19 = v64;
  *&v59 = v16;
  *(&v59 + 1) = v64;
  v20 = v63[0];
  v21 = v17;
  v22 = __swift_project_boxed_opaque_existential_0(&v59, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  outlined copy of Data._Representation(v20, v21);
  outlined copy of Data._Representation(v18, v19);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v23, v24, v63);
  outlined consume of Data._Representation(v20, v21);
  __swift_destroy_boxed_opaque_existential_0(&v59);
  a2 = v63[0];
  v25 = v53;
  SPAKE2.Verifier.unsafeGenerateKeyWithoutKeyConfirmation()();
  v47 = v52;
  v48 = v50;
  (*(v52 + 16))(v51, v25, v50);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  SymmetricKey.init<A>(data:)();
  outlined consume of Data._Representation(v18, v19);
  (*(v47 + 8))(v25, v48);
  return a2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SwiftTLSLibrary10PAKESchemeV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMR);
  v39 = v4;
  v43 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v5 + 16))
  {
    v36 = v2;
    v6 = 0;
    v37 = (v5 + 64);
    v38 = v5;
    v7 = 1 << *(v5 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;
    v11 = v43 + 64;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v20 = v16 | (v6 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v42 = *(v21 + 48);
      v40 = *(*(v5 + 56) + 4 * v20);
      if ((v39 & 1) == 0)
      {
        outlined copy of Data._Representation(v22, v23);
        outlined copy of Data._Representation(v25, v24);
        outlined copy of Data._Representation(v26, v27);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      Data.hash(into:)();
      Data.hash(into:)();
      Hasher._combine(_:)(v42);
      result = Hasher._finalize()();
      v28 = -1 << *(v43 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v14 = v24;
        v13 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v14 = v24;
      v13 = v25;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = *(v43 + 48) + 56 * v12;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      *(v15 + 32) = v26;
      *(v15 + 40) = v27;
      *(v15 + 48) = v42;
      *(*(v43 + 56) + 4 * v12) = v40;
      ++*(v43 + 16);
      v5 = v38;
      v9 = v41;
    }

    v17 = v6;
    result = v37;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v10)
      {
        break;
      }

      v19 = v37[v6];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v43;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v44 = (v5 + 64);
    v45 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v43 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
LABEL_15:
      v21 = v16 | (v8 << 6);
      v58 = v17;
      v22 = *(v5 + 48) + 40 * v21;
      v23 = *v22;
      v25 = *(v22 + 8);
      v24 = *(v22 + 16);
      v27 = *(v22 + 24);
      v26 = *(v22 + 32);
      v28 = *(v5 + 56) + (v21 << 7);
      if (v46)
      {
        v48 = *v28;
        v47 = *(v28 + 8);
        v51 = *(v28 + 56);
        v49 = *(v28 + 24);
        v50 = *(v28 + 40);
        v57 = *(v28 + 88);
        v55 = *(v28 + 72);
        v53 = *(v28 + 112);
        v54 = *(v28 + 104);
        v52 = *(v28 + 120);
        v56 = *(v28 + 121);
      }

      else
      {
        v30 = *(v28 + 32);
        v29 = *(v28 + 48);
        v31 = *v28;
        *&v60[16] = *(v28 + 16);
        *&v60[32] = v30;
        *v60 = v31;
        v33 = *(v28 + 80);
        v32 = *(v28 + 96);
        v34 = *(v28 + 64);
        *&v60[106] = *(v28 + 106);
        *&v60[80] = v33;
        *&v60[96] = v32;
        *&v60[48] = v29;
        *&v60[64] = v34;
        v56 = v60[121];
        v57 = *&v60[88];
        v55 = *&v60[72];
        v53 = *&v60[112];
        v54 = *(&v32 + 1);
        v52 = v60[120];
        v50 = *&v60[40];
        v51 = *&v60[56];
        v49 = *&v60[24];
        v47 = *&v60[8];
        v48 = *v60;
        outlined copy of Data._Representation(v25, v24);
        outlined copy of Data._Representation(v27, v26);
        outlined init with copy of PAKEServerRecord(v60, v59);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Data.hash(into:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v12 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v12 + 8 * v37);
          if (v41 != -1)
          {
            v13 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v36) & ~*(v12 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 40 * v13;
      *v14 = v23;
      *(v14 + 8) = v25;
      *(v14 + 16) = v24;
      *(v14 + 24) = v27;
      *(v14 + 32) = v26;
      v15 = *(v7 + 56) + (v13 << 7);
      *v15 = v48;
      *(v15 + 24) = v49;
      *(v15 + 8) = v47;
      *(v15 + 56) = v51;
      *(v15 + 40) = v50;
      *(v15 + 88) = v57;
      *(v15 + 72) = v55;
      *(v15 + 104) = v54;
      *(v15 + 112) = v53;
      *(v15 + 120) = v52;
      *(v15 + 121) = v56;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v58;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v43)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v16 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void specialized _NativeDictionary.copy()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMR);
  v26 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(v1 + 48) + 56 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        LOBYTE(v17) = *(v17 + 48);
        v24 = *(*(v1 + 56) + 4 * v16);
        v25 = *(v3 + 48) + 56 * v16;
        *v25 = v18;
        *(v25 + 8) = v19;
        *(v25 + 16) = v20;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v17;
        *(*(v3 + 56) + 4 * v16) = v24;
        outlined copy of Data._Representation(v18, v19);
        outlined copy of Data._Representation(v20, v21);
        outlined copy of Data._Representation(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of PAKEServerRecord(&v40, &v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 40 * v16;
      v18 = *(v2 + 56);
      v19 = *(v2 + 48) + 40 * v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v16 <<= 7;
      v26 = *(v18 + v16 + 80);
      v25 = *(v18 + v16 + 96);
      v27 = *(v18 + v16 + 64);
      *(v46 + 10) = *(v18 + v16 + 106);
      v45 = v26;
      v46[0] = v25;
      v44 = v27;
      v29 = *(v18 + v16);
      v28 = *(v18 + v16 + 16);
      v30 = *(v18 + v16 + 48);
      v42 = *(v18 + v16 + 32);
      v43 = v30;
      v40 = v29;
      v41 = v28;
      v31 = *(v4 + 48) + v17;
      *v31 = v20;
      *(v31 + 8) = v21;
      *(v31 + 16) = v22;
      *(v31 + 24) = v23;
      *(v31 + 32) = v24;
      v32 = (*(v4 + 56) + v16);
      v33 = v40;
      v34 = v41;
      v35 = v43;
      v32[2] = v42;
      v32[3] = v35;
      *v32 = v33;
      v32[1] = v34;
      v36 = v44;
      v37 = v45;
      v38 = v46[0];
      *(v32 + 106) = *(v46 + 10);
      v32[5] = v37;
      v32[6] = v38;
      v32[4] = v36;
      outlined copy of Data._Representation(v21, v22);
      outlined copy of Data._Representation(v23, v24);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    v5 -= 2;
    v16 = v12;
    do
    {
      v17 = (v5 + 2);
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      v5 -= 2;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized static PAKEServerRecord.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) && specialized static Data.== infix(_:_:)(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) && specialized static Data.== infix(_:_:)(*(a1 + 5), *(a1 + 6), *(a2 + 5), *(a2 + 6)) && specialized static Data.== infix(_:_:)(*(a1 + 7), *(a1 + 8), *(a2 + 7), *(a2 + 8)) && (v4 = *(a1 + 11), v5 = *(a1 + 12), v6 = *(a1 + 13), v7 = *(a1 + 14), v8 = *(a2 + 11), v9 = *(a2 + 12), v10 = *(a2 + 13), v11 = *(a2 + 14), v14 = *(a2 + 120), v15 = *(a1 + 120), specialized static Data.== infix(_:_:)(*(a1 + 9), *(a1 + 10), *(a2 + 9), *(a2 + 10))) && specialized static Data.== infix(_:_:)(v4, v5, v8, v9) && specialized static Data.== infix(_:_:)(v6, v7, v10, v11) && ((v15 ^ v14) & 1) == 0)
  {
    v12 = *(a1 + 121) ^ *(a2 + 121) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t specialized static PAKEClientConfiguration.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) && specialized static Data.== infix(_:_:)(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) && specialized static Data.== infix(_:_:)(*(a1 + 5), *(a1 + 6), *(a2 + 5), *(a2 + 6)) && specialized static Data.== infix(_:_:)(*(a1 + 7), *(a1 + 8), *(a2 + 7), *(a2 + 8)))
  {
    v4 = *(a1 + 9);
    v5 = *(a1 + 10);
    v6 = *(a1 + 11);
    v7 = *(a1 + 12);
    v8 = *(a1 + 13);
    v9 = *(a1 + 14);
    v10 = *(a1 + 120);
    v11 = *(a2 + 9);
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 12);
    v15 = *(a2 + 13);
    v16 = *(a2 + 14);
    v17 = *(a2 + 120);
    if (specialized static Data.== infix(_:_:)(v4, v5, v11, v12) && specialized static Data.== infix(_:_:)(v6, v7, v13, v14) && specialized static Data.== infix(_:_:)(v8, v9, v15, v16) && ((v10 ^ v17) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SwiftTLSLibrary10PAKESchemeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type PAKEScheme and conformance PAKEScheme();
  result = MEMORY[0x1B274D700](v2, &type metadata for PAKEScheme, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t specialized PAKEServerRecords.init(_:)(void *a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AC0eG0VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = a1[2];
  if (!v3)
  {
LABEL_22:

    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = 4;
  do
  {
    v7 = *&a1[v6 + 2];
    v63 = *&a1[v6];
    v64 = v7;
    v8 = *&a1[v6 + 6];
    v65 = *&a1[v6 + 4];
    v66 = v8;
    v9 = *&a1[v6 + 10];
    v67 = *&a1[v6 + 8];
    v68 = v9;
    v69[0] = *&a1[v6 + 12];
    *(v69 + 10) = *(&a1[v6 + 13] + 2);
    v10 = *(&v64 + 1);
    v12 = v65;
    v11 = v66;
    LOWORD(v70) = v63;
    *(&v70 + 1) = *(&v65 + 1);
    *&v71 = v66;
    *(&v71 + 1) = *(&v64 + 1);
    v72 = v65;
    outlined init with copy of PAKEServerRecord(&v63, v61);
    outlined init with copy of PAKEServerRecord(&v63, v61);
    outlined copy of Data._Representation(*(&v12 + 1), v11);
    outlined copy of Data._Representation(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v2;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v70);
    v16 = *(v2 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);

      __break(1u);
      return result;
    }

    v20 = v15;
    if (*(v2 + 24) < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v70);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_30;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v35 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v35;
    if (v20)
    {
LABEL_9:
      v2 = v60;
      v22 = (v60[7] + (v14 << 7));
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v61[2] = v22[2];
      v61[3] = v23;
      v61[0] = v25;
      v61[1] = v24;
      v27 = v22[5];
      v26 = v22[6];
      v28 = v22[4];
      *&v62[10] = *(v22 + 106);
      v61[5] = v27;
      *v62 = v26;
      v61[4] = v28;
      v29 = v63;
      v30 = v64;
      v31 = v66;
      v22[2] = v65;
      v22[3] = v31;
      *v22 = v29;
      v22[1] = v30;
      v32 = v67;
      v33 = v68;
      v34 = v69[0];
      *(v22 + 106) = *(v69 + 10);
      v22[5] = v33;
      v22[6] = v34;
      v22[4] = v32;
      outlined destroy of PAKEServerRecord(v61);
      outlined destroy of PAKEServerRecords.RecordKey(&v70);
      outlined destroy of PAKEServerRecord(&v63);
      if (v5 == v4)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    v2 = v60;
    v60[(v14 >> 6) + 8] |= 1 << v14;
    v36 = v60[6] + 40 * v14;
    v37 = v72;
    v38 = v71;
    *v36 = v70;
    *(v36 + 16) = v38;
    *(v36 + 32) = v37;
    v39 = (v60[7] + (v14 << 7));
    v40 = v67;
    v41 = v68;
    v42 = v69[0];
    *(v39 + 106) = *(v69 + 10);
    v39[5] = v41;
    v39[6] = v42;
    v39[4] = v40;
    v44 = v65;
    v43 = v66;
    v45 = v64;
    *v39 = v63;
    v39[1] = v45;
    v39[2] = v44;
    v39[3] = v43;
    outlined destroy of PAKEServerRecord(&v63);
    v46 = v60[2];
    v18 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v18)
    {
      goto LABEL_29;
    }

    v60[2] = v47;
    if (v5 == v4)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v4;
    v6 += 16;
  }

  while (v4 < a1[2]);
  __break(1u);
LABEL_16:
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_22;
  }

  *&v63 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
  v49 = v63;
  v50 = *(v63 + 16);
  v51 = 4;
  do
  {
    v52 = a1[v51];
    *&v63 = v49;
    v53 = *(v49 + 24);
    if (v50 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v50 + 1, 1);
      v49 = v63;
    }

    *(v49 + 16) = v50 + 1;
    *(v49 + 2 * v50 + 32) = v52;
    v51 += 16;
    ++v50;
    --v48;
  }

  while (v48);

LABEL_23:
  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SwiftTLSLibrary10PAKESchemeV_SayAFGTt0g5Tf4g_n(v49);

  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SwiftTLSLibrary10PAKESchemeV_Tt1g5(*(v54 + 16), 0);
    v57 = specialized Sequence._copySequenceContents(initializing:)(&v63, v56 + 16, v55, v54);
    v58 = v63;

    outlined consume of Set<PAKEScheme>.Iterator._Variant(v58);
    if (v57 != v55)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v56 = MEMORY[0x1E69E7CC0];
  }

  *&v63 = v56;
  specialized MutableCollection<>.sort(by:)(&v63);

  return v2;
}

__n128 _s15SwiftTLSLibrary17PAKEServerRecordsV22findMatchingPAKERecordyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_26:
    _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v80);
LABEL_27:
    v37 = v87;
    a4[6] = v86;
    a4[7] = v37;
    v38 = v89;
    a4[8] = v88;
    a4[9] = v38;
    v39 = v83;
    a4[2] = v82;
    a4[3] = v39;
    v40 = v85;
    a4[4] = v84;
    a4[5] = v40;
    result.n128_u64[0] = v80;
    v41 = v81;
    *a4 = v80;
    a4[1] = v41;
    return result;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[2];
  v10 = v7 >> 62;
  v54 = a1[3];
  v51 = BYTE6(v7);
  v11 = a1[1];
  v12 = v11 >> 62;
  v53 = *a1;
  v49 = *a1 >> 32;
  v50 = BYTE6(v11);
  v13 = (v4 + 56);
  while (1)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v14 = *(v54 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v51;
      if (v10)
      {
        v14 = v54 >> 32;
      }
    }

    if (v14 < v8)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v56 = *(v13 - 12);
    v52 = *v13;
    v55 = *(v13 - 2);
    v90 = *(v13 - 1);
    outlined copy of Data._Representation(v55, v90);
    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v17 = *(v53 + 24);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v50;
      if (v12)
      {
        v17 = v49;
      }
    }

    if (v17 < v9)
    {
      goto LABEL_41;
    }

    v18 = Data._Representation.subscript.getter();
    v75 = v56;
    v76 = v14;
    v77 = v16;
    v78 = v18;
    v79 = v19;
    if (*(a2 + 16))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(&v75);
      if (v21)
      {
        break;
      }
    }

    v13 += 4;
    outlined destroy of PAKEServerRecords.RecordKey(&v75);
    outlined consume of Data._Representation(v55, v90);
    if (!--v5)
    {
      goto LABEL_26;
    }
  }

  v22 = (*(a2 + 56) + (v20 << 7));
  v23 = v22[3];
  v25 = *v22;
  v24 = v22[1];
  v68 = v22[2];
  v69 = v23;
  v66 = v25;
  v67 = v24;
  v27 = v22[5];
  v26 = v22[6];
  v28 = v22[4];
  v14 = &v66;
  *&v72[10] = *(v22 + 106);
  v71 = v27;
  *v72 = v26;
  v70 = v28;
  outlined init with copy of PAKEServerRecord(&v66, &v57);
  if (one-time initialization token for SwiftTLSPAKELimiter == -1)
  {
    goto LABEL_21;
  }

LABEL_42:
  swift_once();
LABEL_21:
  v29 = SwiftTLSPAKELimiter;
  v30 = *(v14 + 88);
  v73[0] = *(v14 + 72);
  v73[1] = v30;
  v73[2] = *(v14 + 104);
  v74 = v72[24];
  if ((*(*SwiftTLSPAKELimiter + 88))(v73, 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "new server credential added to PAKE Limiter";
LABEL_32:
      _os_log_impl(&dword_1B25F5000, v32, v33, v35, v34, 2u);
      MEMORY[0x1B274ECF0](v34, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "server credential already tracked by PAKE Limiter";
      goto LABEL_32;
    }
  }

  if ((*(*v29 + 104))(v73))
  {
    outlined destroy of PAKEServerRecords.RecordKey(&v75);
    v61 = v70;
    v62 = v71;
    *v63 = *v72;
    *&v63[10] = *(v14 + 106);
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    LOWORD(v64) = v56;
    *(&v64 + 1) = v55;
    *&v65 = v90;
    *(&v65 + 1) = v52;
    _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
    v86 = *v63;
    v87 = *&v63[16];
    v88 = v64;
    v89 = v65;
    v82 = v59;
    v83 = v60;
    v84 = v61;
    v85 = v62;
    v80 = v57;
    v81 = v58;
    goto LABEL_27;
  }

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
    _os_log_impl(&dword_1B25F5000, v44, v45, "PAKE credential exhausted", v46, 2u);
    MEMORY[0x1B274ECF0](v46, -1, -1);
  }

  v57 = xmmword_1B26CAC80;
  LOBYTE(v58) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined destroy of PAKEServerRecord(&v66);
  outlined consume of Data._Representation(v55, v90);
  outlined destroy of PAKEServerRecords.RecordKey(&v75);
  result = xmmword_1B26CAC80;
  *a3 = xmmword_1B26CAC80;
  *(a3 + 16) = 2;
  return result;
}

void _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _WORD *a7@<X8>)
{
  v72 = a4;
  v70 = a3;
  v69 = a2;
  v68 = a7;
  v77 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = type metadata accessor for SymmetricKey();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  if (a1 != 0xFFFF && a1 != 32150)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v82 = 0xD000000000000018;
    v83 = 0x80000001B26CE210;
    v47 = PAKEScheme.description.getter(v78);
    MEMORY[0x1B274D610](v47);

    v48 = v82;
    v49 = v83;
    LOBYTE(v84) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
LABEL_27:
    *a6 = v48;
    *(a6 + 8) = v49;
    *(a6 + 16) = 1;
    return;
  }

  v66 = a5;
  v67 = a6;
  SymmetricKeySize.init(bitCount:)();
  SymmetricKey.init(size:)();
  v19 = v73;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v20 = *(v16 + 8);
  v20(v18, v15);
  v71 = v82;
  v73 = v83;
  SymmetricKeySize.init(bitCount:)();
  SymmetricKey.init(size:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v20(v18, v15);
  v22 = v82;
  v21 = v83;
  P256.KeyAgreement.PrivateKey.init()();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v23 = (*(v74 + 8))(v13, v75);
  v24 = MEMORY[0x1B274D380](v23);
  v26 = v25;
  (*(v76 + 8))(v11, v77);
  v79 = v22;
  v80 = v21;
  v85 = MEMORY[0x1E6969080];
  v86 = MEMORY[0x1E6969078];
  v82 = v24;
  v83 = v26;
  v27 = __swift_project_boxed_opaque_existential_0(&v82, MEMORY[0x1E6969080]);
  v28 = *v27;
  v29 = v27[1];
  outlined copy of Data._Representation(v22, v21);
  outlined copy of Data._Representation(v24, v26);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v28, v29, &v79);
  v76 = v19;
  __swift_destroy_boxed_opaque_existential_0(&v82);
  v31 = v79;
  v30 = BYTE6(v80);
  v32 = v80 >> 62;
  v77 = v80;
  if ((v80 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_16;
    }

    v34 = *(v79 + 16);
    v33 = *(v79 + 24);
    v35 = __OFSUB__(v33, v34);
    v36 = v33 - v34;
    if (!v35)
    {
      if (v36 == 97)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v32)
  {
    if (BYTE6(v80) != 97)
    {
      goto LABEL_16;
    }

LABEL_10:
    v37 = v79;
    v74 = v22;
    v75 = v21;
    if (v78 == 32150 || v78 == 0xFFFF)
    {
      v38 = v72;
      v39 = v66;
      outlined copy of Data._Representation(v72, v66);
      v40 = v69;
      v41 = v70;
      outlined copy of Data._Representation(v69, v70);
      outlined copy of Data._Representation(v40, v41);
      outlined copy of Data._Representation(v38, v39);
      v42 = v71;
      v43 = v73;
      outlined copy of Data._Representation(v71, v73);
      outlined consume of Data._Representation(v24, v26);
      outlined consume of Data._Representation(v74, v75);
      v44 = v68;
      *v68 = v78;
      *(v44 + 1) = v42;
      *(v44 + 2) = v43;
      *(v44 + 3) = v40;
      *(v44 + 4) = v41;
      *&v45 = v37;
      *(&v45 + 1) = v77;
      *(v44 + 5) = v38;
      *(v44 + 6) = v39;
      *&v46 = v42;
      *(&v46 + 1) = v43;
      *(v44 + 36) = v46;
      *(v44 + 28) = v45;
      *(v44 + 11) = v40;
      *(v44 + 12) = v41;
      *(v44 + 13) = v38;
      *(v44 + 14) = v39;
      v44[60] = 257;
      return;
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    v56 = v72;
    v57 = v66;
    outlined copy of Data._Representation(v72, v66);
    v58 = v69;
    v59 = v70;
    outlined copy of Data._Representation(v69, v70);
    outlined copy of Data._Representation(v58, v59);
    outlined copy of Data._Representation(v56, v57);
    v60 = v71;
    outlined copy of Data._Representation(v71, v73);
    _StringGuts.grow(_:)(26);

    v82 = 0xD000000000000018;
    v83 = 0x80000001B26CE210;
    v61 = v78;
    v62 = PAKEScheme.description.getter(v78);
    MEMORY[0x1B274D610](v62);

    v48 = v82;
    v49 = v83;
    v79 = v82;
    v80 = v83;
    v81 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v24, v26);
    outlined consume of Data._Representation(v74, v75);
    LOWORD(v82) = v61;
    *(&v82 + 2) = v96;
    HIWORD(v82) = v97;
    v83 = v60;
    v84 = v73;
    v85 = v58;
    v86 = v59;
    *&v63 = v37;
    *(&v63 + 1) = v77;
    v87 = v72;
    v88 = v66;
    *&v64 = v60;
    *(&v64 + 1) = v73;
    v89 = v63;
    v90 = v64;
    v91 = v58;
    v92 = v59;
    v93 = v72;
    v94 = v66;
    v95 = 257;
    outlined destroy of PAKEServerRecord(&v82);
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v79), v79))
  {
    goto LABEL_30;
  }

  if (HIDWORD(v79) - v79 == 97)
  {
    goto LABEL_10;
  }

LABEL_16:
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  MEMORY[0x1B274D610](0xD000000000000034, 0x80000001B26CE320);
  if (v32 > 1)
  {
    v50 = v31;
    v51 = 0;
    if (v32 != 2)
    {
      goto LABEL_25;
    }

    v53 = *(v31 + 16);
    v52 = *(v31 + 24);
    v35 = __OFSUB__(v52, v53);
    v51 = v52 - v53;
    if (!v35)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v32)
  {
    v50 = v31;
    v51 = v30;
LABEL_25:
    v79 = v51;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v54);

    MEMORY[0x1B274D610](540877088, 0xE400000000000000);
    v79 = 97;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v55);

    v48 = v82;
    v49 = v83;
    LOBYTE(v84) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v50, v77);
    outlined consume of Data._Representation(v71, v73);
    outlined consume of Data._Representation(v24, v26);
    outlined consume of Data._Representation(v22, v21);
LABEL_26:
    a6 = v67;
    goto LABEL_27;
  }

  LODWORD(v51) = HIDWORD(v31) - v31;
  if (!__OFSUB__(HIDWORD(v31), v31))
  {
    v50 = v31;
    v51 = v51;
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *&result = _s15SwiftTLSLibrary17PAKEServerRecordsV22findMatchingPAKERecordyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(a1, a2, v56, &v58).n128_u64[0];
  if (v4)
  {
    v12 = v56[1];
    v13 = v57;
    *a3 = v56[0];
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    return result;
  }

  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v14 = v66;
  v73 = WORD3(v66);
  v72 = *(&v66 + 2);
  v15 = a1[6];
  if (!*(v15 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v16 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v16 >> 32;
  }

  else
  {
    v19 = BYTE6(v17);
  }

  if (v19 < a1[2])
  {
    goto LABEL_30;
  }

  v34 = v67;
  v35 = *(&v66 + 1);
  v36 = *(&v67 + 1);
  v7 = *(v15 + 32);
  v6 = Data._Representation.subscript.getter();
  v5 = v20;
  v21 = a1[3];
  v22 = a1[4];
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(v21 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = v21 >> 32;
  }

  else
  {
    v24 = BYTE6(v22);
  }

  if (v24 < a1[5])
  {
    goto LABEL_31;
  }

  v33 = v14;
  v25 = Data._Representation.subscript.getter();
  v27 = v26;
  _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n(v7, v6, v5, v25, v26, v56, v68);
  outlined consume of Data._Representation(v25, v27);
  outlined consume of Data._Representation(v6, v5);
  v14 = *(v15 + 32);
  v6 = *(v15 + 40);
  v5 = *(v15 + 48);
  v7 = *(v15 + 56);
  v71[6] = v64;
  v71[7] = v65;
  v71[8] = v66;
  v71[9] = v67;
  v71[2] = v60;
  v71[3] = v61;
  v71[4] = v62;
  v71[5] = v63;
  v71[0] = v58;
  v71[1] = v59;
  v28 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v71);
  outlined copy of Data._Representation(v6, v5);
  if (v28 == 1)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_22:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, logger);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B25F5000, v30, v31, "Yielding dummy PAKE record", v32, 2u);
        MEMORY[0x1B274ECF0](v32, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_22;
  }

LABEL_25:
  v70[6] = v64;
  v70[7] = v65;
  v70[8] = v66;
  v70[9] = v67;
  v70[2] = v60;
  v70[3] = v61;
  v70[4] = v62;
  v70[5] = v63;
  v70[0] = v58;
  v70[1] = v59;
  if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v70) == 1)
  {
    v45 = v68[4];
    v46 = v68[5];
    *v47 = v69[0];
    *&v47[10] = *(v69 + 10);
    v41 = v68[0];
    v42 = v68[1];
    v43 = v68[2];
    v44 = v68[3];
  }

  else
  {
    outlined consume of Data._Representation(v6, v5);
    outlined destroy of PAKEServerRecord(v68);
    v45 = v52;
    v46 = v53;
    *v47 = v54;
    *&v47[16] = v55;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v40 = v73;
    v5 = v34;
    v6 = v35;
    v39 = v72;
    v14 = v33;
    v7 = v36;
  }

  LOWORD(v37) = v14;
  WORD3(v37) = v40;
  *(&v37 + 2) = v39;
  *(&v37 + 1) = v6;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
  a4[6] = *v47;
  a4[7] = *&v47[16];
  a4[8] = v37;
  a4[9] = v38;
  a4[2] = v43;
  a4[3] = v44;
  a4[4] = v45;
  a4[5] = v46;
  result = *&v41;
  *a4 = v41;
  a4[1] = v42;
  return result;
}