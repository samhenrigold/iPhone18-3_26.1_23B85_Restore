Swift::Int Extension.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension(uint64_t a1)
{
  Hasher.init(_seed:)();
  Extension.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension(__n128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v8 = a1[5].n128_u8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static Extension.__derived_enum_equals(_:_:)(v7, v9, *v9, v5) & 1;
}

uint64_t specialized static Extension.__derived_enum_equals(_:_:)(__n128 *a1, unsigned __int16 *a2, double a3, __n128 a4)
{
  result = a1->n128_u64[0];
  v7 = a1->n128_u64[1];
  v6 = a1[1].n128_u64[0];
  v8 = a1[1].n128_i64[1];
  v9 = a1[2].n128_u64[0];
  v10 = a1[2].n128_i64[1];
  v12 = a1[3];
  v11 = a1[4];
  v13 = a1[5].n128_u8[0];
  switch(v13 >> 4)
  {
    case 1u:
      if ((a2[40] & 0xF0) != 0x10)
      {
        return 0;
      }

      v43 = *a2;
      v44 = *(result + 16);
      if (v44 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v44 || result == v43)
      {
        return 1;
      }

      v45 = (result + 32);
      v46 = (v43 + 32);
      do
      {
        if (!v44)
        {
          goto LABEL_132;
        }

        v48 = *v45++;
        v47 = v48;
        v49 = *v46++;
        result = v47 == v49;
      }

      while (v47 == v49 && v44-- != 1);
      return result;
    case 2u:
      if ((a2[40] & 0xF0) != 0x20)
      {
        return 0;
      }

      v38 = *a2;
      v39 = *(a2 + 2);
      if (v7)
      {
        if ((v39 & (result == v38)) != 0 && BYTE1(result) == BYTE1(v38))
        {
          return 1;
        }
      }

      else if (v39 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary15ProtocolVersionV_Tt1g5(result, *a2))
      {
        return 1;
      }

      return 0;
    case 3u:
      if ((a2[40] & 0xF0) != 0x30)
      {
        return 0;
      }

      v40 = *(a2 + 2);
      if (v6)
      {
        if (v40 & 1) != 0 && (result == *a2 && v7 == *(a2 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          return 1;
        }
      }

      else if (v40 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(result, *a2))
      {
        return 1;
      }

      return 0;
    case 4u:
      if ((a2[40] & 0xF0) != 0x40)
      {
        return 0;
      }

      v17 = *a2;
      v18 = *(a2 + 2);
      v19 = v18 & 0x3000000000000000;
      v20 = (v6 >> 60) & 3;
      if (v20)
      {
        if (v20 != 1)
        {
          if (v19 != 0x2000000000000000)
          {
            return 0;
          }

          return result == v17;
        }

        if (v19 == 0x1000000000000000 && result == v17 && (specialized static ByteBuffer.== infix(_:_:)(v7, v6 & 0xCFFFFFFFFFFFFFFFLL, v8, *(a2 + 1), v18 & 0xCFFFFFFFFFFFFFFFLL, *(a2 + 3)) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v19 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(result, *a2) & 1) != 0)
      {
        return 1;
      }

      return 0;
    case 5u:
      LODWORD(v75[0]) = result;
      BYTE4(v75[0]) = BYTE4(result);
      if ((a2[40] & 0xF0) != 0x50)
      {
        return 0;
      }

      v51 = *a2;
      if ((v75[0] & 0x100000000) != 0)
      {
        if ((v51 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((v51 & 0x100000000) == 0 && LODWORD(v75[0]) == v51)
      {
        return 1;
      }

      return 0;
    case 6u:
      if ((a2[40] & 0xF0) != 0x60)
      {
        return 0;
      }

      v56 = *a2;
      v57 = *(result + 16);
      if (v57 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v57 || result == v56)
      {
        return 1;
      }

      v58 = (result + 32);
      v59 = (v56 + 32);
      while (v57)
      {
        v61 = *v58++;
        v60 = v61;
        v62 = *v59++;
        result = v60 == v62;
        if (v60 != v62 || v57-- == 1)
        {
          return result;
        }
      }

      goto LABEL_133;
    case 7u:
      if ((a2[40] & 0xF0) != 0x70)
      {
        return 0;
      }

      v41 = *a2;
      v42 = *(a2 + 2);
      if (v7)
      {
        return (v42 & (result == v41)) != 0;
      }

      if (v42)
      {
        return 0;
      }

      v65 = *(result + 16);
      if (v65 != *(v41 + 16))
      {
        return 0;
      }

      if (!v65 || result == v41)
      {
        return 1;
      }

      v66 = (result + 32);
      v67 = (v41 + 32);
      result = 1;
      do
      {
        if (*v66 != *v67)
        {
          return 0;
        }

        ++v66;
        ++v67;
        --v65;
      }

      while (v65);
      return result;
    case 8u:
      if ((a2[40] & 0xF0) != 0x80)
      {
        return 0;
      }

      v53 = *(a2 + 1);
      v54 = *(a2 + 2);
      v52 = *a2;
      v55 = a1->n128_u64[1];
      goto LABEL_89;
    case 9u:
      if ((a2[40] & 0xF0) != 0x90)
      {
        return 0;
      }

      v30 = *a2;
      v31 = *(result + 16);
      if (v31 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v31 || result == v30)
      {
        return 1;
      }

      v32 = (result + 32);
      v33 = (v30 + 32);
      while (v31)
      {
        v35 = *v32++;
        v34 = v35;
        v36 = *v33++;
        result = v34 == v36;
        if (v34 != v36 || v31-- == 1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      __break(1u);
      return result;
    case 0xAu:
      if ((a2[40] & 0xF0) != 0xA0)
      {
        return 0;
      }

      v17 = *a2;
      v64 = *(a2 + 2);
      if ((v6 & 1) == 0)
      {
        if ((v64 & 1) == 0)
        {
          v68 = *(a2 + 1);
          v69 = v7;
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(result, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v69, v68))
          {
            return 1;
          }
        }

        return 0;
      }

      if ((v64 & 1) == 0)
      {
        return 0;
      }

      return result == v17;
    case 0xBu:
      if ((a2[40] & 0xF0) != 0xB0)
      {
        return 0;
      }

      v15 = *a2;
      v16 = *a2;
      if ((result & 0x10000) != 0)
      {
        if ((v15 & 0x10000) != 0 && result == v16)
        {
          return 1;
        }
      }

      else if ((v15 & 0x10000) == 0 && result == v16 && BYTE1(result) == BYTE1(v15))
      {
        return 1;
      }

      return 0;
    case 0xCu:
      v21 = *(a2 + 80);
      if ((v21 & 0xF0) != 0xC0)
      {
        return 0;
      }

      v22 = *a2;
      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      v25 = *(a2 + 3);
      v27 = *(a2 + 4);
      v26 = *(a2 + 5);
      v28 = *(a2 + 3);
      if (v13)
      {
        v29 = *(a2 + 4);
        v75[0] = result;
        v75[1] = v7;
        v75[2] = v6;
        v75[3] = v8;
        v75[4] = v9;
        v75[5] = v10;
        v76 = v12;
        v77 = v11;
        if (v21)
        {
          v72[0] = v22;
          v72[1] = v23;
          v72[2] = v24;
          v72[3] = v25;
          v72[4] = v27;
          v72[5] = v26;
          v73 = v28;
          v74 = v29;
          if (specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v75, v72))
          {
            return 1;
          }
        }
      }

      else
      {
        v71 = v12.n128_u64[0];
        if ((a2[40] & 1) == 0)
        {
          v70 = *(a2 + 3);
          if (specialized static ByteBuffer.== infix(_:_:)(result, v7, v6, v22, v23, v24) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v8, v9, v10, v25, v27, v26) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v71, v70))
          {
            return 1;
          }
        }
      }

      return 0;
    case 0xDu:
      if ((a2[40] & 0xF0) != 0xD0 || *a2 != result)
      {
        return 0;
      }

      v52 = *(a2 + 1);
      v53 = *(a2 + 2);
      v54 = *(a2 + 3);
      result = a1->n128_i64[1];
      v55 = a1[1].n128_u64[0];
      v6 = a1[1].n128_u64[1];
LABEL_89:

      return specialized static ByteBuffer.== infix(_:_:)(result, v55, v6, v52, v53, v54);
    default:
      if (*(a2 + 80) > 0xFu)
      {
        return 0;
      }

      v14 = *(a2 + 1);
      if (v7 >> 60 != 15)
      {
        return v14 >> 60 != 15 && (specialized static ByteBuffer.== infix(_:_:)(result, v7, v6, *a2, v14, *(a2 + 2)) & 1) != 0;
      }

      return v14 >> 60 == 15;
  }
}

unint64_t lazy protocol witness table accessor for type Extension and conformance Extension()
{
  result = lazy protocol witness table cache variable for type Extension and conformance Extension;
  if (!lazy protocol witness table cache variable for type Extension and conformance Extension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension and conformance Extension);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 81))
  {
    return (*a1 + 115);
  }

  v3 = ((*(a1 + 80) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 80) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Extension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

void FinishedMessage.write(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v7 = a2 >> 32;
    }

    else
    {
      v7 = BYTE6(a3);
    }

    if (v6)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a4 || v7 < v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
LABEL_15:
      outlined consume of Data._Representation(v9, v11);
      return;
    }

LABEL_20:
    outlined consume of Data._Representation(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  outlined consume of Data._Representation(v9, v12);
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t _s15SwiftTLSLibrary15FinishedMessageVAA09HandshakeD8ProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, uint64_t *a3@<X0>)
{
  result = _s15SwiftTLSLibrary15FinishedMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a3);
  if (v3)
  {
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
    a2[2] = v8;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15FinishedMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
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
        result = Data._Representation.subscript.getter();
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

unint64_t lazy protocol witness table accessor for type FinishedMessage and conformance FinishedMessage()
{
  result = lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage;
  if (!lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage);
  }

  return result;
}

Swift::Int SwiftTLSFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftTLSFeatureFlags(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for SwiftTLSFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SwiftTLSFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t ByteBuffer.writeLengthPrefixedBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v6 = dispatch thunk of Collection.count.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v8 = bswap64(v6);
  v9[3] = MEMORY[0x1E69E6290];
  v9[4] = MEMORY[0x1E6969DF8];
  v9[0] = &v8;
  v9[1] = v9;
  __swift_project_boxed_opaque_existential_0(v9, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return ByteBuffer.writeBytes<A>(_:)(a1, a2, a3);
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV18readLengthPrefixedyxSgAeCzq_YKXEq_YKs5ErrorR_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a2;
  v29 = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v17)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = ByteBuffer.readSlice(length:)(result);
    if (v19 >> 60 == 15)
    {
      v21 = *(a3 - 8);
      return (*(v21 + 56))(a6, 1, 1, a3);
    }

    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29(&v26, v12);
    outlined consume of Data._Representation(v26, v27);
    if (v6)
    {
      return (*(v10 + 32))(v24, v12, a4);
    }

    else
    {
      v22 = *(a3 - 8);
      if ((*(v22 + 48))(v15, 1, a3) == 1)
      {
        (*(v23 + 8))(v15, v13);
        v21 = v22;
        return (*(v21 + 56))(a6, 1, 1, a3);
      }

      (*(v22 + 32))(a6, v15, a3);
      return (*(v22 + 56))(a6, 0, 1, a3);
    }
  }

  return result;
}

uint64_t SessionTicket.issued.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionTicket.issued.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SessionTicket.lifetime.setter(int a1)
{
  result = type metadata accessor for SessionTicket(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SessionTicket.ticketAgeAdd.setter(int a1)
{
  result = type metadata accessor for SessionTicket(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SessionTicket.nonce.getter()
{
  v1 = v0 + *(type metadata accessor for SessionTicket(0) + 28);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

void SessionTicket.nonce.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for SessionTicket(0) + 28));
  outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t SessionTicket.ticket.getter()
{
  v1 = v0 + *(type metadata accessor for SessionTicket(0) + 32);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

void SessionTicket.ticket.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for SessionTicket(0) + 32));
  outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t SessionTicket.psk.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionTicket(0) + 36);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionTicket.psk.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionTicket(0) + 36);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionTicket.maxEarlyDataSize.setter(int a1)
{
  result = type metadata accessor for SessionTicket(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SessionTicket.cipherSuite.setter(__int16 a1)
{
  result = type metadata accessor for SessionTicket(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SessionTicket.group.setter(__int16 a1)
{
  result = type metadata accessor for SessionTicket(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SessionTicket.alpn.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionTicket(0) + 52));

  return v1;
}

uint64_t SessionTicket.alpn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionTicket(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionTicket.certificateBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionTicket(0) + 56);

  return outlined init with copy of PeerCertificateBundle(v3, a1);
}

uint64_t SessionTicket.certificateBundle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionTicket(0) + 56);

  return outlined assign with take of PeerCertificateBundle(a1, v3);
}

double _s15SwiftTLSLibrary13SessionTicketV7message3psk11cipherSuite5group4alpn17certificateBundle11currentTimeAcA03NewcD0V_9CryptoKit12SymmetricKeyVAA06CipherH0VAA10NamedGroupVSSSgAA015PeerCertificateL0V10Foundation4DateVtAA8TLSErrorOYKcfC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v106 = a5;
  v14 = type metadata accessor for Date();
  v81 = *(v14 - 8);
  v84 = a8;
  v82 = v14;
  (*(v81 + 16))(a9, a8);
  if (*a1 >= 0x93A80u)
  {
    v15 = 604800;
  }

  else
  {
    v15 = *a1;
  }

  v16 = type metadata accessor for SessionTicket(0);
  v17 = v16[13];
  *(a9 + v16[5]) = v15;
  v18 = (a9 + v17);
  *(a9 + v16[6]) = *(a1 + 4);
  v105 = *(a1 + 48);
  v19 = v105;
  v104 = *(a1 + 32);
  v20 = a9 + v16[8];
  *v20 = v104;
  v79 = v20;
  *(v20 + 16) = v19;
  v21 = *(a1 + 8);
  v103 = *(a1 + 24);
  v102 = v21;
  v22 = a9 + v16[7];
  *v22 = *(a1 + 8);
  v77 = v22;
  *(v22 + 16) = *(a1 + 24);
  v23 = v16[9];
  v24 = type metadata accessor for SymmetricKey();
  v25 = *(v24 - 8);
  v78 = v23;
  v83 = a2;
  (*(v25 + 16))(a9 + v23, a2, v24);
  *(a9 + v16[11]) = a3;
  *(a9 + v16[12]) = a4;
  *v18 = v106;
  v18[1] = a6;
  v26 = a1;
  v88 = v16;
  v27 = v16[14];
  v28 = a7;
  v76 = v27;
  outlined init with copy of PeerCertificateBundle(a7, a9 + v27);
  v29 = *(a1 + 56);
  v100 = MEMORY[0x1E69E7CD0];
  v101 = v29;
  v30 = *(v29 + 16);
  if (v30)
  {
    v74 = v26;
    v75 = a9;
    v86 = v24;
    outlined init with copy of ByteBuffer(&v104, &v94);
    outlined init with copy of ByteBuffer(&v102, &v94);
    outlined init with copy of [Extension](&v101, &v94);
    if (*(v29 + 16))
    {
      v31 = v25;
      a9 = 0;
      v26 = 0;
      v24 = v29 + 32;
      v28 = v30 - 1;
      LODWORD(v106) = 1;
      do
      {
        v32 = *(v24 + 16);
        v94 = *v24;
        v95 = v32;
        v33 = *(v24 + 32);
        v34 = *(v24 + 48);
        v35 = *(v24 + 64);
        v99 = *(v24 + 80);
        v97 = v34;
        v98 = v35;
        v96 = v33;
        v25 = v26 + 1;
        v36 = 42;
        switch(v99 >> 4)
        {
          case 1:

            v36 = 10;
            break;
          case 2:
            sub_1B260EDD8(v94, BYTE8(v94) & 1);
            v36 = 43;
            break;
          case 3:
            outlined copy of Extension.ApplicationLayerProtocolNegotiation(v94, *(&v94 + 1), v95 & 1);
            v36 = 16;
            break;
          case 4:
            outlined copy of Extension.KeyShare(v94, *(&v94 + 1), v95);
            v36 = 51;
            break;
          case 5:
            break;
          case 6:

            v36 = 13;
            break;
          case 7:
            sub_1B260EDD8(v94, BYTE8(v94) & 1);
            v36 = 20;
            break;
          case 8:
            outlined copy of Data._Representation(v94, *(&v94 + 1));
            v36 = 57;
            break;
          case 9:

            v36 = 45;
            break;
          case 0xA:
            outlined copy of Extension.PreSharedKey(v94, *(&v94 + 1), v95 & 1);
            v36 = 41;
            break;
          case 0xB:
            v36 = 58;
            break;
          case 0xC:
            outlined copy of Extension.PAKE(v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), v98, *(&v98 + 1), v99 & 1);
            v36 = 35387;
            break;
          case 0xD:
            v37 = v94;
            outlined copy of Data._Representation(*(&v94 + 1), v95);
            v36 = v37;
            break;
          default:
            outlined copy of Data?(v94, *(&v94 + 1));
            v36 = 0;
            break;
        }

        if ((specialized Set._Variant.insert(_:)(&v92, v36) & 1) == 0)
        {

          outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, logger);
          outlined init with copy of Extension(&v94, &v92);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          outlined destroy of Extension(&v94);
          v46 = v75;
          v47 = v82;
          v48 = v86;
          if (os_log_type_enabled(v44, v45))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&v92 = v50;
            *v49 = 136315138;
            v51 = 0;
            v106 = v31;
            switch(v99 >> 4)
            {
              case 1:
                v51 = 10;
                break;
              case 2:
                v51 = 43;
                break;
              case 3:
                v51 = 16;
                break;
              case 4:
                v51 = 51;
                break;
              case 5:
                v51 = 42;
                break;
              case 6:
                v51 = 13;
                break;
              case 7:
                v51 = 20;
                break;
              case 8:
                v51 = 57;
                break;
              case 9:
                v51 = 45;
                break;
              case 0xA:
                v51 = 41;
                break;
              case 0xB:
                v51 = 58;
                break;
              case 0xC:
                v51 = -30149;
                break;
              case 0xD:
                v51 = v94;
                break;
              default:
                break;
            }

            v71 = ExtensionType.description.getter(v51);
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v92);

            *(v49 + 4) = v73;
            _os_log_impl(&dword_1B25F5000, v44, v45, "server offered duplicate extension of type %s on new session ticket", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x1B274ECF0](v50, -1, -1);
            MEMORY[0x1B274ECF0](v49, -1, -1);

            v52 = a7;
            v53 = v84;
            v48 = v86;
            v31 = v106;
          }

          else
          {

            v52 = a7;
            v53 = v84;
          }

          v92 = xmmword_1B26C6410;
          v93 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of NewSessionTicket(v74);
          outlined destroy of Extension(&v94);
          v68 = *(v81 + 8);
          v68(v53, v82);
          outlined destroy of PeerCertificateBundle(v52);
          v69 = *(v31 + 8);
          v69(v83, v48);
          v70 = v79;
          goto LABEL_67;
        }

        if ((v99 & 0xF0) == 0x50)
        {
          v38 = v28;
          v39 = v31;
          v40 = BYTE4(v94);
          if (v106 & 1) == 0 || (BYTE4(v94))
          {

            outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            __swift_project_value_buffer(v54, logger);
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.error.getter();
            v46 = v75;
            v48 = v86;
            if (os_log_type_enabled(v55, v56))
            {
              v89 = v56;
              v57 = v106;
              v58 = v106 | v40;
              v59 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *&v92 = v80;
              *v59 = 136315394;
              if (v57)
              {
                v60 = 0xE300000000000000;
                v61 = 7104878;
              }

              else
              {
                lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                v61 = BinaryInteger.description.getter();
                v60 = v62;
              }

              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v92);

              *(v59 + 4) = v63;
              *(v59 + 12) = 2080;
              if (v58)
              {
                v64 = 0xE300000000000000;
                v48 = v86;
                v65 = 7104878;
              }

              else
              {
                lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                v65 = BinaryInteger.description.getter();
                v64 = v66;
                v48 = v86;
              }

              v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &v92);

              *(v59 + 14) = v67;
              _os_log_impl(&dword_1B25F5000, v55, v89, "invalid early data extension: old value %s new value %s", v59, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1B274ECF0](v80, -1, -1);
              MEMORY[0x1B274ECF0](v59, -1, -1);
            }

            v92 = xmmword_1B26C6410;
            v93 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined destroy of NewSessionTicket(v74);
            v68 = *(v81 + 8);
            v47 = v82;
            v68(v84, v82);
            outlined destroy of PeerCertificateBundle(a7);
            v69 = *(v39 + 8);
            v69(v83, v48);
            v70 = v79;
LABEL_67:
            v68(v46, v47);
            outlined consume of Data._Representation(*v77, *(v77 + 8));
            outlined consume of Data._Representation(*v70, *(v70 + 8));
            v69(v46 + v78, v48);

            outlined destroy of PeerCertificateBundle(v46 + v76);
            *&result = 5;
            *a10 = xmmword_1B26C6410;
            *(a10 + 16) = 2;
            return result;
          }

          LODWORD(v106) = 0;
          a9 = v94;
          v28 = v38;
          if (v38 == v26)
          {
            goto LABEL_36;
          }
        }

        else
        {
          outlined destroy of Extension(&v94);
          if (v28 == v26)
          {
LABEL_36:
            outlined destroy of NewSessionTicket(v74);
            outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
            (*(v81 + 8))(v84, v82);
            outlined destroy of PeerCertificateBundle(a7);
            (*(v31 + 8))(v83, v86);

            if (v106)
            {
              v42 = 0;
            }

            else
            {
              v42 = a9;
            }

            a9 = v75;
            goto LABEL_40;
          }
        }

        v24 += 88;
        ++v26;
      }

      while (v25 < *(v29 + 16));
    }

    __break(1u);
  }

  outlined init with copy of ByteBuffer(&v104, &v94);
  outlined init with copy of ByteBuffer(&v102, &v94);
  outlined destroy of NewSessionTicket(v26);
  (*(v81 + 8))(v84, v82);
  outlined destroy of PeerCertificateBundle(v28);
  (*(v25 + 8))(v83, v24);

  v42 = 0;
