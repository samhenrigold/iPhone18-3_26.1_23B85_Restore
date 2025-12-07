uint64_t destructiveInjectEnumTag for TLSError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t HandshakeMessage.logDescription.getter()
{
  v1 = *(v0 + 104);
  v2 = 0x6548746E65696C63;
  v3 = 0x64656873696E6966;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6369666974726563;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*(v0 + 104) <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*(v0 + 104))
  {
    v2 = 0x6548726576726573;
  }

  if (*(v0 + 104) > 1u)
  {
    v2 = v5;
  }

  if (*(v0 + 104) <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void HandshakeMessage.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 104);
  if (v7 <= 3)
  {
    if (*(v1 + 104) > 1u)
    {
      if (v7 == 2)
      {
        MEMORY[0x1B274DB20](2);
        v13 = *(v4 + 16);
        MEMORY[0x1B274DB20](v13);
        if (v13)
        {
          v14 = v4 + 32;
          do
          {
            v15 = *(v14 + 16);
            v34 = *v14;
            v35 = v15;
            v16 = *(v14 + 32);
            v17 = *(v14 + 48);
            v18 = *(v14 + 64);
            LOBYTE(v39) = *(v14 + 80);
            v37 = v17;
            v38 = v18;
            v36 = v16;
            outlined init with copy of Extension(&v34, v33);
            Extension.hash(into:)(a1);
            outlined destroy of Extension(&v34);
            v14 += 88;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        MEMORY[0x1B274DB20](3);

        CertificateRequest.hash(into:)(a1, v4, v3, v5, v6);
      }
    }

    else
    {
      *&v34 = *v1;
      *(&v34 + 1) = v3;
      *&v35 = v5;
      *(&v35 + 1) = v6;
      if (v7)
      {
        v21 = *(v1 + 48);
        v36 = *(v1 + 32);
        v22 = *(v1 + 64);
        v23 = *(v1 + 80);
        v37 = v21;
        v38 = v22;
        v39 = v23;
        MEMORY[0x1B274DB20](1);
        ServerHello.hash(into:)(a1);
      }

      else
      {
        v8 = *(v1 + 64);
        v9 = *(v1 + 80);
        v10 = *(v1 + 32);
        v37 = *(v1 + 48);
        v38 = v8;
        v39 = v9;
        v40 = *(v1 + 96);
        v36 = v10;
        MEMORY[0x1B274DB20](0);
        ClientHello.hash(into:)(a1);
      }
    }

    return;
  }

  if (*(v1 + 104) > 5u)
  {
    if (v7 != 6)
    {
      *&v34 = *v1;
      *(&v34 + 1) = v3;
      *&v35 = v5;
      *(&v35 + 1) = v6;
      v26 = *(v1 + 48);
      v36 = *(v1 + 32);
      v37 = v26;
      MEMORY[0x1B274DB20](7);
      NewSessionTicket.hash(into:)(a1);
      return;
    }

    MEMORY[0x1B274DB20](6);
    v19 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(v4 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = v4 >> 32;
    }

    else
    {
      v20 = BYTE6(v3);
    }

    if (v20 < v5)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }
  }

  else
  {
    if (v7 == 4)
    {
      MEMORY[0x1B274DB20](4);
      v11 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v4 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v4 >> 32;
      }

      else
      {
        v12 = BYTE6(v3);
      }

      if (v12 >= v5)
      {
        v27 = Data._Representation.subscript.getter();
        v29 = v28;
        Data.hash(into:)();
        outlined consume of Data._Representation(v27, v29);

        specialized Array<A>.hash(into:)(a1, v6);
        return;
      }

      __break(1u);
      goto LABEL_51;
    }

    MEMORY[0x1B274DB20](5);
    Hasher._combine(_:)(v4);
    v24 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v3 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = v3 >> 32;
    }

    else
    {
      v25 = BYTE6(v5);
    }

    if (v25 < v6)
    {
      goto LABEL_52;
    }
  }

  v30 = Data._Representation.subscript.getter();
  v32 = v31;
  Data.hash(into:)();

  outlined consume of Data._Representation(v30, v32);
}

Swift::Int HandshakeMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  HandshakeMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HandshakeMessage(uint64_t a1)
{
  Hasher.init(_seed:)();
  HandshakeMessage.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HandshakeMessage(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return specialized static HandshakeMessage.__derived_enum_equals(_:_:)(v10, v12) & 1;
}

uint64_t specialized static HandshakeMessage.__derived_enum_equals(_:_:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = a1[7];
  v9 = *(a1 + 104);
  if (v9 <= 3)
  {
    if (*(a1 + 104) > 1u)
    {
      if (v9 == 2)
      {
        if (*(a2 + 104) == 2)
        {
          v17 = *a2;
          v18 = *(v3 + 16);
          if (v18 == *(*a2 + 16))
          {
            if (v18 && v3 != v17)
            {
              v19 = (v3 + 32);
              v20 = v17 + 32;
              do
              {
                v21 = v19[1];
                v42[0] = *v19;
                v42[1] = v21;
                v22 = v19[2];
                v23 = v19[3];
                v24 = v19[4];
                v43 = v19[5].n128_u8[0];
                v42[3] = v23;
                v42[4] = v24;
                v42[2] = v22;
                v25 = *(v20 + 16);
                v44[0] = *v20;
                v44[1] = v25;
                v26 = *(v20 + 32);
                v27 = *(v20 + 48);
                v28 = *(v20 + 64);
                v45 = *(v20 + 80);
                v44[3] = v27;
                v44[4] = v28;
                v44[2] = v26;
                outlined init with copy of Extension(v42, v41);
                outlined init with copy of Extension(v44, v41);
                v31 = specialized static Extension.__derived_enum_equals(_:_:)(v42, v44, v29, v30);
                outlined destroy of Extension(v44);
                outlined destroy of Extension(v42);
                if ((v31 & 1) == 0)
                {
                  break;
                }

                v20 += 88;
                v19 = (v19 + 88);
                --v18;
              }

              while (v18);
              return v31 & 1;
            }

            goto LABEL_48;
          }
        }

        goto LABEL_54;
      }

      if (*(a2 + 104) != 3)
      {
        goto LABEL_54;
      }

      v14 = a2[3];
      if ((specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], *a2, a2[1], a2[2]) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v10 = a1[9];
      v11 = a1[10];
      v12 = a1[11];
      if (*(a1 + 104))
      {
        if (*(a2 + 104) == 1 && __PAIR64__(*(a2 + 1), *a2) == __PAIR64__(BYTE1(v3), v3) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 1), v4), vceqq_s64(*(a2 + 3), *(a1 + 3))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 5), v7), vceqq_s64(*(a2 + 7), *(a1 + 7))))) & 1) != 0 && v10 == a2[9] && *(a2 + 40) == v11 && *(a2 + 82) == BYTE2(v11) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v12, a2[11]) & 1) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }

      if (*(a2 + 104))
      {
        goto LABEL_54;
      }

      if (__PAIR64__(*(a2 + 1), *a2) != __PAIR64__(BYTE1(v3), v3))
      {
        goto LABEL_54;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 1), v4), vceqq_s64(*(a2 + 3), *(a1 + 3))))) & 1) == 0)
      {
        goto LABEL_54;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 5), v7), vceqq_s64(*(a2 + 7), *(a1 + 7))))) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v10 != a2[9])
      {
        goto LABEL_54;
      }

      v5 = a1[12];
      v13 = a2[11];
      v14 = a2[12];
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(v11, a2[10]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v12, v13) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v5, v14))
    {
LABEL_48:
      v31 = 1;
      return v31 & 1;
    }

LABEL_54:
    v31 = 0;
    return v31 & 1;
  }

  if (*(a1 + 104) <= 5u)
  {
    if (v9 == 4)
    {
      if (*(a2 + 104) == 4)
      {
        v15 = a2[3];
        if (specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], *a2, a2[1], a2[2]))
        {
          _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(v5, v15);
          if (v16)
          {
            goto LABEL_48;
          }
        }
      }
    }

    else if (*(a2 + 104) == 5 && *a2 == v3 && (specialized static ByteBuffer.== infix(_:_:)(v4.i64[0], v4.u64[1], a1[3], a2[1], a2[2], a2[3]) & 1) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_54;
  }

  if (v9 != 6)
  {
    if (*(a2 + 104) == 7 && *a2 == v3)
    {
      v36 = a2[4];
      v37 = a2[5];
      v38 = a2[6];
      v39 = a2[7];
      v40 = *(a1 + 5);
      if (specialized static ByteBuffer.== infix(_:_:)(v4.i64[0], v4.u64[1], a1[3], a2[1], a2[2], a2[3]) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v6, v40, *(&v40 + 1), v36, v37, v38) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v8, v39))
      {
        goto LABEL_48;
      }
    }

    goto LABEL_54;
  }

  if (*(a2 + 104) != 6)
  {
    goto LABEL_54;
  }

  v32 = a2[1];
  v33 = a2[2];
  v34 = *a2;

  return specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], v34, v32, v33);
}

unint64_t lazy protocol witness table accessor for type HandshakeMessage and conformance HandshakeMessage()
{
  result = lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage;
  if (!lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 105))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 104);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

void Extension.SupportedGroups.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int Extension.SupportedGroups.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.SupportedGroups()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.SupportedGroups(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = *(v2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV19readSupportedGroups11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 != 8 && a1 != 1)
  {
    v10 = a1 | 0xA0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v10;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  outlined copy of Data._Representation(*v1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v12 = v7;
  v13 = v9;
  v14 = v8 >> 62;
  v15 = BYTE6(v8);
  v16 = v7 >> 32;
  v30 = BYTE6(v8);
  if ((v8 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v7 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v7 >> 32;
  }

  v31 = v8;
  v27 = v5;
  v28 = v4;
  v29 = v3;
  v17 = __OFSUB__(v15, v9);
  v18 = v15 - v9;
  if (v17)
  {
    goto LABEL_44;
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 / 2) & ~((v18 + (v18 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = v13 + 2;
  if (__OFADD__(v13, 2))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = v19;
  while (v14 > 1)
  {
    v21 = v31;
    if (v14 == 2)
    {
      v22 = *(v12 + 24);
      goto LABEL_25;
    }

    if (v20 >= 1)
    {
      v25 = 0;
      goto LABEL_38;
    }

LABEL_28:
    v32 = v21;
    if (v20 < v13)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v12, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v12, v32);
    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 16) = v24 + 1;
    *(v10 + 2 * v24 + 32) = bswap32(0) >> 16;
    v13 = v20;
    v17 = __OFADD__(v20, 2);
    v20 += 2;
    if (v17)
    {
      goto LABEL_42;
    }
  }

  v22 = v30;
  v21 = v31;
  if (v14)
  {
    v22 = v16;
  }

LABEL_25:
  if (v22 >= v20)
  {
    goto LABEL_28;
  }

  v25 = v30;
  if (v14)
  {
    v25 = v16;
    if (v14 == 2)
    {
      v25 = *(v12 + 24);
    }
  }

LABEL_38:
  if (__OFSUB__(v25, v13))
  {
LABEL_45:
    __break(1u);
  }

  if (v25 == v13)
  {
    outlined consume of Data._Representation(v12, v21);
    outlined consume of Data._Representation(v28, v3);
  }

  else
  {
    v26 = v21;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v12, v26);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v28;
    v1[1] = v29;
    v1[2] = v27;
    swift_willThrowTypedImpl();
    return 1;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type Extension.SupportedGroups and conformance Extension.SupportedGroups()
{
  result = lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups;
  if (!lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups);
  }

  return result;
}

uint64_t (*ByteBuffer.writeRecord<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v68 = *MEMORY[0x1E69E9840];
  v60 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v61 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v49[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v49[-v10];
  v57 = *(v11 + 8);
  v58 = v11 + 8;
  LOBYTE(v63) = v57(v12, v11);
  v13 = &v63;
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v66 = MEMORY[0x1E69E6290];
  v67 = MEMORY[0x1E6969DF8];
  v64 = &v63;
  v65 = (&v63 + 1);
  __swift_project_boxed_opaque_existential_0(&v64, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v64);
  v55 = *(a3 + 16);
  v56 = a3 + 16;
  v63 = v55(a2, a3);
  v66 = v14;
  v67 = v15;
  v64 = &v63;
  v65 = &v64;
  __swift_project_boxed_opaque_existential_0(&v64, v14);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v64);
  v16 = *(a3 + 24);
  v17 = *(v16(a2, a3) + 16);

  if (v17 >> 16)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v63 = bswap32(v17) >> 16;
  v66 = v14;
  v67 = MEMORY[0x1E6969DF8];
  v64 = &v63;
  v65 = &v64;
  __swift_project_boxed_opaque_existential_0(&v64, v14);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v64);
  v18 = v16(a2, a3);
  v19 = v16;
  if (*(v18 + 16))
  {
    v20 = v18;
    Data._Representation.append(contentsOf:)();
    v13 = *(v20 + 16);
  }

  else
  {
    v13 = 0;
  }

  v16 = v62;
  v52 = v19;
  v53 = a3;
  v54 = a3 + 24;

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    _os_log_impl(&dword_1B25F5000, v22, v23, "wrote contentlength: %ld", v24, 0xCu);
    v25 = v24;
    v16 = v62;
    MEMORY[0x1B274ECF0](v25, -1, -1);
  }

  if (__OFADD__(v13, 5))
  {
    __break(1u);
  }

  v62 = (v13 + 5);
  v26 = v59;
  v27 = v60;
  v28 = *(v60 + 16);
  v28(v59, a1, a2);
  v28(v16, a1, a2);
  v29 = v61;
  v28(v61, a1, a2);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v64 = v51;
    *v32 = 136315906;
    v50 = v31;
    v33 = v53;
    v34 = v57(a2, v53);
    v35 = *(v27 + 8);
    v35(v26, a2);
    v36 = ContentType.description.getter(v34);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v64);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    v39 = v55(a2, v33);
    v35(v16, a2);
    v40 = ProtocolVersion.description.getter(v39);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v64);

    *(v32 + 14) = v42;
    *(v32 + 22) = 2048;
    v43 = v61;
    v44 = *(v52(a2, v33) + 16);

    v35(v43, a2);
    *(v32 + 24) = v44;
    *(v32 + 32) = 2048;
    v45 = v62;
    *(v32 + 34) = v62;
    _os_log_impl(&dword_1B25F5000, v30, v50, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v32, 0x2Au);
    v46 = v51;
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v46, -1, -1);
    MEMORY[0x1B274ECF0](v32, -1, -1);
  }

  else
  {
    v47 = *(v27 + 8);
    v47(v29, a2);
    v47(v16, a2);
    v47(v26, a2);

    return v62;
  }

  return v45;
}

uint64_t HandshakeStateMachine.Configuration.serverName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HandshakeStateMachine.Configuration.serverName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.validPublicKeys.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void HandshakeStateMachine.Configuration.quicTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ByteBuffer?(v3[3], v3[4]);
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
}

uint64_t HandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.ticketRequest.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 58) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.fixedKeyExchangeGroup.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 62) = BYTE2(result) & 1;
  return result;
}

void HandshakeStateMachine.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = v1[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for P256.Signing.PublicKey() - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = MEMORY[0x1B274D470]();
      v10 = v9;
      Data.hash(into:)();
      outlined consume of Data._Representation(v8, v10);
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  v11 = v2[4];
  if (v11 >> 60 != 15)
  {
    v15 = v2[3];
    v16 = v2[5];
    Hasher._combine(_:)(1u);
    v17 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v15 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = v15 >> 32;
    }

    else
    {
      v18 = BYTE6(v11);
    }

    if (v18 < v16)
    {
      __break(1u);
      return;
    }

    v19 = Data._Representation.subscript.getter();
    v21 = v20;
    Data.hash(into:)();
    outlined consume of Data._Representation(v19, v21);
    v12 = v2[6];
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v12 = v2[6];
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v13 = *(v12 + 16);
  MEMORY[0x1B274DB20](v13);
  if (v13)
  {
    v14 = v12 + 40;
    do
    {

      String.hash(into:)();

      v14 += 16;
      --v13;
    }

    while (v13);
  }
}

