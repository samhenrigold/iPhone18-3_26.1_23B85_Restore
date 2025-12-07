void _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v8 = type metadata accessor for SymmetricKey();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SharedSecret();
  v13 = *(v65 - 8);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v55 - v17;
  v18 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  v64 = v13;
  if ((a2 >> 62) > 1)
  {
    v24 = 0;
    if (v23 != 2)
    {
      goto LABEL_10;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v24 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = HIDWORD(a1) - a1;
LABEL_10:
  v62 = v11;
  v63 = v10;
  v68 = v20;
  v69 = v19;
  v27 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v28 = *(v4 + *(v27 + 28));
  v29 = *(v4 + *(v27 + 36));
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v24 < v31)
  {
    v73 = xmmword_1B26C7200;
    LOBYTE(v74) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v32 = 9;
LABEL_18:
    *a3 = v32;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return;
  }

  v58 = a3;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(v29, a1, a2, &v73);
  v33 = v73;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.dropFirst(_:)(v29, a1, a2, &v73);
  v34 = v73;
  outlined copy of Data._Representation(v73, *(&v73 + 1));
  v35 = v22;
  v36 = v75;
  Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  if (v36)
  {

    v73 = xmmword_1B26C6420;
    LOBYTE(v74) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v33, *(&v33 + 1));
    outlined consume of Data._Representation(v34, *(&v34 + 1));
LABEL_17:
    v32 = 32;
    a3 = v58;
    goto LABEL_18;
  }

  v57 = v33 >> 64;
  v75 = v33;
  v37 = v70;
  Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v38 = v64;
  v39 = *(v64 + 16);
  v40 = v37;
  v41 = v65;
  v56 = 0;
  v39(v16, v40, v65);
  lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
  v42 = v41;
  SymmetricKey.init<A>(data:)();
  v43 = v75;
  v44 = v57;
  *&v73 = v75;
  *(&v73 + 1) = v57;
  lazy protocol witness table accessor for type Data and conformance Data();
  v45 = v56;
  v46 = MLKEM768.PrivateKey.decapsulate<A>(_:)();
  if (v45)
  {

    v73 = xmmword_1B26C6420;
    LOBYTE(v74) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v43, v44);
    outlined consume of Data._Representation(v34, *(&v34 + 1));
    (*(v62 + 8))(v67, v63);
    (*(v38 + 8))(v70, v41);
    (*(v68 + 8))(v35, v69);
    goto LABEL_17;
  }

  v73 = xmmword_1B26C6130;
  v74 = 0;
  MEMORY[0x1EEE9AC00](v46);
  *(&v55 - 2) = &v73;
  v47 = SymmetricKey.withUnsafeBytes<A>(_:)();
  MEMORY[0x1EEE9AC00](v47);
  *(&v55 - 2) = &v73;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v48 = *(&v73 + 1) >> 62;
  if ((*(&v73 + 1) >> 62) > 1)
  {
    v50 = 0;
    v49 = v38;
    v51 = v75;
    if (v48 == 2)
    {
      v50 = *(v73 + 24);
    }
  }

  else
  {
    v49 = v38;
    if (v48)
    {
      v50 = v73 >> 32;
    }

    else
    {
      v50 = BYTE14(v73);
    }

    v51 = v75;
  }

  if (v50 >= v74)
  {
    v52 = Data._Representation.subscript.getter();
    v54 = v53;
    v71 = v52;
    v72 = v53;
    outlined copy of Data._Representation(v52, v53);
    SymmetricKey.init<A>(data:)();
    outlined consume of Data._Representation(v51, v57);
    outlined consume of Data._Representation(v52, v54);
    outlined consume of Data._Representation(v34, *(&v34 + 1));
    (*(v60 + 8))(v66, v61);
    (*(v62 + 8))(v67, v63);
    (*(v49 + 8))(v70, v42);
    outlined consume of Data._Representation(v73, *(&v73 + 1));
    (*(v68 + 8))(v35, v69);
    return;
  }

LABEL_30:
  __break(1u);
}

unint64_t protocol witness for EphemeralPrivateKey.namedGroup.getter in conformance GeneratedEphemeralPrivateKey(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v2, v4);
  v5 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
  outlined destroy of GeneratedEphemeralPrivateKey(v4, type metadata accessor for GeneratedEphemeralPrivateKey);
  return v5;
}