LABEL_40:
  *(a9 + v88[10]) = v42;
  return result;
}

uint64_t ByteBuffer.writeOptional<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t, _BYTE *), uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v18 = 0;
    v21 = MEMORY[0x1E69E6290];
    v22 = MEMORY[0x1E6969DF8];
    v19 = &v18;
    v20 = &v19;
    __swift_project_boxed_opaque_existential_0(&v19, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
    (*(v13 + 32))(v15, v12, a4);
    v18 = -1;
    v21 = MEMORY[0x1E69E6290];
    v22 = MEMORY[0x1E6969DF8];
    v19 = &v18;
    v20 = &v19;
    __swift_project_boxed_opaque_existential_0(&v19, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v19);
    a2(v4, v15);
    return (*(v13 + 8))(v15, a4);
  }
}

void _s15SwiftTLSLibrary13SessionTicketV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v82 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for PeerCertificateBundle(0);
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v69 - v20;
  v22 = 0;
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v22 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v23)
  {
    v22 = a1;
LABEL_6:
    outlined copy of Data._Representation(a1, a2);
  }

  v91 = a1;
  v92 = a2;
  v93 = v22;
  v81 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v24)
  {
    goto LABEL_38;
  }

  v80 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v80 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v79 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v79 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v25 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v26)
  {
    goto LABEL_38;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    v60 = type metadata accessor for SessionTicket(0);
    v61 = v82;
    v94 = (v82 + v60[13]);
    outlined init with take of PeerCertificateBundle(v8, v11);
    Date.init(timeIntervalSinceReferenceDate:)();
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(v91, v92);
    v62 = v79;
    *(v61 + v60[5]) = v80;
    *(v61 + v60[6]) = v62;
    v63 = (v61 + v60[7]);
    v64 = v77;
    *v63 = v76;
    v63[1] = v64;
    v63[2] = v78;
    v65 = (v61 + v60[8]);
    v66 = v74;
    *v65 = v73;
    v65[1] = v66;
    v65[2] = v75;
    v72(v61 + v60[9], v21, v84);
    *(v61 + v60[10]) = v16;
    *(v61 + v60[11]) = v19;
    *(v61 + v60[12]) = v70;
    v67 = v94;
    object = v69.value._object;
    *v94 = v69.value._countAndFlagsBits;
    v67[1] = object;
    outlined init with take of PeerCertificateBundle(v11, v61 + v60[14]);
    return;
  }

  v27 = ByteBuffer.readSlice(length:)(v25);
  if (v28 >> 60 == 15)
  {
LABEL_38:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, logger);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1B25F5000, v54, v55, "Unable to parse decrypted session ticket", v56, 2u);
      MEMORY[0x1B274ECF0](v56, -1, -1);
    }

    v86 = xmmword_1B26C6440;
    v89 = xmmword_1B26C6440;
    v57 = 2;
    v90 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a1, a2);
    goto LABEL_43;
  }

  v76 = v27;
  v77 = v28;
  v78 = v29;
  v30 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v31)
  {
    goto LABEL_16;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v32 = ByteBuffer.readSlice(length:)(v30);
  if (v33 >> 60 == 15)
  {
LABEL_16:
    v35 = v76;
    v36 = v77;
LABEL_37:
    outlined consume of ByteBuffer?(v35, v36);
    goto LABEL_38;
  }

  v73 = v32;
  v74 = v33;
  v75 = v34;
  v37 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v38)
  {
LABEL_36:
    outlined consume of ByteBuffer?(v76, v77);
    v35 = v73;
    v36 = v74;
    goto LABEL_37;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v39 = ByteBuffer.readSlice(length:)(v37);
  if (v40 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v42 == 2)
    {
      v43 = *(v39 + 24);
    }

    else
    {
      v43 = 0;
    }
  }

  else if (v42)
  {
    v43 = v39 >> 32;
  }

  else
  {
    v43 = BYTE6(v40);
  }

  if (v43 >= v41)
  {
    v44 = v39;
    v72 = v41;
    v71 = v40;
    *&v89 = Data._Representation.subscript.getter();
    *(&v89 + 1) = v45;
    SymmetricKey.init<A>(data:)();
    outlined consume of ByteBuffer?(v44, v71);
    v46 = v85 + 32;
    v72 = *(v85 + 32);
    v47 = v16;
    v48 = v84;
    v72(v19, v47, v84);
    v71 = v46;
    v72(v21, v19, v48);
    v49 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
    if ((v49 & 0x100000000) != 0)
    {
      (*(v85 + 8))(v21, v48);
      goto LABEL_36;
    }

    LODWORD(v16) = v49;
    v50 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v50 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

    LOWORD(v19) = v50;
    v51 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v51 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

    v70 = v51;
    v52 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v52 & 0x100) != 0)
    {
      goto LABEL_34;
    }

    if (v52)
    {
      v69 = ByteBuffer.readApplicationLayerProtocol()();
      if (!v69.value._object)
      {
LABEL_34:
        (*(v85 + 8))(v21, v84);
        goto LABEL_36;
      }
    }

    else
    {
      v69 = 0;
    }

    v59 = v86;
    _s15SwiftTLSLibrary10ByteBufferV25readPeerCertificateBundleAA0fgH0VSgyAA8TLSErrorOYKF(&v87, v8);
    *&v86 = v59;
    if (v59)
    {
      v86 = v87;
      v57 = v88;
      outlined consume of ByteBuffer?(v76, v77);
      outlined consume of ByteBuffer?(v73, v74);
      outlined consume of String??(v69.value._countAndFlagsBits, v69.value._object);
      outlined consume of Data._Representation(a1, a2);
      (*(v85 + 8))(v21, v84);
LABEL_43:
      outlined consume of Data._Representation(v91, v92);
      v58 = v94;
      *v94 = v86;
      *(v58 + 16) = v57;
      return;
    }

    if ((*(v83 + 48))(v8, 1, v9) == 1)
    {
      (*(v85 + 8))(v21, v84);
      outlined consume of ByteBuffer?(v76, v77);
      outlined consume of ByteBuffer?(v73, v74);
      outlined consume of String??(v69.value._countAndFlagsBits, v69.value._object);
      outlined destroy of P256.Signing.PrivateKey?(v8, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      goto LABEL_38;
    }

    goto LABEL_50;
  }

LABEL_53:
  __break(1u);
}

uint64_t ByteBuffer.readOptional<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v21 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v14 & 0x100) != 0)
  {
    v16 = *(v21 + 56);
    v17 = a3;
    v18 = 1;
  }

  else
  {
    if (v14)
    {
      a1(v3);
      if ((*(v11 + 48))(v10, 1, a2) == 1)
      {
        (*(v21 + 8))(v10, v7);
        return (*(v21 + 56))(a3, 1, 1, v7);
      }

      else
      {
        v19 = *(v11 + 32);
        v19(v13, v10, a2);
        v19(a3, v13, a2);
        (*(v11 + 56))(a3, 0, 1, a2);
        return (*(v21 + 56))(a3, 0, 1, v7);
      }
    }

    (*(v11 + 56))(a3, 1, 1, a2);
    v16 = *(v21 + 56);
    v17 = a3;
    v18 = 0;
  }

  return v16(v17, v18, 1, v7);
}

uint64_t SessionTicket.isCompatibleWith(_:configuration:currentTime:)(uint64_t a1, Swift::OpaquePointer *a2, uint64_t a3)
{
  v34 = a2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionTicket(0);
  v11 = *(a1 + 80);
  if (*(v11 + 16))
  {
    v12 = v10;
    if (*(v3 + *(v10 + 44)) == *(v11 + 32))
    {
      v31[0] = v9;
      v31[1] = a3;
      v32 = v7;
      v33 = v6;
      v13 = *(a1 + 96);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v13 + 56;
        while (1)
        {
          v16 = *(v15 + 56);
          if ((v16 & 0xF0) == 0x30)
          {
            v17 = *(v15 - 8);
            if ((v17 & 1) == 0)
            {
              v18 = (v3 + *(v12 + 52));
              v19 = v18[1];
              if (v19)
              {
                v42 = v31;
                v20 = *(v15 - 24);
                v21 = *(v15 - 16);
                v22 = *v15;
                v40 = *(v15 + 8);
                v41 = v22;
                v23 = *(v15 + 16);
                v38 = *(v15 + 24);
                v39 = v23;
                v24 = *(v15 + 32);
                v36 = *(v15 + 40);
                v37 = v24;
                v35 = *(v15 + 48);
                v43 = *v18;
                v44 = v19;
                MEMORY[0x1EEE9AC00](v10);
                outlined copy of Extension.ApplicationLayerProtocolNegotiation(v20, v21, 0);
                v25 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v30, v20);
                outlined consume of Extension(v20, v21, v17, v41, v40, v39, v38, v37, v36, v35, v16);
                if ((v25 & 1) == 0)
                {
                  break;
                }
              }
            }
          }

          v15 += 88;
          if (!--v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if (PeerCertificateBundle.wouldBeTrusted(forKeys:)(v34[2]))
        {
          v26 = v31[0];
          Date.addingTimeInterval(_:)();
          if (static Date.< infix(_:_:)())
          {
            lazy protocol witness table accessor for type Date and conformance Date();
            v27 = v33;
            v28 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v32 + 8))(v26, v27);
            if ((v28 & 1) == 0)
            {
              return 1;
            }
          }

          else
          {
            (*(v32 + 8))(v26, v33);
          }
        }
      }
    }
  }

  return 0;
}