Swift::Int HandshakeStateMachine.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  HandshakeStateMachine.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HandshakeStateMachine.Configuration(uint64_t a1)
{
  Hasher.init(_seed:)();
  HandshakeStateMachine.Configuration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static HandshakeStateMachine.Configuration.== infix(_:_:)(v7, v9) & 1;
}

uint64_t specialized static HandshakeStateMachine.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16 || (*a1 != *a2 || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v92 = v5;
  v93 = v8;
  v91 = v7;
  v99 = *(a1 + 24);
  v17 = *(a1 + 40);
  v100 = v17;
  v97 = *(a2 + 24);
  v18 = *(a2 + 40);
  v98 = v18;
  v19 = v99;
  v20 = v97;
  if (*(&v99 + 1) >> 60 == 15)
  {
    if (*(&v97 + 1) >> 60 == 15)
    {
      outlined init with copy of Any?(&v99, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
      outlined init with copy of Any?(&v97, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
      outlined consume of ByteBuffer?(v19, *(&v19 + 1));
      goto LABEL_16;
    }

LABEL_12:
    outlined init with copy of Any?(&v99, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
    outlined init with copy of Any?(&v97, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
    outlined consume of ByteBuffer?(v19, *(&v19 + 1));
    outlined consume of ByteBuffer?(v20, *(&v20 + 1));
    return 0;
  }

  if (*(&v97 + 1) >> 60 == 15)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any?(&v99, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  outlined init with copy of Any?(&v97, v96, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  LODWORD(v90) = specialized static ByteBuffer.== infix(_:_:)(v19, *(&v19 + 1), v17, v20, *(&v20 + 1), v18);
  outlined consume of ByteBuffer?(v20, *(&v20 + 1));
  outlined consume of ByteBuffer?(v19, *(&v19 + 1));
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v22 = *(a1 + 48);
  v23 = *(a2 + 48);
  if (v22)
  {
    v25 = v91;
    v24 = v92;
    v26 = v93;
    if (v23 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v22, v23) & 1) != 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v25 = v91;
  v24 = v92;
  v26 = v93;
  if (v23)
  {
    return 0;
  }

LABEL_21:
  v27 = *(a1 + 16);
  v84 = *(v27 + 16);
  if (!v84)
  {
    return 1;
  }

  v28 = 0;
  v79 = 0;
  v29 = *(a2 + 16);
  v32 = *(v24 + 16);
  v30 = v24 + 16;
  v31 = v32;
  v33 = (*(v30 + 64) + 32) & ~*(v30 + 64);
  v34 = v27 + v33;
  v80 = *(v30 + 56);
  v85 = v29;
  v35 = v29 + v33;
  v81 = (v30 + 16);
  v90 = (v30 - 8);
  v92 = v30;
  v83 = v32;
  v82 = v14;
  v86 = v4;
  for (result = v32(v25, v27 + v33, v4); ; result = v31(v25, v34, v4))
  {
    v44 = *(v85 + 16);
    if (v28 == v44)
    {
      (*v90)(v25, v4);
      return 1;
    }

    if (v28 >= v44)
    {
      break;
    }

    v88 = v34;
    v89 = v28;
    v45 = *(v26 + 48);
    (*v81)(v14, v25, v4);
    v87 = v35;
    v31(&v14[v45], v35, v4);
    v46 = v94;
    v47 = outlined init with copy of Any?(v14, v94, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
    v48 = MEMORY[0x1B274D470](v47);
    v49 = v14;
    v51 = v50;
    v52 = *v90;
    (*v90)(v46, v4);
    v53 = v49;
    v54 = v95;
    v55 = outlined init with copy of Any?(v53, v95, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
    v56 = *(v26 + 48);
    v57 = MEMORY[0x1B274D470](v55);
    v59 = v58;
    v60 = v54 + v56;
    v61 = v51;
    result = (v52)(v60, v4);
    v62 = v59;
    v63 = v51 >> 62;
    v64 = v59 >> 62;
    if (v51 >> 62 == 3)
    {
      v65 = 0;
      v66 = v48;
      if (v48)
      {
        goto LABEL_40;
      }

      v25 = v91;
      v26 = v93;
      v31 = v83;
      v14 = v82;
      v4 = v86;
      if (v61 == 0xC000000000000000)
      {
        v67 = v89;
        if (v64 >= 3)
        {
          v65 = 0;
          if (!v57 && v62 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v68 = 0;
            v69 = 0xC000000000000000;
            goto LABEL_55;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v66 = v48;
      if (!v63)
      {
        v65 = BYTE6(v51);
LABEL_40:
        v25 = v91;
        v26 = v93;
        v31 = v83;
        v14 = v82;
        v67 = v89;
        v4 = v86;
LABEL_41:
        if (v64 <= 1)
        {
          goto LABEL_42;
        }

        goto LABEL_48;
      }

      v4 = v86;
      if (v63 == 1)
      {
        LODWORD(v65) = HIDWORD(v48) - v48;
        v25 = v91;
        v26 = v93;
        v31 = v83;
        v14 = v82;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
          goto LABEL_63;
        }

        v65 = v65;
      }

      else
      {
        v72 = *(v48 + 16);
        v71 = *(v48 + 24);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v25 = v91;
        v26 = v93;
        v31 = v83;
        v14 = v82;
        if (v73)
        {
          goto LABEL_62;
        }
      }
    }

    v67 = v89;
    if (v64 <= 1)
    {
LABEL_42:
      if (v64)
      {
        LODWORD(v70) = HIDWORD(v57) - v57;
        if (__OFSUB__(HIDWORD(v57), v57))
        {
          goto LABEL_60;
        }

        v70 = v70;
      }

      else
      {
        v70 = BYTE6(v62);
      }

      goto LABEL_50;
    }

LABEL_48:
    if (v64 != 2)
    {
      if (v65)
      {
LABEL_58:
        outlined consume of Data._Representation(v57, v62);
        outlined consume of Data._Representation(v66, v61);
        v77 = *(v26 + 48);
        outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v14);
        v52(v95, v4);
        v52((v94 + v77), v4);
        return 0;
      }

LABEL_54:
      outlined consume of Data._Representation(v57, v62);
      v68 = v66;
      v69 = v61;
LABEL_55:
      outlined consume of Data._Representation(v68, v69);
      v76 = *(v26 + 48);
      outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v14);
      v52(v95, v4);
      v52((v94 + v76), v4);
      goto LABEL_24;
    }

    v75 = *(v57 + 16);
    v74 = *(v57 + 24);
    v73 = __OFSUB__(v74, v75);
    v70 = v74 - v75;
    if (v73)
    {
      goto LABEL_61;
    }

LABEL_50:
    if (v65 != v70)
    {
      goto LABEL_58;
    }

    if (v65 < 1)
    {
      goto LABEL_54;
    }

    v36 = v62;
    outlined copy of Data._Representation(v57, v62);
    v37 = v66;
    v38 = v66;
    v39 = v52;
    v40 = v79;
    LODWORD(v89) = specialized Data.withUnsafeBytes<A>(_:)(v37, v61, v57, v36);
    v79 = v40;
    v41 = v36;
    v26 = v93;
    outlined consume of Data._Representation(v57, v41);
    v42 = v38;
    v4 = v86;
    outlined consume of Data._Representation(v42, v61);
    v43 = *(v26 + 48);
    outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v14);
    v39(v95, v4);
    v39(v94 + v43, v4);
    if ((v89 & 1) == 0)
    {
      return 0;
    }

LABEL_24:
    v28 = v67 + 1;
    v35 = v87 + v80;
    v34 = v88 + v80;
    result = 1;
    if (v84 == v28)
    {
      return result;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration()
{
  result = lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration;
  if (!lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeStateMachine.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for HandshakeStateMachine.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 LegacySessionID.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (dispatch thunk of Collection.count.getter() > 32)
  {
    __break(1u);
  }

  UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
  v7 = dispatch thunk of Collection.count.getter();
  (*(*(a2 - 8) + 8))(a1, a2);
  result = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = v7;
  return result;
}

uint64_t static LegacySessionID.random()@<X0>(void *a1@<X8>)
{
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v2 = v7;
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v3 = v7;
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v4 = v7;
  v7 = 0;
  result = MEMORY[0x1B274ED00](&v7, 8);
  v6 = v7;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 32;
  return result;
}

double static LegacySessionID.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t LegacySessionID.hash(into:)()
{
  MEMORY[0x1B274DB20](v0[4]);
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v3);
  return MEMORY[0x1B274DB60](v2);
}

Swift::Int LegacySessionID.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v0[4]);
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LegacySessionID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v5);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LegacySessionID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1B274DB20](v0[4]);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  return MEMORY[0x1B274DB60](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LegacySessionID(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v6);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  return Hasher._finalize()();
}

void specialized Collection.prefix(_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = specialized RandomAccessCollection<>.distance(from:to:)(v10, v9, a2, a3);
  if (a1 && v11 < a1)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    v13 = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, a1, a2, a3);
  v13 = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    v13 = a2;
  }

LABEL_27:
  if (v12 >= v13)
  {
LABEL_28:
    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    outlined consume of Data._Representation(a2, a3);
    *a4 = v14;
    a4[1] = v16;
    return;
  }

LABEL_31:
  __break(1u);
}

void _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  outlined copy of Data._Representation(*v2, v6);
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v9 & 0x100) != 0 || (v10 = ByteBuffer.readSlice(length:)(v9), v11 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    v13 = 0;
    *v2 = v7;
    v2[1] = v6;
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
    v2[2] = v8;
LABEL_4:
    *a2 = v14;
    *(a2 + 16) = v16;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    return;
  }

  v31 = v10;
  v32 = v11;
  v33 = v12;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v31, v26, &v28);
  if (v3)
  {
    v18 = v26[0];
    v17 = v26[1];
    v19 = v27;
    v20 = v31;
    v21 = v32;
LABEL_18:
    outlined consume of Data._Representation(v20, v21);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *&v28 = v18;
    *(&v28 + 1) = v17;
    LOBYTE(v29) = v19;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    *a1 = v18;
    *(a1 + 8) = v17;
    *(a1 + 16) = v19;
    return;
  }

  v22 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v31 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v31 >> 32;
  }

  else
  {
    v23 = BYTE6(v32);
  }

  if (!__OFSUB__(v23, v33))
  {
    if (v23 == v33)
    {
      outlined consume of Data._Representation(v31, v32);
      outlined consume of Data._Representation(v7, v6);
      v15 = 0;
      v14 = v28;
      v16 = v29;
      v13 = v30;
      goto LABEL_4;
    }

    v19 = 2;
    v24 = v31;
    v25 = v32;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v21 = v25;
    v20 = v24;
    v17 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type LegacySessionID and conformance LegacySessionID()
{
  result = lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID;
  if (!lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID);
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

uint64_t getEnumTagSinglePayload for LegacySessionID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LegacySessionID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t TLSRecordParser.numberOfBytesBuffered.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a1 >> 32;
  }

  else
  {
    v5 = BYTE6(a2);
  }

  result = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TLSRecordParser.clearBufferedBytes()()
{
  outlined consume of ByteBuffer?(*v0, v0[1]);
  *v0 = xmmword_1B26C5EF0;
  v0[2] = 0;
}

Swift::Void __swiftcall TLSRecordParser.appendBytes(_:)(Swift::OpaquePointer a1)
{
  if (v1[1] >> 60 == 15)
  {

    v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v2);
    v5 = v4;

    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      v7 = 0;
      if (v6 == 2)
      {
        v7 = *(v3 + 16);
      }
    }

    else if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    outlined consume of ByteBuffer?(*v1, v1[1]);
    *v1 = v3;
    v1[1] = v5;
    v1[2] = v7;
  }

  else if (*(a1._rawValue + 2))
  {

    Data._Representation.append(contentsOf:)();
  }
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF()
{
  result = _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(0);
  if (!v0)
  {
    if (v3 == -1)
    {
      return 0;
    }

    else if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = result;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1B25F5000, v8, v9, "unexpectedly parsed ciphertext when expecting plaintext", v10, 2u);
        MEMORY[0x1B274ECF0](v10, -1, -1);
      }

      outlined consume of TLSRecord?(v6, v5, v4);
      return 0;
    }

    else
    {
      return result & 0xFFFFFF;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(char a1)
{
  v3 = v2;
  v31 = 0;
  v4 = v1[1];
  if (v4 >> 60 == 15)
  {
LABEL_2:
    if (one-time initialization token for logger != -1)
    {
LABEL_36:
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "less than 5 bytes to parse, need at least 5 for any valid record, waiting for more data", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v12 = *v1;
      v13 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v14 = *(v12 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else if (v13)
      {
        v14 = v12 >> 32;
      }

      else
      {
        v14 = BYTE6(v4);
      }

      v15 = v1[2];
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 < 5)
      {
        goto LABEL_2;
      }

      outlined copy of Data._Representation(*v1, v4);
      _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKFAiA10ByteBufferVzAKYKXEfU_(v1, a1 & 1, v1, &v31, v26, &v28);
      if (v3)
      {
        outlined consume of Data._Representation(*v1, v1[1]);
        v9 = v26[0];
        v20 = v26[1];
        v21 = v27;
        *v1 = v12;
        v1[1] = v4;
        v1[2] = v15;
        v28 = v9;
        v29 = v20;
        v30 = v21;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return v9;
      }

      v3 = 0;
      v9 = v28;
      v18 = v29;
      v19 = v30;
      if (v30 == 255)
      {
        outlined consume of Data._Representation(*v1, v1[1]);
        *v1 = v12;
        v1[1] = v4;
        v1[2] = v15;
      }

      else
      {
        outlined consume of Data._Representation(v12, v4);
      }

      if (v31 != 1)
      {
        break;
      }

      outlined consume of TLSRecord?(v9, v18, v19);
      v4 = v1[1];
      if (v4 >> 60 == 15)
      {
        goto LABEL_2;
      }
    }

    result = *v1;
    v22 = v1[1];
    v23 = v1[2];
    if (v22 >> 60 == 15)
    {
LABEL_34:
      outlined consume of ByteBuffer?(result, v22);
      *v1 = xmmword_1B26C6130;
      v1[2] = 0;
      return v9;
    }

    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(result + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = result >> 32;
    }

    else
    {
      v25 = BYTE6(v22);
    }

    if (!__OFSUB__(v25, v23))
    {
      if (v25 != v23)
      {
        return v9;
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV21parseCiphertextRecordAA13TLSCiphertextVSgyAA8TLSErrorOYKF()
{
  result = _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(1);
  if (!v0)
  {
    if (v3 == -1)
    {
      return 0;
    }

    else if ((v3 & 1) == 0)
    {
      v4 = v3;
      v5 = v2;
      v6 = result;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1B25F5000, v8, v9, "unexpectedly parsed plaintext when expecting ciphertext", v10, 2u);
        MEMORY[0x1B274ECF0](v10, -1, -1);
      }

      outlined consume of TLSRecord?(v6, v5, v4);
      return 0;
    }
  }

  return result;
}

void _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKFAiA10ByteBufferVzAKYKXEfU_(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v108 = a2;
  v11 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v11 & 0x100) != 0 || (v12 = v11, v13 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v13 & 0x10000) != 0))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "failed to parse contentType and protocolVersion";
    goto LABEL_13;
  }

  v14 = v13;
  if (v12 == 23 && (v108 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "record protection not enabled and received record with content type application data";
    goto LABEL_13;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v103 = a4;
  v104 = a6;
  v105 = a3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v106 = v26;
    *v25 = 136315138;
    v27 = ProtocolVersion.description.getter(bswap32(v14) >> 16);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v106);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B25F5000, v23, v24, "protocolVersion is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B274ECF0](v26, -1, -1);
    MEMORY[0x1B274ECF0](v25, -1, -1);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v106 = v33;
    *v32 = 136315138;
    v34 = ContentType.description.getter(v12);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v106);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1B25F5000, v30, v31, "content type is %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B274ECF0](v33, -1, -1);
    MEMORY[0x1B274ECF0](v32, -1, -1);
  }

  v37 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v16 = Logger.logObject.getter();
  if ((v37 & 0x10000) != 0)
  {
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "unable to read content length";
LABEL_13:
    _os_log_impl(&dword_1B25F5000, v16, v17, v19, v18, 2u);
    MEMORY[0x1B274ECF0](v18, -1, -1);
LABEL_14:

    v21 = xmmword_1B26C88C0;
LABEL_15:
    *a5 = v21;
    *(a5 + 16) = 2;
    v106 = v21;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return;
  }

  v38 = v37;
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 33554688;
    *(v40 + 4) = v37;
    _os_log_impl(&dword_1B25F5000, v16, v39, "content length is: %hu", v40, 6u);
    MEMORY[0x1B274ECF0](v40, -1, -1);
  }

  if ((v108 & 1) == 0)
  {
    if (v37 <= 0x4000u)
    {
      goto LABEL_41;
    }

    v41 = 0x4000;
LABEL_32:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v106 = v45;
      *v44 = 33555202;
      *(v44 + 4) = v38;
      *(v44 + 6) = 512;
      *(v44 + 8) = v41;
      *(v44 + 10) = 2080;
      if (v108)
      {
        v46 = 0x6574726568706963;
      }

      else
      {
        v46 = 0x7865746E69616C70;
      }

      if (v108)
      {
        v47 = 0xEA00000000007478;
      }

      else
      {
        v47 = 0xE900000000000074;
      }

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v106);

      *(v44 + 12) = v48;
      _os_log_impl(&dword_1B25F5000, v42, v43, "contentLength (%hu bytes) exceeds maximum length of %hu bytes for %s messages", v44, 0x14u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B274ECF0](v45, -1, -1);
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    v21 = xmmword_1B26C88E0;
    goto LABEL_15;
  }

  v41 = 16640;
  if (v37 > 0x4100u)
  {
    goto LABEL_32;
  }

