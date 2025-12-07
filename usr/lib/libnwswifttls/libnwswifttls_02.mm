size_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v80) = a6;
  v79 = a5;
  v94 = a3;
  v92 = a2;
  v90 = a7;
  v9 = type metadata accessor for SHA384();
  v95 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA384Digest();
  v88 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v85 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - v19;
  v21 = type metadata accessor for SymmetricKey();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v77 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v76 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v75 - v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR) + 36);
  v82 = v22;
  v83 = v21;
  v30 = v22;
  v31 = v90;
  v32 = *(v30 + 16);
  v91 = a1;
  v33 = v32(v28, a1 + v29, v21);
  v89 = a4;
  v87 = v15;
  v84 = v18;
  v81 = v28;
  if ((v80 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, logger);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v9;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B25F5000, v35, v36, "authenticating with a psk failed (resumption or external psk)", v38, 2u);
      v39 = v38;
      v9 = v37;
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    v40 = _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
    result = dispatch thunk of static Digest.byteCount.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v75 = v40;
    v80 = v11;
    v42 = v95;
    v43 = v9;
    if (result)
    {
      v44 = result;
      v45 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v45 + 16) = v44;
      bzero((v45 + 32), v44);
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    v96 = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E08]);
    v46 = v76;
    SymmetricKey.init<A>(data:)();
    v96 = v45;
    _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    v47 = v86;
    dispatch thunk of HashFunction.init()();
    v48 = v93;
    dispatch thunk of HashFunction.finalize()();
    (*(v42 + 8))(v47, v43);
    v49 = v80;
    v50 = dispatch thunk of static Digest.byteCount.getter();
    v51 = v77;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v50, v77);
    (*(v88 + 8))(v48, v49);
    (*(v85 + 8))(v20, v87);
    v53 = v82;
    v52 = v83;
    v54 = *(v82 + 8);
    v54(v46, v83);
    v55 = v81;
    v54(v81, v52);
    v33 = (*(v53 + 32))(v55, v51, v52);
    a4 = v89;
    v31 = v90;
    v11 = v49;
    v9 = v43;
LABEL_10:
    MEMORY[0x1EEE9AC00](v33);
    *(&v75 - 2) = v92;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v20 = v31;
    (*(v95 + 16))(v31, v91, v9);
    v56 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v57 = v79;
      if (v56 == 2)
      {
        v58 = *(v94 + 24);
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v57 = v79;
      if (v56)
      {
        v58 = v94 >> 32;
      }

      else
      {
        v58 = BYTE6(a4);
      }
    }

    if (v58 >= v57)
    {
      v59 = Data._Representation.subscript.getter();
      v61 = v60;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v59, v60, v31);
      outlined consume of Data._Representation(v59, v61);
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      dispatch thunk of HashFunction.finalize()();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v63 = v62[10];
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
      v64 = v84;
      v65 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6172742073682063, 0xEC00000063696666, v65, v31 + v63);
      v66 = v62[11];
      v67 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6172742073682073, 0xEC00000063696666, v67, v31 + v66);
      v68 = v86;
      dispatch thunk of HashFunction.init()();
      v69 = v78;
      dispatch thunk of HashFunction.finalize()();
      (*(v95 + 8))(v68, v9);
      v70 = v62[9];
      v71 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v71, &v20[v70]);
      outlined consume of Data._Representation(v94, v89);
      outlined destroy of P256.Signing.PrivateKey?(v91, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      v72 = *(v88 + 8);
      v72(v69, v11);
      v72(v93, v11);
      (*(v85 + 8))(v64, v87);
      v73 = *(v82 + 8);
      v74 = v83;
      v73(v81, v83);
      return (v73)(v92, v74);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static HKDF.extract(inputKeyMaterial:salt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SHA384();
  _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HKDF.extract<A>(inputKeyMaterial:salt:)();
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t specialized ClientSessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v14 = type metadata accessor for SymmetricKey();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v7 + 40);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
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

    outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v16 = *(v4 + 40);
    v17 = type metadata accessor for SymmetricKey();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t specialized ClientSessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v14 = type metadata accessor for SymmetricKey();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v7 + 44);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
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

    outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v16 = *(v4 + 44);
    v17 = type metadata accessor for SymmetricKey();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV35handleReadServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B25F5000, v3, v4, "client expecting ee", v5, 2u);
    MEMORY[0x1B274ECF0](v5, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v20, &v21);
  if (v1)
  {
    return v20;
  }

  v16[6] = v27;
  v16[7] = v28;
  v16[2] = v23;
  v16[3] = v24;
  v16[4] = v25;
  v16[5] = v26;
  v16[0] = v21;
  v16[1] = v22;
  *&v19[80] = v27;
  *&v19[96] = v28;
  *&v19[16] = v23;
  *&v19[32] = v24;
  *&v19[48] = v25;
  *&v19[64] = v26;
  v17 = v29;
  v19[112] = v29;
  v18 = v21;
  *v19 = v22;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v18) == 1)
  {
LABEL_6:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "incomplete message, waiting for more data", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }

    return 1;
  }

  else
  {
    v30[4] = *&v19[72];
    v31[0] = *&v19[88];
    *(v31 + 9) = *&v19[97];
    v30[0] = *&v19[8];
    v30[1] = *&v19[24];
    v30[2] = *&v19[40];
    v30[3] = *&v19[56];
    if (v19[112] == 2)
    {
      v10 = *&v19[8];

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1B25F5000, v11, v12, "client got ee", v13, 2u);
        MEMORY[0x1B274ECF0](v13, -1, -1);
      }

      v14 = v18;
      v15 = *v19;
      type metadata accessor for HandshakeStateMachine(0);
      _s15SwiftTLSLibrary14HandshakeStateO33receivedServerEncryptedExtensions_14extensionBytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v10, v14, *(&v14 + 1), v15);
      outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of HandshakeMessage(&v19[8]);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v30);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readD0L_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v45 = *a1;
  LOWORD(v64) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
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
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v46 = BYTE6(v2);
  v47 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v46;
      if (v7)
      {
        v9 = v45 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        return v8;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v45 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      return v8;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v58 = *a1;
    *(&v58 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v48 = v5;
    *&v50 = v3;
    *(&v50 + 1) = v4;
    v49 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v12 = v64;
    a1[2] = v49;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v64) = 0;
    v15 = v49 + 2;
    if (__OFADD__(v49, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v58 = v14;
    *(&v58 + 1) = v13;
    if (v15 < v49)
    {
      goto LABEL_66;
    }

    *&v50 = v49;
    *(&v50 + 1) = v49 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v18 = bswap32(v64) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v48;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v48;
      if (v27)
      {
        v26 = v24;
      }
    }

    v64 = v24;
    v65 = v25;
    v66 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v64, bswap32(v12) >> 16, 8, 0, v56, &v58);
    if (v28)
    {
      v8 = v56[0];
      v43 = v56[1];
      v38 = v57;
      v42 = v64;
      v41 = v65;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v64 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v64 >> 32;
    }

    else
    {
      v30 = BYTE6(v65);
    }

    if (__OFSUB__(v30, v66))
    {
      goto LABEL_69;
    }

    if (v30 != v66)
    {
      v38 = 2;
      v39 = v64;
      v40 = v65;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v50 = v58;
      v51 = v59;
      outlined destroy of Extension(&v50);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v49;
      *&v58 = v8;
      *(&v58 + 1) = v43;
      LOBYTE(v59) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      return v8;
    }

    outlined consume of Data._Representation(v64, v65);
    outlined consume of Data._Representation(v14, v13);
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v50 = v58;
    v51 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v47;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v51;
    *(v33 + 32) = v50;
    *(v33 + 48) = v34;
    v35 = v52;
    v36 = v53;
    v37 = v54;
    *(v33 + 112) = v55;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v64) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v49;
  return v8;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(uint64_t result)
{
  if (result == 8)
  {
    v11 = *v1;
    v12 = v1[1];
    v13 = v1[2];
    v14 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v14 == 2)
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
      v15 = BYTE6(v12);
      v16 = v11 >> 32;
      if (!v14)
      {
        v16 = v15;
      }
    }

    if (!__OFSUB__(v16, v13))
    {
      if (v16 == v13)
      {
        return 0;
      }

      v28 = xmmword_1B26C6410;
      LOBYTE(v29) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 5;
    }

    __break(1u);
  }

  else
  {
    if (result != 1)
    {
      v10 = result;
      v28 = result;
      LOBYTE(v29) = 0;
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
      v28 = 0uLL;
      LOBYTE(v29) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 0;
    }

    *&v28 = v7;
    *(&v28 + 1) = v8;
    v29 = v9;
    _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFA2CzAMYKXEfU_(&v28, v25, v27);
    if (v2)
    {
      v10 = v25[0];
      v17 = v25[1];
      v18 = v26;
      v20 = *(&v28 + 1);
      v19 = v28;
      goto LABEL_31;
    }

    result = v28;
    v21 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v28 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v28 >> 32;
    }

    else
    {
      v22 = BYTE14(v28);
    }

    if (!__OFSUB__(v22, v29))
    {
      if (v22 == v29)
      {
        outlined consume of Data._Representation(v28, *(&v28 + 1));
        outlined consume of Data._Representation(v4, v3);
        return v27[0];
      }

      v18 = 2;
      v24 = *(&v28 + 1);
      v23 = v28;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v27[0], v27[1]);
      v20 = v24;
      v19 = v23;
      v17 = 0;
      v10 = 1;
LABEL_31:
      outlined consume of Data._Representation(v19, v20);
      outlined consume of Data._Representation(*v1, v1[1]);
      *v1 = v4;
      v1[1] = v3;
      v1[2] = v5;
      *&v28 = v10;
      *(&v28 + 1) = v17;
      LOBYTE(v29) = v18;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV8readALPN11messageTypeAA9ExtensionO35ApplicationLayerProtocolNegotiationOAA09HandshakeH0V_tAA8TLSErrorOYKF(uint64_t a1)
{
  v2 = a1;
  if (a1 != 8 && a1 != 1)
  {
    countAndFlagsBits = a1 | 0x100000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return countAndFlagsBits;
  }

  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  outlined copy of Data._Representation(*v1, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v56 = v9;
  v57 = v10;
  v58 = v11;
  v14 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v9 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v9 >> 32;
  }

  else
  {
    v15 = BYTE6(v10);
  }

  if (__OFSUB__(v15, v11))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  result = ByteBuffer.readSlice(length:)(v15 - v11);
  v55 = result;
  if (v16 >> 60 != 15)
  {
    v18 = v16;
    v19 = v17;
    v20 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = *(v56 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      v21 = v56 >> 32;
    }

    else
    {
      v21 = BYTE6(v57);
    }

    if (!__OFSUB__(v21, v58))
    {
      if (v21 != v58)
      {
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v55, v18);
        outlined consume of Data._Representation(v56, v57);
        outlined consume of Data._Representation(*v4, v4[1]);
        *v4 = v6;
        v4[1] = v5;
        v4[2] = v7;
        swift_willThrowTypedImpl();
        return 1;
      }

      outlined consume of Data._Representation(v56, v57);
      outlined consume of Data._Representation(v6, v5);
      v59 = v18;
      if (v2 != 1)
      {
        v22 = ByteBuffer.readApplicationLayerProtocol()();
        if (!v22.value._object)
        {
          goto LABEL_98;
        }

        countAndFlagsBits = v22.value._countAndFlagsBits;
        v23 = v18 >> 62;
        if ((v18 >> 62) > 1)
        {
          if (v23 == 2)
          {
            v24 = *(v55 + 24);
          }

          else
          {
            v24 = 0;
          }
        }

        else if (v23)
        {
          v24 = v55 >> 32;
        }

        else
        {
          v24 = BYTE6(v18);
        }

        if (!__OFSUB__(v24, v19))
        {
          if (v24 - v19 <= 0)
          {
            outlined consume of Data._Representation(v55, v18);
            return countAndFlagsBits;
          }

LABEL_98:
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v50 = v55;
          v51 = v18;
LABEL_99:
          outlined consume of Data._Representation(v50, v51);
          return 18;
        }

LABEL_111:
        __break(1u);
      }

      v25 = v18 >> 62;
      countAndFlagsBits = MEMORY[0x1E69E7CC0];
      v53 = BYTE6(v18);
      v54 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        goto LABEL_37;
      }

LABEL_35:
      v26 = v53;
      if (v25)
      {
        v26 = v55 >> 32;
      }

      while (1)
      {
        v27 = __OFSUB__(v26, v19);
        v28 = v26 - v19;
        if (v27)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v28 < 1)
        {
          outlined consume of Data._Representation(v55, v59);
          return countAndFlagsBits;
        }

        v29 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_102;
        }

        v30 = v59 >> 62;
        if ((v59 >> 62) <= 1)
        {
          break;
        }

        if (v30 == 2)
        {
          v31 = *(v55 + 24);
          goto LABEL_49;
        }

        if (v29 >= 1)
        {
          goto LABEL_89;
        }

LABEL_52:
        if (v29 < v19)
        {
          goto LABEL_103;
        }

        outlined copy of Data._Representation(v55, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
        lazy protocol witness table accessor for type Data and conformance Data();
        lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
        DataProtocol.copyBytes<A>(to:from:)();
        outlined consume of Data._Representation(v55, v59);
        ++v19;
        if (v30 <= 1)
        {
          if (v30)
          {
            v32 = v55 >> 32;
          }

          else
          {
            v32 = BYTE6(v59);
          }

LABEL_59:
          if (v32 < v29)
          {
            goto LABEL_89;
          }

          goto LABEL_62;
        }

        if (v30 == 2)
        {
          v32 = *(v55 + 24);
          goto LABEL_59;
        }

        if (v29 >= 1)
        {
LABEL_89:

          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v51 = v59;
          v50 = v55;
          goto LABEL_99;
        }

LABEL_62:
        v33 = Data._Representation.subscript.getter();
        v34 = v33;
        v36 = v35;
        v37 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          if (v37 != 2)
          {
            goto LABEL_69;
          }

          v33 = *(v33 + 16);
          v38 = *(v34 + 24);
        }

        else
        {
          if (!v37)
          {
            goto LABEL_69;
          }

          v33 = v33;
          v38 = v34 >> 32;
        }

        if (v38 < v33)
        {
          goto LABEL_104;
        }

LABEL_69:
        v39 = Data._Representation.subscript.getter();
        v25 = v39;
        v41 = v40;
        v42 = v40 >> 62;
        if ((v40 >> 62) > 1)
        {
          if (v42 == 2)
          {
            v43 = *(v39 + 16);
            v52 = *(v39 + 24);
            if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
            {
              goto LABEL_109;
            }

            if (__OFSUB__(v52, v43))
            {
              goto LABEL_108;
            }

LABEL_82:
            MEMORY[0x1B274CD90]();
          }
        }

        else if (v42)
        {
          if (v39 >> 32 < v39)
          {
            goto LABEL_107;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v25, __DataStorage._offset.getter()))
          {
            goto LABEL_110;
          }

          goto LABEL_82;
        }

        v44 = static String._fromUTF8Repairing(_:)();
        v46 = v45;
        outlined consume of Data._Representation(v34, v36);
        outlined consume of Data._Representation(v25, v41);
        LODWORD(v25) = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(countAndFlagsBits + 16) + 1, 1, countAndFlagsBits);
        }

        v48 = *(countAndFlagsBits + 16);
        v47 = *(countAndFlagsBits + 24);
        if (v48 >= v47 >> 1)
        {
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, countAndFlagsBits);
        }

        *(countAndFlagsBits + 16) = v48 + 1;
        v49 = countAndFlagsBits + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        if (v54 <= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v25 == 2)
        {
          v26 = *(v55 + 24);
        }

        else
        {
          v26 = 0;
        }
      }

      if (v30)
      {
        v31 = v55 >> 32;
      }

      else
      {
        v31 = BYTE6(v59);
      }

