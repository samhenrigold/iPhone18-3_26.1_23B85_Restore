Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARCToken.Credential.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARCToken.Credential.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARCToken.Credential.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ARCToken.Credential.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ARCToken.Credential.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ARCToken.Credential.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xEE0065676E656C6CLL;
  v3 = 0x6168436E656B6F74;
  v4 = 0xE900000000000074;
  v5 = 0x696D694C65746172;
  if (*v1 != 2)
  {
    v5 = 0x69746E6564657263;
    v4 = 0xEE00617461446C61;
  }

  if (*v1)
  {
    v3 = 0x654B726575737369;
    v2 = 0xEB00000000644979;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARCToken.Credential.CodingKeys()
{
  v1 = 0x6168436E656B6F74;
  v2 = 0x696D694C65746172;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564657263;
  }

  if (*v0)
  {
    v1 = 0x654B726575737369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARCToken.Credential.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ARCToken.Credential.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARCToken.Credential.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARCToken.Credential.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARCToken.Credential.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML8ARCTokenO10CredentialC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML8ARCTokenO10CredentialC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  result = dispatch thunk of ARCCredentialWrapper.getCredentialData()();
  if (!v2)
  {
    v18 = result;
    v29 = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v10 = *(v1 + 32);
    v28[0] = *(v1 + 16);
    v28[1] = v10;
    v11 = *(v1 + 64);
    v13 = *(v1 + 16);
    v12 = *(v1 + 32);
    v28[2] = *(v1 + 48);
    v28[3] = v11;
    v24 = v13;
    v25 = v12;
    v14 = *(v1 + 64);
    v26 = *(v1 + 48);
    v27 = v14;
    v23 = 0;
    outlined init with copy of ARCToken.TokenChallenge(v28, v22);
    lazy protocol witness table accessor for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    outlined destroy of ARCToken.TokenChallenge(v22);
    v15 = *(v1 + 88);
    v20 = *(v1 + 80);
    v21 = v15;
    v19 = 1;
    outlined copy of Data._Representation(v20, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v20, v21);
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v18;
    v20 = v18;
    v17 = v29;
    v21 = v29;
    v19 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    return outlined consume of Data._Representation(v16, v17);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARCToken.Credential@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ARCToken.Credential.__allocating_init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_225022910;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_225022910;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
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

  v12 = MEMORY[0x22AA5F1C0]();
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
    v5 = MEMORY[0x22AA60AC0](15, a1 >> 16);
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

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t specialized ARCToken.TokenChallenge.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.ascii.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  v15 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v12);
      LODWORD(v17) = BYTE6(v12);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v15 != 2)
  {
    goto LABEL_18;
  }

  v19 = *(v10 + 16);
  v18 = *(v10 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    v17 = HIDWORD(v10) - v10;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v17 >> 16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 == 2)
  {
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    v22 = __OFSUB__(v20, v21);
    v16 = v20 - v21;
    if (!v22)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    LODWORD(v17) = 0;
    v16 = 0;
    goto LABEL_21;
  }

  LODWORD(v16) = HIDWORD(v10) - v10;
  if (__OFSUB__(HIDWORD(v10), v10))
  {
    goto LABEL_27;
  }

  v16 = v16;
LABEL_21:
  if (__OFADD__(v16, 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = specialized Data._Representation.init(capacity:)(v16 + 2);
  v42 = v23;
  v39 = bswap32(v17) >> 16;
  v40[3] = MEMORY[0x277D838B0];
  v40[4] = MEMORY[0x277CC9C18];
  v40[0] = &v39;
  v40[1] = v40;
  __swift_project_boxed_opaque_existential_1(v40, MEMORY[0x277D838B0]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v40);
  Data.append(_:)();
  v24 = v41;
  v25 = v42;
  outlined copy of Data._Representation(v41, v42);
  v26 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of ARCToken.TokenChallenge.init(for:));
  v37 = v27;
  v38 = v26;
  v28 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #1 of ARCToken.TokenChallenge.init(for:));
  v30 = v29;
  v31 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #2 of ARCToken.TokenChallenge.init(for:));
  v32 = v10;
  v34 = v33;
  outlined consume of Data?(v32, v12);
  result = outlined consume of Data._Representation(v24, v25);
  *a3 = v24;
  a3[1] = v25;
  v35 = v37;
  a3[2] = v38;
  a3[3] = v35;
  a3[4] = v28;
  a3[5] = v30;
  a3[6] = v31;
  a3[7] = v34;
  return result;
}

unint64_t lazy protocol witness table accessor for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys);
  }

  return result;
}

uint64_t specialized static ARCToken.request(issuerName:issuerKey:rateLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _WORD *a6@<X8>)
{
  v50 = a5;
  v52 = a4;
  v65 = a3;
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256Digest();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = specialized ARCToken.TokenChallenge.init(for:)(a1, a2, v59);
  if (!v6)
  {
    v49 = a6;
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    dispatch thunk of HashFunction.init()();
    v18 = v65;
    v19 = v52;
    outlined copy of Data._Representation(v65, v52);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v19, v13);
    outlined consume of Data._Representation(v18, v19);
    dispatch thunk of HashFunction.finalize()();
    (*(v11 + 8))(v13, v10);
    v57 = v14;
    v58 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
    v21 = v51;
    (*(v51 + 16))(boxed_opaque_existential_1, v16, v14);
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v21 + 8))(v16, v14);
    v22 = v55;
    __swift_destroy_boxed_opaque_existential_0(&v56);
    v63 = v60;
    v64 = v59[0];
    v23 = MEMORY[0x277CC9318];
    v55 = v59[0];
    v57 = MEMORY[0x277CC9318];
    v58 = MEMORY[0x277CC9300];
    v24 = MEMORY[0x277CC9300];
    v56 = v60;
    v25 = __swift_project_boxed_opaque_existential_1(&v56, MEMORY[0x277CC9318]);
    v26 = *v25;
    v27 = v25[1];
    outlined init with copy of Data(&v64, &v54);
    outlined init with copy of Data(&v63, &v54);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v27, &v55);
    __swift_destroy_boxed_opaque_existential_0(&v56);
    v28 = v55;
    v62 = v61;
    v54 = v55;
    v57 = v23;
    v58 = v24;
    v56 = v61;
    v29 = __swift_project_boxed_opaque_existential_1(&v56, v23);
    v31 = *v29;
    v30 = v29[1];
    outlined copy of Data._Representation(v28, *(&v28 + 1));
    outlined init with copy of Data(&v62, v53);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v31, v30, &v54);
    outlined consume of Data._Representation(v28, *(&v28 + 1));
    __swift_destroy_boxed_opaque_existential_0(&v56);
    v32 = v54;
    v55 = v54;
    v57 = v23;
    v58 = MEMORY[0x277CC9300];
    v56 = v22;
    v33 = __swift_project_boxed_opaque_existential_1(&v56, v23);
    v34 = *v33;
    v35 = v33[1];
    outlined copy of Data._Representation(v32, *(&v32 + 1));
    v51 = v22;
    outlined copy of Data._Representation(v22, *(&v22 + 1));
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v34, v35, &v55);
    outlined consume of Data._Representation(v32, *(&v32 + 1));
    __swift_destroy_boxed_opaque_existential_0(&v56);
    v36 = v55;
    v37 = objc_allocWithZone(type metadata accessor for ARCAwaitingActivationWrapper());
    outlined copy of Data._Representation(v65, v19);
    outlined copy of Data._Representation(v36, *(&v36 + 1));
    v38 = ARCAwaitingActivationWrapper.init(requestContext:serverPublicKeyData:)();
    v39 = dispatch thunk of ARCAwaitingActivationWrapper.makeRequest()();
    v41 = v40;
    v42 = v51;
    result = specialized BidirectionalCollection.last.getter(v51, *(&v22 + 1));
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      v43 = result;
      result = outlined consume of Data._Representation(v36, *(&v36 + 1));
      v44 = v59[0];
      v45 = v59[1];
      v46 = v60;
      v47 = v61;
      v48 = v49;
      *v49 = -6740;
      *(v48 + 2) = v43;
      *(v48 + 1) = v39;
      *(v48 + 2) = v41;
      *(v48 + 12) = v44;
      *(v48 + 20) = v45;
      *(v48 + 28) = v46;
      *(v48 + 36) = v47;
      *(v48 + 11) = v42;
      *(v48 + 12) = *(&v22 + 1);
      *(v48 + 13) = v50;
      *(v48 + 14) = v38;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
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

uint64_t specialized ARCToken.TokenChallenge.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E726575737369 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225037B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E496E696769726FLL && a2 == 0xEA00000000006F66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225037B50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ARCToken.TokenChallenge.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML8ARCTokenO14TokenChallengeV10CodingKeys33_9FA236D89B3FD9C7EA0736C8CE4DB227LLOGMd, &_ss22KeyedDecodingContainerVy8CipherML8ARCTokenO14TokenChallengeV10CodingKeys33_9FA236D89B3FD9C7EA0736C8CE4DB227LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARCToken.TokenChallenge.CodingKeys and conformance ARCToken.TokenChallenge.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v25[0];
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v25[0];
  LOBYTE(v21) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v25[0];
  v29 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v16 = *(&v28 + 1);
  v17 = v28;
  v9 = v20;
  v21 = v20;
  v10 = v19;
  v22 = v19;
  v11 = v18;
  v23 = v18;
  v24 = v28;
  outlined init with copy of ARCToken.TokenChallenge(&v21, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v26 = v17;
  v27 = v16;
  result = outlined destroy of ARCToken.TokenChallenge(v25);
  v13 = v22;
  *a2 = v21;
  a2[1] = v13;
  v14 = v24;
  a2[2] = v23;
  a2[3] = v14;
  return result;
}

unint64_t specialized ARCToken.Credential.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ARCToken.Credential.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ARCToken.Credential.__allocating_init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML8ARCTokenO10CredentialC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML8ARCTokenO10CredentialC10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v22 = 0;
    lazy protocol witness table accessor for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v15 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v16;
    v7 = v17;
    LOBYTE(v16) = 2;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = objc_allocWithZone(type metadata accessor for ARCCredentialWrapper());
    v11 = ARCCredentialWrapper.init(credentialData:)();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for ARCToken.Credential();
    v3 = swift_allocObject();
    v12 = v19;
    *(v3 + 16) = v18;
    *(v3 + 32) = v12;
    v13 = v21;
    *(v3 + 48) = v20;
    *(v3 + 64) = v13;
    *(v3 + 80) = v8;
    *(v3 + 88) = v7;
    *(v3 + 96) = v27;
    *(v3 + 104) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t lazy protocol witness table accessor for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.Credential.CodingKeys and conformance ARCToken.Credential.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge()
{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge;
  if (!lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCToken.TokenChallenge and conformance ARCToken.TokenChallenge);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ARCToken.TokenChallenge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ARCToken.TokenChallenge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
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

uint64_t getEnumTagSinglePayload for ARCToken.ClientState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ARCToken.ClientState(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ARCToken.Credential.__allocating_init(tokenChallenge:issuerKeyId:rateLimit:credential:)(_OWORD *a1)
{
  v2 = *(v1 + 112);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SecretKey(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);
    outlined consume of Data._Representation(a2, a3);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  }

  else
  {
    _s8CipherML9SecretKeyVWObTm_1(a1, v13, type metadata accessor for SecretKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);
    result = outlined consume of Data._Representation(a2, a3);
    *v3 = v18;
  }

  return result;
}

uint64_t key path setter for ActiveUseCaseTracker.lastUsed : ActiveUseCaseTracker(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t ActiveUseCaseTracker.lastUsed.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ActiveUseCaseTracker.currentDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate);

  return v1;
}