LABEL_41:
  v49 = v37;
  v50 = ByteBuffer.readSlice(length:)(v49);
  if (v51 >> 60 == 15)
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1B25F5000, v53, v54, "unable to read full content, waiting for more data", v55, 2u);
      MEMORY[0x1B274ECF0](v55, -1, -1);
    }

    v56 = *a1;
    v57 = a1[1];
    v58 = a1[2];
    v59 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v59 == 2)
      {
        v60 = *(v56 + 24);
      }

      else
      {
        v60 = 0;
      }
    }

    else if (v59)
    {
      v60 = v56 >> 32;
    }

    else
    {
      v60 = BYTE6(v57);
    }

    v69 = __OFSUB__(v60, v58);
    v70 = v60 - v58;
    if (v69)
    {
      __break(1u);
    }

    else
    {
      v69 = __OFSUB__(v49, v70);
      v71 = v49 - v70;
      if (!v69)
      {
        *(v105 + 24) = v71;
        *v104 = 0;
        *(v104 + 8) = 0;
        *(v104 + 16) = -1;
        return;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

  v61 = v51;
  *(v105 + 24) = 5;
  if (v12 == 20)
  {
    v62 = v50;
    v63 = v52;
    if (v37 == 1)
    {
      v64 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v64 == 2)
        {
          v65 = *(v50 + 24);
        }

        else
        {
          v65 = 0;
        }
      }

      else if (v64)
      {
        v65 = v50 >> 32;
      }

      else
      {
        v65 = BYTE6(v51);
      }

      if (v65 < v52)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v73 = Data._Representation.subscript.getter();
      v75 = v74;
      v76 = v61;
      v77 = specialized Collection.first.getter(v73, v74);
      outlined consume of Data._Representation(v73, v75);
      v78 = v77 & 0x1FF;
      v61 = v76;
      if (v78 == 1)
      {
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_1B25F5000, v79, v80, "got a change cipher spec message with value 0x01, ignoring", v81, 2u);
          MEMORY[0x1B274ECF0](v81, -1, -1);
        }

        *v103 = 1;
        if (v64 > 1)
        {
          if (v64 == 2)
          {
            v82 = *(v62 + 24);
          }

          else
          {
            v82 = 0;
          }
        }

        else if (v64)
        {
          v82 = v62 >> 32;
        }

        else
        {
          v82 = BYTE6(v76);
        }

        v66 = v104;
        if (v82 < v63)
        {
          goto LABEL_115;
        }

        v98 = Data._Representation.subscript.getter();
        v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v98, v99);
        outlined consume of ByteBuffer?(v62, v76);
        v97 = 197396;
        goto LABEL_106;
      }
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v61;
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1B25F5000, v83, v84, "received unexpected change cipher spec message", v86, 2u);
      v87 = v86;
      v61 = v85;
      MEMORY[0x1B274ECF0](v87, -1, -1);
    }

    *a5 = xmmword_1B26C6430;
    *(a5 + 16) = 2;
    v106 = xmmword_1B26C6430;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v88 = v62;
    v89 = v61;
LABEL_90:
    outlined consume of ByteBuffer?(v88, v89);
    return;
  }

  v66 = v104;
  *v103 = 0;
  v67 = v51 >> 62;
  if ((v108 & 1) == 0)
  {
    if (v67 > 1)
    {
      if (v67 == 2)
      {
        v72 = *(v50 + 24);
      }

      else
      {
        v72 = 0;
      }
    }

    else if (v67)
    {
      v72 = v50 >> 32;
    }

    else
    {
      v72 = BYTE6(v51);
    }

    if (v72 < v52)
    {
      goto LABEL_114;
    }

    v93 = v50;
    v94 = Data._Representation.subscript.getter();
    v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v94, v95);
    outlined consume of ByteBuffer?(v93, v61);
    v97 = v12 | 0x30300;
LABEL_106:
    *v66 = v97;
    *(v66 + 8) = v96;
    *(v66 + 16) = 0;
    return;
  }

  if (v67 > 1)
  {
    if (v67 == 2)
    {
      v68 = *(v50 + 24);
    }

    else
    {
      v68 = 0;
    }
  }

  else if (v67)
  {
    v68 = v50 >> 32;
  }

  else
  {
    v68 = BYTE6(v51);
  }

  v69 = __OFSUB__(v68, v52);
  v90 = v68 - v52;
  if (v69)
  {
    goto LABEL_113;
  }

  v91 = v50;
  if (v90 < 16)
  {
    *a5 = xmmword_1B26C88D0;
    *(a5 + 16) = 2;
    v106 = xmmword_1B26C88D0;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v88 = v91;
    v89 = v61;
    goto LABEL_90;
  }

  if (v67 > 1)
  {
    if (v67 == 2)
    {
      v92 = *(v50 + 24);
    }

    else
    {
      v92 = 0;
    }
  }

  else if (v67)
  {
    v92 = v50 >> 32;
  }

  else
  {
    v92 = BYTE6(v51);
  }

  if (v92 >= v52)
  {
    v100 = Data._Representation.subscript.getter();
    v102 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v100, v101);
    outlined consume of ByteBuffer?(v91, v61);
    *v104 = v102;
    *(v104 + 8) = 0;
    *(v104 + 16) = 1;
    return;
  }

LABEL_116:
  __break(1u);
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B274D640](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t outlined consume of TLSRecord?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TLSRecord(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSRecordParser(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSRecordParser(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV23readSignatureAlgorithms11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 != 13 && a1 != 1)
  {
    v10 = a1 | 0xD0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v10;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  outlined copy of Data._Representation(*v1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v12 = v7;
  v13 = v9;
  v14 = v8 >> 62;
  v15 = BYTE6(v8);
  v16 = v7 >> 32;
  v30 = BYTE6(v8);
  if ((v8 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v7 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v7 >> 32;
  }

  v31 = v8;
  v27 = v5;
  v28 = v4;
  v29 = v3;
  v17 = __OFSUB__(v15, v9);
  v18 = v15 - v9;
  if (v17)
  {
    goto LABEL_44;
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 / 2) & ~((v18 + (v18 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = v13 + 2;
  if (__OFADD__(v13, 2))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = v19;
  while (v14 > 1)
  {
    v21 = v31;
    if (v14 == 2)
    {
      v22 = *(v12 + 24);
      goto LABEL_25;
    }

    if (v20 >= 1)
    {
      v25 = 0;
      goto LABEL_38;
    }

LABEL_28:
    v32 = v21;
    if (v20 < v13)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v12, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v12, v32);
    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 16) = v24 + 1;
    *(v10 + 2 * v24 + 32) = bswap32(0) >> 16;
    v13 = v20;
    v17 = __OFADD__(v20, 2);
    v20 += 2;
    if (v17)
    {
      goto LABEL_42;
    }
  }

  v22 = v30;
  v21 = v31;
  if (v14)
  {
    v22 = v16;
  }

LABEL_25:
  if (v22 >= v20)
  {
    goto LABEL_28;
  }

  v25 = v30;
  if (v14)
  {
    v25 = v16;
    if (v14 == 2)
    {
      v25 = *(v12 + 24);
    }
  }

LABEL_38:
  if (__OFSUB__(v25, v13))
  {
LABEL_45:
    __break(1u);
  }

  if (v25 == v13)
  {
    outlined consume of Data._Representation(v12, v21);
    outlined consume of Data._Representation(v28, v3);
  }

  else
  {
    v26 = v21;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v12, v26);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v28;
    v1[1] = v29;
    v1[2] = v27;
    swift_willThrowTypedImpl();
    return 1;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms()
{
  result = lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms;
  if (!lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms);
  }

  return result;
}

uint64_t Random.init()()
{
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  return v0;
}

uint64_t Random.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dispatch thunk of Collection.count.getter() != 32)
  {
    __break(1u);
  }

  UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return 0;
}

void one-time initialization function for helloRetryRequest()
{
  if (qword_1F29DB490 == 32)
  {
    static Random.helloRetryRequest = xmmword_1F29DB4A0;
    *(&xmmword_1ED4D5F88 + 8) = unk_1F29DB4B0;
  }

  else
  {
    __break(1u);
  }
}

void *Random.helloRetryRequest.unsafeMutableAddressor()
{
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return &static Random.helloRetryRequest;
}

uint64_t static Random.helloRetryRequest.getter()
{
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return static Random.helloRetryRequest;
}

uint64_t Random.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1B274DB60](a2);
  MEMORY[0x1B274DB60](a3);
  MEMORY[0x1B274DB60](a4);
  return MEMORY[0x1B274DB60](a5);
}

Swift::Int Random.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](a1);
  MEMORY[0x1B274DB60](a2);
  MEMORY[0x1B274DB60](a3);
  MEMORY[0x1B274DB60](a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Random()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Random()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  return MEMORY[0x1B274DB60](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Random(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  return Hasher._finalize()();
}

uint64_t ByteBuffer.writeRandom(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v6[3] = MEMORY[0x1E69E6290];
  v6[4] = MEMORY[0x1E6969DF8];
  v6[0] = v5;
  v6[1] = v6;
  __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 32;
}

unint64_t lazy protocol witness table accessor for type Random and conformance Random()
{
  result = lazy protocol witness table cache variable for type Random and conformance Random;
  if (!lazy protocol witness table cache variable for type Random and conformance Random)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Random and conformance Random);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Random(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Random(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<Data>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Extension.PreSharedKeyKexModes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int Extension.PreSharedKeyKexModes.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKeyKexModes()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKeyKexModes(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = *(v2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readPreSharedKeyKexModes11messageTypeAA9ExtensionO0fghiJ0VAA09HandshakeL0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v4 = *v1;
    v3 = v1[1];
    v5 = v1[2];
    outlined copy of Data._Representation(*v1, v3);
    v6 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n();
    v7 = v6;
    if (v2 || !v6)
    {
      outlined consume of Data._Representation(*v1, v1[1]);
      *v1 = v4;
      v1[1] = v3;
      v1[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }

    else
    {
      outlined consume of Data._Representation(v4, v3);
    }
  }

  else
  {
    v7 = a1 | 0x2D0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes);
  }

  return result;
}

uint64_t Extension.PAKE.PAKEClientHello.serverIdentity.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data._Representation(v1, *(v0 + 32));
  return v1;
}

void Extension.PAKE.PAKEClientHello.serverIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of Data._Representation(v3[3], v3[4]);
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
}

uint64_t Extension.PAKE.PAKEClientHello.init(clientIdentity:serverIdentity:clientShares:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t Extension.PAKE.PAKEServerHello.serverShare.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  outlined copy of Data._Representation(v1, v2);
  return v3;
}

void Extension.PAKE.PAKEServerHello.serverShare.setter(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined consume of Data._Representation(*(v4 + 8), *(v4 + 16));
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
}

uint64_t Extension.PAKE.PAKEServerHello.clientIdentity.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

void Extension.PAKE.PAKEServerHello.clientIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ByteBuffer?(v3[4], v3[5]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
}

uint64_t Extension.PAKE.PAKEServerHello.serverIdentity.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

void Extension.PAKE.PAKEServerHello.serverIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ByteBuffer?(v3[7], v3[8]);
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
}

uint64_t Extension.PAKE.PAKEServerHello.init(serverShare:clientIdentity:serverIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t static Extension.PAKE.PAKEClientHello.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(a1[3], a1[4], a1[5], a2[3], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v4, v5);
}

uint64_t Extension.PAKE.PAKEClientHello.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
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

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v7 = Data._Representation.subscript.getter();
  v9 = v8;
  Data.hash(into:)();
  outlined consume of Data._Representation(v7, v9);
  v10 = v1[3];
  v11 = v1[4];
  result = v1[5];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  if (v13 < result)
  {
    goto LABEL_21;
  }

  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  Data.hash(into:)();
  outlined consume of Data._Representation(v14, v16);

  return specialized Array<A>.hash(into:)();
}

Swift::Int Extension.PAKE.PAKEClientHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE.PAKEClientHello(uint64_t a1)
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEClientHello.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE.PAKEClientHello(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(v2, v3, v4, v6, v7, v8) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v5, v9);
}

void Extension.PAKE.PAKEServerHello.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Hasher._combine(_:)(*v1);
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

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = Data._Representation.subscript.getter();
  v9 = v8;
  Data.hash(into:)();
  outlined consume of Data._Representation(v7, v9);
  v10 = *(v1 + 40);
  if (v10 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    goto LABEL_20;
  }

  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  Hasher._combine(_:)(1u);
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  if (v14 < v12)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.hash(into:)();
  outlined consume of Data._Representation(v15, v17);
LABEL_20:
  v18 = *(v1 + 64);
  if (v18 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    return;
  }

  v19 = *(v1 + 56);
  v20 = *(v1 + 72);
  Hasher._combine(_:)(1u);
  v21 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v19 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v19 >> 32;
  }

  else
  {
    v22 = BYTE6(v18);
  }

  if (v22 < v20)
  {
    goto LABEL_35;
  }

  v23 = Data._Representation.subscript.getter();
  v25 = v24;
  Data.hash(into:)();

  outlined consume of Data._Representation(v23, v25);
}

Swift::Int Extension.PAKE.PAKEServerHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEServerHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE.PAKEServerHello(uint64_t a1)
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEServerHello.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE.PAKEServerHello(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v8, v9);
}

BOOL static Extension.PAKE.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v9 = a1[5];
  v8 = a1[6];
  if ((a1[10] & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      v13 = *(a2 + 32);
      v14 = *(a2 + 40);
      v15 = *(a2 + 48);
      v16 = *(a2 + 24);
      if (specialized static ByteBuffer.== infix(_:_:)(v3, v5, v4, *a2, *(a2 + 8), *(a2 + 16)) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v7, v6, v9, v16, v13, v14) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v8, v15))
      {
        return 1;
      }
    }

    return 0;
  }

  v19[0] = v3;
  v19[1] = v5;
  v19[2] = v4;
  v19[3] = v7;
  v19[4] = v6;
  v19[5] = v9;
  v19[6] = v8;
  v20 = *(a1 + 7);
  v21 = a1[9];
  if ((*(a2 + 80) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v10;
  v18[4] = *(a2 + 64);
  v11 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v11;
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v19, v18);
}