LABEL_49:
      if (v31 < v29)
      {
        goto LABEL_89;
      }

      goto LABEL_52;
    }

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
    goto LABEL_111;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readApplicationLayerProtocol()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) == 0)
  {
    v1 = ByteBuffer.readSlice(length:)(v0);
    if (v2 >> 60 != 15)
    {
      v5 = v1;
      v6 = v2;
      v7 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v7 == 2)
        {
          v4 = *(v1 + 24);
        }

        else
        {
          v4 = 0;
        }
      }

      else if (v7)
      {
        v4 = v1 >> 32;
      }

      else
      {
        v4 = BYTE6(v2);
      }

      if (v4 < v3)
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = Data._Representation.subscript.getter();
      v10 = v9;
      v11 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v8, v9);
      if (v12)
      {
        v13 = v11;
        v14 = v5;
        v15 = v12;
      }

      else
      {
        v21 = v8;
        v22 = v10;
        outlined copy of Data._Representation(v8, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ContiguousBytes(v19, v23);
          __swift_project_boxed_opaque_existential_0(v23, v24);
          if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
          {
            outlined consume of Data._Representation(v8, v10);
            __swift_project_boxed_opaque_existential_0(v23, v24);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            outlined consume of ByteBuffer?(v5, v6);
            v16 = v19[0];
            __swift_destroy_boxed_opaque_existential_0(v23);
            v4 = *(&v16 + 1);
            v1 = v16;
            goto LABEL_22;
          }

          __swift_destroy_boxed_opaque_existential_0(v23);
        }

        else
        {
          v20 = 0;
          memset(v19, 0, sizeof(v19));
          outlined destroy of _HasContiguousBytes?(v19);
        }

        v13 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v8, v10);
        v15 = v17;
        v14 = v5;
      }

      outlined consume of ByteBuffer?(v14, v6);
      outlined consume of Data._Representation(v8, v10);
      v4 = v15;
      v1 = v13;
      goto LABEL_22;
    }
  }

  v1 = 0;
  v4 = 0;
LABEL_22:
  result.value._object = v4;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  MEMORY[0x1B274CD90]();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV27readQUICTransportParameters11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(uint64_t a1)
{
  if (a1 != 8 && a1 != 1)
  {
    v7 = a1 | 0x390000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v7;
  }

  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
    }
  }

  v9 = __OFSUB__(v6, result);
  v10 = v6 - result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result + v10;
    if (!__OFADD__(result, v10))
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (*(v3 + 24) >= v11)
          {
            goto LABEL_20;
          }
        }

        else if (v11 <= 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5)
        {
          v12 = v3 >> 32;
        }

        else
        {
          v12 = BYTE6(v4);
        }

        if (v12 >= v11)
        {
LABEL_20:
          if (v11 >= result)
          {
            result = Data._Representation.subscript.getter();
            v1[2] = v11;
            return result;
          }

          goto LABEL_29;
        }
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readServerCertificateType07messageH0AA9ExtensionO0fgH0OAA09HandshakeH0V_tAA8TLSErrorOYKF(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 != 8)
    {
      v3 = a1 | 0x140000;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v3;
    }

    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v2 & 0x100) == 0)
    {
      return v2;
    }

LABEL_8:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  outlined copy of Data._Representation(*v1, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v7 & 0x100) != 0 || (v8 = ByteBuffer.readSlice(length:)(v7), v9 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_8;
  }

  v12 = v8;
  v13 = v10;
  v14 = v9 >> 62;
  v15 = BYTE6(v9);
  v16 = v8 >> 32;
  v30 = BYTE6(v9);
  if ((v9 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v8 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v8 >> 32;
  }

  v31 = v9;
  v27 = v6;
  v28 = v5;
  v29 = v4;
  v17 = __OFSUB__(v15, v10);
  v18 = v15 - v10;
  if (v17)
  {
    goto LABEL_45;
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = v13 + 1;
  v21 = v31;
  if (__OFADD__(v13, 1))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v3 = v19;
  while (v14 > 1)
  {
    if (v14 == 2)
    {
      v22 = *(v12 + 24);
      goto LABEL_26;
    }

    if (v20 >= 1)
    {
      v25 = 0;
      goto LABEL_39;
    }

LABEL_29:
    v32 = v21;
    if (v20 < v13)
    {
      goto LABEL_44;
    }

    outlined copy of Data._Representation(v12, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v12, v32);
    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    if (v24 >= v23 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v3);
    }

    *(v3 + 16) = v24 + 1;
    *(v3 + v24 + 32) = 0;
    v13 = v20;
    v17 = __OFADD__(v20++, 1);
    v21 = v31;
    if (v17)
    {
      goto LABEL_43;
    }
  }

  v22 = v30;
  if (v14)
  {
    v22 = v16;
  }

LABEL_26:
  if (v22 >= v20)
  {
    goto LABEL_29;
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

LABEL_39:
  if (__OFSUB__(v25, v13))
  {
LABEL_46:
    __break(1u);
  }

  if (v25 == v13)
  {
    outlined consume of Data._Representation(v12, v21);
    outlined consume of Data._Representation(v28, v4);
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

  return v3;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO33receivedServerEncryptedExtensions_14extensionBytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v22 = a4;
  v8 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-1] - v12;
  v14 = type metadata accessor for HandshakeState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-1] - v18;
  outlined init with copy of HandshakeState(v4, &v23[-1] - v18, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of HandshakeState.IdleState(v19, v13, type metadata accessor for HandshakeState.ServerHelloState);
    outlined init with copy of HandshakeState(v13, v11, type metadata accessor for HandshakeState.ServerHelloState);

    outlined copy of Data._Representation(a2, a3);
    v20 = v23[4];
    _s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V08originalD009encryptedF014extensionBytesAeC011ServerHelloD0V_AA0eF0VAA10ByteBufferVtAA8TLSErrorOYKcfC(v11, a1, a2, a3, v22, v23, v17);
    if (v20)
    {
      v4 = v23[0];
      outlined destroy of HandshakeState(v13, type metadata accessor for HandshakeState.ServerHelloState);
    }

    else
    {
      outlined destroy of HandshakeState(v4, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v13, type metadata accessor for HandshakeState.ServerHelloState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v17, v4, type metadata accessor for HandshakeState);
    }

    return v4;
  }

  else
  {
    result = outlined destroy of HandshakeState(v19, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V08originalD009encryptedF014extensionBytesAeC011ServerHelloD0V_AA0eF0VAA10ByteBufferVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v147 = a5;
  v156 = a3;
  v169 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = (&v138 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = (&v138 - v14);
  v150 = type metadata accessor for SessionTicket(0);
  v15 = MEMORY[0x1EEE9AC00](v150);
  v149 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v138 - v17;
  v164 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  v18 = MEMORY[0x1EEE9AC00](v164);
  v162 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = (&v138 - v20);
  v21 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v22 = a7 + v21[5];
  v23 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v159 = v22;
  v146 = v23;
  v145 = v25;
  v144 = v24 + 56;
  (v25)(v22, 1, 1);
  v26 = (a7 + v21[6]);
  *v26 = 0;
  v26[1] = 0;
  v152 = v26;
  v27 = a7 + v21[7];
  *v27 = xmmword_1B26C5EF0;
  v168 = v27;
  *(v27 + 16) = 0;
  v161 = v21[8];
  *(a7 + v161) = 0;
  v153 = v21;
  v28 = v21[12];
  v29 = type metadata accessor for PAKEClientState(0);
  v139 = *(v29 - 8);
  v30 = *(v139 + 56);
  v160 = v28;
  v140 = v29;
  v30(a7 + v28, 1, 1);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v165 = __swift_project_value_buffer(v31, logger);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B25F5000, v32, v33, "validating encrypted extensions", v34, 2u);
    MEMORY[0x1B274ECF0](v34, -1, -1);
  }

  v182 = MEMORY[0x1E69E7CD0];
  v35 = v169;
  v36 = *(v169 + 16);
  v166 = a1;
  v158 = a4;
  if (!v36)
  {
LABEL_50:

    v154 = 0;
    v167 = 0;
    v155 = 1;
LABEL_55:

    v65 = type metadata accessor for HandshakeState.ServerHelloState(0);
    outlined init with copy of HandshakeState(a1 + v65[5], v157, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v67 = *v157;
        v68 = v141;
        outlined init with copy of Any?(a1 + v65[12], v141, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        v69 = (*(v139 + 48))(v68, 1, v140);
        if (v69 == 1)
        {
          outlined destroy of P256.Signing.PrivateKey?(v68, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
          v70 = 0;
        }

        else
        {
          v70 = *v68;
          outlined destroy of HandshakeState(v68, type metadata accessor for PAKEClientState);
        }

        v99 = v142;
        *v142 = v67;
        *(v99 + 2) = v70;
        *(v99 + 4) = v69 == 1;
        v100 = v146;
        swift_storeEnumTagMultiPayload();
        v145(v99, 0, 1, v100);
        outlined assign with take of PartialHandshakeResult?(v99, v159, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_78:
        a1 = v166;
        goto LABEL_79;
      }

      outlined init with take of HandshakeState.IdleState(v157, v149, type metadata accessor for SessionTicket);
      if (v155)
      {
        v80 = v159;
        outlined destroy of P256.Signing.PrivateKey?(v159, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
        outlined init with take of HandshakeState.IdleState(v149, v80, type metadata accessor for SessionTicket);
        v81 = v146;
        swift_storeEnumTagMultiPayload();
        v145(v80, 0, 1, v81);
LABEL_79:
        outlined assign with copy of PAKEClientState?(a1 + v65[12], a7 + v160);
        LOBYTE(v180) = *(a1 + 64);
        v101 = v180;
        v102 = *(a1 + 48);
        v178 = *(a1 + 32);
        v179 = v102;
        v103 = *(a1 + 16);
        v176 = *a1;
        v104 = v176;
        v177 = v103;
        *(a7 + 32) = v178;
        *(a7 + 48) = v102;
        *(a7 + 64) = v101;
        *a7 = v104;
        *(a7 + 16) = v103;
        v105 = v153;
        outlined init with copy of Any?(a1 + v65[6], a7 + v153[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        *(a7 + v105[10]) = *(a1 + v65[9]);
        *(a7 + v105[11]) = *(a1 + v65[10]);
        *(a7 + v105[13]) = *(a1 + v65[13]);
        outlined init with copy of HandshakeStateMachine.Configuration(&v176, &v171);
        v106 = v156;
        v107 = v158;
        v108 = v148;
        v109 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v156, v158, v147);
        if (v108)
        {
          v112 = a1;
          v113 = v109;
          v114 = v110;
          v87 = v111;
          outlined destroy of HandshakeState(v112, type metadata accessor for HandshakeState.ServerHelloState);
          outlined consume of Data._Representation(v106, v107);
          v115 = *(a7 + 48);
          v173 = *(a7 + 32);
          v174 = v115;
          v175 = *(a7 + 64);
          v116 = *a7;
          v172 = *(a7 + 16);
          v171 = v116;
          outlined destroy of HandshakeStateMachine.Configuration(&v171);
          v117 = 1;
          goto LABEL_112;
        }

        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1B25F5000, v118, v119, "encrypted extensions valid", v120, 2u);
          v121 = v120;
          v107 = v158;
          MEMORY[0x1B274ECF0](v121, -1, -1);
        }

        outlined consume of Data._Representation(v156, v107);

        return outlined destroy of HandshakeState(v166, type metadata accessor for HandshakeState.ServerHelloState);
      }

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_1B25F5000, v123, v124, "server provided server_certificate_type extension while resuming", v125, 2u);
        v126 = v125;
        a1 = v166;
        MEMORY[0x1B274ECF0](v126, -1, -1);
      }

      v176 = xmmword_1B26C6400;
      v87 = 2;
      LOBYTE(v177) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v156, a4);
      outlined destroy of HandshakeState(v149, type metadata accessor for SessionTicket);
      v98 = a1;
    }

    else
    {
      v71 = *v157;
      v72 = v157[1];
      v73 = *(v157 + 1);
      if (v155)
      {
        v74 = 0;
      }

      else
      {
        v74 = v154;
      }

      v75 = *(v73 + 16);
      v76 = (v73 + 32);
      while (v75)
      {
        v77 = *v76++;
        --v75;
        if (v77 == v74)
        {
          v78 = v159;
          outlined destroy of P256.Signing.PrivateKey?(v159, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);

          *v78 = v71;
          *(v78 + 2) = v72;
          *(v78 + 4) = v74;
          *(v78 + 8) = 0;
          *(v78 + 16) = 0;
          v79 = v146;
          swift_storeEnumTagMultiPayload();
          v145(v78, 0, 1, v79);
          goto LABEL_78;
        }
      }

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v176 = v91;
        *v90 = 136315138;
        v92 = CertificateType.description.getter(v74);
        v94 = a7;
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v176);

        *(v90 + 4) = v95;
        a7 = v94;
        _os_log_impl(&dword_1B25F5000, v88, v89, "server chose non-offered certificate type %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x1B274ECF0](v91, -1, -1);
        MEMORY[0x1B274ECF0](v90, -1, -1);
      }

      v96 = v158;
      v97 = v156;
      v176 = xmmword_1B26C6400;
      v87 = 2;
      LOBYTE(v177) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v97, v96);
      v98 = v166;
    }

    outlined destroy of HandshakeState(v98, type metadata accessor for HandshakeState.ServerHelloState);
    v114 = 0;
    v117 = 0;
    v113 = 6;
    goto LABEL_112;
  }

  v163 = a7;
  v143 = a6;
  v167 = 0;
  a4 = 0;
  v154 = 0;
  v170 = v36 - 1;
  a6 = 32;
  v155 = 1;
  while (1)
  {
    v37 = *(v35 + a6 + 48);
    v178 = *(v35 + a6 + 32);
    v179 = v37;
    v180 = *(v35 + a6 + 64);
    v181 = *(v35 + a6 + 80);
    v38 = *(v35 + a6 + 16);
    v176 = *(v35 + a6);
    v177 = v38;
    a7 = a4 + 1;
    v39 = 42;
    switch(v181 >> 4)
    {
      case 1:

        v39 = 10;
        break;
      case 2:
        sub_1B260EDD8(v176, BYTE8(v176) & 1);
        v39 = 43;
        break;
      case 3:
        outlined copy of Extension.ApplicationLayerProtocolNegotiation(v176, *(&v176 + 1), v177 & 1);
        v39 = 16;
        break;
      case 4:
        outlined copy of Extension.KeyShare(v176, *(&v176 + 1), v177);
        v39 = 51;
        break;
      case 5:
        break;
      case 6:

        v39 = 13;
        break;
      case 7:
        sub_1B260EDD8(v176, BYTE8(v176) & 1);
        v39 = 20;
        break;
      case 8:
        outlined copy of Data._Representation(v176, *(&v176 + 1));
        v39 = 57;
        break;
      case 9:

        v39 = 45;
        break;
      case 0xA:
        outlined copy of Extension.PreSharedKey(v176, *(&v176 + 1), v177 & 1);
        v39 = 41;
        break;
      case 0xB:
        v39 = 58;
        break;
      case 0xC:
        outlined copy of Extension.PAKE(v176, *(&v176 + 1), v177, *(&v177 + 1), v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181 & 1);
        v39 = 35387;
        break;
      case 0xD:
        v40 = v176;
        outlined copy of Data._Representation(*(&v176 + 1), v177);
        v39 = v40;
        break;
      default:
        outlined copy of Data?(v176, *(&v176 + 1));
        v39 = 0;
        break;
    }

    if ((specialized Set._Variant.insert(_:)(&v171, v39) & 1) == 0)
    {
      break;
    }

    v41 = v176;
    v42 = BYTE8(v176);
    v43 = *(&v176 + 9) | ((*(&v176 + 13) | (HIBYTE(v176) << 16)) << 32);
    v44 = v177;
    v45 = v181 >> 4;
    if (v45 > 6)
    {
      if (v45 == 7)
      {
        if (BYTE8(v176))
        {
          outlined destroy of Extension(&v176);
          v155 = 0;
          v154 = v41;
          goto LABEL_47;
        }

LABEL_41:
        outlined destroy of Extension(&v176);
        goto LABEL_47;
      }

      if (v45 != 8)
      {
        goto LABEL_41;
      }

      if (*(a1 + 32) >> 60 == 15)
      {
        outlined copy of Data._Representation(v176, *(&v176 + 1));

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_1B25F5000, v127, v128, "server unexpectedly offered transport parameters", v129, 2u);
          v130 = v129;
          a1 = v166;
          MEMORY[0x1B274ECF0](v130, -1, -1);
        }

        v171 = xmmword_1B26C6400;
        v87 = 2;
        LOBYTE(v172) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of Extension(&v176);
        goto LABEL_91;
      }

      v52 = *(&v177 + 1) | ((*(&v177 + 5) | (BYTE7(v177) << 16)) << 32);
      v53 = v168;
      outlined consume of ByteBuffer?(*v168, *(v168 + 8));
      *v53 = v41;
      *(v53 + 8) = v42;
      *(v53 + 15) = BYTE6(v43);
      *(v53 + 13) = WORD2(v43);
      *(v53 + 9) = v43;
      *(v53 + 16) = v44;
      *(v53 + 23) = BYTE6(v52);
      *(v53 + 21) = WORD2(v52);
      *(v53 + 17) = v52;
      v35 = v169;
      a1 = v166;
    }

    else if (v45 == 3)
    {
      if ((v177 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (!*(a1 + 48))
      {

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          v85 = "server unexpectedly offered alpn";
LABEL_71:
          _os_log_impl(&dword_1B25F5000, v82, v83, v85, v84, 2u);
          v86 = v84;
          a1 = v166;
          MEMORY[0x1B274ECF0](v86, -1, -1);
        }

LABEL_72:

        v171 = xmmword_1B26C6400;
        v87 = 2;
        LOBYTE(v172) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
LABEL_91:
        outlined consume of Data._Representation(v156, v158);
        outlined destroy of Extension(&v176);
        v131 = a1;
LABEL_92:
        outlined destroy of HandshakeState(v131, type metadata accessor for HandshakeState.ServerHelloState);
        v114 = 0;
        v117 = 0;
        v113 = 6;
        a6 = v143;
        a7 = v163;
        goto LABEL_112;
      }

      v54 = BYTE8(v176) | (v43 << 8);

      v55 = v152;
      *v152 = v41;
      v55[1] = v54;
      v167 = v54;
    }

    else
    {
      if (v45 != 5)
      {
        goto LABEL_41;
      }

      v46 = type metadata accessor for HandshakeState.ServerHelloState(0);
      if (*(a1 + v46[9]) & 1) == 0 && *(a1 + v46[10]) != 1 || (v47 = a1 + v46[11], (*(v47 + 2)) || *v47)
      {

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          v85 = "server unexpectedly offered early data";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      v48 = v162;
      outlined init with copy of HandshakeState(a1 + v46[5], v162, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = v151;
        outlined init with take of HandshakeState.IdleState(v48, v151, type metadata accessor for SessionTicket);
        if (!*(v49 + *(v150 + 40)))
        {

          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_1B25F5000, v132, v133, "server unexpectedly offered early data for session with max early data size 0", v134, 2u);
            MEMORY[0x1B274ECF0](v134, -1, -1);
          }

          v171 = xmmword_1B26C6400;
          v87 = 2;
          LOBYTE(v172) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v156, v158);
          outlined destroy of Extension(&v176);
          outlined destroy of HandshakeState(v49, type metadata accessor for SessionTicket);
          v131 = v166;
          goto LABEL_92;
        }

        v50 = type metadata accessor for SessionTicket;
        v51 = v49;
      }

      else
      {
        v50 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
        v51 = v48;
      }

      outlined destroy of HandshakeState(v51, v50);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1B25F5000, v56, v57, "server accepted early data", v58, 2u);
        MEMORY[0x1B274ECF0](v58, -1, -1);

        outlined destroy of Extension(&v176);
      }

      else
      {
      }

      *(v163 + v161) = 1;
    }