uint64_t ActiveUseCaseTracker.activeUseCases.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8];
  (*(v0 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))(v7);
  Date.addingTimeInterval(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v16 = v9;

  specialized _NativeDictionary.filter(_:)(partial apply for closure #1 in ActiveUseCaseTracker.activeUseCases.getter, v15, v12);

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5();
  v10(v9, v2);
  return v13;
}

uint64_t closure #1 in ActiveUseCaseTracker.activeUseCases.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = a1[1];
  *v7 = v8;
  *(v7 + 1) = v9;
  v11 = *(v10 + 56);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(&v7[v11], a2, v12);

  v13 = static Date.> infix(_:_:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  return v13 & 1;
}

uint64_t ActiveUseCaseTracker.__allocating_init(persistenceFile:lastUsed:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  outlined init with take of URL?(a1, v8 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile);
  *(v8 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed) = a2;
  v9 = (v8 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate);
  *v9 = a3;
  v9[1] = a4;
  return v8;
}

uint64_t ActiveUseCaseTracker.init(persistenceFile:lastUsed:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  outlined init with take of URL?(a1, v4 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile);
  *(v4 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed) = a2;
  v9 = (v4 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate);
  *v9 = a3;
  v9[1] = a4;
  return v4;
}

uint64_t ActiveUseCaseTracker.markActive(useCase:active:)(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v81) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v70 - v9;
  v10 = type metadata accessor for URL();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v11;
  MEMORY[0x28223BE20](v12);
  v71 = &v70 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  MEMORY[0x28223BE20](v21);
  v84 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  MEMORY[0x28223BE20](v28);
  v83 = &v70 - v29;
  v30 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v73 = v30;
  v31 = *(v3 + v30);
  v32 = *(v31 + 16);
  v75 = a1;
  v76 = a2;
  if (v32)
  {

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v34)
    {
      v35 = v83;
      (*(v15 + 16))(v83, *(v31 + 56) + *(v15 + 72) * v33, v14);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v83;
    }
  }

  else
  {
    v36 = 1;
    v35 = v83;
  }

  v37 = *(v15 + 56);
  v38 = v37(v35, v36, 1, v14);
  v39 = v82;
  v40 = v35;
  (*(v82 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))(v38);
  if (v81)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v35, v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v41 = *(v15 + 48);
    v42 = v14;
    if (v41(v27, 1, v14) == 1)
    {
      v43 = v15;
      static Date.distantPast.getter();
      if (v41(v27, 1, v42) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v43 = v15;
      (*(v15 + 32))(v20, v27, v42);
    }

    v44 = v84;
    static Date.- infix(_:_:)();
    v45 = static Date.< infix(_:_:)();
    v46 = *(v43 + 8);
    v46(v17, v42);
    v46(v20, v42);
    if (v45)
    {
      v81 = v43;
      v47 = v74;
      (*(v43 + 16))(v74, v44, v42);
      v37(v47, 0, 1, v42);
      v39 = v82;
      swift_beginAccess();
      v48 = v76;

      specialized Dictionary.subscript.setter(v47, v75, v48);
      swift_endAccess();
      v14 = v42;
      goto LABEL_17;
    }

    v58 = v42;
    v40 = v83;
    v46(v44, v58);
LABEL_20:
    v55 = &_s10Foundation4DateVSgMd;
    v56 = &_s10Foundation4DateVSgMR;
    v57 = v40;
    goto LABEL_21;
  }

  if ((*(v15 + 48))(v35, 1, v14) == 1)
  {
    (*(v15 + 8))(v84, v14);
    goto LABEL_20;
  }

  v81 = v15;
  v49 = v74;
  v37(v74, 1, 1, v14);
  swift_beginAccess();
  v50 = v76;

  specialized Dictionary.subscript.setter(v49, v75, v50);
  swift_endAccess();
LABEL_17:
  v51 = v77;
  v52 = v78;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile, v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v53 = v79;
  v54 = v80;
  if ((*(v79 + 48))(v51, 1, v80) == 1)
  {
    (*(v81 + 8))(v84, v14);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v55 = &_s10Foundation3URLVSgMd;
    v56 = &_s10Foundation3URLVSgMR;
    v57 = v51;
LABEL_21:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, v55, v56);
    return 0;
  }

  v78 = *(v53 + 32);
  v60 = v71;
  (v78)(v71, v51, v54);
  v77 = os_transaction_create();
  v61 = v72;
  static TaskPriority.background.getter();
  v62 = type metadata accessor for TaskPriority();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  (*(v53 + 16))(v52, v60, v54);
  active = lazy protocol witness table accessor for type ActiveUseCaseTracker and conformance ActiveUseCaseTracker(&lazy protocol witness table cache variable for type ActiveUseCaseTracker and conformance ActiveUseCaseTracker, type metadata accessor for ActiveUseCaseTracker, &protocol conformance descriptor for ActiveUseCaseTracker);
  v64 = (*(v53 + 80) + 48) & ~*(v53 + 80);
  v65 = swift_allocObject();
  v66 = v52;
  v67 = v65;
  *(v65 + 2) = v39;
  *(v65 + 3) = active;
  v68 = v78;
  *(v65 + 4) = v77;
  *(v65 + 5) = v39;
  v68(&v65[v64], v66, v54);
  swift_retain_n();
  v69 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #1 in ActiveUseCaseTracker.markActive(useCase:active:), v67);
  (*(v53 + 8))(v60, v54);
  (*(v81 + 8))(v84, v14);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v69;
}

uint64_t closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in ActiveUseCaseTracker.markActive(useCase:active:), a5, 0);
}

uint64_t closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)()
{
  closure #1 in closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

void closure #1 in closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v8 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v32 = *(a1 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  lazy protocol witness table accessor for type [String : Date] and conformance <> [A : B]();
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v2)
  {

    v13 = v7;
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.daemon);
    (*(v5 + 16))(v7, v31, v4);
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = 0;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v19 = 136446466;
      lazy protocol witness table accessor for type ActiveUseCaseTracker and conformance ActiveUseCaseTracker(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v13;
      v24 = v23;
      (*(v5 + 8))(v22, v4);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v32);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2114;
      v26 = v2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_224E26000, v16, v17, "ActiveUseCaseTracker failed to save lastUsed field to '%{public}s': %{public}@", v19, 0x16u);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v20, -1, -1);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA61F40](v28, -1, -1);
      MEMORY[0x22AA61F40](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v13, v4);
    }
  }

  else
  {
    v11 = v9;
    v12 = v10;

    Data.write(to:options:)();
    outlined consume of Data._Representation(v11, v12);
  }
}

Swift::Bool __swiftcall ActiveUseCaseTracker.isActive(useCase:)(Swift::String useCase)
{
  v2 = v1;
  object = useCase._object;
  countAndFlagsBits = useCase._countAndFlagsBits;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_5;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v24 = 0;
    return v24 & 1;
  }

  (*(v6 + 16))(v14, *(v19 + 56) + *(v6 + 72) * v20, v5);

  v22 = (*(v6 + 32))(v17, v14, v5);
  (*(v2 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))(v22);
  Date.addingTimeInterval(_:)();
  v23 = *(v6 + 8);
  v23(v8, v5);
  v24 = static Date.> infix(_:_:)();
  v23(v11, v5);
  v23(v17, v5);
  return v24 & 1;
}

uint64_t ActiveUseCaseTracker.deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActiveUseCaseTracker.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10, MEMORY[0x277CC9578]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UseCaseGroup(0);
    v19 = *(v12 - 8);
    _s8CipherML9SecretKeyVWObTm_1(v11 + *(v19 + 72) * v8, a3, type metadata accessor for UseCaseGroup);
    specialized _NativeDictionary._delete(at:)(v8, v10, type metadata accessor for UseCaseGroup);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UseCaseGroup(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    outlined consume of Data._Representation(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for SecretKey(0);
    v19 = *(v12 - 8);
    _s8CipherML9SecretKeyVWObTm_1(v11 + *(v19 + 72) * v8, a3, type metadata accessor for SecretKey);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SecretKey(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = outlined consume of Data._Representation(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = outlined consume of Data._Representation(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for SecretKey(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary.filter(_:)(uint64_t (*a1)(void *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation4DateVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab23VKXEfU_SS_10Foundation4J4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n(v10, v7, a3, v5);
      MEMORY[0x22AA61F40](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  specialized closure #1 in _NativeDictionary.filter(_:)(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for Date();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v34 = v5 + 16;
  v35 = v5;
  v32 = 0;
  v33 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v19 = v38;
    v18 = v39;
LABEL_11:
    v22 = v37[7];
    v23 = (v37[6] + 16 * v17);
    v24 = v23[1];
    v40[0] = *v23;
    v40[1] = v24;
    (*(v35 + 16))(v19, v22 + *(v35 + 72) * v17, v18, v6);

    v25 = v41;
    v26 = v36(v40, v19);
    v27 = v19;
    v41 = v25;
    if (v25)
    {
      (*v33)(v19, v18);

      return;
    }

    v28 = v26;
    (*v33)(v27, v18);

    if (v28)
    {
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        specialized _NativeDictionary.extractDictionary(using:count:)(v31, v30, v32, v37);
        return;
      }
    }
  }

  v20 = v8;
  v19 = v38;
  v18 = v39;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation4DateVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab23VKXEfU_SS_10Foundation4J4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized ActiveUseCaseTracker.__allocating_init(persistenceFile:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v20[4] = v13;
    v21 = v4;
    (*(v9 + 32))(v12, v7, v8);
    v14 = Data.init(contentsOf:options:)();
    v16 = v15;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
    lazy protocol witness table accessor for type [String : Date] and conformance <> [A : B]();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v9 + 8))(v12, v8);
    outlined consume of Data._Representation(v14, v16);

    v4 = v21;
    v13 = v22;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for ActiveUseCaseTracker(0);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with take of URL?(v4, v17 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_persistenceFile);
  *(v17 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed) = v13;
  v18 = (v17 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate);
  *v18 = closure #1 in default argument 4 of RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:);
  v18[1] = 0;
  return v17;
}

uint64_t type metadata accessor for ActiveUseCaseTracker(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActiveUseCaseTracker;
  if (!type metadata singleton initialization cache for ActiveUseCaseTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in ActiveUseCaseTracker.markActive(useCase:active:)(a1, v6, v7, v8, v9, v1 + v5);
}

void type metadata completion function for ActiveUseCaseTracker(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t _s8CipherML9SecretKeyVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ActiveUseCaseTracker and conformance ActiveUseCaseTracker(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OSAllocatedUnfairLock<A>.current.getter(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  return v2;
}

uint64_t *AllowList.empty.unsafeMutableAddressor()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return &static AllowList.empty;
}

uint64_t AllowList.group(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 48);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0) && (v8 = *(v3 + 32), *(v8 + 16)) && (v9 = (*(v5 + 56) + 16 * v6), v10 = *v9, v11 = v9[1], , v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(v8 + 56);
    v16 = type metadata accessor for UseCaseGroup(0);
    v23 = *(v16 - 8);
    _s8CipherML12UseCaseGroupVWOcTm_1(v15 + *(v23 + 72) * v12, a3, type metadata accessor for UseCaseGroup);
    v17 = *(v23 + 56);
    v18 = a3;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v21 = type metadata accessor for UseCaseGroup(0);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a3;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

uint64_t AllowList.isAllowListed(group:encryptionParameters:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HE.RlweParams();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HE.Scheme();
  v14.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v18 == 1 && v17)
  {
    v40 = v5;
    v19 = MEMORY[0x277D02F40];
    if (v17 != 1)
    {
      v19 = MEMORY[0x277D02F48];
    }

    v20 = v12;
    v21 = v13;
    (*(v13 + 104))(v16, *v19, v12, v14);
    AspireHeEncryptionParameters.rlweParams()(v10);
    if (v2)
    {
      (*(v21 + 8))(v16, v20);
    }

    else
    {
      v38 = v20;
      v39 = v21;
      v24 = v43[2];
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      v28 = specialized Sequence<>.contains(_:)(v10, v27, MEMORY[0x277D02EC8], &lazy protocol witness table cache variable for type HE.RlweParams and conformance HE.RlweParams, MEMORY[0x277D02EC8], MEMORY[0x277D02ED8]);

      if (!v28 || !specialized Sequence<>.contains(_:)(v16, v43[3], MEMORY[0x277D02F50], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme, MEMORY[0x277D02F50], MEMORY[0x277D02F60]))
      {
        if (one-time initialization token for framework != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.framework);
        _s8CipherML12UseCaseGroupVWOcTm_1(a2, v7, type metadata accessor for AspireHeEncryptionParameters);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v44 = v43;
          *v32 = 136315138;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
          v33 = Message.textFormatString()();
          _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(v7, type metadata accessor for AspireHeEncryptionParameters);
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33._countAndFlagsBits, v33._object, &v44);

          *(v32 + 4) = v34;
          v35 = v32;
          _os_log_impl(&dword_224E26000, v30, v31, "unsupportedAspireHeEncryptionParams %s", v32, 0xCu);
          v36 = v43;
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x22AA61F40](v36, -1, -1);
          MEMORY[0x22AA61F40](v35, -1, -1);
        }

        else
        {

          _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(v7, type metadata accessor for AspireHeEncryptionParameters);
        }

        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        _s8CipherML12UseCaseGroupVWOcTm_1(a2, v37, type metadata accessor for AspireHeEncryptionParameters);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      (*(v41 + 8))(v10, v42);
      (*(v39 + 8))(v16, v38);
    }
  }

  else
  {
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v22 = v17;
    *(v22 + 8) = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return 1;
}

double AllowList.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 40);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + (v6 << 6));
    v9 = *(v8 + 41);
    v10 = v8[2];
    v11 = *v8;
    v15[1] = v8[1];
    v16[0] = v10;
    v15[0] = v11;
    *(v16 + 9) = v9;
    v12 = v8[1];
    *a3 = *v8;
    *(a3 + 16) = v12;
    *(a3 + 32) = v8[2];
    *(a3 + 41) = *(v8 + 41);
    outlined init with copy of UseCase(v15, &v14);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -1;
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t AllowList.__allocating_init(rlweParams:heSchemes:groups:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AllowList.init(rlweParams:heSchemes:groups:)(a1, a2, a3);
  return v6;
}

uint64_t AllowList.saveAllowList(path:)(uint64_t a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type AllowListFormat and conformance AllowListFormat();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;

  if (!v1)
  {
    Data.write(to:options:)();
    return outlined consume of Data._Representation(v2, v4);
  }

  return result;
}

void *one-time initialization function for empty()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16CryptoKitPrivate2HEO13SecurityLevelO_SayAE10RlweParamsOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML12UseCaseGroupVTt0g5Tf4g_n(v0);
  type metadata accessor for AllowList();
  v3 = swift_allocObject();
  result = AllowList.init(rlweParams:heSchemes:groups:)(v1, v0, v2);
  static AllowList.empty = v3;
  return result;
}

uint64_t static AllowList.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }
}