void Extension.PAKE.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 80))
  {
    v9 = *(v1 + 64);
    v36 = *(v1 + 72);
    v37 = *(v1 + 56);
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v2);
    v10 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(v3 + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = v3 >> 32;
    }

    else
    {
      v11 = BYTE6(v5);
    }

    if (v11 >= v4)
    {
      v19 = Data._Representation.subscript.getter();
      v21 = v20;
      Data.hash(into:)();
      outlined consume of Data._Representation(v19, v21);
      if (v7 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        goto LABEL_39;
      }

      Hasher._combine(_:)(1u);
      v22 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(v6 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else if (v22)
      {
        v23 = v6 >> 32;
      }

      else
      {
        v23 = BYTE6(v7);
      }

      if (v23 >= v8)
      {
        v27 = Data._Representation.subscript.getter();
        v29 = v28;
        Data.hash(into:)();
        outlined consume of Data._Representation(v27, v29);
LABEL_39:
        if (v9 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          return;
        }

        Hasher._combine(_:)(1u);
        v30 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          v31 = v36;
          if (v30 == 2)
          {
            v32 = *(v37 + 24);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v31 = v36;
          if (v30)
          {
            v32 = v37 >> 32;
          }

          else
          {
            v32 = BYTE6(v9);
          }
        }

        if (v32 >= v31)
        {
          v33 = Data._Representation.subscript.getter();
          v35 = v34;
          Data.hash(into:)();

          outlined consume of Data._Representation(v33, v35);
          return;
        }

LABEL_56:
        __break(1u);
        return;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  MEMORY[0x1B274DB20](0);
  v12 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v13 = 0;
    if (v12 == 2)
    {
      v13 = *(v2 + 24);
    }
  }

  else if (v12)
  {
    v13 = v2 >> 32;
  }

  else
  {
    v13 = BYTE6(v3);
  }

  if (v13 < v5)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  Data.hash(into:)();
  outlined consume of Data._Representation(v14, v16);
  v17 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v4 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v4 >> 32;
  }

  else
  {
    v18 = BYTE6(v6);
  }

  if (v18 < v7)
  {
    goto LABEL_54;
  }

  v24 = Data._Representation.subscript.getter();
  v26 = v25;
  Data.hash(into:)();
  outlined consume of Data._Representation(v24, v26);

  specialized Array<A>.hash(into:)();
}

Swift::Int Extension.PAKE.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE(uint64_t a1)
{
  Hasher.init(_seed:)();
  Extension.PAKE.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v14 = a2[6];
  v15 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    return (a2[10] & 1) == 0 && (specialized static ByteBuffer.== infix(_:_:)(*a1, v2, v3, v8, v9, v10) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v4, v6, v5, v11, v13, v12) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v7, v14) & 1) != 0;
  }

  v18[0] = *a1;
  v18[1] = v2;
  v18[2] = v3;
  v18[3] = v4;
  v18[4] = v6;
  v18[5] = v5;
  v18[6] = v7;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v21[0] = v8;
  v21[1] = v9;
  v21[2] = v10;
  v21[3] = v11;
  v21[4] = v13;
  v21[5] = v12;
  v21[6] = v14;
  v22 = *(a2 + 7);
  v23 = a2[9];
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v18, v21);
}

unint64_t ByteBuffer.writePAKE(_:)(unsigned __int16 *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  *(&v23 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v24 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  if ((v3 & 1) == 0)
  {
    if (a1[40])
    {
      v8 = *(a1 + 3);
      v24 = *(a1 + 2);
      v25 = v8;
      v26 = *(a1 + 4);
      v9 = *(a1 + 1);
      v22 = *a1;
      v23 = v9;
      return ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v22);
    }

    v10 = *(a1 + 1);
    v22 = *a1;
    v23 = v10;
    v24 = *(a1 + 2);
    *&v25 = *(a1 + 6);
    v11 = *v1;
    v12 = v1[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v16 = *(v11 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v14 = BYTE6(v12);
      v15 = v11 >> 32;
      if (v13)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }
    }

    v20 = 0;
    v21[3] = MEMORY[0x1E69E6290];
    v21[4] = MEMORY[0x1E6969DF8];
    v21[0] = &v20;
    v21[1] = v21;
    __swift_project_boxed_opaque_existential_0(v21, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(v21);
    v17 = v25;
    outlined init with copy of Extension.PAKE.PAKEClientHello(&v22, v21);
    specialized Sequence.reduce<A>(into:_:)(0, v17, v1, &v22);
    v19 = v18;
    outlined destroy of Extension.PAKE(a1);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v19 >> 16))
    {
      _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v19, v16);
      return v19 + 2;
    }

    __break(1u);
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (a1[40])
  {
    return ByteBuffer.writePAKEShareRFC(_:)(*a1, v4, v5, v6);
  }

  LOWORD(v22) = *a1;
  *(&v22 + 2) = *(a1 + 1);
  WORD3(v22) = a1[3];
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v24 = *(a1 + 2);
  *&v25 = *(a1 + 6);
  return ByteBuffer.writePAKEClientHelloRFC(_:)(&v22);
}

unint64_t ByteBuffer.writePAKERFC(_:)(unsigned __int16 *a1, __n128 a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  if (a1[40])
  {
    v5 = *a1;

    return ByteBuffer.writePAKEShareRFC(_:)(v5, v2, v3, v4);
  }

  else
  {
    v7[0] = *a1;
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
    v8 = *(a1 + 2);
    v9 = *(a1 + 6);
    return ByteBuffer.writePAKEClientHelloRFC(_:)(v7);
  }
}

unint64_t ByteBuffer.writePAKENonRFC(_:)(__int128 *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1[5])
  {
    v2 = a1[3];
    v20 = a1[2];
    v21 = v2;
    v22 = a1[4];
    v3 = a1[1];
    v18 = *a1;
    v19 = v3;
    return ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v18);
  }

  v5 = a1[1];
  v18 = *a1;
  v19 = v5;
  v20 = a1[2];
  *&v21 = *(a1 + 6);
  v6 = *v1;
  v7 = v1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v12 = *(v6 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = BYTE6(v7);
    v11 = v6 >> 32;
    if (v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  v16 = 0;
  v17[3] = MEMORY[0x1E69E6290];
  v17[4] = MEMORY[0x1E6969DF8];
  v17[0] = &v16;
  v17[1] = v17;
  __swift_project_boxed_opaque_existential_0(v17, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v13 = v21;
  outlined init with copy of Extension.PAKE.PAKEClientHello(&v18, v17);
  specialized Sequence.reduce<A>(into:_:)(0, v13, v1, &v18);
  v15 = v14;
  outlined destroy of Extension.PAKE(a1);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v15 >> 16)
  {
    goto LABEL_15;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v15, v12);
  return v15 + 2;
}

double _s15SwiftTLSLibrary10ByteBufferV8readPAKE11messageType17helloRetryRequestAA9ExtensionO0F0OAA09HandshakeH0V_SbtAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[3] = &type metadata for SwiftTLSFeatureFlags;
  v21[4] = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v9 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((v9 & 1) == 0)
  {
    v10 = v23;
    _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF(a1, a2 & 1, &v19, v23);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = v20;
    *&v11 = v19;
    *a3 = v19;
    *(a3 + 16) = v17;
    return *&v11;
  }

  v10 = v22;
  _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF(a1, a2 & 1, &v19, v22);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  v26 = v11;
  v27 = v12;
  v28 = *(v10 + 4);
  v13 = v28;
  v29 = *(v10 + 80);
  v14 = v29;
  v16 = *(v10 + 1);
  v24 = *v10;
  v15 = v24;
  v25 = v16;
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  *a4 = v15;
  *(a4 + 16) = v16;
  return *&v11;
}

double _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B25F5000, v8, v9, "PAKE extension not supported for hello retry requests", v10, 2u);
      MEMORY[0x1B274ECF0](v10, -1, -1);
    }

    v11 = v6 | 0x8A3B0000;
    v33 = v11;
    LOBYTE(v34) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
LABEL_18:
    swift_willThrowTypedImpl();
    v19 = 0;
    v20 = 0;
    goto LABEL_19;
  }

  if (a1 == 2)
  {
    v12 = a4;
    _s15SwiftTLSLibrary10ByteBufferV22readPAKEServerHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(v29, v37);
    if (!v4)
    {
      v15 = v37[0];
      v16 = v37[1];
      v17 = v37[2];
      v18 = v38;
      v33 = v39;
      v34 = v40;
      v14 = 1;
      LOBYTE(v31[0]) = 1;
      goto LABEL_21;
    }

LABEL_12:
    v11 = v29[0];
    v19 = v29[1];
    v20 = v30;
LABEL_19:
    *a3 = v11;
    *(a3 + 8) = v19;
    *(a3 + 16) = v20;
    return result;
  }

  if (a1 != 1)
  {
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
      v31[0] = v25;
      *v24 = 136315138;
      v26 = HandshakeType.description.getter(v6);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B25F5000, v22, v23, "PAKE extension not supported in message type %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B274ECF0](v25, -1, -1);
      MEMORY[0x1B274ECF0](v24, -1, -1);
    }

    v11 = v6 | 0x8A3B0000;
    v31[0] = v11;
    v31[1] = 0;
    v32 = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    goto LABEL_18;
  }

  v12 = a4;
  _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(v29, v35);
  if (v4)
  {
    goto LABEL_12;
  }

  v14 = 0;
  v15 = v35[0];
  v16 = v35[1];
  v17 = v35[2];
  v18 = v36;
  LOBYTE(v31[0]) = 0;
LABEL_21:
  *v12 = v15;
  *(v12 + 16) = v16;
  *(v12 + 32) = v17;
  *(v12 + 48) = v18;
  result = *&v33;
  *(v12 + 56) = v33;
  *(v12 + 72) = v34;
  *(v12 + 80) = v14;
  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B25F5000, v9, v10, "PAKE extension not supported for hello retry requests", v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }

LABEL_19:
    v21 = v7 | 0x8A3B0000;
    v43 = v21;
    LOBYTE(v44) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v22 = 0;
    v20 = 0;
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    v12 = a4;
    _s15SwiftTLSLibrary10ByteBufferV25readPAKEServerHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(&v50, v55);
    if (v5)
    {
      v21 = v50;
      v22 = v51;
      v20 = v52;
      goto LABEL_20;
    }

    v31 = v55[0];
    v32 = v55[1];
    v33 = v55[2];
    v34 = v56;
    v53 = v57;
    v54 = v58;
    v35 = 1;
    LOBYTE(v43) = 1;
LABEL_22:
    *v12 = v31;
    *(v12 + 16) = v32;
    *(v12 + 32) = v33;
    *(v12 + 48) = v34;
    *(v12 + 56) = v53;
    *(v12 + 72) = v54;
    *(v12 + 80) = v35;
    return;
  }

  if (a1 != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v43 = v27;
      *v26 = 136315138;
      v28 = HandshakeType.description.getter(v7);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B25F5000, v24, v25, "PAKE extension not supported in message type %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B274ECF0](v27, -1, -1);
      MEMORY[0x1B274ECF0](v26, -1, -1);
    }

    goto LABEL_19;
  }

  v12 = a4;
  v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];
  outlined copy of Data._Representation(*v4, v13);
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0 || (v17 = ByteBuffer.readSlice(length:)(v16), v18 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    v43 = 0uLL;
    v20 = 2;
    LOBYTE(v44) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v21 = 0;
    v22 = 0;
LABEL_20:
    *a3 = v21;
    *(a3 + 8) = v22;
    *(a3 + 16) = v20;
    return;
  }

  v47 = v17;
  v48 = v18;
  v49 = v19;
  _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_(&v47, &v50, &v43);
  if (v5)
  {
    v21 = v50;
    v22 = v51;
    v20 = v52;
    v36 = v47;
    v37 = v48;
LABEL_36:
    outlined consume of Data._Representation(v36, v37);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v20;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_20;
  }

  v38 = v48 >> 62;
  if ((v48 >> 62) > 1)
  {
    if (v38 == 2)
    {
      v39 = *(v47 + 24);
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v38)
  {
    v39 = v47 >> 32;
  }

  else
  {
    v39 = BYTE6(v48);
  }

  if (!__OFSUB__(v39, v49))
  {
    if (v39 != v49)
    {
      v20 = 2;
      v59 = v47;
      v42 = v48;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v40 = *(&v44 + 1);
      v41 = v45;
      outlined consume of Data._Representation(v43, *(&v43 + 1));
      outlined consume of Data._Representation(v40, v41);

      v37 = v42;
      v36 = v59;
      v22 = 0;
      v21 = 1;
      goto LABEL_36;
    }

    outlined consume of Data._Representation(v47, v48);
    outlined consume of Data._Representation(v14, v13);
    v35 = 0;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t ByteBuffer.writePAKEClientHelloRFC(_:)(uint64_t *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
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

  v46 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v49 = MEMORY[0x1E69E6290];
  v50 = MEMORY[0x1E6969DF8];
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_0(&v47, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (v13)
    {
      v14 = v11 >> 32;
    }

    else
    {
      v14 = BYTE6(v12);
    }

    if (v13)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < a1[2] || v14 < v15)
  {
    __break(1u);
    goto LABEL_72;
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.append(_:)();
  v19 = v18;
  v20 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v20)
    {
      outlined consume of Data._Representation(v16, v18);
      v16 = BYTE6(v18);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v20 != 2)
  {
    goto LABEL_31;
  }

  v22 = *(v16 + 16);
  v21 = *(v16 + 24);
  outlined consume of Data._Representation(v16, v19);
  v16 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v16, v19);
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v16 = HIDWORD(v16) - v16;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!(v16 >> 16))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v16, v19);
  v16 = 0;
LABEL_32:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v8);
  v23 = *v1;
  v24 = v1[1];
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v26 = *(v23 + 24);
    }

    else
    {
      v26 = 0;
    }
  }

  else if (v25)
  {
    v26 = v23 >> 32;
  }

  else
  {
    v26 = BYTE6(v24);
  }

  v46 = 0;
  v49 = v9;
  v50 = v10;
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_0(&v47, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v27 = a1[3];
  v28 = a1[4];
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }
  }

  else if (v29)
  {
    v30 = v27;
    v31 = v27 >> 32;
  }

  else
  {
    v30 = 0;
    v31 = BYTE6(v28);
  }

  if (v31 < a1[5] || v31 < v30)
  {
    goto LABEL_73;
  }

  v32 = Data._Representation.subscript.getter();
  v34 = v33;
  Data.append(_:)();
  v35 = v34;
  v36 = v34 >> 62;
  if ((v34 >> 62) <= 1)
  {
    if (!v36)
    {
      outlined consume of Data._Representation(v32, v34);
      v32 = BYTE6(v34);
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  if (v36 != 2)
  {
    goto LABEL_60;
  }

  v38 = *(v32 + 16);
  v37 = *(v32 + 24);
  outlined consume of Data._Representation(v32, v35);
  v32 = v37 - v38;
  if (__OFSUB__(v37, v38))
  {
    __break(1u);
LABEL_55:
    outlined consume of Data._Representation(v32, v35);
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_78;
    }

    v32 = HIDWORD(v32) - v32;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!(v32 >> 16))
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_60:
  outlined consume of Data._Representation(v32, v35);
  v32 = 0;
LABEL_61:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v32, v26);
  v39 = *v1;
  v40 = v1[1];
  v41 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v41 == 2)
    {
      v42 = *(v39 + 24);
    }

    else
    {
      v42 = 0;
    }
  }

  else if (v41)
  {
    v42 = v39 >> 32;
  }

  else
  {
    v42 = BYTE6(v40);
  }

  v46 = 0;
  v49 = v9;
  v50 = v10;
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_0(&v47, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v43 = specialized Sequence.reduce<A>(into:_:)(0, a1[6]);
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  v44 = v43;
  if (v43 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v43, v42);
  return v16 + v32 + v44 + 6;
}