LABEL_47:
    if (v170 == a4)
    {

      a6 = v143;
      a7 = v163;
      a4 = v158;
      goto LABEL_55;
    }

    a6 += 88;
    ++a4;
    if (a7 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }
  }

  outlined init with copy of Extension(&v176, &v171);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  outlined destroy of Extension(&v176);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v171 = v62;
    *v61 = 136315138;
    a6 = v143;
    v63 = v158;
    v64 = 0;
    switch(v181 >> 4)
    {
      case 1:
        v64 = 10;
        break;
      case 2:
        v64 = 43;
        break;
      case 3:
        v64 = 16;
        break;
      case 4:
        v64 = 51;
        break;
      case 5:
        v64 = 42;
        break;
      case 6:
        v64 = 13;
        break;
      case 7:
        v64 = 20;
        break;
      case 8:
        v64 = 57;
        break;
      case 9:
        v64 = 45;
        break;
      case 0xA:
        v64 = 41;
        break;
      case 0xB:
        v64 = 58;
        break;
      case 0xC:
        v64 = -30149;
        break;
      case 0xD:
        v64 = v176;
        break;
      default:
        break;
    }

    v135 = ExtensionType.description.getter(v64);
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v171);

    *(v61 + 4) = v137;
    _os_log_impl(&dword_1B25F5000, v59, v60, "server offered duplicate extension of type %s on encrypted extensions", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1B274ECF0](v62, -1, -1);
    MEMORY[0x1B274ECF0](v61, -1, -1);

    a7 = v163;
    a1 = v166;
  }

  else
  {

    a6 = v143;
    a7 = v163;
    v63 = v158;
  }

  v171 = xmmword_1B26C6410;
  v87 = 2;
  LOBYTE(v172) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(v156, v63);
  outlined destroy of Extension(&v176);
  outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerHelloState);
  v114 = 0;
  v117 = 0;
  v113 = 5;
LABEL_112:
  outlined destroy of P256.Signing.PrivateKey?(v159, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);

  outlined consume of ByteBuffer?(*v168, *(v168 + 8));
  if (v117)
  {
    outlined destroy of P256.Signing.PrivateKey?(a7 + v153[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  }

  result = outlined destroy of P256.Signing.PrivateKey?(a7 + v160, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  *a6 = v113;
  *(a6 + 8) = v114;
  *(a6 + 16) = v87;
  return result;
}

uint64_t outlined assign with copy of PAKEClientState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v31 = v3;
  outlined init with copy of Any?(v3, &v28 - v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      outlined init with copy of Any?(v31, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 1)
      {
        if (v18)
        {
          v20 = 0x6B616873646E6168;
        }

        else
        {
          v20 = 0x636553796C726165;
        }

        if (v18)
        {
          v19 = 0xEF74657263655365;
        }

        else
        {
          v19 = 0xEB00000000746572;
        }
      }

      else if (v18 == 2)
      {
        v19 = 0xEC00000074657263;
        v20 = 0x655372657473616DLL;
      }

      else
      {
        if (v18 != 3)
        {
          v19 = 0xE400000000000000;
          v20 = 1701602409;
          goto LABEL_23;
        }

        v19 = 0xEA00000000007374;
        v20 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_23:
      Logger.logInvalidStateTransition(stateName:event:)(v20, v19, 0xD000000000000012, 0x80000001B26CDE50);

      v29 = xmmword_1B26C6450;
      v30 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 2;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  v16 = v28;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v14, v8, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = v16;
    if (v21 == 2)
    {
      v23 = *(a1 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    result = v16;
    if (v21)
    {
      v23 = a1 >> 32;
    }

    else
    {
      v23 = BYTE6(a2);
    }
  }

  if (v23 >= result)
  {
    v24 = Data._Representation.subscript.getter();
    v26 = v25;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v24, v25, v8);
    outlined consume of Data._Representation(v24, v26);
    v27 = v31;
    outlined destroy of P256.Signing.PrivateKey?(v31, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    outlined init with take of P256.Signing.PublicKey?(v8, v27, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    swift_storeEnumTagMultiPayload();
    return 2;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV27handleReadServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B25F5000, v3, v4, "client expecting certificate message", v5, 2u);
    MEMORY[0x1B274ECF0](v5, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v22, &v23);
  if (v1)
  {
    return v22;
  }

  v18[6] = v29;
  v18[7] = v30;
  v18[2] = v25;
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[0] = v23;
  v18[1] = v24;
  *&v21[80] = v29;
  *&v21[96] = v30;
  *&v21[16] = v25;
  *&v21[32] = v26;
  *&v21[48] = v27;
  *&v21[64] = v28;
  v19 = v31;
  v21[112] = v31;
  v20 = v23;
  *v21 = v24;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v20) == 1)
  {
LABEL_6:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "incomplete message, waiting for more data", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }

    return 1;
  }

  else
  {
    v32[4] = *&v21[72];
    v33[0] = *&v21[88];
    *(v33 + 9) = *&v21[97];
    v32[0] = *&v21[8];
    v32[1] = *&v21[24];
    v32[2] = *&v21[40];
    v32[3] = *&v21[56];
    if (v21[112] == 4)
    {
      v10 = *&v21[8];
      v11 = *&v21[16];
      v12 = *&v21[32];
      v34 = *&v21[24];
      outlined copy of Data._Representation(*&v21[8], *&v21[16]);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1B25F5000, v13, v14, "client got certificate message", v15, 2u);
        MEMORY[0x1B274ECF0](v15, -1, -1);
      }

      v16 = v20;
      v17 = *v21;
      type metadata accessor for HandshakeStateMachine(0);
      _s15SwiftTLSLibrary14HandshakeStateO25receivedServerCertificate_16certificateBytesyAA0G7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(v10, v11, v34, v12, v16, *(&v16 + 1), v17);
      outlined destroy of HandshakeMessage(&v21[8]);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v32);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v6 & 0x100) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
LABEL_4:
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v7 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v7 >> 32;
  }

  else
  {
    v12 = BYTE6(v8);
  }

  result = v12 - v9;
  if (__OFSUB__(v12, v9))
  {
    __break(1u);
    goto LABEL_30;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v13 >> 60 == 15)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v14 = v13;
  v15 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v19 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v19 >> 32;
  }

  else
  {
    v16 = BYTE6(v20);
  }

  if (__OFSUB__(v16, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = result;
  if (v16 == v21)
  {
    outlined consume of Data._Representation(v19, v20);
    outlined consume of Data._Representation(v4, v3);
    v4 = *a1;
    v3 = a1[1];
    v5 = a1[2];
    outlined copy of Data._Representation(*a1, v3);
    v17 = _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_SayAA18CertificateMessageV0K5EntryVG_Tg504_s15a12TLSLibrary10cd8VSayAA18kl4V0E5m5VGAA8J126OIglozo_AchJIeglrzo_TR04_s15a12TLSLibrary18ef12V5bytesAcA10cd7Vz_tAA8h32OYKcfc04readC7EntriesL_ySayAC0C5G10VGAFzAHYKFTf3nnpf_nTf1nc_n();
    if (v1)
    {
      v18 = v17;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v4;
      a1[1] = v3;
      a1[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v22, v14);
      return v18;
    }

    else
    {
      if (!v17)
      {
        outlined consume of Data._Representation(*a1, a1[1]);
        outlined consume of ByteBuffer?(v22, v14);
        goto LABEL_4;
      }

      outlined consume of Data._Representation(v4, v3);
      return v22;
    }
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v14);
    outlined consume of Data._Representation(v19, v20);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_SayAA18CertificateMessageV0K5EntryVG_Tg504_s15a12TLSLibrary10cd8VSayAA18kl4V0E5m5VGAA8J126OIglozo_AchJIeglrzo_TR04_s15a12TLSLibrary18ef12V5bytesAcA10cd7Vz_tAA8h32OYKcfc04readC7EntriesL_ySayAC0C5G10VGAFzAHYKFTf3nnpf_nTf1nc_n()
{
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v1 & 0x100) != 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = ByteBuffer.readSlice(length:)(v3 | (v2 << 16));
  if (v5 >> 60 == 15)
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  v19 = v6;
  v8 = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readC7EntriesL_ySayAC0C5EntryVGAFzAHYKF(&v17);
  if (v0)
  {
    v9 = v8;
    v10 = v17;
    v11 = v18;
LABEL_18:
    outlined consume of Data._Representation(v10, v11);
    return v9;
  }

  v12 = v8;
  result = v17;
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

  if (!__OFSUB__(v14, v19))
  {
    if (v14 == v19)
    {
      outlined consume of Data._Representation(v17, v18);
      return v12;
    }

    v15 = v17;
    v16 = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v11 = v16;
    v10 = v15;
    v9 = 1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readC7EntriesL_ySayAC0C5EntryVGAFzAHYKF(uint64_t *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v61 = *a1;
  v3 = a1[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
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
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = *a1;
  v9 = MEMORY[0x1E69E7CC0];
  v62 = BYTE6(v2);
  v63 = v2 >> 62;
  while (1)
  {
    v67 = v3;
    if (v7 <= 1)
    {
      v10 = v62;
      if (v7)
      {
        v10 = v61 >> 32;
      }

LABEL_8:
      if (v10 < v4)
      {
        goto LABEL_105;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v10 = *(v61 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
LABEL_105:
      outlined copy of Data._Representation(v8, v2);
      v12 = *a1;
      v13 = a1[1];
      goto LABEL_106;
    }

LABEL_11:
    *&v68 = v8;
    *(&v68 + 1) = v2;
    if (v4 < v3)
    {
      goto LABEL_115;
    }

    v66 = v9;
    outlined copy of Data._Representation(v8, v2);
    outlined copy of Data._Representation(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v68, *(&v68 + 1));
    a1[2] = v4;
    v11 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_116;
    }

    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (v14)
      {
        v15 = v12 >> 32;
      }

      else
      {
        v15 = BYTE6(v13);
      }

LABEL_19:
      if (v15 < v11)
      {
        goto LABEL_104;
      }

      goto LABEL_22;
    }

    if (v14 == 2)
    {
      v15 = *(v12 + 24);
      goto LABEL_19;
    }

    if (v11 >= 1)
    {
      goto LABEL_104;
    }

LABEL_22:
    *&v68 = *a1;
    *(&v68 + 1) = v13;
    if (v11 < v4)
    {
      goto LABEL_117;
    }

    outlined copy of Data._Representation(v12, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v68, *(&v68 + 1));
    a1[2] = v11;
    v16 = bswap32(0) >> 16;
    v17 = v11 + v16;
    if (__OFADD__(v11, v16))
    {
      goto LABEL_118;
    }

    v12 = *a1;
    v13 = a1[1];
    v18 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v18 == 2)
      {
        v19 = *(v12 + 24);
        goto LABEL_30;
      }

      if (v17 <= 0)
      {
        goto LABEL_33;
      }

LABEL_104:
      v9 = v66;
LABEL_106:
      outlined consume of Data._Representation(v12, v13);
LABEL_110:
      *a1 = v8;
      a1[1] = v2;
      v53 = v9;
      a1[2] = v67;
      return v53;
    }

    v19 = v18 ? v12 >> 32 : BYTE6(v13);
LABEL_30:
    if (v19 < v17)
    {
      goto LABEL_104;
    }

LABEL_33:
    if (v17 < v11)
    {
      goto LABEL_119;
    }

    v20 = Data._Representation.subscript.getter();
    a1[2] = v17;
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v23 = *(v20 + 16);
        *&v68 = v20;
        *(&v68 + 1) = v21;
        v69 = v23;
LABEL_45:
        v24 = *(v20 + 24);
        goto LABEL_46;
      }
    }

    else if (v22)
    {
      v23 = v20;
      *&v68 = v20;
      *(&v68 + 1) = v21;
      v69 = v20;
LABEL_42:
      v24 = v20 >> 32;
      goto LABEL_46;
    }

    v23 = 0;
    *&v68 = v20;
    *(&v68 + 1) = v21;
    v69 = 0;
    if (v22 <= 1)
    {
      if (!v22)
      {
        v23 = 0;
        v24 = BYTE6(v21);
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    v24 = 0;
    if (v22 != 3)
    {
      v23 = 0;
      goto LABEL_45;
    }

LABEL_46:
    if (__OFSUB__(v24, v23))
    {
      goto LABEL_120;
    }

    v25 = ByteBuffer.readSlice(length:)(v24 - v23);
    if (v26 >> 60 == 15)
    {
      goto LABEL_127;
    }

    v28 = v26;
    v29 = *(&v68 + 1) >> 62;
    if ((*(&v68 + 1) >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v68 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v68 >> 32;
    }

    else
    {
      v30 = BYTE14(v68);
    }

    if (__OFSUB__(v30, v69))
    {
      goto LABEL_121;
    }

    v64 = v25;
    v65 = v27;
    if (v30 != v69)
    {
      v52 = *(&v68 + 1);
      v51 = v68;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v64, v28);
      outlined consume of Data._Representation(v51, v52);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v8;
      a1[1] = v2;
      a1[2] = v67;
      v68 = xmmword_1B26C66C0;
      LOBYTE(v69) = 2;
      swift_willThrowTypedImpl();

      return 1;
    }

    outlined consume of Data._Representation(v68, *(&v68 + 1));
    outlined consume of Data._Representation(v8, v2);
    v8 = *a1;
    v2 = a1[1];
    v31 = a1[2];
    v32 = v31 + 2;
    if (__OFADD__(v31, 2))
    {
      goto LABEL_122;
    }

    v33 = v2 >> 62;
    v67 = a1[2];
    if ((v2 >> 62) <= 1)
    {
      if (v33)
      {
        v34 = v8 >> 32;
      }

      else
      {
        v34 = BYTE6(v2);
      }

LABEL_65:
      if (v34 < v32)
      {
        goto LABEL_107;
      }

      goto LABEL_68;
    }

    if (v33 == 2)
    {
      v34 = *(v8 + 24);
      goto LABEL_65;
    }

    if (v32 >= 1)
    {
LABEL_107:
      outlined copy of Data._Representation(v8, v2);
      outlined consume of ByteBuffer?(v64, v28);
LABEL_109:
      outlined consume of Data._Representation(*a1, a1[1]);
      v9 = v66;
      goto LABEL_110;
    }

LABEL_68:
    *&v68 = *a1;
    *(&v68 + 1) = v2;
    if (v32 < v31)
    {
      goto LABEL_123;
    }

    outlined copy of Data._Representation(v8, v2);
    outlined copy of Data._Representation(v8, v2);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v68, *(&v68 + 1));
    v35 = bswap32(0) >> 16;
    a1[2] = v32;
    v36 = v32 + v35;
    if (__OFADD__(v32, v35))
    {
      goto LABEL_124;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 == 2)
      {
        if (*(v37 + 24) < v36)
        {
          goto LABEL_108;
        }

        goto LABEL_80;
      }

      if (v36 <= 0)
      {
        goto LABEL_80;
      }

LABEL_108:
      outlined consume of ByteBuffer?(v64, v28);
      goto LABEL_109;
    }

    if (v39)
    {
      if (v37 >> 32 < v36)
      {
        goto LABEL_108;
      }
    }

    else if (BYTE6(v38) < v36)
    {
      goto LABEL_108;
    }

LABEL_80:
    if (v36 < v32)
    {
      goto LABEL_125;
    }

    v40 = Data._Representation.subscript.getter();
    v42 = 0;
    a1[2] = v36;
    v43 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v9 = v66;
      if (v43 == 2)
      {
        v42 = *(v40 + 16);
      }
    }

    else
    {
      v9 = v66;
      if (v43)
      {
        v42 = v40;
      }
    }

    *&v68 = v40;
    *(&v68 + 1) = v41;
    v69 = v42;
    v53 = _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF0E10ExtensionsL_ySayAA9ExtensionOGACzAKYKF(&v68);
    if (v5)
    {
      v59 = v44;
      v54 = v45;
      v57 = *(&v68 + 1);
      v58 = v68;
      goto LABEL_112;
    }

    v5 = 0;
    v46 = *(&v68 + 1) >> 62;
    if ((*(&v68 + 1) >> 62) > 1)
    {
      if (v46 == 2)
      {
        v47 = *(v68 + 24);
      }

      else
      {
        v47 = 0;
      }
    }

    else if (v46)
    {
      v47 = v68 >> 32;
    }

    else
    {
      v47 = BYTE14(v68);
    }

    if (__OFSUB__(v47, v69))
    {
      goto LABEL_126;
    }

    if (v47 != v69)
    {
      break;
    }

    outlined consume of Data._Representation(v68, *(&v68 + 1));
    outlined consume of Data._Representation(v8, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v49 = *(v9 + 2);
    v48 = *(v9 + 3);
    if (v49 >= v48 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v9);
    }

    *(v9 + 2) = v49 + 1;
    v50 = &v9[32 * v49];
    *(v50 + 4) = v64;
    *(v50 + 5) = v28;
    *(v50 + 6) = v65;
    *(v50 + 7) = v53;
    v8 = *a1;
    v2 = a1[1];
    v3 = a1[2];
    v4 = v3 + 1;
    LODWORD(v7) = v63;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_114;
    }
  }

  v54 = 2;
  v56 = *(&v68 + 1);
  v55 = v68;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  v57 = v56;
  v58 = v55;
  v59 = 0;
  v53 = 1;