void *AllowList.keys.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(*(v1 + 16), 0, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v2, v1);
  v5 = v7;

  outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *AllowList.init(rlweParams:heSchemes:groups:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v115[2] = *v4;
  v124 = type metadata accessor for UseCaseGroup(0);
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v119 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (v115 - v13);
  v4[2] = a1;
  v4[3] = a2;
  v116 = v4;
  v4[4] = a3;
  v15 = *(a3 + 64);
  v118 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v117 = (v16 + 63) >> 6;
  v123 = a3;

  v19 = 0;
  v20 = MEMORY[0x277D84F98];
  v132 = MEMORY[0x277D84F98];
  v21 = MEMORY[0x277D84F98];
  v122 = v11;
  v121 = v14;
LABEL_6:
  v127 = v21;
  if (v18)
  {
    v24 = v19;
LABEL_14:
    v126 = (v18 - 1) & v18;
    v26 = __clz(__rbit64(v18)) | (v24 << 6);
    v27 = (*(v123 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = v119;
    _s8CipherML12UseCaseGroupVWOcTm_1(*(v123 + 56) + *(v120 + 72) * v26, v119, type metadata accessor for UseCaseGroup);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v32 = *(v31 + 48);
    *v11 = v29;
    v11[1] = v28;
    _s8CipherML12UseCaseGroupVWObTm_1(v30, v11 + v32, type metadata accessor for UseCaseGroup);
    (*(*(v31 - 8) + 56))(v11, 0, 1, v31);

    v125 = v24;
LABEL_15:
    outlined init with take of (key: String, value: UseCaseGroup)?(v11, v14);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v33 - 8) + 48))(v14, 1, v33) != 1)
    {
      v34 = v14[1];
      v130 = *v14;
      v133 = v34;
      v35 = v14 + *(v33 + 48);
      v36 = *(v35 + *(v124 + 32));

      _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(v35, type metadata accessor for UseCaseGroup);
      v37 = 0;
      v39 = v36 + 64;
      v38 = *(v36 + 64);
      v131 = v36;
      v40 = 1 << *(v36 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & v38;
      v43 = (v40 + 63) >> 6;
      v44 = MEMORY[0x277D84F90];
      v45 = v20;
      v129 = v39;
      v128 = v43;
      if ((v41 & v38) == 0)
      {
        goto LABEL_20;
      }

      while (1)
      {
LABEL_24:
        v47 = __clz(__rbit64(v42)) | (v37 << 6);
        v48 = (*(v131 + 48) + 16 * v47);
        v49 = *v48;
        v50 = v48[1];
        v51 = (*(v131 + 56) + (v47 << 6));
        v52 = *(v51 + 41);
        v53 = *v51;
        v54 = v51[2];
        v138 = v51[1];
        *v139 = v54;
        *&v139[9] = v52;
        v137 = v53;
        v55 = v45[2];

        if (v55)
        {
          outlined init with copy of UseCase(&v137, v135);
          v56 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
          if (v57)
          {
            v107 = v56;

            outlined destroy of UseCase(&v137);
            v108 = (v45[7] + 16 * v107);
            v109 = *v108;
            v110 = v108[1];

            type metadata accessor for CipherMLError(0);
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
            swift_allocError();
            *v111 = v49;
            v111[1] = v50;
            v111[2] = v109;
            v111[3] = v110;
            v112 = v133;
            v111[4] = v130;
            v111[5] = v112;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            v113 = v116;

            swift_deallocPartialClassInstance();
            return v113;
          }
        }

        else
        {
          outlined init with copy of UseCase(&v137, v135);
        }

        v58 = v44;
        v59 = v45;
        v60 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v60;
        v134 = v49;
        v63 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
        v64 = v60[2];
        v65 = (v62 & 1) == 0;
        v66 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          goto LABEL_61;
        }

        v67 = v62;
        if (v60[3] >= v66)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v62)
            {
              goto LABEL_35;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if (v67)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, isUniquelyReferenced_nonNull_native);
          v68 = specialized __RawDictionaryStorage.find<A>(_:)(v134, v50);
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_65;
          }

          v63 = v68;
          if (v67)
          {
LABEL_35:
            v132 = v140;
            v70 = (v140[7] + (v63 << 6));
            v72 = v70[1];
            v71 = v70[2];
            v73 = *v70;
            *&v136[9] = *(v70 + 41);
            v135[1] = v72;
            *v136 = v71;
            v135[0] = v73;
            v74 = v137;
            v75 = v138;
            v76 = *v139;
            *(v70 + 41) = *&v139[9];
            v70[1] = v75;
            v70[2] = v76;
            *v70 = v74;
            outlined destroy of UseCase(v135);
            v77 = v134;
            goto LABEL_39;
          }
        }

        v78 = v140;
        v140[(v63 >> 6) + 8] |= 1 << v63;
        v79 = (v78[6] + 16 * v63);
        v77 = v134;
        *v79 = v134;
        v79[1] = v50;
        v80 = (v78[7] + (v63 << 6));
        v81 = *&v139[9];
        v83 = v138;
        v82 = *v139;
        *v80 = v137;
        v80[1] = v83;
        v80[2] = v82;
        *(v80 + 41) = v81;
        v84 = v78[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_63;
        }

        v132 = v78;
        v78[2] = v86;

LABEL_39:

        v87 = swift_isUniquelyReferenced_nonNull_native();
        *&v135[0] = v59;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v50);
        v90 = v59[2];
        v91 = (v89 & 1) == 0;
        v85 = __OFADD__(v90, v91);
        v92 = v90 + v91;
        if (v85)
        {
          goto LABEL_62;
        }

        v93 = v89;
        if (v59[3] >= v92)
        {
          v44 = v58;
          if (v87)
          {
            v45 = *&v135[0];
            if ((v89 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v97 = v88;
            specialized _NativeDictionary.copy()();
            v88 = v97;
            v45 = *&v135[0];
            if ((v93 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v92, v87);
          v88 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v50);
          if ((v93 & 1) != (v94 & 1))
          {
            goto LABEL_65;
          }

          v44 = v58;
          v45 = *&v135[0];
          if ((v93 & 1) == 0)
          {
LABEL_48:
            v45[(v88 >> 6) + 8] |= 1 << v88;
            v98 = (v45[6] + 16 * v88);
            *v98 = v77;
            v98[1] = v50;
            v99 = (v45[7] + 16 * v88);
            v100 = v133;
            *v99 = v130;
            v99[1] = v100;
            v101 = v45[2];
            v85 = __OFADD__(v101, 1);
            v102 = v101 + 1;
            if (v85)
            {
              goto LABEL_64;
            }

            v45[2] = v102;

            goto LABEL_50;
          }
        }

        v95 = (v45[7] + 16 * v88);
        v96 = v133;
        *v95 = v130;
        v95[1] = v96;

LABEL_50:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
        }

        v104 = *(v44 + 2);
        v103 = *(v44 + 3);
        if (v104 >= v103 >> 1)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v44);
        }

        v42 &= v42 - 1;
        *(v44 + 2) = v104 + 1;
        v105 = &v44[16 * v104];
        *(v105 + 4) = v134;
        *(v105 + 5) = v50;
        v39 = v129;
        v43 = v128;
        if (!v42)
        {
LABEL_20:
          while (1)
          {
            v46 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v46 >= v43)
            {
              v20 = v45;

              v22 = v127;
              v23 = swift_isUniquelyReferenced_nonNull_native();
              *&v137 = v22;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v130, v133, v23, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

              v21 = v137;
              v19 = v125;
              v11 = v122;
              v14 = v121;
              v18 = v126;
              goto LABEL_6;
            }

            v42 = *(v39 + 8 * v46);
            ++v37;
            if (v42)
            {
              v37 = v46;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_60;
        }
      }
    }

    v113 = v116;
    v116[5] = v132;
    v113[6] = v20;
    v113[7] = v127;
    return v113;
  }

  else
  {
    if (v117 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = v117;
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v117)
      {
        v125 = v25 - 1;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
        (*(*(v106 - 8) + 56))(v11, 1, 1, v106);
        v126 = 0;
        goto LABEL_15;
      }

      v18 = *(v118 + 8 * v24);
      ++v19;
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *AllowList.deinit()
{

  return v0;
}

uint64_t AllowList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for UseCaseGroup(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UseCaseGroup);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for UseCaseGroup, type metadata accessor for UseCaseGroup);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AspireApiConfig(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AspireApiConfig);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for AspireApiConfig, type metadata accessor for AspireApiConfig);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SecretKey(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SecretKey);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for SecretKey, type metadata accessor for SecretKey);

  return outlined copy of Data._Representation(a2, a3);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);

  return outlined copy of Data._Representation(a2, a3);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = _s8CipherML12UseCaseGroupVWObTm_1(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = _s8CipherML12UseCaseGroupVWObTm_1(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        outlined copy of Data._Representation(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      outlined copy of Data._Representation(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized AllowList.__allocating_init(file:)(char *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  if (v1)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v16, static Logger.framework);
    (*(v4 + 16))(v6, a1, v3);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29[1] = v1;
      v22 = v21;
      v32 = v21;
      *v20 = 136446210;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = a1;
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v6, v31);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v32);
      a1 = v30;

      *(v20 + 4) = v15;
      _os_log_impl(&dword_224E26000, v17, v18, "Unable to load allow list from '%{public}s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA61F40](v22, -1, -1);
      v27 = v20;
      v3 = v31;
      MEMORY[0x22AA61F40](v27, -1, -1);
    }

    else
    {

      v26 = *(v4 + 8);
      v26(v6, v3);
    }

    swift_willThrow();
    v26(a1, v3);
  }

  else
  {
    v30 = v8;
    v31 = v3;
    v9 = v7;
    v10 = specialized static AllowListParser.parseAllowList(allowListData:)(v7, v8);
    v12 = v11;
    v14 = v13;
    type metadata accessor for AllowList();
    v15 = swift_allocObject();

    AllowList.init(rlweParams:heSchemes:groups:)(v10, v12, v14);
    outlined consume of Data._Representation(v9, v30);

    (*(v4 + 8))(a1, v31);
  }

  return v15;
}

char *specialized AllowList.__allocating_init()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  type metadata accessor for CMLXPCServer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x22AA609C0](0x696C2D776F6C6C61, 0xEA00000000007473);
  v11 = MEMORY[0x22AA609C0](0x7473696C70, 0xE500000000000000);
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 16))(v4, v7, v1);
    v13 = specialized AllowList.__allocating_init(file:)(v4);
    if (!v0)
    {
      v4 = v13;
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.framework);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224E26000, v15, v16, "Can't get url for default allow list", v17, 2u);
      MEMORY[0x22AA61F40](v17, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v4;
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (key: String, value: UseCaseGroup)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8CipherML12UseCaseGroupVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AspireApiConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TokenFetcherTask.currentDate.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *TokenFetcherTask.__allocating_init(allowListLock:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TokenFetcherTask.init(allowListLock:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t TokenFetcherTask.run()()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for TokenFetcher(0);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = type metadata accessor for NetworkManagerConfig(0);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for NetworkManagerType(0);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for UseCaseGroup(0);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcherTask.run(), 0, 0);
}

{
  v1 = *(*(v0 + 112) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = *(v3 + 32);
  *(v0 + 312) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  *(v0 + 248) = 0;

  v8 = 0;
  v9 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
LABEL_7:
  if (!v7)
  {
LABEL_9:
    v13 = ((1 << *(v0 + 312)) + 63) >> 6;
    if (v13 <= (v8 + 1))
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 312)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v46 = *(v0 + 216);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
        (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
        v7 = 0;
        v8 = v15;
        goto LABEL_18;
      }

      v12 = *(v0 + 240);
      v7 = *(v12 + 8 * v16 + 64);
      ++v8;
      if (v7)
      {
        v8 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v54 = static TokenCache.shared;
    v55 = (*(v0 + 144) + *(*(v0 + 128) + 20));
    v56 = *v55;
    v57 = v55[1];
    v58 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
    v59 = swift_task_alloc();
    v59[2] = v54;
    v59[3] = v56;
    v59[4] = v57;
    os_unfair_lock_lock((v58 + 24));
    partial apply for closure #1 in TokenCache.count(user:)((v58 + 16), (v0 + 104));
    os_unfair_lock_unlock((v58 + 24));
    v60 = *(v0 + 104);

    if (v60 >= 5)
    {
      *(v0 + 296) = 0;

      v61 = TokenFetcherTask.run();
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v64 = __OFSUB__(10, v60);
      v65 = 10 - v60;
      if (!v64)
      {
        v66 = swift_task_alloc();
        *(v0 + 288) = v66;
        *v66 = v0;
        v66[1] = TokenFetcherTask.run();

        return TokenFetcher.fetchTokensInBackground(count:)(v65);
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v61, v62, v63);
  }

  while (1)
  {
    v12 = *(v0 + 240);
LABEL_17:
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (v8 << 6);
    v21 = (*(v12 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    _s8CipherML12UseCaseGroupVWOcTm_2(*(v12 + 56) + *(*(v0 + 192) + 72) * v20, v18, type metadata accessor for UseCaseGroup);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v25 = *(v24 + 48);
    *v17 = v22;
    v17[1] = v23;
    _s8CipherML12UseCaseGroupVWObTm_2(v18, v17 + v25, type metadata accessor for UseCaseGroup);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);

LABEL_18:
    *(v0 + 256) = v7;
    *(v0 + 264) = v8;
    v26 = *(v0 + 224);
    outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      break;
    }

    v28 = v9;
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    *(v0 + 272) = *v29;
    *(v0 + 280) = v29[1];
    _s8CipherML12UseCaseGroupVWObTm_2(v29 + *(v27 + 48), v30, type metadata accessor for UseCaseGroup);
    v33 = *(v31 + 36);
    _s8CipherML12UseCaseGroupVWOcTm_2(v30 + v33, v32, type metadata accessor for NetworkManagerType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v11 = type metadata accessor for NetworkManagerType;
LABEL_6:
      _s8CipherML12UseCaseGroupVWOhTm_0(v10, v11);
      goto LABEL_7;
    }

    v34 = *(v0 + 176);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v36 = *(v34 + *(v35 + 64) + 8);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34 + *(v35 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 8))(v34, v37);
    if (!v36)
    {
      v10 = *(v0 + 200);

      v11 = type metadata accessor for UseCaseGroup;
      goto LABEL_6;
    }

    v39 = *(v0 + 152);
    v38 = *(v0 + 160);

    _s8CipherML12UseCaseGroupVWOcTm_2(v30 + v33, v38, type metadata accessor for NetworkConfig);
    v40 = (v38 + *(v39 + 20));
    *v40 = 0;
    v40[1] = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (*(v0 + 80))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
      type metadata accessor for AspireNetworkManager(0);
      v9 = v28;
      if (swift_dynamicCast())
      {
        v42 = *(v0 + 128);
        v41 = *(v0 + 136);
        v43 = *(v0 + 120);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v43, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

        if ((*(v41 + 48))(v43, 1, v42) != 1)
        {
          goto LABEL_38;
        }

        v44 = *(v0 + 200);
        v45 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v45, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v44, type metadata accessor for UseCaseGroup);
        goto LABEL_31;
      }

      v50 = *(v0 + 200);
      v51 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v51, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v50, type metadata accessor for UseCaseGroup);
    }

    else
    {
      v48 = *(v0 + 200);
      v49 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v49, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v48, type metadata accessor for UseCaseGroup);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      v9 = v28;
    }

    (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_31:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v52 = *(v0 + 8);

  return v52();
}