unint64_t ByteBuffer.writePAKEShareRFC(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = bswap32(a1) >> 16;
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v30 = MEMORY[0x1E69E6290];
  v31 = MEMORY[0x1E6969DF8];
  v28 = &v27;
  v29 = &v28;
  __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v10 = *v4;
  v11 = v4[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }

    else
    {
      v15 = 0;
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

  v27 = 0;
  v30 = v8;
  v31 = v9;
  v28 = &v27;
  v29 = &v28;
  __swift_project_boxed_opaque_existential_0(&v28, v8);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v16 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = a2;
    v18 = a2 >> 32;
  }

  else
  {
    v17 = 0;
    v18 = BYTE6(a3);
  }

  if (v18 < a4 || v18 < v17)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  Data.append(_:)();
  v22 = v21;
  v23 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_29;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    outlined consume of Data._Representation(v19, v22);
    v19 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
LABEL_26:
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (!(v19 >> 16))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_29:
        outlined consume of Data._Representation(v19, v22);
        v19 = 0;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v19, v22);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_33;
    }

    v19 = HIDWORD(v19) - v19;
    goto LABEL_26;
  }

  if (v23)
  {
    goto LABEL_24;
  }

  outlined consume of Data._Representation(v19, v21);
  v19 = BYTE6(v21);
LABEL_30:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v19, v15);
  return v19 + 4;
}

void _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    v62 = 0uLL;
    v14 = 2;
    LOBYTE(v63) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
LABEL_4:
    v15 = 0;
    v16 = 0;
LABEL_5:
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v14;
    return;
  }

  *&v62 = v11;
  *(&v62 + 1) = v12;
  v63 = v13;
  v17 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v11 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v11 >> 32;
  }

  else
  {
    v18 = BYTE6(v12);
  }

  if (__OFSUB__(v18, v13))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v19 = ByteBuffer.readSlice(length:)(v18 - v13);
  if (v20 >> 60 == 15)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v22 = *(&v62 + 1) >> 62;
  if ((*(&v62 + 1) >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v62 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v62 >> 32;
  }

  else
  {
    v23 = BYTE14(v62);
  }

  if (__OFSUB__(v23, v63))
  {
    goto LABEL_66;
  }

  v55 = v19;
  v56 = v20;
  v57 = v21;
  if (v23 != v63)
  {
    v60 = xmmword_1B26C66C0;
    v14 = 2;
    v61 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v55, v56);
    outlined consume of Data._Representation(v62, *(&v62 + 1));
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    v62 = xmmword_1B26C66C0;
    LOBYTE(v63) = 2;
    swift_willThrowTypedImpl();
LABEL_28:
    v16 = 0;
    v15 = 1;
    goto LABEL_5;
  }

  outlined consume of Data._Representation(v62, *(&v62 + 1));
  outlined consume of Data._Representation(v8, v7);
  v24 = *v2;
  v25 = v2[1];
  v26 = v2[2];
  outlined copy of Data._Representation(*v2, v25);
  v27 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v27 & 0x10000) != 0 || (v28 = ByteBuffer.readSlice(length:)(v27), v29 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v24;
    v2[1] = v25;
    v2[2] = v26;
    v62 = 0uLL;
    v14 = 2;
    LOBYTE(v63) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v55, v56);
    goto LABEL_4;
  }

  *&v62 = v28;
  *(&v62 + 1) = v29;
  v63 = v30;
  v31 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v32 = *(v28 + 24);
    }

    else
    {
      v32 = 0;
    }
  }

  else if (v31)
  {
    v32 = v28 >> 32;
  }

  else
  {
    v32 = BYTE6(v29);
  }

  if (__OFSUB__(v32, v30))
  {
    goto LABEL_67;
  }

  v33 = ByteBuffer.readSlice(length:)(v32 - v30);
  if (v34 >> 60 == 15)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = *(&v62 + 1) >> 62;
  if ((*(&v62 + 1) >> 62) > 1)
  {
    if (v37 == 2)
    {
      v38 = *(v62 + 24);
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v37)
  {
    v38 = v62 >> 32;
  }

  else
  {
    v38 = BYTE14(v62);
  }

  if (__OFSUB__(v38, v63))
  {
    goto LABEL_68;
  }

  v53 = v33;
  v54 = v34;
  if (v38 != v63)
  {
    v60 = xmmword_1B26C66C0;
    v14 = 2;
    v61 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v53, v54);
    outlined consume of Data._Representation(v62, *(&v62 + 1));
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v24;
    v2[1] = v25;
    v2[2] = v26;
    v62 = xmmword_1B26C66C0;
    LOBYTE(v63) = 2;
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v55, v56);
    goto LABEL_28;
  }

  outlined consume of Data._Representation(v62, *(&v62 + 1));
  outlined consume of Data._Representation(v24, v25);
  v40 = *v2;
  v39 = v2[1];
  v41 = v2[2];
  outlined copy of Data._Representation(*v2, v39);
  v42 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v42 & 0x10000) != 0 || (v43 = ByteBuffer.readSlice(length:)(v42), v44 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v40;
    v2[1] = v39;
    v2[2] = v41;
    v62 = 0uLL;
    v14 = 2;
    LOBYTE(v63) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v55, v56);
    outlined consume of ByteBuffer?(v53, v54);
    goto LABEL_4;
  }

  *&v62 = v43;
  *(&v62 + 1) = v44;
  v63 = v45;
  _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFSayAH9PAKEShareVGACzALYKXEfU1_(&v62, v58, &v64);
  if (v3)
  {
    v15 = v58[0];
    v16 = v58[1];
    v14 = v59;
    v47 = *(&v62 + 1);
    v46 = v62;
LABEL_64:
    outlined consume of Data._Representation(v46, v47);
    outlined consume of Data._Representation(*v5, v5[1]);
    *v5 = v40;
    v5[1] = v39;
    v5[2] = v41;
    *&v62 = v15;
    *(&v62 + 1) = v16;
    LOBYTE(v63) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v53, v54);
    outlined consume of ByteBuffer?(v55, v56);
    goto LABEL_5;
  }

  v48 = *(&v62 + 1) >> 62;
  if ((*(&v62 + 1) >> 62) > 1)
  {
    if (v48 == 2)
    {
      v49 = *(v62 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v48)
  {
    v49 = v62 >> 32;
  }

  else
  {
    v49 = BYTE14(v62);
  }

  if (__OFSUB__(v49, v63))
  {
    goto LABEL_69;
  }

  if (v49 != v63)
  {
    v60 = xmmword_1B26C66C0;
    v14 = 2;
    v61 = 2;
    v52 = *(&v62 + 1);
    v51 = v62;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v47 = v52;
    v46 = v51;
    v16 = 0;
    v15 = 1;
    goto LABEL_64;
  }

  outlined consume of Data._Representation(v62, *(&v62 + 1));
  outlined consume of Data._Representation(v40, v39);
  v50 = v64;
  *a2 = v55;
  a2[1] = v56;
  a2[2] = v57;
  a2[3] = v53;
  a2[4] = v54;
  a2[5] = v36;
  a2[6] = v50;
}

void _s15SwiftTLSLibrary10ByteBufferV22readPAKEServerHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v24 = v6;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v14 = 0;
LABEL_6:
    *a1 = v14;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    return;
  }

  v25 = v11;
  v26 = v12;
  v27 = v13;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v11 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v11 >> 32;
  }

  else
  {
    v16 = BYTE6(v12);
  }

  if (__OFSUB__(v16, v13))
  {
    __break(1u);
    goto LABEL_28;
  }

  v17 = ByteBuffer.readSlice(length:)(v16 - v13);
  if (v18 >> 60 == 15)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v20 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v25 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v25 >> 32;
  }

  else
  {
    v21 = BYTE6(v26);
  }

  if (__OFSUB__(v21, v27))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v17;
  v23 = v18;
  v28 = v19;
  if (v21 != v27)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v23);
    outlined consume of Data._Representation(v25, v26);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v8;
    v4[1] = v7;
    v4[2] = v9;
    swift_willThrowTypedImpl();
    v14 = 1;
    goto LABEL_6;
  }

  outlined consume of Data._Representation(v25, v26);
  outlined consume of Data._Representation(v8, v7);
  *a2 = v24;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v28;
  *(a2 + 32) = xmmword_1B26C5EF0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = xmmword_1B26C8CA0;
}

void _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFSayAH9PAKEShareVGACzALYKXEfU1_(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v3 = a1;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v4);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
    goto LABEL_101;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v6;
  }

  else
  {
    v12 = v11 + 31;
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v14 = v3[1];
  v53 = *v3;
  v15 = v6 + 2;
  if (__OFADD__(v6, 2))
  {
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
LABEL_101:
    __break(1u);
  }

  v16 = v13;
  v17 = v14 >> 62;
  v54 = BYTE6(v14);
  v55 = v14 >> 62;
  v56 = v3;
  while (1)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (*(v53 + 24) < v15)
        {
          goto LABEL_85;
        }
      }

      else if (v15 > 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v18 = v54;
      if (v17)
      {
        v18 = v53 >> 32;
      }

      if (v18 < v15)
      {
LABEL_85:
        *a3 = v16;
        return;
      }
    }

    v58 = *v3;
    v59 = v3[1];
    if (v15 < v6)
    {
      goto LABEL_90;
    }

    v57 = v16;
    outlined copy of Data._Representation(*v3, v3[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, v59);
    v3[2] = v15;
    v19 = *v3;
    v20 = v3[1];
    v21 = v15 + 2;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_91;
    }

    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      break;
    }

    if (v22)
    {
      v23 = v19 >> 32;
    }

    else
    {
      v23 = BYTE6(v20);
    }

LABEL_31:
    if (v23 < v21)
    {
      goto LABEL_86;
    }

LABEL_34:
    if (v21 < v15)
    {
      goto LABEL_92;
    }

    outlined copy of Data._Representation(v19, v20);
    outlined copy of Data._Representation(v19, v20);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v19, v20);
    v24 = bswap32(0) >> 16;
    v3[2] = v21;
    v6 = v21 + v24;
    if (__OFADD__(v21, v24))
    {
      goto LABEL_93;
    }

    v25 = *v3;
    v26 = v3[1];
    v27 = v26 >> 62;
    if ((v26 >> 62) <= 1)
    {
      if (v27)
      {
        v28 = v25 >> 32;
      }

      else
      {
        v28 = BYTE6(v26);
      }

LABEL_42:
      if (v28 < v6)
      {
        goto LABEL_87;
      }

      goto LABEL_45;
    }

    if (v27 == 2)
    {
      v28 = *(v25 + 24);
      goto LABEL_42;
    }

    if (v6 > 0)
    {
      goto LABEL_87;
    }

LABEL_45:
    if (v6 < v21)
    {
      goto LABEL_94;
    }

    v29 = Data._Representation.subscript.getter();
    v31 = v29;
    v32 = v30;
    v3[2] = v6;
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v29 = *(v29 + 16);
        v34 = *(v31 + 24);
      }

      else
      {
        v29 = 0;
        v34 = 0;
      }
    }

    else if (v33)
    {
      v29 = v29;
      v34 = v31 >> 32;
    }

    else
    {
      v29 = 0;
      v34 = BYTE6(v30);
    }

    v35 = __OFSUB__(v34, v29);
    v36 = v34 - v29;
    if (v35)
    {
      goto LABEL_95;
    }

    v37 = v29 + v36;
    if (__OFADD__(v29, v36))
    {
      goto LABEL_96;
    }

    if (v33 <= 1)
    {
      if (v33)
      {
        v38 = v31 >> 32;
      }

      else
      {
        v38 = BYTE6(v30);
      }

LABEL_61:
      if (v38 < v37)
      {
        goto LABEL_99;
      }

      goto LABEL_64;
    }

    if (v33 == 2)
    {
      v38 = *(v31 + 24);
      goto LABEL_61;
    }

    if (v37 > 0)
    {
      goto LABEL_100;
    }

LABEL_64:
    if (v37 < v29)
    {
      goto LABEL_97;
    }

    v39 = Data._Representation.subscript.getter();
    v41 = v40;
    v42 = 0;
    v43 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v43 == 2)
      {
        v42 = *(v39 + 16);
      }
    }

    else if (v43)
    {
      v42 = v39;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v44 = *(v31 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else if (v33)
    {
      v44 = v31 >> 32;
    }

    else
    {
      v44 = BYTE6(v32);
    }

    if (__OFSUB__(v44, v37))
    {
      goto LABEL_98;
    }

    v45 = v39;
    if (v44 != v37)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v45, v41);
      outlined consume of Data._Representation(v31, v32);
      outlined consume of Data._Representation(*v56, v56[1]);
      *v56 = v19;
      v56[1] = v20;
      v56[2] = v15;
      swift_willThrowTypedImpl();

      v50 = 1;
      goto LABEL_88;
    }

    v46 = v42;
    outlined consume of Data._Representation(v31, v32);
    outlined consume of Data._Representation(v19, v20);
    v16 = v57;
    v48 = *(v57 + 2);
    v47 = *(v57 + 3);
    if (v48 >= v47 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v57);
    }

    *(v16 + 2) = v48 + 1;
    v49 = &v16[32 * v48];
    *(v49 + 16) = bswap32(0) >> 16;
    *(v49 + 5) = v45;
    *(v49 + 6) = v41;
    *(v49 + 7) = v46;
    v15 = v6 + 2;
    LODWORD(v17) = v55;
    v3 = v56;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_89;
    }
  }

  if (v22 == 2)
  {
    v23 = *(v19 + 24);
    goto LABEL_31;
  }

  if (v21 < 1)
  {
    goto LABEL_34;
  }

LABEL_86:
  outlined copy of Data._Representation(v19, v20);
  v25 = *v3;
  v26 = v3[1];
LABEL_87:
  outlined consume of Data._Representation(v25, v26);
  *v3 = v19;
  v3[1] = v20;
  v3[2] = v15;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  v50 = 0;
LABEL_88:
  *a2 = v50;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV16readPAKEShareRFCAA9ExtensionO4PAKEO0F0VSgyAA8TLSErrorOYKF()
{
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v1 & 0x10000) != 0)
  {
    return 0;
  }

  v16 = v1;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  outlined copy of Data._Representation(*v0, v2);
  v5 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v5 & 0x10000) != 0 || (v6 = ByteBuffer.readSlice(length:)(v5), v7 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v17 = v6;
  v18 = v7;
  v19 = v8;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v6 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v6 >> 32;
  }

  else
  {
    v11 = BYTE6(v7);
  }

  result = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
    goto LABEL_27;
  }

  result = ByteBuffer.readSlice(length:)(result);
  v20 = result;
  if (v12 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v13 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v17 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v17 >> 32;
  }

  else
  {
    v14 = BYTE6(v18);
  }

  if (__OFSUB__(v14, v19))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v12;
  if (v14 == v19)
  {
    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(v3, v2);
    return v16;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v20, v15);
    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    swift_willThrowTypedImpl();
    return 1;
  }
}

unint64_t ByteBuffer.writePAKEClientHelloNonRFC(_:)(uint64_t *a1)
{
  v14[7] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
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

  v13 = 0;
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = &v13;
  v14[1] = v14;
  __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v9 = a1[6];
  outlined init with copy of Extension.PAKE.PAKEClientHello(a1, v14);
  specialized Sequence.reduce<A>(into:_:)(0, v9, v1, a1);
  v11 = v10;
  outlined destroy of Extension.PAKE.PAKEClientHello(a1);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v11 >> 16)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v11, v8);
  return v11 + 2;
}