LABEL_112:
  outlined consume of Data._Representation(v58, v57);
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v8;
  a1[1] = v2;
  a1[2] = v67;
  *&v68 = v53;
  *(&v68 + 1) = v59;
  LOBYTE(v69) = v54;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v64, v28);

  return v53;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF0E10ExtensionsL_ySayAA9ExtensionOGACzAKYKF(uint64_t *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v45 = *a1;
  LOWORD(v64) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
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
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v46 = BYTE6(v2);
  v47 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v46;
      if (v7)
      {
        v9 = v45 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        return v8;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v45 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      return v8;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v58 = *a1;
    *(&v58 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v48 = v5;
    *&v50 = v3;
    *(&v50 + 1) = v4;
    v49 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v12 = v64;
    a1[2] = v49;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v64) = 0;
    v15 = v49 + 2;
    if (__OFADD__(v49, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v58 = v14;
    *(&v58 + 1) = v13;
    if (v15 < v49)
    {
      goto LABEL_66;
    }

    *&v50 = v49;
    *(&v50 + 1) = v49 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v18 = bswap32(v64) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v48;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v48;
      if (v27)
      {
        v26 = v24;
      }
    }

    v64 = v24;
    v65 = v25;
    v66 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v64, bswap32(v12) >> 16, 11, 0, v56, &v58);
    if (v28)
    {
      v8 = v56[0];
      v43 = v56[1];
      v38 = v57;
      v42 = v64;
      v41 = v65;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v64 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v64 >> 32;
    }

    else
    {
      v30 = BYTE6(v65);
    }

    if (__OFSUB__(v30, v66))
    {
      goto LABEL_69;
    }

    if (v30 != v66)
    {
      v38 = 2;
      v39 = v64;
      v40 = v65;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v50 = v58;
      v51 = v59;
      outlined destroy of Extension(&v50);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v49;
      *&v58 = v8;
      *(&v58 + 1) = v43;
      LOBYTE(v59) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      return v8;
    }

    outlined consume of Data._Representation(v64, v65);
    outlined consume of Data._Representation(v14, v13);
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v50 = v58;
    v51 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v47;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v51;
    *(v33 + 32) = v50;
    *(v33 + 48) = v34;
    v35 = v52;
    v36 = v53;
    v37 = v54;
    *(v33 + 112) = v55;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v64) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v49;
  return v8;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO25receivedServerCertificate_16certificateBytesyAA0G7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v30 = a3;
  v31 = a5;
  v11 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for HandshakeState(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  v29 = v7;
  outlined init with copy of HandshakeState(v7, &v29 - v21, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of HandshakeState.IdleState(v22, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined init with copy of HandshakeState(v16, v14, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined copy of Data._Representation(a1, a2);

    v24 = v31;
    v23 = v32;
    outlined copy of Data._Representation(v31, v32);
    v25 = v34[4];
    _s15SwiftTLSLibrary14HandshakeStateO017ServerCertificateD0V08originalD006serverF016certificateBytesAeC019EncryptedExtensionsD0V_AA0F7MessageVAA10ByteBufferVtAA8TLSErrorOYKcfC(v14, a1, a2, v30, a4, v24, v23, v33, v20, v34);
    if (v25)
    {
      v26 = v34[0];
      outlined destroy of HandshakeState(v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    }

    else
    {
      v27 = v29;
      v26 = 0;
      outlined destroy of HandshakeState(v29, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v20, v27, type metadata accessor for HandshakeState);
    }

    return v26;
  }

  else
  {
    result = outlined destroy of HandshakeState(v22, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary14HandshakeStateO017ServerCertificateD0V08originalD006serverF016certificateBytesAeC019EncryptedExtensionsD0V_AA0F7MessageVAA10ByteBufferVtAA8TLSErrorOYKcfC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v101 = a8;
  v117 = a7;
  v107 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v93 - v17;
  v19 = type metadata accessor for PeerCertificateBundle(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v102 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v105 = &v93 - v22;
  *(a9 + 88) = xmmword_1B26C5EF0;
  *(a9 + 104) = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v106 = __swift_project_value_buffer(v23, logger);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = a5;
    v104 = a4;
    v28 = a9;
    v29 = v18;
    v30 = a2;
    v31 = a3;
    v32 = v27;
    v33 = a1;
    v34 = v26;
    *v26 = 0;
    _os_log_impl(&dword_1B25F5000, v24, v25, "validating certificate", v26, 2u);
    v35 = v34;
    a1 = v33;
    v36 = v32;
    a3 = v31;
    a2 = v30;
    v18 = v29;
    a9 = v28;
    a4 = v104;
    a5 = v36;
    MEMORY[0x1B274ECF0](v35, -1, -1);
  }

  v37 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v38 = *(a2 + 24);
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v37)
  {
    v38 = a2 >> 32;
  }

  else
  {
    v38 = BYTE6(a3);
  }

  if (__OFSUB__(v38, a4))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v38 != a4)
  {
    v41 = a4;
    outlined copy of Data._Representation(a2, a3);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      outlined consume of Data._Representation(a2, a3);

LABEL_35:
      v112 = xmmword_1B26C6410;
      v52 = 2;
      LOBYTE(v113) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v107, v117);
      outlined consume of Data._Representation(a2, a3);

      outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v53 = 0;
      v54 = 0;
      v55 = 5;
LABEL_36:
      outlined consume of ByteBuffer?(*(a9 + 88), *(a9 + 96));
      if (v54)
      {
        v77 = type metadata accessor for HandshakeState.ServerCertificateState(0);
        outlined destroy of HandshakeState(a9 + *(v77 + 40), type metadata accessor for PeerCertificateBundle);
        outlined destroy of P256.Signing.PrivateKey?(a9 + *(v77 + 44), &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      }

      *a10 = v55;
      *(a10 + 8) = v53;
      *(a10 + 16) = v52;
      return;
    }

    v45 = swift_slowAlloc();
    *v45 = 134217984;
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v46 = *(a2 + 24);
      }

      else
      {
        v46 = 0;
      }
    }

    else if (v37)
    {
      v46 = a2 >> 32;
    }

    else
    {
      v46 = BYTE6(a3);
    }

    v72 = __OFSUB__(v46, v41);
    v73 = v46 - v41;
    if (!v72)
    {
      *(v45 + 4) = v73;
      v74 = a2;
      v75 = v45;
      outlined consume of Data._Representation(v74, a3);

      _os_log_impl(&dword_1B25F5000, v42, v43, "received unexpected context: %ld", v75, 0xCu);
      v76 = v75;
      a2 = v74;
      MEMORY[0x1B274ECF0](v76, -1, -1);

      goto LABEL_35;
    }

LABEL_47:
    __break(1u);
    return;
  }

  v100 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v39 = v105;
  outlined init with copy of Any?(a1 + *(v100 + 20), v105, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v40 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v39, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_23:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = a2;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B25F5000, v47, v48, "received server certificate message while resuming session", v50, 2u);
      v51 = v50;
      a2 = v49;
      MEMORY[0x1B274ECF0](v51, -1, -1);
    }

    v112 = xmmword_1B26C6430;
    v52 = 2;
    LOBYTE(v113) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v107, v117);
    outlined consume of Data._Representation(a2, a3);

    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v53 = 0;
    v54 = 0;
    v55 = 4;
    goto LABEL_36;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of HandshakeState(v39, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    goto LABEL_23;
  }

  v56 = *v39;
  v99 = *(v39 + 16);
  v58 = *(a1 + 48);
  v114 = *(a1 + 32);
  v57 = v114;
  v115 = v58;
  v116 = *(a1 + 64);
  v59 = *(a1 + 16);
  v112 = *a1;
  v60 = v112;
  v113 = v59;
  *(a9 + 64) = v116;
  *(a9 + 32) = v57;
  *(a9 + 48) = v58;
  *a9 = v60;
  *(a9 + 16) = v59;
  v98 = *(v39 + 4);
  *(a9 + 66) = v56;
  v61 = v100;
  v62 = (a1 + *(v100 + 24));
  v63 = v62[1];
  *(a9 + 72) = *v62;
  *(a9 + 80) = v63;
  v64 = (a1 + v61[7]);
  v94 = *v64;
  v105 = a1;
  v104 = a4;
  v66 = v64[1];
  v65 = v64[2];
  v67 = *(a9 + 96);
  v97 = *(a9 + 88);
  v96 = v67;
  v95 = *(a9 + 104);
  outlined init with copy of HandshakeStateMachine.Configuration(&v112, v110);
  v93 = v63;

  v68 = v94;
  outlined copy of Data?(v94, v66);
  outlined consume of ByteBuffer?(v97, v96);
  *(a9 + 88) = v68;
  *(a9 + 96) = v66;
  *(a9 + 104) = v65;
  *(a9 + 112) = *(v105 + v61[8]);
  outlined copy of Data._Representation(a2, a3);

  v69 = v102;
  v70 = v103;
  _s15SwiftTLSLibrary21PeerCertificateBundleV08expectedD4Type04peerD7MessageAcA0dG0V_AA0dI0VtAA8TLSErrorOYKcfC(v98, a2, a3, a5, v108, v102);
  v54 = v70 == 0;
  v71 = a2;
  if (v70)
  {
    v55 = v108[0];
    v53 = v108[1];
    v52 = v109;
    outlined consume of Data._Representation(v107, v117);
    outlined consume of Data._Representation(v71, a3);

    outlined destroy of HandshakeState(v105, type metadata accessor for HandshakeState.EncryptedExtensionsState);
LABEL_41:
    v87 = *(a9 + 48);
    v110[2] = *(a9 + 32);
    v110[3] = v87;
    v111 = *(a9 + 64);
    v88 = *(a9 + 16);
    v110[0] = *a9;
    v110[1] = v88;
    outlined destroy of HandshakeStateMachine.Configuration(v110);

    goto LABEL_36;
  }

  v103 = a2;
  v104 = a5;
  v99 = 0;

  v78 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  outlined init with take of HandshakeState.IdleState(v69, a9 + v78[10], type metadata accessor for PeerCertificateBundle);
  v79 = v105;
  outlined init with copy of Any?(v105 + v61[9], a9 + v78[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  *(a9 + v78[12]) = *(v79 + v61[13]);
  outlined init with copy of Any?(v79 + v61[12], v18, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v80 = type metadata accessor for PAKEClientState(0);
  v81 = (*(*(v80 - 8) + 48))(v18, 1, v80) != 1;
  outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  *(a9 + v78[13]) = v81;
  v82 = v107;
  v83 = v99;
  v84 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v107, v117, v101);
  if (v83)
  {
    v55 = v84;
    v53 = v85;
    v52 = v86;
    outlined destroy of HandshakeState(v79, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined consume of Data._Representation(v82, v117);
    outlined consume of Data._Representation(v103, a3);

    goto LABEL_41;
  }

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_1B25F5000, v89, v90, "certificate valid", v91, 2u);
    MEMORY[0x1B274ECF0](v91, -1, -1);
    outlined consume of Data._Representation(v82, v117);

    outlined consume of Data._Representation(v103, a3);
  }

  else
  {
    outlined consume of Data._Representation(v82, v117);
    outlined consume of Data._Representation(v103, a3);
  }

  v92 = v105;

  outlined destroy of HandshakeState(v92, type metadata accessor for HandshakeState.EncryptedExtensionsState);
}

uint64_t _s15SwiftTLSLibrary21PeerCertificateBundleV08expectedD4Type04peerD7MessageAcA0dG0V_AA0dI0VtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v12 = a1;
  v14 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v12)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = a2;
      v36 = a3;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1B25F5000, v33, v34, "invalid attempt to negotiate x.509 auth", v37, 2u);
      v38 = v37;
      a3 = v36;
      a2 = v35;
      MEMORY[0x1B274ECF0](v38, -1, -1);
    }

    v79 = xmmword_1B26C6400;
    v80 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a2, a3);

    v40 = 6;
    goto LABEL_35;
  }

  if (v12 != 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78 = a5;
      *&v79 = v45;
      v46 = a2;
      v47 = a3;
      v48 = v45;
      *v44 = 136315138;
      v49 = CertificateType.description.getter(v12);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v79);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_1B25F5000, v42, v43, "unsupported certificate type from peer: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v52 = v48;
      a3 = v47;
      a2 = v46;
      a5 = v78;
      MEMORY[0x1B274ECF0](v52, -1, -1);
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    v79 = xmmword_1B26C6430;
    v80 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a2, a3);

    v40 = 4;
    goto LABEL_35;
  }

  if (a4[2] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, logger);
    outlined copy of Data._Representation(a2, a3);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = a3;
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = a4[2];
      outlined consume of Data._Representation(a2, v56);

      _os_log_impl(&dword_1B25F5000, v54, v55, "invalid number of public key entries: %ld", v57, 0xCu);
      v58 = v57;
      a3 = v56;
      MEMORY[0x1B274ECF0](v58, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(a2, a3);
    }

    v79 = xmmword_1B26C6410;
    v80 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_34;
  }

  v75 = a6;
  v17 = a4[5];
  v19 = a4[6];
  v18 = a4[7];
  v20 = *(v18 + 16);
  v77 = a4[4];
  v81 = v17;
  outlined copy of Data._Representation(v77, v17);
  v21 = one-time initialization token for logger;
  v76 = v18;

  if (v20)
  {
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = v77;
    v24 = v81;
    outlined copy of Data._Representation(v77, v81);
    v25 = v76;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a2;
      v29 = a3;
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v25 + 16);
      outlined consume of Data._Representation(v23, v81);

      _os_log_impl(&dword_1B25F5000, v26, v27, "invalid number of extensions: %ld", v30, 0xCu);
      v31 = v30;
      a3 = v29;
      a2 = v28;
      v24 = v81;
      MEMORY[0x1B274ECF0](v31, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(v23, v24);
    }

    v79 = xmmword_1B26C6410;
    v80 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v23, v24);