{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 304) = v0;
    v3 = TokenFetcherTask.run();
  }

  else
  {
    *(v2 + 296) = 0;

    v3 = TokenFetcherTask.run();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_0(v2, type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_0(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_0(v3, type metadata accessor for TokenFetcher);
  v4 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v9 = *(v0 + 240);
LABEL_14:
      v15 = *(v0 + 208);
      v14 = *(v0 + 216);
      v16 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v17 = v16 | (v5 << 6);
      v18 = (*(v9 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      _s8CipherML12UseCaseGroupVWOcTm_2(*(v9 + 56) + *(*(v0 + 192) + 72) * v17, v15, type metadata accessor for UseCaseGroup);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      v22 = *(v21 + 48);
      *v14 = v19;
      v14[1] = v20;
      _s8CipherML12UseCaseGroupVWObTm_2(v15, v14 + v22, type metadata accessor for UseCaseGroup);
      (*(*(v21 - 8) + 56))(v14, 0, 1, v21);

LABEL_15:
      *(v0 + 256) = v6;
      *(v0 + 264) = v5;
      v23 = *(v0 + 224);
      outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v23);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
      {

        if (v66)
        {
          swift_willThrow();
        }

        v49 = *(v0 + 8);

        return v49();
      }

      v25 = v4;
      v26 = *(v0 + 224);
      v27 = *(v0 + 200);
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);
      *(v0 + 272) = *v26;
      *(v0 + 280) = v26[1];
      _s8CipherML12UseCaseGroupVWObTm_2(v26 + *(v24 + 48), v27, type metadata accessor for UseCaseGroup);
      v30 = *(v29 + 36);
      _s8CipherML12UseCaseGroupVWOcTm_2(v27 + v30, v28, type metadata accessor for NetworkManagerType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v7 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v8 = type metadata accessor for NetworkManagerType;
LABEL_4:
      _s8CipherML12UseCaseGroupVWOhTm_0(v7, v8);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v31 = *(v0 + 176);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v33 = *(v31 + *(v32 + 64) + 8);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31 + *(v32 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v34 = type metadata accessor for URL();
    (*(*(v34 - 8) + 8))(v31, v34);
    if (!v33)
    {
      v7 = *(v0 + 200);

      v8 = type metadata accessor for UseCaseGroup;
      goto LABEL_4;
    }

    v36 = *(v0 + 152);
    v35 = *(v0 + 160);

    _s8CipherML12UseCaseGroupVWOcTm_2(v27 + v30, v35, type metadata accessor for NetworkConfig);
    v37 = (v35 + *(v36 + 20));
    *v37 = 0;
    v37[1] = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (!*(v0 + 80))
    {
      v45 = *(v0 + 200);
      v46 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v46, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v45, type metadata accessor for UseCaseGroup);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
LABEL_28:
      v4 = v25;
      (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
    type metadata accessor for AspireNetworkManager(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v47 = *(v0 + 200);
      v48 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v48, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v47, type metadata accessor for UseCaseGroup);
      goto LABEL_28;
    }

    v38 = *(v0 + 128);
    v39 = *(v0 + 136);
    v40 = *(v0 + 120);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v40, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {
      goto LABEL_37;
    }

    v41 = *(v0 + 200);
    v42 = *(v0 + 160);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v42, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v41, type metadata accessor for UseCaseGroup);
    v4 = v25;
LABEL_29:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  }

  while (v6);
LABEL_6:
  v10 = ((1 << *(v0 + 312)) + 63) >> 6;
  if (v10 <= (v5 + 1))
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = ((1 << *(v0 + 312)) + 63) >> 6;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v43 = *(v0 + 216);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v6 = 0;
      v5 = v12;
      goto LABEL_15;
    }

    v9 = *(v0 + 240);
    v6 = *(v9 + 8 * v13 + 64);
    ++v5;
    if (v6)
    {
      v5 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v51 = static TokenCache.shared;
  v52 = (*(v0 + 144) + *(*(v0 + 128) + 20));
  v53 = *v52;
  v54 = v52[1];
  v55 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v56 = swift_task_alloc();
  v56[2] = v51;
  v56[3] = v53;
  v56[4] = v54;
  os_unfair_lock_lock((v55 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v55 + 16), (v0 + 104));
  os_unfair_lock_unlock((v55 + 24));
  if (v65)
  {

    *(v0 + 304) = v65;
    v57 = TokenFetcherTask.run();
LABEL_47:
    v59 = v57;
    v60 = 0;
    v61 = 0;

    return MEMORY[0x2822009F8](v59, v60, v61);
  }

  v58 = *(v0 + 104);

  if (v58 >= 5)
  {
    *(v0 + 296) = 0;

    v57 = TokenFetcherTask.run();
    goto LABEL_47;
  }

  v62 = __OFSUB__(10, v58);
  v63 = 10 - v58;
  if (v62)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v59, v60, v61);
  }

  v64 = swift_task_alloc();
  *(v0 + 288) = v64;
  *v64 = v0;
  v64[1] = TokenFetcherTask.run();

  return TokenFetcher.fetchTokensInBackground(count:)(v63);
}

{
  v85 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.networking);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 248);
    v80 = *(v0 + 160);
    v81 = *(v0 + 200);
    v82 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v84 = v12;
    *v10 = 136446466;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v84);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_224E26000, v4, v5, "Failed to fetch more tokens for group '%{public}s': %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v80, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v81, type metadata accessor for UseCaseGroup);
    v16 = v82;
  }

  else
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v18, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v17, type metadata accessor for UseCaseGroup);
    v16 = v19;
  }

  _s8CipherML12UseCaseGroupVWOhTm_0(v16, type metadata accessor for TokenFetcher);
  v20 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v83 = *(v0 + 304);
  *(v0 + 248) = v83;
  if (!v21)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v25 = *(v0 + 240);
LABEL_19:
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v33 = v32 | (v22 << 6);
    v34 = (*(v25 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    _s8CipherML12UseCaseGroupVWOcTm_2(*(v25 + 56) + *(*(v0 + 192) + 72) * v33, v31, type metadata accessor for UseCaseGroup);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v38 = *(v37 + 48);
    *v30 = v35;
    v30[1] = v36;
    _s8CipherML12UseCaseGroupVWObTm_2(v31, v30 + v38, type metadata accessor for UseCaseGroup);
    (*(*(v37 - 8) + 56))(v30, 0, 1, v37);

LABEL_20:
    *(v0 + 256) = v21;
    *(v0 + 264) = v22;
    v39 = *(v0 + 224);
    outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v39);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {
      break;
    }

    v41 = v20;
    v42 = *(v0 + 224);
    v43 = *(v0 + 200);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    *(v0 + 272) = *v42;
    *(v0 + 280) = v42[1];
    _s8CipherML12UseCaseGroupVWObTm_2(v42 + *(v40 + 48), v43, type metadata accessor for UseCaseGroup);
    v46 = *(v44 + 36);
    _s8CipherML12UseCaseGroupVWOcTm_2(v43 + v46, v45, type metadata accessor for NetworkManagerType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *(v0 + 176);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v49 = *(v47 + *(v48 + 64) + 8);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47 + *(v48 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v50 = type metadata accessor for URL();
      (*(*(v50 - 8) + 8))(v47, v50);
      if (!v49)
      {
        v23 = *(v0 + 200);

        v24 = type metadata accessor for UseCaseGroup;
        goto LABEL_9;
      }

      v52 = *(v0 + 152);
      v51 = *(v0 + 160);

      _s8CipherML12UseCaseGroupVWOcTm_2(v43 + v46, v51, type metadata accessor for NetworkConfig);
      v53 = (v51 + *(v52 + 20));
      *v53 = 0;
      v53[1] = 0;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      if (*(v0 + 80))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
        type metadata accessor for AspireNetworkManager(0);
        v20 = v41;
        if (swift_dynamicCast())
        {
          v54 = *(v0 + 128);
          v55 = *(v0 + 136);
          v56 = *(v0 + 120);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v56, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

          if ((*(v55 + 48))(v56, 1, v54) != 1)
          {
            goto LABEL_42;
          }

          v57 = *(v0 + 200);
          v58 = *(v0 + 160);

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
          _s8CipherML12UseCaseGroupVWOhTm_0(v58, type metadata accessor for NetworkManagerConfig);
          _s8CipherML12UseCaseGroupVWOhTm_0(v57, type metadata accessor for UseCaseGroup);
          goto LABEL_34;
        }

        v63 = *(v0 + 200);
        v64 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v64, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v63, type metadata accessor for UseCaseGroup);
      }

      else
      {
        v61 = *(v0 + 200);
        v62 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v62, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v61, type metadata accessor for UseCaseGroup);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        v20 = v41;
      }

      (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_34:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
      if (!v21)
      {
LABEL_11:
        v26 = ((1 << *(v0 + 312)) + 63) >> 6;
        if (v26 <= (v22 + 1))
        {
          v27 = v22 + 1;
        }

        else
        {
          v27 = ((1 << *(v0 + 312)) + 63) >> 6;
        }

        v28 = v27 - 1;
        while (1)
        {
          v29 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            v59 = *(v0 + 216);
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
            (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
            v21 = 0;
            v22 = v28;
            goto LABEL_20;
          }

          v25 = *(v0 + 240);
          v21 = *(v25 + 8 * v29 + 64);
          ++v22;
          if (v21)
          {
            v22 = v29;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_42:
        _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v67 = static TokenCache.shared;
        v68 = (*(v0 + 144) + *(*(v0 + 128) + 20));
        v69 = *v68;
        v70 = v68[1];
        v71 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
        v72 = swift_task_alloc();
        v72[2] = v67;
        v72[3] = v69;
        v72[4] = v70;
        os_unfair_lock_lock((v71 + 24));
        partial apply for closure #1 in TokenCache.count(user:)((v71 + 16), (v0 + 104));
        os_unfair_lock_unlock((v71 + 24));
        v73 = *(v0 + 104);

        if (v73 >= 5)
        {
          *(v0 + 296) = 0;

          v74 = TokenFetcherTask.run();
          v75 = 0;
          v76 = 0;
        }

        else
        {
          v77 = __OFSUB__(10, v73);
          v78 = 10 - v73;
          if (!v77)
          {
            v79 = swift_task_alloc();
            *(v0 + 288) = v79;
            *v79 = v0;
            v79[1] = TokenFetcherTask.run();

            return TokenFetcher.fetchTokensInBackground(count:)(v78);
          }

          __break(1u);
        }

        return MEMORY[0x2822009F8](v74, v75, v76);
      }
    }

    else
    {
      v23 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v24 = type metadata accessor for NetworkManagerType;
LABEL_9:
      _s8CipherML12UseCaseGroupVWOhTm_0(v23, v24);
      if (!v21)
      {
        goto LABEL_11;
      }
    }
  }

  if (v83)
  {
    swift_willThrow();
  }

  v65 = *(v0 + 8);

  return v65();
}

uint64_t TokenFetcherTask.deinit()
{

  return v0;
}

uint64_t TokenFetcherTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance TokenFetcherTask()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return TokenFetcherTask.run()();
}