unint64_t ByteBuffer.writePAKEServerHelloNonRFC(_:)(unsigned __int16 *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 5);
  if (v3 >> 60 == 15)
  {
    goto LABEL_100;
  }

  v2 = *(a1 + 4);
  v4 = *(a1 + 6);
  v78 = *(a1 + 28);
  v5 = *(a1 + 9);
  v79 = v5;
  v6 = *(&v78 + 1);
  if (*(&v78 + 1) >> 60 == 15)
  {
    goto LABEL_105;
  }

  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v69 = *(a1 + 3);
  v70 = v78;
  v71 = bswap32(*a1) >> 16;
  v76 = MEMORY[0x1E69E6290];
  v77 = MEMORY[0x1E6969DF8];
  v74 = &v71;
  v75 = &v72;
  __swift_project_boxed_opaque_existential_0(&v74, MEMORY[0x1E69E6290]);
  outlined copy of Data?(v2, v3);
  outlined init with copy of ByteBuffer?(&v78, &v72);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v9 = *v1;
  v10 = v1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v10);
  }

  v72 = 0;
  v76 = MEMORY[0x1E69E6290];
  v77 = MEMORY[0x1E6969DF8];
  v74 = &v72;
  v75 = v73;
  __swift_project_boxed_opaque_existential_0(&v74, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v13 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v2 + 16);
      v15 = *(v2 + 24);
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v2;
    v15 = v2 >> 32;
  }

  else
  {
    v14 = 0;
    v15 = BYTE6(v3);
  }

  if (v15 < v4 || v15 < v14)
  {
    __break(1u);
    goto LABEL_89;
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.append(_:)();
  v19 = v18;
  v20 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_30;
    }

    v68 = v6;
    v21 = v5;
    v22 = v12;
    v23 = v3;
    v24 = v8;
    v25 = v7;
    v26 = v2;
    v2 = *(v16 + 16);
    v27 = *(v16 + 24);
    outlined consume of Data._Representation(v16, v19);
    v16 = v27 - v2;
    if (__OFSUB__(v27, v2))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v2 = v26;
    v7 = v25;
    v8 = v24;
    v3 = v23;
    v12 = v22;
    v5 = v21;
    v6 = v68;
  }

  else
  {
    if (!v20)
    {
      outlined consume of Data._Representation(v16, v18);
      v16 = BYTE6(v18);
      goto LABEL_31;
    }

    outlined consume of Data._Representation(v16, v18);
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v16 = HIDWORD(v16) - v16;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!(v16 >> 16))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_30:
  outlined consume of Data._Representation(v16, v19);
  v16 = 0;
LABEL_31:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v12);
  v28 = *v1;
  v29 = v1[1];
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

  v72 = 0;
  v76 = MEMORY[0x1E69E6290];
  v77 = MEMORY[0x1E6969DF8];
  v74 = &v72;
  v75 = v73;
  __swift_project_boxed_opaque_existential_0(&v74, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v32 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v33 = *(v70 + 16);
      v34 = *(v70 + 24);
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }
  }

  else if (v32)
  {
    v33 = v70;
    v34 = v70 >> 32;
  }

  else
  {
    v33 = 0;
    v34 = BYTE6(v6);
  }

  if (v34 < v5 || v34 < v33)
  {
    goto LABEL_90;
  }

  v35 = Data._Representation.subscript.getter();
  v37 = v36;
  Data.append(_:)();
  v38 = v37;
  v39 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_58;
    }

    v40 = v3;
    v41 = v8;
    v42 = v7;
    v43 = v2;
    v2 = *(v35 + 16);
    v44 = *(v35 + 24);
    outlined consume of Data._Representation(v35, v38);
    v35 = v44 - v2;
    if (__OFSUB__(v44, v2))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v2 = v43;
    v7 = v42;
    v8 = v41;
    v3 = v40;
  }

  else
  {
    if (!v39)
    {
      outlined consume of Data._Representation(v35, v37);
      v35 = BYTE6(v37);
      goto LABEL_59;
    }

    outlined consume of Data._Representation(v35, v37);
    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v35 = HIDWORD(v35) - v35;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!(v35 >> 16))
  {
    goto LABEL_59;
  }

  __break(1u);
LABEL_58:
  outlined consume of Data._Representation(v35, v38);
  v35 = 0;
LABEL_59:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v35, v31);
  v45 = *v1;
  v46 = v1[1];
  v47 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v47 == 2)
    {
      v48 = *(v45 + 24);
    }

    else
    {
      v48 = 0;
    }
  }

  else if (v47)
  {
    v48 = v45 >> 32;
  }

  else
  {
    v48 = BYTE6(v46);
  }

  v72 = 0;
  v76 = MEMORY[0x1E69E6290];
  v77 = MEMORY[0x1E6969DF8];
  v74 = &v72;
  v75 = v73;
  __swift_project_boxed_opaque_existential_0(&v74, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v49 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v50 = v69;
    if (v49 == 2)
    {
      v51 = *(v8 + 16);
      v52 = *(v8 + 24);
    }

    else
    {
      v52 = 0;
      v51 = 0;
    }
  }

  else
  {
    v50 = v69;
    if (v49)
    {
      v51 = v8;
      v52 = v8 >> 32;
    }

    else
    {
      v51 = 0;
      v52 = BYTE6(v7);
    }
  }

  if (v52 < v50 || v52 < v51)
  {
    goto LABEL_92;
  }

  v53 = Data._Representation.subscript.getter();
  v55 = v54;
  Data.append(_:)();
  v56 = v55;
  v57 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v57 != 2)
    {
      goto LABEL_86;
    }

    v58 = v2;
    v2 = *(v53 + 16);
    v59 = *(v53 + 24);
    outlined consume of Data._Representation(v53, v56);
    v53 = v59 - v2;
    if (__OFSUB__(v59, v2))
    {
      goto LABEL_98;
    }

    v2 = v58;
    goto LABEL_83;
  }

  if (v57)
  {
    outlined consume of Data._Representation(v53, v55);
    if (__OFSUB__(HIDWORD(v53), v53))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, logger);
      v3 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v62, "PAKE extension missing client identity", v63, 2u);
        MEMORY[0x1B274ECF0](v63, -1, -1);
      }

      __break(1u);
LABEL_105:
      outlined copy of Data._Representation(v2, v3);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, logger);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1B25F5000, v65, v66, "PAKE extension missing server identity", v67, 2u);
        MEMORY[0x1B274ECF0](v67, -1, -1);
      }

      __break(1u);
    }

    v53 = HIDWORD(v53) - v53;
LABEL_83:
    if ((v53 & 0x8000000000000000) == 0)
    {
      if (!(v53 >> 16))
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_86:
      outlined consume of Data._Representation(v53, v56);
      v53 = 0;
      goto LABEL_87;
    }

    goto LABEL_93;
  }

  outlined consume of Data._Representation(v53, v55);
  v53 = BYTE6(v55);
LABEL_87:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v53, v48);
  outlined consume of ByteBuffer?(v2, v3);
  outlined destroy of ByteBuffer?(&v78);
  return v16 + v35 + v53 + 8;
}

uint64_t closure #1 in closure #1 in ByteBuffer.writePAKEClientHelloNonRFC(_:)(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v64 = a2[3];
  v65 = a2[1];
  v66 = bswap32(*a2) >> 16;
  v8 = MEMORY[0x1E69E6290];
  v69 = MEMORY[0x1E69E6290];
  v70 = MEMORY[0x1E6969DF8];
  v67 = &v66;
  v68 = &v67;
  __swift_project_boxed_opaque_existential_0(&v67, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  v9 = *a1 + 2;
  if (__OFADD__(*a1, 2))
  {
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v10 = *a3;
  v11 = a3[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  v66 = 0;
  v69 = v8;
  v70 = MEMORY[0x1E6969DF8];
  v67 = &v66;
  v68 = &v67;
  __swift_project_boxed_opaque_existential_0(&v67, v8);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  v14 = *a4;
  v15 = a4[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v14;
    v18 = v14 >> 32;
  }

  else
  {
    v17 = 0;
    v18 = BYTE6(v15);
  }

  if (v18 < a4[2] || v18 < v17)
  {
    goto LABEL_94;
  }

  v63 = a1;
  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  Data.append(_:)();
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
LABEL_29:
      outlined consume of Data._Representation(v19, v21);
      v21 = 0;
      goto LABEL_30;
    }

    v62 = v9;
    v23 = *(v19 + 16);
    v24 = *(v19 + 24);
    outlined consume of Data._Representation(v19, v21);
    v21 = v24 - v23;
    if (__OFSUB__(v24, v23))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v9 = v62;
    goto LABEL_26;
  }

  if (v22)
  {
    outlined consume of Data._Representation(v19, v21);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v21 = HIDWORD(v19) - v19;
LABEL_26:
    v19 = MEMORY[0x1E69E6290];
    if ((v21 & 0x8000000000000000) == 0)
    {
      if (!(v21 >> 16))
      {
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  outlined consume of Data._Representation(v19, v21);
  v21 = BYTE6(v21);
LABEL_30:
  v19 = MEMORY[0x1E69E6290];
LABEL_31:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v21, v13);
  v25 = v9 + v21 + 2;
  if (__OFADD__(v9, v21 + 2))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v26 = *a3;
  v27 = a3[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v29 = *(v26 + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  else if (v28)
  {
    v29 = v26 >> 32;
  }

  else
  {
    v29 = BYTE6(v27);
  }

  v66 = 0;
  v69 = v19;
  v70 = MEMORY[0x1E6969DF8];
  v67 = &v66;
  v68 = &v67;
  __swift_project_boxed_opaque_existential_0(&v67, v19);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  v30 = a4[3];
  v31 = a4[4];
  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }
  }

  else if (v32)
  {
    v33 = v30;
    v34 = v30 >> 32;
  }

  else
  {
    v33 = 0;
    v34 = BYTE6(v31);
  }

  if (v34 < a4[5] || v34 < v33)
  {
    goto LABEL_97;
  }

  v35 = Data._Representation.subscript.getter();
  v37 = v36;
  Data.append(_:)();
  v38 = v37;
  v39 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v39 != 2)
    {
LABEL_59:
      outlined consume of Data._Representation(v35, v38);
      v35 = 0;
      goto LABEL_60;
    }

    v40 = v7;
    v42 = *(v35 + 16);
    v41 = *(v35 + 24);
    outlined consume of Data._Representation(v35, v38);
    v35 = v41 - v42;
    if (__OFSUB__(v41, v42))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v7 = v40;
    goto LABEL_56;
  }

  if (v39)
  {
    outlined consume of Data._Representation(v35, v37);
    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
    }

    v35 = HIDWORD(v35) - v35;
LABEL_56:
    v43 = MEMORY[0x1E69E6290];
    if ((v35 & 0x8000000000000000) == 0)
    {
      if (!(v35 >> 16))
      {
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_59;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  outlined consume of Data._Representation(v35, v37);
  v35 = BYTE6(v37);
LABEL_60:
  v43 = MEMORY[0x1E69E6290];
LABEL_61:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v35, v29);
  v44 = __OFADD__(v25, v35 + 2);
  v45 = v25 + v35 + 2;
  if (v44)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v46 = *a3;
  v47 = a3[1];
  v48 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v48 == 2)
    {
      v49 = *(v46 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v48)
  {
    v49 = v46 >> 32;
  }

  else
  {
    v49 = BYTE6(v47);
  }

  v66 = 0;
  v69 = v43;
  v70 = MEMORY[0x1E6969DF8];
  v67 = &v66;
  v68 = &v67;
  __swift_project_boxed_opaque_existential_0(&v67, v43);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  v50 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v51 = v64;
    if (v50 == 2)
    {
      v52 = *(v65 + 16);
      v53 = *(v65 + 24);
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }
  }

  else
  {
    v51 = v64;
    if (v50)
    {
      v52 = v65;
      v53 = v65 >> 32;
    }

    else
    {
      v52 = 0;
      v53 = BYTE6(v7);
    }
  }

  if (v53 < v51 || v53 < v52)
  {
    goto LABEL_100;
  }

  v54 = Data._Representation.subscript.getter();
  v56 = v55;
  Data.append(_:)();
  v57 = v56;
  v58 = v56 >> 62;
  if ((v56 >> 62) <= 1)
  {
    if (!v58)
    {
      outlined consume of Data._Representation(v54, v56);
      v54 = BYTE6(v56);
      goto LABEL_91;
    }

    goto LABEL_85;
  }

  if (v58 != 2)
  {
    goto LABEL_90;
  }

  v60 = *(v54 + 16);
  v59 = *(v54 + 24);
  outlined consume of Data._Representation(v54, v57);
  v54 = v59 - v60;
  if (__OFSUB__(v59, v60))
  {
    __break(1u);
LABEL_85:
    outlined consume of Data._Representation(v54, v57);
    if (__OFSUB__(HIDWORD(v54), v54))
    {
      goto LABEL_107;
    }

    v54 = HIDWORD(v54) - v54;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!(v54 >> 16))
  {
    goto LABEL_91;
  }

  __break(1u);
LABEL_90:
  outlined consume of Data._Representation(v54, v57);
  v54 = 0;
LABEL_91:
  result = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v54, v49);
  if (__OFADD__(v45, v54 + 2))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  *v63 = v45 + v54 + 2;
  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  outlined copy of Data._Representation(*v2, v6);
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v9 & 0x10000) != 0 || (v10 = ByteBuffer.readSlice(length:)(v9), v11 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    v29 = 0uLL;
    v13 = 2;
    LOBYTE(v30) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v14 = 0;
    v15 = 0;
LABEL_18:
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v13;
    return;
  }

  v33 = v10;
  v34 = v11;
  v35 = v12;
  _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_(&v33, v27, &v29);
  if (v3)
  {
    v14 = v27[0];
    v15 = v27[1];
    v13 = v28;
    v16 = v33;
    v17 = v34;
LABEL_17:
    outlined consume of Data._Representation(v16, v17);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    LOBYTE(v30) = v13;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  v18 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v33 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v33 >> 32;
  }

  else
  {
    v19 = BYTE6(v34);
  }

  if (!__OFSUB__(v19, v35))
  {
    if (v19 == v35)
    {
      outlined consume of Data._Representation(v33, v34);
      outlined consume of Data._Representation(v7, v6);
      v20 = v32;
      v21 = v30;
      v22 = v31;
      *a2 = v29;
      *(a2 + 16) = v21;
      *(a2 + 32) = v22;
      *(a2 + 48) = v20;
      return;
    }

    v13 = 2;
    v25 = v34;
    v26 = v33;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v23 = *(&v30 + 1);
    v24 = v31;
    outlined consume of Data._Representation(v29, *(&v29 + 1));
    outlined consume of Data._Representation(v23, v24);

    v17 = v25;
    v16 = v26;
    v15 = 0;
    v14 = 1;
    goto LABEL_17;
  }

  __break(1u);
}

void _s15SwiftTLSLibrary10ByteBufferV25readPAKEServerHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v63 = v6;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v14 = 0;
LABEL_6:
    *a1 = v14;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    return;
  }

  v54 = v11;
  v57 = v12;
  v60 = v13;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v11 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v11 >> 32;
  }

  else
  {
    v16 = BYTE6(v12);
  }

  if (__OFSUB__(v16, v13))
  {
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
    goto LABEL_76;
  }

  v52 = a2;
  v17 = ByteBuffer.readSlice(length:)(v16 - v13);
  if (v18 >> 60 == 15)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = v18;
  v20 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v54 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v54 >> 32;
  }

  else
  {
    v21 = BYTE6(v57);
  }

  if (__OFSUB__(v21, v60))
  {
    goto LABEL_71;
  }

  v22 = v17;
  if (v21 != v60)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v19);
    outlined consume of Data._Representation(v54, v57);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v8;
    v4[1] = v7;
    v4[2] = v9;