LABEL_34:
    outlined consume of Data._Representation(a2, a3);

    v40 = 5;
LABEL_35:
    *a5 = v40;
    *(a5 + 8) = 0;
    *(a5 + 16) = 2;
    return result;
  }

  v74 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, logger);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v78 = a5;
    v63 = a2;
    v64 = a3;
    v65 = v62;
    *v62 = 0;
    _os_log_impl(&dword_1B25F5000, v60, v61, "constructing public key from peer bytes", v62, 2u);
    v66 = v65;
    a3 = v64;
    a2 = v63;
    a5 = v78;
    MEMORY[0x1B274ECF0](v66, -1, -1);
  }

  v67 = v81;
  v68 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    result = v74;
    if (v68 == 2)
    {
      v69 = *(v77 + 24);
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    result = v74;
    if (v68)
    {
      v69 = v77 >> 32;
    }

    else
    {
      v69 = BYTE6(v81);
    }
  }

  if (v69 < result)
  {
    __break(1u);
  }

  else
  {
    v70 = v77;
    *&v79 = Data._Representation.subscript.getter();
    *(&v79 + 1) = v71;
    lazy protocol witness table accessor for type Data and conformance Data();
    P256.Signing.PublicKey.init<A>(derRepresentation:)();
    if (v8)
    {

      v79 = xmmword_1B26C6420;
      v80 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v70, v67);

      outlined consume of Data._Representation(a2, a3);

      v40 = 32;
      goto LABEL_35;
    }

    outlined consume of Data._Representation(v70, v67);

    outlined consume of Data._Representation(a2, a3);

    v72 = type metadata accessor for P256.Signing.PublicKey();
    (*(*(v72 - 8) + 56))(v16, 0, 1, v72);
    return outlined init with take of PeerCertificateBundle.Bundle(v16, v75);
  }

  return result;
}

uint64_t outlined init with take of PeerCertificateBundle.Bundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV33handleReadServerCertificateVerify33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B25F5000, v3, v4, "client expecting certificate verify", v5, 2u);
    MEMORY[0x1B274ECF0](v5, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v21, &v22);
  if (v1)
  {
    return v21;
  }

  v17[6] = v28;
  v17[7] = v29;
  v17[2] = v24;
  v17[3] = v25;
  v17[4] = v26;
  v17[5] = v27;
  v17[0] = v22;
  v17[1] = v23;
  *&v20[80] = v28;
  *&v20[96] = v29;
  *&v20[16] = v24;
  *&v20[32] = v25;
  *&v20[48] = v26;
  *&v20[64] = v27;
  v18 = v30;
  v20[112] = v30;
  v19 = v22;
  *v20 = v23;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v19) == 1)
  {
LABEL_6:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "incomplete message, waiting for more data", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }

    return 1;
  }

  else
  {
    v31[4] = *&v20[72];
    v32[0] = *&v20[88];
    *(v32 + 9) = *&v20[97];
    v31[0] = *&v20[8];
    v31[1] = *&v20[24];
    v31[2] = *&v20[40];
    v31[3] = *&v20[56];
    if (v20[112] == 5)
    {
      v33 = *&v20[8];
      v10 = *&v20[16];
      v11 = *&v20[32];
      outlined copy of Data._Representation(*&v20[16], *&v20[24]);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1B25F5000, v12, v13, "client got certificate verify", v14, 2u);
        MEMORY[0x1B274ECF0](v14, -1, -1);
      }

      v15 = v19;
      v16 = *v20;
      type metadata accessor for HandshakeStateMachine(0);
      _s15SwiftTLSLibrary14HandshakeStateO31receivedServerCertificateVerify011certificateH00iH5BytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v33, v10, *(&v10 + 1), v11, v15, *(&v15 + 1), v16);
      outlined destroy of HandshakeMessage(&v20[8]);
      outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v31);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v2 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  outlined copy of Data._Representation(*a1, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v7 & 0x10000) != 0 || (v8 = ByteBuffer.readSlice(length:)(v7), v9 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v6;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v8 >> 32;
  }

  else
  {
    v13 = BYTE6(v9);
  }

  result = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
    __break(1u);
    goto LABEL_27;
  }

  result = ByteBuffer.readSlice(length:)(result);
  v21 = result;
  if (v14 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v15 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v18 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v18 >> 32;
  }

  else
  {
    v16 = BYTE6(v19);
  }

  if (__OFSUB__(v16, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = v14;
  if (v16 == v20)
  {
    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(v5, v4);
    return v3;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v21, v17);
    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v6;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO31receivedServerCertificateVerify011certificateH00iH5BytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a6;
  v33 = a7;
  v31 = a4;
  v30 = a1;
  v12 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = type metadata accessor for HandshakeState(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v29 = v8;
  outlined init with copy of HandshakeState(v8, &v29 - v22, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of HandshakeState.IdleState(v23, v17, type metadata accessor for HandshakeState.ServerCertificateState);
    outlined init with copy of HandshakeState(v17, v15, type metadata accessor for HandshakeState.ServerCertificateState);
    outlined copy of Data._Representation(a2, a3);
    v24 = v32;
    outlined copy of Data._Representation(a5, v32);
    v25 = v34[4];
    _s15SwiftTLSLibrary14HandshakeStateO023ServerCertificateVerifyD0V08originalD0011certificateG00iG5BytesAeC0efD0V_AA0fG0VAA10ByteBufferVtAA8TLSErrorOYKcfC(v15, v30, a2, a3, v31, a5, v24, v33, v21, v34);
    if (v25)
    {
      v26 = v34[0];
      outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.ServerCertificateState);
    }

    else
    {
      v27 = v29;
      v26 = 0;
      outlined destroy of HandshakeState(v29, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v21, v27, type metadata accessor for HandshakeState);
    }

    return v26;
  }

  else
  {
    result = outlined destroy of HandshakeState(v23, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary14HandshakeStateO023ServerCertificateVerifyD0V08originalD0011certificateG00iG5BytesAeC0efD0V_AA0fG0VAA10ByteBufferVtAA8TLSErrorOYKcfC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v46 = a9;
  v16 = (a9 + v45[9]);
  *v16 = xmmword_1B26C5EF0;
  v57 = v16;
  v16[2] = 0;
  v17 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v19 = v17[10];
  v18 = v17[11];
  v20 = _s15SwiftTLSLibrary21PeerCertificateBundleV012verifyServerD15VerifySignature7message9validKeys12keySchedulerSbAA0dH0V_Say9CryptoKit4P256O7SigningO9PublicKeyVGAA013ClientSessionT7ManagerVyAJ6SHA384VGtAA8TLSErrorOYKF(a2, a3, a4, a5, *(a1 + 16));
  v23 = v20;
  if (v47)
  {
    v24 = v21;
    v25 = v22;
    outlined consume of Data._Representation(a6, a7);
    outlined consume of Data._Representation(a3, a4);
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
  }

  else
  {
    v42 = v18;
    v43 = a3;
    v48 = a4;
    if (v20)
    {
      v26 = (v46 + v45[8]);
      v27 = *(a1 + 48);
      v54 = *(a1 + 32);
      v55 = v27;
      v56 = *(a1 + 64);
      v28 = v56;
      v29 = *(a1 + 16);
      v52 = *a1;
      v30 = v52;
      v53 = v29;
      *(v46 + 32) = v54;
      *(v46 + 48) = v27;
      *(v46 + 64) = v28;
      *v46 = v30;
      *(v46 + 16) = v29;
      *(v46 + 66) = *(a1 + 66);
      *(v46 + 68) = *(a1 + 68);
      outlined init with copy of HandshakeState(a1 + v19, v46 + v45[7], type metadata accessor for PeerCertificateBundle);
      v31 = *(a1 + 80);
      *v26 = *(a1 + 72);
      v26[1] = v31;
      v33 = *(a1 + 88);
      v32 = *(a1 + 96);
      v34 = *(a1 + 104);
      v35 = v57;
      v40 = v57[1];
      v41 = *v57;
      outlined init with copy of HandshakeStateMachine.Configuration(&v52, &v51);

      outlined copy of Data?(v33, v32);
      outlined consume of ByteBuffer?(v41, v40);
      *v35 = v33;
      v35[1] = v32;
      v35[2] = v34;
      *(v46 + v45[10]) = *(a1 + 112);
      outlined init with copy of Any?(a1 + v42, v46 + v45[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      *(v46 + v45[12]) = *(a1 + v17[12]);
      *(v46 + v45[13]) = *(a1 + v17[13]);
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(a6, a7, a8);
      outlined consume of Data._Representation(a6, a7);
      outlined consume of Data._Representation(v43, v48);
      outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
      return;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, logger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B25F5000, v37, v38, "verification failed", v39, 2u);
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    v52 = xmmword_1B26CAC90;
    v25 = 2;
    LOBYTE(v53) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a6, a7);
    outlined consume of Data._Representation(a3, a4);
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
    v24 = 0;
    v23 = 12;
  }

  outlined consume of ByteBuffer?(*v57, v57[1]);
  *a10 = v23;
  *(a10 + 8) = v24;
  *(a10 + 16) = v25;
}

uint64_t _s15SwiftTLSLibrary21PeerCertificateBundleV012verifyServerD15VerifySignature7message9validKeys12keySchedulerSbAA0dH0V_Say9CryptoKit4P256O7SigningO9PublicKeyVGAA013ClientSessionT7ManagerVyAJ6SHA384VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v54._rawValue = a5;
  v57 = a4;
  v8 = a1;
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P256.Signing.PublicKey();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(v5, v17);
  result = (*(v12 + 48))(v17, 1, v11);
  if (result != 1)
  {
    v19 = *(v12 + 32);
    v62 = v14;
    v19(v14, v17, v11);
    if (v8 != 1027)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);
      outlined copy of Data._Representation(a2, a3);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      outlined consume of Data._Representation(a2, a3);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v60 = v34;
        *v33 = 136315138;
        v35 = SignatureScheme.description.getter(v8);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v60);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1B25F5000, v31, v32, "unsupported algorithm from peer: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1B274ECF0](v34, -1, -1);
        MEMORY[0x1B274ECF0](v33, -1, -1);
      }

      v38 = v62;
      v60 = xmmword_1B26C6400;
      v61 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      (*(v12 + 8))(v38, v11);
      return 6;
    }

    v53[0] = v5;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v53[1] = __swift_project_value_buffer(v20, logger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B25F5000, v21, v22, "validating signature from peer server", v23, 2u);
      MEMORY[0x1B274ECF0](v23, -1, -1);
    }

    v24 = v59;
    v25 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5();
    v27 = v26;
    v29 = v28;
    if (v24)
    {
      (*(v12 + 8))(v62, v11);
      return v25;
    }

    v39 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      result = v57;
      if (v39 == 2)
      {
        v40 = *(a2 + 24);
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      result = v57;
      if (v39)
      {
        v40 = a2 >> 32;
      }

      else
      {
        v40 = BYTE6(a3);
      }
    }

    if (v40 < result)
    {
      __break(1u);
    }

    else
    {
      *&v60 = Data._Representation.subscript.getter();
      *(&v60 + 1) = v41;
      lazy protocol witness table accessor for type Data and conformance Data();
      result = P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
      v42 = v27 >> 62;
      v43 = v62;
      if ((v27 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v44 = *(v25 + 24);
        }

        else
        {
          v44 = 0;
        }
      }

      else if (v42)
      {
        v44 = v25 >> 32;
      }

      else
      {
        v44 = BYTE6(v27);
      }

      if (v44 >= v29)
      {
        *&v60 = Data._Representation.subscript.getter();
        *(&v60 + 1) = v45;
        v46 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
        outlined consume of Data._Representation(v60, *(&v60 + 1));
        v47 = Logger.logObject.getter();
        if (v46)
        {
          v48 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_1B25F5000, v47, v48, "validation succeeded", v49, 2u);
            MEMORY[0x1B274ECF0](v49, -1, -1);
          }

          v50 = PeerCertificateBundle.wouldBeTrusted(forKeys:)(v54);
          outlined consume of Data._Representation(v25, v27);
          (*(v55 + 8))(v58, v56);
          (*(v12 + 8))(v43, v11);
          return v50;
        }

        else
        {
          v51 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v47, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1B25F5000, v47, v51, "signature validation failed", v52, 2u);
            MEMORY[0x1B274ECF0](v52, -1, -1);
          }

          outlined consume of Data._Representation(v25, v27);
          (*(v55 + 8))(v58, v56);
          (*(v12 + 8))(v43, v11);
          return 0;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  outlined init with copy of SessionKeyManager<SHA384>.State(v0, &v17 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      outlined init with copy of SessionKeyManager<SHA384>.State(v0, v7);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 1)
      {
        if (v12)
        {
          v14 = 0x6B616873646E6168;
        }

        else
        {
          v14 = 0x636553796C726165;
        }

        if (v12)
        {
          v13 = 0xEF74657263655365;
        }

        else
        {
          v13 = 0xEB00000000746572;
        }
      }

      else if (v12 == 2)
      {
        v13 = 0xEC00000074657263;
        v14 = 0x655372657473616DLL;
      }

      else
      {
        if (v12 != 3)
        {
          v13 = 0xE400000000000000;
          v14 = 1701602409;
          goto LABEL_21;
        }

        v13 = 0xEA00000000007374;
        v14 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_21:
      Logger.logInvalidStateTransition(stateName:event:)(v14, v13, 0xD00000000000001DLL, 0x80000001B26CD7E0);

      v17 = xmmword_1B26C6450;
      v15 = 2;
      v18 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v15;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v9, v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v15 = specialized SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter();
  outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  return v15;
}

uint64_t specialized SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for SHA384Digest();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = xmmword_1B26C6130;
  v11 = 0;
  specialized Data.append<A>(contentsOf:)(64, 32);
  specialized Data.append<A>(contentsOf:)(0xD000000000000021, 0x80000001B26CD800);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v8 = 0;
  v9[3] = MEMORY[0x1E69E6290];
  v9[4] = MEMORY[0x1E6969DF8];
  v9[0] = &v8;
  v9[1] = v9;
  __swift_project_boxed_opaque_existential_0(v9, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  type metadata accessor for SHA384();
  lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  v4 = dispatch thunk of HashFunction.finalize()();
  MEMORY[0x1EEE9AC00](v4);
  *&v7[-16] = &v10;
  lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v1 + 8))(v3, v0);
  v5 = v10;
  outlined copy of Data._Representation(v10, *(&v10 + 1));
  outlined consume of Data._Representation(v5, *(&v5 + 1));
  return v5;
}

uint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1, char a2)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v30 = a1;
  v31 = a2;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd, "V}");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v32, v34);
    v4 = __swift_project_boxed_opaque_existential_0(v34, v34[3]);
    MEMORY[0x1EEE9AC00](v4);
    v27 = v2;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  outlined destroy of ContiguousBytes?(v32);
  v6 = *v2;
  v7 = v2[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    v10 = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v9 = *(v11 + 8);
    v10 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    v10 = BYTE6(v7);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_52;
  }

  v10 = HIDWORD(v6) - v6;
  v9 = v6 >> 32;
LABEL_12:
  if (__OFADD__(v9, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v9 + a1 < v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = Data._Representation.resetBytes(in:)();
  MEMORY[0x1EEE9AC00](v12);
  v26[2] = v10;
  v26[3] = a1;
  v27 = &v30;
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:), v26);
  if (v15 == a1)
  {
    memset(v34, 0, 15);
    if (v14 != result)
    {
      if ((v14 & 0x8000000000000000) == 0 && v14 < result)
      {
        v16 = v13;
        LOBYTE(v17) = 0;
        for (i = v14 - result + 1; i != 1; ++i)
        {
          *(v34 + v17) = v16;
          v17 = v17 + 1;
          if ((v17 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v17 == 14)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            result = Data._Representation.append(contentsOf:)();
            if (!i)
            {
              return result;
            }

            LOBYTE(v17) = 0;
          }

          else if (!i)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            return Data._Representation.append(contentsOf:)();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 0;
    v20 = *v2;
    v21 = v2[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v19 = *(v20 + 16);
      }
    }

    else if (v22)
    {
      v19 = v20;
    }

    v23 = __OFADD__(v19, v10);
    v24 = v19 + v10;
    if (v23)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v24, v15))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v22)
    {
      v25 = v20 >> 32;
    }

    else
    {
      v25 = BYTE6(v21);
    }

    if (v25 < v24 + v15)
    {
      goto LABEL_51;
    }

    return Data._Representation.replaceSubrange(_:with:count:)();
  }

  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v20 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_1B26C6130;
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
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
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
    *v4 = xmmword_1B26C6130;
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
    *v4 = xmmword_1B26C6130;
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
  v19[2] = *MEMORY[0x1E69E9840];
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
    *v4 = xmmword_1B26C6130;
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
    *v4 = xmmword_1B26C6130;
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

  v12 = MEMORY[0x1B274CD90]();
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

  v12 = MEMORY[0x1B274CD90]();
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

  v12 = MEMORY[0x1B274CD90]();
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