void SessionTicket.obfuscatedTicketAge(currentTime:)()
{
  Date.timeIntervalSince(_:)();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 4294967300.0)
  {
    type metadata accessor for SessionTicket(0);
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.writeLengthPrefixedString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5[5] = *MEMORY[0x1E69E9840];
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v3 = String.UTF8View._foreignCount()();
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v4 = bswap64(v3);
  v5[3] = MEMORY[0x1E69E6290];
  v5[4] = MEMORY[0x1E6969DF8];
  v5[0] = &v4;
  v5[1] = v5;
  __swift_project_boxed_opaque_existential_0(v5, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  specialized Data.append<A>(contentsOf:)(countAndFlagsBits, object);
  if ((object & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }
}

Swift::String_optional __swiftcall ByteBuffer.readLengthPrefixedString()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v1)
  {
    goto LABEL_4;
  }

  if (v0 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v0 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 != 15)
  {
    v4 = v0;
    v5 = v2;
    v6 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v1 = *(v0 + 24);
      }

      else
      {
        v1 = 0;
      }
    }

    else if (v6)
    {
      v1 = v0 >> 32;
    }

    else
    {
      v1 = BYTE6(v2);
    }

    if (v1 >= v3)
    {
      v7 = Data._Representation.subscript.getter();
      v9 = v8;
      v10 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v7, v8);
      if (v11)
      {
        v12 = v10;
        v13 = v4;
        v14 = v11;
      }

      else
      {
        v20 = v7;
        v21 = v9;
        outlined copy of Data._Representation(v7, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ContiguousBytes(v18, v22);
          __swift_project_boxed_opaque_existential_0(v22, v23);
          if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
          {
            outlined consume of Data._Representation(v7, v9);
            __swift_project_boxed_opaque_existential_0(v22, v23);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            outlined consume of ByteBuffer?(v4, v5);
            v15 = v18[0];
            __swift_destroy_boxed_opaque_existential_0(v22);
            v1 = *(&v15 + 1);
            v0 = v15;
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        else
        {
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          outlined destroy of P256.Signing.PrivateKey?(v18, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
        }

        v12 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v7, v9);
        v14 = v16;
        v13 = v4;
      }

      outlined consume of ByteBuffer?(v13, v5);
      outlined consume of Data._Representation(v7, v9);
      v1 = v14;
      v0 = v12;
      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  v0 = 0;
  v1 = 0;
LABEL_24:
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t outlined init with copy of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of [Extension](uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PeerCertificateBundle(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

void outlined copy of Extension.PAKE(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data?(a5, a6);

    outlined copy of Data?(a8, a9);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    outlined copy of Data._Representation(a4, a5);
  }
}

uint64_t outlined copy of Extension.PreSharedKey(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with take of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + 16);
  if (*a1 == *v5 && a1[1] == v5[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void outlined consume of Extension(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 4;
  if (v11 <= 6)
  {
    if (a11 >> 4 > 2u)
    {
      if (v11 == 3)
      {
        outlined consume of Extension.ApplicationLayerProtocolNegotiation(a1, a2, a3 & 1);
        return;
      }

      if (v11 == 4)
      {
        outlined consume of Extension.KeyShare(a1, a2, a3);
        return;
      }

      if (v11 != 6)
      {
        return;
      }
    }

    else
    {
      if (!v11)
      {
        outlined consume of ByteBuffer?(a1, a2);
        return;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return;
        }

LABEL_21:
        sub_1B262A924(a1, a2 & 1);
        return;
      }
    }

LABEL_15:

    return;
  }

  if (a11 >> 4 > 9u)
  {
    if (v11 == 10)
    {
      outlined consume of Extension.PreSharedKey(a1, a2, a3 & 1);
      return;
    }

    if (v11 == 12)
    {
      outlined consume of Extension.PAKE(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1);
      return;
    }

    if (v11 != 13)
    {
      return;
    }

    a1 = a2;
    a2 = a3;
    goto LABEL_20;
  }

  switch(v11)
  {
    case 7u:
      goto LABEL_21;
    case 8u:
LABEL_20:
      outlined consume of Data._Representation(a1, a2);
      return;
    case 9u:
      goto LABEL_15;
  }
}

void outlined consume of Extension.KeyShare(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (!v3)
  {
  }
}

uint64_t outlined consume of Extension.PreSharedKey(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

void outlined consume of Extension.PAKE(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    outlined consume of Data._Representation(a2, a3);
    outlined consume of ByteBuffer?(a5, a6);

    outlined consume of ByteBuffer?(a8, a9);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a4, a5);
  }
}

uint64_t specialized static SessionTicket.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionTicket(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16), *(a2 + v6), *(a2 + v6 + 8), *(a2 + v6 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[8];
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16)) & 1) == 0 || (MEMORY[0x1B274D200](a1 + v5[9], a2 + v5[9]) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v8 = v5[13];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (v12 && (*v9 == *v11 && v10 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v12)
  {
    return 0;
  }

LABEL_15:
  v13 = v5[14];

  return specialized static PeerCertificateBundle.__derived_struct_equals(_:_:)(a1 + v13, a2 + v13);
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV15postClientHello06clientI5Bytes11currentTime13negotiatedPSK11binderValue18bindersArrayLength11useRawEPSKsyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgALSgSiSgSbtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int64_t, uint64_t), uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  v17 = type metadata accessor for SessionKeyManager(0, *(a11 + 16), *(a11 + 24), a4);
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postClientHelloyyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgAGSgSiSgSbtAA8TLSErrorOYKF(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, SHIBYTE(a10), v17);
  if (!v21)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV07sendingC5Hello06serverH011ecdheSecret9pskFailedAA10ByteBufferVAA0cH0V_9CryptoKit09SymmetricE0VSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = type metadata accessor for SessionKeyManager(0, *(a4 + 16), *(a4 + 24), a4);
  return _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKF(a1, a2, v4, v7);
}

uint64_t ClientSessionKeyManager.init()(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3)
{
  type metadata accessor for SessionKeyManager.State(0, a1, a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, v6, v7, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v13 = type metadata accessor for SessionKeyManager.State(0, v6, v7, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  (*(v14 + 16))(&v23 - v15, v4, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v11, v16, v8);
      v18 = *(v8 + 44);
      v19 = type metadata accessor for SymmetricKey();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a3, &v11[v18], v19);
      (*(v9 + 8))(v11, v8);
      return (*(v20 + 56))(a3, 0, 1, v19);
    }
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  v22 = type metadata accessor for SymmetricKey();
  return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
}

uint64_t SessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v12 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v18 + 16))(&v34 - v19, v4, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      (*(v18 + 8))(v20, v17);
LABEL_7:
      v22 = type metadata accessor for SymmetricKey();
      return (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
    }

    (*(v13 + 32))(v15, v20, v12);
    v29 = *(v12 + 40);
    v30 = type metadata accessor for SymmetricKey();
    v31 = *(v30 - 8);
    v32 = &v15[v29];
    v33 = v35;
    (*(v31 + 16))(v35, v32, v30);
    (*(v13 + 8))(v15, v12);
    return (*(v31 + 56))(v33, 0, 1, v30);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    (*(v8 + 32))(v10, v20, v7);
    v24 = *(v7 + 40);
    v25 = type metadata accessor for SymmetricKey();
    v26 = *(v25 - 8);
    v27 = &v10[v24];
    v28 = v35;
    (*(v26 + 16))(v35, v27, v25);
    (*(v8 + 8))(v10, v7);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }
}

uint64_t SessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v12 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v18 + 16))(&v34 - v19, v4, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      (*(v18 + 8))(v20, v17);
LABEL_7:
      v22 = type metadata accessor for SymmetricKey();
      return (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
    }

    (*(v13 + 32))(v15, v20, v12);
    v29 = *(v12 + 44);
    v30 = type metadata accessor for SymmetricKey();
    v31 = *(v30 - 8);
    v32 = &v15[v29];
    v33 = v35;
    (*(v31 + 16))(v35, v32, v30);
    (*(v13 + 8))(v15, v12);
    return (*(v31 + 56))(v33, 0, 1, v30);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    (*(v8 + 32))(v10, v20, v7);
    v24 = *(v7 + 44);
    v25 = type metadata accessor for SymmetricKey();
    v26 = *(v25 - 8);
    v27 = &v10[v24];
    v28 = v35;
    (*(v26 + 16))(v35, v27, v25);
    (*(v8 + 8))(v10, v7);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }
}

uint64_t SessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v12 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  (*(v18 + 16))(&v32 - v19, v4, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v10, v20, v7);
      v22 = type metadata accessor for SymmetricKey();
      v23 = *(v22 - 8);
      v24 = v33;
      (*(v23 + 16))(v33, v10, v22);
      (*(v8 + 8))(v10, v7);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v18 + 8))(v20, v17);
LABEL_6:
    v26 = type metadata accessor for SymmetricKey();
    return (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  }

  (*(v13 + 32))(v15, v20, v12);
  v27 = *(v12 + 48);
  v28 = type metadata accessor for SymmetricKey();
  v29 = *(v28 - 8);
  v30 = &v15[v27];
  v31 = v33;
  (*(v29 + 16))(v33, v30, v28);
  (*(v13 + 8))(v15, v12);
  return (*(v29 + 56))(v31, 0, 1, v28);
}

uint64_t SessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v12 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v18 + 16))(&v34 - v19, v4, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v10, v20, v7);
      v22 = *(v7 + 36);
      v23 = type metadata accessor for SymmetricKey();
      v24 = *(v23 - 8);
      v25 = &v10[v22];
      v26 = v35;
      (*(v24 + 16))(v35, v25, v23);
      (*(v8 + 8))(v10, v7);
      return (*(v24 + 56))(v26, 0, 1, v23);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v18 + 8))(v20, v17);
LABEL_6:
    v28 = type metadata accessor for SymmetricKey();
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }

  (*(v13 + 32))(v15, v20, v12);
  v29 = *(v12 + 52);
  v30 = type metadata accessor for SymmetricKey();
  v31 = *(v30 - 8);
  v32 = &v15[v29];
  v33 = v35;
  (*(v31 + 16))(v35, v32, v30);
  (*(v13 + 8))(v15, v12);
  return (*(v31 + 56))(v33, 0, 1, v30);
}

uint64_t SessionKeyManager.exporterMasterSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v12 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v18 + 16))(&v34 - v19, v4, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v10, v20, v7);
      v22 = *(v7 + 40);
      v23 = type metadata accessor for SymmetricKey();
      v24 = *(v23 - 8);
      v25 = &v10[v22];
      v26 = v35;
      (*(v24 + 16))(v35, v25, v23);
      (*(v8 + 8))(v10, v7);
      return (*(v24 + 56))(v26, 0, 1, v23);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v18 + 8))(v20, v17);
LABEL_6:
    v28 = type metadata accessor for SymmetricKey();
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }

  (*(v13 + 32))(v15, v20, v12);
  v29 = *(v12 + 56);
  v30 = type metadata accessor for SymmetricKey();
  v31 = *(v30 - 8);
  v32 = &v15[v29];
  v33 = v35;
  (*(v31 + 16))(v35, v32, v30);
  (*(v13 + 8))(v15, v12);
  return (*(v31 + 56))(v33, 0, 1, v30);
}

uint64_t SessionKeyManager.resumptionMasterSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, v6, v7, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v13 = type metadata accessor for SessionKeyManager.State(0, v6, v7, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  (*(v14 + 16))(&v23 - v15, v4, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v9 + 32))(v11, v16, v8);
      v18 = *(v8 + 44);
      v19 = type metadata accessor for SymmetricKey();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a3, &v11[v18], v19);
      (*(v9 + 8))(v11, v8);
      return (*(v20 + 56))(a3, 0, 1, v19);
    }
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  v22 = type metadata accessor for SymmetricKey();
  return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v14 = type metadata accessor for SessionKeyManager.State(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v15 + 16))(&v24 - v16, v4, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = *(v10 + 32);
      v23(v12, v17, v9);
      SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(a1, a2, v25, v9);
      (*(v15 + 8))(v4, v14);
      v23(v4, v12, v9);
      swift_storeEnumTagMultiPayload();
      return 2;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v15 + 8))(v17, v14);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);
  v20 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v20, v21, 0xD000000000000012, 0x80000001B26CDE50);

  v26 = xmmword_1B26C6450;
  v27 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v5, v6, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v12 = type metadata accessor for SessionKeyManager.State(0, v5, v6, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v13 + 16))(&v22 - v14, v4, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v15, v7);
      v20 = SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter(v7);
      (*(v8 + 8))(v10, v7);
      return v20;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v13 + 8))(v15, v12);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = SessionKeyManager.State.logDescription.getter(v12);
  Logger.logInvalidStateTransition(stateName:event:)(v18, v19, 0xD00000000000001DLL, 0x80000001B26CD7E0);

  v22 = xmmword_1B26C6450;
  v20 = 2;
  v23 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v20;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v15 = type metadata accessor for SessionKeyManager.State(0, v8, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  (*(v16 + 16))(v24 - v17, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v11 + 32))(v13, v18, v10);
      SessionKeyManager.State.HandshakeSecret.serverFinishedPayload.getter(v10, x8_0);
      return (*(v11 + 8))(v13, v10);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v16 + 8))(v18, v15);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = SessionKeyManager.State.logDescription.getter(v15);
  Logger.logInvalidStateTransition(stateName:event:)(v21, v22, 0xD000000000000015, 0x80000001B26CDE30);

  v24[0] = xmmword_1B26C6450;
  v24[1] = xmmword_1B26C6450;
  v25 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  *a2 = v24[0];
  *(a2 + 16) = 2;
  return result;
}

double _s15SwiftTLSLibrary23ServerSessionKeyManagerV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v7 = type metadata accessor for SessionKeyManager(0, *(a1 + 16), *(a1 + 24), a4);
  a3(v7, &v10);
  if (v4)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v15 = type metadata accessor for SessionKeyManager.State(0, v8, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  (*(v16 + 16))(v24 - v17, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      (*(v11 + 32))(v13, v18, v10);
      SessionKeyManager.State.MasterSecret.clientFinishedPayload.getter(v10, x8_0);
      (*(v11 + 8))(v13, v10);
      return result;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v16 + 8))(v18, v15);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = SessionKeyManager.State.logDescription.getter(v15);
  Logger.logInvalidStateTransition(stateName:event:)(v22, v23, 0xD000000000000015, 0x80000001B26CDE10);

  v24[0] = xmmword_1B26C6450;
  v24[1] = xmmword_1B26C6450;
  v25 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *v24;
  *a2 = v24[0];
  *(a2 + 16) = 2;
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v5 = v4;
  v35 = a2;
  v32 = a1;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v34 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v6, v7, a4);
  v31 = *(v34 - 8);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v14 = type metadata accessor for SessionKeyManager.State(0, v6, v7, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = *(v15 + 16);
  v38 = v5;
  v21(&v31 - v19, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v23 = v31;
      v24 = v20;
      v25 = v34;
      (*(v31 + 32))(v12, v24, v34);
      (*(v23 + 16))(v10, v12, v25);
      v26 = v32;
      outlined copy of Data._Representation(v32, v35);
      SessionKeyManager.State.AllSecrets.init(masterSecret:clientFinishedBytes:)(v10, v26, v35, v33, v6, v7, v18);
      (*(v23 + 8))(v12, v34);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 40))(v38, v18, v14);
      return 2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v15 + 8))(v20, v14);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v28 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v28, v29, 0xD000000000000013, 0x80000001B26CDDF0);

  v36 = xmmword_1B26C6450;
  v37 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

size_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingClientHelloyAA10ByteBufferVAA0nO0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtAA8TLSErrorOYKF(__int128 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a5;
  v21 = a4;
  v22 = a2;
  v8 = *(a6 + 16);
  v9 = *(a6 + 24);
  v25 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, v8, v9, a4);
  v10 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v20[-v11];
  v14 = type metadata accessor for SessionKeyManager.State(0, v8, v9, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-v16];
  (*(v15 + 16))(&v20[-v16], v6, v14);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v18 = static SessionKeyManager.State.EarlySecret.create(clientHello:sessionToResume:epsks:useRawEPSKs:currentTime:)(v12, a1, v22, v23, v21 & 1, v24, v8, v9);
    (*(v15 + 8))(v6, v14);
    (*(v10 + 32))(v6, v12, v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v26 = xmmword_1B26C6450;
    v18 = 2;
    v27 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v18;
}

uint64_t _s15SwiftTLSLibrary23ClientSessionKeyManagerV15postServerHello11ecdheSecret06serverI5Bytes9pskFailedy9CryptoKit09SymmetricE0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = type metadata accessor for SessionKeyManager(0, *(a6 + 16), *(a6 + 24), a4);
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(a1, a2, a3, a4, v7, v12);
  if (!v6)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v52 = a4;
  v7 = v6;
  v50 = a5;
  v51 = a3;
  v49 = a2;
  v47 = a1;
  v48 = type metadata accessor for SymmetricKey();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a6 + 16);
  v11 = *(a6 + 24);
  v55 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, v10, v11, v12);
  v53 = *(v55 - 8);
  v13 = MEMORY[0x1EEE9AC00](v55);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v19 = type metadata accessor for SessionKeyManager.State(0, v10, v11, v18);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  v26 = *(v20 + 16);
  v58 = v7;
  v26(&v41 - v24, v7, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    v43 = v23;
    v44 = v15;
    v42 = v10;
    v45 = v11;
    v28 = v53;
    v29 = v54;
    v30 = v55;
    if (!EnumCaseMultiPayload)
    {
      v31 = v17;
      (*(v53 + 32))(v17, v25, v55);
      v32 = v44;
      (*(v28 + 16))(v44, v31, v30);
      v33 = v29;
      (*(v46 + 16))(v29, v47, v48);
      v34 = v49;
      v35 = v51;
      outlined copy of Data._Representation(v49, v51);
      v36 = v43;
      SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)(v32, v33, v34, v35, v52, v50 & 1, v42, v45, v43);
      (*(v28 + 8))(v31, v55);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 40))(v58, v36, v19);
      return 2;
    }
  }

  else
  {
    (*(v20 + 8))(v25, v19);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, logger);
  v38 = SessionKeyManager.State.logDescription.getter(v19);
  Logger.logInvalidStateTransition(stateName:event:)(v38, v39, 0x7672655374736F70, 0xEF6F6C6C65487265);

  v56 = xmmword_1B26C6450;
  v57 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v5 = v4;
  v39 = a1;
  v40 = a2;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v7, v6, a4);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v15 = type metadata accessor for SessionKeyManager.State(0, v7, v6, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = *(v16 + 16);
  v46 = v5;
  v22(&v35 - v20, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v6;
    v37 = v19;
    v38 = v11;
    v25 = v42;
    v24 = v43;
    if (EnumCaseMultiPayload)
    {
      v30 = v13;
      (*(v42 + 32))(v13, v21, v43);
      v31 = v38;
      (*(v25 + 16))(v38, v13, v24);
      v32 = v39;
      v33 = v40;
      outlined copy of Data._Representation(v39, v40);
      v34 = v37;
      SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)(v31, v32, v33, v41, v7, v36, v37);
      (*(v25 + 8))(v30, v43);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 40))(v46, v34, v15);
      return 2;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v16 + 8))(v21, v15);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v27 = SessionKeyManager.State.logDescription.getter(v15);
  Logger.logInvalidStateTransition(stateName:event:)(v27, v28, 0xD000000000000012, 0x80000001B26CE130);

  v44 = xmmword_1B26C6450;
  v45 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

double _s15SwiftTLSLibrary23ClientSessionKeyManagerV08generateD9TicketPSK11ticketNonce9CryptoKit09SymmetricE0VAA10ByteBufferV_tAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v12 = type metadata accessor for SessionKeyManager(0, *(a4 + 16), *(a4 + 24), a4);
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKF(a1, a2, a3, v12, &v15, a6);
  if (v6)
  {
    v14 = v16;
    result = *&v15;
    *a5 = v15;
    *(a5 + 16) = v14;
  }

  return result;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t a6@<X8>)
{
  v33 = a5;
  v29 = a3;
  v7 = v6;
  *&v30 = a2;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, v10, v11, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v17 = type metadata accessor for SessionKeyManager.State(0, v10, v11, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v18 + 16))(&v29 - v19, v7, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    v22 = a1;
    v23 = v30;
    if (EnumCaseMultiPayload == 3)
    {
      (*(v13 + 32))(v15, v20, v12);
      SessionKeyManager.State.AllSecrets.generateSessionTicketPSK(ticketNonce:)(v22, v23, v29, v12, a6);
      (*(v13 + 8))(v15, v12);
      return result;
    }
  }

  else
  {
    (*(v18 + 8))(v20, v17);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = SessionKeyManager.State.logDescription.getter(v17);
  Logger.logInvalidStateTransition(stateName:event:)(v26, v27, 0xD000000000000018, 0x80000001B26CE110);

  v30 = xmmword_1B26C6450;
  v31 = xmmword_1B26C6450;
  v32 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  v28 = v33;
  result = *&v30;
  *v33 = v30;
  *(v28 + 16) = 2;
  return result;
}