LABEL_29:
    swift_willThrowTypedImpl();
    v14 = 1;
    goto LABEL_6;
  }

  outlined consume of Data._Representation(v54, v57);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of ByteBuffer?(v22, v19);
  v24 = *v4;
  v23 = v4[1];
  v25 = v4[2];
  outlined copy of Data._Representation(*v4, v23);
  v26 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v26 & 0x10000) != 0 || (v27 = ByteBuffer.readSlice(length:)(v26), v28 >> 60 == 15))
  {
LABEL_28:
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v24;
    v4[1] = v23;
    v4[2] = v25;
    goto LABEL_5;
  }

  v55 = v27;
  v58 = v28;
  v61 = v29;
  v30 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v27 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v27 >> 32;
  }

  else
  {
    v31 = BYTE6(v28);
  }

  if (__OFSUB__(v31, v29))
  {
    goto LABEL_72;
  }

  v32 = ByteBuffer.readSlice(length:)(v31 - v29);
  if (v33 >> 60 == 15)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v34 = v33;
  v36 = v58;
  v35 = v55;
  v37 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v38 = *(v55 + 24);
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v37)
  {
    v38 = v55 >> 32;
  }

  else
  {
    v38 = BYTE6(v58);
  }

  if (__OFSUB__(v38, v61))
  {
    goto LABEL_73;
  }

  v39 = v32;
  if (v38 != v61)
  {
    goto LABEL_69;
  }

  outlined consume of Data._Representation(v55, v58);
  outlined consume of Data._Representation(v24, v23);
  outlined consume of ByteBuffer?(v39, v34);
  v24 = *v4;
  v23 = v4[1];
  v25 = v4[2];
  outlined copy of Data._Representation(*v4, v23);
  v40 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v40 & 0x10000) != 0)
  {
    goto LABEL_28;
  }

  v41 = ByteBuffer.readSlice(length:)(v40);
  if (v42 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v56 = v41;
  v59 = v42;
  v62 = v43;
  v44 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v44 == 2)
    {
      v45 = *(v41 + 24);
    }

    else
    {
      v45 = 0;
    }
  }

  else if (v44)
  {
    v45 = v41 >> 32;
  }

  else
  {
    v45 = BYTE6(v42);
  }

  if (__OFSUB__(v45, v43))
  {
    goto LABEL_74;
  }

  v46 = ByteBuffer.readSlice(length:)(v45 - v43);
  if (v47 >> 60 != 15)
  {
    v34 = v47;
    v49 = v48;
    v36 = v59;
    v35 = v56;
    v50 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v50 == 2)
      {
        v51 = *(v56 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v50)
    {
      v51 = v56 >> 32;
    }

    else
    {
      v51 = BYTE6(v59);
    }

    if (!__OFSUB__(v51, v62))
    {
      v39 = v46;
      if (v51 == v62)
      {
        outlined consume of Data._Representation(v56, v59);
        outlined consume of Data._Representation(v24, v23);
        *v52 = v63;
        *(v52 + 8) = v39;
        *(v52 + 16) = v34;
        *(v52 + 24) = v49;
        *(v52 + 32) = xmmword_1B26C5EF0;
        *(v52 + 48) = 0;
        *(v52 + 56) = 0;
        *(v52 + 64) = xmmword_1B26C8CA0;
        return;
      }

LABEL_69:
      v53 = v35;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v39, v34);
      outlined consume of Data._Representation(v53, v36);
      outlined consume of Data._Representation(*v4, v4[1]);
      *v4 = v24;
      v4[1] = v23;
      v4[2] = v25;
      goto LABEL_29;
    }

    goto LABEL_75;
  }

LABEL_78:
  __break(1u);
}

void _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v4);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
  }

  if (v11 >= 0)
  {
    v12 = v10 - v6;
  }

  else
  {
    v12 = v11 + 31;
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v14 = a1[1];
  v103 = *a1;
  v15 = v6 + 2;
  if (__OFADD__(v6, 2))
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v16 = v13;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v14 >> 62;
  v102 = BYTE6(v14);
  v22 = 0xF000000000000000;
  v23 = 0xF000000000000000;
  v104 = v14 >> 62;
  while (1)
  {
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (*(v103 + 24) < v15)
        {
          goto LABEL_167;
        }
      }

      else if (v15 > 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v24 = v102;
      if (v21)
      {
        v24 = v103 >> 32;
      }

      if (v24 < v15)
      {
LABEL_167:
        if (v22 >> 60 != 15 && v23 >> 60 != 15)
        {
          *a3 = v18;
          a3[1] = v22;
          a3[2] = v17;
          a3[3] = v20;
          a3[4] = v23;
          a3[5] = v19;
          a3[6] = v16;
          return;
        }

        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v20, v23);
        v95 = v18;
        v96 = v22;
        goto LABEL_180;
      }
    }

    v115 = *a1;
    v119 = a1[1];
    if (v15 < v6)
    {
      goto LABEL_183;
    }

    v112 = v23;
    v113 = v20;
    v114 = v22;
    v111 = v16;
    outlined copy of Data._Representation(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v115, v119);
    a1[2] = v15;
    v26 = *a1;
    v25 = a1[1];
    v27 = v15 + 2;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_184;
    }

    v28 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v28)
      {
        v29 = v26 >> 32;
      }

      else
      {
        v29 = BYTE6(v25);
      }

LABEL_31:
      if (v29 < v27)
      {
        goto LABEL_170;
      }

      goto LABEL_34;
    }

    if (v28 == 2)
    {
      v29 = *(v26 + 24);
      goto LABEL_31;
    }

    if (v27 >= 1)
    {
LABEL_170:
      outlined copy of Data._Representation(v26, v25);
      v32 = *a1;
      v33 = a1[1];
LABEL_171:
      outlined consume of Data._Representation(v32, v33);

      *a1 = v26;
      a1[1] = v25;
      a1[2] = v15;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_174;
    }

LABEL_34:
    if (v27 < v15)
    {
      goto LABEL_185;
    }

    outlined copy of Data._Representation(v26, v25);
    outlined copy of Data._Representation(v26, v25);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v26, v25);
    v30 = bswap32(0) >> 16;
    a1[2] = v27;
    v31 = v27 + v30;
    if (__OFADD__(v27, v30))
    {
      goto LABEL_186;
    }

    v32 = *a1;
    v33 = a1[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (v34)
      {
        v35 = v32 >> 32;
      }

      else
      {
        v35 = BYTE6(v33);
      }

LABEL_42:
      if (v35 < v31)
      {
        goto LABEL_171;
      }

      goto LABEL_45;
    }

    if (v34 == 2)
    {
      v35 = *(v32 + 24);
      goto LABEL_42;
    }

    if (v31 > 0)
    {
      goto LABEL_171;
    }

LABEL_45:
    if (v31 < v27)
    {
      goto LABEL_187;
    }

    v36 = Data._Representation.subscript.getter();
    a1[2] = v31;
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 == 2)
      {
        v39 = *(v36 + 16);
        v116 = v36;
        v120 = v37;
        v123 = v39;
LABEL_57:
        v40 = *(v36 + 24);
        goto LABEL_58;
      }
    }

    else if (v38)
    {
      v39 = v36;
      v116 = v36;
      v120 = v37;
      v123 = v36;
LABEL_54:
      v40 = v36 >> 32;
      goto LABEL_58;
    }

    v39 = 0;
    v116 = v36;
    v120 = v37;
    v123 = 0;
    if (v38 <= 1)
    {
      if (!v38)
      {
        v39 = 0;
        v40 = BYTE6(v37);
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    v40 = 0;
    if (v38 != 3)
    {
      v39 = 0;
      goto LABEL_57;
    }

LABEL_58:
    if (__OFSUB__(v40, v39))
    {
      goto LABEL_188;
    }

    v41 = ByteBuffer.readSlice(length:)(v40 - v39);
    if (v42 >> 60 == 15)
    {
      goto LABEL_203;
    }

    v44 = v120 >> 62;
    if ((v120 >> 62) > 1)
    {
      if (v44 == 2)
      {
        v45 = *(v116 + 24);
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v44)
    {
      v45 = v116 >> 32;
    }

    else
    {
      v45 = BYTE6(v120);
    }

    if (__OFSUB__(v45, v123))
    {
      goto LABEL_189;
    }

    v108 = v41;
    v109 = v42;
    v110 = v43;
    if (v45 != v123)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v108, v109);
      outlined consume of Data._Representation(v116, v120);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v26;
      a1[1] = v25;
      a1[2] = v15;
      swift_willThrowTypedImpl();
LABEL_175:
      outlined consume of ByteBuffer?(v113, v112);
      v98 = v114;
      v97 = v18;
      goto LABEL_178;
    }

    outlined consume of Data._Representation(v116, v120);
    outlined consume of Data._Representation(v26, v25);
    v46 = *a1;
    v47 = a1[1];
    v48 = a1[2];
    v49 = v48 + 2;
    if (__OFADD__(v48, 2))
    {
      goto LABEL_190;
    }

    v50 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v50 == 2)
      {
        v51 = *(v46 + 24);
        goto LABEL_77;
      }

      if (v49 < 1)
      {
        goto LABEL_80;
      }

LABEL_172:
      outlined copy of Data._Representation(v46, v47);
      v54 = *a1;
      v55 = a1[1];
LABEL_173:
      outlined consume of Data._Representation(v54, v55);

      *a1 = v46;
      a1[1] = v47;
      a1[2] = v48;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v108, v109);
LABEL_174:
      outlined consume of ByteBuffer?(v113, v112);
      v96 = v114;
      v95 = v18;
      goto LABEL_180;
    }

    v51 = v50 ? v46 >> 32 : BYTE6(v47);
LABEL_77:
    if (v51 < v49)
    {
      goto LABEL_172;
    }

LABEL_80:
    if (v49 < v48)
    {
      goto LABEL_191;
    }

    outlined copy of Data._Representation(v46, v47);
    outlined copy of Data._Representation(v46, v47);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v46, v47);
    v52 = bswap32(0) >> 16;
    a1[2] = v49;
    v53 = v49 + v52;
    if (__OFADD__(v49, v52))
    {
      goto LABEL_192;
    }

    v54 = *a1;
    v55 = a1[1];
    v56 = v55 >> 62;
    if ((v55 >> 62) <= 1)
    {
      if (v56)
      {
        v57 = v54 >> 32;
      }

      else
      {
        v57 = BYTE6(v55);
      }

LABEL_88:
      if (v57 < v53)
      {
        goto LABEL_173;
      }

      goto LABEL_91;
    }

    if (v56 == 2)
    {
      v57 = *(v54 + 24);
      goto LABEL_88;
    }

    if (v53 > 0)
    {
      goto LABEL_173;
    }

LABEL_91:
    if (v53 < v49)
    {
      goto LABEL_193;
    }

    v58 = Data._Representation.subscript.getter();
    a1[2] = v53;
    v60 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v60 == 2)
      {
        v61 = *(v58 + 16);
        v117 = v58;
        v121 = v59;
        v124 = v61;
LABEL_103:
        v62 = *(v58 + 24);
        goto LABEL_104;
      }
    }

    else if (v60)
    {
      v61 = v58;
      v117 = v58;
      v121 = v59;
      v124 = v58;
LABEL_100:
      v62 = v58 >> 32;
      goto LABEL_104;
    }

    v61 = 0;
    v117 = v58;
    v121 = v59;
    v124 = 0;
    if (v60 <= 1)
    {
      if (!v60)
      {
        v61 = 0;
        v62 = BYTE6(v59);
        goto LABEL_104;
      }

      goto LABEL_100;
    }

    v62 = 0;
    if (v60 != 3)
    {
      v61 = 0;
      goto LABEL_103;
    }

LABEL_104:
    if (__OFSUB__(v62, v61))
    {
      goto LABEL_194;
    }

    v63 = ByteBuffer.readSlice(length:)(v62 - v61);
    if (v64 >> 60 == 15)
    {
      goto LABEL_204;
    }

    v66 = v121 >> 62;
    if ((v121 >> 62) > 1)
    {
      if (v66 == 2)
      {
        v67 = *(v117 + 24);
      }

      else
      {
        v67 = 0;
      }
    }

    else if (v66)
    {
      v67 = v117 >> 32;
    }

    else
    {
      v67 = BYTE6(v121);
    }

    if (__OFSUB__(v67, v124))
    {
      goto LABEL_195;
    }

    v105 = v63;
    v106 = v64;
    v107 = v65;
    if (v67 != v124)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v105, v106);
      outlined consume of Data._Representation(v117, v121);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v46;
      a1[1] = v47;
      a1[2] = v48;
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v108, v109);
      goto LABEL_175;
    }

    outlined consume of Data._Representation(v117, v121);
    outlined consume of Data._Representation(v46, v47);
    outlined consume of ByteBuffer?(v113, v112);
    outlined consume of ByteBuffer?(v18, v114);
    v68 = *a1;
    v69 = a1[1];
    v70 = a1[2];
    v71 = v70 + 2;
    if (__OFADD__(v70, 2))
    {
      goto LABEL_196;
    }

    v72 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      break;
    }

    if (v72)
    {
      v73 = v68 >> 32;
    }

    else
    {
      v73 = BYTE6(v69);
    }

LABEL_123:
    if (v73 < v71)
    {
      goto LABEL_176;
    }

LABEL_126:
    if (v71 < v70)
    {
      goto LABEL_197;
    }

    outlined copy of Data._Representation(v68, v69);
    outlined copy of Data._Representation(v68, v69);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v68, v69);
    v74 = bswap32(0) >> 16;
    a1[2] = v71;
    v6 = v71 + v74;
    if (__OFADD__(v71, v74))
    {
      goto LABEL_198;
    }

    v75 = *a1;
    v76 = a1[1];
    v77 = v76 >> 62;
    if ((v76 >> 62) <= 1)
    {
      if (v77)
      {
        v78 = v75 >> 32;
      }

      else
      {
        v78 = BYTE6(v76);
      }

LABEL_134:
      if (v78 < v6)
      {
        goto LABEL_177;
      }

      goto LABEL_137;
    }

    if (v77 == 2)
    {
      v78 = *(v75 + 24);
      goto LABEL_134;
    }

    if (v6 > 0)
    {
      goto LABEL_177;
    }

LABEL_137:
    if (v6 < v71)
    {
      goto LABEL_199;
    }

    v79 = Data._Representation.subscript.getter();
    a1[2] = v6;
    v81 = v80 >> 62;
    if ((v80 >> 62) > 1)
    {
      if (v81 == 2)
      {
        v82 = *(v79 + 16);
        v118 = v79;
        v122 = v80;
        v125 = v82;
LABEL_149:
        v83 = *(v79 + 24);
        goto LABEL_150;
      }
    }

    else if (v81)
    {
      v82 = v79;
      v118 = v79;
      v122 = v80;
      v125 = v79;
LABEL_146:
      v83 = v79 >> 32;
      goto LABEL_150;
    }

    v82 = 0;
    v118 = v79;
    v122 = v80;
    v125 = 0;
    if (v81 <= 1)
    {
      if (!v81)
      {
        v82 = 0;
        v83 = BYTE6(v80);
        goto LABEL_150;
      }

      goto LABEL_146;
    }

    v83 = 0;
    if (v81 != 3)
    {
      v82 = 0;
      goto LABEL_149;
    }

LABEL_150:
    if (__OFSUB__(v83, v82))
    {
      goto LABEL_200;
    }

    v84 = ByteBuffer.readSlice(length:)(v83 - v82);
    if (v85 >> 60 == 15)
    {
      goto LABEL_205;
    }

    v87 = v84;
    v88 = v85;
    v89 = v86;
    v90 = v122 >> 62;
    if ((v122 >> 62) > 1)
    {
      if (v90 == 2)
      {
        v91 = *(v118 + 24);
      }

      else
      {
        v91 = 0;
      }
    }

    else if (v90)
    {
      v91 = v118 >> 32;
    }

    else
    {
      v91 = BYTE6(v122);
    }

    if (__OFSUB__(v91, v125))
    {
      goto LABEL_201;
    }

    if (v91 != v125)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v87, v88);
      outlined consume of Data._Representation(v118, v122);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v68;
      a1[1] = v69;
      a1[2] = v70;
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v105, v106);
      v97 = v108;
      v98 = v109;