uint64_t partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type SHA384 and conformance SHA384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = a1;
  v3[1] = a2;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

Swift::Bool __swiftcall PeerCertificateBundle.wouldBeTrusted(forKeys:)(Swift::OpaquePointer forKeys)
{
  v2 = v1;
  v70[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - v9;
  v11 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(v2, v13);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    goto LABEL_69;
  }

  (*(v5 + 32))(v10, v13, v4);
  v14 = *(forKeys._rawValue + 2);
  if (!v14)
  {
    v56 = 0;
    (*(v5 + 8))(v10, v4);
    return v56;
  }

  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v15 = v17;
  v18 = forKeys._rawValue + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v19 = *(v16 + 56);
  v66 = 0;
  v67 = v19;
  v68 = v16;
  v20 = (v16 - 8);
  v63 = v10;
  v64 = v4;
  v62 = v17;
  for (i = v17(v8, v18, v4); ; i = v15(v8, v18, v4))
  {
    v23 = MEMORY[0x1B274D470](i);
    v25 = v24;
    v26 = MEMORY[0x1B274D470]();
    v28 = v25 >> 62;
    v29 = v27 >> 62;
    if (v25 >> 62 == 3)
    {
      v30 = 0;
      if (!v23 && v25 == 0xC000000000000000 && v27 >> 62 == 3)
      {
        v30 = 0;
        if (!v26 && v27 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v57 = 0;
          v58 = 0xC000000000000000;
          goto LABEL_58;
        }
      }

LABEL_25:
      if (v29 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        v30 = BYTE6(v25);
        if (v29 > 1)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      LODWORD(v30) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_64;
      }

      v30 = v30;
      goto LABEL_25;
    }

    if (v28 == 2)
    {
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_63;
      }

      goto LABEL_25;
    }

    v30 = 0;
    if (v29 > 1)
    {
LABEL_31:
      if (v29 != 2)
      {
        if (!v30)
        {
          break;
        }

LABEL_5:
        outlined consume of Data._Representation(v26, v27);
        outlined consume of Data._Representation(v23, v25);
        v22 = *v20;
        (*v20)(v8, v4);
        goto LABEL_6;
      }

      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      v33 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v33)
      {
        goto LABEL_62;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (!v29)
    {
      v34 = BYTE6(v27);
      goto LABEL_33;
    }

    LODWORD(v34) = HIDWORD(v26) - v26;
    if (__OFSUB__(HIDWORD(v26), v26))
    {
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
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    v34 = v34;
LABEL_33:
    if (v30 != v34)
    {
      goto LABEL_5;
    }

    if (v30 < 1)
    {
      break;
    }

    if (v28 > 1)
    {
      v41 = v26;
      v65 = v27;
      if (v28 != 2)
      {
        memset(v70, 0, 14);
        v38 = v65;
        v55 = v66;
        closure #1 in static Data.== infix(_:_:)(v70, v26, v65, &v69);
        v66 = v55;
        v40 = v41;
        goto LABEL_51;
      }

      v42 = *(v23 + 16);
      v61 = *(v23 + 24);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_67;
        }

        v43 += v42 - v44;
      }

      if (__OFSUB__(v61, v42))
      {
        goto LABEL_66;
      }

      MEMORY[0x1B274CD90]();
      v45 = v43;
      v47 = v65;
      v46 = v66;
      closure #1 in static Data.== infix(_:_:)(v45, v41, v65, v70);
      v66 = v46;
      v48 = v41;
    }

    else
    {
      if (!v28)
      {
        v70[0] = v23;
        LOWORD(v70[1]) = v25;
        BYTE2(v70[1]) = BYTE2(v25);
        BYTE3(v70[1]) = BYTE3(v25);
        BYTE4(v70[1]) = BYTE4(v25);
        BYTE5(v70[1]) = BYTE5(v25);
        v37 = v26;
        v38 = v27;
        v39 = v66;
        closure #1 in static Data.== infix(_:_:)(v70, v26, v27, &v69);
        v66 = v39;
        v40 = v37;
LABEL_51:
        outlined consume of Data._Representation(v40, v38);
        outlined consume of Data._Representation(v23, v25);
        v54 = v69;
        goto LABEL_52;
      }

      if (v23 >> 32 < v23)
      {
        goto LABEL_65;
      }

      v61 = v26;
      v65 = v27;
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v23, v50))
        {
          goto LABEL_68;
        }

        v49 += v23 - v50;
      }

      MEMORY[0x1B274CD90]();
      v51 = v49;
      v52 = v61;
      v47 = v65;
      v53 = v66;
      closure #1 in static Data.== infix(_:_:)(v51, v61, v65, v70);
      v66 = v53;
      v48 = v52;
    }

    outlined consume of Data._Representation(v48, v47);
    outlined consume of Data._Representation(v23, v25);
    v54 = v70[0];
LABEL_52:
    v22 = *v20;
    v4 = v64;
    (*v20)(v8, v64);
    v15 = v62;
    if (v54)
    {
      v56 = 1;
      v10 = v63;
      goto LABEL_59;
    }

    v10 = v63;
LABEL_6:
    v18 += v67;
    if (!--v14)
    {
      v56 = 0;
      goto LABEL_59;
    }
  }

  outlined consume of Data._Representation(v26, v27);
  v57 = v23;
  v58 = v25;
LABEL_58:
  outlined consume of Data._Representation(v57, v58);
  v22 = *v20;
  (*v20)(v8, v4);
  v56 = 1;