uint64_t ClientSessionKeyManager.generateTLSExporterKey(label:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v8 = type metadata accessor for SessionKeyManager(0, *(a3 + 16), *(a3 + 24), a4);

  return SessionKeyManager.generateTLSExporterKey(_:)(a1, a2, v8, a5);
}

uint64_t SessionKeyManager.generateTLSExporterKey(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a4;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &AssociatedTypeWitness - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &AssociatedTypeWitness - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &AssociatedTypeWitness - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionKeyManager.exporterMasterSecret.getter(a3, v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v18 = 1;
    v19 = v26;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    static HashFunction.zeroHash.getter(v6, v5);
    v20 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    v21 = v26;
    static HKDF.tlsExporter<A>(secret:label:context:)(v16, v24, v25, v9, v6, v13, v5, v20, v26);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    (*(v14 + 8))(v16, v13);
    v18 = 0;
    v19 = v21;
  }

  return (*(v14 + 56))(v19, v18, 1, v13);
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for SessionKeyManager(0, *(a4 + 16), *(a4 + 24), a4);
  result = a5(a1, a2, a3, v10);
  if (!v5)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV42addPreClientFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v14 = type metadata accessor for SessionKeyManager.State(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v15 + 16))(&v24 - v16, v4, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v24 = a3;
      v19 = *(v10 + 32);
      v19(v12, v17, v9);
      SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(v25, a2, v24, v9);
      (*(v15 + 8))(v4, v14);
      v19(v4, v12, v9);
      swift_storeEnumTagMultiPayload();
      return 2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v15 + 8))(v17, v14);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v21, v22, 0xD000000000000012, 0x80000001B26CDE50);

  v26 = xmmword_1B26C6450;
  v27 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t ServerSessionKeyManager.clientEarlyTrafficSecret.getter(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SessionKeyManager(0, *(a1 + 16), *(a1 + 24), a4);

  return a2(v4);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postClientHelloyyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgAGSgSiSgSbtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int64_t, uint64_t), uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12)
{
  v33 = a8;
  v31 = a6;
  v32 = a7;
  v29 = a3;
  v30 = a5;
  v28 = a2;
  v14 = *(a12 + 16);
  v15 = *(a12 + 24);
  v16 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, v14, v15, a4);
  v27 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v20 = type metadata accessor for SessionKeyManager.State(0, v14, v15, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - v22;
  (*(v21 + 16))(&v26 - v22, v12, v20);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v24 = v34;
    _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ(a1, v28, v29, v30, a11 & 1, v31, v32, v33, v18, a9, a10 & 1, v14, v15, &v35);
    if (v24)
    {
      return v35;
    }

    else
    {
      (*(v21 + 8))(v12, v20);
      (*(v27 + 32))(v12, v18, v16);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    (*(v21 + 8))(v23, v20);
    v36 = xmmword_1B26C6450;
    v16 = 2;
    v37 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v16;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v48 = a2;
  v45 = a1;
  v7 = type metadata accessor for SymmetricKey();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v9, v10, v11);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v13;
  v15 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, v9, v10, v14);
  v54 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v22 = type metadata accessor for SessionKeyManager.State(0, v9, v10, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v37 - v24;
  (*(v23 + 16))(&v37 - v24, v5, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    (*(v23 + 8))(v25, v22);
LABEL_5:
    v52 = xmmword_1B26C6450;
    v35 = 2;
    LOBYTE(v53) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v35;
  }

  v40 = v18;
  v41 = v10;
  v39 = v9;
  v42 = v5;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v27 = v54;
  v28 = *(v54 + 32);
  v29 = v20;
  v38 = v20;
  v28(v20, v25, v15);
  v52 = xmmword_1B26C6130;
  v53 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  v30 = v40;
  (*(v27 + 16))(v40, v29, v15);
  v31 = v43;
  (*(v46 + 16))(v43, v48, v47);
  v32 = v52;
  v48 = v53;
  outlined copy of Data._Representation(v52, *(&v52 + 1));
  v33 = v44;
  SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)(v30, v31, v32, *(&v32 + 1), v48, v51 & 1, v39, v41, v44);
  (*(v27 + 8))(v38, v15);
  v34 = v42;
  (*(v23 + 8))(v42, v22);
  (*(v49 + 32))(v34, v33, v50);
  swift_storeEnumTagMultiPayload();
  return v52;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v42 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, v6, v7, a4);
  v39 = *(v42 - 8);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v14 = type metadata accessor for SessionKeyManager.State(0, v6, v7, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = *(v15 + 16);
  v38 = v5;
  v21(&v31 - v19, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v32 = v7;
    v33 = v18;
    v31 = v6;
    v34 = v10;
    v23 = v39;
    v24 = v42;
    if (EnumCaseMultiPayload)
    {
      v27 = v12;
      (*(v39 + 32))(v12, v20, v42);
      v40 = xmmword_1B26C6130;
      v41 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v35, v36, v37);
      v28 = v34;
      (*(v23 + 16))(v34, v12, v24);
      v29 = v40;
      v37 = v41;
      outlined copy of Data._Representation(v40, *(&v40 + 1));
      v30 = v33;
      SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)(v28, v29, *(&v29 + 1), v37, v31, v32, v33);
      (*(v23 + 8))(v27, v24);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 40))(v38, v30, v14);
      return v40;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v15 + 8))(v20, v14);
LABEL_6:
  v40 = xmmword_1B26C6450;
  v25 = 2;
  LOBYTE(v41) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v25;
}

size_t static SessionKeyManager.State.EarlySecret.create(clientHello:sessionToResume:epsks:useRawEPSKs:currentTime:)(uint64_t a1, __int128 *a2, char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a6;
  v97 = a5;
  v112 = a4;
  v123 = a3;
  v110 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SessionTicket(0);
  v125 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v92 - v17;
  v119 = type metadata accessor for HashedAuthenticationCode();
  v106 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v92 - v18;
  v94 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v96);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GeneralEPSK(0);
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v92 - v30;
  v114 = type metadata accessor for SymmetricKey();
  v113 = *(v114 - 8);
  v32 = MEMORY[0x1EEE9AC00](v114);
  v105 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v104 = &v92 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v116 = &v92 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v92 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v121 = &v92 - v41;
  v109 = a8;
  v108 = a7;
  swift_getAssociatedConformanceWitness();
  v120 = AssociatedTypeWitness;
  result = dispatch thunk of static Digest.byteCount.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v102 = a1;
  v115 = v12;
  v122 = v40;
  if (result)
  {
    v43 = result;
    v44 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v44 + 16) = v43;
    bzero((v44 + 32), v43);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  v45 = v121;
  v46 = *(v112 + 16);
  v47 = v125 + 48;
  v48 = *(v125 + 48);
  v49 = v111;
  v50 = v48(v123, 1, v111);
  v98 = v46;
  v125 = v47;
  v103 = v48;
  if (v46)
  {
    if (v50 == 1)
    {
      outlined init with copy of GeneralEPSK(v112 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v25, type metadata accessor for GeneralEPSK);
      outlined init with take of PSK(v25, v22, type metadata accessor for PSK);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v52 = (v113 + 16);
      if (EnumCaseMultiPayload == 1)
      {
        v53 = v95;
        outlined init with take of PSK(v22, v95, type metadata accessor for RawEPSK);
        (*v52)(v45, v53 + *(v94 + 20), v114);
        v54 = type metadata accessor for RawEPSK;
      }

      else
      {
        v53 = v93;
        outlined init with take of PSK(v22, v93, type metadata accessor for ImportedPSK);
        (*v52)(v45, v53 + *(v92 + 20), v114);
        v54 = type metadata accessor for ImportedPSK;
      }

      _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v53, v54);
      if (v97)
      {
        v55 = 0x646E696220747865;
      }

      else
      {
        v55 = 0x646E696220706D69;
      }

      v57 = v109;
      v56 = v111;
LABEL_18:
      *&v130 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E00]);
      v58 = v118;
      v59 = v108;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v60 = v117;
      static HashFunction.zeroHash.getter(v59, v57);
      v61 = v119;
      WitnessTable = swift_getWitnessTable();
      v63 = v122;
      v64 = v55;
      v65 = v59;
      v66 = WitnessTable;
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v58, v64, 0xEA00000000007265, v60, v61, v57, WitnessTable, v122);
      v67 = *(v124 + 8);
      v124 += 8;
      v111 = v67;
      (v67)(v60, v120);
      outlined init with copy of Any?(v123, v29, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      if (v103(v29, 1, v56) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v29, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);

        if (v98)
        {
          v68 = static SessionKeyManager.State.EarlySecret.useEPSK(epsk:binderSecret:clientHello:currentTime:)(v112 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v122, v110, v101, v65, v57);
          v70 = v69;
          v72 = v71;
          *&v128 = v68;
          *(&v128 + 1) = v69;
          v129 = v71;
        }

        else
        {
          v128 = xmmword_1B26C6130;
          v129 = 0;
          v77 = v110[5];
          v134 = v110[4];
          v135 = v77;
          v136 = *(v110 + 12);
          v78 = v110[1];
          v130 = *v110;
          v131 = v78;
          v79 = v110[3];
          v132 = v110[2];
          v133 = v79;
          specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
          v72 = 0;
          v70 = *(&v128 + 1);
          v68 = v128;
        }
      }

      else
      {

        v73 = v99;
        outlined init with take of PSK(v29, v99, type metadata accessor for SessionTicket);
        static SessionKeyManager.State.EarlySecret.tryToResume(session:binderSecret:clientHello:currentTime:)(v73, v63, v110, v101, v65, v57);
        v68 = v74;
        v70 = v75;
        v72 = v76;
        _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v73, type metadata accessor for SessionTicket);
        *&v128 = v68;
        *(&v128 + 1) = v70;
        v129 = v72;
      }

      result = dispatch thunk of HashFunction.init()();
      v80 = v70 >> 62;
      if ((v70 >> 62) > 1)
      {
        if (v80 == 2)
        {
          v81 = *(v68 + 24);
        }

        else
        {
          v81 = 0;
        }
      }

      else if (v80)
      {
        v81 = v68 >> 32;
      }

      else
      {
        v81 = BYTE6(v70);
      }

      if (v81 >= v72)
      {
        v126 = Data._Representation.subscript.getter();
        v127 = v82;
        lazy protocol witness table accessor for type Data and conformance Data();
        HashFunction.update<A>(data:)();
        outlined consume of Data._Representation(v126, v127);
        v83 = v117;
        dispatch thunk of HashFunction.finalize()();
        v84 = v118;
        v85 = v119;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v118, 0x6661727420652063uLL, 0xEB00000000636966, v83, v119, v57, v66, v116);
        v86 = v104;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, 0x616D207078652065uLL, 0xEC00000072657473, v83, v85, v57, v66, v104);
        v87 = v107;
        static HashFunction.zeroHash.getter(v65, v57);
        v88 = v105;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, 0x64657669726564uLL, 0xE700000000000000, v87, v85, v57, v66, v105);
        v89 = v120;
        v90 = v111;
        (v111)(v87, v120);
        v90(v83, v89);
        (*(v106 + 8))(v84, v85);
        (*(v113 + 8))(v121, v114);
        SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)(v115, v88, v122, v116, v86, v65, v57, v102);
        v91 = v128;
        outlined copy of Data._Representation(v128, *(&v128 + 1));
        outlined consume of Data._Representation(v91, *(&v91 + 1));
        return v91;
      }

      goto LABEL_33;
    }
  }

  else if (v50 == 1)
  {
    v55 = 0x646E696220736572;
    *&v130 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v56 = v49;
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
    SymmetricKey.init<A>(data:)();
    v57 = v109;
    goto LABEL_18;
  }

  outlined init with copy of Any?(v123, v31, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  result = (v48)(v31, 1, v49);
  if (result != 1)
  {
    v55 = 0x646E696220736572;
    (*(v113 + 16))(v45, &v31[*(v49 + 9)], v114);
    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v31, type metadata accessor for SessionTicket);
    v57 = v109;
    v56 = v49;
    goto LABEL_18;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(int64_t, uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, int64_t a12, uint64_t a13, uint64_t a14)
{
  v143 = a8;
  v154 = a7;
  v149 = a6;
  LODWORD(v159) = a5;
  v174 = a4;
  v164 = a3;
  v165 = a2;
  v171 = a1;
  v153 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v181 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v152 = v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v146 = v137 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v169 = v137 - v19;
  v20 = type metadata accessor for HashedAuthenticationCode();
  v160 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v147 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v137 - v23;
  v141 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v141);
  v142 = v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v139);
  v140 = v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v148);
  v158 = v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v137 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v137 - v32;
  v34 = type metadata accessor for SymmetricKey();
  v177 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v151 = v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v163 = v137 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v162 = v137 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v161 = v137 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v145 = v137 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v175 = v137 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v173 = v137 - v48;
  v157 = *(a12 - 8);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v150 = v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v178 = v137 - v51;
  v176 = a13;
  dispatch thunk of HashFunction.init()();
  v52 = v165 >> 62;
  if ((v165 >> 62) > 1)
  {
    v53 = 0;
    v54 = a12;
    if (v52 == 2)
    {
      v53 = *(v171 + 24);
    }
  }

  else
  {
    if (v52)
    {
      v53 = v171 >> 32;
    }

    else
    {
      v53 = BYTE6(v165);
    }

    v54 = a12;
  }

  if (v53 < v164)
  {
    __break(1u);
    goto LABEL_65;
  }

  v138 = v165 >> 62;
  *&v179 = Data._Representation.subscript.getter();
  *(&v179 + 1) = v55;
  v144 = lazy protocol witness table accessor for type Data and conformance Data();
  HashFunction.update<A>(data:)();
  outlined consume of Data._Representation(v179, *(&v179 + 1));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = dispatch thunk of static Digest.byteCount.getter();
  if (v57 < 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_27;
  }

  v168 = v20;
  v58 = MEMORY[0x1E69E7CC0];
  v166 = AssociatedTypeWitness;
  v167 = v24;
  v172 = v34;
  v170 = v54;
  if (v57)
  {
    v59 = v57;
    v58 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v58 + 16) = v59;
    v60 = v59;
    v34 = v172;
    bzero((v58 + 32), v60);
  }

  v61 = v158;
  outlined init with copy of Any?(v174, v30, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v62 = type metadata accessor for GeneralEPSK(0);
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  v158 = v62;
  v156 = v64;
  v155 = v63 + 48;
  v65 = (v64)(v30, 1);
  v137[1] = AssociatedConformanceWitness;
  if (v65 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v66 = v177;
    (*(v177 + 56))(v33, 1, 1, v34);
    *&v179 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
    SymmetricKey.init<A>(data:)();
    if ((*(v66 + 48))(v33, 1, v34) != 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v33, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }
  }

  else
  {
    outlined init with copy of GeneralEPSK(v30, v61, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v68 = (v177 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v69 = v61;
      v70 = v142;
      outlined init with take of PSK(v69, v142, type metadata accessor for RawEPSK);
      (*v68)(v33, v70 + *(v141 + 20), v34);
      v71 = type metadata accessor for RawEPSK;
    }

    else
    {
      v72 = v61;
      v70 = v140;
      outlined init with take of PSK(v72, v140, type metadata accessor for ImportedPSK);
      (*v68)(v33, v70 + *(v139 + 20), v34);
      v71 = type metadata accessor for ImportedPSK;
    }

    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v70, v71);
    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v30, type metadata accessor for GeneralEPSK);
    v73 = v177;
    (*(v177 + 56))(v33, 0, 1, v34);
    (*(v73 + 32))(v173, v33, v34);
  }

  *&v179 = v58;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E00]);
  v75 = v167;
  v76 = v170;
  v148 = v74;
  v77 = v176;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  if (v159)
  {
    v78 = 0x646E696220747865;
  }

  else
  {
    v78 = 0x646E696220706D69;
  }

  v54 = v169;
  static HashFunction.zeroHash.getter(v76, v77);
  v79 = v168;
  WitnessTable = swift_getWitnessTable();
  static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v75, v78, 0xEA00000000007265, v54, v79, v77, WitnessTable, v175);

  v81 = v181 + 8;
  v82 = *(v181 + 8);
  v83 = v166;
  v82(v54, v166);
  if (v156(v174, 1, v158) == 1)
  {
    goto LABEL_23;
  }

  v159 = WitnessTable;
  v174 = v82;
  if (v154 >> 60 == 15 || (a11 & 1) != 0)
  {
    v98 = 0x80000001B26CDE70;
    v99 = 0xD00000000000002CLL;
    *&v179 = 0xD00000000000002CLL;
    *(&v179 + 1) = 0x80000001B26CDE70;
    v100 = 1;
    v180 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v101 = *(v177 + 8);
    v102 = v172;
    v101(v175, v172);
    (*(v160 + 8))(v167, v168);
    v101(v173, v102);
    result = (*(v157 + 8))(v178, v170);
LABEL_63:
    *a14 = v99;
    *(a14 + 8) = v98;
    *(a14 + 16) = v100;
    return result;
  }

  v181 = v81;
  outlined copy of Data._Representation(v149, v154);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_66;
  }