void specialized static TokenFetcherTask.submitBackgroundTask()()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedScheduler];
  v1 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
  v2 = [v0 taskRequestForIdentifier_];

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v4 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
  v5 = [v3 initWithIdentifier_];

  v2 = v5;
  [v2 setRequiresNetworkConnectivity_];
  [v2 setRequiresUserInactivity_];
  [v2 setScheduleAfter_];
  [v2 setRandomInitialDelay_];
  [v2 scheduleAfter];
  v7 = v6;
  [v2 randomInitialDelay];
  v9 = v8;

  [v2 setTrySchedulingBefore_];
  v12[0] = 0;
  if ([v0 submitTaskRequest:v2 error:v12])
  {
    v10 = v12[0];
LABEL_4:

    return;
  }

  v11 = v12[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML12UseCaseGroupVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML12UseCaseGroupVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *TokenFetcher.init(issuer:userToken:urlSession:privacyProxyFailClosed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for TokenFetcher(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t TokenFetcher.addTokenAuthorization(to:)(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = TokenFetcher.addTokenAuthorization(to:);

  return TokenFetcher.getToken()();
}

uint64_t TokenFetcher.addTokenAuthorization(to:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;

    return MEMORY[0x2822009F8](TokenFetcher.addTokenAuthorization(to:), 0, 0);
  }
}

uint64_t TokenFetcher.addTokenAuthorization(to:)()
{
  countAndFlagsBits = v0[8]._countAndFlagsBits;
  object = v0[8]._object;
  _StringGuts.grow(_:)(21);

  v0[1] = Data.base64EncodedString(options:)(0);
  v0[2]._countAndFlagsBits = 43;
  v0[2]._object = 0xE100000000000000;
  v0[3]._countAndFlagsBits = 45;
  v0[3]._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  v0[4]._countAndFlagsBits = v3;
  v0[4]._object = v5;
  v0[5]._countAndFlagsBits = 47;
  v0[5]._object = 0xE100000000000000;
  v0[6]._countAndFlagsBits = 95;
  v0[6]._object = 0xE100000000000000;
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x22AA60A80](v6, v8);

  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0x7A69726F68747541;
  v10._object = 0xED00006E6F697461;
  v9.value._object = 0x8000000225035BE0;
  URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);

  outlined consume of Data._Representation(object, countAndFlagsBits);
  v11 = v0->_object;

  return v11();
}

uint64_t TokenFetcher.backgroundTokenFetch()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TokenFetcher.backgroundTokenFetch(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = static TokenCache.shared;
  v3 = (v1 + *(type metadata accessor for TokenFetcher(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v5;
  os_unfair_lock_lock((v6 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v6 + 16), &v14);
  os_unfair_lock_unlock((v6 + 24));
  v8 = v14;

  if (v8 >= 5)
  {
    v13 = v0[1];

    return v13();
  }

  else
  {
    v10 = __OFSUB__(10, v8);
    v11 = 10 - v8;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[3] = v12;
      *v12 = v0;
      v12[1] = TokenFetcher.backgroundTokenFetch();

      return TokenFetcher.fetchTokensInBackground(count:)(v11);
    }
  }

  return result;
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TokenFetcher.issuer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenFetcher.userToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for TokenFetcher(0) + 20));

  return v1;
}

uint64_t TokenFetcher.urlSession.getter()
{
  type metadata accessor for TokenFetcher(0);
}

uint64_t TokenFetcher.tokenIssuerDirectoryURL.getter()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD00000000000002ALL;
  v6[1] = 0x8000000225037D30;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0, v2);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  return (*(v1 + 8))(v4, v0);
}

void TokenFetcher.urlRequest(url:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v9 = [v2 initWithURL_];

  v6 = type metadata accessor for TokenFetcher(0);
  [v9 _setPrivacyProxyFailClosed_];
  MEMORY[0x22AA60A80](*(v1 + *(v6 + 20)), *(v1 + *(v6 + 20) + 8));
  v7 = MEMORY[0x22AA609C0](0x20726572616542, 0xE700000000000000);

  v8 = MEMORY[0x22AA609C0](0x7A69726F68747541, 0xED00006E6F697461);
  [v9 setValue:v7 forHTTPHeaderField:v8];

  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t TokenFetcher.getToken()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TokenFetcher.getToken(), 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = static TokenCache.shared;
  v3 = (v1 + *(type metadata accessor for TokenFetcher(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock;
  v7 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v8 = swift_task_alloc();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  os_unfair_lock_lock((v7 + 24));
  partial apply for closure #1 in TokenCache.removeToken(user:)((v7 + 16), &v17);
  os_unfair_lock_unlock((v7 + 24));

  v9 = v18;
  if (v18 >> 60 == 15)
  {
    v10 = swift_task_alloc();
    v0[3] = v10;
    *v10 = v0;
    v10[1] = TokenFetcher.getToken();

    return TokenFetcher.fetchToken()();
  }

  else
  {
    v12 = v17;
    v13 = *(v2 + v6);
    v14 = swift_task_alloc();
    v14[2] = v2;
    v14[3] = v4;
    v14[4] = v5;
    os_unfair_lock_lock((v13 + 24));
    closure #1 in TokenCache.count(user:)partial apply((v13 + 16), &v17);
    os_unfair_lock_unlock((v13 + 24));
    v15 = v17;

    if (v15 < 5)
    {
      TokenFetcher.submitBackgroundTask()();
    }

    v16 = v0[1];

    return v16(v12, v9);
  }
}

uint64_t TokenFetcher.getToken()(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t TokenFetcher.fetchToken()()
{
  v1[2] = v0;
  v2 = type metadata accessor for TokenCache.CachedToken(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v1[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[10] = v3;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = TokenFetcher.fetchToken();

  return TokenFetcher.fetchContext()(v3);
}

{
  v1 = v0[6].i64[0];
  v2 = (v0[5].i64[0] + v0[11].i32[2]);
  v3 = v0[7];
  *v2 = vextq_s8(v3, v3, 8uLL);
  v2[1].i64[0] = v1;
  if ((v3.i64[0] & 0x2000000000000000) != 0)
  {
    v10 = v0[7].i64[1];
    v11 = v0[4].i64[1];
    v12 = v0[3].i64[1];
    v13 = v0[4].i64[0];
    v14 = v0[3].i64[0];
    v15 = v0[7].i64[0] & 0xDFFFFFFFFFFFFFFFLL;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[5].i64[0], v11, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
    outlined consume of TokenFetcher.TokenKey(*(v11 + *(v13 + 48)), *(v11 + *(v13 + 48) + 8));
    outlined init with take of TokenCache.CachedToken(v11, v12, type metadata accessor for TokenFetcher.IssuerInfo);
    v16 = (v12 + *(v14 + 20));
    *v16 = v10;
    v16[1] = v15;
    outlined copy of Data._Representation(v10, v15);
    v17 = swift_task_alloc();
    v0[8].i64[0] = v17;
    *v17 = v0;
    v17[1] = TokenFetcher.fetchToken();
    v18 = v0[3].i64[1];

    return TokenFetcher.fetchToken(context:)(v18);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[10].i64[0] = v4;
    *v4 = v0;
    v4[1] = TokenFetcher.fetchToken();
    v6 = v0[7].i64[0];
    v5 = v0[7].i64[1];
    v7 = v0[6].i64[0];
    v8 = v0[5].i64[0];

    return TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(v8, v5, v6, v7);
  }
}

{
  v1 = v0[18];
  v2 = v0[19];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v3 = v0[1];

  return v3(v2, v1);
}

{
  v1 = v0[22];
  v2 = ARCToken.Credential.present()();
  if (v1)
  {
    v4 = v0[10];
LABEL_11:

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

    v22 = v0[1];

    return v22();
  }

  v25 = v2;
  v26 = v3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = v0[21];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v9 = static TokenCache.shared;
  v10 = (v7 + *(type metadata accessor for TokenFetcher(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v9 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  os_unfair_lock_lock((v13 + 24));
  v14 = TokenCache.validTokens(tokensForUser:user:)(*(v13 + 16), v12, v11);
  (*(v9 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate))();
  v15 = (v6 + *(v8 + 20));
  *v15 = v5;
  v15[1] = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
  }

  v19 = v0[4];
  v18 = v0[5];
  v14[2] = v17 + 1;
  outlined init with take of TokenCache.CachedToken(v18, v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for TokenCache.CachedToken);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v13 + 16);
  *(v13 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v12, v11, isUniquelyReferenced_nonNull_native);

  *(v13 + 16) = v27;

  os_unfair_lock_unlock((v13 + 24));

  TokenCache.save()();
  if (v21)
  {
    v4 = v0[10];
    outlined consume of Data._Representation(v25, v26);
    goto LABEL_11;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v24 = v0[1];

  return v24(v25, v26);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 80), &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 80), &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 96) = a3;
  *(v7 + 104) = v3;

  if (v3)
  {
    v8 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  else
  {
    v9 = *(v7 + 64);
    *(v7 + 112) = a2;
    *(v7 + 120) = a1;
    *(v7 + 184) = *(v9 + 48);
    v8 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[17] = v2;

  v7 = v6[7];
  if (v2)
  {
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
    v8 = TokenFetcher.fetchToken();
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
    v8 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = TokenFetcher.fetchToken();
  }

  else
  {
    v4 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TokenCache.CachedToken(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[11] = v4;
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = TokenFetcher.fetchTokensInBackground(count:);

  return TokenFetcher.fetchContext()(v4);
}

{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {
    v4 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;

  if (v3)
  {
    v8 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {
    v9 = *(v7 + 72);
    *(v7 + 120) = a2;
    *(v7 + 128) = a1;
    *(v7 + 184) = *(v9 + 48);
    v8 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)()
{
  v1 = *(v0 + 104);
  v2 = (*(v0 + 88) + *(v0 + 184));
  v3 = *(v0 + 120);
  *v2 = vextq_s8(v3, v3, 8uLL);
  v2[1].i64[0] = v1;
  if ((v3.i64[0] & 0x2000000000000000) != 0)
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 120) & 0xDFFFFFFFFFFFFFFFLL;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 88), v11, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
    outlined consume of TokenFetcher.TokenKey(*(v11 + *(v13 + 48)), *(v11 + *(v13 + 48) + 8));
    outlined init with take of TokenCache.CachedToken(v11, v12, type metadata accessor for TokenFetcher.IssuerInfo);
    v18 = (v12 + *(v14 + 20));
    *v18 = v10;
    v18[1] = v17;
    outlined copy of Data._Representation(v10, v17);
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    v19[2] = v16;
    v19[3] = v15;
    v19[4] = v12;
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = TokenFetcher.fetchTokensInBackground(count:);

    return MEMORY[0x2822008A8]();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = TokenFetcher.fetchTokensInBackground(count:);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);

    return TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(v8, v5, v6, v7);
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {

    v2 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of TokenFetcher.TokenFetchContext(v0[8], type metadata accessor for TokenFetcher.TokenFetchContext);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  TokenCache.save()();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[11];
  v2 = v0[8];

  outlined destroy of TokenFetcher.TokenFetchContext(v2, type metadata accessor for TokenFetcher.TokenFetchContext);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v3 = v0[1];

  return v3();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = static TokenCache.shared;
  v6 = (v3 + *(type metadata accessor for TokenFetcher(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v5 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  os_unfair_lock_lock((v9 + 24));
  v10 = TokenCache.validTokens(tokensForUser:user:)(*(v9 + 16), v8, v7);
  (*(v5 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate))();
  v11 = (v2 + *(v4 + 20));
  *v11 = v1;
  v11[1] = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
  }

  v15 = v0[5];
  v14 = v0[6];
  v10[2] = v13 + 1;
  outlined init with take of TokenCache.CachedToken(v14, v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, type metadata accessor for TokenCache.CachedToken);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v9 + 16);
  *(v9 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v9 + 16) = v20;
  os_unfair_lock_unlock((v9 + 24));

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = v0[11];
  TokenCache.save()();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v18 = v0[1];

  return v18();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 88), &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenFetcher.fetchContext()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for TokenIssuerDirectory(0);
  v5 = swift_task_alloc();
  v2[21] = v5;
  v6 = swift_task_alloc();
  v2[22] = v6;
  *v6 = v2;
  v6[1] = TokenFetcher.fetchContext();

  return TokenFetcher.fetchTokenDirectory()(v5);
}

uint64_t TokenFetcher.fetchContext()()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = TokenFetcher.fetchContext();
  }

  else
  {
    v2 = TokenFetcher.fetchContext();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[19];
  v18 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  URL.absoluteString.getter();
  v0[9] = 0xD00000000000002ALL;
  v0[10] = 0x8000000225037D30;
  (*(v4 + 104))(v5, *MEMORY[0x277CC91D8], v6);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v5, v6);
  (*(v1 + 56))(v3, 0, 1, v18);
  URL.init(string:relativeTo:)();

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v1 + 48))(v2, 1, v18) == 1)
  {
    v7 = v0[21];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[17], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v8 = xmmword_2250298B0;
    *(v8 + 16) = 2;
    swift_willThrow();
LABEL_8:
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenIssuerDirectory);

    v17 = v0[1];

    return v17();
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v9 = URL.host(percentEncoded:)(1);
  if (!v9.value._object)
  {
    v13 = v0[20];
    v7 = v0[21];
    v14 = v0[18];
    v15 = v0[19];
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v16 = xmmword_2250298A0;
    *(v16 + 16) = 2;
    swift_willThrow();
    (*(v15 + 8))(v13, v14);
    goto LABEL_8;
  }

  v10 = v0[11];
  (*(v0[19] + 16))(v10, v0[20], v0[18]);
  *(v10 + *(type metadata accessor for TokenFetcher.IssuerInfo(0) + 20)) = v9;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = TokenFetcher.fetchContext();

  return TokenFetcher.fetchTokenKey()();
}

{
  TokenIssuerDirectory.findTokenKey(tokenKey:currentTime:)(*(v0 + 200), *(v0 + 208), implicit closure #1 in default argument 2 of TokenIssuerDirectory.isValid(tokenKey:tokenType:currentTime:), 0, v0 + 16);
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
    if (v1 == 58796)
    {
      if ((*(v0 + 64) & 1) == 0)
      {
        v3 = *(v0 + 56);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
        v4 = *(v0 + 208);
        goto LABEL_14;
      }

      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);
      v11 = *(v0 + 88);
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v15 = xmmword_2250298C0;
      v16 = 2;
    }

    else
    {
      if (v1 == 2)
      {
        v2 = *(v0 + 208);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
        v3 = 0;
        v4 = v2 | 0x2000000000000000;
LABEL_14:
        v19 = *(v0 + 168);
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
        outlined destroy of TokenFetcher.TokenFetchContext(v19, type metadata accessor for TokenIssuerDirectory);

        v20 = *(v0 + 8);
        v21 = *(v0 + 200);

        return v20(v21, v4, v3);
      }

      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);
      v11 = *(v0 + 88);
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v15 = v1;
      *(v15 + 8) = 0;
      v16 = 1;
    }

    *(v15 + 16) = v16;
    swift_willThrow();
    outlined consume of Data._Representation(v14, v13);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
  }

  else
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 88);
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v12 = xmmword_2250298D0;
    *(v12 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v6, v5);
  }

  outlined destroy of TokenFetcher.TokenFetchContext(v11, type metadata accessor for TokenFetcher.IssuerInfo);
  (*(v10 + 8))(v8, v9);
  outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenIssuerDirectory);

  v17 = *(v0 + 8);

  return v17();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  outlined destroy of TokenFetcher.TokenFetchContext(v0[11], type metadata accessor for TokenFetcher.IssuerInfo);
  (*(v4 + 8))(v1, v3);
  outlined destroy of TokenFetcher.TokenFetchContext(v2, type metadata accessor for TokenIssuerDirectory);

  v5 = v0[1];

  return v5();
}