double _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOAA0deF0A2aDP5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __int128 *, uint64_t, uint64_t))
{
  a6(a1, a2, &v10, a4, a5);
  if (v6)
  {
    v9 = v11;
    result = *&v10;
    *a3 = v10;
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t protocol witness for EphemeralPrivateKey.publicKeyData.getter in conformance Curve25519EphemeralKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a4(v9);
  v13 = a5(v12);
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyVAA0d7PrivateE0A2aDP5encap06publicE4Data10Foundation0I0V_9CryptoKit09SymmetricE0VtAJ_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, __int128 *))
{
  v20 = a1;
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a7(a2, a3, &v18);
  if (v7)
  {
    v16 = v19;
    *a4 = v18;
    *(a4 + 16) = v16;
  }

  else
  {
    (*(v13 + 32))(v20, v15, v12);
    outlined copy of Data._Representation(a2, a3);
  }

  return a2;
}

uint64_t Curve25519EphemeralKey.privateKey.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Curve25519EphemeralKey.privateKey.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t X25519MLKEM768EphemeralKey.privateKeyB.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 20);
  v4 = type metadata accessor for MLKEM768.PrivateKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t X25519MLKEM768EphemeralKey.privateKeyB.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 20);
  v4 = type metadata accessor for MLKEM768.PrivateKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t X25519MLKEM768EphemeralKey.publicKeyData.getter()
{
  v1 = v0 + *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

void X25519MLKEM768EphemeralKey.publicKeyData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 24);
  outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

void specialized Collection.dropFirst(_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    if (!a1 || v11 >= a1)
    {
      v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, a1, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    outlined consume of Data._Representation(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }
}

uint64_t protocol witness for EphemeralPrivateKey.publicKeyData.getter in conformance X25519MLKEM768EphemeralKey(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

double _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOAA0deF0A2aDP5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAJ_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t))
{
  a7(a1, a2, a3, &v11, a5, a6);
  if (v7)
  {
    v10 = v12;
    result = *&v11;
    *a4 = v11;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for X25519MLKEM768EphemeralKey(uint64_t a1)
{
  result = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLKEM768.PrivateKey();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HandshakeType.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 <= 3u)
    {
      if (a1 == 1)
      {
        return 0x48746E65696C632ELL;
      }

      if (a1 == 2)
      {
        return 0x487265767265732ELL;
      }
    }

    else
    {
      switch(a1)
      {
        case 4u:
          return 0xD000000000000011;
        case 5u:
          return 0x6145664F646E652ELL;
        case 8u:
          return 0xD000000000000014;
      }
    }
  }

  else if (a1 > 0x13u)
  {
    switch(a1)
    {
      case 0x14u:
        return 0x656873696E69662ELL;
      case 0x18u:
        return 0x6164705579656B2ELL;
      case 0xFEu:
        return 0x6567617373656D2ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xBu:
        return 0x696669747265632ELL;
      case 0xDu:
        return 0xD000000000000013;
      case 0xFu:
        return 0xD000000000000012;
    }
  }

  _StringGuts.grow(_:)(27);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t lazy protocol witness table accessor for type HandshakeType and conformance HandshakeType()
{
  result = lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType;
  if (!lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType);
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 20);

  return outlined init with copy of P256.Signing.PrivateKey?(v3, a1);
}

uint64_t type metadata accessor for ServerHandshakeStateMachine.Configuration(uint64_t a1)
{
  result = type metadata singleton initialization cache for ServerHandshakeStateMachine.Configuration;
  if (!type metadata singleton initialization cache for ServerHandshakeStateMachine.Configuration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 20);

  return outlined assign with take of P256.Signing.PrivateKey?(a1, v3);
}

uint64_t outlined assign with take of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.quicTransportParameters.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void ServerHandshakeStateMachine.Configuration.quicTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24));
  outlined consume of ByteBuffer?(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.getter()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.enableEarlyData.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.transportIsQUIC.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.useRawEPSKs.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void ServerHandshakeStateMachine.Configuration.init(serverName:signingKey:quicTransportParameters:alpn:enableEarlyData:transportIsQUIC:useRawEPSKs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, char a11)
{
  v16 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v17 = v16[5];
  v18 = type metadata accessor for P256.Signing.PrivateKey();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[6]];
  *v19 = xmmword_1B26C5EF0;
  *(v19 + 2) = 0;
  v20 = v16[7];
  *a9 = a1;
  *(a9 + 1) = a2;
  outlined assign with take of P256.Signing.PrivateKey?(a3, &a9[v17]);
  outlined consume of ByteBuffer?(*v19, *(v19 + 1));
  *v19 = a4;
  *(v19 + 1) = a5;
  *(v19 + 2) = a6;
  *&a9[v20] = a7;
  a9[v16[8]] = a8;
  a9[v16[9]] = a10;
  a9[v16[10]] = a11;
}