LABEL_27:
  v90 = type metadata accessor for Logger();
  v91 = __swift_project_value_buffer(v90, logger);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  v94 = os_log_type_enabled(v92, v93);
  v95 = v176;
  if (v94)
  {
    v96 = swift_slowAlloc();
    *v96 = 134217984;
    *(v96 + 4) = a10;
    _os_log_impl(&dword_1B25F5000, v92, v93, "bindersArrayLength: %ld", v96, 0xCu);
    MEMORY[0x1B274ECF0](v96, -1, -1);
  }

  if (v138 > 1)
  {
    if (v138 == 2)
    {
      v97 = *(v171 + 24);
    }

    else
    {
      v97 = 0;
    }
  }

  else if (v138)
  {
    v97 = v171 >> 32;
  }

  else
  {
    v97 = BYTE6(v165);
  }

  result = v164;
  if (v97 < v164)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v164 = v91;
  v103 = Data._Representation.subscript.getter();
  specialized BidirectionalCollection.dropLast(_:)(a10 + 3, v103, v104, &v179);
  v171 = *(&v179 + 1);
  v165 = v179;
  v105 = v146;
  v106 = v170;
  static HashFunction.hash<A>(data:)();
  *&v179 = MEMORY[0x1E69E7CC0];
  v107 = v166;
  v108 = dispatch thunk of static Digest.byteCount.getter();
  v109 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
  v110 = v145;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v175, 0x64656873696E6966uLL, 0xE800000000000000, &v179, v108, v172, v148, v145, v95, v109);
  result = static HMAC.authenticationCode<A>(bytes:using:)(v105, v110, v106, v107, v95);
  v111 = v154;
  v112 = v154 >> 62;
  if ((v154 >> 62) > 1)
  {
    v113 = v168;
    v114 = v143;
    v115 = v174;
    v116 = v149;
    if (v112 == 2)
    {
      v117 = *(v149 + 24);
    }

    else
    {
      v117 = 0;
    }
  }

  else
  {
    v113 = v168;
    v114 = v143;
    v115 = v174;
    v116 = v149;
    if (v112)
    {
      v117 = v149 >> 32;
    }

    else
    {
      v117 = BYTE6(v154);
    }
  }

  if (v117 < v114)
  {
    goto LABEL_68;
  }

  *&v179 = Data._Representation.subscript.getter();
  *(&v179 + 1) = v118;
  swift_getWitnessTable();
  v119 = v147;
  v120 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v179, *(&v179 + 1));
  if (v120)
  {
    outlined consume of Data._Representation(v165, v171);
    outlined consume of ByteBuffer?(v116, v111);
    (*(v160 + 8))(v119, v113);
    (*(v177 + 8))(v145, v172);
    v83 = v166;
    v81 = v181;
    v115(v146, v166);
    v79 = v113;
    v75 = v167;
    v82 = v115;
    v77 = v176;
    WitnessTable = v159;
    v76 = v170;
LABEL_23:
    v181 = v81;
    dispatch thunk of HashFunction.finalize()();
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v75, 0x6661727420652063uLL, 0xEB00000000636966, v54, v79, v77, WitnessTable, v161);
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v75, 0x616D207078652065uLL, 0xEC00000072657473, v54, v79, v77, WitnessTable, v162);
    v84 = v152;
    static HashFunction.zeroHash.getter(v76, v77);
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v75, 0x64657669726564uLL, 0xE700000000000000, v84, v79, v77, WitnessTable, v163);
    v82(v84, v83);
    v82(v169, v83);
    (*(v160 + 8))(v75, v79);
    v85 = v177;
    v86 = v172;
    (*(v177 + 8))(v173, v172);
    v87 = v150;
    (*(v157 + 32))(v150, v178, v76);
    v88 = v151;
    (*(v85 + 32))(v151, v175, v86);
    return SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)(v87, v163, v88, v161, v162, v76, v77, v153);
  }

  result = HashedAuthenticationCode.byteCount.getter();
  if (v112 > 1)
  {
    v121 = v149;
    v122 = v175;
    if (v112 == 2)
    {
      v123 = *(v149 + 24);
    }

    else
    {
      v123 = 0;
    }
  }

  else
  {
    v121 = v149;
    v122 = v175;
    if (v112)
    {
      v123 = v149 >> 32;
    }

    else
    {
      v123 = BYTE6(v154);
    }
  }

  v124 = __OFSUB__(v123, v114);
  v125 = v123 - v114;
  if (!v124)
  {
    if (result != v125)
    {
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = v113;
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_1B25F5000, v126, v127, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v129, 2u);
        v130 = v129;
        v113 = v128;
        MEMORY[0x1B274ECF0](v130, -1, -1);
      }
    }

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_1B25F5000, v131, v132, "client binder value incorrect. aborting handshake.", v133, 2u);
      MEMORY[0x1B274ECF0](v133, -1, -1);
    }

    v179 = xmmword_1B26C9520;
    v100 = 2;
    v180 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v165, v171);
    outlined consume of ByteBuffer?(v121, v154);
    v134 = *(v160 + 8);
    v134(v119, v113);
    v135 = *(v177 + 8);
    v136 = v172;
    v135(v145, v172);
    v115(v146, v166);
    v135(v122, v136);
    v134(v167, v113);
    v135(v173, v136);
    result = (*(v157 + 8))(v178, v170);
    v98 = 0;
    v99 = 31;
    goto LABEL_63;
  }

LABEL_69:
  __break(1u);
  return result;
}

size_t SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  LODWORD(v77) = a6;
  v76 = a5;
  v87 = a2;
  v88 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - v16;
  v82 = type metadata accessor for HashedAuthenticationCode();
  v80 = *(v82 - 8);
  v18 = MEMORY[0x1EEE9AC00](v82);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v70 - v21;
  v22 = type metadata accessor for SymmetricKey();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v72 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v71 = &v70 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - v28;
  v74 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, a7, a8, v30);
  v31 = *(v74 + 36);
  v78 = v23;
  v79 = v22;
  v32 = *(v23 + 16);
  v86 = a1;
  v32(v29, a1 + v31, v22);
  v83 = v17;
  v84 = a3;
  if ((v77 & 1) == 0)
  {
    goto LABEL_10;
  }

  v77 = v20;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, logger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = a9;
      v37 = a8;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B25F5000, v34, v35, "authenticating with a psk failed (resumption or external psk)", v38, 2u);
      v39 = v38;
      a8 = v37;
      a9 = v36;
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    swift_getAssociatedConformanceWitness();
    result = dispatch thunk of static Digest.byteCount.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v70 = a9;
    v41 = a8;
    if (result)
    {
      v42 = result;
      v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v43 + 16) = v42;
      bzero((v43 + 32), v42);
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v89 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
    v44 = v71;
    SymmetricKey.init<A>(data:)();
    v89 = v43;
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E00]);
    v45 = v73;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    v17 = v83;
    static HashFunction.zeroHash.getter(a7, v41);
    v46 = v82;
    WitnessTable = swift_getWitnessTable();
    v48 = v72;
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v45, 0x64657669726564uLL, 0xE700000000000000, v17, v46, v41, WitnessTable, v72);
    (*(v81 + 8))(v17, AssociatedTypeWitness);
    (*(v80 + 8))(v45, v46);
    v50 = v78;
    v49 = v79;
    v51 = *(v78 + 8);
    v51(v44, v79);
    v51(v29, v49);
    a8 = v41;
    (*(v50 + 32))(v29, v48, v49);
    a3 = v84;
    a9 = v70;
    v20 = v77;
LABEL_10:
    static HKDF.extract(inputKeyMaterial:salt:)(v87, v29, a7, a8);
    (*(*(a7 - 8) + 16))(a9, v86, a7);
    v52 = v88 >> 62;
    v53 = v20;
    if ((v88 >> 62) > 1)
    {
      v54 = v76;
      if (v52 == 2)
      {
        v55 = *(a3 + 24);
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v54 = v76;
      if (v52)
      {
        v55 = a3 >> 32;
      }

      else
      {
        v55 = BYTE6(v88);
      }
    }

    if (v55 >= v54)
    {
      v89 = Data._Representation.subscript.getter();
      v90 = v56;
      lazy protocol witness table accessor for type Data and conformance Data();
      HashFunction.update<A>(data:)();
      outlined consume of Data._Representation(v89, v90);
      dispatch thunk of HashFunction.finalize()();
      v58 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, a7, a8, v57);
      v77 = v29;
      v59 = v58;
      v60 = *(v58 + 40);
      v61 = a7;
      v63 = v81;
      v62 = v82;
      v64 = swift_getWitnessTable();
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v53, 0x6172742073682063uLL, 0xEC00000063696666, v17, v62, a8, v64, a9 + v60);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v53, 0x6172742073682073uLL, 0xEC00000063696666, v17, v62, a8, v64, a9 + *(v59 + 44));
      v65 = v75;
      static HashFunction.zeroHash.getter(v61, a8);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v53, 0x64657669726564uLL, 0xE700000000000000, v65, v62, a8, v64, a9 + *(v59 + 36));
      outlined consume of Data._Representation(v84, v88);
      v66 = v79;
      v67 = *(v78 + 8);
      v67(v87, v79);
      (*(*(v74 - 8) + 8))(v86);
      v68 = *(v63 + 8);
      v69 = AssociatedTypeWitness;
      v68(v65, AssociatedTypeWitness);
      v68(v83, v69);
      (*(v80 + 8))(v53, v62);
      return (v67)(v77, v66);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t SessionKeyManager.State.logDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = 0x6B616873646E6168;
    }

    else
    {
      v6 = 0x636553796C726165;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = 0x655372657473616DLL;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      return 1701602409;
    }

    v6 = 0x65726365536C6C61;
  }

  (*(v2 + 8))(v4, a1);
  return v6;
}

void Logger.logInvalidStateTransition(stateName:event:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v12);
    _os_log_impl(&dword_1B25F5000, oslog, v8, "invalid state transition for session key manager: state %s event: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v10, -1, -1);
    MEMORY[0x1B274ECF0](v9, -1, -1);
  }
}

uint64_t SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a4;
  v51 = a3;
  v52 = a2;
  v50 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v41 - v12;
  v14 = type metadata accessor for HashedAuthenticationCode();
  MEMORY[0x1EEE9AC00](v14);
  v46 = type metadata accessor for SymmetricKey();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a6;
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = v11;
    v45 = AssociatedTypeWitness;
    v43 = v13;
    if (result)
    {
      v18 = result;
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v19 + 16) = v18;
      bzero((v19 + 32), v18);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v53 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
    v20 = v49;
    SymmetricKey.init<A>(data:)();
    v22 = type metadata accessor for SessionKeyManager.State.HandshakeSecret(0, a5, v16, v21);
    static HKDF.extract(inputKeyMaterial:salt:)(v20, a1 + v22[9], a5, v16);
    v24 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, a5, v16, v23);
    v25 = v24[9];
    swift_getWitnessTable();
    v26 = v50;
    SymmetricKey.init<A>(data:)();
    (*(*(a5 - 8) + 16))(v26, a1, a5);
    v27 = v51 >> 62;
    if ((v51 >> 62) > 1)
    {
      v28 = 0;
      result = v47;
      if (v27 == 2)
      {
        v28 = *(v52 + 24);
      }
    }

    else
    {
      result = v47;
      if (v27)
      {
        v28 = v52 >> 32;
      }

      else
      {
        v28 = BYTE6(v51);
      }
    }

    if (v28 >= result)
    {
      v53 = Data._Representation.subscript.getter();
      v54 = v29;
      lazy protocol witness table accessor for type Data and conformance Data();
      v30 = v16;
      v31 = v50;
      HashFunction.update<A>(data:)();
      outlined consume of Data._Representation(v53, v54);
      v42 = v25;
      v32 = v43;
      dispatch thunk of HashFunction.finalize()();
      v33 = *(v48 + 16);
      v34 = v31 + v24[10];
      v35 = a1 + v22[10];
      v41 = v22;
      v36 = v46;
      v33(v34, v35, v46);
      v33(v31 + v24[11], a1 + v22[11], v36);
      v47 = a1;
      v37 = v24[12];
      v38 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
      v39 = v31 + v37;
      v40 = v42;
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v31 + v42, 0x6172742070612063uLL, 0xEC00000063696666, v32, v36, v30, v38, v39);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v31 + v40, 0x6172742070612073uLL, 0xEC00000063696666, v32, v36, v30, v38, v31 + v24[13]);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v31 + v40, 0x7473616D20707865uLL, 0xEA00000000007265, v32, v36, v30, v38, v31 + v24[14]);
      outlined consume of Data._Representation(v52, v51);
      (*(*(v41 - 1) + 8))(v47);
      (*(v44 + 8))(v32, v45);
      return (*(v48 + 8))(v49, v36);
    }
  }

  __break(1u);
  return result;
}

uint64_t SessionKeyManager.State.AllSecrets.init(masterSecret:clientFinishedBytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a3;
  v55 = a4;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v46 - v13;
  v57 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SessionKeyManager.State.MasterSecret(0, a5, a6, v16);
  v18 = v17[12];
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(*(v19 - 8) + 16);
  v20(a7, a1 + v18, v19);
  v21 = v17[13];
  v48 = a6;
  v23 = type metadata accessor for SessionKeyManager.State.AllSecrets(0, a5, a6, v22);
  v24 = a1 + v21;
  v25 = v23;
  v20(a7 + *(v23 + 36), v24, v19);
  v46 = v17;
  v47 = v19;
  v26 = v17[14];
  v27 = *(v25 + 40);
  v49 = a7;
  v28 = v19;
  v29 = a5;
  v20(a7 + v27, a1 + v26, v28);
  v30 = v54;
  v31 = *(v57 + 16);
  v32 = v15;
  v50 = a1;
  v31(v15, a1, a5);
  v33 = v30;
  v34 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v35 = 0;
    result = v55;
    v37 = v56;
    if (v34 == 2)
    {
      v35 = *(v56 + 24);
    }
  }

  else if (v34)
  {
    result = v55;
    v37 = v56;
    v35 = v56 >> 32;
  }

  else
  {
    v35 = BYTE6(v30);
    result = v55;
    v37 = v56;
  }

  if (v35 < result)
  {
    __break(1u);
  }

  else
  {
    v58 = Data._Representation.subscript.getter();
    v59 = v38;
    lazy protocol witness table accessor for type Data and conformance Data();
    v39 = v48;
    HashFunction.update<A>(data:)();
    outlined consume of Data._Representation(v58, v59);
    v40 = v51;
    dispatch thunk of HashFunction.finalize()();
    v41 = v46;
    v42 = v46[9];
    v43 = *(v25 + 44);
    v44 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    v45 = v50;
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v50 + v42, 0x7473616D20736572uLL, 0xEA00000000007265, v40, v47, v39, v44, v49 + v43);
    outlined consume of Data._Representation(v37, v33);
    (*(*(v41 - 1) + 8))(v45, v41);
    (*(v52 + 8))(v40, v53);
    return (*(v57 + 8))(v32, v29);
  }

  return result;
}

uint64_t SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v8[-v3];
  v11 = xmmword_1B26C6130;
  v12 = 0;
  specialized Data.append<A>(contentsOf:)(64, 32);
  specialized Data.append<A>(contentsOf:)(0xD000000000000021, 0x80000001B26CD800);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v9 = 0;
  v10[3] = MEMORY[0x1E69E6290];
  v10[4] = MEMORY[0x1E6969DF8];
  v10[0] = &v9;
  v10[1] = v10;
  __swift_project_boxed_opaque_existential_0(v10, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v10);
  v5 = dispatch thunk of HashFunction.finalize()();
  MEMORY[0x1EEE9AC00](v5);
  *&v8[-16] = &v11;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v2 + 8))(v4, AssociatedTypeWitness);
  v6 = v11;
  outlined copy of Data._Representation(v11, *(&v11 + 1));
  outlined consume of Data._Representation(v6, *(&v6 + 1));
  return v6;
}

uint64_t SessionKeyManager.State.HandshakeSecret.serverFinishedPayload.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 44);
  v25 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Digest.byteCount.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v14 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
  v17 = v14;
  v15 = v20;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v22 + v19, 0x64656873696E6966uLL, 0xE800000000000000, &v25, v12, v20, v13, v11, v3, v17);
  dispatch thunk of HashFunction.finalize()();
  static HMAC.authenticationCode<A>(bytes:using:)(v7, v11, v4, AssociatedTypeWitness, v3);
  (*(v23 + 8))(v7, AssociatedTypeWitness);
  return (*(v21 + 8))(v11, v15);
}

void SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
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

  if (v5 < a3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v8 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    HashFunction.update<A>(data:)();
    outlined consume of Data._Representation(v7, v8);
  }
}

uint64_t SessionKeyManager.State.MasterSecret.clientFinishedPayload.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 40);
  v25 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Digest.byteCount.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v14 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
  v17 = v14;
  v15 = v20;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v22 + v19, 0x64656873696E6966uLL, 0xE800000000000000, &v25, v12, v20, v13, v11, v3, v17);
  dispatch thunk of HashFunction.finalize()();
  static HMAC.authenticationCode<A>(bytes:using:)(v7, v11, v4, AssociatedTypeWitness, v3);
  (*(v23 + 8))(v7, AssociatedTypeWitness);
  return (*(v21 + 8))(v11, v15);
}