uint64_t TokenFetcher.fetchContext()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = TokenFetcher.fetchContext();
  }

  else
  {
    v5 = TokenFetcher.fetchContext();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:), 0, 0);
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)()
{
  v44 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  *(v0 + 280) = __swift_project_value_buffer(v3, static Logger.networking);
  outlined init with copy of TokenFetcher(v2, v1, type metadata accessor for TokenFetcher.IssuerInfo);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = v11;
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.IssuerInfo);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "Fetching credential from '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  else
  {

    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.IssuerInfo);
  }

  v14 = (*(v0 + 200) + *(*(v0 + 264) + 20));
  specialized static ARCToken.request(issuerName:issuerKey:rateLimit:)(*v14, v14[1], *(v0 + 208), *(v0 + 216), *(v0 + 224), &v34);
  v15 = v34;
  v16 = BYTE2(v34);
  v17 = v35;
  *(v0 + 288) = v35;
  v18 = v36;
  v19 = v37;
  *(v0 + 296) = v36;
  v20 = v38;
  v21 = v39;
  v23 = v40;
  v22 = v41;
  *(v0 + 304) = v41;
  v24 = v42;
  *(v0 + 312) = v42;
  v25 = v43;
  *(v0 + 320) = v43;
  v26 = v18;
  *(v0 + 16) = v15;
  *(v0 + 18) = v16;
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;
  *(v0 + 48) = v19;
  *(v0 + 64) = v20;
  *(v0 + 80) = v21;
  *(v0 + 96) = v23;
  *(v0 + 104) = v22;
  *(v0 + 112) = v24;
  *(v0 + 128) = v25;
  TokenFetcher.urlRequest(url:)();
  URLRequest.httpMethod.setter();
  ARCToken.TokenRequest.requestData.getter(v15 | (v16 << 16), v17, v26);
  URLRequest.httpBody.setter();
  v27._countAndFlagsBits = 0x747065636341;
  v28.value._countAndFlagsBits = 0xD000000000000027;
  v28.value._object = 0x8000000225037E70;
  v27._object = 0xE600000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);
  v29._countAndFlagsBits = 0x2D746E65746E6F43;
  v29._object = 0xEC00000065707954;
  v30.value._object = 0x8000000225037EA0;
  v30.value._countAndFlagsBits = 0xD000000000000026;
  URLRequest.setValue(_:forHTTPHeaderField:)(v30, v29);
  type metadata accessor for TokenFetcher(0);
  v31 = swift_task_alloc();
  *(v0 + 328) = v31;
  *v31 = v0;
  v31[1] = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  v32 = *(v0 + 256);

  return MEMORY[0x28211ECF8](v32, 0);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = *(v0 + 352);
  if ([v2 statusCode] != 200 || (v4 = MEMORY[0x22AA609C0](0x2D746E65746E6F43, 0xEC00000065707954), v5 = objc_msgSend(v2, sel_valueForHTTPHeaderField_, v4), v4, !v5))
  {

    goto LABEL_11;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v0 + 352);
  if (v6 == 0xD000000000000027 && 0x8000000225037E70 == v8)
  {

    goto LABEL_18;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
LABEL_11:
    v12 = *(v0 + 352);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 352);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_224E26000, v13, v14, "Failed to fetch credential. %{public}@", v16, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    v19 = *(v0 + 344);
    v49 = *(v0 + 352);
    v20 = *(v0 + 336);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 240);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v26 = xmmword_2250298E0;
    *(v26 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v22, v21);
    outlined consume of Data._Representation(v20, v19);
    outlined destroy of ARCToken.ClientState(v0 + 40);

    (*(v24 + 8))(v23, v25);
    goto LABEL_14;
  }

LABEL_18:
  v29 = *(v0 + 360);
  v30 = *(v0 + 312);
  v31 = *(v0 + 304);
  v32 = *(v0 + 248);
  outlined init with copy of ARCToken.TokenChallenge(v0 + 40, v0 + 136);
  outlined copy of Data._Representation(v31, v30);
  v33 = dispatch thunk of ARCAwaitingActivationWrapper.makeCredential(responseData:)();
  v34 = v29;
  v35 = (v32 + 8);
  v36 = *(v0 + 344);
  v37 = *(v0 + 352);
  v38 = *(v0 + 336);
  v40 = *(v0 + 304);
  v39 = *(v0 + 312);
  v42 = *(v0 + 288);
  v41 = *(v0 + 296);
  if (v34)
  {
    (*v35)(*(v0 + 256), *(v0 + 240));
    outlined consume of Data._Representation(v40, v39);
    outlined destroy of ARCToken.TokenChallenge(v0 + 40);

    outlined consume of Data._Representation(v38, v36);
    outlined destroy of ARCToken.ClientState(v0 + 40);
    outlined consume of Data._Representation(v42, v41);
LABEL_14:

    v27 = *(v0 + 8);

    return v27();
  }

  v43 = v33;
  v48 = *(v0 + 120);
  (*v35)(*(v0 + 256), *(v0 + 240));
  outlined consume of Data._Representation(v42, v41);

  outlined consume of Data._Representation(v38, v36);
  outlined destroy of ARCToken.ClientState(v0 + 40);
  type metadata accessor for ARCToken.Credential();
  v44 = swift_allocObject();
  v45 = *(v0 + 56);
  *(v44 + 16) = *(v0 + 40);
  *(v44 + 32) = v45;
  v46 = *(v0 + 88);
  *(v44 + 48) = *(v0 + 72);
  *(v44 + 64) = v46;
  *(v44 + 80) = v40;
  *(v44 + 88) = v39;
  *(v44 + 96) = v48;
  *(v44 + 104) = v43;

  v47 = *(v0 + 8);

  return v47(v44);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  outlined consume of Data._Representation(v0[36], v0[37]);
  outlined destroy of ARCToken.ClientState((v0 + 5));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[42] = a1;
  v5[43] = a2;
  v5[44] = a3;
  v5[45] = v3;

  if (v3)
  {
    v6 = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  }

  else
  {
    v6 = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  v7 = *(type metadata accessor for TokenFetcher(0) - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TokenFetcher.fetchTokenTasks(context:count:), 0, 0);
}

void closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v30 = *(v0 + 104);
      v31 = *(v0 + 128);
      v29 = **(v0 + 72);
      v2 = type metadata accessor for TaskPriority();
      v3 = 0;
      v4 = *(v2 - 8);
      v28 = *(v4 + 56);
      v27 = (v4 + 48);
      v26 = (v4 + 8);
      do
      {
        v8 = *(v0 + 160);
        v32 = *(v0 + 152);
        v33 = v3;
        v9 = *(v0 + 136);
        v10 = *(v0 + 144);
        v11 = *(v0 + 120);
        v12 = *(v0 + 88);
        v13 = *(v0 + 96);
        v28(v8, 1, 1, v2);
        outlined init with copy of TokenFetcher(v12, v10, type metadata accessor for TokenFetcher);
        outlined init with copy of TokenFetcher(v13, v11, type metadata accessor for TokenFetcher.TokenFetchContext);
        v14 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v15 = v2;
        v16 = (v9 + *(v30 + 80) + v14) & ~*(v30 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        v18 = (v17 + 16);
        *(v17 + 24) = 0;
        outlined init with take of TokenCache.CachedToken(v10, v17 + v14, type metadata accessor for TokenFetcher);
        v19 = v17 + v16;
        v2 = v15;
        outlined init with take of TokenCache.CachedToken(v11, v19, type metadata accessor for TokenFetcher.TokenFetchContext);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8, v32, &_sScPSgMd, &_sScPSgMR);
        v20 = (*v27)(v32, 1, v15);
        v21 = *(v0 + 152);
        if (v20 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152), &_sScPSgMd, &_sScPSgMR);
          if (!*v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v26)(v21, v2);
          if (!*v18)
          {
LABEL_10:
            v22 = 0;
            v24 = 0;
            goto LABEL_11;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
LABEL_11:

        if (v24 | v22)
        {
          v5 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v22;
          *(v0 + 40) = v24;
        }

        else
        {
          v5 = 0;
        }

        v3 = v33 + 1;
        v6 = *(v0 + 160);
        v7 = *(v0 + 80);
        *(v0 + 48) = 1;
        *(v0 + 56) = v5;
        *(v0 + 64) = v29;
        swift_task_create();

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_sScPSgMd, &_sScPSgMR);
      }

      while (v33 + 1 != v7);
    }

    v25 = *(v0 + 8);

    v25();
  }
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v6 = type metadata accessor for TokenCache.CachedToken(0);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:);

  return TokenFetcher.fetchTokenInner(context:)(a4);
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = static TokenCache.shared;
  v7 = (v4 + *(type metadata accessor for TokenFetcher(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  outlined copy of Data._Representation(v2, v1);
  os_unfair_lock_lock((v10 + 24));
  v22 = v9;
  v11 = TokenCache.validTokens(tokensForUser:user:)(*(v10 + 16), v9, v8);
  (*(v6 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate))();
  v12 = (v3 + *(v5 + 20));
  *v12 = v2;
  v12[1] = v1 | 0x2000000000000000;
  outlined copy of Data._Representation(v2, v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[4];
  v18 = v0[5];
  v11[2] = v14 + 1;
  outlined init with take of TokenCache.CachedToken(v18, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, type metadata accessor for TokenCache.CachedToken);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v10 + 16);
  *(v10 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v22, v8, isUniquelyReferenced_nonNull_native);

  *(v10 + 16) = v23;
  os_unfair_lock_unlock((v10 + 24));
  outlined consume of Data._Representation(v16, v15);
  outlined consume of Data._Representation(v16, v15);

  v20 = v0[1];

  return v20();
}

uint64_t TokenFetcher.fetchTokenInner(context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenInner(context:), 0, 0);
}

uint64_t TokenFetcher.fetchTokenInner(context:)()
{
  v33 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v3, static Logger.networking);
  outlined init with copy of TokenFetcher(v2, v1, type metadata accessor for TokenFetcher.TokenFetchContext);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = v11;
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "Fetching token from '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  else
  {

    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
  }

  v14 = v0[7];
  v15 = v0[2];
  v16 = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v17 = specialized static PrivateAccessToken.newBlindRSATokenChallenge(for:)(*(v15 + *(v16 + 20)), *(v15 + *(v16 + 20) + 8));
  v0[10] = v17;
  v0[11] = v18;
  v19 = specialized static PrivateAccessToken.TokenRequest.request(challenge:publicKey:)(v17, v18, *(v15 + *(v14 + 20)), *(v15 + *(v14 + 20) + 8));
  v0[12] = v20;
  v0[13] = v21;
  v0[14] = v22;
  LODWORD(v15) = v19;
  v23 = v20;
  v24 = v21;
  TokenFetcher.urlRequest(url:)();
  URLRequest.httpMethod.setter();
  PrivateAccessToken.TokenRequest.requestData.getter(v15 & 0xFFFFFF, v23, v24);
  URLRequest.httpBody.setter();
  v25._countAndFlagsBits = 0x747065636341;
  v26.value._countAndFlagsBits = 0xD000000000000022;
  v26.value._object = 0x8000000225037DE0;
  v25._object = 0xE600000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v26, v25);
  v27._countAndFlagsBits = 0x2D746E65746E6F43;
  v27._object = 0xEC00000065707954;
  v28.value._object = 0x8000000225037E10;
  v28.value._countAndFlagsBits = 0xD000000000000021;
  URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);
  type metadata accessor for TokenFetcher(0);
  v29 = swift_task_alloc();
  v0[15] = v29;
  *v29 = v0;
  v29[1] = TokenFetcher.fetchTokenInner(context:);
  v30 = v0[6];

  return MEMORY[0x28211ECF8](v30, 0);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = *(v0 + 144);
  if ([v2 statusCode] != 200 || (v4 = MEMORY[0x22AA609C0](0x2D746E65746E6F43, 0xEC00000065707954), v5 = objc_msgSend(v2, sel_valueForHTTPHeaderField_, v4), v4, !v5))
  {

    goto LABEL_11;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v0 + 144);
  if (v6 == 0xD000000000000022 && 0x8000000225037DE0 == v8)
  {

    goto LABEL_18;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
LABEL_11:
    v12 = *(v0 + 144);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 144);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_224E26000, v13, v14, "Failed to fetch token. %{public}@", v16, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);
    v24 = *(v0 + 40);
    v42 = *(v0 + 48);
    v44 = *(v0 + 144);
    v40 = *(v0 + 136);
    v41 = *(v0 + 32);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v25 = xmmword_2250298E0;
    *(v25 + 16) = 2;
    swift_willThrow();

    outlined consume of Data._Representation(v21, v20);
    outlined consume of Data._Representation(v23, v22);
    outlined consume of Data._Representation(v19, v40);

    (*(v24 + 8))(v42, v41);
    goto LABEL_14;
  }