LABEL_178:
      outlined consume of ByteBuffer?(v97, v98);

      v99 = 1;
      goto LABEL_181;
    }

    outlined consume of Data._Representation(v118, v122);
    outlined consume of Data._Representation(v68, v69);
    v16 = v111;
    v93 = *(v111 + 2);
    v92 = *(v111 + 3);
    if (v93 >= v92 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v111);
    }

    *(v16 + 2) = v93 + 1;
    v94 = &v16[32 * v93];
    *(v94 + 16) = bswap32(0) >> 16;
    *(v94 + 5) = v87;
    *(v94 + 6) = v88;
    v17 = v110;
    v22 = v109;
    v18 = v108;
    *(v94 + 7) = v89;
    v23 = v106;
    v19 = v107;
    LODWORD(v21) = v104;
    v20 = v105;
    v15 = v6 + 2;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_182;
    }
  }

  if (v72 == 2)
  {
    v73 = *(v68 + 24);
    goto LABEL_123;
  }

  if (v71 < 1)
  {
    goto LABEL_126;
  }

LABEL_176:
  outlined copy of Data._Representation(v68, v69);
  v75 = *a1;
  v76 = a1[1];
LABEL_177:
  outlined consume of Data._Representation(v75, v76);

  *a1 = v68;
  a1[1] = v69;
  a1[2] = v70;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v105, v106);
  v95 = v108;
  v96 = v109;
LABEL_180:
  outlined consume of ByteBuffer?(v95, v96);
  v99 = 0;
LABEL_181:
  *a2 = v99;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

BOOL specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = v2;
  v27 = v3;
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a1 + 3), *(a2 + 1), *(a2 + 2), *(a2 + 3)) & 1) == 0)
  {
    return 0;
  }

  v24 = *(a1 + 2);
  v6 = *(a1 + 6);
  v25 = v6;
  v22 = *(a2 + 2);
  v7 = *(a2 + 6);
  v23 = v7;
  v8 = v24;
  v9 = v22;
  if (*(&v24 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      outlined init with copy of ByteBuffer?(&v24, &v20);
      outlined init with copy of ByteBuffer?(&v22, &v20);
      outlined consume of ByteBuffer?(v8, *(&v8 + 1));
      goto LABEL_10;
    }

LABEL_8:
    outlined init with copy of ByteBuffer?(&v24, &v20);
    outlined init with copy of ByteBuffer?(&v22, &v20);
    outlined consume of ByteBuffer?(v8, *(&v8 + 1));
    outlined consume of ByteBuffer?(v9, *(&v9 + 1));
    return 0;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_8;
  }

  outlined init with copy of ByteBuffer?(&v24, &v20);
  outlined init with copy of ByteBuffer?(&v22, &v20);
  v11 = specialized static ByteBuffer.== infix(_:_:)(v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7);
  outlined consume of ByteBuffer?(v9, *(&v9 + 1));
  outlined consume of ByteBuffer?(v8, *(&v8 + 1));
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v20 = *(a1 + 28);
  v12 = *(a1 + 9);
  v21 = v12;
  v18 = *(a2 + 28);
  v13 = *(a2 + 9);
  v19 = v13;
  v14 = v20;
  v15 = v18;
  if (*(&v20 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_14;
    }

    outlined init with copy of ByteBuffer?(&v20, v17);
    outlined init with copy of ByteBuffer?(&v18, v17);
    v16 = specialized static ByteBuffer.== infix(_:_:)(v14, *(&v14 + 1), v12, v15, *(&v15 + 1), v13);
    outlined consume of ByteBuffer?(v15, *(&v15 + 1));
    outlined consume of ByteBuffer?(v14, *(&v14 + 1));
    return (v16 & 1) != 0;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_14:
    outlined init with copy of ByteBuffer?(&v20, v17);
    outlined init with copy of ByteBuffer?(&v18, v17);
    outlined consume of ByteBuffer?(v14, *(&v14 + 1));
    outlined consume of ByteBuffer?(v15, *(&v15 + 1));
    return 0;
  }

  outlined init with copy of ByteBuffer?(&v20, v17);
  outlined init with copy of ByteBuffer?(&v18, v17);
  outlined consume of ByteBuffer?(v14, *(&v14 + 1));
  return 1;
}

void specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v13 = a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = (a2 + 48);
    do
    {
      v9 = *(v8 - 1);
      LOWORD(v10) = *(v8 - 8);
      v11 = v9;
      v12 = *v8;
      outlined copy of Data._Representation(v9, v12);
      closure #1 in closure #1 in ByteBuffer.writePAKEClientHelloNonRFC(_:)(&v13, &v10, a3, a4);
      outlined consume of Data._Representation(v11, v12);
      if (v4)
      {
        break;
      }

      v8 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t outlined destroy of ByteBuffer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE and conformance Extension.PAKE()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE;
  if (!lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE);
  }

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

uint64_t getEnumTagSinglePayload for Extension.PAKE(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.PAKE(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PAKE.PAKEClientHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.PAKE.PAKEClientHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t getEnumTagSinglePayload for Extension.PAKE.PAKEServerHello(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for Extension.PAKE.PAKEServerHello(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t ServerHandshakeState.IdleState.init(configuration:epsks:externalPSKSelectionCallback:pakeRecords:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v14 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(a7 + v14[6]) = a2;
  v15 = (a7 + v14[7]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a7 + v14[8]);
  *v16 = a5;
  v16[1] = a6;
  LOBYTE(a6) = *(a1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 36));
  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t ServerHandshakeState.description.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v0, v3, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1701602409;
  v6 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v6 = 0x726F467964616572;
  }

  v7 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v7 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v6 = v7;
  }

  v8 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v8 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v5 = v8;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v3, type metadata accessor for ServerHandshakeState);
  return v9;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19receivedClientHello_5bytesAA07PartialD6ResultVSgAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v44 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v41 - v9;
  v43 = type metadata accessor for SymmetricKey();
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.IdleState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v6, v19, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v19, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  outlined init with take of ServerHandshakeState.IdleState(v19, v16, type metadata accessor for ServerHandshakeState.IdleState);
  v20 = &v16[*(v14 + 28)];
  v21 = *v20;
  v22 = v20[1];
  v23 = v16[*(v14 + 36)];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(*v20, v22);
  v24 = v52;
  _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZ(v16, v46, v47, v48, v49, v21, v22, v23, v13, v50);
  if (v24)
  {
    v25 = v50[0];
    v26 = v50[1];
    v27 = v51;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.IdleState);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v21, v22);
    *a5 = v25;
    *(a5 + 8) = v26;
    *(a5 + 16) = v27;
    return result;
  }

  v52 = 0;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v6, type metadata accessor for ServerHandshakeState);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v21, v22);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v13, v6, type metadata accessor for ServerHandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  if (v13[*(v11 + 80)] == 1)
  {
    v29 = v42;
    specialized ServerSessionKeyManager.clientEarlyTrafficSecret.getter(v42);
    v30 = v45;
    v31 = v43;
    result = (*(v45 + 48))(v29, 1, v43);
    if (result != 1)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ClientHelloState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.IdleState);
      v32 = *(v30 + 32);
      v45 = v30 + 32;
      v33 = v41;
      v32(v41, v29, v31);
      v34 = type metadata accessor for PartialHandshakeResult(0);
      v35 = v34[5];
      v36 = type metadata accessor for EncryptionLevel(0);
      v37 = *(*(v36 - 8) + 56);
      v38 = v44;
      v37(v44 + v35, 1, 1, v36);
      v39 = v34[6];
      v32((v38 + v39), v33, v31);
      swift_storeEnumTagMultiPayload();
      v37(v38 + v39, 0, 1, v36);
      *v38 = xmmword_1B26C5EF0;
      *(v38 + 16) = 0;
      *(v38 + v34[7]) = xmmword_1B26C5EF0;
      return (*(*(v34 - 1) + 56))(v38, 0, 1, v34);
    }

    goto LABEL_10;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ClientHelloState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.IdleState);
  v40 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC5HelloyAA07PartialD6ResultVAA0cG0VzAA8TLSErrorOYKF@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v4 = v3;
  v58 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v53 - v9;
  v10 = type metadata accessor for SymmetricKey();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v53 - v13;
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  v20 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v4, v25, type metadata accessor for ServerHandshakeState);
  v55 = v23;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v25, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  outlined init with take of ServerHandshakeState.IdleState(v25, v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v26 = a1[3];
  v66[2] = a1[2];
  v66[3] = v26;
  v27 = a1[5];
  v66[4] = a1[4];
  v66[5] = v27;
  v28 = a1[1];
  v66[0] = *a1;
  v66[1] = v28;
  v29 = v67;
  v30 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c5HelloE0V07sendingcF008originalE006serverF0AE5state_AA10ByteBufferV0iF5BytestAC06ClientfE0V_AA0cF0VtAA8TLSErrorOYKFZ(v17, v22, v66, v64);
  if (v29)
  {
    v33 = v64[0];
    v34 = v64[1];
    v35 = v65;
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v37 = v62;
    *v62 = v33;
    v37[1] = v34;
    *(v37 + 16) = v35;
    return result;
  }

  v54 = v32;
  v62 = v31;
  v67 = v30;
  outlined init with take of ServerHandshakeState.IdleState(v17, v19, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v38 = v60;
  specialized ServerSessionKeyManager.clientHandshakeTrafficSecret.getter(v60);
  v39 = v61;
  v40 = *(v61 + 48);
  result = v40(v38, 1, v10);
  if (result == 1)
  {
    goto LABEL_9;
  }

  v53 = 0;
  v61 = *(v39 + 32);
  (v61)(v63, v38, v10);
  v41 = v59;
  specialized ServerSessionKeyManager.serverHandshakeTrafficSecret.getter(v59);
  result = v40(v41, 1, v10);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v42 = v57;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v57, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v43 = v56;
  v44 = v41;
  v45 = v61;
  (v61)(v56, v44, v10);
  outlined init with take of ServerHandshakeState.IdleState(v19, v42, type metadata accessor for ServerHandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for PartialHandshakeResult(0);
  v47 = v46[5];
  v48 = v58;
  v45(v58 + v47, v43, v10);
  v49 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v50 = *(*(v49 - 8) + 56);
  v50(v48 + v47, 0, 1, v49);
  v51 = v46[6];
  v45(v48 + v51, v63, v10);
  swift_storeEnumTagMultiPayload();
  result = (v50)(v48 + v51, 0, 1, v49);
  v52 = v62;
  *v48 = v67;
  v48[1] = v52;
  v48[2] = v54;
  *(v48 + v46[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC19EncryptedExtensionsyAA07PartialD6ResultVAA0gH0VAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v3, v16, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of ServerHandshakeState.IdleState(v16, v13, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v17 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(v10, v13, a1, v32);
    if (v4)
    {
      v20 = v32[0];
      v21 = v32[1];
      v22 = v33;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerHelloState);
      *a2 = v20;
      *(a2 + 8) = v21;
      *(a2 + 16) = v22;
    }

    else
    {
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v34 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v3, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerHelloState);
      outlined init with take of ServerHandshakeState.IdleState(v10, v3, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for PartialHandshakeResult(0);
      v28 = v27[5];
      v29 = type metadata accessor for EncryptionLevel(0);
      v30 = *(*(v29 - 8) + 56);
      v30(&a3[v28], 1, 1, v29);
      result = (v30)(&a3[v27[6]], 1, 1, v29);
      *a3 = v24;
      *(a3 + 1) = v25;
      *(a3 + 2) = v26;
      *&a3[v27[7]] = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC11CertificateAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v14, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of ServerHandshakeState.IdleState(v14, v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v15 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(v8, v11, v30);
    if (v3)
    {
      v18 = v30[0];
      v19 = v30[1];
      v20 = v31;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
    }

    else
    {
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v32 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v2, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      outlined init with take of ServerHandshakeState.IdleState(v8, v2, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for PartialHandshakeResult(0);
      v26 = v25[5];
      v27 = type metadata accessor for EncryptionLevel(0);
      v28 = *(*(v27 - 8) + 56);
      v28(&a2[v26], 1, 1, v27);
      result = (v28)(&a2[v25[6]], 1, 1, v27);
      *a2 = v22;
      *(a2 + 1) = v23;
      *(a2 + 2) = v24;
      *&a2[v25[7]] = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v14, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC17CertificateVerifyAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v14, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of ServerHandshakeState.IdleState(v14, v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    v15 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(v8, v11, v30);
    if (v3)
    {
      v18 = v30[0];
      v19 = v30[1];
      v20 = v31;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
    }

    else
    {
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v32 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v2, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      outlined init with take of ServerHandshakeState.IdleState(v8, v2, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for PartialHandshakeResult(0);
      v26 = v25[5];
      v27 = type metadata accessor for EncryptionLevel(0);
      v28 = *(*(v27 - 8) + 56);
      v28(&a2[v26], 1, 1, v27);
      result = (v28)(&a2[v25[6]], 1, 1, v27);
      *a2 = v22;
      *(a2 + 1) = v23;
      *(a2 + 2) = v24;
      *&a2[v25[7]] = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v14, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC8FinishedAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a1;
  v73 = a2;
  v76 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v76);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66 - v8;
  v78 = type metadata accessor for SymmetricKey();
  v75 = *(v78 - 8);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - v11;
  v74 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v12 = MEMORY[0x1EEE9AC00](v74);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  v23 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v28, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    outlined init with take of ServerHandshakeState.IdleState(v28, v4, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    if ((v4[*(v76 + 40)] & 1) != 0 || (v4[*(v76 + 48) + 2] & 1) == 0)
    {
      v40 = v82;
      v41 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0025serverEncryptedExtensionsE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(v14, v4, &v79);
      if (v40)
      {
        v35 = v79;
        v36 = v80;
        v37 = v81;
        v38 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        v39 = v4;
        goto LABEL_9;
      }

      v76 = v42;
      v77 = v43;
      v67 = v41;
      v82 = 0;
      outlined init with take of ServerHandshakeState.IdleState(v14, v17, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v57 = v69;
      specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter(v69);
      v58 = v75;
      v59 = v78;
      result = (*(v75 + 48))(v57, 1, v78);
      if (result != 1)
      {
        v60 = v72;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v72, type metadata accessor for ServerHandshakeState);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v4, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
        v49 = *(v58 + 32);
        v61 = v68;
        v49(v68, v57, v59);
        outlined init with take of ServerHandshakeState.IdleState(v17, v60, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        swift_storeEnumTagMultiPayload();
        v51 = type metadata accessor for PartialHandshakeResult(0);
        v52 = v73;
        v53 = v73 + v51[5];
        v54 = v53;
        v55 = v61;
        v56 = v59;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_17:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v28, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  outlined init with take of ServerHandshakeState.IdleState(v28, v25, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  v30 = v82;
  v31 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0023serverCertificateVerifyE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(v20, v25, &v79);
  v34 = v78;
  if (v30)
  {
    v35 = v79;
    v36 = v80;
    v37 = v81;
    v38 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    v39 = v25;
LABEL_9:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v39, v38);
    v45 = v77;
    *v77 = v35;
    v45[1] = v36;
    *(v45 + 16) = v37;
    return result;
  }

  v76 = v32;
  v77 = v33;
  v67 = v31;
  v82 = 0;
  outlined init with take of ServerHandshakeState.IdleState(v20, v22, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v46 = v71;
  specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter(v71);
  v47 = v75;
  result = (*(v75 + 48))(v46, 1, v34);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v48 = v72;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v72, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v25, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  v49 = *(v47 + 32);
  v50 = v70;
  v49(v70, v46, v34);
  outlined init with take of ServerHandshakeState.IdleState(v22, v48, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  swift_storeEnumTagMultiPayload();
  v51 = type metadata accessor for PartialHandshakeResult(0);
  v52 = v73;
  v53 = v73 + v51[5];
  v54 = v53;
  v55 = v50;
  v56 = v34;
LABEL_14:
  v49(v54, v55, v56);
  v62 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v63 = *(*(v62 - 8) + 56);
  v63(v53, 0, 1, v62);
  result = v63(v52 + v51[6], 1, 1, v62);
  v65 = v76;
  v64 = v77;
  *v52 = v67;
  v52[1] = v65;
  v52[2] = v64;
  *(v52 + v51[7]) = xmmword_1B26C5EF0;
  return result;
}