void SessionKeyManager.State.AllSecrets.generateSessionTicketPSK(ticketNonce:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v6 = v5;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }

    else
    {
      v10 = 0;
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
    v11 = *(a4 + 44);
    v17 = Data._Representation.subscript.getter();
    v18 = v12;
    v13 = *(a4 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v14 = dispatch thunk of static Digest.byteCount.getter();
    v15 = type metadata accessor for SymmetricKey();
    v16 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    static HKDF.expandLabel<A, B>(secret:label:context:length:)(v6 + v11, 0x6974706D75736572uLL, 0xEA00000000006E6FLL, &v17, v14, v15, MEMORY[0x1E6969080], a5, v13, v16);
    outlined consume of Data._Representation(v17, v18);
  }
}

uint64_t SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v16 = type metadata accessor for SessionKeyManager.State.EarlySecret(0, a6, a7, v15);
  v17 = v16[9];
  v18 = type metadata accessor for SymmetricKey();
  v21 = *(*(v18 - 8) + 32);
  (v21)((v18 - 8), a8 + v17, a2, v18);
  v21(a8 + v16[10], a3, v18);
  v21(a8 + v16[11], a4, v18);
  v19 = a8 + v16[12];

  return (v21)(v19, a5, v18);
}

void static SessionKeyManager.State.EarlySecret.tryToResume(session:binderSecret:clientHello:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Date.timeIntervalSince(_:)();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 4294967300.0)
  {
    v13 = v12;
    v14 = type metadata accessor for SessionTicket(0);
    v15 = *(a1 + *(v14 + 24));
    v16 = (a1 + *(v14 + 32));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    outlined copy of Data._Representation(*v16, v18);
    specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(a2, a3, v17, v18, v19, v15 + v13, a5, a6);
    outlined consume of Data._Representation(v17, v18);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static SessionKeyManager.State.EarlySecret.useEPSK(epsk:binderSecret:clientHello:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = GeneralEPSK.identity.getter();
  v12 = v11;
  v14 = specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(a2, a3, v10, v11, v13, 0, a5, a6);
  outlined consume of Data._Representation(v10, v12);
  return v14;
}

uint64_t specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(int64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v103 = a2;
  v92 = a1;
  v14 = 0;
  v94 = type metadata accessor for HashedAuthenticationCode();
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v78 - v15;
  v98 = type metadata accessor for SymmetricKey();
  v89 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96 = &v78 - v18;
  v90 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = AssociatedTypeWitness;
  v95 = AssociatedConformanceWitness;
  v20 = dispatch thunk of static Digest.byteCount.getter();
  *&v110[0] = specialized Data.init(count:)(v20);
  *(&v110[0] + 1) = v21;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v110, 0);
  v100 = *(&v110[0] + 1);
  v22 = *&v110[0];
  v23 = *(&v110[0] + 1) >> 62;
  if ((*(&v110[0] + 1) >> 62) > 1)
  {
    if (v23 == 2)
    {
      v14 = *(*&v110[0] + 16);
    }
  }

  else if (v23)
  {
    v14 = SLODWORD(v110[0]);
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
  v24 = swift_allocObject();
  v102 = xmmword_1B26C6030;
  *(v24 + 16) = xmmword_1B26C6030;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v86 = a5;
  *(v24 + 48) = a5;
  *(v24 + 56) = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = v102;
  v26 = v100;
  *(v25 + 32) = v22;
  *(v25 + 40) = v26;
  *(v25 + 48) = v14;
  v109 = 0;
  v27 = v22;
  v28 = *(v103 + 96);
  outlined copy of Data._Representation(a3, a4);
  v91 = v27;
  outlined copy of Data._Representation(v27, v26);

  v99 = v25;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = a6;
  v85 = a4;
  v82 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
  }

  *(v28 + 2) = v31 + 1;
  v32 = &v28[88 * v31];
  v33 = v99;
  *(v32 + 4) = v24;
  *(v32 + 5) = v33;
  v32[48] = v109;
  v32[112] = -96;
  v34 = v103;
  *(v103 + 96) = v28;
  v107 = xmmword_1B26C6130;
  v108 = 0;
  v35 = v34[5];
  v110[4] = v34[4];
  v110[5] = v35;
  v111 = v28;
  v36 = v34[1];
  v110[0] = *v34;
  v110[1] = v36;
  v37 = v34[3];
  v110[2] = v34[2];
  v110[3] = v37;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, logger);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = dispatch thunk of static Digest.byteCount.getter() + 3;
    _os_log_impl(&dword_1B25F5000, v39, v40, "bindersarray length should be %ld", v41, 0xCu);
    MEMORY[0x1B274ECF0](v41, -1, -1);
  }

  v42 = *(&v107 + 1) >> 62;
  if ((*(&v107 + 1) >> 62) > 1)
  {
    if (v42 != 2)
    {
      goto LABEL_22;
    }

    v43 = *(v107 + 24);
  }

  else
  {
    if (!v42)
    {
      goto LABEL_22;
    }

    v43 = v107 >> 32;
  }

  if (v43 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v81 = v24;
  v44 = Data._Representation.subscript.getter();
  v46 = v45;
  v47 = v101;
  v48 = dispatch thunk of static Digest.byteCount.getter();
  specialized BidirectionalCollection.dropLast(_:)(v48 + 3, v44, v46, v105);
  v79 = *(&v105[0] + 1);
  v80 = *&v105[0];
  lazy protocol witness table accessor for type Data and conformance Data();
  v49 = v96;
  v50 = v90;
  static HashFunction.hash<A>(data:)();
  *&v105[0] = MEMORY[0x1E69E7CC0];
  v51 = dispatch thunk of static Digest.byteCount.getter();
  LOBYTE(v44) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v52 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E6969E08]);
  v53 = v97;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v92, 0x64656873696E6966uLL, 0xE800000000000000, v105, v51, v98, v44, v97, v50, v52);
  v54 = v93;
  static HMAC.authenticationCode<A>(bytes:using:)(v49, v53, a7, v47, v50);
  v55 = v94;
  WitnessTable = swift_getWitnessTable();
  v57 = ByteBuffer.init<A>(bytes:)(v54, v55, WitnessTable);
  v59 = v58;
  v61 = v60;
  outlined consume of Data._Representation(v91, v100);
  v62 = *(&v107 + 1) >> 62;
  if ((*(&v107 + 1) >> 62) > 1)
  {
    v63 = 0;
    if (v62 == 2)
    {
      v63 = *(v107 + 24);
    }
  }

  else if (v62)
  {
    v63 = v107 >> 32;
  }

  else
  {
    v63 = BYTE14(v107);
  }

  v64 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    if (v64 == 2)
    {
      v65 = *(v57 + 24);
    }

    else
    {
      v65 = 0;
    }
  }

  else if (v64)
  {
    v65 = v57 >> 32;
  }

  else
  {
    v65 = BYTE6(v59);
  }

  v66 = __OFSUB__(v65, v61);
  v67 = v65 - v61;
  if (v66)
  {
    __break(1u);
  }

  else
  {
    v52 = v111;
    ByteBuffer.setImmutableBuffer(_:at:)(v57, v59, v61, v63 - v67);
    v53 = *(v52 + 16);
    v55 = swift_allocObject();
    *(v55 + 16) = v102;
    v68 = v82;
    v70 = v85;
    v69 = v86;
    *(v55 + 32) = v82;
    *(v55 + 40) = v70;
    *(v55 + 48) = v69;
    *(v55 + 56) = v87;
    v54 = swift_allocObject();
    *(v54 + 16) = v102;
    *(v54 + 32) = v57;
    *(v54 + 40) = v59;
    *(v54 + 48) = v61;
    outlined copy of Data._Representation(v68, v70);
    outlined copy of Data._Representation(v57, v59);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_37;
    }
  }

  v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
LABEL_37:
  outlined consume of Data._Representation(v80, v79);

  v104 = 0;

  (*(v89 + 8))(v97, v98);
  result = (*(v88 + 8))(v96, v101);
  if (v53)
  {
    if (v53 <= *(v52 + 16))
    {
      v72 = v52 + 88 * v53;
      v73 = *(v72 - 40);
      v105[0] = *(v72 - 56);
      v105[1] = v73;
      v74 = *(v72 - 24);
      v75 = *(v72 - 8);
      v76 = *(v72 + 8);
      v106 = *(v72 + 24);
      v105[3] = v75;
      v105[4] = v76;
      v105[2] = v74;
      *(v72 - 56) = v55;
      *(v72 - 48) = v54;
      *(v72 - 40) = v104;
      *(v72 + 24) = -96;
      outlined destroy of Extension(v105);
      *(v103 + 96) = v52;
      v77 = v107;
      outlined copy of Data._Representation(v107, *(&v107 + 1));
      outlined consume of Data._Representation(v77, *(&v77 + 1));
      outlined consume of Data._Representation(v57, v59);
      return v77;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v22 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = xmmword_1B26C6130;
  v26 = 0;
  result = dispatch thunk of HashFunction.init()();
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v18 = 0;
    if (v17 == 2)
    {
      v18 = *(a1 + 24);
    }
  }

  else if (v17)
  {
    v18 = a1 >> 32;
  }

  else
  {
    v18 = BYTE6(a2);
  }

  if (v18 < a3)
  {
    __break(1u);
  }

  else
  {
    v23 = Data._Representation.subscript.getter();
    v24 = v19;
    lazy protocol witness table accessor for type Data and conformance Data();
    HashFunction.update<A>(data:)();
    outlined consume of Data._Representation(v23, v24);
    v20 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v20);
    v22[-2] = &v25;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v22[0] + 8))(v12, AssociatedTypeWitness);
    (*(v13 + 8))(v15, a4);
    v21 = v25;
    outlined copy of Data._Representation(v25, *(&v25 + 1));
    outlined consume of Data._Representation(v21, *(&v21 + 1));
    return v21;
  }

  return result;
}

uint64_t specialized SessionKeyManager.generateHMACForAuthenticator(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for HashedAuthenticationCode();
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v17 = 0;
    if (v16 == 2)
    {
      v17 = *(a1 + 24);
    }
  }

  else if (v16)
  {
    v17 = a1 >> 32;
  }

  else
  {
    v17 = BYTE6(a2);
  }

  if (v17 < a3)
  {
    __break(1u);
  }

  else
  {
    v20 = Data._Representation.subscript.getter();
    v21 = v18;
    static HMAC.authenticationCode<A>(bytes:using:)(&v20, a4, a5, MEMORY[0x1E6969080], a6);
    outlined consume of Data._Representation(v20, v21);
    WitnessTable = swift_getWitnessTable();
    return ByteBuffer.init<A>(bytes:)(v15, v12, WitnessTable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.EarlySecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.EarlySecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.MasterSecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v12 = *(*(v8 - 8) + 64);
  v15 = ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + (v14 & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11) + v12;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v9 + 48);

          return v22((a1 + v14) & ~v11);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.MasterSecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.HandshakeSecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.HandshakeSecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for ClientSessionKeyManager(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(type metadata accessor for SymmetricKey() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v8 + v7;
  v10 = ((v8 + v7 + ((v8 + v7 + ((v5 + v7) & ~v7)) & ~v7)) & ~v7) + v8;
  v11 = ((v10 + v7) & ~v7) + v8;
  if (v10 <= v11)
  {
    v10 = ((v10 + v7) & ~v7) + v8;
  }

  v12 = ((v9 + ((v11 + v7) & ~v7)) & ~v7) + v8;
  if (v12 > v10)
  {
    v10 = v12;
  }

  v13 = ((v9 + ((v9 + (v9 & ~v7)) & ~v7)) & ~v7) + v8;
  if (v13 > v10)
  {
    v10 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_29;
  }

  v14 = v10 + 1;
  v15 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 251) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      v20 = *(a1 + v10);
      if (v20 >= 5)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 252;
}

void storeEnumTagSinglePayload for ClientSessionKeyManager(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(type metadata accessor for SymmetricKey() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = v10 + v9;
  v12 = ((v10 + v9 + ((v10 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v10;
  v13 = ((v12 + v9) & ~v9) + v10;
  if (v12 <= v13)
  {
    v12 = ((v12 + v9) & ~v9) + v10;
  }

  v14 = ((v11 + ((v13 + v9) & ~v9)) & ~v9) + v10;
  if (v14 > v12)
  {
    v12 = v14;
  }

  v15 = ((v11 + ((v11 + (v11 & ~v9)) & ~v9)) & ~v9) + v10;
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = v15 + 1;
  if (a3 < 0xFC)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 251) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFB)
  {
    v18 = a2 - 252;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_43:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v15] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_28;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of PSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GeneralEPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ByteBuffer.writeQUICTransportParameters(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    if (v3)
    {
      v4 = a1 >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4 < a3 || v4 < v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = Data._Representation.subscript.getter();
  v8 = v7;
  Data.append(_:)();
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
LABEL_15:
      outlined consume of Data._Representation(v6, v8);
      return;
    }

LABEL_20:
    outlined consume of Data._Representation(v6, v9);
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v10 != 2)
  {
    goto LABEL_15;
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  outlined consume of Data._Representation(v6, v9);
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_20;
  }
}

unint64_t lazy protocol witness table accessor for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters()
{
  result = lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters;
  if (!lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters);
  }

  return result;
}

uint64_t static Extension.EarlyData.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a2 & 0x100000000) == 0 && a1 == a2)
  {
    return 1;
  }

  return 0;
}