LABEL_59:
  v22(v10, v4);
  return v56;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1B274CD90]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1B274CD90]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v40 = a2;
  v7 = type metadata accessor for PartialHandshakeResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v60 = __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v6;
    v15 = v8;
    v16 = v7;
    v17 = a1;
    v18 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B25F5000, v12, v13, "client expecting finished", v14, 2u);
    v19 = v18;
    a1 = v17;
    v7 = v16;
    v8 = v15;
    v5 = v3;
    v6 = v39;
    MEMORY[0x1B274ECF0](v19, -1, -1);
  }

  if (v6[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v6, v6, v47, &v49);
  if (v5)
  {
    v24 = v47[0];
    v23 = v47[1];
    v25 = v48;
LABEL_11:
    *a1 = v24;
    *(a1 + 8) = v23;
    *(a1 + 16) = v25;
    return;
  }

  v43[6] = v55;
  v43[7] = v56;
  v43[2] = v51;
  v43[3] = v52;
  v43[4] = v53;
  v43[5] = v54;
  v43[0] = v49;
  v43[1] = v50;
  v46[5] = v55;
  v46[6] = v56;
  v46[1] = v51;
  v46[2] = v52;
  v46[3] = v53;
  v46[4] = v54;
  v44 = v57;
  LOBYTE(v46[7]) = v57;
  v45 = v49;
  v46[0] = v50;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v45) == 1)
  {
LABEL_6:
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "incomplete message, waiting for more data", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    (*(v8 + 56))(v40, 1, 1, v7);
    return;
  }

  v58[4] = *(&v46[4] + 8);
  v59[0] = *(&v46[5] + 8);
  *(v59 + 9) = *(&v46[6] + 1);
  v58[0] = *(v46 + 8);
  v58[1] = *(&v46[1] + 8);
  v58[2] = *(&v46[2] + 8);
  v58[3] = *(&v46[3] + 8);
  if (LOBYTE(v46[7]) != 6)
  {
    HandshakeStateMachine.logUnexpectedMessage(message:)(v58);
    v41 = xmmword_1B26C6430;
    v25 = 2;
    v42 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v43, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v23 = 0;
    v24 = 4;
    goto LABEL_11;
  }

  v35 = a1;
  v37 = *(&v46[1] + 1);
  v38 = *&v46[1];
  v39 = *(&v46[0] + 1);
  outlined copy of Data._Representation(*(&v46[0] + 1), *&v46[1]);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1B25F5000, v26, v27, "client got server finished ", v28, 2u);
    MEMORY[0x1B274ECF0](v28, -1, -1);
  }

  v29 = v45;
  v36 = *&v46[0];
  type metadata accessor for HandshakeStateMachine(0);
  _s15SwiftTLSLibrary14HandshakeStateO23receievedServerFinished06serverG00hG5Bytes10serializerAA07PartialC6ResultVAA0G7MessageV_AA10ByteBufferVAA20TLSMessageSerializerVztAA8TLSErrorOYKF(v39, v38, v37, v29, *(&v29 + 1), v36, v47, v10);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1B25F5000, v30, v31, "client sending client finished", v33, 2u);
    MEMORY[0x1B274ECF0](v33, -1, -1);
  }

  outlined destroy of HandshakeMessage(v46 + 8);

  outlined destroy of P256.Signing.PrivateKey?(v43, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  v34 = v40;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v10, v40, type metadata accessor for PartialHandshakeResult);
  (*(v8 + 56))(v34, 0, 1, v7);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO23receievedServerFinished06serverG00hG5Bytes10serializerAA07PartialC6ResultVAA0G7MessageV_AA10ByteBufferVAA20TLSMessageSerializerVztAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1)@<X4>, uint64_t (*a6)(char *, char *, uint64_t)@<X5>, void *a7@<X7>, uint64_t *a8@<X8>)
{
  v155 = a7;
  v161 = a5;
  v162 = a6;
  v159 = a3;
  v160 = a4;
  v157 = a1;
  v158 = a2;
  v151 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v140 = &v135 - v10;
  v154 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v11 = MEMORY[0x1EEE9AC00](v154);
  v141 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v135 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v138 = &v135 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = &v135 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v142 = &v135 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v144 = &v135 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v135 - v26;
  v156 = type metadata accessor for SymmetricKey();
  v153 = *(v156 - 8);
  v28 = MEMORY[0x1EEE9AC00](v156);
  v137 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v139 = &v135 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v146 = &v135 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v147 = &v135 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v148 = &v135 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v135 - v38;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v40 = MEMORY[0x1EEE9AC00](ready);
  v145 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v135 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v135 - v45;
  v47 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v135 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v135 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v8;
  outlined init with copy of HandshakeState(v8, v52, type metadata accessor for HandshakeState);
  v149 = v50;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    v54 = type metadata accessor for HandshakeState;
    if (EnumCaseMultiPayload != 5)
    {
LABEL_32:
      outlined destroy of HandshakeState(v52, v54);
      __break(1u);
      goto LABEL_33;
    }

    outlined init with take of HandshakeState.IdleState(v52, v49, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v55 = v166;
    v56 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC0g17CertificateVerifyD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v46, v49, v157, v158, v159, v160, v161, v162, v134, &v163);
    if (v55)
    {
      v59 = v163;
      v60 = v164;
      v61 = v165;
      v62 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      v63 = v49;
LABEL_19:
      result = outlined destroy of HandshakeState(v63, v62);
      v115 = v155;
      *v155 = v59;
      v115[1] = v60;
      *(v115 + 16) = v61;
      return result;
    }

    v70 = v39;
    v161 = v57;
    v162 = v58;
    v160 = v56;
    v166 = 0;
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v27);
    v52 = v153;
    v71 = (v153 + 48);
    v72 = *(v153 + 6);
    v73 = v156;
    if (v72(v27, 1, v156) == 1)
    {
      v144 = v27;
    }

    else
    {
      v74 = *(v52 + 4);
      v52 += 32;
      v159 = v74;
      (v74)(v70, v27, v73);
      v75 = v144;
      specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v144);
      v76 = v156;
      if (v72(v75, 1, v156) != 1)
      {
        v77 = v150;
        outlined destroy of HandshakeState(v150, type metadata accessor for HandshakeState);
        outlined destroy of HandshakeState(v49, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v78 = v159;
        (v159)(v148, v75, v76);
        outlined init with take of HandshakeState.IdleState(v46, v77, type metadata accessor for HandshakeState.ReadyState);
        swift_storeEnumTagMultiPayload();
        v79 = type metadata accessor for PartialHandshakeResult(0);
        v80 = v79[5];
        v81 = v151;
        (v78)(v151 + v80, v70, v76);
        v82 = v76;
        v83 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v84 = *(*(v83 - 8) + 56);
        v84(v81 + v80, 0, 1, v83);
        v85 = v79[6];
        (v78)(v81 + v85, v148, v82);
        swift_storeEnumTagMultiPayload();
        result = (v84)(v81 + v85, 0, 1, v83);
        v87 = v161;
        *v81 = v160;
        v81[1] = v87;
        v81[2] = v162;
        *(v81 + v79[7]) = xmmword_1B26C5EF0;
        return result;
      }

      (*(v153 + 1))(v70, v76);
    }

    outlined destroy of P256.Signing.PrivateKey?(v144, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __break(1u);
    goto LABEL_28;
  }

  outlined init with copy of HandshakeState(v52, v14, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v64 = v154;
  if ((v14[*(v154 + 40)] & 1) != 0 || v14[*(v154 + 44)] == 1)
  {
    v65 = v166;
    v66 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v44, v14, v157, v158, v159, v160, v161, v162, v134, &v163);
    if (v65)
    {
      v59 = v163;
      v60 = v164;
      v61 = v165;
      v69 = v14;
LABEL_18:
      outlined destroy of HandshakeState(v69, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v63 = v52;
      v62 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      goto LABEL_19;
    }

    v161 = v67;
    v162 = v68;
    v160 = v66;
    v166 = 0;
    v49 = v142;
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v142);
    v46 = v153;
    v71 = (v153 + 48);
    v88 = *(v153 + 6);
    v89 = v156;
    if (v88(v49, 1, v156) == 1)
    {
LABEL_28:
      v143 = v49;
LABEL_30:
      outlined destroy of P256.Signing.PrivateKey?(v143, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      __break(1u);
      goto LABEL_31;
    }

    v90 = *(v46 + 4);
    v46 += 32;
    v91 = v49;
    v92 = v90;
    (v90)(v147, v91, v89);
    v93 = v143;
    specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v143);
    v94 = v156;
    if (v88(v93, 1, v156) == 1)
    {
      (*(v153 + 1))(v147, v94);
      goto LABEL_30;
    }

    v95 = v150;
    outlined destroy of HandshakeState(v150, type metadata accessor for HandshakeState);
    v159 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of HandshakeState(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    (v92)(v146, v93, v94);
    v96 = v92;
    v158 = v92;
    outlined init with take of HandshakeState.IdleState(v44, v95, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v97 = v94;
    v98 = type metadata accessor for PartialHandshakeResult(0);
    v99 = v98[5];
    v100 = v151;
    (v96)(v151 + v99, v147, v97);
    v101 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v102 = *(*(v101 - 8) + 56);
    v102(v100 + v99, 0, 1, v101);
    v103 = v98[6];
    (v158)(v100 + v103, v146, v97);
    swift_storeEnumTagMultiPayload();
    v102(v100 + v103, 0, 1, v101);
    v104 = v161;
    *v100 = v160;
    v100[1] = v104;
    v100[2] = v162;
    *(v100 + v98[7]) = xmmword_1B26C5EF0;
    v105 = v52;
    v106 = v159;
  }

  else
  {
    outlined destroy of HandshakeState(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v46 = v141;
    outlined init with copy of HandshakeState(v52, v141, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v107 = &v46[*(v64 + 48)];
    v71 = v140;
    outlined init with copy of Any?(v107, v140, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v108 = type metadata accessor for PAKEClientState(0);
    if ((*(*(v108 - 8) + 48))(v71, 1, v108) == 1)
    {
LABEL_31:
      v54 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of HandshakeState(v46, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      outlined destroy of P256.Signing.PrivateKey?(v71, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      goto LABEL_32;
    }

    outlined destroy of P256.Signing.PrivateKey?(v71, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v109 = v166;
    v110 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v145, v46, v157, v158, v159, v160, v161, v162, v134, &v163);
    v113 = v139;
    v114 = v138;
    if (v109)
    {
      v59 = v163;
      v60 = v164;
      v61 = v165;
      v69 = v46;
      goto LABEL_18;
    }

    v160 = v111;
    v161 = v112;
    v159 = v110;
    v166 = 0;
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v138);
    v116 = v153;
    v117 = *(v153 + 6);
    v118 = v156;
    v119 = v117(v114, 1, v156);
    v120 = v114;
    if (v119 == 1)
    {
LABEL_33:
      v136 = v120;
LABEL_35:
      result = outlined destroy of P256.Signing.PrivateKey?(v136, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      __break(1u);
      return result;
    }

    v162 = *(v116 + 4);
    v162(v113, v114, v118);
    v121 = v136;
    specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v136);
    v122 = v156;
    if (v117(v121, 1, v156) == 1)
    {
      (*(v116 + 1))(v113, v122);
      goto LABEL_35;
    }

    v123 = v150;
    outlined destroy of HandshakeState(v150, type metadata accessor for HandshakeState);
    v158 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of HandshakeState(v46, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v124 = v121;
    v125 = v162;
    v162(v137, v124, v122);
    outlined init with take of HandshakeState.IdleState(v145, v123, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v126 = v122;
    v127 = type metadata accessor for PartialHandshakeResult(0);
    v128 = v127[5];
    v129 = v151;
    v125(v151 + v128, v113, v126);
    v130 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v131 = *(*(v130 - 8) + 56);
    v131(v129 + v128, 0, 1, v130);
    v132 = v127[6];
    v162(v129 + v132, v137, v126);
    swift_storeEnumTagMultiPayload();
    v131(v129 + v132, 0, 1, v130);
    v133 = v160;
    *v129 = v159;
    v129[1] = v133;
    v129[2] = v161;
    *(v129 + v127[7]) = xmmword_1B26C5EF0;
    v105 = v52;
    v106 = v158;
  }

  return outlined destroy of HandshakeState(v105, v106);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC0g17CertificateVerifyD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v81 = a7;
  v80 = a6;
  v83 = a5;
  v85 = a4;
  v82 = a3;
  v79 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v86 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v74 - v21;
  v23 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  outlined init with copy of Any?(a2 + *(v23 + 44), v22, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v24 = v97;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v95, v19);
  if (!v24)
  {
    v28 = v84;
    v77 = v23;
    v97 = a2;
    v78 = v13;
    v29 = v85 >> 62;
    if ((v85 >> 62) > 1)
    {
      v30 = v22;
      v31 = v14;
      v32 = v86;
      if (v29 == 2)
      {
        v33 = *(v82 + 24);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v30 = v22;
      v31 = v14;
      v32 = v86;
      if (v29)
      {
        v33 = v82 >> 32;
      }

      else
      {
        v33 = BYTE6(v85);
      }
    }

    if (v33 < v83)
    {
      __break(1u);
    }

    else
    {
      *&v88 = Data._Representation.subscript.getter();
      *(&v88 + 1) = v34;
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B8]);
      lazy protocol witness table accessor for type Data and conformance Data();
      v35 = static MessageAuthenticationCode.== infix<A>(_:_:)();
      outlined consume of Data._Representation(v88, *(&v88 + 1));
      v36 = *(v32 + 8);
      v36(v19, v31);
      if (v35)
      {
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v80, v81, v28);
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v95, v17);
        *(&v89 + 1) = v31;
        *&v90 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
        (*(v86 + 16))(boxed_opaque_existential_1, v17, v31);
        __swift_project_boxed_opaque_existential_0(&v88, *(&v89 + 1));
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        v36(v17, v31);
        v43 = v87[0];
        v44 = v87[1];
        __swift_destroy_boxed_opaque_existential_0(&v88);
        v45 = 0;
        v93 = xmmword_1B26C6130;
        v94 = 0;
        v46 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          if (v46 == 2)
          {
            v45 = *(v43 + 16);

            goto LABEL_24;
          }
        }

        else if (v46)
        {
          v45 = v43;
LABEL_24:
        }

        specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v43, v44, v45);
        outlined consume of Data._Representation(v43, v44);
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v93, *(&v93 + 1), v94);
        v86 = 0;
        outlined consume of Data._Representation(v43, v44);
        v47 = v97;
        v48 = *(v97 + 48);
        v90 = *(v97 + 32);
        v91 = v48;
        v92 = *(v97 + 64);
        v49 = *(v97 + 16);
        v88 = *v97;
        v89 = v49;
        LODWORD(v84) = *(v97 + 66);
        LODWORD(v85) = *(v97 + 68);
        v50 = v77;
        v51 = v78;
        outlined init with copy of HandshakeState(v97 + v77[7], v78, type metadata accessor for PeerCertificateBundle);
        v52 = type metadata accessor for PeerCertificateBundle(0);
        v53 = *(*(v52 - 8) + 56);
        v53(v51, 0, 1, v52);
        v54 = v50[9];
        v55 = (v47 + v50[8]);
        v56 = v55[1];
        v82 = *v55;
        v57 = v47 + v54;
        v59 = *(v47 + v54);
        v58 = *(v47 + v54 + 8);
        v80 = v59;
        v76 = v58;
        v75 = *(v57 + 16);
        LODWORD(v83) = *(v47 + v50[10]);
        ready = type metadata accessor for HandshakeState.ReadyState(0);
        v61 = v79;
        outlined init with take of P256.Signing.PublicKey?(v30, v79 + ready[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        v62 = v50[13];
        LODWORD(v81) = *(v47 + v50[12]);
        LODWORD(v97) = *(v47 + v62);
        v63 = ready[7];
        v53(v61 + v63, 1, 1, v52);
        v64 = (v61 + ready[8]);
        v65 = (v61 + ready[9]);
        *v65 = xmmword_1B26C5EF0;
        v65[2] = 0;
        v77 = (v61 + ready[12]);
        v66 = v91;
        *(v61 + 32) = v90;
        *(v61 + 48) = v66;
        *(v61 + 64) = v92;
        v67 = v89;
        *v61 = v88;
        *(v61 + 16) = v67;
        *(v61 + 66) = v84;
        *(v61 + 68) = 0;
        *(v61 + 70) = v85;
        *(v61 + 72) = 0;
        outlined init with copy of HandshakeStateMachine.Configuration(&v88, v87);
        v68 = v56;

        v69 = v80;
        v70 = v76;
        v71 = v75;
        outlined copy of Data?(v80, v76);
        outlined assign with take of PartialHandshakeResult?(v78, v61 + v63, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
        *v64 = v82;
        v64[1] = v68;
        outlined consume of ByteBuffer?(*v65, v65[1]);
        *v65 = v69;
        v65[1] = v70;
        v65[2] = v71;
        *(v61 + ready[10]) = v83;
        v72 = v77;
        *v77 = 0;
        *(v72 + 2) = 1;
        *(v61 + ready[13]) = 0;
        *(v61 + ready[14]) = v81;
        *(v61 + ready[15]) = v97;
        v73 = *(&v93 + 1);
        v27 = v93;
        outlined copy of Data._Representation(v93, *(&v93 + 1));
        outlined consume of Data._Representation(v27, v73);
        return v27;
      }

      if (one-time initialization token for logger == -1)
      {
LABEL_14:
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, logger);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1B25F5000, v38, v39, "invalid server finished payload", v40, 2u);
          MEMORY[0x1B274ECF0](v40, -1, -1);
        }

        v88 = xmmword_1B26C6400;
        v27 = 2;
        LOBYTE(v89) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        v25 = 0;
        v26 = 6;
        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v26 = v95[0];
  v25 = v95[1];
  v27 = v96;
  outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
LABEL_17:
  *a10 = v26;
  *(a10 + 8) = v25;
  *(a10 + 16) = v27;
  return v27;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  *&v39 = a1;
  v3 = v2;
  v4 = type metadata accessor for SHA384Digest();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymmetricKey();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v42 = v3;
  outlined init with copy of Any?(v3, &v32 - v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v19 = v8;
    v20 = v37;
    if (EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v17, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v26 = MEMORY[0x1E6966408];
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
      v27 = v20;
      v28 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v28, v19);
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      v29 = v33;
      v30 = dispatch thunk of HashFunction.finalize()();
      MEMORY[0x1EEE9AC00](v30);
      *(&v32 - 2) = v19;
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, v26, MEMORY[0x1E69663F8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v36 + 8))(v29, v27);
      outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      (*(v34 + 8))(v19, v35);
      return result;
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  outlined init with copy of Any?(v42, v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 <= 1)
  {
    v23 = v39;
    if (v22)
    {
      v24 = 0xEF74657263655365;
      v25 = 0x6B616873646E6168;
    }

    else
    {
      v24 = 0xEB00000000746572;
      v25 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  v23 = v39;
  if (v22 == 2)
  {
    v24 = 0xEC00000074657263;
    v25 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v22 == 3)
  {
    v24 = 0xEA00000000007374;
    v25 = 0x65726365536C6C61;
LABEL_18:
    outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_19;
  }

  v24 = 0xE400000000000000;
  v25 = 1701602409;
LABEL_19:
  Logger.logInvalidStateTransition(stateName:event:)(v25, v24, 0xD000000000000015, 0x80000001B26CDE30);

  v39 = xmmword_1B26C6450;
  v40 = xmmword_1B26C6450;
  v41 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *&v39;
  *v23 = v39;
  *(v23 + 16) = 2;
  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5@<X0>(Swift::Int a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = a5 >> 16;
    if (!(a5 >> 16))
    {
      v6 = v14;
      v7 = *(v14 + 2);
      v15 = *(v14 + 3);
      v16 = v15 >> 1;
      v8 = v7 + 1;
      if (v15 >> 1 > v7)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v8, 1, v6);
  v15 = *(v6 + 3);
  v16 = v15 >> 1;
LABEL_4:
  *(v6 + 2) = v8;
  v6[v7 + 32] = BYTE1(a5);
  v17 = v7 + 2;
  if (v16 < (v7 + 2))
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v7 + 2, 1, v6);
  }

  *(v6 + 2) = v17;
  v6[v8 + 32] = a5;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v18 = String.UTF8View._foreignCount()();
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v18 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v18 = HIBYTE(a3) & 0xF;
LABEL_12:
  LOBYTE(v7) = v18 + 6;
  if (((v18 + 6) & 0x100) == 0)
  {
    v17 = *(v6 + 2);
    a6 = *(v6 + 3);
    v8 = v17 + 1;

    if (v17 < a6 >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a6 > 1), v8, 1, v6);
LABEL_14:
  *(v6 + 2) = v8;
  v6[v17 + 32] = v7;
  v24 = v6;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v19 = &v24;
  specialized Array.append<A>(contentsOf:)(a2, a3);
  v20 = *(a4 + 16);
  if (v20 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v19 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
LABEL_16:
  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v19[v22 + 32] = v20;
  v24 = v19;
  specialized Array.append<A>(contentsOf:)((a4 + 32), (a4 + 32 + v20));
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2624068(a1, a2, a3);
}

{
  type metadata accessor for SHA384();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HMAC.authenticationCode<A>(for:using:)();
}

uint64_t partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)(a1, a2, *(v2 + 16));
}

{
  return _s9CryptoKit4HMACV15SwiftTLSLibraryE18authenticationCode5bytes5usingAA020HashedAuthenticationG0VyxGqd___AA12SymmetricKeyVt10Foundation15ContiguousBytesRd__lFZAJSWXEfU_AA6SHA384V_AA0Q6DigestVTg5TA_0(a1, a2);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v28 = a3;
  v32 = a2;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  outlined init with copy of Any?(v3, &v27 - v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, logger);
      outlined init with copy of Any?(v3, v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      v23 = swift_getEnumCaseMultiPayload();
      if (v23 <= 1)
      {
        if (v23)
        {
          v24 = 0xEF74657263655365;
          v25 = 0x6B616873646E6168;
        }

        else
        {
          v24 = 0xEB00000000746572;
          v25 = 0x636553796C726165;
        }
      }

      else if (v23 == 2)
      {
        v24 = 0xEC00000074657263;
        v25 = 0x655372657473616DLL;
      }

      else
      {
        if (v23 != 3)
        {
          v24 = 0xE400000000000000;
          v25 = 1701602409;
LABEL_19:
          Logger.logInvalidStateTransition(stateName:event:)(v25, v24, 0xD000000000000012, 0x80000001B26CE130);

          v30 = xmmword_1B26C6450;
          v31 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          return 2;
        }

        v24 = 0xEA00000000007374;
        v25 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      goto LABEL_19;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  v20 = v29;
  v21 = v32;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v18, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v9, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  outlined copy of Data._Representation(v20, v21);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v7, v20, v21, v28, v16);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v16, v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v51 = a1;
  v52 = a2;
  v7 = type metadata accessor for SHA384Digest();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v44[1] = v15;
    v45 = v7;
    v44[0] = v13;
    v46 = v10;
    v47 = v8;
    v49 = v12;
    if (result)
    {
      v17 = result;
      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v18 + 16) = v17;
      bzero((v18 + 32), v17);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v53 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E08]);
    v19 = v50;
    SymmetricKey.init<A>(data:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    MEMORY[0x1EEE9AC00](v20);
    v44[-2] = v19;
    v21 = v51;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
    SymmetricKey.init<A>(data:)();
    v23 = type metadata accessor for SHA384();
    (*(*(v23 - 8) + 16))(a5, v21, v23);
    v24 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v25 = 0;
      result = v48;
      if (v24 == 2)
      {
        v25 = *(v52 + 24);
      }
    }

    else
    {
      result = v48;
      if (v24)
      {
        v25 = v52 >> 32;
      }

      else
      {
        v25 = BYTE6(a3);
      }
    }

    if (v25 >= result)
    {
      v26 = Data._Representation.subscript.getter();
      v28 = v27;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v27, a5);
      outlined consume of Data._Representation(v26, v28);
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      v29 = v46;
      dispatch thunk of HashFunction.finalize()();
      v30 = v20;
      v31 = *(v20 + 40);
      v32 = v44[0];
      v33 = *(v44[0] + 16);
      v34 = a5 + v22[10];
      v48 = a3;
      v35 = v51;
      v36 = v49;
      v33(v34, v51 + v31, v49);
      v33(a5 + v22[11], v35 + *(v30 + 44), v36);
      v37 = v22[12];
      v38 = v45;
      v39 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x6172742070612063, 0xEC00000063696666, v39, a5 + v37);
      v40 = v22[13];
      v41 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x6172742070612073, 0xEC00000063696666, v41, a5 + v40);
      v42 = v22[14];
      v43 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x7473616D20707865, 0xEA00000000007265, v43, a5 + v42);
      outlined consume of Data._Representation(v52, v48);
      outlined destroy of P256.Signing.PrivateKey?(v35, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      (*(v47 + 8))(v29, v38);
      return (*(v32 + 8))(v50, v49);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5@<X0>(Swift::Int a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v12;
      v6 = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = v13 >> 1;
      v7 = v6 + 1;
      if (v13 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v7, 1, v5);
  v13 = *(v5 + 3);
  v14 = v13 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v15 = v6 + 2;
  if (v14 < (v6 + 2))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v15;
  v5[v7 + 32] = a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v16 = String.UTF8View._foreignCount()();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v16 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(v6) = v16 + 6;
  if ((v6 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v5 + 2);
  a5 = *(v5 + 3);
  v7 = v15 + 1;

  if (v15 >= a5 >> 1)
  {
LABEL_21:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[v15 + 32] = v6;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v17 = specialized Array.append<A>(contentsOf:)(a2, a3);
  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for SHA384Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v33 = a1;
  v31 = a2;
  v36 = type metadata accessor for SHA384Digest();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SymmetricKey();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  outlined init with copy of Any?(v2, &v28 - v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    outlined init with take of P256.Signing.PublicKey?(v15, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v17 = MEMORY[0x1E6966408];
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
    v18 = v36;
    v19 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v19, v6);
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    v20 = v28;
    v21 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v21);
    *(&v28 - 2) = v6;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, v17, MEMORY[0x1E69663F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v32 + 8))(v20, v18);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v29 + 8))(v6, v30);
    return result;
  }

  outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);
  outlined init with copy of Any?(v2, v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 1)
  {
    v25 = v33;
    if (v24)
    {
      v26 = 0xEF74657263655365;
      v27 = 0x6B616873646E6168;
    }

    else
    {
      v26 = 0xEB00000000746572;
      v27 = 0x636553796C726165;
    }

    goto LABEL_17;
  }

  v25 = v33;
  if (v24 == 2)
  {
    v26 = 0xEC00000074657263;
    v27 = 0x655372657473616DLL;
    goto LABEL_17;
  }

  if (v24 == 3)
  {
    v26 = 0xEA00000000007374;
    v27 = 0x65726365536C6C61;
LABEL_17:
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_18;
  }

  v26 = 0xE400000000000000;
  v27 = 1701602409;