LABEL_18:
  v28 = *(v0 + 152);
  v29 = (*(**(v0 + 112) + 96))(*(v0 + 128), *(v0 + 136));
  v31 = v28;
  v32 = *(v0 + 136);
  v33 = *(v0 + 144);
  v34 = *(v0 + 128);
  v35 = *(v0 + 104);
  v36 = *(v0 + 88);
  v37 = *(v0 + 96);
  v38 = *(v0 + 80);
  if (v31)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

    outlined consume of Data._Representation(v34, v32);

    outlined consume of Data._Representation(v37, v35);
    outlined consume of Data._Representation(v38, v36);
LABEL_14:

    v26 = *(v0 + 8);

    return v26();
  }

  v43 = v30;
  v45 = v29;
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  outlined consume of Data._Representation(v34, v32);

  outlined consume of Data._Representation(v37, v35);
  outlined consume of Data._Representation(v38, v36);

  v39 = *(v0 + 8);

  return v39(v45, v43);
}

{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t TokenFetcher.fetchTokenInner(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = v3;

  if (v3)
  {
    v6 = TokenFetcher.fetchTokenInner(context:);
  }

  else
  {
    v6 = TokenFetcher.fetchTokenInner(context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t TokenFetcher.fetchTokenDirectory()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenDirectory(), 0, 0);
}

uint64_t TokenFetcher.fetchTokenDirectory()()
{
  TokenFetcher.tokenDirectoryRequest()(*(v0 + 48));
  type metadata accessor for TokenFetcher(0);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = TokenFetcher.fetchTokenDirectory();
  v2 = *(v0 + 48);

  return MEMORY[0x28211ECF8](v2, 0);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = *(v0 + 80);
  if ([v2 statusCode] != 200)
  {

LABEL_10:
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 80);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.networking);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 80);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v24;
      *v26 = v24;
      v27 = v24;
      _os_log_impl(&dword_224E26000, v22, v23, "Failed to fetch Token Issuer Directory. %{public}@", v25, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v26, -1, -1);
      MEMORY[0x22AA61F40](v25, -1, -1);
    }

    v28 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 64);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v31 = xmmword_225029900;
    *(v31 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v30, v28);

    goto LABEL_15;
  }

  v4 = *(v0 + 88);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for TokenIssuerDirectory(0);
  lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(&lazy protocol witness table cache variable for type TokenIssuerDirectory and conformance TokenIssuerDirectory, type metadata accessor for TokenIssuerDirectory, &protocol conformance descriptor for TokenIssuerDirectory);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = v4;

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.networking);
    v8 = v4;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_224E26000, v9, v10, "Failed to parse Token Issuer Directory: %{public}@", v11, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v12, -1, -1);
      MEMORY[0x22AA61F40](v11, -1, -1);
    }

    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v18 = xmmword_2250298F0;
    *(v18 + 16) = 2;
    swift_willThrow();

    outlined consume of Data._Representation(v17, v15);
LABEL_15:
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

    v32 = *(v0 + 8);
    goto LABEL_16;
  }

  v35 = *(v0 + 64);
  v34 = *(v0 + 72);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  outlined consume of Data._Representation(v35, v34);

  v32 = *(v0 + 8);
LABEL_16:

  return v32();
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t TokenFetcher.fetchTokenDirectory()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = v3;

  if (v3)
  {
    v6 = TokenFetcher.fetchTokenDirectory();
  }

  else
  {
    v6 = TokenFetcher.fetchTokenDirectory();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t TokenFetcher.fetchTokenKey()()
{
  v1[4] = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenKey(), 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v0[2] = 0xD000000000000018;
  v0[3] = 0x8000000225037D60;
  (*(v6 + 104))(v4, *MEMORY[0x277CC91D8], v5);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v4, v5);
  TokenFetcher.urlRequest(url:)();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for TokenFetcher(0);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = TokenFetcher.fetchTokenKey();
  v8 = v0[13];

  return MEMORY[0x28211ECF8](v8, 0);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 statusCode] == 200)
  {
    v2 = v0[17];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];
    v4 = v0[15];
    v5 = v0[16];

    return v3(v4, v5);
  }

  else
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v7 = v0[17];
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.networking);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[17];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&dword_224E26000, v10, v11, "Failed to fetch token key. %{public}@", v13, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v14, -1, -1);
      MEMORY[0x22AA61F40](v13, -1, -1);
    }

    v16 = v0[16];
    v17 = v0[17];
    v18 = v0[15];

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v19 = xmmword_225029910;
    *(v19 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v18, v16);

    (*(v0[12] + 8))(v0[13], v0[11]);

    v20 = v0[1];

    return v20();
  }
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t TokenFetcher.fetchTokenKey()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v6 = TokenFetcher.fetchTokenKey();
  }

  else
  {
    v6 = TokenFetcher.fetchTokenKey();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t TokenFetcher.fetchToken(context:)(uint64_t a1)
{
  v2[95] = v1;
  v2[89] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[101] = swift_task_alloc();
  v3 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v2[102] = v3;
  v2[103] = *(v3 + 64);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v4 = *(type metadata accessor for TokenFetcher(0) - 8);
  v2[106] = v4;
  v2[107] = *(v4 + 64);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

uint64_t TokenFetcher.fetchToken(context:)()
{
  v1 = v0[109];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v24 = v0[108];
  v25 = v0[104];
  v20 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[89];
  v22 = v7;
  v23 = v0[95];
  outlined init with copy of TokenFetcher(v23, v1, type metadata accessor for TokenFetcher);
  outlined init with copy of TokenFetcher(v7, v4, type metadata accessor for TokenFetcher.TokenFetchContext);
  v8 = *(v3 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v5 + 80);
  v21 = v2 + v10;
  v11 = (v2 + v10 + v9) & ~v10;
  v12 = swift_allocObject();
  outlined init with take of TokenCache.CachedToken(v1, v12 + v9, type metadata accessor for TokenFetcher);
  outlined init with take of TokenCache.CachedToken(v4, v12 + v11, type metadata accessor for TokenFetcher.TokenFetchContext);
  v13 = swift_allocObject();
  v0[110] = v13;
  *(v13 + 16) = &async function pointer to partial apply for implicit closure #1 in TokenFetcher.fetchToken(context:);
  *(v13 + 24) = v12;
  swift_asyncLet_begin();
  TokenFetcher.submitBackgroundTask()();
  v14 = os_transaction_create();
  v0[111] = v14;
  static TaskPriority.background.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  outlined init with copy of TokenFetcher(v23, v24, type metadata accessor for TokenFetcher);
  outlined init with copy of TokenFetcher(v22, v25, type metadata accessor for TokenFetcher.TokenFetchContext);
  v16 = (v8 + 32) & ~v8;
  v17 = (v21 + v16) & ~v10;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  outlined init with take of TokenCache.CachedToken(v24, v18 + v16, type metadata accessor for TokenFetcher);
  outlined init with take of TokenCache.CachedToken(v25, v18 + v17, type metadata accessor for TokenFetcher.TokenFetchContext);
  *(v18 + ((v20 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in TokenFetcher.fetchToken(context:), v18);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_sScPSgMd, &_sScPSgMR);

  return MEMORY[0x282200930](v0 + 2, v0 + 87, TokenFetcher.fetchToken(context:), v0 + 82);
}

{
  *(v1 + 896) = v0;
  if (v0)
  {
    v2 = TokenFetcher.fetchToken(context:);
  }

  else
  {
    v2 = TokenFetcher.fetchToken(context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[87];
  v0[113] = v1;
  v2 = v0[88];
  v0[114] = v2;
  outlined copy of Data._Representation(v1, v2);

  return MEMORY[0x282200920](v0 + 2, v0 + 87, TokenFetcher.fetchToken(context:), v0 + 96);
}

{
  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

{

  v1 = v0[1];
  v2 = v0[114];
  v3 = v0[113];

  return v1(v3, v2);
}

{
  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 16, v0 + 696, TokenFetcher.fetchToken(context:), v0 + 720);
}

{
  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = implicit closure #1 in TokenFetcher.fetchToken(context:);

  return TokenFetcher.fetchTokenInner(context:)(a2);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_;

  return v5();
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in TokenFetcher.fetchToken(context:), 0, 0);
}

uint64_t closure #1 in TokenFetcher.fetchToken(context:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = 3;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = closure #1 in TokenFetcher.fetchToken(context:);

  return MEMORY[0x2822008A8]();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenFetcher.fetchToken(context:);
  }

  else
  {

    v2 = closure #1 in TokenFetcher.fetchToken(context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  TokenCache.save()();
  if (v1)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.networking);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_224E26000, v4, v5, "Failed to fetch extra tokens: %{public}@", v6, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v7, -1, -1);
      MEMORY[0x22AA61F40](v6, -1, -1);
    }

    else
    {
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 48);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.networking);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_224E26000, v4, v5, "Failed to fetch extra tokens: %{public}@", v6, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t TokenFetcher.tokenDirectoryURL()()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TokenFetcher(0) + 28)) == 1)
  {
    if (!URL.host(percentEncoded:)(1).value._object)
    {
LABEL_5:
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 2;
      return swift_willThrow();
    }

    URL.init(string:)();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_5;
    }

    (*(v9 + 32))(v11, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_225022960;
    URLQueryItem.init(name:value:)();

    URL.appending(queryItems:)();

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14[0] = 0xD00000000000002ALL;
    v14[1] = 0x8000000225037D30;
    (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(path:directoryHint:)();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t TokenFetcher.tokenDirectoryRequest()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v32[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v32[-v11];
  result = TokenFetcher.tokenDirectoryURL()();
  if (!v1)
  {
    v39 = 0;
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v38 = a1;
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.networking);
    v37 = *(v4 + 16);
    v37(v9, v12, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = v17;
      v36 = swift_slowAlloc();
      v40 = v36;
      *v17 = 136446210;
      lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v34 = v15;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v4 + 8);
      v33 = v16;
      v22 = v9;
      v23 = v21;
      v21(v22, v3);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v40);

      v26 = v34;
      v25 = v35;
      *(v35 + 1) = v24;
      v27 = v25;
      _os_log_impl(&dword_224E26000, v26, v33, "Fetching token issuer directory from %{public}s", v25, 0xCu);
      v28 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA61F40](v28, -1, -1);
      MEMORY[0x22AA61F40](v27, -1, -1);
    }

    else
    {

      v29 = v9;
      v23 = *(v4 + 8);
      v23(v29, v3);
    }

    v37(v6, v12, v3);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v30._countAndFlagsBits = 0x747065636341;
    v31.value._object = 0x8000000225037D80;
    v31.value._countAndFlagsBits = 0xD00000000000002ALL;
    v30._object = 0xE600000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(v31, v30);
    return (v23)(v12, v3);
  }

  return result;
}

uint64_t outlined init with take of TokenCache.CachedToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(a1, a2, v6, v7, v8);
}