uint64_t ByteBuffer.writeEarlyDataExtension(_:)(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  v2 = bswap32(a1);
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return 4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV22readEarlyDataExtension11messageTypeAA0H0O0fG0VAA09HandshakeJ0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 1 || a1 == 8)
  {
    LODWORD(v2) = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  if (a1 == 4)
  {
    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
    if ((v2 & 0x100000000) == 0)
    {
      v3 = 0;
      return v2 | (v3 << 32);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    v5 = a1 | 0x330000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v5;
  }
}

uint64_t Extension.EarlyData.maxEarlyDataSize.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void Extension.EarlyData.hash(into:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = a2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int Extension.EarlyData.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.EarlyData()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.EarlyData()
{
  if (*(v0 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.EarlyData(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.EarlyData(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Extension.EarlyData and conformance Extension.EarlyData()
{
  result = lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData;
  if (!lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TLSInnerPlaintext.length.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16) + 1;
  result = v3 + a3;
  if (__OFADD__(v3, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary13TLSCiphertextV8writeKey5nonce14innerPlaintext14additionalDataAC9CryptoKit09SymmetricE0V_AA5NonceVAA08TLSInnerH0V10Foundation0J0VtAA8TLSErrorOYKcfC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, uint64_t a7, unint64_t a8)
{
  v12 = _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(a1, a2, a3, a7, a8, a4, a5, a6);
  if (v8)
  {
    v13 = type metadata accessor for SymmetricKey();
    (*(*(v13 - 8) + 8))(a1, v13);
    outlined consume of Data._Representation(a7, a8);
  }

  else
  {

    if (v12)
    {
      v14 = type metadata accessor for SymmetricKey();
      (*(*(v14 - 8) + 8))(a1, v14);
      outlined consume of Data._Representation(a7, a8);
    }

    else
    {
      v12 = 0xD000000000000018;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(a7, a8);
      v16 = type metadata accessor for SymmetricKey();
      (*(*(v16 - 8) + 8))(a1, v16);
    }
  }

  return v12;
}

unint64_t _s15SwiftTLSLibrary13TLSCiphertextV9deprotect12peerWriteKey5nonce19aeadExpansionLengthAA17DeprotectedRecordV9CryptoKit09SymmetricG0V_AA5NonceVSitAA8TLSErrorOYKF(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v80 = a4;
  v81 = a5;
  v77 = a1;
  v89 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for AES.GCM.SealedBox();
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AES.GCM.Nonce();
  v79 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - v15;
  Nonce.array.getter(a2, a3);
  *&v86 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  AES.GCM.Nonce.init<A>(data:)();
  if (v5)
  {

    v86 = xmmword_1B26C6420;
    LOBYTE(v87) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 32;
  }

  v19 = v14;
  v20 = v79;
  v75 = v10;
  v76 = v16;
  v73 = v8;
  v21 = v81;
  v22 = *(v81 + 16);
  v23 = v22 - v80;
  if (v22 <= v80)
  {
    v86 = xmmword_1B26C88D0;
    LOBYTE(v87) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v20 + 8))(v76, v11);
    return 34;
  }

  if (__OFSUB__(v22, v80))
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v23 & 0x8000000000000000) != 0)
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
    goto LABEL_95;
  }

  v74 = v11;
  if (v22 < v23)
  {
    goto LABEL_89;
  }

  (*(v79 + 16))(v19, v76, v74);
  *&v86 = v21;
  *(&v86 + 1) = v21 + 32;
  v87 = 0;
  v88 = (2 * v23) | 1;
  v82 = v21;
  v83 = v21 + 32;
  v84 = v23;
  v85 = (2 * v22) | 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR, MEMORY[0x1E696A098]);
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  v10 = v20;
  v24 = additionalData(ciphertextLength:)(v22);
  v26 = v25;
  *&v86 = v24;
  *(&v86 + 1) = v25;
  lazy protocol witness table accessor for type Data and conformance Data();
  result = static AES.GCM.open<A>(_:using:authenticating:)();
  v20 = result;
  v22 = v27;
  v23 = v27 >> 62;
  v28 = v73;
  v29 = v78;
  if ((v27 >> 62) <= 1)
  {
    if (!v23)
    {
      v59 = v24;
      v60 = v26;
      v30 = BYTE6(v27);
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (v23 != 2)
  {
    v59 = v24;
    v60 = v26;
    v30 = 0;
    goto LABEL_24;
  }

  v32 = *(result + 16);
  v31 = *(result + 24);
  v33 = __OFSUB__(v31, v32);
  v34 = v31 - v32;
  if (v33)
  {
    __break(1u);
LABEL_16:
    LODWORD(v34) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v34 = v34;
  }

  if (v34 > 16385)
  {
    v86 = xmmword_1B26C88E0;
    LOBYTE(v87) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    swift_bridgeObjectRelease_n();
    outlined consume of Data._Representation(v24, v26);
    outlined consume of Data._Representation(v20, v22);
    (*(v29 + 8))(v75, v28);
    v10[1](v76, v74);
    return 28;
  }

  v60 = v26;
  v59 = v24;
  if (v23 == 2)
  {
    v30 = *(result + 24);
  }

  else
  {
    v30 = result >> 32;
  }

LABEL_24:
  v8 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v58 = 0;
  if (v8 < 1)
  {
    goto LABEL_48;
  }

  if (v23 != 3)
  {
    v80 = result;
    v77 = BYTE6(v27);
    v71 = result >> 8;
    v72 = result >> 32;
    v70 = result >> 16;
    v69 = result >> 24;
    v68 = HIDWORD(result);
    v67 = result >> 40;
    v66 = HIWORD(result);
    v65 = HIBYTE(result);
    v64 = v27 >> 8;
    v63 = v27 >> 16;
    v62 = v27 >> 24;
    v61 = HIDWORD(v27);
    v35 = v27 >> 40;
    while (v23 != 1)
    {
      if (v23)
      {
        if (v8 < *(v20 + 16))
        {
          goto LABEL_90;
        }

        if (v8 >= *(v20 + 24))
        {
          goto LABEL_93;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_104;
        }

        v37 = result;
        v40 = __DataStorage._offset.getter();
        v39 = v8 - v40;
        if (!__OFSUB__(v8, v40))
        {
          goto LABEL_28;
        }

        __break(1u);
LABEL_47:
        v8 = 0;
LABEL_48:
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v41 = *(v20 + 24);
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          v41 = BYTE6(v22);
          if (v23)
          {
            v41 = v20 >> 32;
          }
        }

        v33 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (!v33)
        {
          if (v8 == v42)
          {
            goto LABEL_79;
          }

          if (one-time initialization token for logger != -1)
          {
            goto LABEL_98;
          }

          while (1)
          {
            v43 = type metadata accessor for Logger();
            __swift_project_value_buffer(v43, logger);
            outlined copy of Data._Representation(v20, v22);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = v46;
              *v46 = 134218496;
              *(v46 + 4) = v8;
              *(v46 + 12) = 2048;
              if (v23 > 1)
              {
                if (v23 == 2)
                {
                  v48 = *(v20 + 24);
                }

                else
                {
                  v48 = 0;
                }
              }

              else if (v23)
              {
                v48 = v20 >> 32;
              }

              else
              {
                v48 = BYTE6(v22);
              }

              v33 = __OFSUB__(v48, 1);
              v49 = v48 - 1;
              if (v33)
              {
                goto LABEL_100;
              }

              *(v46 + 14) = v49;
              *(v46 + 22) = 2048;
              if (v23 > 1)
              {
                if (v23 == 2)
                {
                  v50 = *(v20 + 24);
                }

                else
                {
                  v50 = 0;
                }
              }

              else if (v23)
              {
                v50 = v20 >> 32;
              }

              else
              {
                v50 = BYTE6(v22);
              }

              v33 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v33)
              {
                goto LABEL_101;
              }

              v33 = __OFSUB__(v51, v8);
              v52 = v51 - v8;
              if (v33)
              {
                goto LABEL_102;
              }

              *(v46 + 24) = v52;
              outlined consume of Data._Representation(v20, v22);
              _os_log_impl(&dword_1B25F5000, v44, v45, "contentTypeIndex is: %ld. Last index is: %ld. Padding length = %ld", v47, 0x20u);
              MEMORY[0x1B274ECF0](v47, -1, -1);
            }

            else
            {
              outlined consume of Data._Representation(v20, v22);
            }

LABEL_79:
            v53 = 0;
            if (v23 > 1)
            {
              if (v23 != 2)
              {
                goto LABEL_85;
              }

              v53 = *(v20 + 16);
            }

            else
            {
              if (!v23)
              {
                goto LABEL_85;
              }

              v53 = v20;
            }

            outlined copy of Data._Representation(v20, v22);
LABEL_85:
            if (v8 >= v53)
            {
              v54 = Data._Representation.subscript.getter();
              v56 = v55;
              outlined consume of Data._Representation(v20, v22);
              outlined copy of Data._Representation(v54, v56);
              v57 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v54, v56);
              Data._Representation.subscript.getter();
              swift_bridgeObjectRelease_n();
              outlined consume of Data._Representation(v59, v60);
              outlined consume of Data._Representation(v20, v22);
              outlined consume of Data._Representation(v54, v56);
              (*(v78 + 8))(v75, v73);
              v10[1](v76, v74);
              return v57;
            }

LABEL_97:
            __break(1u);
LABEL_98:
            swift_once();
          }
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v8 >= v77)
      {
        goto LABEL_91;
      }

      LOBYTE(v86) = v20;
      BYTE1(v86) = v71;
      BYTE2(v86) = v70;
      BYTE3(v86) = v69;
      BYTE4(v86) = v68;
      BYTE5(v86) = v67;
      BYTE6(v86) = v66;
      BYTE7(v86) = v65;
      BYTE8(v86) = v22;
      BYTE9(v86) = v64;
      BYTE10(v86) = v63;
      BYTE11(v86) = v62;
      BYTE12(v86) = v61;
      BYTE13(v86) = v35;
      if (*(&v86 + v8))
      {
        goto LABEL_48;
      }

LABEL_29:
      if (v8-- <= 1)
      {
        goto LABEL_47;
      }
    }

    if (v8 < v80 || v8 >= v72)
    {
      goto LABEL_92;
    }

    result = __DataStorage._bytes.getter();
    if (result)
    {
      v37 = result;
      v38 = __DataStorage._offset.getter();
      v39 = v8 - v38;
      if (__OFSUB__(v8, v38))
      {
        goto LABEL_94;
      }

LABEL_28:
      if (*(v37 + v39))
      {
        goto LABEL_48;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_104:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
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

uint64_t dataToString(data:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in dataToString(data:), 0, v1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(*(*(v2 + 8) + 8) + 8), MEMORY[0x1E69E7410], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v4 = BidirectionalCollection<>.joined(separator:)();

  return v4;
}

uint64_t closure #1 in dataToString(data:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1B26C6030;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = String.init(format:_:)();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, size_t a8)
{
  v53 = a8;
  v48 = a7;
  v49 = a6;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  v51 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for AES.GCM.SealedBox();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AES.GCM.Nonce();
  v52 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Nonce.array.getter(a2, a3);
  *&v54 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v8)
  {

    v54 = xmmword_1B26C6420;
    v55 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 32;
  }

  else
  {
    v45 = v16;
    v46 = v17;
    v22 = v53;
    if ((v53 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v44 = v14;
      if (v53)
      {
        v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v23 + 16) = v22;
        bzero((v23 + 32), v22);
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v24 = v49;
      v25 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B26C6030;
      *(inited + 32) = v25;
      v60 = v24;

      specialized Array.append<A>(contentsOf:)(inited);
      specialized Array.append<A>(contentsOf:)(v23);
      v58 = v60;
      v27 = v52;
      v28 = v19;
      v29 = v13;
      v30 = v46;
      (*(v52 + 16))(v13, v28, v46);
      (*(v27 + 56))(v13, 0, 1, v30);
      v54 = v50;
      lazy protocol witness table accessor for type Data and conformance Data();
      v31 = v45;
      v32 = MEMORY[0x1E6969080];
      static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
      v53 = 0;
      outlined destroy of AES.GCM.Nonce?(v29);

      v33 = AES.GCM.SealedBox.ciphertext.getter();
      v35 = v34;
      v36 = AES.GCM.SealedBox.tag.getter();
      v38 = v37;
      v58 = v33;
      v59 = v35;
      v56 = v32;
      v57 = MEMORY[0x1E6969078];
      *&v54 = v36;
      *(&v54 + 1) = v37;
      v39 = __swift_project_boxed_opaque_existential_0(&v54, v32);
      v40 = *v39;
      v41 = v39[1];
      outlined copy of Data._Representation(v33, v35);
      outlined copy of Data._Representation(v36, v38);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v40, v41, &v58);
      outlined consume of Data._Representation(v36, v38);
      outlined consume of Data._Representation(v33, v35);
      __swift_destroy_boxed_opaque_existential_0(&v54);
      v42 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v58, v59);
      (*(v47 + 8))(v31, v44);
      (*(v27 + 8))(v28, v46);
      return v42;
    }
  }

  return result;
}

void DeprotectedRecord.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B274DB20](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  Hasher._combine(_:)(a3);
}

Swift::Int DeprotectedRecord.hashValue.getter(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DeprotectedRecord()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeprotectedRecord(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = *(v2 + 16);
  MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t TLSInnerPlaintext.serialize()(uint64_t result, char a2, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a3)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = a3;
      bzero((v6 + 32), a3);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B26C6030;
    *(inited + 32) = a2;

    specialized Array.append<A>(contentsOf:)(inited);
    specialized Array.append<A>(contentsOf:)(v6);
    return v4;
  }

  return result;
}

uint64_t TLSInnerPlaintext.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  MEMORY[0x1B274DB20](v7);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(a3);
  return MEMORY[0x1B274DB20](a4);
}

Swift::Int TLSInnerPlaintext.hashValue.getter(uint64_t a1, Swift::UInt8 a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  v6 = *(a1 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }

  Hasher._combine(_:)(a2);
  MEMORY[0x1B274DB20](a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSInnerPlaintext(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  TLSInnerPlaintext.hash(into:)(v6, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t outlined destroy of AES.GCM.Nonce?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized static DeprotectedRecord.__derived_struct_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return a2 == a4;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return a2 == a4;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static TLSInnerPlaintext.__derived_struct_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return a2 == a5 && a3 == a6;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      return a2 == a5 && a3 == a6;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TLSCiphertext and conformance TLSCiphertext()
{
  result = lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext;
  if (!lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeprotectedRecord and conformance DeprotectedRecord()
{
  result = lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord;
  if (!lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TLSInnerPlaintext and conformance TLSInnerPlaintext()
{
  result = lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext;
  if (!lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeprotectedRecord(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DeprotectedRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSInnerPlaintext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSInnerPlaintext(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  specialized Collection._copyToContiguousArray()(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t outlined destroy of _HasContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11tlsExporter6secret5label7contextAA12SymmetricKeyVqd___SS6DigestQzt10Foundation15ContiguousBytesRd__lFZAA6SHA384V_AJTt3g5@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v22 = a5;
  v23 = a4;
  v20 = a2;
  v21 = a3;
  v19[1] = a1;
  v5 = type metadata accessor for SHA384();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA384Digest();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for SymmetricKey();
  v13 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  dispatch thunk of HashFunction.init()();
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v8, v5);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
  v16 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(v20, v21, v16, v15);
  (*(v10 + 8))(v12, v9);
  v17 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x726574726F707865, 0xE800000000000000, v17, v22);
  return (*(v13 + 8))(v15, v19[0]);
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v6 = *(v3 + 16);
  v6(v11 - v4, a1, v2);
  v13 = v2;
  v14 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  v6(boxed_opaque_existential_1, v5, v2);
  __swift_project_boxed_opaque_existential_0(v12, v13);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v8 = *(v3 + 8);
  v8(a1, v2);
  v8(v5, v2);
  v9 = v11[1];
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t specialized SessionKeyManager.generateTLSExporterKey(_:)@<X0>(Swift::Int a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v42 = a2;
  v41 = a1;
  v44 = a3;
  v3 = type metadata accessor for SHA384();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA384Digest();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - v17;
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v34 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(v43, v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
    (*(v20 + 16))(v18, &v9[*(v7 + 40)], v19);
    v23 = v9;
    v24 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd;
    v25 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR;
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
      v26 = *(v20 + 56);
      v26(v18, 1, 1, v19);
LABEL_9:
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return (v26)(v44, 1, 1, v19);
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v20 + 16))(v18, &v12[*(v10 + 56)], v19);
    v23 = v12;
    v24 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd;
    v25 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR;
  }

  outlined destroy of P256.Signing.PrivateKey?(v23, v24, v25);
  v26 = *(v20 + 56);
  v26(v18, 0, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_9;
  }

  v28 = v34;
  (*(v20 + 32))(v34, v18, v19);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  v29 = v36;
  v30 = v40;
  dispatch thunk of HashFunction.init()();
  v31 = v35;
  dispatch thunk of HashFunction.finalize()();
  (*(v39 + 8))(v29, v30);
  v32 = v44;
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11tlsExporter6secret5label7contextAA12SymmetricKeyVqd___SS6DigestQzt10Foundation15ContiguousBytesRd__lFZAA6SHA384V_AJTt3g5(v28, v41, v42, v31, v44);
  (*(v37 + 8))(v31, v38);
  (*(v20 + 8))(v28, v19);
  return (v26)(v32, 0, 1, v19);
}

uint64_t specialized SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22[0] = type metadata accessor for SHA384Digest();
  v6 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA384();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = xmmword_1B26C6130;
  v24 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  result = dispatch thunk of HashFunction.init()();
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v15 = 0;
    if (v14 == 2)
    {
      v15 = *(a1 + 24);
    }
  }

  else if (v14)
  {
    v15 = a1 >> 32;
  }

  else
  {
    v15 = BYTE6(a2);
  }

  if (v15 < a3)
  {
    __break(1u);
  }

  else
  {
    v16 = Data._Representation.subscript.getter();
    v18 = v17;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v16, v17, v12);
    outlined consume of Data._Representation(v16, v18);
    v19 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v19);
    v22[-2] = &v23;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
    v20 = v22[0];
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v6 + 8))(v8, v20);
    (*(v10 + 8))(v12, v9);
    v21 = v23;
    outlined copy of Data._Representation(v23, *(&v23 + 1));
    outlined consume of Data._Representation(v21, *(&v21 + 1));
    return v21;
  }

  return result;
}

void specialized BidirectionalCollection.dropLast(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -a1;
    v10 = specialized RandomAccessCollection<>.distance(from:to:)(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    outlined consume of Data._Representation(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = xmmword_1B26C5EF0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v19[3] = &type metadata for SwiftTLSDefaultClock;
  v19[4] = &protocol witness table for SwiftTLSDefaultClock;
  _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configuration5clockAC10Foundation4DataV_AC13ConfigurationVAA0A8TLSClock_ptAA8TLSErrorOYKcfC(a1, a2, a3, v19, v17, v13);
  if (v5)
  {
    v14 = v17[0];
    v15 = v17[1];
    v16 = v18;
    outlined consume of ByteBuffer?(0, 0xF000000000000000);
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
  }

  else
  {
    outlined consume of ByteBuffer?(0, 0xF000000000000000);
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v13, a5, type metadata accessor for HandshakeStateMachine);
  }
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configuration5clockAC10Foundation4DataV_AC13ConfigurationVAA0A8TLSClock_ptAA8TLSErrorOYKcfC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v51 - v16;
  v58 = type metadata accessor for SessionTicket(0);
  v17 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = xmmword_1B26C5EF0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  outlined copy of Data._Representation(a1, a2);
  _s15SwiftTLSLibrary13SessionTicketV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC(a1, a2, v61, v19);
  if (v6)
  {
    v20 = a4;
    v21 = v61[0];
    v22 = v61[1];
    v23 = v62;
    __swift_destroy_boxed_opaque_existential_0(v20);
    outlined destroy of HandshakeStateMachine.Configuration(a3);
    outlined consume of Data._Representation(a1, a2);
    outlined consume of ByteBuffer?(0, 0xF000000000000000);
    *a5 = v21;
    *(a5 + 8) = v22;
    *(a5 + 16) = v23;
  }

  else
  {
    v55 = a1;
    v56 = a2;
    v57 = 0;
    v24 = type metadata accessor for HandshakeStateMachine(0);
    v25 = a6 + v24[7];
    v54 = a4;
    outlined init with copy of SwiftTLSClock(a4, v25);
    v60[0] = 0;
    MEMORY[0x1B274ED00](v60, 8);
    v26 = v60[0];
    v60[0] = 0;
    MEMORY[0x1B274ED00](v60, 8);
    v27 = v60[0];
    v60[0] = 0;
    MEMORY[0x1B274ED00](v60, 8);
    v28 = v60[0];
    v60[0] = 0;
    MEMORY[0x1B274ED00](v60, 8);
    v29 = v60[0];
    v30 = (a6 + v24[8]);
    *v30 = v26;
    v30[1] = v27;
    v30[2] = v28;
    v30[3] = v29;
    v31 = a6 + v24[9];
    v32 = *(a3 + 48);
    *(v31 + 32) = *(a3 + 32);
    *(v31 + 48) = v32;
    *(v31 + 64) = *(a3 + 64);
    v33 = *(a3 + 16);
    *v31 = *a3;
    *(v31 + 16) = v33;
    v34 = a6 + v24[6];
    v53 = v19;
    v35 = v59;
    outlined init with copy of SessionTicket(v19, v59, type metadata accessor for SessionTicket);
    v36 = *(v17 + 56);
    v37 = v58;
    v36(v35, 0, 1, v58);
    v38 = type metadata accessor for PAKEClientState(0);
    v39 = *(*(v38 - 8) + 56);
    v39(v63, 1, 1, v38);
    v40 = type metadata accessor for HandshakeState.IdleState(0);
    v52 = v40[5];
    v36(v34 + v52, 1, 1, v37);
    v41 = v40[8];
    v39(v34 + v41, 1, 1, v38);
    v42 = *(a3 + 48);
    *(v34 + 32) = *(a3 + 32);
    *(v34 + 48) = v42;
    *(v34 + 64) = *(a3 + 64);
    v43 = *(a3 + 16);
    *v34 = *a3;
    *(v34 + 16) = v43;
    outlined init with copy of HandshakeStateMachine.Configuration(a3, v60);
    outlined assign with take of PartialHandshakeResult?(v59, v34 + v52, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    swift_storeEnumTagMultiPayload();
    *(v34 + v40[7]) = MEMORY[0x1E69E7CC0];
    outlined assign with take of PartialHandshakeResult?(v63, v34 + v41, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, logger);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v47 = os_log_type_enabled(v45, v46);
    v49 = v55;
    v48 = v56;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B25F5000, v45, v46, "client state machine initialized with session ticket", v50, 2u);
      MEMORY[0x1B274ECF0](v50, -1, -1);
    }

    outlined consume of Data._Representation(v49, v48);
    __swift_destroy_boxed_opaque_existential_0(v54);
    outlined destroy of SessionTicket(v53, type metadata accessor for SessionTicket);
  }
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v76 - v11;
  v12 = type metadata accessor for ImportedPSK(0);
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for GeneralEPSK(0);
  v80 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  *a4 = xmmword_1B26C5EF0;
  *(a4 + 16) = 0;
  v81 = a4;
  *(a4 + 24) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v82 = a2;
  if (*(a2 + 64))
  {
    v78 = v4;
    v25 = *a1;
    v26 = a1[1];
    v27 = a1[2];
    v28 = *(type metadata accessor for EPSK(0) + 20);
    v29 = *(v15 + 20);
    v30 = type metadata accessor for SymmetricKey();
    (*(*(v30 - 8) + 16))(v17 + v29, a1 + v28, v30);
    *v17 = v25;
    v17[1] = v26;
    v17[2] = v27;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v17, v23, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    outlined copy of Data._Representation(v25, v26);
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    v79 = a1;
    v31[2] = v33 + 1;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v31 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v33, type metadata accessor for GeneralEPSK);
    v86 = v31;
  }

  else
  {
    v34 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(&_s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfCTv_r);
    v37 = v34;
    if (v4)
    {
      v38 = v35;
      v39 = v36;
      outlined destroy of HandshakeStateMachine.Configuration(v82);
      outlined destroy of SessionTicket(a1, type metadata accessor for EPSK);
      outlined consume of ByteBuffer?(0, 0xF000000000000000);
      v40 = v79;
      *v79 = v37;
      v40[1] = v38;
      *(v40 + 16) = v39;
      return;
    }

    v78 = 0;
    v79 = a1;
    v41 = *(v34 + 16);
    if (v41)
    {
      v85[0] = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
      v42 = v85[0];
      v43 = *(v77 + 80);
      v76 = v37;
      v44 = v37 + ((v43 + 32) & ~v43);
      v45 = *(v77 + 72);
      v46 = v80;
      do
      {
        outlined init with copy of SessionTicket(v44, v14, type metadata accessor for ImportedPSK);
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, v21, type metadata accessor for ImportedPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v85[0] = v42;
        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v46 = v80;
          v42 = v85[0];
        }

        *(v42 + 16) = v48 + 1;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v21, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v48, type metadata accessor for GeneralEPSK);
        v44 += v45;
        --v41;
      }

      while (v41);
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    specialized Array.append<A>(contentsOf:)(v42);
  }

  v49 = type metadata accessor for HandshakeStateMachine(0);
  v50 = v81;
  v51 = v81 + v49[7];
  *(v51 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v51 + 32) = &protocol witness table for SwiftTLSDefaultClock;
  v85[0] = 0;
  MEMORY[0x1B274ED00](v85, 8);
  v52 = v85[0];
  v85[0] = 0;
  MEMORY[0x1B274ED00](v85, 8);
  v53 = v85[0];
  v85[0] = 0;
  MEMORY[0x1B274ED00](v85, 8);
  v54 = v85[0];
  v85[0] = 0;
  MEMORY[0x1B274ED00](v85, 8);
  v55 = v85[0];
  v56 = (v50 + v49[8]);
  *v56 = v52;
  v56[1] = v53;
  v56[2] = v54;
  v56[3] = v55;
  v57 = v50 + v49[9];
  v58 = v82;
  v59 = *(v82 + 48);
  *(v57 + 32) = *(v82 + 32);
  *(v57 + 48) = v59;
  *(v57 + 64) = *(v58 + 64);
  v60 = *(v58 + 16);
  *v57 = *v58;
  *(v57 + 16) = v60;
  v61 = v50 + v49[6];
  v62 = type metadata accessor for SessionTicket(0);
  v63 = *(*(v62 - 8) + 56);
  v63(v83, 1, 1, v62);
  v81 = v86;
  v64 = type metadata accessor for PAKEClientState(0);
  v65 = *(*(v64 - 8) + 56);
  v65(v84, 1, 1, v64);
  v66 = type metadata accessor for HandshakeState.IdleState(0);
  v80 = v66[5];
  v63(v61 + v80, 1, 1, v62);
  v67 = v66[8];
  v65(v61 + v67, 1, 1, v64);
  v68 = *(v58 + 48);
  *(v61 + 32) = *(v58 + 32);
  *(v61 + 48) = v68;
  *(v61 + 64) = *(v58 + 64);
  v69 = *(v58 + 16);
  *v61 = *v58;
  *(v61 + 16) = v69;
  outlined init with copy of HandshakeStateMachine.Configuration(v58, v85);
  outlined assign with take of PartialHandshakeResult?(v83, v61 + v80, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v61 + v66[7]) = v81;
  outlined assign with take of PartialHandshakeResult?(v84, v61 + v67, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, logger);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v79;
  if (v73)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1B25F5000, v71, v72, "client state machine initialized with epsk", v75, 2u);
    MEMORY[0x1B274ECF0](v75, -1, -1);
  }

  outlined destroy of SessionTicket(v74, type metadata accessor for EPSK);
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v47 - v10;
  v50 = type metadata accessor for PAKEClientState(0);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a4 = xmmword_1B26C5EF0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v13 = type metadata accessor for HandshakeStateMachine(0);
  v14 = (a4 + v13[7]);
  v14[3] = &type metadata for SwiftTLSDefaultClock;
  v14[4] = &protocol witness table for SwiftTLSDefaultClock;
  *&v56[0] = 0;
  MEMORY[0x1B274ED00](v56, 8);
  v15 = *&v56[0];
  *&v56[0] = 0;
  MEMORY[0x1B274ED00](v56, 8);
  v16 = *&v56[0];
  *&v56[0] = 0;
  MEMORY[0x1B274ED00](v56, 8);
  v17 = *&v56[0];
  *&v56[0] = 0;
  MEMORY[0x1B274ED00](v56, 8);
  v18 = *&v56[0];
  v19 = (a4 + v13[8]);
  *v19 = v15;
  v19[1] = v16;
  v19[2] = v17;
  v19[3] = v18;
  v20 = a4 + v13[9];
  v21 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a2 + 64);
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  outlined init with copy of HandshakeStateMachine.Configuration(a2, v56);
  outlined init with copy of PAKEClientConfiguration(a1, v56);
  v23 = v58;
  _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(a1, v54, v12);
  if (v23)
  {
    v24 = v54[0];
    v25 = v54[1];
    v26 = v55;
    outlined destroy of HandshakeStateMachine.Configuration(a2);
    outlined destroy of PAKEClientConfiguration(a1);
    outlined consume of ByteBuffer?(*a4, *(a4 + 8));
    __swift_destroy_boxed_opaque_existential_0(v14);
    v27 = *(v20 + 48);
    v56[2] = *(v20 + 32);
    v56[3] = v27;
    v57 = *(v20 + 64);
    v28 = *(v20 + 16);
    v56[0] = *v20;
    v56[1] = v28;
    result = outlined destroy of HandshakeStateMachine.Configuration(v56);
    v30 = v51;
    *v51 = v24;
    *(v30 + 1) = v25;
    *(v30 + 16) = v26;
  }

  else
  {
    v51 = a1;
    v58 = 0;
    v31 = a4 + v13[6];
    v32 = type metadata accessor for SessionTicket(0);
    v47 = *(*(v32 - 8) + 56);
    v47(v52, 1, 1, v32);
    v48 = v12;
    v33 = v53;
    outlined init with copy of SessionTicket(v12, v53, type metadata accessor for PAKEClientState);
    v34 = *(v49 + 56);
    v35 = v50;
    v34(v33, 0, 1, v50);
    v36 = type metadata accessor for HandshakeState.IdleState(0);
    v37 = v36[5];
    v47(v31 + v37, 1, 1, v32);
    v38 = v36[8];
    v34(v31 + v38, 1, 1, v35);
    v39 = *(a2 + 48);
    *(v31 + 32) = *(a2 + 32);
    *(v31 + 48) = v39;
    *(v31 + 64) = *(a2 + 64);
    v40 = *(a2 + 16);
    *v31 = *a2;
    *(v31 + 16) = v40;
    outlined assign with take of PartialHandshakeResult?(v52, v31 + v37, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    swift_storeEnumTagMultiPayload();
    *(v31 + v36[7]) = MEMORY[0x1E69E7CC0];
    outlined assign with take of PartialHandshakeResult?(v53, v31 + v38, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v51;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B25F5000, v42, v43, "client state machine initialized with pake", v46, 2u);
      MEMORY[0x1B274ECF0](v46, -1, -1);

      outlined destroy of PAKEClientConfiguration(v45);
    }

    else
    {
      outlined destroy of PAKEClientConfiguration(v51);
    }

    return outlined destroy of SessionTicket(v48, type metadata accessor for PAKEClientState);
  }

  return result;
}

