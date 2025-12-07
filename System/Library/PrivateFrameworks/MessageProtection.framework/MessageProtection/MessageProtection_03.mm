uint64_t SKIncomingRatchet.serializedData()()
{
  v1 = v0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  v2 = MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = (&v53 - v5);
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v6;
  v7 = type metadata accessor for MPPB_KeyAndIndex(0);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MPPB_SKIncomingRatchet(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  v15 = v14 + *(v12 + 24);
  *v15 = xmmword_22B48D7D0;
  v16 = v14 + *(v12 + 28);
  v61 = xmmword_22B48D7D0;
  *v16 = xmmword_22B48D7D0;
  v17 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys;
  swift_beginAccess();
  v18 = *(v0 + v17);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v53 = v15;
    v54 = v11;
    v55 = v16;
    v56 = v12;
    v57 = v14;
    v58 = v1;
    v73[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = v73[0];
    v21 = _HashTable.startBucket.getter();
    v22 = v68;
    v60 = v18;
    v59 = v18 + 64;
    v23 = v67;
    while (1)
    {
      v71 = v21;
      v72 = v20;
      v24 = *(v18 + 36);
      v25 = *(v23 + 48);
      v26 = v64;
      v69 = v19;
      v70 = v24;
      v27 = specialized Dictionary.subscript.getter(&v64[v25], v21, v24, 0, v18);
      v28 = v65;
      *v65 = v27;
      v29 = *(v23 + 48);
      v30 = type metadata accessor for SymmetricKey();
      v31 = *(v30 - 8);
      (*(v31 + 32))(v28 + v29, &v26[v25], v30);
      UnknownStorage.init()();
      v32 = v63;
      v33 = v22 + *(v63 + 20);
      *v33 = v61;
      v34 = v22 + *(v32 + 24);
      *v34 = 0;
      *(v34 + 8) = 1;
      v35 = v66;
      outlined init with copy of TetraSessionStates?(v28, v66, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
      v36 = *v35;
      (*(v31 + 8))(&v35[*(v23 + 48)], v30);
      *v34 = v36;
      *(v34 + 8) = 0;
      type metadata accessor for NSData();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v37 = v74;
      v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v20 = v72;
      outlined destroy of TetraSessionStates?(v28, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
      outlined consume of Data?(*v33, *(v33 + 8));
      *v33 = v38;
      *(v33 + 8) = v40;
      v73[0] = v20;
      v42 = *(v20 + 16);
      v41 = *(v20 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v20 = v73[0];
      }

      *(v20 + 16) = v42 + 1;
      v22 = v68;
      _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v68, v20 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v42, type metadata accessor for MPPB_KeyAndIndex);
      v18 = v60;
      if (v71 < 0 || v71 >= -(-1 << *(v60 + 32)))
      {
        break;
      }

      if (((*(v59 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v70 != *(v60 + 36))
      {
        goto LABEL_15;
      }

      v21 = _HashTable.occupiedBucket(after:)();
      v19 = v69 - 1;
      if (v69 == 1)
      {

        v1 = v58;
        v14 = v57;
        v16 = v55;
        v11 = v54;
        v15 = v53;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    *v14 = v20;
    v43 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet;
    swift_beginAccess();
    outlined init with copy of SymmetricRatchet(v1 + v43, v11, type metadata accessor for SymmetricRatchet);
    v44 = SymmetricRatchet.serializedData()();
    v46 = v45;
    outlined destroy of SymmetricRatchet(v11, type metadata accessor for SymmetricRatchet);
    outlined consume of Data?(*v15, *(v15 + 1));
    *v15 = v44;
    *(v15 + 1) = v46;
    v47 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
    if (v48 >> 60 != 15)
    {
      v49 = v47;
      v50 = v48;
      outlined consume of Data?(*v16, *(v16 + 1));
      *v16 = v49;
      *(v16 + 1) = v50;
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet, &protocol conformance descriptor for MPPB_SKIncomingRatchet);
      v51 = Message.serializedData(partial:)();
      outlined destroy of SymmetricRatchet(v14, type metadata accessor for MPPB_SKIncomingRatchet);
      return v51;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t SKIncomingRatchet.signingKeyIdentifier()()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v8;
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v9, v10);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v9, v10, v3);
    outlined consume of Data?(v9, v10);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data?(v9, v10);
    (*(v1 + 8))(v3, v0);
    v18 = v4;
    v19 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    v12 = v15;
    (*(v15 + 16))(boxed_opaque_existential_1, v6, v4);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v12 + 8))(v6, v4);
    v13 = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v13;
  }

  return result;
}

Class @objc SKOutgoingRatchet.serializedData()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);

  return v8.super.isa;
}

uint64_t SKIncomingRatchet.__ivar_destroyer()
{
  outlined destroy of SymmetricRatchet(v0 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet, type metadata accessor for SymmetricRatchet);
  v1 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey;
  v2 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t type metadata completion function for SKIncomingRatchet(uint64_t a1)
{
  result = type metadata accessor for SymmetricRatchet(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for P256.Signing.PublicKey();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA256();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA384();
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
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
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x231891EC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
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
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x231891EB0](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 2 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v29 = type metadata accessor for SymmetricKey();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v29 = type metadata accessor for SymmetricKey();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 2 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 2 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        outlined copy of Data._Representation(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 2 * a2);
    v9 = type metadata accessor for SymmetricKey();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of SymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of SymmetricRatchet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (key: SymmetricKey, index: UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for StatusKitErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StatusKitErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id FilesystemUtils.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FilesystemUtils();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of TetraSessionStates?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs14PrefixSequenceVy9CryptoKit12SHA384DigestVG_Tt0g5(uint64_t a1)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  MEMORY[0x28223BE20](v2);
  outlined init with copy of TetraSessionStates?(a1, &v21[-v3], &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (!swift_dynamicCast())
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v4 = outlined destroy of TetraSessionStates?(v23, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
    v23[0] = xmmword_22B48D660;
    MEMORY[0x28223BE20](v4);
    *&v21[-16] = a1;
    v7 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), &v21[-32]);
    v9 = v8;
    v10 = v5;
    v11 = *(&v23[0] + 1) >> 62;
    if ((*(&v23[0] + 1) >> 62) > 1)
    {
      if (v11 != 2)
      {
        if (!v6)
        {
          goto LABEL_18;
        }

        v16 = 0;
LABEL_30:
        if (v16 < v6)
        {
          goto LABEL_36;
        }

        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_32:

        goto LABEL_33;
      }

      v13 = *(*&v23[0] + 16);
      v12 = *(*&v23[0] + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        goto LABEL_37;
      }

      if (v6 != v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v11)
      {
        if (v6 == BYTE14(v23[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v23[0]), v23[0]))
      {
        goto LABEL_38;
      }

      if (v6 != DWORD1(v23[0]) - LODWORD(v23[0]))
      {
LABEL_13:
        if (v11 == 2)
        {
          v16 = *(*&v23[0] + 24);
        }

        else if (v11 == 1)
        {
          v16 = *&v23[0] >> 32;
        }

        else
        {
          v16 = BYTE14(v23[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v25, 0, 15);
    if (v5)
    {
      LOBYTE(v17) = 0;
      do
      {
        v18 = *(v7 + 2);
        if (v9 == v18)
        {
          break;
        }

        if (v9 >= v18)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        *(v25 + v17) = v7[v9 + 32];
        v17 = v17 + 1;
        if ((v17 >> 8))
        {
          goto LABEL_35;
        }

        if (v17 == 14)
        {
          *&v22 = v25[0];
          *(&v22 + 6) = *(v25 + 6);
          Data._Representation.append(contentsOf:)();
          LOBYTE(v17) = 0;
        }

        ++v9;
        --v10;
      }

      while (v10);
      if (v17)
      {
        *&v22 = v25[0];
        *(&v22 + 6) = *(v25 + 6);
        Data._Representation.append(contentsOf:)();
      }
    }

    goto LABEL_32;
  }

  outlined init with take of ContiguousBytes(v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v23[0] = v22;
  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_33:
  v19 = v23[0];
  outlined copy of Data._Representation(*&v23[0], *(&v23[0] + 1));
  outlined destroy of TetraSessionStates?(a1, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  outlined consume of Data._Representation(v19, *(&v19 + 1));
  return v19;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(void *a1)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v32 = a1;
  *&v33 = a1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v34, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_1(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  outlined destroy of TetraSessionStates?(v34, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = specialized Data._Representation.init(count:)(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v34[0]);
  v31[2] = &v32;
  v12 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  outlined copy of Data._Representation(*&v34[0], *(&v34[0] + 1));

  outlined consume of Data._Representation(v29, *(&v29 + 1));
  return v29;
}

uint64_t SecureEnclave.Kyber768.PrivateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v14;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.Kyber768.PrivateKey.init(dataRepresentation:)(v13[0], v13[1], v6);
    (*(v8 + 8))(v10, v7);
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v6, v11, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SecureEnclave.Kyber768.PrivateKey.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = (v2 + *(type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0) + 20));
  v9 = v8[1];
  v11 = *v8;
  v12 = v9;
  outlined copy of Data._Representation(v11, v9);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v11, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6D654B6172746574;
  v5 = 0xEF79654B34323031;
  if (a1 != 5)
  {
    v4 = 0x7061636E65;
    v5 = 0xE500000000000000;
  }

  v6 = 0x6463456172746574;
  v7 = 0xEC00000079654B68;
  if (a1 != 3)
  {
    v6 = 0x6D654B6172746574;
    v7 = 0xEE0079654B383637;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x654B3836376D656BLL;
  v9 = 0xE900000000000079;
  if (a1 != 1)
  {
    v8 = 0x4B343230316D656BLL;
    v9 = 0xEA00000000007965;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x79654B68646365;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000079;
        if (v10 != 0x654B3836376D656BLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA00000000007965;
        if (v10 != 0x4B343230316D656BLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x79654B68646365)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF79654B34323031;
      if (v10 != 0x6D654B6172746574)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7061636E65)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEC00000079654B68;
    if (v10 != 0x6463456172746574)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEE0079654B383637;
    if (v10 != 0x6D654B6172746574)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureEnclave.Kyber1024.PrivateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v14;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(v13[0], v13[1], v6);
    (*(v8 + 8))(v10, v7);
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v6, v11, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SecureEnclave.Kyber1024.PrivateKey.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = (v2 + *(type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0) + 20));
  v9 = v8[1];
  v11 = *v8;
  v12 = v9;
  outlined copy of Data._Representation(v11, v9);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v11, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMR);
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v16;
    v11 = v17;
    v15 = v4;
    v12 = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
    (*(v10 + 8))(v9, v7);
    (*(v11 + 32))(v12, v6, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = SecureEnclave.P256.KeyAgreement.PrivateKey.dataRepresentation.getter();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256.KeyAgreement.PublicKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    v11 = v8;
    v17 = v5;
    lazy protocol witness table accessor for type Data and conformance Data();
    v12 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v20;
    v14 = v21;
    outlined copy of Data._Representation(v20, v21);
    P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
    (*(v11 + 8))(v10, v12);
    outlined consume of Data._Representation(v13, v14);
    (*(v18 + 32))(v19, v7, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();
  v6 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = MEMORY[0x231891580](v6);
  v10 = v7;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v9, v10);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance P256.KeyAgreement.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance P256.KeyAgreement.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance P256.KeyAgreement.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance P256.KeyAgreement.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256.Signing.PublicKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v7;
    v16 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v11 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v13 = v20;
    outlined copy of Data._Representation(v19, v20);
    P256.Signing.PublicKey.init<A>(rawRepresentation:)();
    (*(v10 + 8))(v9, v11);
    outlined consume of Data._Representation(v12, v13);
    (*(v17 + 32))(v18, v6, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t P256.Signing.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();
  v6 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = MEMORY[0x231891720](v6);
  v10 = v7;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v9, v10);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance P256.Signing.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance P256.Signing.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance P256.Signing.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance P256.Signing.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber768.PrivateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Kyber768.PrivateKey();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v7;
    v16 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v11 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v13 = v20;
    outlined copy of Data._Representation(v19, v20);
    Kyber768.PrivateKey.init<A>(bytes:)();
    (*(v10 + 8))(v9, v11);
    outlined consume of Data._Representation(v12, v13);
    (*(v17 + 32))(v18, v6, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber768.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = Kyber768.PrivateKey.dataRepresentation.getter();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber1024.PrivateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Kyber1024.PrivateKey();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v7;
    v16 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v11 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v13 = v20;
    outlined copy of Data._Representation(v19, v20);
    Kyber1024.PrivateKey.init<A>(bytes:)();
    (*(v10 + 8))(v9, v11);
    outlined consume of Data._Representation(v12, v13);
    (*(v17 + 32))(v18, v6, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber1024.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = Kyber1024.PrivateKey.dataRepresentation.getter();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber1024.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber1024.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber768.PublicKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Kyber768.PublicKey();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v7;
    v16 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v11 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v13 = v20;
    outlined copy of Data._Representation(v19, v20);
    Kyber768.PublicKey.init<A>(dataRepresentation:)();
    (*(v10 + 8))(v9, v11);
    outlined consume of Data._Representation(v12, v13);
    (*(v17 + 32))(v18, v6, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber768.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = Kyber768.PublicKey.dataRepresentation.getter();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber768.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber768.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymmetricKey.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SymmetricKey.init<A>(data:)();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

uint64_t SymmetricKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMd, _ss22KeyedEncodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v8);
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymmetricKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SymmetricKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymmetricKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymmetricKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraOutgoingKeyContent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x79654B68646365;
  v5 = 0xEF79654B34323031;
  v6 = 0x6D654B6172746574;
  if (v2 != 5)
  {
    v6 = 0x7061636E65;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEC00000079654B68;
  v8 = 0x6463456172746574;
  if (v2 != 3)
  {
    v8 = 0x6D654B6172746574;
    v7 = 0xEE0079654B383637;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000079;
  v10 = 0x654B3836376D656BLL;
  if (v2 != 1)
  {
    v10 = 0x4B343230316D656BLL;
    v9 = 0xEA00000000007965;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraOutgoingKeyContent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79654B68646365;
  v3 = 0x6D654B6172746574;
  if (v1 != 5)
  {
    v3 = 0x7061636E65;
  }

  v4 = 0x6463456172746574;
  if (v1 != 3)
  {
    v4 = 0x6D654B6172746574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x654B3836376D656BLL;
  if (v1 != 1)
  {
    v5 = 0x4B343230316D656BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraOutgoingKeyContent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraOutgoingKeyContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 3;
  type metadata accessor for TetraECDHKey(0);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraECDHKey and conformance TetraECDHKey, type metadata accessor for TetraECDHKey, &protocol conformance descriptor for TetraECDHKey);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for TetraOutgoingKeyContent(0);
    LOBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    lazy protocol witness table accessor for type TetraKEM768Key? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    lazy protocol witness table accessor for type TetraKEM1024Key? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 6;
    outlined copy of Data?(v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data?(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

void TetraOutgoingKeyContent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = &v108 - v4;
  v5 = type metadata accessor for TetraKEM1024Key(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v113 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Kyber1024.PrivateKey();
  v120 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v116 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v119 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v127 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v108 - v14;
  v15 = type metadata accessor for TetraKEM768Key(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v115 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Kyber768.PrivateKey();
  v129 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v128 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v134 = &v108 - v22;
  v135 = type metadata accessor for TetraECDHKey(0);
  MEMORY[0x28223BE20](v135);
  v132 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v137 = *(v24 - 8);
  v138 = v24;
  MEMORY[0x28223BE20](v24);
  v131 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v136 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v141 = &v108 - v29;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMR);
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v31 = &v108 - v30;
  v32 = type metadata accessor for TetraOutgoingKeyContent(0);
  v33 = (v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &v35[v33[7]];
  v118 = v16;
  v38 = *(v16 + 56);
  v37 = v16 + 56;
  v146 = v36;
  v130 = v15;
  v125 = v38;
  v38();
  v39 = &v35[v33[8]];
  v114 = v6;
  v42 = *(v6 + 56);
  v40 = v6 + 56;
  v41 = v42;
  v145 = v39;
  v121 = v5;
  v42();
  v144 = &v35[v33[9]];
  *v144 = xmmword_22B48D7D0;
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();
  v139 = v31;
  v44 = v143;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v44)
  {
    v45 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v45);
    v54 = v145;
    v53 = v146;
LABEL_5:
    outlined destroy of TetraSessionStates?(v53, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(v54, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined consume of Data?(*v144, *(v144 + 1));
    return;
  }

  v47 = v136;
  v46 = v137;
  v111 = v37;
  v109 = v41;
  v110 = v40;
  v48 = v140;
  v112 = v35;
  v143 = v43;
  LOBYTE(v147) = 0;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey, MEMORY[0x277CC5388], &protocol conformance descriptor for SecureEnclave.P256.KeyAgreement.PrivateKey);
  v50 = v141;
  v49 = v142;
  v52 = v138;
  v51 = v139;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = 0;
  v55 = v47;
  outlined init with copy of TetraSessionStates?(v50, v47, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v56 = (*(v46 + 48))(v47, 1, v52);
  v57 = v48;
  if (v56 == 1)
  {
    outlined destroy of TetraSessionStates?(v55, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    LOBYTE(v147) = 3;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraECDHKey and conformance TetraECDHKey, type metadata accessor for TetraECDHKey, &protocol conformance descriptor for TetraECDHKey);
    v58 = v132;
    v59 = v108;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v59)
    {
      outlined destroy of TetraSessionStates?(v50, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      (*(v57 + 8))(v51, v49);
      v45 = v143;
      goto LABEL_4;
    }

    v108 = 0;
    v67 = v112;
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v58, v112, type metadata accessor for TetraECDHKey);
  }

  else
  {
    v60 = v46;
    v61 = v51;
    v62 = *(v46 + 32);
    v63 = v55;
    v64 = v131;
    v62(v131, v63, v52);
    v65 = *(v135 + 20);
    v66 = v112;
    v62(&v112[v65], v64, v52);
    v67 = v66;
    v51 = v61;
    v50 = v141;
    (*(v60 + 56))(&v67[v65], 0, 1, v52);
    v49 = v142;
    *v67 = 0;
  }

  LOBYTE(v147) = 1;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0], &protocol conformance descriptor for Kyber768.PrivateKey);
  v69 = v133;
  v68 = v134;
  v70 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v70)
  {
    outlined destroy of TetraSessionStates?(v50, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    (*(v57 + 8))(v51, v49);
    v54 = v145;
    __swift_destroy_boxed_opaque_existential_1(v143);
    outlined destroy of TetraECDHKey(v67, type metadata accessor for TetraECDHKey);
    v53 = v146;
    goto LABEL_5;
  }

  v71 = v128;
  outlined init with copy of TetraSessionStates?(v68, v128, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v72 = v129;
  if ((*(v129 + 48))(v71, 1, v69) == 1)
  {
    outlined destroy of TetraSessionStates?(v71, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    LOBYTE(v147) = 4;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM768Key and conformance TetraKEM768Key, type metadata accessor for TetraKEM768Key, &protocol conformance descriptor for TetraKEM768Key);
    v73 = v124;
    v74 = v130;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((*(v118 + 48))(v73, 1, v74) == 1)
    {
      outlined destroy of TetraSessionStates?(v73, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      outlined destroy of TetraSessionStates?(v146, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      v82 = 1;
    }

    else
    {
      v83 = v115;
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v73, v115, type metadata accessor for TetraKEM768Key);
      v84 = v146;
      outlined destroy of TetraSessionStates?(v146, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v83, v84, type metadata accessor for TetraKEM768Key);
      v82 = 0;
    }

    v81 = v140;
    (v125)(v146, v82, 1, v130);
  }

  else
  {
    v75 = *(v72 + 32);
    v76 = v123;
    v75(v123, v71, v69);
    v77 = v146;
    outlined destroy of TetraSessionStates?(v146, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v75(v77, v76, v69);
    (*(v72 + 56))(v77, 0, 1, v69);
    v78 = v130;
    v79 = *(v130 + 20);
    v80 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    (*(*(v80 - 8) + 56))(v77 + v79, 1, 1, v80);
    v81 = v140;
    (v125)(v146, 0, 1, v78);
  }

  LOBYTE(v147) = 2;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8], &protocol conformance descriptor for Kyber1024.PrivateKey);
  v85 = v127;
  v86 = v126;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v87 = v119;
  outlined init with copy of TetraSessionStates?(v85, v119, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v88 = v120;
  if ((*(v120 + 48))(v87, 1, v86) == 1)
  {
    outlined destroy of TetraSessionStates?(v87, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    LOBYTE(v147) = 5;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM1024Key and conformance TetraKEM1024Key, type metadata accessor for TetraKEM1024Key, &protocol conformance descriptor for TetraKEM1024Key);
    v89 = v117;
    v90 = v121;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v91 = v122;
    if ((*(v114 + 48))(v89, 1, v90) == 1)
    {
      outlined destroy of TetraSessionStates?(v89, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      v95 = v145;
      outlined destroy of TetraSessionStates?(v145, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      v98 = 1;
    }

    else
    {
      v106 = v89;
      v107 = v113;
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v106, v113, type metadata accessor for TetraKEM1024Key);
      v95 = v145;
      outlined destroy of TetraSessionStates?(v145, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v107, v95, type metadata accessor for TetraKEM1024Key);
      v98 = 0;
    }
  }

  else
  {
    v92 = *(v88 + 32);
    v93 = v116;
    v92(v116, v87, v86);
    v94 = v145;
    outlined destroy of TetraSessionStates?(v145, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    v92(v94, v93, v86);
    v95 = v94;
    (*(v88 + 56))(v94, 0, 1, v86);
    v90 = v121;
    v96 = *(v121 + 20);
    v97 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v97 - 8) + 56))(v94 + v96, 1, 1, v97);
    v98 = 0;
    v91 = v122;
  }

  v99 = v141;
  (v109)(v95, v98, 1, v90);
  v149 = 6;
  lazy protocol witness table accessor for type Data and conformance Data();
  v100 = v142;
  v101 = v139;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined destroy of TetraSessionStates?(v127, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  outlined destroy of TetraSessionStates?(v134, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  outlined destroy of TetraSessionStates?(v99, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  (*(v81 + 8))(v101, v100);
  v102 = v147;
  v103 = v148;
  v104 = v144;
  outlined consume of Data?(*v144, *(v144 + 1));
  *v104 = v102;
  *(v104 + 1) = v103;
  v105 = v112;
  outlined init with copy of TetraOutgoingKeyContent(v112, v91);
  __swift_destroy_boxed_opaque_existential_1(v143);
  outlined destroy of TetraECDHKey(v105, type metadata accessor for TetraOutgoingKeyContent);
}

void TetraECDHSecKey.encode(to:)(void *a1, __SecKey *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = SecKeyCopyAttributes(a2);
  if (!v8)
  {
    __break(1u);
LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for TokenOID != -1)
  {
    swift_once();
  }

  v11 = TokenOID;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = TokenOID;
    v13 = __CocoaDictionary.lookup(_:)();

    if (v13)
    {
LABEL_10:

      v18[3] = v13;
      swift_dynamicCast();
      v16 = v18[0];
      v17 = v18[1];
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v5 + 8))(v7, v4);
      outlined consume of Data._Representation(v16, v17);
      return;
    }

    __break(1u);
  }

  if (!*(v10 + 16))
  {
    goto LABEL_12;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if (v15)
  {
    v13 = *(*(v10 + 56) + 8 * v14);
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

LABEL_13:

  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraECDHSecKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TetraECDHSecKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraECDHSecKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraECDHSecKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

SecKeyRef protocol witness for Decodable.init(from:) in conformance TetraECDHSecKey@<X0>(SecKeyRef *a1@<X8>, void *a2@<X0>)
{
  result = specialized TetraECDHSecKey.init(from:)(a2);
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
    *v4 = xmmword_22B48D660;
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
    *v4 = xmmword_22B48D660;
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
    *v4 = xmmword_22B48D660;
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
    *v4 = xmmword_22B48D660;
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

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

  v12 = MEMORY[0x231890D50]();
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

  v12 = MEMORY[0x231890D50]();
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

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SHA384Digest();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x277CC52C8], MEMORY[0x277CC52D0]);
  dispatch thunk of Sequence.makeIterator()();
  v11 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR) + 36));
  result = outlined destroy of TetraSessionStates?(v4, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v13 = v21[0];
  v14 = v21[1];
  if (!a2)
  {
    v17 = v11;
    v11 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = v11;
    v11 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      v15 = 0;
      v16 = v11 - a3;
      v17 = v11 - 1;
      while (1)
      {
        v18 = v15;
        v19 = v14 + v15;
        v20 = *(v13 + 16);
        if (v19 == v20)
        {
          v14 = v19;
          v11 = v18;
          goto LABEL_17;
        }

        if (v19 >= v20)
        {
          break;
        }

        *(a2 + v18) = *(v14 + v13 + 32 + v18);
        if (a3 - 1 == v18)
        {
          v11 = a3;
          goto LABEL_16;
        }

        v15 = v18 + 1;
        --v17;
        if (v11 == v18 + 1)
        {
          v16 = 0;
LABEL_16:
          v14 += v18 + 1;
          v17 = v16;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v17 = 0;
LABEL_17:
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v17;
    return v11;
  }

LABEL_19:
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
    v5 = MEMORY[0x2318919E0](15, a1 >> 16);
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

__n128 specialized closure #1 in closure #3 in Data.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  MEMORY[0x28223BE20](v8 - 8);
  outlined init with copy of TetraSessionStates?(a3, &v12 - v9, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v10 = specialized Sequence._copySequenceContents(initializing:)(&v13, a1, a2);
  result = v14;
  *a4 = v13;
  *(a4 + 8) = result;
  *(a4 + 24) = v10;
  return result;
}

id specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
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

{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

{
  v9[2] = *(v3 + 16);
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of TetraOutgoingKeyContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraOutgoingKeyContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraECDHKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of SecureEnclave.Kyber768.PrivateKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TetraKEM768Key? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM768Key and conformance TetraKEM768Key, type metadata accessor for TetraKEM768Key, &protocol conformance descriptor for TetraKEM768Key);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraKEM1024Key? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM1024Key and conformance TetraKEM1024Key, type metadata accessor for TetraKEM1024Key, &protocol conformance descriptor for TetraKEM1024Key);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Data? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Data? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data? and conformance <A> A?);
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingKeyContent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

SecKeyRef specialized TetraECDHSecKey.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v7 = v11;
  v8 = specialized TetraECDHSecKey.init(aksBlob:)(v10, v11);
  outlined consume of Data._Representation(v6, v7);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSObject and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSObject and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSObject and conformance NSObject);
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != NSData.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = NSData.subscript.getter();
        v12 = NSData.startIndex.getter();
        result = NSData.endIndex.getter();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = NSData.endIndex.getter();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SymmetricKey.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SymmetricKey.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for TetraSessionState(uint64_t a1)
{
  result = type metadata singleton initialization cache for TetraSessionState;
  if (!type metadata singleton initialization cache for TetraSessionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TetraSessionState(uint64_t a1)
{
  type metadata accessor for TetraRatchetState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PublicKey();
    if (v2 <= 0x3F)
    {
      type metadata accessor for P256.KeyAgreement.PublicKey?(319, v2);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for P256.KeyAgreement.PublicKey?)
  {
    type metadata accessor for P256.KeyAgreement.PublicKey();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for P256.KeyAgreement.PublicKey?);
    }
  }
}

void TetraSessionState.init(remoteTetraRegistration:sessionDST:)(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for P256.Signing.PublicKey();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TetraSessionState(0);
  v11 = v10[7];
  v12 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  v13 = TetraRegistration.computeKeysHash()();
  v14 = &a4[v10[8]];
  *v14 = v13;
  *(v14 + 1) = v15;
  v16 = [*&a1[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v31 = v17;
  v32 = v19;
  v20 = v33;
  P256.Signing.PublicKey.init<A>(compactRepresentation:)();
  if (v20)
  {

    outlined destroy of TetraSessionStates?(&a4[v11], &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined consume of Data._Representation(*v14, *(v14 + 1));
  }

  else
  {
    (*(v30 + 32))(&a4[v10[6]], v9, v26);
    a4[v10[9]] = 0;
    v21 = a1;
    v22 = v27;
    TetraRatchetState.init(asSenderWithRemoteTetraRegistration:sessionDST:)(v21, v28, v29, v27);
    outlined init with take of TetraRatchetState(v22, &a4[v10[5]]);
    v23 = *&v21[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];

    if (v23 >= 0xF)
    {
      v24 = 15;
    }

    else
    {
      v24 = v23;
    }

    *a4 = v24;
  }
}

unint64_t TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = v2 + *(type metadata accessor for TetraSessionState(0) + 20);
  v9 = *(v8 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v14[2] = a1;

  result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:), v14, v9);
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v11 != 0;
  }

  v12 = result & 0xFFFFFFFFFFFFFF8;
  if ((result & 0x8000000000000000) != 0)
  {
    v12 = result;
  }

  v13 = result;
  v11 = MEMORY[0x231891D10](v12);
  result = v13;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x231891C80](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    swift_beginAccess();
    type metadata accessor for SymmetricRatchet(0);
    specialized Dictionary.removeValue(forKey:)(a2, v7);
    outlined destroy of TetraSessionStates?(v7, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    swift_endAccess();

    return v11 != 0;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(v4 + 16))(v6, *a1 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v3);
  v8 = MEMORY[0x231891580](v7);
  v10 = v9;
  v11 = MEMORY[0x231891580]();
  v13 = v12;
  v14 = specialized static Data.== infix(_:_:)(v8, v10, v11, v12);
  outlined consume of Data._Representation(v11, v13);
  outlined consume of Data._Representation(v8, v10);
  (*(v4 + 8))(v6, v3);
  return v14;
}

uint64_t TetraSessionState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for TetraSessionState(0);
    LOBYTE(v14) = 1;
    type metadata accessor for TetraRatchetState(0);
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type TetraRatchetState and conformance TetraRatchetState, type metadata accessor for TetraRatchetState, &protocol conformance descriptor for TetraRatchetState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    type metadata accessor for P256.Signing.PublicKey();
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.Signing.PublicKey and conformance P256.Signing.PublicKey, MEMORY[0x277CC54E8], &protocol conformance descriptor for P256.Signing.PublicKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    type metadata accessor for P256.KeyAgreement.PublicKey();
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498], &protocol conformance descriptor for P256.KeyAgreement.PublicKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 4;
    outlined copy of Data._Representation(v14, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, v15);
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void TetraSessionState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v36 = type metadata accessor for P256.Signing.PublicKey();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMR);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TetraSessionState(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v16 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v17 = *(*(v16 - 8) + 56);
  v18 = v14;
  v41 = v15;
  v17(&v14[v15], 1, 1, v16);
  v19 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();
  v38 = v10;
  v20 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    outlined destroy of TetraSessionStates?(&v14[v41], &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  }

  else
  {
    v31 = v16;
    v40 = v11;
    v21 = v35;
    v22 = v36;
    LOBYTE(v43) = 0;
    v23 = v18;
    *v18 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v43) = 1;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type TetraRatchetState and conformance TetraRatchetState, type metadata accessor for TetraRatchetState, &protocol conformance descriptor for TetraRatchetState);
    v24 = v8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v40;
    outlined init with take of TetraRatchetState(v24, v23 + *(v40 + 20));
    LOBYTE(v43) = 2;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.Signing.PublicKey and conformance P256.Signing.PublicKey, MEMORY[0x277CC54E8], &protocol conformance descriptor for P256.Signing.PublicKey);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 32))(v23 + *(v25 + 24), v21, v22);
    LOBYTE(v43) = 3;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498], &protocol conformance descriptor for P256.KeyAgreement.PublicKey);
    v26 = v33;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v26, v23 + v41);
    v44 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v37;
    v28 = v39;
    v29 = v40;
    *(v23 + *(v40 + 32)) = v43;
    LOBYTE(v43) = 5;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v27 + 8))(v38, v28);
    *(v23 + *(v29 + 36)) = v30 & 1;
    outlined init with copy of TetraSessionState(v23, v32);
    __swift_destroy_boxed_opaque_existential_1(v42);
    outlined destroy of TetraRatchetState(v23, type metadata accessor for TetraSessionState);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraSessionState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x566E6F6973736573;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000019;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 1)
  {
    v5 = 0x5374656863746172;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraSessionState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TetraSessionState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraRatchetState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraRatchetState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraRatchetState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL specialized static TetraSessionState.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v39 = v7;
  v40 = v5;
  v41 = v4;
  v42 = v12;
  v15 = type metadata accessor for TetraSessionState(0);
  v16 = MEMORY[0x231891720]();
  v18 = v17;
  v19 = MEMORY[0x231891720]();
  v21 = v20;
  v22 = specialized static Data.== infix(_:_:)(v16, v18, v19, v20);
  outlined consume of Data._Representation(v19, v21);
  outlined consume of Data._Representation(v16, v18);
  if (!v22 || !specialized static Data.== infix(_:_:)(*(a1 + *(v15 + 32)), *(a1 + *(v15 + 32) + 8), *(a2 + *(v15 + 32)), *(a2 + *(v15 + 32) + 8)))
  {
    return 0;
  }

  v23 = *(v15 + 28);
  v24 = *(v42 + 48);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a1 + v23, v14);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a2 + v23, &v14[v24]);
  v26 = v40;
  v25 = v41;
  v27 = *(v40 + 48);
  if (v27(v14, 1, v41) != 1)
  {
    outlined init with copy of P256.KeyAgreement.PublicKey?(v14, v10);
    if (v27(&v14[v24], 1, v25) != 1)
    {
      v30 = v39;
      v31 = (*(v26 + 32))(v39, &v14[v24], v25);
      v32 = MEMORY[0x231891580](v31);
      v34 = v33;
      v35 = MEMORY[0x231891580]();
      v37 = v36;
      v28 = specialized static Data.== infix(_:_:)(v32, v34, v35, v36);
      outlined consume of Data._Representation(v35, v37);
      outlined consume of Data._Representation(v32, v34);
      v38 = *(v26 + 8);
      v38(v30, v25);
      v38(v10, v25);
      outlined destroy of TetraSessionStates?(v14, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      return v28;
    }

    (*(v26 + 8))(v10, v25);
    goto LABEL_11;
  }

  if (v27(&v14[v24], 1, v25) != 1)
  {
LABEL_11:
    outlined destroy of TetraSessionStates?(v14, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
    return 0;
  }

  outlined destroy of TetraSessionStates?(v14, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  return 1;
}

uint64_t outlined init with copy of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TetraSessionState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraSessionState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized TetraSessionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566E6F6973736573 && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374656863746172 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022B495BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B495BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B495C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022B495C30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata instantiation function for HKDFRatchet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HKDFRatchet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for HKDFRatchet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t protocol witness for SymmetricRatchetStep.ratchet(_:) in conformance HKDFRatchet<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v42 = a5;
  v48 = a1;
  v49 = a3;
  v46 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v7 = MEMORY[0x28223BE20](v50);
  v47 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v43 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = *v5;
  v39 = v5[1];
  v40 = v20;
  v22 = v5[2];
  v21 = v5[3];
  v38 = v5[4];
  v23 = type metadata accessor for SymmetricKey();
  v24 = *(v23 - 8);
  result = (*(v24 + 16))(v19, v49, v23);
  v41 = v14;
  *&v19[*(v14 + 48)] = a4;
  v49 = a4;
  if (a4 == -1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v19, v17);
    v26 = SymmetricKey.bitCount.getter();
    v36 = *(v24 + 8);
    v36(v17, v23);
    v37 = v26 / 8;
    v51 = v22;
    v52 = v21;
    v35 = *(v50 + 48);
    outlined copy of Data._Representation(v22, v21);
    v38 = v24;
    v42 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    lazy protocol witness table accessor for type Data and conformance Data();
    v27 = v43;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v51, v52);
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v19, v17);
    *(v27 + v35) = *&v17[*(v41 + 48)];
    v36(v17, v23);
    v28 = v50;
    v29 = *(v50 + 48);
    v51 = v40;
    v52 = v39;
    outlined copy of Data._Representation(v40, v39);
    v30 = v44;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined destroy of (key: SymmetricKey, index: UInt64)(v19);
    outlined consume of Data?(v51, v52);
    *(v30 + v29) = v49 + 1;
    v31 = v45;
    outlined init with take of (SymmetricKey, UInt64)(v27, v45);
    v32 = *(v31 + *(v28 + 48));
    v33 = *(v38 + 32);
    v33(v48, v31, v23);
    v34 = v47;
    outlined init with take of (SymmetricKey, UInt64)(v30, v47);
    v33(v46, v34, v23);
    return v32;
  }

  return result;
}

uint64_t outlined init with copy of (key: SymmetricKey, index: UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey()
{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

uint64_t outlined destroy of (key: SymmetricKey, index: UInt64)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (SymmetricKey, UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for TKClientTokenObject()
{
  result = lazy cache variable for type metadata for TKClientTokenObject;
  if (!lazy cache variable for type metadata for TKClientTokenObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TKClientTokenObject);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 24));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for TKClientTokenObject();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v54[2] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Kyber1024.PublicKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(0, 0);
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v48 = v15;
    v49 = v9;
    v50 = v10;
    v51 = v6;
    v52 = v7;
    v17 = v16;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v54[0] = 0;
    v19 = [v17 objectForObjectID:isa error:v54];

    if (v19)
    {
      v46 = a1;
      v47 = a2;
      v20 = v17;
      v21 = v54[0];
      v22 = [v19 publicKey];
      if (v22)
      {
        v23 = v22;
        v45 = v19;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v54[0] = v24;
        v54[1] = v26;
        outlined copy of Data._Representation(v24, v26);
        v27 = v49;
        Kyber1024.PublicKey.init<A>(dataRepresentation:)();
        outlined consume of Data._Representation(v24, v26);
        v28 = v50;
        v29 = *(v50 + 64);

        v44 = *(v52 + 32);
        v30 = v48;
        v44(v48 + v29, v27, v51);
        v31 = v46;
        *v30 = v45;
        v30[1] = v31;
        v30[2] = v47;
        outlined init with copy of TetraSessionStates?(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

        v32 = *(v13 + 1);
        v33 = *(v13 + 2);
        v34 = *(v28 + 64);
        v49 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
        v35 = v52;
        v36 = v53;
        v37 = &v53[*(v49 + 20)];
        *v37 = v32;
        *(v37 + 1) = v33;
        v38 = *(v35 + 8);
        v52 = v35 + 8;
        v47 = v38;
        v39 = v51;
        v38(&v13[v34], v51);
        outlined init with copy of TetraSessionStates?(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

        outlined consume of Data._Representation(*(v13 + 1), *(v13 + 2));
        v44(v36, &v13[*(v28 + 64)], v39);
        outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
        v40 = *v13;
        outlined consume of Data._Representation(*(v13 + 1), *(v13 + 2));
        v41 = *(v28 + 64);
        *&v36[*(v49 + 24)] = v40;
        v47(&v13[v41], v39);
      }

      else
      {
        lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v46, v47);
      }
    }

    else
    {
      v42 = v54[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
    }
  }
}

void SecureEnclave.Kyber768.PrivateKey.init(dataRepresentation:)(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v54[2] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Kyber768.PublicKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(0, 0);
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v48 = v15;
    v49 = v9;
    v50 = v10;
    v51 = v6;
    v52 = v7;
    v17 = v16;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v54[0] = 0;
    v19 = [v17 objectForObjectID:isa error:v54];

    if (v19)
    {
      v46 = a1;
      v47 = a2;
      v20 = v17;
      v21 = v54[0];
      v22 = [v19 publicKey];
      if (v22)
      {
        v23 = v22;
        v45 = v19;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v54[0] = v24;
        v54[1] = v26;
        outlined copy of Data._Representation(v24, v26);
        v27 = v49;
        Kyber768.PublicKey.init<A>(dataRepresentation:)();
        outlined consume of Data._Representation(v24, v26);
        v28 = v50;
        v29 = *(v50 + 64);

        v44 = *(v52 + 32);
        v30 = v48;
        v44(v48 + v29, v27, v51);
        v31 = v46;
        *v30 = v45;
        v30[1] = v31;
        v30[2] = v47;
        outlined init with copy of TetraSessionStates?(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

        v32 = *(v13 + 1);
        v33 = *(v13 + 2);
        v34 = *(v28 + 64);
        v49 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
        v35 = v52;
        v36 = v53;
        v37 = &v53[*(v49 + 20)];
        *v37 = v32;
        *(v37 + 1) = v33;
        v38 = *(v35 + 8);
        v52 = v35 + 8;
        v47 = v38;
        v39 = v51;
        v38(&v13[v34], v51);
        outlined init with copy of TetraSessionStates?(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

        outlined consume of Data._Representation(*(v13 + 1), *(v13 + 2));
        v44(v36, &v13[*(v28 + 64)], v39);
        outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v30, v13, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
        v40 = *v13;
        outlined consume of Data._Representation(*(v13 + 1), *(v13 + 2));
        v41 = *(v28 + 64);
        *&v36[*(v49 + 24)] = v40;
        v47(&v13[v41], v39);
      }

      else
      {
        lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v46, v47);
      }
    }

    else
    {
      v42 = v54[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
    }
  }
}

uint64_t one-time initialization function for SEPisAvailable()
{
  result = static SecureEnclave.isAvailable.getter();
  static MPStaticProperties.SEPisAvailable = result & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptoTokenKitError()
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptoTokenKitError()
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](0);
  return Hasher._finalize()();
}

void one-time initialization function for token()
{
  v0 = *MEMORY[0x277CDC170];
  v1 = objc_allocWithZone(MEMORY[0x277CC5600]);
  v2 = v0;
  v3 = [v1 initWithTokenID_];

  static SecureEnclave.token = v3;
}

id SecureEnclave.Kyber768.PrivateKey.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v22 - v8);
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(&v22 + *(v7 + 64) - v8, 0, 768, MEMORY[0x277CC55C8], 71);
  if (!v1)
  {
    *v9 = result;
    v9[1] = v11;
    v9[2] = v12;
    v24 = 0;
    outlined init with copy of TetraSessionStates?(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

    v13 = *(v6 + 1);
    v14 = *(v6 + 2);
    v15 = *(v3 + 64);
    v23 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    v16 = (a1 + *(v23 + 20));
    *v16 = v13;
    v16[1] = v14;
    v17 = type metadata accessor for Kyber768.PublicKey();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(&v6[v15], v17);
    outlined init with copy of TetraSessionStates?(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

    outlined consume of Data._Representation(*(v6 + 1), *(v6 + 2));
    (*(v18 + 32))(a1, &v6[*(v3 + 64)], v17);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
    v20 = *v6;
    outlined consume of Data._Representation(*(v6 + 1), *(v6 + 2));
    v21 = *(v3 + 64);
    *(a1 + *(v23 + 24)) = v20;
    return (v19)(&v6[v21], v17);
  }

  return result;
}

id SecureEnclave.Kyber1024.PrivateKey.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v22 - v8);
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(&v22 + *(v7 + 64) - v8, 0, 1024, MEMORY[0x277CC55E0], 116);
  if (!v1)
  {
    *v9 = result;
    v9[1] = v11;
    v9[2] = v12;
    v24 = 0;
    outlined init with copy of TetraSessionStates?(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

    v13 = *(v6 + 1);
    v14 = *(v6 + 2);
    v15 = *(v3 + 64);
    v23 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    v16 = (a1 + *(v23 + 20));
    *v16 = v13;
    v16[1] = v14;
    v17 = type metadata accessor for Kyber1024.PublicKey();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(&v6[v15], v17);
    outlined init with copy of TetraSessionStates?(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

    outlined consume of Data._Representation(*(v6 + 1), *(v6 + 2));
    (*(v18 + 32))(a1, &v6[*(v3 + 64)], v17);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v9, v6, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
    v20 = *v6;
    outlined consume of Data._Representation(*(v6 + 1), *(v6 + 2));
    v21 = *(v3 + 64);
    *(a1 + *(v23 + 24)) = v20;
    return (v19)(&v6[v21], v17);
  }

  return result;
}

id static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *, void, void), uint64_t a5)
{
  v28[24] = *MEMORY[0x277D85DE8];
  v9 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(a2, 0);
  if (v5)
  {
    return v6;
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48D990;
  v28[0] = *MEMORY[0x277CDC018];
  type metadata accessor for CFStringRef(0);
  v13 = v12;
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v14 = v28[0];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = a3;
  v28[0] = *MEMORY[0x277CDC028];
  v15 = v28[0];
  AnyHashable.init<A>(_:)();
  v16 = *MEMORY[0x277CDC058];
  if (*MEMORY[0x277CDC058])
  {
    *(inited + 168) = v13;
    *(inited + 144) = v16;
    v17 = v16;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28[0] = 0;
    v6 = [v10 createObjectWithAttributes:isa error:v28];

    if (!v6)
    {
      v27 = v28[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v6;
    }

    v19 = v28[0];
    v20 = [v6 objectID];
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = [v6 publicKey];
    if (v21)
    {
      v22 = v21;

      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v28[0] = v23;
      v28[1] = v25;
      a4(v28, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *closure #1 in SecureEnclave.Kyber768.PrivateKey.decapsulate(_:)(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B48D7C0;
  if (!*MEMORY[0x277CDC350])
  {
    __break(1u);
  }

  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11[0] = 0;
  v7 = [a1 decapsulate:v2.super.isa algorithms:isa parameters:v6 error:v11];

  v8 = v11[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

id specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(uint64_t a1, unint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for token != -1)
  {
    swift_once();
  }

  v4 = static SecureEnclave.token;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  v11[0] = 0;
  v6 = objc_allocWithZone(MEMORY[0x277CC5610]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithToken:v4 LAContext:a1 parameters:isa error:v11];

  v9 = v11[0];
  if (v11[0])
  {
    swift_willThrow();
    v9;
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError()
{
  result = lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError;
  if (!lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError;
  if (!lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError);
  }

  return result;
}

uint64_t outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

SecAccessControlRef TetraRatchetState.init(asSenderWithRemoteTetraRegistration:sessionDST:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v133 = a2;
  v142 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v118 = v105 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v9 = MEMORY[0x28223BE20](v135);
  v114 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v128 = v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = v105 - v13;
  v121 = type metadata accessor for TetraECDHKey(0);
  v14 = MEMORY[0x28223BE20](v121);
  v122 = (v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v129 = v105 - v16;
  v132 = type metadata accessor for TetraOutgoingKeyContent(0);
  v17 = MEMORY[0x28223BE20](v132);
  v117 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v131 = v105 - v20;
  MEMORY[0x28223BE20](v19);
  v127 = v105 - v21;
  v143 = type metadata accessor for Kyber1024.PublicKey();
  v22 = *(v143 - 1);
  v23 = MEMORY[0x28223BE20](v143);
  v123 = v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v105 - v25;
  v130 = type metadata accessor for KEM.EncapsulationResult();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v28 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SymmetricKey();
  v125 = *(v29 - 8);
  v31 = v125 + 56;
  v30 = *(v125 + 56);
  v116 = v29;
  v120 = v30;
  (v30)(a4, 1, 1);
  v32 = type metadata accessor for TetraRatchetState(0);
  *(a4 + *(v32 + 28)) = 0;
  v33 = *(v32 + 32);
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = v35 + 56;
  v137 = v33;
  v139 = a4;
  v115 = v36;
  v36(a4 + v33, 1, 1, v34);
  v38 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey;
  v39 = *&v142[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey];
  v141 = v22;
  v42 = *(v22 + 16);
  v40 = v22 + 16;
  v41 = v42;
  v42(v26, v39 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v143);
  v136 = v28;
  v138 = v26;
  v43 = v140;
  Kyber1024.PublicKey.encapsulate()();
  v140 = v43;
  if (v43)
  {

    (*(v141 + 8))(v138, v143);
LABEL_3:
    v44 = v139;
LABEL_13:
    outlined destroy of TetraSessionStates?(v44, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined destroy of TetraSessionStates?(v44 + v137, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v113 = v38;
  v109 = v40;
  v110 = v41;
  v105[1] = v37;
  v106 = v34;
  v107 = v32;
  v108 = v31;
  v45 = v135;
  v46 = v141 + 8;
  v111 = *(v141 + 8);
  v111(v138, v143);
  v47 = KEM.EncapsulationResult.encapsulated.getter();
  v49 = v48;
  v50 = v132;
  v51 = *(v132 + 20);
  v52 = type metadata accessor for TetraKEM768Key(0);
  v53 = *(*(v52 - 8) + 56);
  v54 = v131;
  v138 = v51;
  v53(&v51[v131], 1, 1, v52);
  v55 = *(v50 + 24);
  v56 = type metadata accessor for TetraKEM1024Key(0);
  v57 = *(*(v56 - 8) + 56);
  v112 = v55;
  v57(&v54[v55], 1, 1, v56);
  v58 = &v54[*(v50 + 28)];
  *v58 = xmmword_22B48D7D0;
  outlined consume of Data?(0, 0xF000000000000000);
  *v58 = v47;
  *(v58 + 1) = v49;
  v59 = v54;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  v141 = v46;
  v60 = v45;
  v61 = v133;
  if ((static MPStaticProperties.SEPisAvailable & 1) == 0)
  {
    v72 = [objc_opt_self() newCompactPrivateKey];
    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = v140;
    v77 = specialized TetraECDHSecKey.init(aksBlob:)(v73, v75);
    v71 = v113;
    if (!v76)
    {
      v78 = v77;
      v140 = 0;
      outlined consume of Data._Representation(v73, v75);
      v70 = v122;
      *v122 = v78;
      v79 = *(v121 + 20);
      v80 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
      (*(*(v80 - 8) + 56))(&v70[v79], 1, 1, v80);
      v65 = v142;
      v67 = v129;
      goto LABEL_15;
    }

    outlined consume of Data._Representation(v73, v75);
    v44 = v139;
    v65 = v142;
    v66 = v134;
LABEL_12:

    (*(v66 + 8))(v136, v130);
    outlined destroy of TetraSessionStates?(&v138[v59], &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(v59 + v112, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined consume of Data?(*v58, *(v58 + 1));
    goto LABEL_13;
  }

  v62 = v45;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  v44 = v139;
  v64 = v140;
  v65 = v142;
  v66 = v134;
  v67 = v129;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v68 = v126;
  SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  if (v64)
  {
    goto LABEL_12;
  }

  v140 = 0;
  v69 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v122;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v68, v122 + *(v121 + 20), &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  *v70 = 0;
  v71 = v113;
  v60 = v62;
  v61 = v133;
LABEL_15:
  outlined init with take of TetraOutgoingSymmetricRatchet(v70, v67, type metadata accessor for TetraECDHKey);
  outlined init with take of TetraOutgoingSymmetricRatchet(v67, v59, type metadata accessor for TetraECDHKey);
  v81 = v127;
  outlined init with take of TetraOutgoingSymmetricRatchet(v59, v127, type metadata accessor for TetraOutgoingKeyContent);
  v82 = *(v60 + 48);
  v83 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey;
  v84 = *&v65[v71] + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey;
  v85 = v123;
  v86 = v143;
  v110(v123, v84, v143);
  v87 = v61(1);
  v89 = v88;
  v90 = v128;
  v91 = &v65[v83];
  v92 = v136;
  v93 = v140;
  static TetraRatchetState.deriveRootAndChainKeyAsSender(theirECDHPublicKey:theirKyber1024Key:encapResult:ourOutgoingKeys:conversationDST:)(v128, v128 + v82, v91, v85, v136, v81, v87, v88);
  if (v93)
  {
    outlined consume of Data._Representation(v87, v89);

    v111(v85, v86);
    outlined destroy of TetraOutgoingSymmetricRatchet(v81, type metadata accessor for TetraOutgoingKeyContent);
    (*(v134 + 8))(v92, v130);
    goto LABEL_3;
  }

  outlined consume of Data._Representation(v87, v89);
  v111(v85, v86);
  v94 = v139;
  outlined destroy of TetraSessionStates?(v139, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v95 = v114;
  outlined init with copy of TetraSessionStates?(v90, v114, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v96 = v125;
  v97 = *(v125 + 32);
  v141 = *(v135 + 48);
  v142 = v97;
  v98 = v116;
  (v97)(v94, v95, v116);
  v120(v94, 0, 1, v98);
  v99 = *(v96 + 8);
  v125 = v96 + 8;
  v143 = v99;
  (v99)(v95 + v141, v98);
  v100 = v118;
  Date.init()();
  v115(v100, 0, 1, v106);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v100, v94 + v137, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v101 = v107;
  *(v94 + *(v107 + 20)) = MEMORY[0x277D84F90];
  outlined init with copy of TetraSessionStates?(v128, v95, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v102 = v119;
  (v142)(v119, v95 + *(v135 + 48), v98);
  v120(v102, 0, 1, v98);
  v103 = v127;
  v104 = v117;
  outlined init with copy of TetraRatchetState(v127, v117, type metadata accessor for TetraOutgoingKeyContent);
  TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v102, v104, v94 + *(v101 + 24));

  outlined destroy of TetraSessionStates?(v128, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  outlined destroy of TetraOutgoingSymmetricRatchet(v103, type metadata accessor for TetraOutgoingKeyContent);
  (*(v134 + 8))(v136, v130);
  return (v143)(v95, v98);
}

char *TetraRatchetState.init(asReceiverWithFullPrekey:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v60 - v5;
  v67 = type metadata accessor for TetraOutgoingKeyContent(0);
  v6 = MEMORY[0x28223BE20](v67);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v60 - v10;
  v76 = type metadata accessor for TetraKEM1024Key(0);
  v66 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v75 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v60 - v13;
  v14 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TetraECDHKey(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v61 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v80 = &v60 - v24;
  v25 = type metadata accessor for SymmetricKey();
  v26 = *(v25 - 8);
  v73 = *(v26 + 56);
  v74 = v25;
  v72 = v26 + 56;
  v73(a2, 1, 1);
  v27 = type metadata accessor for TetraRatchetState(0);
  *(a2 + *(v27 + 28)) = 0;
  v71 = v27;
  v28 = *(v27 + 32);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v81 = a2;
  *&v78 = v28;
  v63 = v31;
  v64 = v29;
  v62 = v30 + 56;
  (v31)(a2 + v28, 1, 1);
  LODWORD(a2) = [a1 isSEPKey];
  v82 = a1;
  v32 = [a1 keychainData];
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (a2)
  {
    v36 = v79;
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
    if (v36)
    {

LABEL_6:
      v40 = v81;
      outlined destroy of TetraSessionStates?(v81, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return outlined destroy of TetraSessionStates?(v40 + v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v42 = *(v18 + 20);
    v43 = v80;
    (*(v15 + 32))(&v80[v42], v17, v14);
    (*(v15 + 56))(&v43[v42], 0, 1, v14);
    *v43 = 0;
  }

  else
  {
    v37 = *(v18 + 20);
    (*(v15 + 56))(v21 + v37, 1, 1, v14);
    v38 = v79;
    v39 = specialized TetraECDHSecKey.init(aksBlob:)(v33, v35);
    outlined consume of Data._Representation(v33, v35);
    if (v38)
    {

      outlined destroy of TetraSessionStates?(v21 + v37, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      goto LABEL_6;
    }

    *v21 = v39;
    v44 = v61;
    outlined init with take of TetraOutgoingSymmetricRatchet(v21, v61, type metadata accessor for TetraECDHKey);
    outlined init with take of TetraOutgoingSymmetricRatchet(v44, v80, type metadata accessor for TetraECDHKey);
  }

  v79 = 0;
  result = [v82 tetraPrivateKey];
  if (result)
  {
    v45 = result;
    v46 = v77;
    outlined init with copy of TetraRatchetState(&result[OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey], v77, type metadata accessor for TetraKEM1024Key);

    v47 = v81;
    outlined destroy of TetraSessionStates?(v81, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v48 = v47;
    (v73)(v47, 1, 1, v74);
    v49 = v65;
    Date.init()();
    v63(v49, 0, 1, v64);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v49, v48 + v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v50 = v70;
    *(v48 + *(v71 + 20)) = MEMORY[0x277D84F90];
    outlined init with copy of TetraRatchetState(v80, v50, type metadata accessor for TetraECDHKey);
    outlined init with copy of TetraRatchetState(v46, v75, type metadata accessor for TetraKEM1024Key);
    v51 = v67;
    v52 = *(v67 + 20);
    v53 = type metadata accessor for TetraKEM768Key(0);
    v54 = *(*(v53 - 8) + 56);
    v54(v50 + v52, 1, 1, v53);
    v55 = *(v51 + 24);
    v56 = *(v66 + 56);
    v56(v50 + v55, 1, 1, v76);
    v57 = v50 + *(v51 + 28);
    v78 = xmmword_22B48D7D0;
    *v57 = xmmword_22B48D7D0;
    outlined destroy of TetraSessionStates?(v50 + v52, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v54(v50 + v52, 1, 1, v53);
    outlined destroy of TetraSessionStates?(v50 + v55, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined init with take of TetraOutgoingSymmetricRatchet(v75, v50 + v55, type metadata accessor for TetraKEM1024Key);
    v56(v50 + v55, 0, 1, v76);
    outlined consume of Data?(*v57, *(v57 + 8));
    *v57 = v78;
    v58 = v69;
    (v73)(v69, 1, 1, v74);
    v59 = v68;
    outlined init with copy of TetraRatchetState(v50, v68, type metadata accessor for TetraOutgoingKeyContent);
    TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v58, v59, v81 + *(v71 + 24));

    outlined destroy of TetraOutgoingSymmetricRatchet(v77, type metadata accessor for TetraKEM1024Key);
    outlined destroy of TetraOutgoingSymmetricRatchet(v80, type metadata accessor for TetraECDHKey);
    return outlined destroy of TetraOutgoingSymmetricRatchet(v50, type metadata accessor for TetraOutgoingKeyContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static P256.KeyAgreement.PublicKey.== infix(_:_:)()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  v3 = MEMORY[0x231891580]();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6;
}

void P256.KeyAgreement.PublicKey.hash(into:)(uint64_t a1)
{
  v1 = MEMORY[0x231891580]();
  v3 = v2;
  Data.hash(into:)();

  outlined consume of Data._Representation(v1, v3);
}

Swift::Int P256.KeyAgreement.PublicKey.hashValue.getter()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance P256.KeyAgreement.PublicKey()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance P256.KeyAgreement.PublicKey(uint64_t a1)
{
  v1 = MEMORY[0x231891580]();
  v3 = v2;
  Data.hash(into:)();

  outlined consume of Data._Representation(v1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance P256.KeyAgreement.PublicKey()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance P256.KeyAgreement.PublicKey()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  v3 = MEMORY[0x231891580]();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6;
}

void TetraOutgoingKeyContent.init(includesKEMKey:encap:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - v10;
  v40 = type metadata accessor for TetraECDHKey(0);
  v12 = MEMORY[0x28223BE20](v40);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  v17 = type metadata accessor for TetraOutgoingKeyContent(0);
  v18 = v17[5];
  v19 = type metadata accessor for TetraKEM768Key(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v43 = v18;
  v37[1] = v20 + 56;
  v38 = v21;
  v21(a4 + v18, 1, 1, v19);
  v22 = v17[6];
  v23 = type metadata accessor for TetraKEM1024Key(0);
  v24 = *(*(v23 - 8) + 56);
  v42 = v22;
  v24(a4 + v22, 1, 1, v23);
  v25 = a4 + v17[7];
  *v25 = xmmword_22B48D7D0;
  outlined consume of Data?(0, 0xF000000000000000);
  *v25 = a2;
  *(v25 + 8) = a3;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1)
  {
    if (!SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0))
    {
      __break(1u);
      return;
    }

    v26 = v44;
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
    if (!v26)
    {
      v27 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v11, v14 + *(v40 + 20), &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      *v14 = 0;
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of TetraSessionStates?(a4 + v43, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(a4 + v42, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined consume of Data?(*v25, *(v25 + 8));
    return;
  }

  v28 = [objc_opt_self() newCompactPrivateKey];
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = v44;
  v33 = specialized TetraECDHSecKey.init(aksBlob:)(v29, v31);
  outlined consume of Data._Representation(v29, v31);
  if (v32)
  {
    goto LABEL_11;
  }

  *v14 = v33;
  v34 = *(v40 + 20);
  v35 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  (*(*(v35 - 8) + 56))(v14 + v34, 1, 1, v35);
LABEL_9:
  outlined init with take of TetraOutgoingSymmetricRatchet(v14, v16, type metadata accessor for TetraECDHKey);
  outlined init with take of TetraOutgoingSymmetricRatchet(v16, a4, type metadata accessor for TetraECDHKey);
  if (v41)
  {
    v36 = v39;
    TetraKEM768Key.init()(v39);
    v38(v36, 0, 1, v19);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v36, a4 + v43, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  }
}

uint64_t TetraOutgoingKeyContent.decapsulate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for TetraOutgoingKeyContent(0);
  v14 = *(v13 + 20);
  v15 = v3;
  outlined init with copy of TetraSessionStates?(v3 + v14, v12, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v16 = type metadata accessor for TetraKEM768Key(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v12, 1, v16);
  outlined destroy of TetraSessionStates?(v12, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  if (v18 != 1)
  {
    v28 = v30;
    outlined init with copy of TetraSessionStates?(v15 + v14, v30, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    result = v17(v28, 1, v16);
    if (result != 1)
    {
      TetraKEM768Key.decapsulate(_:)(v34, v32);
      v26 = type metadata accessor for TetraKEM768Key;
      v27 = v28;
      return outlined destroy of TetraOutgoingSymmetricRatchet(v27, v26);
    }

    goto LABEL_9;
  }

  v19 = *(v13 + 24);
  v20 = v31;
  outlined init with copy of TetraSessionStates?(v3 + v19, v31, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v21 = type metadata accessor for TetraKEM1024Key(0);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v20, 1, v21);
  result = outlined destroy of TetraSessionStates?(v20, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  if (v23 == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = v29;
  outlined init with copy of TetraSessionStates?(v15 + v19, v29, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  result = v22(v25, 1, v21);
  if (result != 1)
  {
    TetraKEM1024Key.decapsulate(_:)(v34, v32);
    v26 = type metadata accessor for TetraKEM1024Key;
    v27 = v25;
    return outlined destroy of TetraOutgoingSymmetricRatchet(v27, v26);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ReceivingKeyTetraRatchet.CodingKeys()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0x6E69766965636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69766965636572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReceivingKeyTetraRatchet.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ReceivingKeyTetraRatchet.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReceivingKeyTetraRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReceivingKeyTetraRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReceivingKeyTetraRatchet.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey;
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  outlined destroy of TetraSessionStates?(v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined destroy of TetraOutgoingSymmetricRatchet(v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v5, v6);
}

uint64_t ReceivingKeyTetraRatchet.encode(to:)(void *a1)
{
  v25 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v25);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23 - v4;
  v5 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v27;
  (*(v6 + 16))(v8, v27 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v5);
  v30 = 0;
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498], &protocol conformance descriptor for P256.KeyAgreement.PublicKey);
  v14 = v28;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v28 = v10;
    (*(v6 + 8))(v8, v5);
    v16 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
    v17 = v13;
    swift_beginAccess();
    v18 = v13 + v16;
    v19 = v26;
    outlined init with copy of TetraSessionStates?(v18, v26, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v29 = 1;
    type metadata accessor for Kyber768.PublicKey();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Kyber768.PublicKey and conformance Kyber768.PublicKey, MEMORY[0x277CC55D0], &protocol conformance descriptor for Kyber768.PublicKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined destroy of TetraSessionStates?(v19, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v20 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
    swift_beginAccess();
    v21 = v17 + v20;
    v22 = v24;
    outlined init with copy of TetraRatchetState(v21, v24, type metadata accessor for TetraIncomingSymmetricRatchet);
    v31 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet and conformance TetraIncomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet, &protocol conformance descriptor for TetraIncomingSymmetricRatchet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of TetraOutgoingSymmetricRatchet(v22, type metadata accessor for TetraIncomingSymmetricRatchet);
    return (*(v28 + 8))(v12, v9);
  }
}

uint64_t ReceivingKeyTetraRatchet.init(from:)(void *a1)
{
  v2 = v1;
  v26 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
  v14 = type metadata accessor for Kyber768.PublicKey();
  v15 = *(*(v14 - 8) + 56);
  v34 = v13;
  v15(v2 + v13, 1, 1, v14);
  v16 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    outlined destroy of TetraSessionStates?(v2 + v34, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    type metadata accessor for ReceivingKeyTetraRatchet(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v27;
    v18 = v28;
    v33 = 0;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498], &protocol conformance descriptor for P256.KeyAgreement.PublicKey);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = *(v18 + 32);
    v31 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey;
    v20(v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v10, v29);
    v33 = 1;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Kyber768.PublicKey and conformance Kyber768.PublicKey, MEMORY[0x277CC55D0], &protocol conformance descriptor for Kyber768.PublicKey);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v34;
    swift_beginAccess();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v7, v2 + v21, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    swift_endAccess();
    v33 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet and conformance TetraIncomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet, &protocol conformance descriptor for TetraIncomingSymmetricRatchet);
    v22 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v12, v30);
    outlined init with take of TetraOutgoingSymmetricRatchet(v22, v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReceivingKeyTetraRatchet@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReceivingKeyTetraRatchet(0);
  v5 = swift_allocObject();
  result = ReceivingKeyTetraRatchet.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int TetraMessageTypes.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](a1 & 1);
  return Hasher._finalize()();
}

void static TetraRatchetState.deriveRootAndChainKeyAsSender(theirECDHPublicKey:theirKyber1024Key:encapResult:ourOutgoingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v151 = a6;
  v154 = a5;
  v142 = a4;
  v164 = a3;
  v141 = a2;
  v140 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v143 = *(v149 - 8);
  v11 = MEMORY[0x28223BE20](v149);
  v136 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v139 = v133 - v14;
  MEMORY[0x28223BE20](v13);
  v153 = v133 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v137 = (v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v147 = v133 - v19;
  v148 = type metadata accessor for SymmetricKey();
  v152 = *(v148 - 8);
  v20 = MEMORY[0x28223BE20](v148);
  v138 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v144 = v133 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v146 = v133 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v145 = v133 - v27;
  MEMORY[0x28223BE20](v26);
  v155 = v133 - v28;
  v150 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v29 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v31 = v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x6174536172746554, 0xEB000000002D7472);
  v34 = v33;
  v161 = a7;
  v162 = a8;
  *(&v159 + 1) = MEMORY[0x277CC9318];
  v160 = MEMORY[0x277CC9300];
  *&v158 = v32;
  *(&v158 + 1) = v33;
  v35 = __swift_project_boxed_opaque_existential_1(&v158, MEMORY[0x277CC9318]);
  v37 = *v35;
  v36 = v35[1];
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(v32, v34);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v37, v36, &v161);
  outlined consume of Data._Representation(v32, v34);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  v38 = v161;
  v39 = v162;
  v40 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v41 >> 60 == 15)
  {
    goto LABEL_33;
  }

  *&v156 = v38;
  *(&v156 + 1) = v39;
  *(&v159 + 1) = MEMORY[0x277CC9318];
  v160 = MEMORY[0x277CC9300];
  *&v158 = v40;
  *(&v158 + 1) = v41;
  v42 = v40;
  v43 = v41;
  v44 = __swift_project_boxed_opaque_existential_1(&v158, MEMORY[0x277CC9318]);
  v45 = *v44;
  v46 = v44[1];
  outlined copy of Data._Representation(v38, v39);
  outlined copy of Data?(v42, v43);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v45, v46, &v156);
  outlined consume of Data?(v42, v43);
  outlined consume of Data._Representation(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  v47 = v156;
  TetraECDHKey.publicKey.getter();
  v48 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v50 = v49;
  (*(v29 + 8))(v31, v150);
  if (v50 >> 60 != 15)
  {
    v163 = v47;
    v51 = MEMORY[0x277CC9318];
    *(&v159 + 1) = MEMORY[0x277CC9318];
    v160 = MEMORY[0x277CC9300];
    *&v158 = v48;
    *(&v158 + 1) = v50;
    v52 = __swift_project_boxed_opaque_existential_1(&v158, MEMORY[0x277CC9318]);
    v53 = *v52;
    v54 = v52[1];
    outlined copy of Data._Representation(v47, *(&v47 + 1));
    outlined copy of Data?(v48, v50);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v53, v54, &v163);
    outlined consume of Data?(v48, v50);
    outlined consume of Data._Representation(v47, *(&v47 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v158);
    TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v164, v155);
    v55 = MEMORY[0x277CC9300];
    if (v8)
    {
LABEL_30:
      outlined consume of Data._Representation(v163, *(&v163 + 1));
      return;
    }

    v56 = KEM.EncapsulationResult.encapsulated.getter();
    v58 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v58 != 2)
      {
        outlined consume of Data._Representation(v56, v57);
        v56 = 0;
        goto LABEL_14;
      }

      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      outlined consume of Data._Representation(v56, v57);
      v56 = v60 - v61;
      if (!__OFSUB__(v60, v61))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v58)
    {
      v59 = BYTE6(v57);
      outlined consume of Data._Representation(v56, v57);
      v56 = v59;
      goto LABEL_14;
    }

    v62 = HIDWORD(v56);
    v63 = v56;
    outlined consume of Data._Representation(v56, v57);
    if (__OFSUB__(v62, v63))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v56 = v62 - v63;
LABEL_14:
    v64 = I2OSP(value:outputByteCount:)(v56, 4);
    v66 = v65;
    v67 = KEM.EncapsulationResult.encapsulated.getter();
    v69 = v68;
    *&v156 = v64;
    *(&v156 + 1) = v66;
    *(&v159 + 1) = v51;
    v160 = v55;
    *&v158 = v67;
    *(&v158 + 1) = v68;
    v70 = __swift_project_boxed_opaque_existential_1(&v158, v51);
    v71 = *v70;
    v72 = v70[1];
    outlined copy of Data._Representation(v64, v66);
    outlined copy of Data._Representation(v67, v69);
    v73 = v71;
    v74 = v72;
    v75 = MEMORY[0x277CC9300];
    v76 = MEMORY[0x277CC9318];
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v73, v74, &v156);
    outlined consume of Data._Representation(v67, v69);
    outlined consume of Data._Representation(v64, v66);
    __swift_destroy_boxed_opaque_existential_1(&v158);
    v77 = v156;
    *(&v159 + 1) = v76;
    v160 = v75;
    v158 = v156;
    v78 = __swift_project_boxed_opaque_existential_1(&v158, v76);
    v79 = *v78;
    v80 = v78[1];
    outlined copy of Data._Representation(v77, *(&v77 + 1));
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v79, v80, &v163);
    outlined consume of Data._Representation(v77, *(&v77 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v158);
    v81 = Kyber1024.PublicKey.dataRepresentation.getter();
    v83 = v81;
    v84 = v82;
    v85 = v82 >> 62;
    if ((v82 >> 62) > 1)
    {
      if (v85 != 2)
      {
        v86 = 0;
        goto LABEL_24;
      }

      v88 = *(v81 + 16);
      v87 = *(v81 + 24);
      v86 = v87 - v88;
      if (!__OFSUB__(v87, v88))
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v85)
    {
      v86 = BYTE6(v82);
LABEL_24:
      v89 = I2OSP(value:outputByteCount:)(v86, 4);
      v91 = v90;
      *&v156 = v89;
      *(&v156 + 1) = v90;
      *(&v159 + 1) = v76;
      v160 = v75;
      *&v158 = v83;
      *(&v158 + 1) = v84;
      v92 = __swift_project_boxed_opaque_existential_1(&v158, v76);
      v93 = v75;
      v94 = *v92;
      v95 = v92[1];
      outlined copy of Data._Representation(v89, v91);
      v150 = v83;
      v142 = v84;
      outlined copy of Data._Representation(v83, v84);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v94, v95, &v156);
      outlined consume of Data._Representation(v89, v91);
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v96 = v156;
      *(&v159 + 1) = v76;
      v160 = v93;
      v158 = v156;
      v97 = __swift_project_boxed_opaque_existential_1(&v158, v76);
      v98 = *v97;
      v99 = v97[1];
      outlined copy of Data._Representation(v96, *(&v96 + 1));
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v98, v99, &v163);
      outlined consume of Data._Representation(v96, *(&v96 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v133[1] = type metadata accessor for __DataStorage();
      swift_allocObject();
      v100 = __DataStorage.init(length:)();
      *&v158 = 0x2000000000;
      *(&v158 + 1) = v100 | 0x4000000000000000;
      SymmetricKey.init<A>(data:)();
      v101 = v152;
      v102 = v148;
      (*(v152 + 16))(v144, v155, v148);
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
      SymmetricKey.init<A>(data:)();
      v103 = v147;
      KEM.EncapsulationResult.sharedSecret.getter();
      (*(v101 + 56))(v103, 0, 1, v102);
      v104 = v163;
      v134 = v104 >> 64;
      v135 = v104;
      type metadata accessor for NSData();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v151 = 0;
      v105 = v158;
      v106 = type metadata accessor for SHA384();
      v107 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      v108 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData, MEMORY[0x277CC9DD0]);
      v109 = v153;
      v164 = v106;
      v110 = v101;
      v154 = v107;
      v133[2] = v108;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();

      (*(v143 + 16))(v136, v109, v149);
      v111 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x277CC53C0]);
      v112 = v138;
      SymmetricKey.init<A>(data:)();
      v113 = v103;
      v114 = v137;
      outlined init with copy of TetraSessionStates?(v113, v137, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v115 = (*(v101 + 48))(v114, 1, v102);
      v133[3] = v111;
      if (v115 == 1)
      {
        outlined destroy of TetraSessionStates?(v114, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        swift_allocObject();
        __DataStorage.init(length:)();
        v116.super.isa = Data._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v117 = v151;
        SymmetricKey.withUnsafeBytes<A>(_:)();
        v151 = v117;
        v116.super.isa = v158;
        (*(v101 + 8))(v114, v102);
      }

      *&v158 = v116;
      v118 = v139;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v119 = *(v110 + 8);
      v152 = v110 + 8;
      v119(v112, v102);
      v120 = v143;
      v121 = *(v143 + 8);
      v122 = v153;
      v123 = v149;
      v138 = (v143 + 8);
      v137 = v121;
      v121(v153, v149);

      (*(v120 + 32))(v122, v118, v123);
      if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
      {
        swift_once();
      }

      v124 = tetraDHRatchetStepKDFString;
      v156 = tetraDHRatchetStepKDFString;
      *(&v159 + 1) = MEMORY[0x277CC9318];
      v160 = MEMORY[0x277CC9300];
      v125 = v135;
      v126 = v134;
      *&v158 = v135;
      *(&v158 + 1) = v134;
      v127 = __swift_project_boxed_opaque_existential_1(&v158, MEMORY[0x277CC9318]);
      v128 = *v127;
      v129 = v127[1];
      outlined copy of Data._Representation(v124, *(&v124 + 1));
      outlined copy of Data._Representation(v125, v126);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v128, v129, &v156);
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v158 = v156;
      lazy protocol witness table accessor for type Data and conformance Data();
      v130 = v144;
      v131 = v153;
      static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
      outlined consume of Data?(v158, *(&v158 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v156 = v158;
      v157 = v159;
      lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
      SymmetricKey.init<A>(data:)();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v156 = v158;
      v157 = v159;
      SymmetricKey.init<A>(data:)();
      outlined consume of Data._Representation(v150, v142);
      v132 = v148;
      v119(v130, v148);
      v137(v131, v123);
      outlined destroy of TetraSessionStates?(v147, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v119(v146, v132);
      v119(v145, v132);
      v119(v155, v132);
      goto LABEL_30;
    }

    if (!__OFSUB__(HIDWORD(v83), v83))
    {
      v86 = HIDWORD(v83) - v83;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void static TetraRatchetState.deriveRootAndChainKeyAsSender(rootKey:theirECDHPublicKey:theirKyber768Key:encapResult:ourOutgoingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, unint64_t a9)
{
  v183 = a7;
  v174 = a6;
  v162 = a5;
  v196 = a4;
  v164 = a3;
  v171 = a2;
  v170 = a1;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v175 = *(v181 - 8);
  v10 = MEMORY[0x28223BE20](v181);
  v166 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v168 = &v160 - v13;
  MEMORY[0x28223BE20](v12);
  v178 = &v160 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v167 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v177 = &v160 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = &v160 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v163 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v172 = (&v160 - v24);
  v180 = type metadata accessor for KEM.EncapsulationResult();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v173 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for SymmetricKey();
  v169 = *(v186 - 8);
  v26 = MEMORY[0x28223BE20](v186);
  v165 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v176 = &v160 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v185 = &v160 - v31;
  MEMORY[0x28223BE20](v30);
  v187 = &v160 - v32;
  v182 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v33 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v35 = &v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x7461526172746554, 0xED00002D74656863);
  v38 = v37;
  v193 = a8;
  v194 = a9;
  v39 = MEMORY[0x277CC9318];
  *(&v191 + 1) = MEMORY[0x277CC9318];
  v192 = MEMORY[0x277CC9300];
  *&v190 = v36;
  *(&v190 + 1) = v37;
  v40 = __swift_project_boxed_opaque_existential_1(&v190, MEMORY[0x277CC9318]);
  v42 = *v40;
  v41 = v40[1];
  outlined copy of Data._Representation(a8, a9);
  outlined copy of Data._Representation(v36, v38);
  v43 = v184;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v42, v41, &v193);
  outlined consume of Data._Representation(v36, v38);
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v44 = v193;
  v45 = v194;
  v46 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v47 >> 60 == 15)
  {
    goto LABEL_40;
  }

  *&v188 = v44;
  *(&v188 + 1) = v45;
  *(&v191 + 1) = v39;
  v192 = MEMORY[0x277CC9300];
  *&v190 = v46;
  *(&v190 + 1) = v47;
  v48 = v46;
  v49 = v47;
  v50 = __swift_project_boxed_opaque_existential_1(&v190, v39);
  v51 = *v50;
  v52 = v50[1];
  outlined copy of Data._Representation(v44, v45);
  outlined copy of Data?(v48, v49);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v51, v52, &v188);
  outlined consume of Data?(v48, v49);
  outlined consume of Data._Representation(v44, v45);
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v53 = v188;
  TetraECDHKey.publicKey.getter();
  v54 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v56 = v55;
  (*(v33 + 8))(v35, v182);
  if (v56 >> 60 == 15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v195 = v53;
  *(&v191 + 1) = MEMORY[0x277CC9318];
  v192 = MEMORY[0x277CC9300];
  *&v190 = v54;
  *(&v190 + 1) = v56;
  v57 = __swift_project_boxed_opaque_existential_1(&v190, MEMORY[0x277CC9318]);
  v58 = *v57;
  v59 = v57[1];
  outlined copy of Data._Representation(v53, *(&v53 + 1));
  outlined copy of Data?(v54, v56);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v58, v59, &v195);
  outlined consume of Data?(v54, v56);
  outlined consume of Data._Representation(v53, *(&v53 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v60 = v187;
  TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v196, v187);
  if (v43)
  {
LABEL_37:
    outlined consume of Data._Representation(v195, *(&v195 + 1));
    return;
  }

  v61 = v174;
  v62 = v172;
  outlined init with copy of TetraSessionStates?(v174, v172, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v63 = v179;
  v64 = v179 + 48;
  v65 = *(v179 + 48);
  v66 = v180;
  v67 = v65(v62, 1, v180);
  v196 = v64;
  v184 = v65;
  if (v67 == 1)
  {
    outlined destroy of TetraSessionStates?(v62, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v68 = I2OSP(value:outputByteCount:)(0, 4);
    v70 = v69;
    v71 = MEMORY[0x277CC9318];
    *(&v191 + 1) = MEMORY[0x277CC9318];
    v72 = MEMORY[0x277CC9300];
    v192 = MEMORY[0x277CC9300];
    *&v190 = v68;
    *(&v190 + 1) = v69;
    v73 = __swift_project_boxed_opaque_existential_1(&v190, MEMORY[0x277CC9318]);
    v74 = *v73;
    v75 = v73[1];
    outlined copy of Data._Representation(v68, v70);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v74, v75, &v195);
    outlined consume of Data._Representation(v68, v70);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    v76 = I2OSP(value:outputByteCount:)(0, 4);
    v78 = v77;
    *(&v191 + 1) = v71;
    v192 = v72;
    *&v190 = v76;
    *(&v190 + 1) = v77;
    v79 = v71;
    v80 = v180;
    v81 = __swift_project_boxed_opaque_existential_1(&v190, v79);
    v82 = *v81;
    v83 = v81[1];
    outlined copy of Data._Representation(v76, v78);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v82, v83, &v195);
    outlined consume of Data._Representation(v76, v78);
    __swift_destroy_boxed_opaque_existential_1(&v190);
LABEL_28:
    v128 = v169;
    (*(v169 + 16))(v176, v60, v186);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    SymmetricKey.init<A>(data:)();
    v129 = v163;
    outlined init with copy of TetraSessionStates?(v61, v163, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v130 = v184(v129, 1, v80);
    v131 = v181;
    if (v130 == 1)
    {
      outlined destroy of TetraSessionStates?(v129, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
      v132 = 1;
      v133 = v178;
      v134 = v177;
    }

    else
    {
      v134 = v177;
      KEM.EncapsulationResult.sharedSecret.getter();
      (*(v179 + 8))(v129, v80);
      v132 = 0;
      v133 = v178;
    }

    v135 = v186;
    (*(v128 + 56))(v134, v132, 1, v186);
    v136 = v195;
    v180 = v136 >> 64;
    v182 = v136;
    type metadata accessor for NSData();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v183 = 0;
    v137 = v190;
    v138 = type metadata accessor for SHA384();
    v139 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData, MEMORY[0x277CC9DD0]);
    v196 = v138;
    v184 = v139;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    (*(v175 + 16))(v166, v133, v131);
    v140 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x277CC53C0]);
    v141 = v165;
    v179 = v140;
    SymmetricKey.init<A>(data:)();
    v142 = v167;
    outlined init with copy of TetraSessionStates?(v134, v167, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if ((*(v128 + 48))(v142, 1, v135) == 1)
    {
      outlined destroy of TetraSessionStates?(v142, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      v143.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v131 = v181;
    }

    else
    {
      v144 = v183;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v183 = v144;
      v143.super.isa = v190;
      (*(v128 + 8))(v142, v135);
    }

    *&v190 = v143;
    v145 = v168;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();
    v174 = *(v128 + 8);
    v174(v141, v135);
    v146 = v175;
    v147 = *(v175 + 8);
    v148 = v178;
    v173 = (v175 + 8);
    v172 = v147;
    (v147)(v178, v131);

    (*(v146 + 32))(v148, v145, v131);
    if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
    {
      swift_once();
    }

    v149 = tetraDHRatchetStepKDFString;
    v188 = tetraDHRatchetStepKDFString;
    *(&v191 + 1) = MEMORY[0x277CC9318];
    v192 = MEMORY[0x277CC9300];
    v150 = v182;
    v151 = v180;
    *&v190 = v182;
    *(&v190 + 1) = v180;
    v152 = __swift_project_boxed_opaque_existential_1(&v190, MEMORY[0x277CC9318]);
    v153 = *v152;
    v154 = v152[1];
    outlined copy of Data._Representation(v149, *(&v149 + 1));
    outlined copy of Data._Representation(v150, v151);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v153, v154, &v188);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    v190 = v188;
    lazy protocol witness table accessor for type Data and conformance Data();
    v155 = v176;
    v156 = v181;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v190, *(&v190 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v188 = v190;
    v189 = v191;
    lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    SymmetricKey.init<A>(data:)();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v188 = v190;
    v189 = v191;
    SymmetricKey.init<A>(data:)();
    v157 = v155;
    v158 = v186;
    v159 = v174;
    v174(v157, v186);
    (v172)(v148, v156);
    outlined destroy of TetraSessionStates?(v177, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v159(v185, v158);
    v159(v187, v158);
    goto LABEL_37;
  }

  (*(v63 + 32))(v173, v62, v66);
  v84 = KEM.EncapsulationResult.encapsulated.getter();
  v86 = v85 >> 62;
  if ((v85 >> 62) <= 1)
  {
    if (!v86)
    {
      v87 = BYTE6(v85);
      outlined consume of Data._Representation(v84, v85);
      v84 = v87;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v86 != 2)
  {
    outlined consume of Data._Representation(v84, v85);
    v84 = 0;
    goto LABEL_16;
  }

  v89 = *(v84 + 16);
  v88 = *(v84 + 24);
  outlined consume of Data._Representation(v84, v85);
  v84 = v88 - v89;
  if (__OFSUB__(v88, v89))
  {
    __break(1u);
LABEL_13:
    v90 = HIDWORD(v84);
    v91 = v84;
    outlined consume of Data._Representation(v84, v85);
    if (__OFSUB__(v90, v91))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v84 = v90 - v91;
  }

LABEL_16:
  v92 = I2OSP(value:outputByteCount:)(v84, 4);
  v94 = v93;
  v95 = KEM.EncapsulationResult.encapsulated.getter();
  v97 = v96;
  *&v188 = v92;
  *(&v188 + 1) = v94;
  v98 = MEMORY[0x277CC9318];
  *(&v191 + 1) = MEMORY[0x277CC9318];
  v99 = MEMORY[0x277CC9300];
  v192 = MEMORY[0x277CC9300];
  *&v190 = v95;
  *(&v190 + 1) = v96;
  v100 = __swift_project_boxed_opaque_existential_1(&v190, MEMORY[0x277CC9318]);
  v101 = *v100;
  v102 = v100[1];
  outlined copy of Data._Representation(v92, v94);
  outlined copy of Data._Representation(v95, v97);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v101, v102, &v188);
  outlined consume of Data._Representation(v95, v97);
  outlined consume of Data._Representation(v92, v94);
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v103 = v188;
  *(&v191 + 1) = v98;
  v192 = v99;
  v190 = v188;
  v104 = __swift_project_boxed_opaque_existential_1(&v190, v98);
  v105 = *v104;
  v106 = v104[1];
  outlined copy of Data._Representation(v103, *(&v103 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v105, v106, &v195);
  outlined consume of Data._Representation(v103, *(&v103 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v107 = v161;
  outlined init with copy of TetraSessionStates?(v162, v161, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v108 = type metadata accessor for Kyber768.PublicKey();
  v109 = *(v108 - 8);
  if ((*(v109 + 48))(v107, 1, v108) != 1)
  {
    v110 = Kyber768.PublicKey.dataRepresentation.getter();
    v112 = v111;
    (*(v109 + 8))(v107, v108);
    v113 = v112 >> 62;
    if ((v112 >> 62) > 1)
    {
      if (v113 != 2)
      {
        v114 = 0;
        goto LABEL_27;
      }

      v116 = *(v110 + 16);
      v115 = *(v110 + 24);
      v114 = v115 - v116;
      if (!__OFSUB__(v115, v116))
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v113)
    {
      v114 = BYTE6(v112);
LABEL_27:
      v117 = I2OSP(value:outputByteCount:)(v114, 4);
      v119 = v118;
      *&v188 = v117;
      *(&v188 + 1) = v118;
      *(&v191 + 1) = v98;
      v192 = v99;
      *&v190 = v110;
      *(&v190 + 1) = v112;
      v120 = __swift_project_boxed_opaque_existential_1(&v190, v98);
      v121 = *v120;
      v122 = v120[1];
      outlined copy of Data._Representation(v117, v119);
      outlined copy of Data._Representation(v110, v112);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v121, v122, &v188);
      outlined consume of Data._Representation(v117, v119);
      __swift_destroy_boxed_opaque_existential_1(&v190);
      v124 = *(&v188 + 1);
      v123 = v188;
      *(&v191 + 1) = v98;
      v192 = v99;
      v190 = v188;
      v125 = __swift_project_boxed_opaque_existential_1(&v190, v98);
      v126 = *v125;
      v127 = v125[1];
      outlined copy of Data._Representation(v123, v124);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v126, v127, &v195);
      outlined consume of Data._Representation(v123, v124);
      outlined consume of Data._Representation(v110, v112);
      v80 = v180;
      (*(v179 + 8))(v173, v180);
      __swift_destroy_boxed_opaque_existential_1(&v190);
      v60 = v187;
      v61 = v174;
      goto LABEL_28;
    }

    if (!__OFSUB__(HIDWORD(v110), v110))
    {
      v114 = HIDWORD(v110) - v110;
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_42:
  __break(1u);
}

void static TetraRatchetState.deriveRootAndChainKeyAsReceiver(rootKey:theirPublicKey:encap:ourReceivingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v290 = a7;
  v274 = a6;
  v272 = a5;
  v282 = a4;
  v256 = a2;
  v255 = a1;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v263 = *(v269 - 8);
  v11 = MEMORY[0x28223BE20](v269);
  v251 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v252 = &v235 - v14;
  MEMORY[0x28223BE20](v13);
  v264 = &v235 - v15;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v16 = MEMORY[0x28223BE20](v266);
  v254 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v253 = &v235 - v19;
  MEMORY[0x28223BE20](v18);
  v265 = &v235 - v20;
  v242 = type metadata accessor for Kyber1024.PublicKey();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v240 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for TetraKEM1024Key(0);
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v244 = &v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Kyber768.PublicKey();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v237 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for TetraKEM768Key(0);
  v271 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v243 = &v235 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v247 = &v235 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v236 = &v235 - v29;
  MEMORY[0x28223BE20](v28);
  v246 = &v235 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v259 = &v235 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v245 = &v235 - v35;
  MEMORY[0x28223BE20](v34);
  v258 = &v235 - v36;
  v37 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v276 = *(v37 - 8);
  v277 = v37;
  MEMORY[0x28223BE20](v37);
  v275 = &v235 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v250 = &v235 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v257 = &v235 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v270 = &v235 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v235 - v46;
  v48 = type metadata accessor for SymmetricKey();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v260 = &v235 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v261 = &v235 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v262 = &v235 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v281 = &v235 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v235 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v235 - v61;
  v288 = a8;
  v289 = a9;
  v64 = v63;
  outlined init with copy of TetraSessionStates?(a3, v47, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v65 = *(v49 + 48);
  v249 = v49 + 48;
  v248 = v65;
  v66 = v65(v47, 1, v64);
  v67 = MEMORY[0x277CC9318];
  v68 = MEMORY[0x277CC9300];
  v280 = v49;
  if (v66 == 1)
  {
    outlined copy of Data._Representation(a8, a9);
    outlined destroy of TetraSessionStates?(v47, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v69 = __DataStorage.init(length:)();
    *&v285 = 0x2000000000;
    *(&v285 + 1) = v69 | 0x4000000000000000;
    SymmetricKey.init<A>(data:)();
    v70 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x6174536172746554, 0xEB000000002D7472);
    v72 = v71;
    *(&v286 + 1) = v67;
    v287 = v68;
    *&v285 = v70;
    *(&v285 + 1) = v71;
    v73 = __swift_project_boxed_opaque_existential_1(&v285, v67);
    v74 = *v73;
    v75 = v73[1];
    outlined copy of Data._Representation(v70, v72);
    v76 = v278;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v74, v75, &v288);
    v77 = v76;
    outlined consume of Data._Representation(v70, v72);
  }

  else
  {
    (*(v49 + 32))(v60, v47, v64);
    (*(v49 + 16))(v62, v60, v64);
    outlined copy of Data._Representation(a8, a9);
    v78 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x7461526172746554, 0xED00002D74656863);
    v80 = v79;
    *(&v286 + 1) = v67;
    v287 = v68;
    *&v285 = v78;
    *(&v285 + 1) = v79;
    v81 = __swift_project_boxed_opaque_existential_1(&v285, v67);
    v82 = *v81;
    v83 = v81[1];
    outlined copy of Data._Representation(v78, v80);
    v84 = v278;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v82, v83, &v288);
    v77 = v84;
    outlined consume of Data._Representation(v78, v80);
    (*(v49 + 8))(v60, v64);
  }

  __swift_destroy_boxed_opaque_existential_1(&v285);
  v85 = v275;
  TetraECDHKey.publicKey.getter();
  v86 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v88 = v87;
  (*(v276 + 8))(v85, v277);
  if (v88 >> 60 == 15)
  {
    goto LABEL_61;
  }

  v278 = v62;
  v279 = v64;
  v89 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v90 >> 60 == 15)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&v283 = v86;
  *(&v283 + 1) = v88;
  v91 = MEMORY[0x277CC9318];
  *(&v286 + 1) = MEMORY[0x277CC9318];
  v92 = MEMORY[0x277CC9300];
  v287 = MEMORY[0x277CC9300];
  *&v285 = v89;
  *(&v285 + 1) = v90;
  v93 = v89;
  v94 = v90;
  v95 = __swift_project_boxed_opaque_existential_1(&v285, MEMORY[0x277CC9318]);
  v96 = *v95;
  v97 = v95[1];
  outlined copy of Data?(v86, v88);
  outlined copy of Data?(v93, v94);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v96, v97, &v283);
  outlined consume of Data?(v93, v94);
  outlined consume of Data?(v86, v88);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v98 = v283;
  *(&v286 + 1) = v91;
  v287 = v92;
  v285 = v283;
  v99 = __swift_project_boxed_opaque_existential_1(&v285, v91);
  v100 = *v99;
  v101 = v99[1];
  outlined copy of Data._Representation(v98, *(&v98 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v100, v101, &v288);
  outlined consume of Data._Representation(v98, *(&v98 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v102 = v290;
  TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v282, v281);
  if (v77)
  {
    (*(v280 + 8))(v278, v279);
LABEL_8:
    outlined consume of Data._Representation(v288, v289);
    return;
  }

  v103 = type metadata accessor for TetraOutgoingKeyContent(0);
  v104 = v103;
  v105 = *(v103 + 20);
  v106 = (v271 + 48);
  v107 = v274;
  if (v274 >> 60 == 15)
  {
    v108 = v103;
    v109 = v259;
    outlined init with copy of TetraSessionStates?(v102 + v105, v259, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v110 = (*v106)(v109, 1, v273);
    outlined destroy of TetraSessionStates?(v109, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (v110 != 1 || (v111 = v247, outlined init with copy of TetraSessionStates?(v102 + *(v108 + 24), v247, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR), v112 = (*(v267 + 48))(v111, 1, v268), outlined destroy of TetraSessionStates?(v111, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR), v112 != 1))
    {
      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v135 = 1;
      swift_willThrow();
      v136 = *(v280 + 8);
      v137 = v279;
      v136(v281, v279);
      v136(v278, v137);
      goto LABEL_8;
    }

    v113 = I2OSP(value:outputByteCount:)(0, 4);
    v115 = v114;
    v116 = MEMORY[0x277CC9318];
    *(&v286 + 1) = MEMORY[0x277CC9318];
    v117 = MEMORY[0x277CC9300];
    v287 = MEMORY[0x277CC9300];
    *&v285 = v113;
    *(&v285 + 1) = v114;
    v118 = __swift_project_boxed_opaque_existential_1(&v285, MEMORY[0x277CC9318]);
    v119 = *v118;
    v120 = v118[1];
    outlined copy of Data._Representation(v113, v115);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v119, v120, &v288);
    outlined consume of Data._Representation(v113, v115);
    __swift_destroy_boxed_opaque_existential_1(&v285);
    v121 = I2OSP(value:outputByteCount:)(0, 4);
    v123 = v122;
    *(&v286 + 1) = v116;
    v287 = v117;
    *&v285 = v121;
    *(&v285 + 1) = v122;
    v124 = __swift_project_boxed_opaque_existential_1(&v285, v116);
    v125 = *v124;
    v126 = v124[1];
    outlined copy of Data._Representation(v121, v123);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v125, v126, &v288);
    outlined consume of Data._Representation(v121, v123);
    __swift_destroy_boxed_opaque_existential_1(&v285);
    v128 = v279;
    v127 = v280;
    (*(v280 + 56))(v270, 1, 1, v279);
    goto LABEL_52;
  }

  v282 = *(v103 + 20);
  v129 = v258;
  outlined init with copy of TetraSessionStates?(v102 + v105, v258, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v277 = *v106;
  v130 = v277(v129, 1, v273);
  outlined copy of Data._Representation(v272, v107);
  outlined destroy of TetraSessionStates?(v129, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v131 = v280;
  if (v130 == 1)
  {
    v132 = v246;
    outlined init with copy of TetraSessionStates?(v102 + *(v104 + 24), v246, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    v133 = (*(v267 + 48))(v132, 1, v268);
    outlined destroy of TetraSessionStates?(v132, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    if (v133 == 1)
    {
      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v134 = 0;
      swift_willThrow();
      outlined consume of Data?(v272, v107);
      v139 = *(v131 + 8);
      v140 = v279;
      v139(v281, v279);
      v139(v278, v140);
      goto LABEL_8;
    }
  }

  v77 = v257;
  v138 = v272;
  TetraOutgoingKeyContent.decapsulate(_:)(v272, v107, v257);
  (*(v131 + 56))(v77, 0, 1, v279);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v77, v270, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v141 = v107 >> 62;
  if ((v107 >> 62) <= 1)
  {
    if (!v141)
    {
      v142 = BYTE6(v107);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v141 != 2)
  {
    v142 = 0;
    goto LABEL_27;
  }

  v144 = *(v138 + 16);
  v143 = *(v138 + 24);
  v142 = v143 - v144;
  if (__OFSUB__(v143, v144))
  {
    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(v138), v138))
    {
      __break(1u);
      goto LABEL_59;
    }

    v142 = HIDWORD(v138) - v138;
  }

LABEL_27:
  v145 = I2OSP(value:outputByteCount:)(v142, 4);
  v147 = v146;
  *&v283 = v145;
  *(&v283 + 1) = v146;
  v148 = MEMORY[0x277CC9318];
  *(&v286 + 1) = MEMORY[0x277CC9318];
  v287 = MEMORY[0x277CC9300];
  v149 = v274;
  *&v285 = v138;
  *(&v285 + 1) = v274;
  v150 = __swift_project_boxed_opaque_existential_1(&v285, MEMORY[0x277CC9318]);
  v151 = v138;
  v152 = *v150;
  v153 = v150[1];
  outlined copy of Data?(v151, v149);
  outlined copy of Data._Representation(v145, v147);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v152, v153, &v283);
  outlined consume of Data._Representation(v145, v147);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v154 = v283;
  *(&v286 + 1) = v148;
  v287 = MEMORY[0x277CC9300];
  v285 = v283;
  v155 = __swift_project_boxed_opaque_existential_1(&v285, v148);
  v156 = *v155;
  v157 = v155[1];
  outlined copy of Data._Representation(v154, *(&v154 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v156, v157, &v288);
  outlined consume of Data._Representation(v154, *(&v154 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v158 = v290;
  v159 = v245;
  outlined init with copy of TetraSessionStates?(v290 + v282, v245, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  if (v277(v159, 1, v273) == 1)
  {
    outlined destroy of TetraSessionStates?(v159, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v77 = v236;
    outlined init with copy of TetraSessionStates?(v158 + *(v104 + 24), v236, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    if ((*(v267 + 48))(v77, 1, v268) == 1)
    {
LABEL_63:
      outlined destroy of TetraSessionStates?(v77, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      __break(1u);
      return;
    }

    outlined init with take of TetraOutgoingSymmetricRatchet(v77, v244, type metadata accessor for TetraKEM1024Key);
    v160 = v240;
    TetraKEM1024Key.publicKey.getter(v240);
    v161 = Kyber1024.PublicKey.dataRepresentation.getter();
    v77 = v162;
    (*(v241 + 8))(v160, v242);
    v163 = v77 >> 62;
    if ((v77 >> 62) <= 1)
    {
      if (!v163)
      {
        v164 = BYTE6(v77);
LABEL_50:
        v186 = I2OSP(value:outputByteCount:)(v164, 4);
        v188 = v187;
        *&v283 = v186;
        *(&v283 + 1) = v187;
        v189 = MEMORY[0x277CC9318];
        *(&v286 + 1) = MEMORY[0x277CC9318];
        v190 = MEMORY[0x277CC9300];
        v287 = MEMORY[0x277CC9300];
        *&v285 = v161;
        *(&v285 + 1) = v77;
        v191 = __swift_project_boxed_opaque_existential_1(&v285, MEMORY[0x277CC9318]);
        v192 = *v191;
        v193 = v191[1];
        outlined copy of Data._Representation(v186, v188);
        outlined copy of Data._Representation(v161, v77);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v192, v193, &v283);
        outlined consume of Data._Representation(v186, v188);
        __swift_destroy_boxed_opaque_existential_1(&v285);
        v194 = v283;
        *(&v286 + 1) = v189;
        v287 = v190;
        v285 = v283;
        v195 = __swift_project_boxed_opaque_existential_1(&v285, v189);
        v196 = *v195;
        v197 = v195[1];
        outlined copy of Data._Representation(v194, *(&v194 + 1));
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v196, v197, &v288);
        outlined consume of Data._Representation(v194, *(&v194 + 1));
        outlined consume of Data._Representation(v161, v77);
        outlined consume of Data?(v272, v274);
        v184 = type metadata accessor for TetraKEM1024Key;
        v185 = &v276;
        goto LABEL_51;
      }

      if (!__OFSUB__(HIDWORD(v161), v161))
      {
        v164 = HIDWORD(v161) - v161;
        goto LABEL_50;
      }

      goto LABEL_60;
    }

LABEL_39:
    if (v163 != 2)
    {
      v164 = 0;
      goto LABEL_50;
    }

    v171 = *(v161 + 16);
    v170 = *(v161 + 24);
    v164 = v170 - v171;
    if (!__OFSUB__(v170, v171))
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_43:
    if (!__OFSUB__(HIDWORD(v161), v161))
    {
      v168 = HIDWORD(v161) - v161;
      goto LABEL_46;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  outlined init with take of TetraOutgoingSymmetricRatchet(v159, v243, type metadata accessor for TetraKEM768Key);
  v165 = v237;
  TetraKEM768Key.publicKey.getter(v237);
  v161 = Kyber768.PublicKey.dataRepresentation.getter();
  v77 = v166;
  (*(v238 + 8))(v165, v239);
  v167 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    if (v167 != 2)
    {
      v168 = 0;
      goto LABEL_46;
    }

    v169 = *(v161 + 16);
    v163 = *(v161 + 24);
    v168 = v163 - v169;
    if (!__OFSUB__(v163, v169))
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v167)
  {
    goto LABEL_43;
  }

  v168 = BYTE6(v77);
LABEL_46:
  v172 = I2OSP(value:outputByteCount:)(v168, 4);
  v174 = v173;
  *&v283 = v172;
  *(&v283 + 1) = v173;
  v175 = MEMORY[0x277CC9318];
  *(&v286 + 1) = MEMORY[0x277CC9318];
  v176 = MEMORY[0x277CC9300];
  v287 = MEMORY[0x277CC9300];
  *&v285 = v161;
  *(&v285 + 1) = v77;
  v177 = __swift_project_boxed_opaque_existential_1(&v285, MEMORY[0x277CC9318]);
  v178 = *v177;
  v179 = v177[1];
  outlined copy of Data._Representation(v172, v174);
  outlined copy of Data._Representation(v161, v77);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v178, v179, &v283);
  outlined consume of Data._Representation(v172, v174);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v180 = v283;
  *(&v286 + 1) = v175;
  v287 = v176;
  v285 = v283;
  v181 = __swift_project_boxed_opaque_existential_1(&v285, v175);
  v182 = *v181;
  v183 = v181[1];
  outlined copy of Data._Representation(v180, *(&v180 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v182, v183, &v288);
  outlined consume of Data._Representation(v180, *(&v180 + 1));
  outlined consume of Data._Representation(v161, v77);
  outlined consume of Data?(v272, v274);
  v184 = type metadata accessor for TetraKEM768Key;
  v185 = &v275;
LABEL_51:
  outlined destroy of TetraOutgoingSymmetricRatchet(*(v185 - 32), v184);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v128 = v279;
  v127 = v280;
LABEL_52:
  (*(v127 + 16))(v261, v281, v128);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  SymmetricKey.init<A>(data:)();
  v282 = v288;
  v277 = v289;
  type metadata accessor for NSData();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v198 = v285;
  v199 = type metadata accessor for SHA384();
  v200 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  v201 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData, MEMORY[0x277CC9DD0]);
  v202 = v264;
  v290 = v200;
  v275 = v201;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  (*(v263 + 16))(v251, v202, v269);
  v274 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x277CC53C0]);
  SymmetricKey.init<A>(data:)();
  v203 = v250;
  outlined init with copy of TetraSessionStates?(v270, v250, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v204 = v248(v203, 1, v128);
  v205 = v127;
  v206 = v265;
  if (v204 == 1)
  {
    v276 = 0;
    v207 = v199;
    outlined destroy of TetraSessionStates?(v203, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(length:)();
    v208.super.isa = Data._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v207 = v199;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v276 = 0;
    v208.super.isa = v285;
    (*(v205 + 8))(v203, v128);
  }

  v209 = MEMORY[0x277CC9318];
  v273 = &v206[*(v266 + 48)];
  *&v285 = v208;
  v210 = v252;
  v211 = v260;
  v268 = v207;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();
  v275 = *(v280 + 8);
  (v275)(v211, v279);
  v212 = v263;
  v213 = *(v263 + 8);
  v214 = v264;
  v215 = v269;
  v272 = v263 + 8;
  v271 = v213;
  (v213)(v264, v269);

  v216 = v214;
  (*(v212 + 32))(v214, v210, v215);
  if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
  {
    swift_once();
  }

  v217 = tetraDHRatchetStepKDFString;
  v283 = tetraDHRatchetStepKDFString;
  *(&v286 + 1) = v209;
  v287 = MEMORY[0x277CC9300];
  v218 = v282;
  v219 = v277;
  *&v285 = v282;
  *(&v285 + 1) = v277;
  v220 = __swift_project_boxed_opaque_existential_1(&v285, v209);
  v222 = *v220;
  v221 = v220[1];
  outlined copy of Data._Representation(v217, *(&v217 + 1));
  outlined copy of Data._Representation(v218, v219);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v222, v221, &v283);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v285 = v283;
  lazy protocol witness table accessor for type Data and conformance Data();
  v223 = v261;
  v224 = v269;
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v285, *(&v285 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v283 = v285;
  v284 = v286;
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  v225 = v265;
  SymmetricKey.init<A>(data:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v283 = v285;
  v284 = v286;
  SymmetricKey.init<A>(data:)();
  v226 = v223;
  v227 = v279;
  v228 = v275;
  (v275)(v226, v279);
  (v271)(v216, v224);
  v228(v262, v227);
  outlined destroy of TetraSessionStates?(v270, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v228(v281, v227);
  v228(v278, v227);
  outlined consume of Data._Representation(v288, v289);
  v229 = v253;
  outlined init with copy of TetraSessionStates?(v225, v253, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v230 = v266;
  v290 = *(v266 + 48);
  v231 = v227;
  v232 = *(v280 + 32);
  v232(v255, v229, v231);
  v233 = v225;
  v234 = v254;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v233, v254, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v232(v256, v234 + *(v230 + 48), v231);
  v228(v234, v231);
  v228((v229 + v290), v231);
}

uint64_t closure #1 in static TetraRatchetState.deriveRootAndChainKey(rootKey:ecdhSS:kemSS:dst:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(32, a1, a2);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraRatchetState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79654B746F6F72;
  v3 = 0x676E696F6774756FLL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696D6F636E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraRatchetState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TetraRatchetState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraRatchetState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraRatchetState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraRatchetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for SymmetricKey();
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], &protocol conformance descriptor for SymmetricKey);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TetraRatchetState(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](&lazy protocol witness table cache variable for type [ReceivingKeyTetraRatchet] and conformance <A> [A], &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet and conformance ReceivingKeyTetraRatchet, &protocol conformance descriptor for ReceivingKeyTetraRatchet, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 2;
    type metadata accessor for TetraOutgoingSymmetricRatchet(0);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet and conformance TetraOutgoingSymmetricRatchet, type metadata accessor for TetraOutgoingSymmetricRatchet, &protocol conformance descriptor for TetraOutgoingSymmetricRatchet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[13] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 4;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TetraRatchetState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27 - v4;
  v5 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, _ss22KeyedDecodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymmetricKey();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v36 = v12;
  v16 = *(v12 + 32);
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v35 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();
  v33 = v11;
  v20 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    outlined destroy of TetraSessionStates?(v14, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined destroy of TetraSessionStates?(&v14[v35], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v27 = v17;
    v34 = v5;
    v21 = v30;
    v43 = 0;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], &protocol conformance descriptor for SymmetricKey);
    v22 = v31;
    v23 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v22, v14, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    v42 = 1;
    lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](&lazy protocol witness table cache variable for type [ReceivingKeyTetraRatchet] and conformance <A> [A], &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet and conformance ReceivingKeyTetraRatchet, &protocol conformance descriptor for ReceivingKeyTetraRatchet, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v36;
    *&v14[*(v36 + 20)] = v38;
    v41 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet and conformance TetraOutgoingSymmetricRatchet, type metadata accessor for TetraOutgoingSymmetricRatchet, &protocol conformance descriptor for TetraOutgoingSymmetricRatchet);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of TetraOutgoingSymmetricRatchet(v7, &v14[*(v24 + 24)], type metadata accessor for TetraOutgoingSymmetricRatchet);
    v40 = 3;
    *&v14[*(v24 + 28)] = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = 4;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v25 = v29;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v33, v23);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v25, &v14[v35], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of TetraRatchetState(v14, v28, type metadata accessor for TetraRatchetState);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return outlined destroy of TetraOutgoingSymmetricRatchet(v14, type metadata accessor for TetraRatchetState);
  }
}

unint64_t lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(a2, type metadata accessor for ReceivingKeyTetraRatchet, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraMessageTypes and conformance TetraMessageTypes()
{
  result = lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes;
  if (!lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes);
  }

  return result;
}

void type metadata completion function for ReceivingKeyTetraRatchet(uint64_t a1, uint64_t a2)
{
  type metadata accessor for P256.KeyAgreement.PublicKey();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for Kyber768.PublicKey?, MEMORY[0x277CC55D0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for SymmetricRatchet(319);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for TetraRatchetState(uint64_t a1)
{
  type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for SymmetricKey?, MEMORY[0x277CC5330], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for [ReceivingKeyTetraRatchet], type metadata accessor for ReceivingKeyTetraRatchet, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TetraOutgoingSymmetricRatchet(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Kyber768.PublicKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for TetraOutgoingKeyContent(uint64_t a1)
{
  type metadata accessor for TetraECDHKey(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for TetraKEM768Key?, type metadata accessor for TetraKEM768Key, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for TetraKEM1024Key?, type metadata accessor for TetraKEM1024Key, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Data?();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TetraRatchetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraRatchetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized ReceivingKeyTetraRatchet.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E69766965636572 && a2 == 0xEC00000079654B67;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69766965636572 && a2 == 0xEF79654B4D454B67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022B495CD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized TetraRatchetState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B746F6F72 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xEE00736E69616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xED00006E69616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022B495CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B495D10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TetraRatchetState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for ReceivingKeyTetraRatchet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReceivingKeyTetraRatchet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *specialized static TetraMessageEncoding.sealMessage(_:messageKey:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v33 = a5;
  v35 = type metadata accessor for SymmetricKey();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v16 = &v15[*(v13 + 28)];
  *v16 = xmmword_22B48D7D0;
  v17 = &v15[*(v13 + 32)];
  *v17 = xmmword_22B48D7D0;
  if (a4 >> 60 != 15)
  {
    outlined copy of Data._Representation(a3, a4);
    outlined consume of Data?(0, 0xF000000000000000);
    *v17 = a3;
    *(v17 + 1) = a4;
  }

  v18 = *v16;
  v19 = *(v16 + 1);
  outlined copy of Data._Representation(a1, a2);
  outlined consume of Data?(v18, v19);
  *v16 = a1;
  *(v16 + 1) = a2;
  v20 = static TetraPBPadding.padMessage(_:)();
  if (!v5)
  {
    v22 = v20;
    v23 = v21;
    v24 = static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)(v11, v33);
    v26 = v25;
    outlined copy of Data._Representation(v24, v25);
    specialized AES.IV.init(IV:)(v24, v26);
    v32 = v27;
    v33 = v28;
    a3 = specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(v11, v22, v23, v27, v28, v29);
    outlined consume of Data._Representation(v24, v26);
    outlined consume of Data._Representation(v32, v33);
    outlined consume of Data._Representation(v22, v23);
    (*(v34 + 8))(v11, v35);
  }

  outlined destroy of TetraPB_TetraInnerMessage(v15);
  return a3;
}

uint64_t outlined destroy of TetraPB_TetraInnerMessage(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized static TetraMessageEncoding.openMessage(_:messageKey:)(void *a1, unint64_t a2, uint64_t a3)
{
  v36 = a2;
  v32 = a1;
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)(v12, a3);
  v15 = v14;
  outlined copy of Data._Representation(v13, v14);
  specialized AES.IV.init(IV:)(v13, v15);
  if (v3)
  {
    (*(v10 + 8))(v12, v9);
    outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v19 = v16;
    v30 = v8;
    v31 = v9;
    v20 = v17;
    v21 = specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(v12, v32, v36, v16, v17, v18);
    v36 = 0;
    v32 = v21;
    outlined consume of Data._Representation(v13, v15);
    outlined consume of Data._Representation(v19, v20);
    (*(v10 + 8))(v12, v31);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage();
    v22 = v30;
    v8 = v6;
    v23 = v36;
    Message.init(serializedData:extensions:partial:options:)();
    if (!v23)
    {
      v25 = *(v6 + 24);
      v26 = (v22 + *(v6 + 20));
      v27 = *v26;
      v28 = v26[1];
      if (v28 >> 60 == 15)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v26;
      }

      if (*(v22 + v25 + 8) >> 60 != 15)
      {
        outlined copy of Data?(*(v22 + v25), *(v22 + v25 + 8));
      }

      outlined copy of Data?(v27, v28);
      outlined destroy of TetraPB_TetraInnerMessage(v22);
    }
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage()
{
  result = lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage;
  if (!lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage)
  {
    type metadata accessor for TetraPB_TetraInnerMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage);
  }

  return result;
}

uint64_t SymmetricRatchet.messageKey(forIndex:discardMessageKey:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  if (a1 == -1)
  {
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    v17 = 0;
    goto LABEL_16;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v15 = *(v3 + *(result + 48));
  if (v15 < 0xFFFFFFFFFFFF3CB0)
  {
    if (v15 + 50000 < a1)
    {
      lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
      swift_allocError();
      v17 = 1;
LABEL_16:
      *v16 = v17;
      return swift_willThrow();
    }

    if (v15 <= a1)
    {
      SymmetricRatchet.deriveMessageKeysUntil(_:)(a1);
    }

    v18 = *(type metadata accessor for SymmetricRatchet(0) + 20);
    if (a2)
    {
      specialized Dictionary.removeValue(forKey:)(a1, v13);
      if ((*(v8 + 48))(v13, 1, v7) == 1)
      {
        outlined destroy of TetraSessionStates?(v13, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
LABEL_15:
        lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
        swift_allocError();
        v17 = 3;
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *(v3 + v18);
      if (!*(v19 + 16))
      {
        goto LABEL_15;
      }

      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }

      (*(v8 + 16))(v10, *(v19 + 56) + *(v8 + 72) * v20, v7);
      v13 = v10;
    }

    return (*(v8 + 32))(a3, v13, v7);
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for SymmetricKey();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for SymmetricKey();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t type metadata accessor for SymmetricRatchet(uint64_t a1)
{
  result = type metadata singleton initialization cache for SymmetricRatchet;
  if (!type metadata singleton initialization cache for SymmetricRatchet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SymmetricRatchet(uint64_t a1)
{
  type metadata accessor for (key: SymmetricKey, index: UInt64)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt64 : SymmetricKey](319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SymmetricRatchetStep();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (key: SymmetricKey, index: UInt64)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: SymmetricKey, index: UInt64))
  {
    type metadata accessor for SymmetricKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: SymmetricKey, index: UInt64));
    }
  }
}

unint64_t type metadata accessor for SymmetricRatchetStep()
{
  result = lazy cache variable for type metadata for SymmetricRatchetStep;
  if (!lazy cache variable for type metadata for SymmetricRatchetStep)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SymmetricRatchetStep);
  }

  return result;
}

uint64_t SymmetricRatchet.deriveMessageKeysUntil(_:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  if (a1 == -1 || (v13 = *(v1 + *(v3 + 48)), v13 > a1))
  {
    __break(1u);
  }

  else
  {
    v22 = *(v3 + 48);
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v1, v9);
    v14 = *(v3 + 48);
    v15 = *&v9[v14];
    v16 = type metadata accessor for SymmetricKey();
    v17 = *(v16 - 8);
    v21 = v3;
    v18 = v17;
    (*(v17 + 32))(v6, v9, v16);
    *&v6[v14] = v15;
    specialized Sequence.reduce<A>(_:_:)(v6, v13, a1, v1, v12);
    outlined destroy of TetraSessionStates?(v6, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    v19 = *&v12[*(v21 + 48)];
    result = (*(v18 + 40))(v1, v12, v16);
    *(v1 + v22) = v19;
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a3;
  v87 = type metadata accessor for SymmetricKey();
  v9 = *(v87 - 8);
  v10 = MEMORY[0x28223BE20](v87);
  v83 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = v64 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = v64 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v15 = MEMORY[0x28223BE20](v75);
  v74 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v72 = v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v82 = v64 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v64 - v23;
  outlined init with copy of (key: SymmetricKey, index: UInt64)(a1, a5);
  v25 = type metadata accessor for SymmetricRatchet(0);
  v26 = *(v25 + 24);
  v81 = *(v25 + 20);
  v69 = (v9 + 8);
  v70 = v26;
  v78 = (v9 + 32);
  v67 = v9;
  v64[2] = v9 + 40;
  v65 = a5;
  v71 = v24;
  v68 = a4;
  while (1)
  {
    v79 = a2;
    outlined init with copy of SymmetricRatchetStep(a4 + v70, v84);
    v27 = v85;
    v28 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v29 = v72;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(a5, v72);
    v31 = v75;
    v30 = v76;
    v32 = v77;
    v33 = (*(v28 + 8))(v76, v77, v29, *(v29 + *(v75 + 48)), v27, v28);
    v80 = v34;
    v35 = v87;
    (*v69)(v29, v87);
    v36 = *v78;
    (*v78)(v29, v30, v35);
    v37 = v73;
    v36(v73, v32, v35);
    v38 = *(v31 + 48);
    v39 = v82;
    v36(v82, v29, v35);
    *(v39 + v38) = v33;
    v40 = *(v31 + 48);
    v41 = v71;
    v42 = v37;
    v43 = v33;
    v36(v71, v42, v35);
    *(v41 + v40) = v80;
    __swift_destroy_boxed_opaque_existential_1(v84);
    v44 = v74;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v39, v74);
    v36(v83, v44, v35);
    v45 = v81;
    v46 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v46;
    v49 = *(v46 + v45);
    v84[0] = v49;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
    v52 = *(v49 + 16);
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (*(v49 + 24) >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v58 = v84[0];
        if (v50)
        {
          goto LABEL_9;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v58 = v84[0];
        if (v55)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_19;
      }

      v51 = v56;
      v58 = v84[0];
      if (v55)
      {
LABEL_9:
        (*(v67 + 40))(v58[7] + *(v67 + 72) * v51, v83, v87);
        goto LABEL_13;
      }
    }

    v58[(v51 >> 6) + 8] |= 1 << v51;
    *(v58[6] + 8 * v51) = v43;
    v36(v58[7] + *(v67 + 72) * v51, v83, v87);
    v59 = v58[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_18;
    }

    v58[2] = v61;
LABEL_13:
    a4 = v48;
    v62 = v82;
    *(v48 + v81) = v58;
    outlined destroy of TetraSessionStates?(v62, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    a5 = v65;
    outlined destroy of TetraSessionStates?(v65, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    result = outlined init with take of (key: SymmetricKey, index: UInt64)(v41, a5);
    if (v66 == v79)
    {
      return result;
    }

    a2 = v79 + 1;
    if (v79 == -1)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}