void type metadata completion function for ServerHandshakeStateMachine.Configuration(uint64_t a1)
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PrivateKey?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String]?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for P256.Signing.PrivateKey?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for P256.Signing.PrivateKey?)
  {
    type metadata accessor for P256.Signing.PrivateKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for P256.Signing.PrivateKey?);
    }
  }
}

void type metadata accessor for [String]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t PartialHandshakeResult.init(handshakeBytesToSend:newWriteEncryptionLevel:newReadEncryptionLevel:sessionTicket:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  v13 = type metadata accessor for PartialHandshakeResult(0);
  outlined init with take of EncryptionLevel?(a4, a8 + v13[5]);
  result = outlined init with take of EncryptionLevel?(a5, a8 + v13[6]);
  v15 = (a8 + v13[7]);
  *v15 = a6;
  v15[1] = a7;
  return result;
}

uint64_t outlined init with take of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.handshakeBytesToSend.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

void PartialHandshakeResult.handshakeBytesToSend.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ByteBuffer?(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return outlined init with copy of EncryptionLevel?(v3, a1);
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return outlined assign with take of EncryptionLevel?(a1, v3);
}

uint64_t outlined assign with take of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return outlined init with copy of EncryptionLevel?(v3, a1);
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return outlined assign with take of EncryptionLevel?(a1, v3);
}

uint64_t PartialHandshakeResult.sessionTicket.getter()
{
  v1 = v0 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void PartialHandshakeResult.sessionTicket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  outlined consume of ByteBuffer?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

__n128 PartialHandshakeResult.init()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B26C5EF0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PartialHandshakeResult(0);
  v3 = v2[5];
  v4 = type metadata accessor for EncryptionLevel(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  result = xmmword_1B26C5EF0;
  *(a1 + v2[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t EncryptionLevel.description.getter()
{
  v1 = type metadata accessor for EncryptionLevel(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of EncryptionLevel(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for SymmetricKey();
  (*(*(v5 - 8) + 8))(v3, v5);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0x6B616873646E6168;
    }

    v7 = 0x63696C707061;
  }

  else
  {
    v7 = 0x44796C726165;
  }

  return v7 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
}

uint64_t outlined init with copy of EncryptionLevel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for PartialHandshakeResult(uint64_t a1)
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EncryptionLevel?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for EncryptionLevel(uint64_t a1)
{
  type metadata accessor for (secret: SymmetricKey)();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (secret: SymmetricKey)()
{
  if (!lazy cache variable for type metadata for (secret: SymmetricKey))
  {
    v0 = type metadata accessor for SymmetricKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (secret: SymmetricKey));
    }
  }
}

uint64_t NamedGroup.metadataDescription.getter(unsigned __int16 a1)
{
  if (a1 > 0x1Cu)
  {
    if (a1 != 29)
    {
      if (a1 == 4588)
      {
        return 0x4C4D393135353258;
      }

      goto LABEL_8;
    }

    return 0x393135353258;
  }

  else
  {
    if (a1 != 23)
    {
      if (a1 == 24)
      {
        return 0x3438332D50;
      }

LABEL_8:
      _StringGuts.grow(_:)(24);

      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v2);

      MEMORY[0x1B274D610](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x3635322D50;
  }
}

unint64_t lazy protocol witness table accessor for type NamedGroup and conformance NamedGroup()
{
  result = lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup;
  if (!lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup);
  }

  return result;
}

void nwswifttlsrecord_disconnect_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_disconnect called", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_write_bytes_cold_1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136447234;
  *(buf + 4) = "nwswifttlsrecord_write_bytes";
  *(buf + 6) = 1024;
  *(buf + 14) = 564;
  *(buf + 9) = 2082;
  *(buf + 20) = a1 + 269;
  *(buf + 14) = 2048;
  *(buf + 30) = a1;
  *(buf + 19) = 2080;
  *(buf + 5) = a2;
  _os_log_error_impl(&dword_1B25F5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_protocol_get_output_frames(%s) is not valid", buf, 0x30u);
}

void nwswifttlsrecord_write_bytes_cold_2(uint64_t a1, _BYTE *a2)
{
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
  }

  *a2 = 0;
}

void nwswifttlsrecord_write_bytes_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void nwswifttlsrecord_write_bytes_cold_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_22();
    _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x26u);
  }

  *a3 = 0;
}

void nwswifttlsrecord_add_input_handler_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_add_input_handler invoked", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_add_input_handler_cold_2()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_parameters_copy_protocol_options_legacy return nil", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_add_input_handler_cold_3()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] parameters are nil", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_replace_input_handler_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_replace_input_handler invoked", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_remove_input_handler_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_remove_input_handler invoked", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_remove_input_handler_cold_2()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] input_frame_array has frames during remove_input_handler", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_remove_input_handler_cold_3()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] output_frame_array has frames during remove_input_handler", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_remove_input_handler_cold_4()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] read_frame_array has frames during remove_input_handler", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_connected_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
}