uint64_t HandshakeStateMachine.generateTLSExporterKey(label:)@<X0>(Swift::Int a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v3 + *(v13 + 24), v12, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v9, type metadata accessor for HandshakeState.ReadyState);
    specialized SessionKeyManager.generateTLSExporterKey(_:)(a1, a2, a3);
    v14 = type metadata accessor for HandshakeState.ReadyState;
    v15 = v9;
  }

  else
  {
    v16 = type metadata accessor for SymmetricKey();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    v14 = type metadata accessor for HandshakeState;
    v15 = v12;
  }

  return outlined destroy of SessionTicket(v15, v14);
}

uint64_t HandshakeStateMachine.generateHashForAuthenticator(transcript:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v3 + *(v13 + 24), v12, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v9, type metadata accessor for HandshakeState.ReadyState);
    v14 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(a1, a2, a3);
    outlined destroy of SessionTicket(v9, type metadata accessor for HandshakeState.ReadyState);
    return v14;
  }

  else
  {
    outlined destroy of SessionTicket(v12, type metadata accessor for HandshakeState);
    return 0;
  }
}

uint64_t HandshakeStateMachine.generateHMACForAuthenticator(transcript:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-v10];
  v12 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v4 + *(v15 + 24), v14, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = outlined destroy of SessionTicket(v14, type metadata accessor for HandshakeState);
  if (EnumCaseMultiPayload != 6)
  {
    return 0;
  }

  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = a1 >> 32;
  }

  else
  {
    v19 = BYTE6(a2);
  }

  if (v19 < a3)
  {
    __break(1u);
  }

  else
  {
    v20 = Data._Representation.subscript.getter();
    v22 = v21;
    MEMORY[0x1EEE9AC00](v20);
    *&v23[-16] = a4;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:), &v23[-32], v20, v22);
    outlined consume of Data._Representation(v20, v22);
    return _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v11);
  }

  return result;
}

uint64_t HandshakeStateMachine.peerALPN.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v16 + 24), v15, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    outlined destroy of SessionTicket(v15, type metadata accessor for HandshakeState);
    return 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v6, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v18 = *&v6[*(v4 + 32)];

        v19 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v20 = v6;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v3, type metadata accessor for HandshakeState.ReadyState);
        v18 = *&v3[*(ready + 32)];

        v19 = type metadata accessor for HandshakeState.ReadyState;
        v20 = v3;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v18 = *&v12[*(v10 + 24)];

      v19 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v20 = v12;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v9, type metadata accessor for HandshakeState.ServerCertificateState);
      v18 = *(v9 + 9);

      v19 = type metadata accessor for HandshakeState.ServerCertificateState;
      v20 = v9;
    }

    outlined destroy of SessionTicket(v20, v19);
  }

  return v18;
}

uint64_t HandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v38 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v40 + *(v23 + 24), v22, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v29 = v36;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v36, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v26 = *(v29 + *(v37 + 52));
        v30 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      }

      else
      {
        v29 = v38;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v38, type metadata accessor for HandshakeState.ReadyState);
        v26 = *(v29 + *(ready + 60));
        v30 = type metadata accessor for HandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v4, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        outlined init with copy of Any?(&v4[*(v33 + 48)], v11, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        outlined destroy of SessionTicket(v4, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v25 = type metadata accessor for PAKEClientState(0);
        v26 = (*(*(v25 - 8) + 48))(v11, 1, v25) != 1;
        v27 = v11;
        goto LABEL_8;
      }

      v29 = v34;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v34, type metadata accessor for HandshakeState.ServerCertificateState);
      v26 = *(v29 + *(v35 + 52));
      v30 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    outlined destroy of SessionTicket(v29, v30);
    return v26;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined destroy of SessionTicket(v22, type metadata accessor for HandshakeState);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v7, type metadata accessor for HandshakeState.ServerHelloState);
    outlined init with copy of Any?(&v7[*(v5 + 48)], v14, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    outlined destroy of SessionTicket(v7, type metadata accessor for HandshakeState.ServerHelloState);
    v31 = type metadata accessor for PAKEClientState(0);
    v26 = (*(*(v31 - 8) + 48))(v14, 1, v31) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    return v26;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v19, type metadata accessor for HandshakeState.ClientHelloState);
  outlined init with copy of Any?(&v19[*(v17 + 48)], v16, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of SessionTicket(v19, type metadata accessor for HandshakeState.ClientHelloState);
  v28 = type metadata accessor for PAKEClientState(0);
  v26 = (*(*(v28 - 8) + 48))(v16, 1, v28) != 1;
  v27 = v16;
LABEL_8:
  outlined destroy of P256.Signing.PrivateKey?(v27, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  return v26;
}

uint64_t HandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready - 8);
  v54 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionTicket(0);
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48 - v21;
  v23 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v57 + *(v29 + 24), v28, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v31 = v56;
    if (!EnumCaseMultiPayload)
    {
      v36 = type metadata accessor for HandshakeState;
      v37 = v28;
LABEL_13:
      outlined destroy of SessionTicket(v37, v36);
      return 0;
    }

    if (EnumCaseMultiPayload == 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v25, type metadata accessor for HandshakeState.ClientHelloState);
      outlined init with copy of Any?(&v25[*(v23 + 40)], v22, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v32 = *(v31 + 48);
      v33 = v55;
      if (v32(v22, 1, v55) == 1)
      {
        outlined destroy of SessionTicket(v25, type metadata accessor for HandshakeState.ClientHelloState);
        outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
        return 0;
      }

      v41 = *&v22[*(v33 + 48)];
      outlined destroy of SessionTicket(v22, type metadata accessor for SessionTicket);
      v34 = NamedGroup.metadataDescription.getter(v41);
      v39 = type metadata accessor for HandshakeState.ClientHelloState;
      v40 = v25;
LABEL_32:
      outlined destroy of SessionTicket(v40, v39);
      return v34;
    }

    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v19, type metadata accessor for HandshakeState.ServerHelloState);
    v38 = &v19[*(v17 + 32)];
    if (v38[2])
    {
      v34 = 0;
    }

    else
    {
      v34 = NamedGroup.metadataDescription.getter(*v38);
    }

    v35 = type metadata accessor for HandshakeState.ServerHelloState;
LABEL_31:
    v39 = v35;
    v40 = v19;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v19 = v52;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v52, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
      v34 = NamedGroup.metadataDescription.getter(*(v19 + 34));
      v35 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    }

    else
    {
      v19 = v54;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v54, type metadata accessor for HandshakeState.ReadyState);
      if (v19[72])
      {
        v34 = 0;
      }

      else
      {
        v34 = NamedGroup.metadataDescription.getter(*(v19 + 35));
      }

      v35 = type metadata accessor for HandshakeState.ReadyState;
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 3)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v6, type metadata accessor for HandshakeState.ServerCertificateState);
    v34 = NamedGroup.metadataDescription.getter(*(v6 + 34));
    v39 = type metadata accessor for HandshakeState.ServerCertificateState;
    v40 = v6;
    goto LABEL_32;
  }

  v19 = v53;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v53, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of Any?(&v19[*(v15 + 20)], v14, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if ((*(v50 + 48))(v14, 1, v51) != 1)
  {
    v42 = v49;
    outlined init with copy of SessionTicket(v14, v49, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43)
    {
      if (v43 == 1)
      {
        outlined destroy of SessionTicket(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        v36 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        v37 = v19;
        goto LABEL_13;
      }

      v45 = v42;
      v46 = v48;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v45, v48, type metadata accessor for SessionTicket);
      v44 = *(v46 + *(v55 + 48));
      outlined destroy of SessionTicket(v46, type metadata accessor for SessionTicket);
    }

    else
    {
      v44 = *(v42 + 2);
    }

    outlined destroy of SessionTicket(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v34 = NamedGroup.metadataDescription.getter(v44);
    v35 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_31;
  }

  outlined destroy of SessionTicket(v19, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  return 0;
}