uint64_t type metadata completion function for TokenFetcher(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ManagedURLSession();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenFetcher.TokenKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TokenFetcher.TokenKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for TokenFetcher.IssuerInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of TokenFetcher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  v2 = *(type metadata accessor for TokenFetcher(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(v7, v8, v0 + v3, v0 + v6);
}

uint64_t partial apply for implicit closure #1 in TokenFetcher.fetchToken(context:)()
{
  v2 = *(type metadata accessor for TokenFetcher(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of XPCHandler.requestData(byLatitude:longitude:clientConfig:);

  return implicit closure #1 in TokenFetcher.fetchToken(context:)(v0 + v3, v0 + v6);
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TokenFetcher(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenFetcher.fetchToken(context:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t outlined destroy of TokenFetcher.TokenFetchContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *TokenCache.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TokenCache.shared;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.clearTokens(user:)(Swift::String user)
{
  v3 = *(v1 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v3 + 24));
  partial apply for closure #1 in TokenCache.clearTokens(user:)((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {
    TokenCache.save()();
  }
}

void TokenCache.removeToken(user:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in TokenCache.removeToken(user:)((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.count(user:)(Swift::String user)
{
  v3 = *(v1 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v3 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v2)
  {
    return v5;
  }

  return result;
}

void TokenCache.addToken(user:cached:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TokenCache.CachedToken(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v14 + 24));
  v15 = TokenCache.validTokens(tokensForUser:user:)(*(v14 + 16), a1, a2);
  (*(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate))();
  v16 = &v13[*(v10 + 28)];
  *v16 = a3;
  *(v16 + 1) = a4;
  outlined copy of TokenCache.CachedData(a3, a4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  outlined init with take of TokenCache.CachedToken(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v14 + 16);
  *(v14 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v14 + 16) = v21;
  os_unfair_lock_unlock((v14 + 24));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.save()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    v10 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
    os_unfair_lock_lock(v10 + 6);
    partial apply for closure #1 in TokenCache.save()(v13);
    os_unfair_lock_unlock(v10 + 6);
    if (v1)
    {

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v11 = v13[0];
      v12 = v13[1];
      Data.write(to:options:)();
      (*(v7 + 8))(v9, v6);
      outlined consume of Data._Representation(v11, v12);
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenCache.CachedData.CodingKeys()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.CredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.CredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedData.CredentialCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.TokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.TokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.CachedData.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMR);
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v11 + 8);
  if ((v22 & 0x2000000000000000) != 0)
  {
    v15 = v22 & 0xDFFFFFFFFFFFFFFFLL;
    LOBYTE(v24) = 1;
    lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v23;
    v25 = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    v16 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v6, v16);
  }

  else
  {
    LOBYTE(v24) = 0;
    lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v23;
    type metadata accessor for ARCToken.Credential();
    lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type ARCToken.Credential and conformance ARCToken.Credential, type metadata accessor for ARCToken.Credential, &protocol conformance descriptor for ARCToken.Credential);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v9, v7);
  }

  return (*v14)(v13, v10);
}

void *protocol witness for Decodable.init(from:) in conformance TokenCache.CachedData@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized TokenCache.CachedData.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t TokenCache.CachedToken.issuance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenCache.CachedToken.cached.getter()
{
  v1 = (v0 + *(type metadata accessor for TokenCache.CachedToken(0) + 20));
  v2 = *v1;
  outlined copy of TokenCache.CachedData(*v1, v1[1]);
  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenCache.CachedToken.CodingKeys()
{
  if (*v0)
  {
    return 0x646568636163;
  }

  else
  {
    return 0x65636E6175737369;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6175737369 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.CachedToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for TokenCache.CachedToken(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    outlined copy of TokenCache.CachedData(v13, v10);
    lazy protocol witness table accessor for type TokenCache.CachedData and conformance TokenCache.CachedData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of TokenCache.CachedData(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TokenCache.CachedToken.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for Date();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TokenCache.CachedToken(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  lazy protocol witness table accessor for type TokenCache.CachedData and conformance TokenCache.CachedData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  outlined init with copy of TokenCache.CachedToken(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of TokenCache.CachedToken(v18);
}

uint64_t TokenCache.CachedToken.init(issuance:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for TokenCache.CachedToken(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.TokenCacheFormat.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F46736E656B6F74 && a2 == 0xED00007265735572)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.TokenCacheFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.TokenCacheFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.TokenCacheFormat.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMd, &_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMR);
  lazy protocol witness table accessor for type [String : [TokenCache.CachedToken]] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *protocol witness for Decodable.init(from:) in conformance TokenCache.TokenCacheFormat@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized TokenCache.TokenCacheFormat.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static TokenCache.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t TokenCache.currentDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);

  return v1;
}

uint64_t TokenCache.__allocating_init(tokensForUser:file:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, v8 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = (v8 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  *v9 = a3;
  v9[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v10 + 16) = a1;

  *(v8 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock) = v10;
  return v8;
}

uint64_t TokenCache.init(tokensForUser:file:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, v4 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = (v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  *v9 = a3;
  v9[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v10 + 16) = a1;

  *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock) = v10;
  return v4;
}

uint64_t closure #1 in TokenCache.save()@<X0>(uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat();
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t TokenCache.saveAsync()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  static TaskPriority.background.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in TokenCache.saveAsync(), v5);
}

uint64_t closure #1 in TokenCache.saveAsync()()
{
  os_transaction_create();
  TokenCache.save()();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t closure #1 in TokenCache.removeToken(user:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = v41 - v10;
  v11 = type metadata accessor for TokenCache.CachedToken(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v46 = a2;
  v16 = TokenCache.validTokens(tokensForUser:user:)(v15, a3, a4);
  v50 = v16;
  result = specialized Collection.randomElement()(0, *(v16 + 16));
  if (v18)
  {

    v19 = 0;
    v20 = 0xF000000000000000;
    goto LABEL_9;
  }

  v21 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v16 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v22 = (v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result + *(v11 + 20));
  v19 = *v22;
  v23 = v22[1];
  if ((v23 & 0x2000000000000000) == 0)
  {

    v24 = v48;
    v25 = ARCToken.Credential.present()();
    if (v24)
    {
      outlined consume of TokenCache.CachedData(v19, v23);
    }

    v42 = v25;
    v43 = v23;
    v44 = v26;
    v48 = 0;
    v41[1] = *(v19 + 104);
    v33 = ARCToken.Credential.presentationContext.getter();
    v41[0] = v34;
    v35 = dispatch thunk of ARCCredentialWrapper.getRemainingPresentationCount(presentationContext:presentationLimit:)();
    outlined consume of Data._Representation(v33, v41[0]);
    if (!v35)
    {
      specialized Array.remove(at:)(v21, v14);
      outlined destroy of TokenCache.CachedToken(v14);
      v36 = v50;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *a1;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, a3, a4, isUniquelyReferenced_nonNull_native);

      *a1 = v49;
      v38 = v45;
      static TaskPriority.background.getter();
      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v46;

      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v38, &closure #1 in TokenCache.saveAsync()partial apply, v40);
    }

    outlined consume of TokenCache.CachedData(v19, v43);

    v19 = v42;
    v32 = v47;
    v20 = v44;
    goto LABEL_10;
  }

  v20 = v23 & 0xDFFFFFFFFFFFFFFFLL;
  outlined copy of Data._Representation(*v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
  specialized Array.remove(at:)(v21, v14);
  outlined destroy of TokenCache.CachedToken(v14);
  v27 = v50;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, a3, a4, v28);

  *a1 = v49;
  v29 = v45;
  static TaskPriority.background.getter();
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v46;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v29, &closure #1 in TokenCache.saveAsync()partial apply, v31);

LABEL_9:
  v32 = v47;
LABEL_10:
  *v32 = v19;
  v32[1] = v20;
  return result;
}

uint64_t TokenCache.validTokens(tokensForUser:user:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v14 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(*(a1 + 56) + 8 * v13);
  v16 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);

  v18 = v16(v17);
  MEMORY[0x28223BE20](v18);
  *&v22[-16] = v12;
  *&v22[-8] = v8;
  specialized _ArrayProtocol.filter(_:)(closure #1 in TokenCache.validTokens(tokensForUser:user:)partial apply, &v22[-32], v15);
  v20 = v19;
  (*(v10 + 8))(v12, v9);
  return v20;
}

int64_t specialized Collection.randomElement()(int64_t a1, int64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(result);
  v6 = __OFADD__(a1, v5);
  result = a1 + v5;
  if (v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < a1 || result > a2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for TokenCache.CachedToken(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of TokenCache.CachedToken(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t closure #1 in TokenCache.clearTokens(user:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v8 = v7;

  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v12;
    }

    result = specialized _NativeDictionary._delete(at:)(v6, v11);
    *a1 = v11;
  }

  return result;
}

uint64_t closure #1 in TokenCache.validTokens(tokensForUser:user:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TokenCache.CachedToken(0);
  Date.addingTimeInterval(_:)();
  v6 = static Date.> infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t closure #1 in TokenCache.count(user:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v39 = a4;
  v9 = type metadata accessor for TokenCache.CachedToken(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = TokenCache.validTokens(tokensForUser:user:)(*a1, a2, a3);
  if (*(v12 + 16))
  {

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;

  specialized Dictionary.subscript.setter(v13, a2, a3);
  v15 = *(v14 + 16);
  if (v15)
  {
    v38[1] = v5;
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v43;
    v17 = *(v10 + 80);
    v38[0] = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v19 = *(v10 + 72);
    v20 = v42;
    v40 = v19;
    v41 = v9;
    do
    {
      outlined init with copy of TokenCache.CachedToken(v18, v20);
      v21 = (v20 + *(v9 + 20));
      v22 = v21[1];
      if ((v22 & 0x2000000000000000) != 0)
      {
        outlined destroy of TokenCache.CachedToken(v20);
        v27 = 1;
      }

      else
      {
        v23 = *v21;

        v24 = ARCToken.Credential.presentationContext.getter();
        v26 = v25;
        v27 = dispatch thunk of ARCCredentialWrapper.getRemainingPresentationCount(presentationContext:presentationLimit:)();
        v28 = v26;
        v9 = v41;
        v20 = v42;
        outlined consume of Data._Representation(v24, v28);
        outlined destroy of TokenCache.CachedToken(v20);
        v29 = v23;
        v19 = v40;
        outlined consume of TokenCache.CachedData(v29, v22);
      }

      v43 = v16;
      v31 = v16[2];
      v30 = v16[3];
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v20 = v42;
        v16 = v43;
      }

      v16[2] = v31 + 1;
      v16[v31 + 4] = v27;
      v18 += v19;
      --v15;
    }

    while (v15);

    v33 = v16[2];
    if (v33)
    {
LABEL_13:
      v34 = 0;
      v35 = v16 + 4;
      while (1)
      {
        v36 = *v35++;
        v37 = __OFADD__(v34, v36);
        v34 += v36;
        if (v37)
        {
          break;
        }

        if (!--v33)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v34 = 0;
LABEL_19:

  *v39 = v34;
  return result;
}

uint64_t outlined copy of TokenCache.CachedData(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return outlined copy of Data._Representation(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.pruneCache()()
{
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v2 + 24));
  partial apply for closure #1 in TokenCache.pruneCache()((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    TokenCache.save()();
  }
}

uint64_t closure #1 in TokenCache.pruneCache()(void *a1, uint64_t *a2)
{
  v57 = *a2;
  v56 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v58 = v2;
  if (v8)
  {
    v9 = v5;
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v8, 0);
    v60 = specialized Sequence._copySequenceContents(initializing:)(&v61, (v10 + 4), v8, v7);
    v11 = v61;

    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(v11);
    if (v60 != v8)
    {
      goto LABEL_32;
    }

    v12 = v10;
    v5 = v9;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v60 = v12[2];
  if (!v60)
  {
  }

  v13 = 0;
  v54 = (a2 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v53 = (v5 + 8);
  v14 = v12 + 5;
  v59 = v12;
  while (v13 < v12[2])
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = v7[2];

    if (v17 && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16), (v19 & 1) != 0))
    {
      v20 = *(v7[7] + 8 * v18);
      v21 = *v54;

      v23 = v55;
      v24 = v21(v22);
      MEMORY[0x28223BE20](v24);
      v25 = v57;
      v26 = v58;
      *(&v52 - 2) = v23;
      *(&v52 - 1) = v25;
      specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TokenCache.validTokens(tokensForUser:user:), (&v52 - 4), v20);
      v28 = v27;
      v58 = v26;
      v29 = v23;
      v12 = v59;
      (*v53)(v29, v56);
      if (!*(v28 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
LABEL_14:

        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        v32 = v31;

        v33 = v62;
        if (v32)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = *v33;
          v61 = *v33;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v7 = v61;
          }

          specialized _NativeDictionary._delete(at:)(v30, v7);
          *v33 = v7;
        }

        goto LABEL_9;
      }
    }

    v35 = v62;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v35;
    v37 = v61;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_30;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if ((v36 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v36);
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_33;
      }

      v39 = v44;
    }

    v46 = v62;
    v12 = v59;
    if (v43)
    {

      v7 = v61;
      *(v61[7] + 8 * v39) = v28;
    }

    else
    {
      v7 = v61;
      v61[(v39 >> 6) + 8] |= 1 << v39;
      v47 = (v7[6] + 16 * v39);
      *v47 = v15;
      v47[1] = v16;
      *(v7[7] + 8 * v39) = v28;
      v48 = v7[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_31;
      }

      v7[2] = v50;
    }

    *v46 = v7;
LABEL_9:
    ++v13;
    v14 += 2;
    if (v60 == v13)
    {
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TokenCache.deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return v0;
}

uint64_t TokenCache.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of TokenCache.CachedToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenCache.CachedToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}