void nwswifttlsrecord_connected_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void nwswifttlsrecord_connected_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
}

void nwswifttlsrecord_input_available_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] triggering input available", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_input_available_cold_2()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void nwswifttlsrecord_output_available_cold_1()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] received output available", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_output_available_cold_2()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void nwswifttlsrecord_output_available_cold_3()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void nwswifttlsrecord_get_input_frames_cold_1()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x32u);
    }
  }
}

void nwswifttlsrecord_get_input_frames_cold_2()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] Failed to allocate frame", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_get_input_frames_cold_3()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] Failed to allocate buffer", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_get_output_frames_cold_1(uint64_t a1, _DWORD *a2)
{
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x26u);
  }

  *a2 = 0;
}

void nwswifttlsrecord_get_output_frames_cold_2()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x32u);
    }
  }
}

void nwswifttlsrecord_get_output_frames_cold_3()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] output buffer is NULL", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_get_output_frames_cold_4()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create failed", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_get_output_frames_cold_5()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create_external failed", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_input_finished_cold_1()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void nwswifttlsrecord_input_finished_cold_2()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] default_input_handler is NULL", v2, v3, v4, v5, v6);
}

void __nwswifttlsrecord_write_bytes_block_invoke_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Cu);
  }

  *a3 = 0;
}

void nwswifttlsrecord_read_cold_1()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void nwswifttlsrecord_read_bytes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void nwswifttlsrecord_read_bytes_cold_2()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void nwswifttlsrecord_read_bytes_cold_3(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  nw_protocol_get_name();
  *v6 = 136447234;
  OUTLINED_FUNCTION_15();
  *&v6[7] = 311;
  v6[9] = 2082;
  OUTLINED_FUNCTION_7();
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_1B25F5000, v4, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_protocol_get_input_frames(%s) is not valid", v6, 0x30u);
}

void nwswifttlsrecord_read_bytes_cold_4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void nwswifttlsrecord_read_bytes_cold_5()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void nwswifttlsrecord_read_bytes_cold_6()
{
  v6 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] no input frames available", v2, v3, v4, v5, v6);
}

void nwswifttlsrecord_read_bytes_cold_7()
{
  if (g_nwswifttls_log)
  {
    if (OUTLINED_FUNCTION_14())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void __nwswifttlsrecord_read_bytes_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x3Au);
}

void __nwswifttlsrecord_read_bytes_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x36u);
}

void __nwswifttlsrecord_get_input_frames_block_invoke_cold_1(uint64_t *a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = g_nwswifttls_log;
  if (g_nwswifttls_log)
  {
    if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = "nwswifttlsrecord_get_input_frames_block_invoke";
      OUTLINED_FUNCTION_21();
      v8 = 1024;
      v9 = 1050;
      v10 = 2082;
      OUTLINED_FUNCTION_10();
      _os_log_debug_impl(&dword_1B25F5000, v4, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Resuming reading frames", v6, 0x26u);
    }

    a2 = *a1;
  }

  *a3 = a2;
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x1E69E9840]);
  if (v2)
  {
    v3 = (v2 + 269);
  }

  else
  {
    v3 = "";
  }

  v4 = 136447234;
  v5 = "nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke";
  v6 = 1024;
  v7 = 699;
  v8 = 2082;
  v9 = v3;
  v10 = 2048;
  v11 = v2;
  v12 = 1024;
  v13 = v0;
  _os_log_error_impl(&dword_1B25F5000, v1, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unrecognized identity type: %d", &v4, 0x2Cu);
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1B25F5000, v0, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_configure_with_sec_protocol_options called with NULL content", v1, 0x26u);
}

uint64_t Data._Representation.subscript.getter()
{
  return MEMORY[0x1EEDC4510]();
}

{
  return MEMORY[0x1EEDC4518]();
}

uint64_t SymmetricKey.withUnsafeBytes<A>(_:)()
{
  return MEMORY[0x1EEE01848]();
}

{
  return MEMORY[0x1EEDBFCD8]();
}

uint64_t SymmetricKey.init<A>(data:)()
{
  return MEMORY[0x1EEE01850]();
}

{
  return MEMORY[0x1EEDBFCE8]();
}

uint64_t type metadata accessor for SymmetricKey()
{
  return MEMORY[0x1EEE01858]();
}

{
  return MEMORY[0x1EEDBFD00]();
}