LABEL_18:
  Logger.logInvalidStateTransition(stateName:event:)(v27, v26, 0xD000000000000015, 0x80000001B26CDE10);

  v33 = xmmword_1B26C6450;
  v34 = xmmword_1B26C6450;
  v35 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *&v33;
  *v25 = v33;
  *(v25 + 16) = 2;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  LOBYTE(v25) = 20;
  v7 = MEMORY[0x1E69E6290];
  v8 = MEMORY[0x1E6969DF8];
  v28 = MEMORY[0x1E69E6290];
  v29 = MEMORY[0x1E6969DF8];
  v26 = &v25;
  v27 = (&v25 + 1);
  __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  v9 = *v3;
  v10 = v3[1];
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

  LOBYTE(v25) = 0;
  v28 = v7;
  v29 = v8;
  v26 = &v25;
  v27 = (&v25 + 1);
  __swift_project_boxed_opaque_existential_0(&v26, v7);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  v25 = 0;
  v28 = v7;
  v29 = v8;
  v26 = &v25;
  v27 = &v26;
  __swift_project_boxed_opaque_existential_0(&v26, v7);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = a1;
    v15 = a1 >> 32;
  }

  else
  {
    v14 = 0;
    v15 = BYTE6(a2);
  }

  if (v15 < a3 || v15 < v14)
  {
    __break(1u);
    goto LABEL_32;
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
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v20 != 2)
  {
    goto LABEL_28;
  }

  v22 = *(v16 + 16);
  v21 = *(v16 + 24);
  outlined consume of Data._Representation(v16, v19);
  v16 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v16, v19);
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_33;
    }

    v16 = HIDWORD(v16) - v16;
  }

  if (v16 <= 0xFFFFFF)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  outlined consume of Data._Representation(v16, v19);
  v16 = 0;
LABEL_29:
  v23 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v16), v12);
  if (__OFADD__(v12, v23))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v12 + v23);
  return v16 + 4;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  outlined init with copy of Any?(v3, &v27 - v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload < 2)
  {
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    outlined init with copy of Any?(v3, v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 1)
    {
      if (v23)
      {
        v24 = 0xEF74657263655365;
        v25 = 0x6B616873646E6168;
      }

      else
      {
        v24 = 0xEB00000000746572;
        v25 = 0x636553796C726165;
      }
    }

    else if (v23 == 2)
    {
      v24 = 0xEC00000074657263;
      v25 = 0x655372657473616DLL;
    }

    else
    {
      if (v23 != 3)
      {
        v24 = 0xE400000000000000;
        v25 = 1701602409;
LABEL_18:
        Logger.logInvalidStateTransition(stateName:event:)(v25, v24, 0xD000000000000013, 0x80000001B26CDDF0);

        v31 = xmmword_1B26C6450;
        v32 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return 2;
      }

      v24 = 0xEA00000000007374;
      v25 = 0x65726365536C6C61;
    }

    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_18;
  }

  outlined init with take of P256.Signing.PublicKey?(v18, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v9, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v21 = v28;
  v20 = v29;
  outlined copy of Data._Representation(v28, v29);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsV12masterSecret19clientFinishedBytesAHyx__GAF06MasterQ0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v7, v21, v20, v30, v16);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v16, v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsV12masterSecret19clientFinishedBytesAHyx__GAF06MasterQ0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v7 = type metadata accessor for SHA384Digest();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA384();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v13 = v12[12];
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(*(v14 - 8) + 16);
  v15(a5, a1 + v13, v14);
  v16 = v12[13];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v15(a5 + v17[9], a1 + v16, v14);
  v18 = v12[14];
  v19 = v17[10];
  v38 = a5;
  v15(a5 + v19, a1 + v18, v14);
  v20 = v41;
  v21 = *(v44 + 16);
  v36 = a1;
  v21(v11, a1, v9);
  v22 = v20;
  v23 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v24 = 0;
    result = v42;
    if (v23 == 2)
    {
      v24 = *(v43 + 24);
    }
  }

  else if (v23)
  {
    result = v42;
    v24 = v43 >> 32;
  }

  else
  {
    v24 = BYTE6(v20);
    result = v42;
  }

  if (v24 < result)
  {
    __break(1u);
  }

  else
  {
    v26 = v37;
    v27 = v43;
    v28 = Data._Representation.subscript.getter();
    v30 = v29;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v28, v29, v11);
    outlined consume of Data._Representation(v28, v30);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    dispatch thunk of HashFunction.finalize()();
    v31 = v17[11];
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
    v32 = v40;
    v33 = dispatch thunk of static Digest.byteCount.getter();
    v34 = v38 + v31;
    v35 = v36;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x7473616D20736572, 0xEA00000000007265, v33, v34);
    outlined consume of Data._Representation(v27, v22);
    outlined destroy of P256.Signing.PrivateKey?(v35, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v39 + 8))(v26, v32);
    return (*(v44 + 8))(v11, v9);
  }

  return result;
}

uint64_t sub_1B2625FF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for P256.Signing.PublicKey();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  outlined init with copy of Any?(v2, &v21 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v14 = type metadata accessor for SymmetricKey();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v6, v14);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v17 = type metadata accessor for SymmetricKey();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v18 = *(v7 + 48);
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a1, &v9[v18], v19);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v20 + 56))(a1, 0, 1, v19);
}

uint64_t specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v14 = *(v4 + 36);
      v15 = type metadata accessor for SymmetricKey();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a1, &v6[v14], v15);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v18 = type metadata accessor for SymmetricKey();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v19 = *(v7 + 52);
  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a1, &v9[v19], v20);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v21 + 56))(a1, 0, 1, v20);
}

uint64_t nwswifttls_complete_handshake(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    v8 = v3;
    if (a2)
    {
      v3[287] = 1;
      nwswifttls_allow_exported_authenticators(v3);
      v4 = *(v8 + 7);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 40);
          if (v6)
          {
            v6();
          }
        }
      }
    }

    else
    {
      nwswifttls_send_error(v3, 4294957438);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void nwswifttls_allow_exported_authenticators(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && v1[10])
  {
    v3 = v1;
    nw_protocol_metadata_access_handle();
  }
}

BOOL __nwswifttls_allow_exported_authenticators_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 360))
  {
    v2 = *(a1 + 32);
    *(a2 + 352) = nwswifttls_copy_copy_authenticator_trust;
    *(a2 + 360) = v2;
  }

  return a2 != 0;
}

uint64_t nwswifttls_copy_serialized_session(uint64_t a1)
{
  if (!a1 || (*(a1 + 304) & 1) != 0)
  {
    return 0;
  }

  v2 = [*(a1 + 296) getSessionState];
  v3 = v2;
  if (v2)
  {
    v1 = [v2 _createDispatchData];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

NSData_optional __swiftcall STLSClientHandshaker.getSessionState()()
{
  v1 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    swift_beginAccess();
    v4 = v3[4];
    v5 = v3[5];
    outlined copy of Data._Representation(v4, v5);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v4, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  isa = v6.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v2;
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void __nwswifttls_identifier_block_invoke()
{
  qword_1ED4D6138 = 0;
  g_nwswifttls_identifier = 0u;
  unk_1ED4D6128 = 0u;
  g_nwswifttls_callbacks = 0u;
  *algn_1ED4D6150 = 0u;
  xmmword_1ED4D6160 = 0u;
  unk_1ED4D6170 = 0u;
  xmmword_1ED4D6180 = 0u;
  *&qword_1ED4D6190 = 0u;
  xmmword_1ED4D61A0 = 0u;
  unk_1ED4D61B0 = 0u;
  xmmword_1ED4D61C0 = 0u;
  unk_1ED4D61D0 = 0u;
  xmmword_1ED4D61E0 = 0u;
  *&qword_1ED4D61F0 = 0u;
  xmmword_1ED4D6200 = 0u;
  unk_1ED4D6210 = 0u;
  xmmword_1ED4D6220 = 0u;
  unk_1ED4D6230 = 0u;
  xmmword_1ED4D6240 = 0u;
  __strlcpy_chk();
  qword_1ED4D6138 = 0x100000004;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_nwswifttls_callbacks = nwswifttls_add_input_handler;
  *(&g_nwswifttls_callbacks + 1) = nwswifttls_remove_input_handler;
  *&xmmword_1ED4D6180 = nwswifttls_input_available;
  qword_1ED4D6190 = nwswifttls_get_input_frames;
  *&xmmword_1ED4D6160 = nwswifttls_disconnect;
  *(&xmmword_1ED4D6160 + 1) = nwswifttls_connected;
  *&xmmword_1ED4D6220 = nwswifttls_copy_info;
  qword_1ED4D61F0 = nwswifttls_supports_external_data;
  nw_protocol_register();

  nwswifttls_log_open();
}

void nwswifttls_log_open()
{
  if (nwswifttls_log_open_onceToken != -1)
  {
    nwswifttls_log_open_cold_1();
  }
}

void __nwswifttls_log_open_block_invoke()
{
  v0 = os_log_create("com.apple.security.swifttls", "nwswifttls");
  v1 = g_nwswifttls_log;
  g_nwswifttls_log = v0;

  if (nwswifttls_logging_register_debug_log_updates_onceToken != -1)
  {
    __nwswifttls_log_open_block_invoke_cold_1();
  }
}

uint64_t __nwswifttls_logging_register_debug_log_updates_block_invoke()
{
  result = network_config_register_swift_tls_log_debug_updates();
  datapath_logging_enabled = result;
  return result;
}

uint64_t __nwswifttlsrecord_copy_definition_block_invoke()
{
  if (nwswifttlsrecord_identifier_onceToken != -1)
  {
    __nwswifttlsrecord_copy_definition_block_invoke_cold_1();
  }

  v0 = nw_protocol_definition_create_with_identifier();
  v1 = nwswifttlsrecord_copy_definition_definition;
  nwswifttlsrecord_copy_definition_definition = v0;

  nw_protocol_definition_set_options_allocator();
  nw_protocol_definition_set_options_equality_check();
  nw_protocol_definition_set_options_comparator();
  v2 = nwswifttlsrecord_copy_definition_definition;

  return MEMORY[0x1EEDD42F0](v2, nwswifttlsrecord_allocate_metadata, nwswifttlsrecord_deallocate_metadata);
}

void __nwswifttlsrecord_identifier_block_invoke()
{
  qword_1ED4D60E8 = 0;
  g_nwswifttlsrecord_identifier = 0u;
  unk_1ED4D60D8 = 0u;
  __strlcpy_chk();
  qword_1ED4D60E8 = 0x100000004;
  g_nwswifttlsrecord_callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_set_default_one_to_one_callbacks();
  nw_protocol_callbacks_set_add_input_handler();
  nw_protocol_callbacks_set_replace_input_handler();
  nw_protocol_callbacks_set_remove_input_handler();
  nw_protocol_callbacks_set_connected();
  nw_protocol_callbacks_set_disconnect();
  nw_protocol_callbacks_set_input_available();
  nw_protocol_callbacks_set_output_available();
  nw_protocol_callbacks_set_get_input_frames();
  nw_protocol_callbacks_set_get_output_frames();
  nw_protocol_callbacks_set_input_finished();
  nw_protocol_callbacks_set_output_finished();
  nw_protocol_callbacks_set_finalize_output_frames();
  nw_protocol_callbacks_set_copy_info();
  nw_protocol_callbacks_set_error();
  nw_protocol_callbacks_set_reset();
  nw_protocol_callbacks_set_supports_external_data();
  nw_protocol_register_extended();

  nwswifttls_log_open();
}

uint64_t type metadata accessor for STLSClientHandshaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for STLSClientHandshaker;
  if (!type metadata singleton initialization cache for STLSClientHandshaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for HandshakeStateMachine?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for STLSClientHandshaker(uint64_t a1)
{
  type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for HandshakeStateMachine?, type metadata accessor for HandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for PartialHandshakeResult?, type metadata accessor for PartialHandshakeResult);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for EncryptionLevel?, type metadata accessor for EncryptionLevel);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata completion function for HandshakeStateMachine(uint64_t a1)
{
  result = type metadata accessor for HandshakeState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SwiftTLSClock();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for HandshakeState(uint64_t a1)
{
  result = type metadata accessor for HandshakeState.IdleState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HandshakeState.ClientHelloState(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HandshakeState.ServerHelloState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for HandshakeState.EncryptedExtensionsState(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for HandshakeState.ServerCertificateState(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for HandshakeState.ReadyState(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata accessor for SessionTicket?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for HandshakeState.IdleState(uint64_t a1)
{
  type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for SessionTicket?, type metadata accessor for SessionTicket, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for [GeneralEPSK], type metadata accessor for GeneralEPSK, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SessionTicket(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SymmetricKey();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PeerCertificateBundle(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata completion function for PeerCertificateBundle(uint64_t a1)
{
  result = type metadata accessor for PeerCertificateBundle.Bundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PeerCertificateBundle.Bundle(uint64_t a1)
{
  v1 = type metadata accessor for P256.Signing.PublicKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for ClientSessionKeyManager<SHA384>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClientSessionKeyManager<SHA384>)
  {
    v2 = type metadata accessor for SHA384();
    v3 = _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    v5 = type metadata accessor for ClientSessionKeyManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ClientSessionKeyManager<SHA384>);
    }
  }
}

uint64_t type metadata completion function for ClientSessionKeyManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for SessionKeyManager.State.EarlySecret(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for SessionKeyManager.State.HandshakeSecret(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for SessionKeyManager.State.MasterSecret(319, v4, v5, v9);
      if (v12 <= 0x3F)
      {
        result = type metadata accessor for SessionKeyManager.State.AllSecrets(319, v4, v5, v11);
        if (v13 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.EarlySecret(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.HandshakeSecret(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.MasterSecret(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.AllSecrets(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for GeneralEPSK(uint64_t a1)
{
  result = type metadata accessor for PSK(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PSK(uint64_t a1)
{
  result = type metadata accessor for ImportedPSK(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawEPSK(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ImportedPSK(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SymmetricKey();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PAKEClientState(uint64_t a1)
{
  type metadata accessor for SymmetricKey?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SPAKE2.Prover();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SymmetricKey?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SymmetricKey?)
  {
    type metadata accessor for SymmetricKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SymmetricKey?);
    }
  }
}

void type metadata completion function for HandshakeState.ClientHelloState(uint64_t a1)
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for [CipherSuite], &type metadata for CipherSuite, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for [CertificateType], &type metadata for CertificateType, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for GeneratedEphemeralPrivateKey?, type metadata accessor for GeneratedEphemeralPrivateKey, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for SessionTicket?, type metadata accessor for SessionTicket, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for [GeneralEPSK], type metadata accessor for GeneralEPSK, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
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

void type metadata accessor for [CipherSuite](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for GeneratedEphemeralPrivateKey(uint64_t a1)
{
  result = type metadata accessor for Curve25519EphemeralKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for P384EphemeralKey(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for X25519MLKEM768EphemeralKey(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Curve25519EphemeralKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for EPSK(uint64_t a1)
{
  type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ByteBuffer?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ByteBuffer?()
{
  if (!lazy cache variable for type metadata for ByteBuffer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ByteBuffer?);
    }
  }
}

uint64_t _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B26283C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B26283FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2628690()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B26286C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B2628700()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2628740()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B2628778()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGGMd, &_s15Synchronization5MutexVySDy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B26287AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v10 = type metadata accessor for ServerHandshakeState(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 36);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1B26288D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for ServerHandshakeState(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B26289F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialHandshakeResult(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2628A5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PartialHandshakeResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B2628AE0(uint64_t a1, uint64_t a2)
{

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5Tm(a1, a2);
}

uint64_t sub_1B2628B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B2628C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1B2628E78()
{

  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v1);
  }

  if (v0[13])
  {
  }

  if (v0[22])
  {
    outlined consume of Data._Representation(v0[16], v0[17]);
    outlined consume of Data._Representation(v0[19], v0[20]);
  }

  if (v0[29])
  {
  }

  if (v0[31])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 312, 7);
}

uint64_t sub_1B2628F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B26290BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_Say15SwiftTLSLibrary0A11OfferedEPSKVGSiAA0D0VSgIegyn_Ieggg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B26291E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneralEPSK(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B26292B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneralEPSK(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1B2629380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SymmetricKey();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[16] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[18];
      goto LABEL_9;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[21];

    return v21(v22, a2, v20);
  }
}