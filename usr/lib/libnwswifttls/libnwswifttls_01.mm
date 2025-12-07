uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5@<X0>(Swift::Int a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
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

  a5 = *(v5 + 2);
  v15 = *(v5 + 3);
  v7 = a5 + 1;

  if (a5 >= v15 >> 1)
  {
LABEL_21:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[a5 + 32] = v6;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v17 = specialized Array.append<A>(contentsOf:)(a2, a3);
  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for SHA384Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)()
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v11) = 1;
  v1 = MEMORY[0x1E69E6290];
  v2 = MEMORY[0x1E6969DF8];
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v3 = *v0;
  v4 = v0[1];
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

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v11) = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v11 = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v7 = ClientHello.write(into:)(v0);
  if (v7 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v8 = v7;
  v9 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v7), v6);
  if (__OFADD__(v6, v9))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v8, v6 + v9);
  return v8 + 4;
}

{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v11) = 2;
  v1 = MEMORY[0x1E69E6290];
  v2 = MEMORY[0x1E6969DF8];
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v3 = *v0;
  v4 = v0[1];
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

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v11) = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v11 = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v7 = ServerHello.write(into:)(v0);
  if (v7 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v8 = v7;
  v9 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v7), v6);
  if (__OFADD__(v6, v9))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v8, v6 + v9);
  return v8 + 4;
}

{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v11) = 4;
  v1 = MEMORY[0x1E69E6290];
  v2 = MEMORY[0x1E6969DF8];
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v3 = *v0;
  v4 = v0[1];
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

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v11) = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v11 = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_0(&v12, v1);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v7 = NewSessionTicket.write(into:)(v0);
  if (v7 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v8 = v7;
  v9 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v7), v6);
  if (__OFADD__(v6, v9))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v8, v6 + v9);
  return v8 + 4;
}

unint64_t ClientHello.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v49 = *MEMORY[0x1E69E9840];
  LOWORD(v43) = *v2;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  *(&v47 + 1) = MEMORY[0x1E69E6290];
  v48 = MEMORY[0x1E6969DF8];
  *&v46 = &v43;
  *(&v46 + 1) = &v43 + 2;
  __swift_project_boxed_opaque_existential_0(&v46, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v6 = *(v2 + 24);
  v43 = *(v2 + 8);
  v44 = v6;
  *(&v47 + 1) = v4;
  v48 = v5;
  *&v46 = &v43;
  *(&v46 + 1) = &v45;
  __swift_project_boxed_opaque_existential_0(&v46, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v7 = *(v2 + 56);
  v46 = *(v2 + 40);
  v47 = v7;
  v48 = *(v2 + 72);
  v8 = ByteBuffer.writeLegacySessionID(_:)(&v46);
  v9 = v8 + 34;
  if (__OFADD__(v8, 34))
  {
    goto LABEL_42;
  }

  v10 = *a1;
  v11 = a1[1];
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

  v42 = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v43;
  __swift_project_boxed_opaque_existential_0(&v43, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v14 = *(v2 + 80);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v40 = v13;
  v16 = 0;
  v17 = v14 + 32;
  do
  {
    v42 = bswap32(*(v17 + v16)) >> 16;
    *(&v44 + 1) = v4;
    v45 = v5;
    *&v43 = &v42;
    *(&v43 + 1) = &v43;
    __swift_project_boxed_opaque_existential_0(&v43, v4);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v43);
    if (v16 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 += 2;
    --v15;
  }

  while (v15);
  v13 = v40;
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v16 >> 16)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v13);
  v18 = v9 + v16 + 2;
  if (__OFADD__(v9, v16 + 2))
  {
    goto LABEL_44;
  }

  v19 = *a1;
  v20 = a1[1];
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
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
    v22 = BYTE6(v20);
  }

  LOBYTE(v42) = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v42 + 1;
  __swift_project_boxed_opaque_existential_0(&v43, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v23 = *(v2 + 88);
  v24 = *(v23 + 16);
  if (v24)
  {
    v41 = v22;
    v25 = v18;
    v26 = 0;
    v27 = v23 + 32;
    do
    {
      v28 = *(v27 + v26++);
      LOBYTE(v42) = v28;
      *(&v44 + 1) = v4;
      v45 = v5;
      *&v43 = &v42;
      *(&v43 + 1) = &v42 + 1;
      __swift_project_boxed_opaque_existential_0(&v43, v4);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v43);
    }

    while (v24 != v26);
    v18 = v25;
    v22 = v41;
    if (v24 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v24, v22);
  v29 = __OFADD__(v18, v24 + 1);
  v30 = v18 + v24 + 1;
  if (v29)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = *a1;
  v32 = a1[1];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v36 = *(v31 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v34 = BYTE6(v32);
    v35 = v31 >> 32;
    if (v33)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }
  }

  v42 = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v43;
  __swift_project_boxed_opaque_existential_0(&v43, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v37 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 96));
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v38 = v37;
  if (v37 >> 16)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v37, v36);
  result = v30 + v38 + 2;
  if (__OFADD__(v30, v38 + 2))
  {
    goto LABEL_49;
  }

  return result;
}

uint64_t ByteBuffer.writeLegacySessionID(_:)(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
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

  LOBYTE(v18[0]) = 0;
  v21 = MEMORY[0x1E69E6290];
  v22 = MEMORY[0x1E6969DF8];
  v20[0] = v18;
  v20[1] = v18 + 1;
  __swift_project_boxed_opaque_existential_0(v20, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v20);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v9;
  v10 = *(a1 + 32);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v10 >= 0x20)
  {
    v11 = 32;
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v21 = v12;
  v22 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  v13 = swift_allocObject();
  v20[0] = v13;
  v13[2] = 0;
  v13[3] = v11;
  v13[4] = v18;
  v13[5] = v19;
  v14 = __swift_project_boxed_opaque_existential_0(v20, v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = v15[1];
  v19[0] = *v15;
  v19[1] = v16;
  Slice<>.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v20);
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v11, v8);
  return v11 + 1;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 88;
    v6 = *(v3 + 32);
    v7 = *(v3 + 64);
    v13[3] = *(v3 + 48);
    v13[4] = v7;
    v14 = *(v3 + 80);
    v8 = *(v3 + 16);
    v13[0] = *v3;
    v13[1] = v8;
    v13[2] = v6;
    outlined init with copy of Extension(v13, v12);
    v9 = ByteBuffer.writeExtension(_:)(v13);
    outlined destroy of Extension(v13);
    v3 = v5;
    v10 = __OFADD__(a1, v9);
    a1 += v9;
    if (v10)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    v9 = *(v3 - 12);
    outlined copy of Data._Representation(v8, v7);
    v10 = ByteBuffer.writeKeyShareEntry(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 8;
    v6 = *v3;
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *(v3 - 3);
    outlined copy of Data._Representation(v9, v8);
    v10 = ByteBuffer.writePSKIdentity(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v9, v8);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 48);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    outlined copy of Data._Representation(v8, v7);
    v9 = ByteBuffer.writePSKBinder(_:)(v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v10 = __OFADD__(a1, v9);
    a1 += v9;
    if (v10)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    v9 = *(v3 - 12);
    outlined copy of Data._Representation(v8, v7);
    v10 = ByteBuffer.writePAKEShareRFC(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v9 = *(v3 - 3);
    v8 = *(v3 - 2);
    outlined copy of Data._Representation(v9, v8);

    v10 = ByteBuffer.writeCertificateEntry(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v9, v8);

    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

unint64_t ByteBuffer.writeSupportedGroups(_:)(uint64_t a1)
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

  v15 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v18 = MEMORY[0x1E69E6290];
  v19 = MEMORY[0x1E6969DF8];
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  v13 = a1 + 32;
  do
  {
    v15 = bswap32(*(v13 + v12)) >> 16;
    v18 = v9;
    v19 = v10;
    v16 = &v15;
    v17 = &v16;
    __swift_project_boxed_opaque_existential_0(&v16, v9);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    if (v12 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v12 >> 16)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v12, v8);
  return v12 + 2;
}

unint64_t ByteBuffer.writeSupportedVersions(_:)(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v17 = a1;
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    return 2;
  }

  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
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
    v8 = BYTE6(v6);
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

  LOBYTE(v17) = 0;
  v11 = MEMORY[0x1E69E6290];
  v12 = MEMORY[0x1E6969DF8];
  v20 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = a1 + 33;
  do
  {
    v17 = *(v15 - 1);
    v20 = v11;
    v21 = v12;
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, v11);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    if (v14 == 0x8000000000000002)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    v15 += 2;
    v14 -= 2;
    --v13;
  }

  while (v13);
  v16 = -v14;
  if (v14 > 0)
  {
    goto LABEL_21;
  }

  if (v16 > 0xFF)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v16, v10);
  return v16 + 1;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v342 = a1;
  v3 = v2;
  v309 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v305 = &v295 - v5;
  v307 = type metadata accessor for SymmetricKey();
  v6 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v304 = &v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v299 = &v295 - v9;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v312);
  v311 = &v295 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v326 = &v295 - v12;
  v301 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v13 = MEMORY[0x1EEE9AC00](v301);
  v300 = &v295 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v302 = &v295 - v15;
  v303 = type metadata accessor for PartialHandshakeResult(0);
  MEMORY[0x1EEE9AC00](v303);
  v17 = (&v295 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = type metadata accessor for SessionTicket(0);
  v333 = *(v340 - 8);
  v18 = MEMORY[0x1EEE9AC00](v340);
  v296 = &v295 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v310 = &v295 - v20;
  v21 = type metadata accessor for Date();
  v320 = *(v21 - 8);
  v321 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v295 = &v295 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v334 = &v295 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v298 = &v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v315 = &v295 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v314 = &v295 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v327 = &v295 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v324 = &v295 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v297 = &v295 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v331 = &v295 - v38;
  v39 = type metadata accessor for PAKEClientState(0);
  v335 = *(v39 - 8);
  v336 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v323 = &v295 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v42 = *(v41 - 8);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v318 = &v295 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v319 = &v295 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v317 = &v295 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v329 = &v295 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v330 = &v295 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v328 = &v295 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v332 = &v295 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v347 = &v295 - v57;
  v339 = type metadata accessor for HandshakeState.IdleState(0);
  v58 = MEMORY[0x1EEE9AC00](v339);
  v325 = &v295 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v346 = &v295 - v60;
  v61 = type metadata accessor for HandshakeState(0);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v316 = &v295 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v345 = (&v295 - v65);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v295 - v66;
  v351._rawValue = type metadata accessor for HandshakeStateMachine(0);
  v349 = *(v351._rawValue + 6);
  outlined init with copy of SessionTicket(v3 + v349, v67, type metadata accessor for HandshakeState);
  v350 = v61;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v74 = 1701602409;
    v75 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v75 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v74 = v75;
    }

    *&v341 = v74;
    if (EnumCaseMultiPayload)
    {
      v73 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v73 = 0xE400000000000000;
    }
  }

  else
  {
    v69 = 0x80000001B26CD890;
    v70 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v70 = 0x726F467964616572;
      v69 = 0xEC00000061746144;
    }

    v71 = 0x80000001B26CD8D0;
    v72 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v72 = 0xD000000000000011;
      v71 = 0x80000001B26CD8B0;
    }

    if (EnumCaseMultiPayload > 4)
    {
      v72 = v70;
    }

    *&v341 = v72;
    if (EnumCaseMultiPayload <= 4)
    {
      v73 = v71;
    }

    else
    {
      v73 = v69;
    }
  }

  *&v348 = v42;
  outlined destroy of SessionTicket(v67, type metadata accessor for HandshakeState);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  v77 = __swift_project_value_buffer(v76, logger);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  v80 = os_log_type_enabled(v78, v79);
  v308 = v17;
  v306 = v6;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v366[0] = v82;
    *v81 = 136315138;
    *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v73, v366);
    _os_log_impl(&dword_1B25F5000, v78, v79, "startHandshake in state %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x1B274ECF0](v82, -1, -1);
    MEMORY[0x1B274ECF0](v81, -1, -1);
  }

  v83 = *(v351._rawValue + 9);
  v382 = v3;
  v84 = v3 + v83;
  v85 = *(v84 + 60);
  v313 = v84;
  v86 = *(v84 + 62);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  v89 = os_log_type_enabled(v87, v88);
  LODWORD(v338) = v86;
  v343 = v77;
  v344 = v41;
  LODWORD(v322) = v85;
  if ((v86 & 1) != 0 || v85 != 4588)
  {
    if (!v89)
    {
      goto LABEL_32;
    }

    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v366[0] = v97;
    *v96 = 136315138;
    if (v338)
    {
      v98 = 0xE400000000000000;
      v99 = 1701736302;
    }

    else
    {
      v99 = NamedGroup.description.getter(v85);
      v98 = v100;
    }

    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, v366);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_1B25F5000, v87, v88, "starting handshake with group %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x1B274ECF0](v97, -1, -1);
    v95 = v96;
  }

  else
  {
    if (!v89)
    {
      goto LABEL_32;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v366[0] = v91;
    *v90 = 136315138;
    v92 = NamedGroup.description.getter(0x11ECu);
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v366);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_1B25F5000, v87, v88, "starting handshake with group %s (PQ-TLS)", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x1B274ECF0](v91, -1, -1);
    v95 = v90;
  }

  MEMORY[0x1B274ECF0](v95, -1, -1);
LABEL_32:

  v102 = v345;
  outlined init with copy of SessionTicket(v382 + v349, v345, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of SessionTicket(v102, type metadata accessor for HandshakeState);

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v366[0] = v106;
      *v105 = 136315138;
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v73, v366);

      *(v105 + 4) = v107;
      _os_log_impl(&dword_1B25F5000, v103, v104, "invalid state for startHandshake: %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x1B274ECF0](v106, -1, -1);
      MEMORY[0x1B274ECF0](v105, -1, -1);
    }

    else
    {
    }

    v366[0] = xmmword_1B26C6450;
    v115 = 2;
    LOBYTE(v366[1]) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_41;
  }

  v108 = v346;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v102, v346, type metadata accessor for HandshakeState.IdleState);
  v110 = v347;
  v109 = v348;
  v111 = v348 + 56;
  v112 = v344;
  v345 = *(v348 + 56);
  (v345)(v347, 1, 1, v344);
  if ((v338 & 1) == 0)
  {
    v113 = v322;
    if (v322 == 29)
    {
      v114 = v332;
      Curve25519.KeyAgreement.PrivateKey.init()();
    }

    else
    {
      v114 = v332;
      if (v322 == 24)
      {
        P384.KeyAgreement.PrivateKey.init()();
      }

      else
      {
        if (v322 != 4588)
        {
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = v113;
            v124 = v122;
            *v122 = 33554688;
            *(v122 + 4) = v123;
            _os_log_impl(&dword_1B25F5000, v120, v121, "unknown fixedGroup: %hu", v122, 6u);
            MEMORY[0x1B274ECF0](v124, -1, -1);
          }

          v366[0] = xmmword_1B26C6450;
          v115 = 2;
          LOBYTE(v366[1]) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of P256.Signing.PrivateKey?(v110, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          result = outlined destroy of SessionTicket(v108, type metadata accessor for HandshakeState.IdleState);
          goto LABEL_41;
        }

        X25519MLKEM768EphemeralKey.init()(v332);
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v110, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v112 = v344;
    swift_storeEnumTagMultiPayload();
    (v345)(v114, 0, 1, v112);
    outlined init with take of P256.Signing.PublicKey?(v114, v110, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v109 = v348;
  }

  v322 = v111;
  v125 = v328;
  outlined init with copy of Any?(v110, v328, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v126 = *(v109 + 48);
  *&v348 = v109 + 48;
  if (v126(v125, 1, v112) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v125, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v127 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v128 = v125;
    v129 = v329;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v128, v329, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMR);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1B26C6030;
    v131 = v317;
    outlined init with copy of SessionTicket(v129, v317, type metadata accessor for GeneratedEphemeralPrivateKey);
    v132 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    outlined destroy of SessionTicket(v131, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v130 + 32) = v132;
    v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v134 = *(v127 + 2);
    v133 = *(v127 + 3);
    if (v134 >= v133 >> 1)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v127);
    }

    outlined destroy of SessionTicket(v329, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v127 + 2) = v134 + 1;
    v135 = &v127[88 * v134];
    *(v135 + 4) = v130;
    v135[112] = 16;
    v108 = v346;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v127 + 2) + 1, 1, v127);
  }

  v137 = *(v127 + 2);
  v136 = *(v127 + 3);
  if (v137 >= v136 >> 1)
  {
    v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1, v127);
  }

  v369 = 0;
  *(v127 + 2) = v137 + 1;
  v138 = &v127[88 * v137];
  *(v138 + 4) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv_r;
  v138[40] = v369;
  v138[112] = 32;
  v370 = v127;
  v139 = v330;
  outlined init with copy of Any?(v347, v330, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (v126(v139, 1, v344) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v139, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v140 = v382;
  }

  else
  {
    v141 = v319;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v139, v319, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMR);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1B26C6030;
    v143 = v318;
    outlined init with copy of SessionTicket(v141, v318, type metadata accessor for GeneratedEphemeralPrivateKey);
    v144 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    outlined destroy of SessionTicket(v143, type metadata accessor for GeneratedEphemeralPrivateKey);
    v145 = GeneratedEphemeralPrivateKey.publicKeyData.getter();
    v147 = 0;
    v148 = v146 >> 62;
    if ((v146 >> 62) > 1)
    {
      if (v148 == 2)
      {
        v147 = *(v145 + 16);
      }
    }

    else if (v148)
    {
      v147 = v145;
    }

    *(v142 + 32) = v144;
    *(v142 + 40) = v145;
    *(v142 + 48) = v146;
    *(v142 + 56) = v147;
    v150 = *(v127 + 2);
    v149 = *(v127 + 3);
    v140 = v382;
    if (v150 >= v149 >> 1)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v127);
    }

    outlined destroy of SessionTicket(v141, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v127 + 2) = v150 + 1;
    v151 = &v127[88 * v150];
    *(v151 + 4) = v142;
    *(v151 + 5) = 0;
    *(v151 + 6) = 0;
    *(v151 + 7) = 0;
    v151[112] = 64;
    v370 = v127;
  }

  specialized Array.append<A>(contentsOf:)(_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv4_r);
  v152 = *(v108 + 8);
  if (v152)
  {
    v153 = *v108;

    v154 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v153, v152);
    v155 = v154;
    v157 = v156;
    v158 = 0;
    v159 = v156 >> 62;
    if ((v156 >> 62) > 1)
    {
      if (v159 == 2)
      {
        v158 = *(v154 + 16);
      }
    }

    else if (v159)
    {
      v158 = v154;
    }

    v160 = v370;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 2) + 1, 1, v160);
    }

    v162 = *(v160 + 2);
    v161 = *(v160 + 3);
    if (v162 >= v161 >> 1)
    {
      v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1, v160);
    }

    *(v160 + 2) = v162 + 1;
    v163 = &v160[88 * v162];
    *(v163 + 4) = v155;
    *(v163 + 5) = v157;
    *(v163 + 6) = v158;
    v163[112] = 0;
    v370 = v160;
    v140 = v382;
  }

  v164 = *(v108 + 32);
  if (v164 >> 60 != 15)
  {
    v348 = *(v108 + 32);
    v165 = *(v108 + 24);
    v166 = v370;
    outlined copy of Data._Representation(v165, v164);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v166 + 2) + 1, 1, v166);
    }

    v168 = *(v166 + 2);
    v167 = *(v166 + 3);
    v169 = v348;
    if (v168 >= v167 >> 1)
    {
      v294 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v166);
      v169 = v348;
      v166 = v294;
    }

    *(v166 + 2) = v168 + 1;
    v170 = &v166[88 * v168];
    *(v170 + 4) = v165;
    *(v170 + 40) = v169;
    v170[112] = 0x80;
    v370 = v166;
  }

  v171 = *(v108 + 48);
  if (v171)
  {
    v172 = v370;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v172 + 2) + 1, 1, v172);
    }

    v174 = *(v172 + 2);
    v173 = *(v172 + 3);
    if (v174 >= v173 >> 1)
    {
      v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1, v172);
    }

    LOBYTE(v366[0]) = 0;
    *(v172 + 2) = v174 + 1;
    v175 = &v172[88 * v174];
    *(v175 + 4) = v171;
    *(v175 + 5) = 0;
    v175[48] = v366[0];
    v175[112] = 48;
    v370 = v172;
  }

  if ((*(v108 + 58) & 1) == 0)
  {
    v176 = *(v108 + 56);
    v177 = v370;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v177 + 2) + 1, 1, v177);
    }

    v179 = *(v177 + 2);
    v178 = *(v177 + 3);
    if (v179 >= v178 >> 1)
    {
      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1, v177);
    }

    LOBYTE(v366[0]) = 0;
    *(v177 + 2) = v179 + 1;
    v180 = &v177[88 * v179];
    *(v180 + 16) = v176;
    v180[34] = v366[0];
    v180[112] = -80;
    v370 = v177;
  }

  v181 = v339;
  v182 = v331;
  outlined init with copy of Any?(v108 + *(v339 + 32), v331, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  if ((*(v335 + 48))(v182, 1, v336) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v182, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v183 = v370;
  }

  else
  {
    v184 = v323;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v182, v323, type metadata accessor for PAKEClientState);
    v185 = v337;
    _s15SwiftTLSLibrary15PAKEClientStateV19generateClientHelloAA9ExtensionO4PAKEO0cG0VyAA8TLSErrorOYKF(v352, v371);
    v186 = v347;
    if (v185)
    {
      v115 = v352[0];
      v117 = v352[1];
      v118 = v353;
      outlined destroy of SessionTicket(v184, type metadata accessor for PAKEClientState);
      outlined destroy of P256.Signing.PrivateKey?(v186, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);

      result = outlined destroy of SessionTicket(v108, type metadata accessor for HandshakeState.IdleState);
      goto LABEL_42;
    }

    v337 = 0;
    v341 = v371[1];
    v348 = v371[0];
    v187 = v372;
    v188 = v373;
    v189 = v374;
    v183 = v370;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v183 + 2) + 1, 1, v183);
    }

    v191 = *(v183 + 2);
    v190 = *(v183 + 3);
    if (v191 >= v190 >> 1)
    {
      v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v183);
    }

    LOBYTE(v366[0]) = 0;
    outlined destroy of SessionTicket(v323, type metadata accessor for PAKEClientState);
    *(v183 + 2) = v191 + 1;
    v192 = &v183[88 * v191];
    v193 = v341;
    *(v192 + 2) = v348;
    *(v192 + 3) = v193;
    *(v192 + 8) = v187;
    *(v192 + 9) = v188;
    *(v192 + 10) = v189;
    v192[112] = -64;
    v370 = v183;
    v140 = v382;
    v181 = v339;
  }

  v194 = (v140 + *(v351._rawValue + 8));
  v195 = v194[1];
  *(v366 + 8) = *v194;
  LOWORD(v366[0]) = 771;
  *(&v366[1] + 8) = v195;
  *(&v366[2] + 8) = 0u;
  *(&v366[3] + 8) = 0u;
  *(&v366[4] + 1) = 0;
  *&v367 = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv2_r;
  *(&v367 + 1) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv3_r;
  v338 = v183;
  v368 = v183;
  v196 = *(v181 + 20);
  v197 = v346;
  v198 = v324;
  outlined init with copy of Any?(v346 + v196, v324, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v199 = *(v333 + 48);
  *&v348 = v333 + 48;
  *&v341 = v199;
  v200 = v199(v198, 1, v340);
  outlined destroy of P256.Signing.PrivateKey?(v198, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (v200 != 1 && *(*(v197 + *(v181 + 28)) + 16))
  {
    v363 = v366[4];
    v364 = v367;
    v365 = v368;
    v359 = v366[0];
    v360 = v366[1];
    v361 = v366[2];
    v362 = v366[3];
    outlined destroy of ClientHello(&v359);
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&dword_1B25F5000, v201, v202, "both session resumption and imported PSKs are in use, only one is allowed", v203, 2u);
      MEMORY[0x1B274ECF0](v203, -1, -1);
    }

    v354 = xmmword_1B26C6450;
    v115 = 2;
    LOBYTE(v355) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v347, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    result = outlined destroy of SessionTicket(v346, type metadata accessor for HandshakeState.IdleState);
    goto LABEL_41;
  }

  v204 = (v382 + *(v351._rawValue + 7));
  v205 = v204[3];
  v206 = v204[4];
  __swift_project_boxed_opaque_existential_0(v204, v205);
  (*(v206 + 8))(v205, v206);
  v207 = v197 + v196;
  v208 = v327;
  outlined init with copy of Any?(v207, v327, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v209 = v314;
  outlined init with copy of Any?(v208, v314, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v210 = v340;
  v211 = v197;
  if ((v341)(v209, 1, v340) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v209, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  }

  else
  {
    v212 = v310;
    v213 = _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v209, v310, type metadata accessor for SessionTicket);
    if (qword_1F29DB6E8 && *(v212 + v210[11]) == word_1F29DB6F8)
    {
      v351._rawValue = *(v197 + 16);
      v214 = *(v338 + 2);
      if (v214)
      {
        v215 = v338 + 32;
        for (i = v214 - 1; ; --i)
        {
          v217 = *(v215 + 1);
          v359 = *v215;
          v360 = v217;
          v218 = *(v215 + 2);
          v219 = *(v215 + 3);
          v220 = *(v215 + 4);
          LOBYTE(v364) = v215[80];
          v362 = v219;
          v363 = v220;
          v361 = v218;
          if ((v364 & 0xF0) == 0x30 && (v360 & 1) == 0)
          {
            v221 = (v212 + v210[13]);
            v222 = v221[1];
            if (v222)
            {
              v223 = v359;
              *&v354 = *v221;
              *(&v354 + 1) = v222;
              MEMORY[0x1EEE9AC00](v213);
              *(&v295 - 2) = &v354;
              outlined copy of Extension.ApplicationLayerProtocolNegotiation(v359, *(&v359 + 1), v360 & 1);
              v224 = v337;
              LOBYTE(v223) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v295 - 4), v223);
              v337 = v224;
              v213 = outlined destroy of Extension(&v359);
              if ((v223 & 1) == 0)
              {
                v211 = v346;
                v208 = v327;
                goto LABEL_132;
              }

              v210 = v340;
            }
          }

          if (!i)
          {
            v211 = v346;
            v208 = v327;
            break;
          }

          v215 += 88;
        }
      }

      if (!PeerCertificateBundle.wouldBeTrusted(forKeys:)(v351))
      {
        goto LABEL_132;
      }

      v225 = v295;
      Date.addingTimeInterval(_:)();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        (*(v320 + 8))(v225, v321);
        goto LABEL_132;
      }

      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v226 = v321;
      v227 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v320 + 8))(v225, v226);
      if (v227)
      {
        goto LABEL_132;
      }

      outlined destroy of SessionTicket(v212, type metadata accessor for SessionTicket);
      v210 = v340;
    }

    else
    {
LABEL_132:
      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v228, v229))
      {
        v230 = swift_slowAlloc();
        *v230 = 0;
        _os_log_impl(&dword_1B25F5000, v228, v229, "unable to resume session, incompatible with current handshake", v230, 2u);
        MEMORY[0x1B274ECF0](v230, -1, -1);
      }

      outlined destroy of SessionTicket(v212, type metadata accessor for SessionTicket);
      outlined destroy of P256.Signing.PrivateKey?(v208, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v210 = v340;
      (*(v333 + 56))(v208, 1, 1, v340);
    }
  }

  v231 = v339;
  v232 = v315;
  if (*(v313 + 63) == 1)
  {
    outlined init with copy of Any?(v208, v315, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    if ((v341)(v232, 1, v210) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v232, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      goto LABEL_147;
    }

    v233 = v211;
    v234 = v296;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v232, v296, type metadata accessor for SessionTicket);
    if (!*(v234 + v210[10]))
    {
      outlined destroy of SessionTicket(v234, type metadata accessor for SessionTicket);
      v211 = v233;
LABEL_147:
      if (*(*(v211 + v231[7]) + 16))
      {
        v242 = Logger.logObject.getter();
        v243 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v242, v243))
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          _os_log_impl(&dword_1B25F5000, v242, v243, "client requesting early data with external psks", v244, 2u);
          MEMORY[0x1B274ECF0](v244, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v338 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v338 + 2) + 1, 1, v338);
        }

        v246 = *(v338 + 2);
        v245 = *(v338 + 3);
        if (v246 >= v245 >> 1)
        {
          v338 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v245 > 1), v246 + 1, 1, v338);
        }

        LOBYTE(v359) = 1;
        v247 = v338;
        v231 = v339;
        *(v338 + 2) = v246 + 1;
        v248 = &v247[88 * v246];
        *(v248 + 8) = 0;
        v248[36] = v359;
        v248[112] = 80;
        v368 = v247;
      }

      goto LABEL_155;
    }

    v235 = Logger.logObject.getter();
    v236 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v235, v236))
    {
      v237 = swift_slowAlloc();
      *v237 = 0;
      _os_log_impl(&dword_1B25F5000, v235, v236, "client requesting early data with session resumption", v237, 2u);
      MEMORY[0x1B274ECF0](v237, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v338 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v338 + 2) + 1, 1, v338);
    }

    v239 = *(v338 + 2);
    v238 = *(v338 + 3);
    if (v239 >= v238 >> 1)
    {
      v338 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v238 > 1), v239 + 1, 1, v338);
    }

    LOBYTE(v359) = 1;
    outlined destroy of SessionTicket(v234, type metadata accessor for SessionTicket);
    v240 = v338;
    v231 = v339;
    *(v338 + 2) = v239 + 1;
    v241 = &v240[88 * v239];
    *(v241 + 8) = 0;
    v241[36] = v359;
    v241[112] = 80;
    v368 = v240;
    v211 = v233;
  }

LABEL_155:
  v351._rawValue = *(v211 + v231[7]);
  v249 = v316;
  outlined init with copy of SessionTicket(v382 + v349, v316, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = outlined destroy of SessionTicket(v249, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_165:
    __break(1u);
    return result;
  }

  v250 = v325;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v249, v325, type metadata accessor for HandshakeState.IdleState);
  v251 = *(v250 + 64);
  v252 = v326;
  outlined init with copy of Any?(v250 + v231[6], v326, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v253 = v311;
  outlined init with copy of Any?(v252, v311, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() < 4)
  {
    outlined destroy of P256.Signing.PrivateKey?(v253, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v359 = xmmword_1B26C6450;
    v115 = 2;
    LOBYTE(v360) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of SessionTicket(v250, type metadata accessor for HandshakeState.IdleState);
    outlined destroy of P256.Signing.PrivateKey?(v208, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    (*(v320 + 8))(v334, v321);
    outlined destroy of P256.Signing.PrivateKey?(v347, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v252, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v363 = v366[4];
    v364 = v367;
    v365 = v368;
    v359 = v366[0];
    v360 = v366[1];
    v361 = v366[2];
    v362 = v366[3];
    outlined destroy of ClientHello(&v359);
    result = outlined destroy of SessionTicket(v346, type metadata accessor for HandshakeState.IdleState);
LABEL_41:
    v117 = 0;
    v118 = 2;
LABEL_42:
    v119 = v342;
    *v342 = v115;
    v119[1] = v117;
    *(v119 + 16) = v118;
    return result;
  }

  v254 = v299;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v299, v366, v208, v351._rawValue, v251, v334);
  v342 = v255;
  *&v341 = v256;
  v339 = v257;
  outlined destroy of P256.Signing.PrivateKey?(v252, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v254, v252, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  v258 = *(v250 + 48);
  v356 = *(v250 + 32);
  v357 = v258;
  v358 = *(v250 + 64);
  v259 = *(v250 + 16);
  v354 = *v250;
  v355 = v259;
  v379 = v366[4];
  v380 = v367;
  v381 = v368;
  v375 = v366[0];
  v376 = v366[1];
  v377 = v366[2];
  v378 = v366[3];
  *&v348 = ClientHello.serverCertificateTypes.getter();
  outlined init with copy of Any?(v347, v332, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v260 = v300;
  v261 = v301;
  outlined init with copy of Any?(v252, &v300[*(v301 + 36)], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v262 = v250;
  v263 = v298;
  outlined init with copy of Any?(v208, v298, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v264 = v297;
  outlined init with copy of Any?(v262 + v231[8], v297, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v265 = v261[8];
  (v345)(v260 + v265, 1, 1, v344);
  v266 = v261[10];
  (*(v333 + 56))(v260 + v266, 1, 1, v340);
  v267 = v261[12];
  (*(v335 + 56))(v260 + v267, 1, 1, v336);
  v268 = v357;
  *(v260 + 32) = v356;
  *(v260 + 48) = v268;
  *(v260 + 64) = v358;
  v269 = v355;
  *v260 = v354;
  *(v260 + 16) = v269;
  *(v260 + 72) = 0u;
  *(v260 + 88) = 0u;
  *(v260 + 104) = 0;
  *(v260 + 112) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv2_r;
  *(v260 + 120) = v348;
  outlined init with copy of HandshakeStateMachine.Configuration(&v354, &v359);

  outlined assign with take of PartialHandshakeResult?(v332, v260 + v265, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  outlined assign with take of PartialHandshakeResult?(v263, v260 + v266, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  *(v260 + v261[11]) = v351;

  outlined assign with take of PartialHandshakeResult?(v264, v260 + v267, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v326, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v270 = v302;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v260, v302, type metadata accessor for HandshakeState.ClientHelloState);
  v271 = v305;
  specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter(v305);
  v273 = v306;
  v272 = v307;
  result = (*(v306 + 48))(v271, 1, v307);
  if (result == 1)
  {
    goto LABEL_165;
  }

  outlined destroy of SessionTicket(v325, type metadata accessor for HandshakeState.IdleState);
  v274 = v382;
  v275 = v349;
  outlined destroy of SessionTicket(v382 + v349, type metadata accessor for HandshakeState);
  v276 = *(v273 + 32);
  v277 = v304;
  v276(v304, v271, v272);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v270, v274 + v275, type metadata accessor for HandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  v278 = v303;
  v279 = *(v303 + 20);
  v280 = v308;
  v276(v308 + v279, v277, v272);
  v281 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v282 = *(*(v281 - 8) + 56);
  v282(v280 + v279, 0, 1, v281);
  v282(v280 + *(v278 + 24), 1, 1, v281);
  v283 = v341;
  *v280 = v342;
  v280[1] = v283;
  v280[2] = v339;
  *(v280 + *(v278 + 28)) = xmmword_1B26C5EF0;
  v363 = v366[4];
  v364 = v367;
  v365 = v368;
  v361 = v366[2];
  v362 = v366[3];
  v359 = v366[0];
  v360 = v366[1];
  outlined destroy of ClientHello(&v359);
  v284 = Logger.logObject.getter();
  v285 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v284, v285))
  {
    v286 = swift_slowAlloc();
    *v286 = 0;
    _os_log_impl(&dword_1B25F5000, v284, v285, "client beginning TLS handshake", v286, 2u);
    MEMORY[0x1B274ECF0](v286, -1, -1);
  }

  v287 = Logger.logObject.getter();
  v288 = static os_log_type_t.info.getter();
  v289 = os_log_type_enabled(v287, v288);
  v290 = v346;
  v291 = v347;
  v292 = v327;
  if (v289)
  {
    v293 = swift_slowAlloc();
    *v293 = 0;
    _os_log_impl(&dword_1B25F5000, v287, v288, "client sent client hello", v293, 2u);
    MEMORY[0x1B274ECF0](v293, -1, -1);
  }

  outlined destroy of P256.Signing.PrivateKey?(v292, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  (*(v320 + 8))(v334, v321);
  outlined destroy of P256.Signing.PrivateKey?(v291, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v280, v309, type metadata accessor for PartialHandshakeResult);
  return outlined destroy of SessionTicket(v290, type metadata accessor for HandshakeState.IdleState);
}

uint64_t NamedGroup.description.getter(unsigned __int16 a1)
{
  if (a1 > 0x1Cu)
  {
    if (a1 != 29)
    {
      if (a1 == 4588)
      {
        return 0x4D3931353532782ELL;
      }

      goto LABEL_8;
    }

    return 0x3931353532782ELL;
  }

  else
  {
    if (a1 != 23)
    {
      if (a1 == 24)
      {
        return 0x343833706365732ELL;
      }

LABEL_8:
      _StringGuts.grow(_:)(24);

      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v2);

      MEMORY[0x1B274D610](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x363532706365732ELL;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t GeneratedEphemeralPrivateKey.publicKeyData.getter()
{
  v0 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v29, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v18, v8, type metadata accessor for P384EphemeralKey);
      v20 = P384.KeyAgreement.PrivateKey.publicKey.getter();
      v21 = MEMORY[0x1B274D4B0](v20);
      (*(v27 + 8))(v5, v28);
      v22 = type metadata accessor for P384EphemeralKey;
      v23 = v8;
    }

    else
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v18, v2, type metadata accessor for X25519MLKEM768EphemeralKey);
      v24 = &v2[*(v0 + 24)];
      v21 = *v24;
      outlined copy of Data._Representation(*v24, *(v24 + 1));
      v22 = type metadata accessor for X25519MLKEM768EphemeralKey;
      v23 = v2;
    }
  }

  else
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v18, v15, type metadata accessor for Curve25519EphemeralKey);
    Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
    v21 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
    (*(v10 + 8))(v12, v9);
    v22 = type metadata accessor for Curve25519EphemeralKey;
    v23 = v15;
  }

  outlined destroy of GeneratedEphemeralPrivateKey(v23, v22);
  return v21;
}

uint64_t outlined init with copy of GeneratedEphemeralPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(char a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = a1;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = MEMORY[0x1E69E6290];
  v11[4] = MEMORY[0x1E6969DF8];
  v11[0] = &v10;
  v11[1] = v11;
  __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x1E69E6290]);
  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return 1;
}

unint64_t ByteBuffer.writeExtension(_:)(unsigned __int16 *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = 0;
  switch(*(a1 + 80) >> 4)
  {
    case 1:
      v3 = 10;
      break;
    case 2:
      v3 = 43;
      break;
    case 3:
      v3 = 16;
      break;
    case 4:
      v3 = 51;
      break;
    case 5:
      v3 = 42;
      break;
    case 6:
      v3 = 13;
      break;
    case 7:
      v3 = 20;
      break;
    case 8:
      v3 = 57;
      break;
    case 9:
      v3 = 45;
      break;
    case 0xA:
      v3 = 41;
      break;
    case 0xB:
      v3 = 58;
      break;
    case 0xC:
      v3 = 35387;
      break;
    case 0xD:
      v3 = *a1;
      break;
    default:
      break;
  }

  v15 = bswap32(v3) >> 16;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  v18 = MEMORY[0x1E69E6290];
  v19 = MEMORY[0x1E6969DF8];
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v6 = *v1;
  v7 = v1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v7);
    v10 = v6 >> 32;
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }
  }

  v15 = 0;
  v18 = v4;
  v19 = v5;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_0(&v16, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v12 = closure #1 in ByteBuffer.writeExtension(_:)(v1, a1);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v13 = v12;
  if (v12 >> 16)
  {
    goto LABEL_26;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v12, v11);
  return v13 + 4;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(unsigned int a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = MEMORY[0x1E69E6290];
  v11[4] = MEMORY[0x1E6969DF8];
  v11[0] = &v10;
  v11[1] = v11;
  __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x1E69E6290]);
  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return 2;
}

int64_t closure #1 in ByteBuffer.writeExtension(_:)(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9) | ((*(a2 + 13) | (*(a2 + 15) << 16)) << 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 80);
  switch(v11 >> 4)
  {
    case 1u:
    case 6u:
      return ByteBuffer.writeSupportedGroups(_:)(v3);
    case 2u:
      return ByteBuffer.writeSupportedVersions(_:)(v3, v4 & 1);
    case 3u:
      return ByteBuffer.writeALPN(_:)(v3, v4 | (v5 << 8), v6 & 1);
    case 4u:
      v17 = (v7 >> 52) & 3;
      if (!v17)
      {
        v28 = *a1;
        v29 = a1[1];
        v30 = v29 >> 62;
        v31 = *a2;
        if ((v29 >> 62) > 1)
        {
          if (v30 == 2)
          {
            v32 = *(v28 + 24);
          }

          else
          {
            v32 = 0;
          }
        }

        else if (v30)
        {
          v32 = v28 >> 32;
        }

        else
        {
          v32 = BYTE6(v29);
        }

        LOWORD(v61[0]) = 0;
        v68 = MEMORY[0x1E69E6290];
        v69 = MEMORY[0x1E6969DF8];
        v62 = v61;
        v63 = v61 + 2;
        __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E69E6290]);
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v62);
        v52 = specialized Sequence.reduce<A>(into:_:)(0, v31);
        if ((v52 & 0x8000000000000000) != 0)
        {
LABEL_95:
          __break(1u);
        }

        else
        {
          v53 = v52;
          if (!(v52 >> 16))
          {
            _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v52, v32);
            return v53 + 2;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

      if (v17 == 1)
      {
        return ByteBuffer.writeKeyShareEntry(_:)(v3, v4 | (v5 << 8), (v7 << 8) & 0xCFFFFFFFFFFFFFFFLL | v6, v8);
      }

LABEL_26:
      LOWORD(v61[0]) = bswap32(v3) >> 16;
      v16 = MEMORY[0x1E69E6290];
      v68 = MEMORY[0x1E69E6290];
      v69 = MEMORY[0x1E6969DF8];
      v62 = v61;
      v63 = v61 + 2;
LABEL_27:
      __swift_project_boxed_opaque_existential_0(&v62, v16);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v62);
      return 2;
    case 5u:
      if ((v3 & 0x100000000) != 0)
      {
        return 0;
      }

      LODWORD(v61[0]) = bswap32(v3);
      v68 = MEMORY[0x1E69E6290];
      v69 = MEMORY[0x1E6969DF8];
      v62 = v61;
      v63 = v61 + 4;
      __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E69E6290]);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v62);
      return 4;
    case 7u:
      return ByteBuffer.writeServerCertificateType(_:)(v3, v4 & 1);
    case 8u:
      v24 = v6 | (v7 << 8);
      v25 = (v5 >> 54) & 3;
      if (((v5 >> 54) & 3) > 1)
      {
        if (v25 == 2)
        {
          v27 = *(v3 + 16);
          v26 = *(v3 + 24);
        }

        else
        {
LABEL_63:
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {
        if (v25)
        {
          v26 = v3 >> 32;
        }

        else
        {
          v26 = (((v5 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v25)
        {
          v27 = v3;
        }

        else
        {
          v27 = 0;
        }
      }

      if (v26 >= v24 && v26 >= v27)
      {
        v37 = Data._Representation.subscript.getter();
        v46 = v45;
        Data.append(_:)();
        v40 = v46;
        v47 = v46 >> 62;
        if ((v46 >> 62) > 1)
        {
          if (v47 == 2)
          {
            v51 = *(v37 + 16);
            v50 = *(v37 + 24);
            outlined consume of Data._Representation(v37, v40);
            result = v50 - v51;
            if (!__OFSUB__(v50, v51))
            {
              return result;
            }

            __break(1u);
          }

LABEL_75:
          outlined consume of Data._Representation(v37, v40);
          return 0;
        }

        if (!v47)
        {
LABEL_70:
          v48 = v37;
          v49 = BYTE6(v40);
          outlined consume of Data._Representation(v48, v40);
          return v49;
        }

        outlined consume of Data._Representation(v37, v46);
        LODWORD(v41) = HIDWORD(v37) - v37;
        if (!__OFSUB__(HIDWORD(v37), v37))
        {
          return v41;
        }

        goto LABEL_99;
      }

      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    case 9u:
      return ByteBuffer.writePreSharedKeyKexModes(_:)(v3);
    case 0xAu:
      if (v6)
      {
        goto LABEL_26;
      }

      return ByteBuffer.writeOfferedPSKs(_:)(v3, v4 | (v5 << 8));
    case 0xBu:
      if ((v3 & 0x10000) == 0)
      {
        LOBYTE(v61[0]) = *a2;
        v13 = MEMORY[0x1E69E6290];
        v14 = MEMORY[0x1E6969DF8];
        v68 = MEMORY[0x1E69E6290];
        v69 = MEMORY[0x1E6969DF8];
        v62 = v61;
        v63 = v61 + 1;
        v15 = BYTE1(v3);
        __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E69E6290]);
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v62);
        LOBYTE(v61[0]) = v15;
        v68 = v13;
        v69 = v14;
        v62 = v61;
        v63 = v61 + 1;
        v16 = v13;
        goto LABEL_27;
      }

      LOBYTE(v61[0]) = *a2;
      v68 = MEMORY[0x1E69E6290];
      v69 = MEMORY[0x1E6969DF8];
      v62 = v61;
      v63 = v61 + 1;
      __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E69E6290]);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v62);
      return 1;
    case 0xCu:
      v56 = *(a2 + 64);
      v58 = *(a2 + 48);
      v59 = a1;
      v18 = *a2;
      v68 = &type metadata for SwiftTLSFeatureFlags;
      v69 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
      v19 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v62);
      if (v19)
      {
        if (v11)
        {
          return ByteBuffer.writePAKEShareRFC(_:)(v18, v4 | (v5 << 8), v6 | (v7 << 8), v8);
        }

        v62 = v18;
        LOBYTE(v63) = v4;
        *(&v63 + 1) = v5;
        HIBYTE(v63) = BYTE6(v5);
        *(&v63 + 5) = WORD2(v5);
        v64 = v6;
        v65 = v7;
        v67 = BYTE6(v7);
        v66 = WORD2(v7);
        v68 = v8;
        v69 = v9;
        v70 = v10;
        *&v71 = v58;
        return ByteBuffer.writePAKEClientHelloRFC(_:)(&v62);
      }

      if (v11)
      {
        v62 = v18;
        LOBYTE(v63) = v4;
        *(&v63 + 1) = v5;
        HIBYTE(v63) = BYTE6(v5);
        *(&v63 + 5) = WORD2(v5);
        v64 = v6;
        v65 = v7;
        v67 = BYTE6(v7);
        v66 = WORD2(v7);
        v68 = v8;
        v69 = v9;
        v70 = v10;
        v71 = v58;
        v72 = v56;
        return ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v62);
      }

      v62 = v18;
      LOBYTE(v63) = v4;
      *(&v63 + 1) = v5;
      HIBYTE(v63) = BYTE6(v5);
      *(&v63 + 5) = WORD2(v5);
      v64 = v6;
      v65 = v7;
      v67 = BYTE6(v7);
      v66 = WORD2(v7);
      v68 = v8;
      v69 = v9;
      v70 = v10;
      v33 = *v59;
      v34 = v59[1];
      v35 = v34 >> 62;
      *&v71 = v58;
      if ((v34 >> 62) > 1)
      {
        if (v35 == 2)
        {
          v36 = *(v33 + 24);
        }

        else
        {
          v36 = 0;
        }
      }

      else if (v35)
      {
        v36 = v33 >> 32;
      }

      else
      {
        v36 = BYTE6(v34);
      }

      v60 = 0;
      v61[3] = MEMORY[0x1E69E6290];
      v61[4] = MEMORY[0x1E6969DF8];
      v61[0] = &v60;
      v61[1] = v61;
      __swift_project_boxed_opaque_existential_0(v61, MEMORY[0x1E69E6290]);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(v61);
      outlined init with copy of Extension.PAKE.PAKEClientHello(&v62, v61);
      specialized Sequence.reduce<A>(into:_:)(0, v58, v59, &v62);
      v55 = v54;
      outlined destroy of Extension(a2);
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (!(v55 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v55, v36);
        return v55 + 2;
      }

      goto LABEL_98;
    case 0xDu:
      v20 = *(a2 + 8) | (*(a2 + 9) << 8);
      v21 = (v7 >> 54) & 3;
      if (((v7 >> 54) & 3) > 1)
      {
        if (v21 == 2)
        {
          v23 = *((*(a2 + 8) | (v5 << 8)) + 0x10);
          v22 = *((*(a2 + 8) | (v5 << 8)) + 0x18);
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }
      }

      else
      {
        if (v21)
        {
          v22 = (v5 >> 24);
        }

        else
        {
          v22 = (((v7 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v21)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }
      }

      if (v22 < v8 || v22 < v23)
      {
        goto LABEL_94;
      }

      v37 = Data._Representation.subscript.getter();
      v39 = v38;
      Data.append(_:)();
      v40 = v39;
      v41 = v39 >> 62;
      if ((v39 >> 62) > 1)
      {
        goto LABEL_59;
      }

      if (!v41)
      {
        goto LABEL_70;
      }

      outlined consume of Data._Representation(v37, v39);
      LODWORD(v41) = HIDWORD(v37) - v37;
      if (!__OFSUB__(HIDWORD(v37), v37))
      {
        return v41;
      }

      __break(1u);
LABEL_59:
      if (v41 != 2)
      {
        goto LABEL_75;
      }

      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      outlined consume of Data._Representation(v37, v40);
      result = v42 - v43;
      if (!__OFSUB__(v42, v43))
      {
        return result;
      }

      __break(1u);
      goto LABEL_63;
    default:
      return ByteBuffer.writeServerName(_:)(v3, v4 | (v5 << 8), v6 | (v7 << 8));
  }
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO24receivedNewSessionTicket03newgH011currentTimeAA07PartialC6ResultVAA0fgH0V_10Foundation4DateVtAA8TLSErrorOYKF@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v39 = a4;
  v10 = type metadata accessor for SessionTicket(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready - 8);
  v15 = &v37[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v7, v18, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() < 6)
  {
    result = outlined destroy of HandshakeState(v18, type metadata accessor for HandshakeState);
    __break(1u);
  }

  else
  {
    outlined init with take of HandshakeState.IdleState(v18, v15, type metadata accessor for HandshakeState.ReadyState);
    _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V20prepareSessionTicket7message11currentTimeAA0gH0VAA03NewgH0V_10Foundation4DateVtAA8TLSErrorOYKF(a1, a2, v37, v12);
    if (v5)
    {
      v19 = v37[0];
      v20 = v37[1];
      v21 = v38;
      result = outlined destroy of HandshakeState(v15, type metadata accessor for HandshakeState.ReadyState);
      *a3 = v19;
      *(a3 + 8) = v20;
      *(a3 + 16) = v21;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, logger);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1B25F5000, v24, v25, "generated new session ticket", v26, 2u);
        MEMORY[0x1B274ECF0](v26, -1, -1);
      }

      v27 = type metadata accessor for PartialHandshakeResult(0);
      v28 = v27[5];
      v29 = type metadata accessor for EncryptionLevel(0);
      v30 = *(*(v29 - 8) + 56);
      v31 = v39;
      v30(v39 + v28, 1, 1, v29);
      v30(v31 + v27[6], 1, 1, v29);
      v32 = SessionTicket.serialize()();
      v34 = v33;
      outlined destroy of HandshakeState(v12, type metadata accessor for SessionTicket);
      result = outlined destroy of HandshakeState(v15, type metadata accessor for HandshakeState.ReadyState);
      *v31 = xmmword_1B26C5EF0;
      *(v31 + 16) = 0;
      v35 = (v31 + v27[7]);
      *v35 = v32;
      v35[1] = v34;
    }
  }

  return result;
}

uint64_t outlined init with copy of HandshakeState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKFAF6SHA384V_Tg5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v41 = a2;
  *&v42 = a4;
  v40 = a1;
  v6 = v5;
  v45 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  outlined init with copy of Any?(v6, &v39 - v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_7;
  }

  v18 = v45;
  v19 = v10;
  v21 = v40;
  v20 = v41;
  if (EnumCaseMultiPayload != 3)
  {
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, logger);
    outlined init with copy of Any?(v6, v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 <= 1)
    {
      if (v30)
      {
        v33 = 0x6B616873646E6168;
      }

      else
      {
        v33 = 0x636553796C726165;
      }

      if (v30)
      {
        v32 = 0xEF74657263655365;
      }

      else
      {
        v32 = 0xEB00000000746572;
      }

      v31 = v42;
    }

    else
    {
      v31 = v42;
      if (v30 == 2)
      {
        v32 = 0xEC00000074657263;
        v33 = 0x655372657473616DLL;
      }

      else
      {
        if (v30 != 3)
        {
          v32 = 0xE400000000000000;
          v33 = 1701602409;
          goto LABEL_22;
        }

        v32 = 0xEA00000000007374;
        v33 = 0x65726365536C6C61;
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_22:
    Logger.logInvalidStateTransition(stateName:event:)(v33, v32, 0xD000000000000018, 0x80000001B26CE110);

    v42 = xmmword_1B26C6450;
    v43 = xmmword_1B26C6450;
    v44 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *v31 = v42;
    *(v31 + 16) = 2;
    return result;
  }

  v22 = v16;
  v23 = v19;
  result = outlined init with take of P256.Signing.PublicKey?(v22, v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v25 = BYTE6(v20);
  v26 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v27 = a5;
    if (v26 == 2)
    {
      v28 = *(v21 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v27 = a5;
    if (v26)
    {
      v28 = v21 >> 32;
    }

    else
    {
      v28 = v25;
    }
  }

  if (v28 < v18)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v8 + 44);
    v35 = Data._Representation.subscript.getter();
    v37 = v36;
    type metadata accessor for SHA384Digest();
    _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
    v38 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkL4DataVTt4g5(v23 + v34, 0x6974706D75736572, 0xEA00000000006E6FLL, v35, v37, v38, v27);
    outlined consume of Data._Representation(v35, v37);
    return outlined destroy of P256.Signing.PrivateKey?(v23, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
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

uint64_t _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkL4DataVTt4g5@<X0>(unint64_t a1@<X0>, Swift::Int a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = a6 >> 16;
    if (!(a6 >> 16))
    {
      v7 = v16;
      a7 = *(v16 + 2);
      v17 = *(v16 + 3);
      v18 = v17 >> 1;
      v8 = a7 + 1;
      if (v17 >> 1 > a7)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v8, 1, v7);
  v17 = *(v7 + 3);
  v18 = v17 >> 1;
LABEL_4:
  *(v7 + 2) = v8;
  v7[a7 + 32] = BYTE1(a6);
  v19 = a7 + 2;
  if (v18 < (a7 + 2))
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), a7 + 2, 1, v7);
  }

  *(v7 + 2) = v19;
  v7[v8 + 32] = a6;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v20 = String.UTF8View._foreignCount()();
    if ((v20 & 0x8000000000000000) != 0)
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

    v20 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v20 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(a7) = v20 + 6;
  if ((a7 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + 2);
  a1 = *(v7 + 3);
  v8 = v19 + 1;

  if (v19 >= a1 >> 1)
  {
LABEL_21:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a1 > 1), v8, 1, v7);
  }

  *(v7 + 2) = v8;
  v7[v19 + 32] = a7;
  v22 = v7;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  specialized Array.append<A>(contentsOf:)(a2, a3);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a4, a5, &v22);
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x1B274CD90]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(v8, v14, a4);
}

uint64_t specialized Set._Variant.insert(_:)(_WORD *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 2 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 2 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 2 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 2 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t outlined destroy of HandshakeState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SessionTicket.serialize()()
{
  v1 = v0;
  v23 = *MEMORY[0x1E69E9840];
  v21 = xmmword_1B26C6130;
  v22 = 0;
  Date.timeIntervalSinceReferenceDate.getter();
  v14 = bswap64(v2);
  v3 = MEMORY[0x1E69E6290];
  v4 = MEMORY[0x1E6969DF8];
  v19 = MEMORY[0x1E69E6290];
  v20 = MEMORY[0x1E6969DF8];
  v17 = &v14;
  v18 = &v15;
  __swift_project_boxed_opaque_existential_0(&v17, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v5 = type metadata accessor for SessionTicket(0);
  LODWORD(v14) = bswap32(*(v0 + v5[5]));
  v19 = v3;
  v20 = v4;
  v17 = &v14;
  v18 = &v14 + 4;
  __swift_project_boxed_opaque_existential_0(&v17, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  LODWORD(v14) = bswap32(*(v0 + v5[6]));
  v19 = v3;
  v20 = v4;
  v17 = &v14;
  v18 = &v14 + 4;
  __swift_project_boxed_opaque_existential_0(&v17, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(*(v1 + v5[7]), *(v1 + v5[7] + 8), *(v1 + v5[7] + 16));
  ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(*(v1 + v5[8]), *(v1 + v5[8] + 8), *(v1 + v5[8] + 16));
  v16 = &v21;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  LODWORD(v14) = bswap32(*(v0 + v5[10]));
  v19 = v3;
  v20 = v4;
  v17 = &v14;
  v18 = &v14 + 4;
  __swift_project_boxed_opaque_existential_0(&v17, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  LOWORD(v14) = bswap32(*(v0 + v5[11])) >> 16;
  v19 = v3;
  v20 = v4;
  v17 = &v14;
  v18 = &v14 + 2;
  __swift_project_boxed_opaque_existential_0(&v17, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  LOWORD(v14) = bswap32(*(v0 + v5[12])) >> 16;
  v19 = v3;
  v20 = v4;
  v17 = &v14;
  v18 = &v14 + 2;
  __swift_project_boxed_opaque_existential_0(&v17, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v6 = (v0 + v5[13]);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    LOBYTE(v14) = -1;
    v19 = v3;
    v20 = v4;
    v17 = &v14;
    v18 = &v14 + 1;
    __swift_project_boxed_opaque_existential_0(&v17, v3);

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v17);
    v9._countAndFlagsBits = v8;
    v9._object = v7;
    ByteBuffer.writeApplicationLayerProtocol(_:)(v9);
  }

  else
  {
    LOBYTE(v14) = 0;
    v19 = v3;
    v20 = v4;
    v17 = &v14;
    v18 = &v14 + 1;
    __swift_project_boxed_opaque_existential_0(&v17, v3);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v17);
  }

  ByteBuffer.writePeerCertificateBundle(_:)(v0 + v5[14]);
  v10 = *(&v21 + 1) >> 62;
  if ((*(&v21 + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v21 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v21 >> 32;
  }

  else
  {
    v11 = BYTE14(v21);
  }

  if (v11 < v22)
  {
    __break(1u);
  }

  v12 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v21, *(&v21 + 1));
  return v12;
}

uint64_t specialized ByteBuffer.writeLengthPrefixedBytes<A>(_:)(char *a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v8 = bswap64(v2);
  v5 = MEMORY[0x1E69E6290];
  v6 = MEMORY[0x1E6969DF8];
  v11 = MEMORY[0x1E69E6290];
  v12 = MEMORY[0x1E6969DF8];
  v9 = &v8;
  v10 = &v9;
  __swift_project_boxed_opaque_existential_0(&v9, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v9);
  v11 = v5;
  v12 = v6;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_0(&v9, v5);
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_0(&v9);
}

Swift::Int __swiftcall ByteBuffer.writeApplicationLayerProtocol(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7[5] = *MEMORY[0x1E69E9840];
  if ((a1._object & 0x1000000000000000) != 0)
  {
    if (String.UTF8View._foreignCount()() > 255)
    {
      return 0;
    }

    v4 = String.UTF8View._foreignCount()();
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a1._object & 0x2000000000000000) == 0 && (a1._countAndFlagsBits & 0xFFFFFFFFFF00) != 0)
    {
      return 0;
    }

    if ((a1._object & 0x2000000000000000) != 0)
    {
      goto LABEL_9;
    }

    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= 0xFF)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  v4 = HIBYTE(object) & 0xF;
LABEL_10:
  v6 = v4;
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = MEMORY[0x1E6969DF8];
  v7[0] = &v6;
  v7[1] = v7;
  __swift_project_boxed_opaque_existential_0(v7, MEMORY[0x1E69E6290]);

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  specialized Data.append<A>(contentsOf:)(countAndFlagsBits, object);
  if ((object & 0x1000000000000000) != 0)
  {
    v5 = String.UTF8View._foreignCount()();
  }

  else
  {

    if ((object & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(object) & 0xF;
    }

    else
    {
      v5 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

unint64_t specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    Data._Representation.append(contentsOf:)();
  }

  return v2 >> 60;
}

uint64_t specialized ByteBuffer.writeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v13[3] = MEMORY[0x1E6969080];
  v13[4] = MEMORY[0x1E6969078];
  v13[0] = a1;
  v13[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_0(v13, MEMORY[0x1E6969080]);
  v7 = *v6;
  v8 = v6[1];
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v7, v8, v3);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      return BYTE6(a2);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v10 == 2)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    result = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a1) - a1;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessageParser.ParseResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 129))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 128);
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

NSData_optional __swiftcall STLSClientHandshaker.getPeerQUICTransportParameters()()
{
  v1 = type metadata accessor for HandshakeStateMachine(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v5, 1, v1) || (outlined init with copy of HandshakeStateMachine(v0 + v5, v4, type metadata accessor for HandshakeStateMachine), v7 = HandshakeStateMachine.peerQUICTransportParameters.getter(), v9 = v8, v11 = v10, v12 = outlined destroy of ExportedAuthenticator(v4, type metadata accessor for HandshakeStateMachine), v9 >> 60 == 15))
  {
    v12 = 0;
  }

  else
  {
    v13 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v6 = *(v7 + 24);
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v13)
    {
      v6 = v7 >> 32;
    }

    else
    {
      v6 = BYTE6(v9);
    }

    if (v6 < v11)
    {
      __break(1u);
    }

    else
    {
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v14, v16);
      outlined consume of ByteBuffer?(v7, v9);
      v12 = isa;
    }
  }

  result.is_nil = v6;
  result.value.super.isa = v12;
  return result;
}

uint64_t HandshakeStateMachine.peerQUICTransportParameters.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        v22 = &v6[*(v4 + 36)];
        v19 = *v22;
        outlined copy of Data?(*v22, *(v22 + 1));
        v20 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v21 = v6;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v3, type metadata accessor for HandshakeState.ReadyState);
        v23 = &v3[*(ready + 36)];
        v19 = *v23;
        outlined copy of Data?(*v23, *(v23 + 1));
        v20 = type metadata accessor for HandshakeState.ReadyState;
        v21 = v3;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v18 = &v12[*(v10 + 28)];
      v19 = *v18;
      outlined copy of Data?(*v18, *(v18 + 1));
      v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v21 = v12;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v9, type metadata accessor for HandshakeState.ServerCertificateState);
      v19 = *(v9 + 11);
      outlined copy of Data?(v19, *(v9 + 12));
      v20 = type metadata accessor for HandshakeState.ServerCertificateState;
      v21 = v9;
    }

    outlined destroy of SessionTicket(v21, v20);
  }

  return v19;
}

void nwswifttls_update_quic_transport_parameters(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && *(a1 + 80))
  {
    v5 = v3;
    nw_protocol_metadata_access_handle();
  }
}

BOOL __nwswifttls_update_quic_transport_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 152))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = [v3 _createDispatchData];
      v4 = *(a2 + 152);
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 152) = v3;
  }

  return a2 != 0;
}

uint64_t nwswifttls_update_encryption_secrets(void *a1)
{
  v1 = a1;
  v13 = 0;
  v2 = [v1[37] getNegotiatedCiphersuite];
  v3 = [v1[37] getNegotiatedPAKE];
  if (nwswifttls_get_read_encryption_level(v1, &v13 + 1) && *(v1 + 80) != HIDWORD(v13))
  {
    v5 = [v1[37] getEncryptionSecretWithWrite:0];
    v7 = nwswifttls_dispatch_data_from_nsdata(v5, v6);

    nwswifttls_update_encryption_secret(v1, HIDWORD(v13), v2, v3, 0, v7);
    v8 = HIDWORD(v13);
    *(v1 + 80) = HIDWORD(v13);
    if (v8 == 3)
    {
      nwswifttls_complete_handshake(v1, 1);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (nwswifttls_get_write_encryption_level(v1, &v13) && *(v1 + 81) != v13)
  {
    v4 = 1;
    v9 = [v1[37] getEncryptionSecretWithWrite:1];
    v11 = nwswifttls_dispatch_data_from_nsdata(v9, v10);

    nwswifttls_update_encryption_secret(v1, v13, v2, v3, 1, v11);
    *(v1 + 81) = v13;
  }

  return v4;
}

uint64_t @objc STLSClientHandshaker.getNegotiatedCiphersuite()(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(&a1[v8], v7, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a1;
    v12 = a3();

    outlined destroy of ExportedAuthenticator(v7, type metadata accessor for HandshakeStateMachine);
    if ((v12 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t HandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready - 8);
  v82 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v74 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v70 - v8;
  v76 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PSK(0);
  v13 = MEMORY[0x1EEE9AC00](v73);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  v18 = type metadata accessor for GeneralEPSK(0);
  v71 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70 - v25;
  v84 = type metadata accessor for SessionTicket(0);
  v75 = *(v84 - 8);
  v27 = MEMORY[0x1EEE9AC00](v84);
  v72 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v70 - v29;
  v31 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v87 + *(v37 + 24), v36, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v41 = v86;
    if (!EnumCaseMultiPayload)
    {
      v48 = type metadata accessor for HandshakeState;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v53 = v85;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v36, v85, type metadata accessor for HandshakeState.ServerHelloState);
      v54 = v53 + *(v41 + 28);
      v50 = *v54;
      v52 = *(v54 + 2);
      v55 = type metadata accessor for HandshakeState.ServerHelloState;
      goto LABEL_24;
    }

    v42 = v36;
    v36 = v33;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v42, v33, type metadata accessor for HandshakeState.ClientHelloState);
    outlined init with copy of Any?(&v33[*(v31 + 40)], v26, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v43 = v84;
    if ((*(v75 + 48))(v26, 1, v84) != 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v26, v30, type metadata accessor for SessionTicket);
      v50 = *&v30[*(v43 + 44)];
      outlined destroy of SessionTicket(v30, type metadata accessor for SessionTicket);
      v56 = type metadata accessor for HandshakeState.ClientHelloState;
      v57 = v36;
      goto LABEL_22;
    }

    outlined destroy of P256.Signing.PrivateKey?(v26, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v44 = *&v36[*(v31 + 44)];
    if (!*(v44 + 16) || (v36[64] & 1) != 0)
    {
LABEL_13:
      v48 = type metadata accessor for HandshakeState.ClientHelloState;
LABEL_17:
      outlined destroy of SessionTicket(v36, v48);
      goto LABEL_18;
    }

    v45 = *(v36 + 14);
    if (*(v45 + 16))
    {
      LODWORD(v87) = *(v45 + 32);
      v46 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      outlined init with copy of SessionTicket(v44 + v46, v23, type metadata accessor for GeneralEPSK);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v17, type metadata accessor for PSK);
      v47 = swift_getEnumCaseMultiPayload();
      outlined destroy of SessionTicket(v17, type metadata accessor for PSK);
      if (v47 == 1)
      {
        goto LABEL_13;
      }

      if (v87 != 4866)
      {
        v88 = xmmword_1B26C76D0;
        v89 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        if (one-time initialization token for logger == -1)
        {
LABEL_39:
          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, logger);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_1B25F5000, v66, v67, "first ciphersuite offered does not match KDF of first offered PSK", v68, 2u);
            MEMORY[0x1B274ECF0](v68, -1, -1);
          }

          v48 = type metadata accessor for HandshakeState.ClientHelloState;
          goto LABEL_17;
        }

LABEL_46:
        swift_once();
        goto LABEL_39;
      }

      if (*(v44 + 16))
      {
        outlined init with copy of SessionTicket(v44 + v46, v21, type metadata accessor for GeneralEPSK);
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v21, v15, type metadata accessor for PSK);
        v63 = swift_getEnumCaseMultiPayload();
        v64 = v70;
        if (v63 == 1)
        {
          outlined destroy of SessionTicket(v15, type metadata accessor for PSK);
        }

        else
        {
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v70, type metadata accessor for ImportedPSK);
          v69 = *(v64 + 50);
          outlined destroy of SessionTicket(v64, type metadata accessor for ImportedPSK);
          if (v69 == 2)
          {
            outlined destroy of SessionTicket(v36, type metadata accessor for HandshakeState.ClientHelloState);
            v52 = 0;
            v50 = 4866;
            return v50 | (v52 << 16);
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v39 = v77;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v36, v77, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v40 = v83;
      outlined init with copy of Any?(v39 + *(v76 + 20), v83, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
      outlined destroy of SessionTicket(v39, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      if ((*(v79 + 48))(v40, 1, v81) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v40, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_18:
        v50 = 0;
        v52 = 1;
        return v50 | (v52 << 16);
      }

      v59 = v74;
      outlined init with copy of SessionTicket(v40, v74, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
      v60 = swift_getEnumCaseMultiPayload();
      if (v60)
      {
        if (v60 == 1)
        {
          v50 = *v59;
        }

        else
        {
          v61 = v59;
          v62 = v72;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v61, v72, type metadata accessor for SessionTicket);
          v50 = *(v62 + *(v84 + 44));
          outlined destroy of SessionTicket(v62, type metadata accessor for SessionTicket);
        }
      }

      else
      {
        v50 = *v59;
      }

      v56 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData;
      v57 = v40;
LABEL_22:
      outlined destroy of SessionTicket(v57, v56);
      v52 = 0;
      return v50 | (v52 << 16);
    }

    v49 = v78;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v36, v78, type metadata accessor for HandshakeState.ServerCertificateState);
    v50 = *(v49 + 66);
    v51 = type metadata accessor for HandshakeState.ServerCertificateState;
LABEL_21:
    v56 = v51;
    v57 = v49;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v49 = v80;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v36, v80, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v50 = *(v49 + 66);
    v51 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    goto LABEL_21;
  }

  v53 = v82;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v36, v82, type metadata accessor for HandshakeState.ReadyState);
  v50 = *(v53 + 66);
  v52 = *(v53 + 68);
  v55 = type metadata accessor for HandshakeState.ReadyState;
LABEL_24:
  outlined destroy of SessionTicket(v53, v55);
  if (v52)
  {
    v50 = 0;
  }

  return v50 | (v52 << 16);
}

uint64_t HandshakeStateMachine.negotiatedPAKE.getter()
{
  v28[0] = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](v28[0]);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v28 - v10);
  v12 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v18 + 24), v17, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v17, v14, type metadata accessor for HandshakeState.ServerHelloState);
      outlined init with copy of Any?(&v14[*(v12 + 48)], v11, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      outlined destroy of SessionTicket(v14, type metadata accessor for HandshakeState.ServerHelloState);
      v22 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
      {
        v21 = v11;
        goto LABEL_9;
      }

      v23 = *v11;
      v27 = v11;
LABEL_19:
      outlined destroy of SessionTicket(v27, type metadata accessor for PAKEClientState);
      v24 = 0;
      return v23 | (v24 << 16);
    }

LABEL_11:
    outlined destroy of SessionTicket(v17, type metadata accessor for HandshakeState);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v17, v5, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      outlined init with copy of Any?(&v5[*(v3 + 48)], v9, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      outlined destroy of SessionTicket(v5, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v20 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
      {
        v21 = v9;
LABEL_9:
        outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
LABEL_12:
        v23 = 0;
        v24 = 1;
        return v23 | (v24 << 16);
      }

      v23 = *v9;
      v27 = v9;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v17, v2, type metadata accessor for HandshakeState.ReadyState);
  v26 = &v2[*(v28[0] + 48)];
  v23 = *v26;
  v24 = v26[2];
  outlined destroy of SessionTicket(v2, type metadata accessor for HandshakeState.ReadyState);
  if (v24)
  {
    v23 = 0;
  }

  return v23 | (v24 << 16);
}

void nwswifttls_update_session_state(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && v1[10] && v1[26] && v1[27])
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __nwswifttls_update_session_state_block_invoke;
    v13 = &unk_1E7B2E420;
    v14 = v1;
    nw_protocol_metadata_access_handle();
    v3 = _Block_copy(v14[26]);
    v4 = v14[10];
    v5 = v14[27];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nwswifttls_update_session_state_block_invoke_2;
    block[3] = &unk_1E7B2E448;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

BOOL __nwswifttls_update_session_state_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 16))
  {
    *(a2 + 16) = *(a1 + 32);
    *(a2 + 24) = nwswifttls_copy_serialized_session;
  }

  return a2 != 0;
}

uint64_t HandshakeStateMachine.earlyDataAccepted.getter()
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
    return 2;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v6, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v18 = v6[*(v4 + 40)];
        v19 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v20 = v6;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v3, type metadata accessor for HandshakeState.ReadyState);
        v18 = v3[*(ready + 40)];
        v19 = type metadata accessor for HandshakeState.ReadyState;
        v20 = v3;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v18 = v12[*(v10 + 32)];
      v19 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v20 = v12;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v15, v9, type metadata accessor for HandshakeState.ServerCertificateState);
      v18 = v9[112];
      v19 = type metadata accessor for HandshakeState.ServerCertificateState;
      v20 = v9;
    }

    outlined destroy of SessionTicket(v20, v19);
  }

  return v18;
}

uint64_t nwswifttls_update_early_data_accepted(uint64_t result, char a2)
{
  if (result)
  {
    result = *(result + 80);
    if (result)
    {
      return nw_protocol_metadata_access_handle();
    }
  }

  return result;
}

BOOL __nwswifttls_update_early_data_accepted_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 336) = *(a2 + 336) & 0xFFF7 | (8 * (*(a1 + 32) & 1));
  }

  return a2 != 0;
}

uint64_t ByteBuffer.writeKeyShareEntry(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = bswap32(a1) >> 16;
  v7 = MEMORY[0x1E69E6290];
  v8 = MEMORY[0x1E6969DF8];
  v27 = MEMORY[0x1E69E6290];
  v28 = MEMORY[0x1E6969DF8];
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_0(&v25, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(a2 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = BYTE6(a3);
    if (v9)
    {
      v10 = a2 >> 32;
    }
  }

  v11 = __OFSUB__(v10, a4);
  v12 = v10 - a4;
  if (v11)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 >> 16)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = bswap32(v12) >> 16;
  v27 = v7;
  v28 = v8;
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_0(&v25, v7);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }
  }

  else if (v9)
  {
    v13 = a2;
    v14 = a2 >> 32;
  }

  else
  {
    v13 = 0;
    v14 = BYTE6(a3);
  }

  if (v14 < a4 || v14 < v13)
  {
    goto LABEL_35;
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.append(_:)();
  v18 = v17;
  v19 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v19)
    {
      outlined consume of Data._Representation(v15, v17);
      v20 = BYTE6(v17);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v19 != 2)
  {
    outlined consume of Data._Representation(v15, v17);
    v20 = 0;
    goto LABEL_30;
  }

  v22 = *(v15 + 16);
  v21 = *(v15 + 24);
  outlined consume of Data._Representation(v15, v18);
  v20 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v15, v18);
    LODWORD(v20) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      goto LABEL_37;
    }

    v20 = v20;
  }

LABEL_30:
  result = v20 + 4;
  if (__OFADD__(v20, 4))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t ByteBuffer.writeServerCertificateType(_:)(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v17 = a1;
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    return 1;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
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
      v8 = BYTE6(v6);
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

    v17 = 0;
    v11 = MEMORY[0x1E69E6290];
    v12 = MEMORY[0x1E6969DF8];
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = a1 + 32;
      do
      {
        v16 = *(v15 + v14++);
        v17 = v16;
        v20 = v11;
        v21 = v12;
        v18 = &v17;
        v19 = &v18;
        __swift_project_boxed_opaque_existential_0(&v18, v11);
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v18);
      }

      while (v13 != v14);
      if (v13 > 0xFF)
      {
        __break(1u);
      }
    }

    _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v13, v10);
    return v13 + 1;
  }
}

unint64_t ByteBuffer.writePreSharedKeyKexModes(_:)(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
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

  v16 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v19 = MEMORY[0x1E69E6290];
  v20 = MEMORY[0x1E6969DF8];
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_0(&v17, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 32;
    do
    {
      v14 = *(v13 + v12++);
      v16 = v14;
      v19 = v9;
      v20 = v10;
      v17 = &v16;
      v18 = &v17;
      __swift_project_boxed_opaque_existential_0(&v17, v9);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v17);
    }

    while (v11 != v12);
    if (v11 > 0xFF)
    {
      __break(1u);
    }
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v11, v8);
  return v11 + 1;
}

uint64_t sub_1B260E4E4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t ByteBuffer.writeServerName(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v9);
  }

  v29 = 0;
  v12 = MEMORY[0x1E69E6290];
  v13 = MEMORY[0x1E6969DF8];
  v32 = MEMORY[0x1E69E6290];
  v33 = MEMORY[0x1E6969DF8];
  v30 = &v29;
  v31 = &v30;
  __swift_project_boxed_opaque_existential_0(&v30, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  LOBYTE(v29) = 0;
  v32 = v12;
  v33 = v13;
  v30 = &v29;
  v31 = (&v29 + 1);
  __swift_project_boxed_opaque_existential_0(&v30, v12);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v14 = *v3;
  v15 = v3[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v14 >> 32;
  }

  else
  {
    v17 = BYTE6(v15);
  }

  v29 = 0;
  v32 = v12;
  v33 = v13;
  v30 = &v29;
  v31 = &v30;
  __swift_project_boxed_opaque_existential_0(&v30, v12);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + 16);
      v20 = *(a1 + 24);
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = a1;
    v20 = a1 >> 32;
  }

  else
  {
    v19 = 0;
    v20 = BYTE6(a2);
  }

  if (v20 < a3 || v20 < v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  Data.append(_:)();
  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v25 != 2)
    {
      outlined consume of Data._Representation(v21, v23);
      _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(0, v17);
      v21 = 0;
      v28 = 3;
      goto LABEL_40;
    }

    v27 = *(v21 + 16);
    v26 = *(v21 + 24);
    outlined consume of Data._Representation(v21, v24);
    v21 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_33:
    outlined consume of Data._Representation(v21, v24);
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_46;
    }

    v21 = HIDWORD(v21) - v21;
LABEL_35:
    if ((v21 & 0x8000000000000000) == 0)
    {
      if (!(v21 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v21, v17);
        if (v21 <= 0xFFFC)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v25)
  {
    goto LABEL_33;
  }

  outlined consume of Data._Representation(v21, v23);
  v21 = BYTE6(v23);
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(BYTE6(v23), v17);
LABEL_38:
  v28 = v21 + 3;
LABEL_40:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v28, v11);
  return v21 + 5;
}

unint64_t ByteBuffer.writeALPN(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = xmmword_1B26C6130;
  v35 = 0;
  v3 = MEMORY[0x1E69E6290];
  if (a3)
  {
    ByteBuffer.writeApplicationLayerProtocol(_:)(*&a1);
    goto LABEL_20;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if ((*v5 & 0x1000000000000000) != 0)
      {
        if (String.UTF8View._foreignCount()() <= 255)
        {
          v8 = String.UTF8View._foreignCount()();
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            break;
          }

          goto LABEL_12;
        }
      }

      else if ((v6 & 0x2000000000000000) != 0 || (v7 & 0xFFFFFFFFFF00) == 0)
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v8 = HIBYTE(v6) & 0xF;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFFFFFFLL;
LABEL_12:
          if (v8 > 0xFF)
          {
            __break(1u);
            goto LABEL_53;
          }
        }

        LOBYTE(v29) = v8;
        v32 = v3;
        v33 = MEMORY[0x1E6969DF8];
        v30 = &v29;
        v31 = (&v29 + 1);
        __swift_project_boxed_opaque_existential_0(&v30, v3);

        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v30);
        specialized Data.append<A>(contentsOf:)(v7, v6);
        if ((v6 & 0x1000000000000000) != 0)
        {
          String.UTF8View._foreignCount()();
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

LABEL_20:
  v9 = *v28;
  v10 = v28[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
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

  v29 = 0;
  v32 = v3;
  v33 = MEMORY[0x1E6969DF8];
  v30 = &v29;
  v31 = &v30;
  __swift_project_boxed_opaque_existential_0(&v30, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v16 = *(&v34 + 1);
  v15 = v34;
  v17 = *(&v34 + 1) >> 62;
  if ((*(&v34 + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    if (v17)
    {
      v18 = v34 >> 32;
    }

    else
    {
      v18 = BYTE14(v34);
    }

    if (v17)
    {
      v19 = v34;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v18 < 0 || v18 < v19)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  v20 = Data._Representation.subscript.getter();
  v22 = v21;
  Data.append(_:)();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_51;
    }

    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    outlined consume of Data._Representation(v20, v23);
    v20 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
LABEL_48:
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (!(v20 >> 16))
        {
          goto LABEL_52;
        }

        __break(1u);
LABEL_51:
        outlined consume of Data._Representation(v20, v23);
        v20 = 0;
        goto LABEL_52;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_46:
    outlined consume of Data._Representation(v20, v23);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_55;
    }

    v20 = HIDWORD(v20) - v20;
    goto LABEL_48;
  }

  if (v24)
  {
    goto LABEL_46;
  }

  outlined consume of Data._Representation(v20, v22);
  v20 = BYTE6(v22);
LABEL_52:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v20, v14);
  outlined consume of Data._Representation(v15, v16);
  return v20 + 2;
}

uint64_t sub_1B260EDD8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void *ClientHello.serverCertificateTypes.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &outlined read-only object #0 of ClientHello.serverCertificateTypes.getter;
  }

  for (i = (v1 + 112); (*i & 0xF0) != 0x70; i += 88)
  {
LABEL_3:
    if (!--v2)
    {
      return &outlined read-only object #0 of ClientHello.serverCertificateTypes.getter;
    }
  }

  v4 = *(i - 10);
  if (*(i - 18))
  {
    outlined copy of Extension.ServerCertificateType(v4, 1);
    goto LABEL_3;
  }

  v6 = *(i - 10);
  outlined copy of Extension.ServerCertificateType(v4, 0);
  return v6;
}

uint64_t specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  outlined init with copy of Any?(v2, &v16 - v8, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v9, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      v11 = *(v4 + 44);
      v12 = type metadata accessor for SymmetricKey();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, &v6[v11], v12);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  }

  v15 = type metadata accessor for SymmetricKey();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t nwswifttls_add_message(void *a1, unsigned int a2, const void *a3, size_t a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (v7)
  {
    if (a3)
    {
      if (a2 <= 3)
      {
        v9 = *(v7 + a2 + 11);
        if (v9)
        {
          v10 = *(v9 + 24);
          if (v10 && *(v10 + 88) && (v13[0] = 0, v13[1] = 0, nw_frame_array_init(), !HIDWORD(a4)) && (*(*(v9 + 24) + 88))(v9, v8 + 8, a4, a4, 1, v13) == 1)
          {
            v11 = nw_frame_array_first();
            if (v11)
            {
              nw_frame_unclaimed_bytes();
              v9 = a4 == 0;
              if (!a4)
              {
                nw_frame_claim();
                nw_frame_collapse();
                nw_frame_unclaim();
                nw_frame_array_remove();
                nw_frame_array_append();
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t nwswifttls_send_messages(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2 <= 3)
    {
      v5 = *&v3[8 * a2 + 88];
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6 && *(v6 + 96))
        {
          v7 = &v3[16 * a2];
          if ((nw_frame_array_is_empty() & 1) == 0)
          {
            (*(*(v5 + 24) + 96))(v5, v7 + 120);
          }

          v5 = 1;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

Swift::Int32 __swiftcall STLSClientHandshaker.getErrorCode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
  if (v1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      if (v4 <= 6)
      {
        if (__PAIR128__((v4 >= 3) + v5 - 1, v4 - 3) < 2)
        {

          LODWORD(v1) = -9856;
          return v1;
        }

        if (v4 ^ 6 | v5)
        {
          goto LABEL_11;
        }

LABEL_12:

        LODWORD(v1) = -9858;
        return v1;
      }

      if (!(v4 ^ 7 | v5))
      {

        LODWORD(v1) = -9830;
        return v1;
      }

      if (!(v4 ^ 0xC | v5))
      {

        LODWORD(v1) = -9808;
        return v1;
      }
    }

LABEL_11:
    outlined consume of TLSError(v4, v5, v6);
    goto LABEL_12;
  }

  return v1;
}

NSData_optional __swiftcall STLSClientHandshaker.getEncryptionSecret(write:)(Swift::Bool write)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for EncryptionLevel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  if (write)
  {
    v17 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  }

  else
  {
    v17 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  }

  v18 = v1 + v17;
  swift_beginAccess();
  outlined init with copy of Any?(v18, v9, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v20 = 0;
  }

  else
  {
    outlined init with take of HandshakeStateMachine(v9, v16, type metadata accessor for EncryptionLevel);
    outlined init with copy of HandshakeStateMachine(v16, v14, type metadata accessor for EncryptionLevel);
    (*(v4 + 32))(v6, v14, v3);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v4 + 8))(v6, v3);
    v21 = v24[1];
    v22 = v24[2];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v21, v22);
    outlined destroy of ExportedAuthenticator(v16, type metadata accessor for EncryptionLevel);
    v20 = isa;
  }

  result.value.super.isa = v20;
  result.is_nil = v19;
  return result;
}

uint64_t closure #1 in STLSServerHandshaker.getEncryptionSecret(write:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *nwswifttls_dispatch_data_from_nsdata(void *result, const char *a2)
{
  if (result)
  {
    return [result _createDispatchData];
  }

  return result;
}

void nwswifttls_update_encryption_secret(void *a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, void *a6)
{
  v7 = a5;
  v8 = a1;
  v9 = a6;
  v10 = v9;
  if (v8 && v9)
  {
    v14 = 0;
    if ((v8[38] & 1) == 0 && *(v8 + 282) == 1 && nwswifttls_get_encryption_key_label(v8, v7, &v14))
    {
      v11 = v14;
      v12 = [v8[37] getClientRandom];
      ssl_log_secret(v11, v12, v10);
    }

    if (v8[10] && v8[23])
    {
      v13 = v8;
      nw_protocol_metadata_access_handle();
      (*(v13[23] + 2))();
    }
  }
}

uint64_t @objc STLSClientHandshaker.getNegotiatedEPSK()(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(&a1[v8], v7, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a1;
    v12 = a3();

    outlined destroy of ExportedAuthenticator(v7, type metadata accessor for HandshakeStateMachine);
    return v12 & 1;
  }

  return result;
}

BOOL __nwswifttls_update_encryption_secret_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 34) = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 296) getNegotiatedGroup];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = *(a2 + 176);
      if (v6)
      {
        free(v6);
        *(a2 + 176) = 0;
      }

      *(a2 + 176) = strdup(v5);
    }

    *(a2 + 320) = *(a1 + 42);
    if ([*(*(a1 + 32) + 296) getPAKEOffered])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFB | v7;
    if ([*(*(a1 + 32) + 296) getNegotiatedEPSK])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFD | v8;
    *(a2 + 376) = *(a2 + 376) & 0xFE | [*(*(a1 + 32) + 296) getEPSKOffered];
  }

  return a2 != 0;
}

uint64_t HandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v13 + 24), v12, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v9, type metadata accessor for HandshakeState.ServerHelloState);
      v15 = v9[*(v7 + 36)];
      v16 = type metadata accessor for HandshakeState.ServerHelloState;
      v17 = v9;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v3, type metadata accessor for HandshakeState.ReadyState);
      v15 = v3[*(ready + 52)];
      v16 = type metadata accessor for HandshakeState.ReadyState;
      v17 = v3;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v6, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v15 = v6[*(v4 + 40)];
    v16 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    v17 = v6;
LABEL_10:
    outlined destroy of SessionTicket(v17, v16);
    return v15;
  }

  outlined destroy of SessionTicket(v12, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v27 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v26);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v29 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v2, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v19 = v2[*(v26 + 48)];
        v20 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v21 = v2;
      }

      else
      {
        v22 = v27;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v27, type metadata accessor for HandshakeState.ReadyState);
        v19 = *(v22 + *(ready + 56));
        v20 = type metadata accessor for HandshakeState.ReadyState;
        v21 = v22;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v19 = v7[*(v5 + 52)];
      v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v21 = v7;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v4, type metadata accessor for HandshakeState.ServerCertificateState);
      v19 = v4[*(v25 + 48)];
      v20 = type metadata accessor for HandshakeState.ServerCertificateState;
      v21 = v4;
    }

LABEL_14:
    outlined destroy of SessionTicket(v21, v20);
    return v19;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v13, type metadata accessor for HandshakeState.ClientHelloState);
      v19 = *(*&v13[*(v11 + 44)] + 16) != 0;
      v20 = type metadata accessor for HandshakeState.ClientHelloState;
      v21 = v13;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v10, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v10[*(v8 + 52)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v10;
    }

    goto LABEL_14;
  }

  outlined destroy of SessionTicket(v16, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t nwswifttls_copy_info(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (v4 && (v5 = *(a1 + 32)) != 0 && (v6 = *(v5 + 24)) != 0 && (v7 = *(v6 + 224)) != 0)
  {
    if (a2 == 255)
    {
      v8 = v7();
      if (!v8)
      {
        v8 = MEMORY[0x1B274DE70]();
      }

      nw_array_append();
    }

    else
    {
      v8 = v7();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void nwswifttls_deallocate_options(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    free(*(a2 + 8));
    free(*(a2 + 16));
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;

    v4 = *(a2 + 232);
    *(a2 + 232) = 0;

    v5 = *(a2 + 48);
    *(a2 + 48) = 0;

    v6 = *(a2 + 56);
    *(a2 + 56) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 120);
    *(a2 + 120) = 0;

    v12 = *(a2 + 128);
    *(a2 + 128) = 0;

    v13 = *(a2 + 176);
    *(a2 + 176) = 0;

    v14 = *(a2 + 184);
    *(a2 + 184) = 0;

    v15 = *(a2 + 72);
    *(a2 + 72) = 0;

    v16 = *(a2 + 192);
    *(a2 + 192) = 0;

    v17 = *(a2 + 136);
    *(a2 + 136) = 0;

    v18 = *(a2 + 144);
    *(a2 + 144) = 0;

    v19 = *(a2 + 152);
    *(a2 + 152) = 0;

    v20 = *(a2 + 160);
    *(a2 + 160) = 0;

    v21 = *(a2 + 168);
    *(a2 + 168) = 0;

    v22 = *(a2 + 176);
    *(a2 + 176) = 0;

    v23 = *(a2 + 184);
    *(a2 + 184) = 0;

    v24 = *(a2 + 336);
    *(a2 + 336) = 0;

    v25 = *(a2 + 264);
    *(a2 + 264) = 0;

    v26 = *(a2 + 256);
    *(a2 + 256) = 0;

    v27 = *(a2 + 80);
    *(a2 + 80) = 0;

    free(*(a2 + 344));
    *(a2 + 360) = 0;
    v28 = *(a2 + 280);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 280) = 0;
    }

    v29 = *(a2 + 384);
    if (v29)
    {
      CFRelease(v29);
    }

    *(a2 + 384) = 0;
    v30 = *(a2 + 392);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = *(a2 + 400);
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  cc_clear();

  free(a2);
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV21handleReadServerHello33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for EncryptionLevel(0);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v45 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v45 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v50 = __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v9;
    v20 = a1;
    v21 = a2;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B25F5000, v17, v18, "client expecting server hello", v22, 2u);
    v23 = v22;
    a2 = v21;
    a1 = v20;
    v9 = v19;
    v4 = v2;
    MEMORY[0x1B274ECF0](v23, -1, -1);
  }

  if (v76[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v76, v76, v62, &v64);
  if (v4)
  {
    v28 = v62[0];
    v29 = v62[1];
    v30 = v63;
LABEL_11:
    *a1 = v28;
    *(a1 + 8) = v29;
    *(a1 + 16) = v30;
    return;
  }

  v45 = a2;
  v58[6] = v70;
  v58[7] = v71;
  v58[2] = v66;
  v58[3] = v67;
  v58[4] = v68;
  v58[5] = v69;
  v58[0] = v64;
  v58[1] = v65;
  v61[5] = v70;
  v61[6] = v71;
  v61[1] = v66;
  v61[2] = v67;
  v61[3] = v68;
  v61[4] = v69;
  v59 = v72;
  LOBYTE(v61[7]) = v72;
  v60 = v64;
  v61[0] = v65;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v60) == 1)
  {
    a2 = v45;
LABEL_6:
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B25F5000, v24, v25, "incomplete message, waiting for more data", v26, 2u);
      MEMORY[0x1B274ECF0](v26, -1, -1);
    }

    v27 = type metadata accessor for PartialHandshakeResult(0);
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    return;
  }

  v73[4] = *(&v61[4] + 8);
  v74[0] = *(&v61[5] + 8);
  *(v74 + 9) = *(&v61[6] + 1);
  v73[0] = *(v61 + 8);
  v73[1] = *(&v61[1] + 8);
  v73[2] = *(&v61[2] + 8);
  v73[3] = *(&v61[3] + 8);
  if (LOBYTE(v61[7]) != 1)
  {
    HandshakeStateMachine.logUnexpectedMessage(message:)(v73);
    v52 = xmmword_1B26C6430;
    v30 = 2;
    LOBYTE(v53) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v58, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v29 = 0;
    v28 = 4;
    goto LABEL_11;
  }

  v75[2] = *(&v61[2] + 8);
  v75[3] = *(&v61[3] + 8);
  v75[4] = *(&v61[4] + 8);
  v75[5] = *(&v61[5] + 8);
  v75[0] = *(v61 + 8);
  v75[1] = *(&v61[1] + 8);
  v56 = *(&v61[4] + 8);
  v57[0] = *(&v61[5] + 8);
  *(v57 + 9) = *(&v61[6] + 1);
  v52 = *(v61 + 8);
  v53 = *(&v61[1] + 8);
  v54 = *(&v61[2] + 8);
  v55 = *(&v61[3] + 8);
  outlined init with copy of ServerHello(&v52, &v51);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1B25F5000, v31, v32, "client got server hello", v33, 2u);
    MEMORY[0x1B274ECF0](v33, -1, -1);
  }

  v34 = (v76 + *(type metadata accessor for HandshakeStateMachine(0) + 28));
  v35 = v34[3];
  v36 = v34[4];
  v37 = __swift_project_boxed_opaque_existential_0(v34, v35);
  _s15SwiftTLSLibrary14HandshakeStateO19receivedServerHello_5bytes5clockAA15EncryptionLevelO10newReadKey_AH0l5WriteN0tAA0fG0V_AA10ByteBufferVxtAA8TLSErrorOYKAA0A8TLSClockRzlF(v12, v9, v75, v60, *(&v60 + 1), *&v61[0], v37, v35, v36, v62);
  outlined destroy of P256.Signing.PrivateKey?(v58, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of HandshakeMessage(v61 + 8);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v12, v49, type metadata accessor for EncryptionLevel);
  v38 = v46;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v9, v46, type metadata accessor for EncryptionLevel);
  v39 = type metadata accessor for PartialHandshakeResult(0);
  v40 = v39[5];
  v41 = v45;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v38, v45 + v40, type metadata accessor for EncryptionLevel);
  v42 = v48;
  v43 = *(v47 + 56);
  v43(v41 + v40, 0, 1, v48);
  v44 = v39[6];
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v49, v41 + v44, type metadata accessor for EncryptionLevel);
  v43(v41 + v44, 0, 1, v42);
  *v41 = xmmword_1B26C5EF0;
  *(v41 + 16) = 0;
  *(v41 + v39[7]) = xmmword_1B26C5EF0;
  (*(*(v39 - 1) + 56))(v41, 0, 1, v39);
}

void _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v9 = v8;
  ByteBuffer.readRandom()(v65);
  if (v66)
  {
    goto LABEL_6;
  }

  v10 = v65[0];
  v67 = v65[1];
  v53 = v65[3];
  v54 = v65[2];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v14 & 0x100) != 0 || (v15 = ByteBuffer.readSlice(length:)(v14), v16 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_6:
    v60 = 0uLL;
    v18 = 2;
    LOBYTE(v61) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v19 = 0;
    v20 = 0;
LABEL_7:
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v18;
    return;
  }

  *&v63 = v15;
  *(&v63 + 1) = v16;
  v64 = v17;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v63, &v57, &v60);
  if (v3)
  {
    v19 = v57;
    v20 = v58;
    v18 = v59;
    v22 = *(&v63 + 1);
    v21 = v63;
LABEL_29:
    outlined consume of Data._Representation(v21, v22);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_30:
    *&v60 = v19;
    *(&v60 + 1) = v20;
    LOBYTE(v61) = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_7;
  }

  LOBYTE(v23) = v63;
  v24 = *(&v63 + 1) >> 62;
  if ((*(&v63 + 1) >> 62) > 1)
  {
    if (v24 == 2)
    {
      v25 = *(v63 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else if (v24)
  {
    v25 = v63 >> 32;
  }

  else
  {
    v25 = BYTE14(v63);
  }

  if (__OFSUB__(v25, v64))
  {
    __break(1u);
LABEL_46:
    v45 = v23;
    swift_once();
    LOBYTE(v23) = v45;
    goto LABEL_23;
  }

  if (v25 != v64)
  {
    v55 = xmmword_1B26C66C0;
    v18 = 2;
    v56 = 2;
    v36 = *(&v63 + 1);
    v35 = v63;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v22 = v36;
    v21 = v35;
    v20 = 0;
    v19 = 1;
    goto LABEL_29;
  }

  v52 = 0;
  outlined consume of Data._Representation(v63, *(&v63 + 1));
  outlined consume of Data._Representation(v12, v11);
  v50 = v61;
  v51 = v60;
  v12 = v62;
  v26 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v26 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v5 = v26;
  v23 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v23 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for helloRetryRequest != -1)
  {
    goto LABEL_46;
  }

LABEL_23:
  v27 = 0;
  v48 = v23;
  v47 = v12;
  if (v10 == static Random.helloRetryRequest && __PAIR128__(v54, v67) == xmmword_1ED4D5F88)
  {
    v27 = v53 == qword_1ED4D5F98;
  }

  v49 = v27;
  v28 = *a1;
  v29 = a1[1];
  v30 = a1[2];
  outlined copy of Data._Representation(*a1, v29);
  v31 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v31 & 0x10000) != 0 || (v46 = v28, v32 = ByteBuffer.readSlice(length:)(v31), v33 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v28;
    a1[1] = v29;
    a1[2] = v30;
    goto LABEL_6;
  }

  *&v60 = v32;
  *(&v60 + 1) = v33;
  *&v61 = v34;
  _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfcSayAA9ExtensionOGAFzAHYKXEfU_(&v60, v49, &v57, &v55);
  if (v52)
  {
    v19 = v57;
    v20 = v58;
    v18 = v59;
    v38 = *(&v60 + 1);
    v37 = v60;
LABEL_44:
    outlined consume of Data._Representation(v37, v38);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v46;
    a1[1] = v29;
    a1[2] = v30;
    goto LABEL_30;
  }

  v39 = *(&v60 + 1) >> 62;
  if ((*(&v60 + 1) >> 62) > 1)
  {
    if (v39 == 2)
    {
      v40 = *(v60 + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else if (v39)
  {
    v40 = v60 >> 32;
  }

  else
  {
    v40 = BYTE14(v60);
  }

  if (__OFSUB__(v40, v61))
  {
    __break(1u);
  }

  else
  {
    if (v40 != v61)
    {
      v63 = xmmword_1B26C66C0;
      v18 = 2;
      LOBYTE(v64) = 2;
      v44 = *(&v60 + 1);
      v43 = v60;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      v38 = v44;
      v37 = v43;
      v20 = 0;
      v19 = 1;
      goto LABEL_44;
    }

    outlined consume of Data._Representation(v60, *(&v60 + 1));
    outlined consume of Data._Representation(v28, v29);
    *a3 = HIBYTE(v9);
    *(a3 + 1) = v9;
    v41 = v67;
    *(a3 + 8) = v10;
    *(a3 + 16) = v41;
    v42 = v55;
    *(a3 + 24) = v54;
    *(a3 + 32) = v53;
    *(a3 + 56) = v50;
    *(a3 + 40) = v51;
    *(a3 + 72) = v47;
    *(a3 + 80) = v5;
    *(a3 + 82) = v48;
    *(a3 + 88) = v42;
  }
}

void ByteBuffer.readRandom()(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v2 + 32;
  if (__OFADD__(v2, 32))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v3)
      {
        goto LABEL_7;
      }
    }

    else if (v3 <= 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_22:
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v3 >= v2)
  {
    v9 = Data._Representation.subscript.getter();
    v10 = v9;
    v12 = v11;
    v1[2] = v3;
    v13 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v13 != 2)
      {
LABEL_21:
        v20 = Data._Representation.subscript.getter();
        v22 = v21;
        v14 = _s15SwiftTLSLibrary6RandomVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5Tf4g_n(v20, v21);
        v15 = v23;
        v16 = v24;
        v17 = v25;
        outlined consume of Data._Representation(v20, v22);
        outlined consume of Data._Representation(v10, v12);
        v18 = 0;
        goto LABEL_22;
      }

      v9 = *(v9 + 16);
      v19 = *(v10 + 24);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v9 = v9;
      v19 = v10 >> 32;
    }

    if (v19 < v9)
    {
      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

uint64_t specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  result = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v17 = a1;
  v18 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  *&v15[-32] = &v17;
  *&v15[-24] = a3;
  *&v15[-16] = a4;
  *&v15[-8] = a3;
  result = specialized Data.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:), &v15[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  outlined copy of Data._Representation(v17, v18);
LABEL_8:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
  result = dispatch thunk of IteratorProtocol.next()();
  v13 = 0;
  if (v16)
  {
LABEL_12:
    *&v11[*(v8 + 36)] = v13;
    return outlined destroy of EnumeratedSequence<Data>.Iterator(v11);
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      *(a3 + v14) = v15[6];
      result = dispatch thunk of IteratorProtocol.next()();
      ++v14;
      if (v16 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary6RandomVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5Tf4g_n(uint64_t result, unint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 == 32)
  {
    memset(v7, 0, sizeof(v7));
    specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(result, a2, v7, v8);
    return *&v7[0];
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      *v11 = a3;
      *&v11[8] = a4;
      v11[10] = BYTE2(a4);
      v11[11] = BYTE3(a4);
      v11[12] = BYTE4(a4);
      v11[13] = BYTE5(a4);
      result = (a1)(&v12, v11, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v9 = a3;
    v10 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFytSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_yt_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_nTf4nng_n(v9, v10, a4 & 0x3FFFFFFFFFFFFFFFLL, a1, a2);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v7 == 2)
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v11, 0, sizeof(v11));
  result = (a1)(&v12, v11, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFytSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_yt_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_nTf4nng_n(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
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

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v9, v15, a4) & 1;
}

void *partial apply for specialized closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

void _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    if (v8)
    {
      v9 = v5 >> 32;
    }
  }

  v10 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v10 <= 32)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v16 = *(v5 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = BYTE6(v6);
      v16 = v5 >> 32;
      if (!v8)
      {
        v16 = v15;
      }
    }

    if (__OFSUB__(v16, v7))
    {
      __break(1u);
    }

    else
    {
      v17 = ByteBuffer.readSlice(length:)(v16 - v7);
      if (v18 >> 60 == 15)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v20 = v17;
      v21 = v18;
      v22 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(v17 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else if (v22)
      {
        v23 = v17 >> 32;
      }

      else
      {
        v23 = BYTE6(v18);
      }

      if (v23 >= v19)
      {
        v24 = Data._Representation.subscript.getter();
        v26 = v25;
        outlined consume of ByteBuffer?(v20, v21);
        _s15SwiftTLSLibrary15LegacySessionIDVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5(v24, v26, v28);
        v27 = v28[1];
        *a3 = v28[0];
        *(a3 + 16) = v27;
        *(a3 + 32) = v29;
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1B25F5000, v12, v13, "reading legacy session id: too many bytes %ld, but expected <= 32", v14, 0xCu);
    MEMORY[0x1B274ECF0](v14, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  *a2 = xmmword_1B26C66C0;
  *(a2 + 16) = 2;
}

double _s15SwiftTLSLibrary15LegacySessionIDVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v16 = 0u;
      v17 = 0u;
      specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(a1, a2, &v16, v18);
      outlined consume of Data._Representation(a1, a2);
      v11 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v7 = v7;
LABEL_10:
  if (v7 > 32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = 0u;
  v17 = 0u;
  specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(a1, a2, &v16, v18);
  if (v6 == 2)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    outlined consume of Data._Representation(a1, a2);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6 != 1)
  {
LABEL_19:
    outlined consume of Data._Representation(a1, a2);
    v11 = BYTE6(a2);
    goto LABEL_20;
  }

  outlined consume of Data._Representation(a1, a2);
  LODWORD(v11) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_23;
  }

  v11 = v11;
LABEL_20:
  result = *&v16;
  v15 = v17;
  *a3 = v16;
  *(a3 + 16) = v15;
  *(a3 + 32) = v11;
  return result;
}

void _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfcSayAA9ExtensionOGAFzAHYKXEfU_(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v5 = v4;
  v75 = *MEMORY[0x1E69E9840];
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x1E69E7CC0]);
  v8 = a1[1];
  v51 = *a1;
  LOWORD(v72) = 0;
  v9 = a1[2];
  v10 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
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
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v11 = v7;
  v12 = v8 >> 62;
  v52 = BYTE6(v8);
  v53 = v8 >> 62;
  while (1)
  {
    if (v12 <= 1)
    {
      v13 = v52;
      if (v12)
      {
        v13 = v51 >> 32;
      }

LABEL_8:
      if (v13 < v10)
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    if (v12 == 2)
    {
      v13 = *(v51 + 24);
      goto LABEL_8;
    }

    if (v10 >= 1)
    {
LABEL_55:
      *a4 = v11;
      return;
    }

LABEL_11:
    v14 = *a1;
    v15 = a1[1];
    *&v66 = *a1;
    *(&v66 + 1) = v15;
    if (v10 < v9)
    {
      goto LABEL_61;
    }

    v55 = v11;
    v56 = v5;
    *&v58 = v9;
    *(&v58 + 1) = v10;
    v57 = v10;
    outlined copy of Data._Representation(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v66, *(&v66 + 1));
    v16 = v72;
    a1[2] = v57;
    v18 = *a1;
    v17 = a1[1];
    LOWORD(v72) = 0;
    v19 = v57 + 2;
    if (__OFADD__(v57, 2))
    {
      goto LABEL_62;
    }

    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      v21 = v18 >> 32;
    }

    else
    {
      v21 = BYTE6(v17);
    }

LABEL_19:
    if (v21 < v19)
    {
      goto LABEL_56;
    }

LABEL_22:
    *&v66 = v18;
    *(&v66 + 1) = v17;
    if (v19 < v57)
    {
      goto LABEL_63;
    }

    *&v58 = v57;
    *(&v58 + 1) = v57 + 2;
    outlined copy of Data._Representation(v18, v17);
    outlined copy of Data._Representation(v18, v17);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v66, *(&v66 + 1));
    v22 = bswap32(v72) >> 16;
    a1[2] = v19;
    v23 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      goto LABEL_64;
    }

    v24 = *a1;
    v25 = a1[1];
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

LABEL_30:
      if (v27 < v23)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_30;
    }

    if (v23 > 0)
    {
      goto LABEL_57;
    }

LABEL_33:
    if (v23 < v19)
    {
      goto LABEL_65;
    }

    v28 = Data._Representation.subscript.getter();
    v30 = 0;
    a1[2] = v23;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      v32 = v56;
      if (v31 == 2)
      {
        v30 = *(v28 + 16);
      }
    }

    else
    {
      v32 = v56;
      if (v31)
      {
        v30 = v28;
      }
    }

    v72 = v28;
    v73 = v29;
    v74 = v30;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v72, bswap32(v16) >> 16, 2, a2 & 1, v64, &v66);
    if (v32)
    {
      v48 = v64[0];
      v47 = v64[1];
      v42 = v65;
      v46 = v72;
      v45 = v73;
      goto LABEL_59;
    }

    v5 = 0;
    v33 = v73 >> 62;
    if ((v73 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v72 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = v72 >> 32;
    }

    else
    {
      v34 = BYTE6(v73);
    }

    if (__OFSUB__(v34, v74))
    {
      goto LABEL_66;
    }

    if (v34 != v74)
    {
      v42 = 2;
      v43 = v72;
      v44 = v73;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v58 = v66;
      v59 = v67;
      outlined destroy of Extension(&v58);
      v45 = v44;
      v46 = v43;
      v47 = 0;
      v48 = 1;
LABEL_59:
      outlined consume of Data._Representation(v46, v45);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v18;
      a1[1] = v17;
      a1[2] = v57;
      *&v66 = v48;
      *(&v66 + 1) = v47;
      LOBYTE(v67) = v42;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      *a3 = v48;
      *(a3 + 8) = v47;
      *(a3 + 16) = v42;
      return;
    }

    outlined consume of Data._Representation(v72, v73);
    outlined consume of Data._Representation(v18, v17);
    v63 = v71;
    v61 = v69;
    v62 = v70;
    v59 = v67;
    v60 = v68;
    v58 = v66;
    v11 = v55;
    v36 = *(v55 + 2);
    v35 = *(v55 + 3);
    if (v36 >= v35 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v55);
    }

    LODWORD(v12) = v53;
    *(v11 + 2) = v36 + 1;
    v37 = &v11[88 * v36];
    v38 = v59;
    *(v37 + 2) = v58;
    *(v37 + 3) = v38;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    v37[112] = v63;
    *(v37 + 5) = v40;
    *(v37 + 6) = v41;
    *(v37 + 4) = v39;
    LOWORD(v72) = 0;
    v9 = a1[2];
    v10 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_60;
    }
  }

  if (v20 == 2)
  {
    v21 = *(v18 + 24);
    goto LABEL_19;
  }

  if (v19 < 1)
  {
    goto LABEL_22;
  }

LABEL_56:
  outlined copy of Data._Representation(v18, v17);
  v24 = *a1;
  v25 = a1[1];
LABEL_57:
  outlined consume of Data._Representation(v24, v25);
  *a1 = v18;
  a1[1] = v17;
  a1[2] = v57;
  *a4 = v55;
}

char *_s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKF(uint64_t a1, char a2)
{
  v6 = v2;
  if (a1 == 1)
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = v2[2];
    outlined copy of Data._Representation(*v2, v10);
    v13 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v13 & 0x10000) != 0 || (v14 = ByteBuffer.readSlice(length:)(v13), v15 >> 60 == 15))
    {
      outlined consume of Data._Representation(*v2, v2[1]);
      *v2 = v11;
      v2[1] = v10;
      v2[2] = v12;
      goto LABEL_14;
    }

    *&v43 = v14;
    *(&v43 + 1) = v15;
    v44 = v16;
    _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKFSayAJ0fG5EntryVGACzXEfU_(&v43, &v45);
    if (v3)
    {
      v9 = v40;
      v23 = v41;
      v24 = v42;
      v26 = *(&v43 + 1);
      v25 = v43;
    }

    else
    {
      v20 = *(&v43 + 1);
      v27 = v43;
      v28 = *(&v43 + 1) >> 62;
      if ((*(&v43 + 1) >> 62) > 1)
      {
        if (v28 == 2)
        {
          v29 = *(v43 + 24);
        }

        else
        {
          v29 = 0;
        }
      }

      else if (v28)
      {
        v29 = v43 >> 32;
      }

      else
      {
        v29 = BYTE14(v43);
      }

      if (__OFSUB__(v29, v44))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v29 == v44)
      {
        outlined consume of Data._Representation(v43, *(&v43 + 1));
        outlined consume of Data._Representation(v11, v10);
        return v45;
      }

      v24 = 2;
      v33 = *(&v43 + 1);
      v32 = v43;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      v26 = v33;
      v25 = v32;
      v23 = 0;
      v9 = 1;
    }

    outlined consume of Data._Representation(v25, v26);
    outlined consume of Data._Representation(*v6, v6[1]);
    *v6 = v11;
    v6[1] = v10;
    v6[2] = v12;
    *&v43 = v9;
    *(&v43 + 1) = v23;
    LOBYTE(v44) = v24;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v9;
  }

  if (a1 != 2)
  {
    v9 = a1 | 0x330000;
    v43 = v9;
    LOBYTE(v44) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v9;
  }

  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if (a2)
  {
    if ((v8 & 0x10000) == 0)
    {
      return v8;
    }

LABEL_14:
    v43 = 0uLL;
    LOBYTE(v44) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_14;
  }

  v17 = v8;
  v11 = *v2;
  v10 = v2[1];
  v5 = v2[2];
  outlined copy of Data._Representation(*v2, v10);
  v18 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v18 & 0x10000) != 0 || (v19 = ByteBuffer.readSlice(length:)(v18), v20 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v11;
    v2[1] = v10;
    v2[2] = v5;
    goto LABEL_14;
  }

  *&v43 = v19;
  *(&v43 + 1) = v20;
  v44 = v21;
  v30 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v19 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v19 >> 32;
  }

  else
  {
    v31 = BYTE6(v20);
  }

  v27 = v31 - v21;
  if (__OFSUB__(v31, v21))
  {
    goto LABEL_50;
  }

  v27 = ByteBuffer.readSlice(length:)(v27);
  v39 = v27;
  if (v20 >> 60 == 15)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v4 = v20;
  v20 = *(&v43 + 1);
  v27 = v43;
  v34 = *(&v43 + 1) >> 62;
  if ((*(&v43 + 1) >> 62) > 1)
  {
    if (v34 == 2)
    {
      v35 = *(v43 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v34)
  {
    v35 = v43 >> 32;
  }

  else
  {
    v35 = BYTE14(v43);
  }

  if (__OFSUB__(v35, v44))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v35 == v44)
  {
    outlined consume of Data._Representation(v43, *(&v43 + 1));
    outlined consume of Data._Representation(v11, v10);
    return v17;
  }

LABEL_53:
  v36 = v27;
  v38 = v20;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v39, v4);
  outlined consume of Data._Representation(v36, v38);
  outlined consume of Data._Representation(*v6, v6[1]);
  *v6 = v11;
  v6[1] = v10;
  v6[2] = v5;
  v43 = xmmword_1B26C66C0;
  LOBYTE(v44) = 2;
  swift_willThrowTypedImpl();
  swift_allocError();
  *v37 = xmmword_1B26C66C0;
  *(v37 + 16) = 2;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *_s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      v4 = a1 | 0x2B0000;
      v25 = v4;
      v26 = 0;
      LOBYTE(v27) = 0;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v4;
    }

    v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v3 & 0x10000) == 0)
    {
      return (bswap32(v3) >> 16);
    }

LABEL_8:
    v25 = 0;
    v26 = 0;
    LOBYTE(v27) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  outlined copy of Data._Representation(*v1, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v8 & 0x100) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    goto LABEL_8;
  }

  v25 = v9;
  v26 = v10;
  v27 = v11;
  _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFSayAA15ProtocolVersionVGACzXEfU_(&v25, &v24);
  if (v2)
  {
    v4 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v25;
    v16 = v26;
    goto LABEL_24;
  }

  result = v25;
  v17 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v25 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v25 >> 32;
  }

  else
  {
    v18 = BYTE6(v26);
  }

  if (!__OFSUB__(v18, v27))
  {
    if (v18 == v27)
    {
      outlined consume of Data._Representation(v25, v26);
      outlined consume of Data._Representation(v6, v5);
      return v24;
    }

    v14 = 2;
    v19 = v25;
    v20 = v26;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v16 = v20;
    v15 = v19;
    v13 = 0;
    v4 = 1;
LABEL_24:
    outlined consume of Data._Representation(v15, v16);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    v25 = v4;
    v26 = v13;
    LOBYTE(v27) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO19receivedServerHello_5bytes5clockAA15EncryptionLevelO10newReadKey_AH0l5WriteN0tAA0fG0V_AA10ByteBufferVxtAA8TLSErrorOYKAA0A8TLSClockRzlF(char *a1, char *a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a7;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v61 = a3;
  v54 = a2;
  v53 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v50 - v15;
  v60 = type metadata accessor for SymmetricKey();
  v57 = *(v60 - 8);
  v16 = MEMORY[0x1EEE9AC00](v60);
  v51 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - v19;
  v20 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v55);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = (&v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v50 - v29;
  v31 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v10;
  outlined init with copy of HandshakeState(v10, v33, type metadata accessor for HandshakeState);
  v50 = v31;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of HandshakeState(v33, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_9:
    v58 = v31;
LABEL_11:
    result = outlined destroy of P256.Signing.PrivateKey?(v58, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __break(1u);
    return result;
  }

  outlined init with take of HandshakeState.IdleState(v33, v30, type metadata accessor for HandshakeState.ClientHelloState);
  outlined init with copy of HandshakeState(v30, v28, type metadata accessor for HandshakeState.ClientHelloState);
  (*(v20 + 16))(v22, v62, a8);
  v34 = v61;
  outlined init with copy of ServerHello(v61, v68);
  v35 = v63;
  v36 = v64;
  outlined copy of Data._Representation(v63, v64);
  v37 = v69;
  _s15SwiftTLSLibrary14HandshakeStateO011ServerHelloD0V08originalD006serverF00hF5Bytes5clockAeC06ClientfD0V_AA0eF0VAA10ByteBufferVxtAA8TLSErrorOYKcAA0A8TLSClockRzlufC(v28, v34, v35, v36, v65, v22, a8, v24, v66);
  if (v37)
  {
    v38 = v66[0];
    v39 = v66[1];
    v40 = v67;
    result = outlined destroy of HandshakeState(v30, type metadata accessor for HandshakeState.ClientHelloState);
    *a10 = v38;
    *(a10 + 8) = v39;
    *(a10 + 16) = v40;
    return result;
  }

  v69 = 0;
  v31 = v56;
  specialized ClientSessionKeyManager.clientHandshakeTrafficSecret.getter(v56);
  v42 = v57;
  v43 = *(v57 + 48);
  v44 = v60;
  if (v43(v31, 1, v60) == 1)
  {
    goto LABEL_9;
  }

  v45 = *(v42 + 32);
  v45(v59, v31, v44);
  v46 = v58;
  specialized ClientSessionKeyManager.serverHandshakeTrafficSecret.getter(v58);
  v47 = v60;
  if (v43(v46, 1, v60) == 1)
  {
    (*(v57 + 8))(v59, v47);
    goto LABEL_11;
  }

  v48 = v52;
  outlined destroy of HandshakeState(v52, type metadata accessor for HandshakeState);
  outlined destroy of HandshakeState(v30, type metadata accessor for HandshakeState.ClientHelloState);
  v49 = v51;
  v45(v51, v46, v47);
  outlined init with take of HandshakeState.IdleState(v24, v48, type metadata accessor for HandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v45(v53, v49, v47);
  type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v45(v54, v59, v47);
  return swift_storeEnumTagMultiPayload();
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO011ServerHelloD0V08originalD006serverF00hF5Bytes5clockAeC06ClientfD0V_AA0eF0VAA10ByteBufferVxtAA8TLSErrorOYKcAA0A8TLSClockRzlufC@<X0>(int64x2_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v368 = a6;
  v369 = a7;
  v339 = a5;
  v371 = a4;
  v370 = a3;
  v409 = a2;
  v334 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v347 = &v308 - v11;
  v12 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v345 = *(v12 - 8);
  v346 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v343 = &v308 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v344 = &v308 - v15;
  v16 = type metadata accessor for SessionTicket(0);
  v360 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v330 = &v308 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v331 = &v308 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v357 = &v308 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v336 = &v308 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v342 = &v308 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v350 = &v308 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v358 = &v308 - v29;
  v30 = type metadata accessor for PAKEClientState(0);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v353 = (&v308 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v373 = &v308 - v34;
  v35 = type metadata accessor for SymmetricKey();
  v354 = *(v35 - 8);
  v355 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v338 = &v308 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v308 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v337 = &v308 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v351 = &v308 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v341 = &v308 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v364 = &v308 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v367 = &v308 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v335 = &v308 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v340 = &v308 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v333 = &v308 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v366 = &v308 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v362 = &v308 - v59;
  v60 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v308 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = &v63[v61[8]];
  *v64 = 0;
  v332 = v64;
  v64[2] = 1;
  v363 = v61[9];
  v63[v363] = 0;
  v352 = v61[10];
  v63[v352] = 0;
  v65 = &v63[v61[11]];
  *v65 = 0;
  v365 = v65;
  v65[2] = 1;
  v66 = v61[12];
  v361 = v31;
  v67 = *(v31 + 56);
  v374 = v63;
  v372 = v66;
  v348 = v67;
  v349 = v31 + 56;
  v67(&v63[v66], 1, 1, v30);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  v69 = __swift_project_value_buffer(v68, logger);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *&v359 = v30;
    v73 = v16;
    v74 = v60;
    v75 = v69;
    v76 = v40;
    v77 = a1;
    v78 = v72;
    *v72 = 0;
    _os_log_impl(&dword_1B25F5000, v70, v71, "validating server hello", v72, 2u);
    v79 = v78;
    a1 = v77;
    v40 = v76;
    v69 = v75;
    v60 = v74;
    v16 = v73;
    v30 = v359;
    MEMORY[0x1B274ECF0](v79, -1, -1);
  }

  v80 = v409;
  v81 = *(v409 + 24);
  v82 = *(v409 + 8);
  if (one-time initialization token for helloRetryRequest != -1)
  {
    v359 = *(v409 + 8);
    v328 = v81;
    swift_once();
    v81 = v328;
    v82 = v359;
    v80 = v409;
  }

  v83 = v373;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v82, static Random.helloRetryRequest), vceqq_s64(v81, *(&xmmword_1ED4D5F88 + 8))))) & 1) != 0 || v80[2].i64[1] != a1[4].i64[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v80[3], a1[5]), vceqq_s64(v80[4], a1[6])))) & 1) == 0 || v80->i8[0] != 3 || v80->i8[1] != 3 || v80[5].i8[2] || (v92 = ServerHello.supportedVersion.getter() & 0x1FFFF, v80 = v409, v92 != 1027))
  {
    outlined destroy of ServerHello(v80);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1B25F5000, v84, v85, "server hello invalid for QUIC", v86, 2u);
      MEMORY[0x1B274ECF0](v86, -1, -1);
    }

    v384 = xmmword_1B26C6410;
    v87 = 2;
    v385[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v370, v371);
    (*(*(v369 - 8) + 8))(v368);
LABEL_13:
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ClientHelloState);
    v88 = 0;
    v89 = 5;
LABEL_14:
    v90 = v372;
    goto LABEL_15;
  }

  v93 = *(v409 + 40);
  if (!specialized Sequence<>.contains(_:)(*(v409 + 40), a1[7].i64[0]))
  {
    v144 = v93;
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    outlined destroy of ServerHello(v409);
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v384 = v148;
      *v147 = 136315138;
      v149 = CipherSuite.description.getter(v144);
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v384);

      *(v147 + 4) = v151;
      _os_log_impl(&dword_1B25F5000, v145, v146, "server hello chose a cipher suite we didn't offer (%s)", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x1B274ECF0](v148, -1, -1);
      MEMORY[0x1B274ECF0](v147, -1, -1);
    }

    v90 = v372;
    v152 = v371;
    v153 = v370;
    v384 = xmmword_1B26C6400;
    v87 = 2;
    v385[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v153, v152);
    (*(*(v369 - 8) + 8))(v368);
    v154 = a1;
    goto LABEL_77;
  }

  v314 = v40;
  v94 = v374;
  v95 = &v374[v60[7]];
  v317 = v93;
  *v95 = v93;
  v95[2] = 0;
  v389 = 0;
  v388 = 0;
  v390 = xmmword_1B26C8CA0;
  v96 = v360;
  v315 = *(v360 + 56);
  v316 = v360 + 56;
  v315(v362, 1, 1, v16);
  v97 = type metadata accessor for GeneralEPSK(0);
  v322 = *(v97 - 8);
  v323 = v97;
  v320 = *(v322 + 56);
  v321 = v322 + 56;
  v320(v367, 1, 1);
  v387 = MEMORY[0x1E69E7CD0];
  v98 = *(v409 + 11);
  v326 = *(v98 + 16);
  v329 = a1;
  if (!v326)
  {
    v366 = v16;
    outlined destroy of ServerHello(v409);
    v155 = 0;
    goto LABEL_92;
  }

  v99 = 0;
  v319 = 0;
  v313 = 0;
  v324 = (v96 + 48);
  v325 = v98;
  v318 = v98 + 32;
  v311 = 0xCFFFFFFFFFFFFF00;
  v312 = (v361 + 48);
  do
  {
    v100 = v318 + 88 * v99;
    v101 = v99 + 1;
    while (1)
    {
      *&v359 = v101;
      v102 = *(v100 + 16);
      v384 = *v100;
      *v385 = v102;
      v103 = *(v100 + 32);
      v104 = *(v100 + 48);
      v105 = *(v100 + 64);
      v328.i64[0] = v100;
      v386 = *(v100 + 80);
      *&v385[32] = v104;
      *&v385[48] = v105;
      *&v385[16] = v103;
      v106 = 42;
      switch(v386 >> 4)
      {
        case 1:

          v106 = 10;
          break;
        case 2:
          sub_1B260EDD8(v384, BYTE8(v384) & 1);
          v106 = 43;
          break;
        case 3:
          outlined copy of Extension.ApplicationLayerProtocolNegotiation(v384, *(&v384 + 1), v385[0] & 1);
          v106 = 16;
          break;
        case 4:
          outlined copy of Extension.KeyShare(v384, *(&v384 + 1), *v385);
          v106 = 51;
          break;
        case 5:
          break;
        case 6:

          v106 = 13;
          break;
        case 7:
          sub_1B260EDD8(v384, BYTE8(v384) & 1);
          v106 = 20;
          break;
        case 8:
          outlined copy of Data._Representation(v384, *(&v384 + 1));
          v106 = 57;
          break;
        case 9:

          v106 = 45;
          break;
        case 0xA:
          outlined copy of Extension.PreSharedKey(v384, *(&v384 + 1), v385[0] & 1);
          v106 = 41;
          break;
        case 0xB:
          v106 = 58;
          break;
        case 0xC:
          v380 = *&v385[16];
          v381 = *&v385[32];
          v382 = *&v385[48];
          v378 = v384;
          v379 = *v385;
          v383 = v386 & 0xF;
          outlined init with copy of Extension.PAKE(&v378, &v375);
          v106 = 35387;
          break;
        case 0xD:
          v107 = v384;
          outlined copy of Data._Representation(*(&v384 + 1), *v385);
          v106 = v107;
          break;
        default:
          outlined copy of Data?(v384, *(&v384 + 1));
          v106 = 0;
          break;
      }

      if ((specialized Set._Variant.insert(_:)(&v378, v106) & 1) == 0)
      {

        outlined destroy of ServerHello(v409);
        outlined init with copy of Extension(&v384, &v378);
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        outlined destroy of Extension(&v384);
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          *&v378 = v159;
          *v158 = 136315138;
          v160 = 0;
          switch(v386 >> 4)
          {
            case 1:
              v160 = 10;
              break;
            case 2:
              v160 = 43;
              break;
            case 3:
              v160 = 16;
              break;
            case 4:
              v160 = 51;
              break;
            case 5:
              v160 = 42;
              break;
            case 6:
              v160 = 13;
              break;
            case 7:
              v160 = 20;
              break;
            case 8:
              v160 = 57;
              break;
            case 9:
              v160 = 45;
              break;
            case 0xA:
              v160 = 41;
              break;
            case 0xB:
              v160 = 58;
              break;
            case 0xC:
              v160 = -30149;
              break;
            case 0xD:
              v160 = v384;
              break;
            default:
              break;
          }

          v269 = ExtensionType.description.getter(v160);
          v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v269, v270, &v378);

          *(v158 + 4) = v271;
          _os_log_impl(&dword_1B25F5000, v156, v157, "server offered duplicate extension of type %s on server hello", v158, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v159);
          MEMORY[0x1B274ECF0](v159, -1, -1);
          MEMORY[0x1B274ECF0](v158, -1, -1);
        }

        else
        {
        }

        v272 = v371;
        v273 = v370;
        v378 = xmmword_1B26C6410;
        v87 = 2;
        LOBYTE(v379) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v273, v272);
        outlined destroy of Extension(&v384);
        (*(*(v369 - 8) + 8))(v368);
        outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
        goto LABEL_13;
      }

      v108 = v384;
      v109 = v386 >> 4;
      if (v109 != 10)
      {
        v120 = *(&v384 + 1);
        v121 = *&v385[1] | ((*&v385[5] | (v385[7] << 16)) << 32);
        if (v109 == 12)
        {
          if (v386)
          {
            v398 = v384;
            v399 = v385[0];
            v400 = *&v385[1];
            v402 = (*&v385[1] | ((*&v385[5] | (v385[7] << 16)) << 32)) >> 48;
            v401 = *&v385[5];
            v403 = *&v385[8];
            v404 = *&v385[24];
            v405 = *&v385[40];
            v406 = *&v385[56];
            v123 = Logger.logObject.getter();
            v124 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              *v125 = 0;
              _os_log_impl(&dword_1B25F5000, v123, v124, "Received PAKEServerHello", v125, 2u);
              MEMORY[0x1B274ECF0](v125, -1, -1);
            }

            v126 = type metadata accessor for HandshakeState.ClientHelloState(0);
            v127 = v350;
            outlined init with copy of Any?(v329->i64 + *(v126 + 48), v350, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            v128 = (*v312)(v127, 1, v30);
            v129 = v353;
            if (v128 == 1)
            {

              outlined destroy of ServerHello(v409);
              outlined destroy of P256.Signing.PrivateKey?(v127, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
              v161 = Logger.logObject.getter();
              v162 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v161, v162))
              {
                goto LABEL_87;
              }

              v163 = swift_slowAlloc();
              *v163 = 0;
              v164 = "server hello sent a pake extension when we did not offer a pake";
              goto LABEL_86;
            }

            outlined init with take of HandshakeState.IdleState(v127, v353, type metadata accessor for PAKEClientState);
            if (*v129 != v108)
            {

              outlined destroy of ServerHello(v409);
              v290 = Logger.logObject.getter();
              v291 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v290, v291))
              {
                v292 = swift_slowAlloc();
                *v292 = 0;
                _os_log_impl(&dword_1B25F5000, v290, v291, "server hello sent a pake scheme that we did not offer", v292, 2u);
                MEMORY[0x1B274ECF0](v292, -1, -1);
              }

              v378 = xmmword_1B26C6400;
              v87 = 2;
              LOBYTE(v379) = 2;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v370, v371);
              outlined destroy of Extension(&v384);
              (*(*(v369 - 8) + 8))(v368);
              outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v353, type metadata accessor for PAKEClientState);
              goto LABEL_89;
            }

            v130 = *(v129 + 44);
            v407[0] = *(v129 + 36);
            v407[1] = v130;
            v407[2] = *(v129 + 52);
            v408 = *(v129 + 120);
            if (one-time initialization token for SwiftTLSPAKELimiter != -1)
            {
              swift_once();
            }

            if (((*(*SwiftTLSPAKELimiter + 96))(v407) & 1) == 0)
            {

              outlined destroy of ServerHello(v409);
              v293 = Logger.logObject.getter();
              v294 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v293, v294))
              {
                v295 = swift_slowAlloc();
                *v295 = 0;
                _os_log_impl(&dword_1B25F5000, v293, v294, "selected PAKE credential has no attempts remaining", v295, 2u);
                MEMORY[0x1B274ECF0](v295, -1, -1);
              }

              v378 = xmmword_1B26CAC80;
              v87 = 2;
              LOBYTE(v379) = 2;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v370, v371);
              outlined destroy of Extension(&v384);
              (*(*(v369 - 8) + 8))(v368);
              outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v353, type metadata accessor for PAKEClientState);
              outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
              outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
              v88 = 0;
              v89 = 35;
              goto LABEL_14;
            }

            v131 = v356;
            v132 = _s15SwiftTLSLibrary15PAKEClientStateV18processServerHelloyyAA9ExtensionO4PAKEO010PAKEServerG0VAA8TLSErrorOYKF(&v398);
            v356 = v131;
            if (v131)
            {
              v89 = v132;
              v88 = v133;
              v296 = v134;

              outlined destroy of ServerHello(v409);
              outlined copy of TLSError(v89, v88, v296);
              v297 = v296;
              v298 = Logger.logObject.getter();
              v299 = static os_log_type_t.error.getter();
              v87 = v297;
              outlined consume of TLSError(v89, v88, v297);
              if (os_log_type_enabled(v298, v299))
              {
                v300 = swift_slowAlloc();
                v301 = swift_slowAlloc();
                *v300 = 138412290;
                lazy protocol witness table accessor for type TLSError and conformance TLSError();
                swift_allocError();
                *v302 = v89;
                *(v302 + 8) = v88;
                *(v302 + 16) = v87;
                outlined copy of TLSError(v89, v88, v87);
                v303 = _swift_stdlib_bridgeErrorToNSError();
                *(v300 + 4) = v303;
                *v301 = v303;
                _os_log_impl(&dword_1B25F5000, v298, v299, "failed to process Server Hello pake share %@", v300, 0xCu);
                outlined destroy of P256.Signing.PrivateKey?(v301, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1B274ECF0](v301, -1, -1);
                MEMORY[0x1B274ECF0](v300, -1, -1);
              }

              v304 = v353;
              v305 = v353[5];
              v395 = v353[4];
              v396 = v305;
              v397[0] = v353[6];
              *(v397 + 9) = *(v353 + 105);
              v306 = v353[1];
              v391 = *v353;
              v392 = v306;
              v307 = v353[3];
              v393 = v353[2];
              v394 = v307;
              PAKEClientConfiguration.claimPAKECredentialAttempt()();
              *&v378 = v89;
              *(&v378 + 1) = v88;
              LOBYTE(v379) = v87;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v370, v371);
              outlined destroy of Extension(&v384);
              (*(*(v369 - 8) + 8))(v368);
              outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v304, type metadata accessor for PAKEClientState);
LABEL_155:
              outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
              outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
              goto LABEL_14;
            }

            outlined destroy of Extension(&v384);
            v94 = v374;
            v135 = v372;
            outlined destroy of P256.Signing.PrivateKey?(&v374[v372], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            outlined init with take of HandshakeState.IdleState(v353, v94 + v135, type metadata accessor for PAKEClientState);
            v348(v94 + v135, 0, 1, v30);
            v83 = v373;
            goto LABEL_65;
          }
        }

        else if (v109 == 4 && (v121 & 0x30000000000000) == 0x10000000000000)
        {
          v122 = v311 & (v121 << 8) | v385[0];
          v328 = *&v385[8];
          outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
          v388 = v108;
          v389 = v120;
          *&v390 = v122;
          v83 = v373;
          v94 = v374;
          *(&v390 + 1) = v328.i64[0];
          goto LABEL_65;
        }

LABEL_64:
        outlined destroy of Extension(&v384);
LABEL_65:
        v136 = v325;
        v99 = v359;
        a1 = v329;
        if (v326 != v359)
        {
          goto LABEL_66;
        }

        v366 = v16;
        outlined destroy of ServerHello(v409);
        v155 = v319 | v313;
LABEL_92:
        v90 = v372;
LABEL_93:
        v167 = v358;

        outlined init with copy of Any?(v94 + v90, v167, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        v168 = *(v361 + 48);
        *&v359 = v30;
        v361 += 48;
        v409 = v168;
        if ((v168)(v167, 1, v30) == 1)
        {
          outlined destroy of P256.Signing.PrivateKey?(v167, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
          v169 = v390;
          if (v390 >> 60 == 15 || (v329[3].i8[14] & 1) != 0 || (v182 = v388, v183 = v329[3].u16[6], v183 != v388))
          {
            v170 = Logger.logObject.getter();
            v171 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              *&v378 = v173;
              *v172 = 136315138;
              swift_beginAccess();
              v174 = v390;
              if (v390 >> 60 == 15)
              {
                v175 = 0xE300000000000000;
                v176 = 7104878;
              }

              else
              {
                v200 = v388;
                v201 = v389;
                v202 = *(&v390 + 1);
                v409 = *(&v390 + 1);
                outlined copy of Data._Representation(v389, v390);
                v373 = Extension.KeyShare.KeyShareEntry.description.getter(v200, v201, v174, v202);
                v175 = v203;
                outlined consume of Extension.KeyShare.KeyShareEntry?(v200, v201, v174);
                v176 = v373;
              }

              v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v175, &v378);

              *(v172 + 4) = v204;
              _os_log_impl(&dword_1B25F5000, v170, v171, "unsupported server key share, expected secp384 or x25519 or x25519-MLKEM768 got %s", v172, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v173);
              MEMORY[0x1B274ECF0](v173, -1, -1);
              MEMORY[0x1B274ECF0](v172, -1, -1);

              v192 = v329;
              v90 = v372;
            }

            else
            {

              v192 = v329;
            }

            v378 = xmmword_1B26C6400;
            v87 = 2;
            LOBYTE(v379) = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v370, v371);
            (*(*(v369 - 8) + 8))(v368);
            outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
            v154 = v192;
            goto LABEL_77;
          }

          v184 = v389;
          v373 = *(&v390 + 1);
          v185 = type metadata accessor for HandshakeState.ClientHelloState(0);
          v186 = v347;
          outlined init with copy of Any?(v329->i64 + *(v185 + 32), v347, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          if ((*(v345 + 48))(v186, 1, v346) == 1)
          {
            outlined copy of Data._Representation(v184, v169);
            outlined destroy of P256.Signing.PrivateKey?(v186, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
            v187 = Logger.logObject.getter();
            v188 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v187, v188))
            {
              v189 = swift_slowAlloc();
              *v189 = 0;
              _os_log_impl(&dword_1B25F5000, v187, v188, "missing key share", v189, 2u);
              v190 = v189;
              v90 = v372;
              MEMORY[0x1B274ECF0](v190, -1, -1);
            }

            v384 = xmmword_1B26C6400;
            v87 = 2;
            v385[0] = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v370, v371);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v182, v184, v169);
            (*(*(v369 - 8) + 8))(v368);
            goto LABEL_112;
          }

          LODWORD(v365) = v183;
          outlined init with take of HandshakeState.IdleState(v186, v343, type metadata accessor for GeneratedEphemeralPrivateKey);
          outlined copy of Data._Representation(v184, v169);
          v212 = Logger.logObject.getter();
          v213 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            *v214 = 0;
            _os_log_impl(&dword_1B25F5000, v212, v213, "valid TLS1.3 server hello, constructing shared secret.", v214, 2u);
            MEMORY[0x1B274ECF0](v214, -1, -1);
          }

          v215 = v169 >> 62;
          v216 = v184;
          v309 = v60;
          if ((v169 >> 62) > 1)
          {
            if (v215 != 2)
            {
              v217 = 0;
              goto LABEL_151;
            }

            v247 = v184;
            v217 = *(v184 + 24);
          }

          else
          {
            if (!v215)
            {
              v217 = BYTE6(v169);
LABEL_151:
              v257 = v337;
              v256 = v373;
LABEL_152:
              if (v217 >= v256)
              {
                v258 = Data._Representation.subscript.getter();
                v260 = v259;
                outlined consume of Extension.KeyShare.KeyShareEntry?(v182, v216, v169);
                v261 = v260;
                v262 = v260;
                v263 = v343;
                v264 = v356;
                _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF(v258, v262, v376, v257);
                if (!v264)
                {
                  v356 = 0;
                  outlined consume of Data._Representation(v258, v261);
                  outlined consume of Extension.KeyShare.KeyShareEntry?(v182, v216, v169);
                  outlined destroy of HandshakeState(v263, type metadata accessor for GeneratedEphemeralPrivateKey);
                  (*(v354 + 32))(v351, v257, v355);
                  v265 = v332;
                  v83 = v333;
                  *v332 = v365;
                  v265[2] = 0;
                  outlined init with copy of Any?(v362, v83, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                  if ((*(v360 + 48))(v83, 1, v366) != 1)
                  {
                    goto LABEL_159;
                  }

                  outlined destroy of P256.Signing.PrivateKey?(v83, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                  v60 = v309;
                  v266 = &v374[v309[5]];
                  v267 = v329[7].i64[1];
                  *v266 = v317;
                  *(v266 + 1) = v365;
                  *(v266 + 1) = v267;
                  type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
                  swift_storeEnumTagMultiPayload();

                  goto LABEL_124;
                }

                v89 = v376[0];
                v409 = v182;
                v88 = v376[1];
                v87 = v377;
                outlined consume of Data._Representation(v258, v261);
                outlined consume of Data._Representation(v370, v371);
                outlined consume of Extension.KeyShare.KeyShareEntry?(v409, v216, v169);
                (*(*(v369 - 8) + 8))(v368);
                outlined destroy of HandshakeState(v263, type metadata accessor for GeneratedEphemeralPrivateKey);
                outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
                outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                goto LABEL_155;
              }

LABEL_194:
              __break(1u);
              JUMPOUT(0x1B2616334);
            }

            v247 = v184;
            v217 = v184 >> 32;
          }

          v256 = v373;
          outlined copy of Extension.KeyShare.KeyShareEntry?(v182, v247, v169);
          v257 = v337;
          goto LABEL_152;
        }

        outlined init with take of HandshakeState.IdleState(v167, v83, type metadata accessor for PAKEClientState);
        v177 = v371;
        if (v390 >> 60 == 15)
        {
          if ((v155 & 1) == 0)
          {
            v193 = v344;
            outlined init with copy of Any?(v83 + *(v359 + 20), v344, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
            v194 = v83;
            v196 = v354;
            v195 = v355;
            if ((*(v354 + 48))(v193, 1, v355) != 1)
            {
              outlined destroy of HandshakeState(v194, type metadata accessor for PAKEClientState);
              (*(v196 + 32))(v351, v193, v195);
              *(v94 + v60[5]) = v317;
              type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
              goto LABEL_123;
            }

            outlined destroy of P256.Signing.PrivateKey?(v193, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              *v199 = 0;
              _os_log_impl(&dword_1B25F5000, v197, v198, "missing derivedSharedKey", v199, 2u);
              MEMORY[0x1B274ECF0](v199, -1, -1);
            }

            v89 = 0xD00000000000001ELL;

            v88 = 0x80000001B26CE150;
            *&v384 = 0xD00000000000001ELL;
            *(&v384 + 1) = 0x80000001B26CE150;
            v87 = 1;
            v385[0] = 1;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v370, v371);
            (*(*(v369 - 8) + 8))(v368);
            outlined destroy of HandshakeState(v373, type metadata accessor for PAKEClientState);
            outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
            outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
LABEL_15:
            result = outlined destroy of P256.Signing.PrivateKey?(&v374[v90], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            *a9 = v89;
            *(a9 + 8) = v88;
            *(a9 + 16) = v87;
            return result;
          }

          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v178, v179))
          {
            goto LABEL_111;
          }

          v180 = swift_slowAlloc();
          *v180 = 0;
          v181 = "server sent PAKE and PSK extensions, which is not allowed";
        }

        else
        {
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v178, v179))
          {
LABEL_111:

            v384 = xmmword_1B26C6400;
            v87 = 2;
            v385[0] = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v370, v177);
            (*(*(v369 - 8) + 8))(v368);
            outlined destroy of HandshakeState(v83, type metadata accessor for PAKEClientState);
LABEL_112:
            outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
            v154 = v329;
LABEL_77:
            outlined destroy of HandshakeState(v154, type metadata accessor for HandshakeState.ClientHelloState);
            v88 = 0;
            v89 = 6;
            goto LABEL_15;
          }

          v180 = swift_slowAlloc();
          *v180 = 0;
          v181 = "server sent PAKE and key share extensions, which is not allowed";
        }

        _os_log_impl(&dword_1B25F5000, v178, v179, v181, v180, 2u);
        v191 = v180;
        v83 = v373;
        MEMORY[0x1B274ECF0](v191, -1, -1);
        goto LABEL_111;
      }

      if ((v385[0] & 1) == 0)
      {
        goto LABEL_64;
      }

      v327 = v384;
      v110 = type metadata accessor for HandshakeState.ClientHelloState(0);
      a1 = v329;
      v111 = v366;
      outlined init with copy of Any?(v329->i64 + *(v110 + 40), v366, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      if ((*v324)(v111, 1, v16) != 1)
      {
        break;
      }

      outlined destroy of P256.Signing.PrivateKey?(v111, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v112 = *(a1->i64 + *(v110 + 44));
      if (!*(v112 + 16))
      {

        outlined destroy of ServerHello(v409);
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          v164 = "server hello sent a pre_shared_key extension when we didn't offer psks";
LABEL_86:
          _os_log_impl(&dword_1B25F5000, v161, v162, v164, v163, 2u);
          MEMORY[0x1B274ECF0](v163, -1, -1);
        }

LABEL_87:

        v378 = xmmword_1B26C6400;
        v87 = 2;
        LOBYTE(v379) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v370, v371);
        outlined destroy of Extension(&v384);
        (*(*(v369 - 8) + 8))(v368);
LABEL_88:
        outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
LABEL_89:
        outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
        v165 = type metadata accessor for HandshakeState.ClientHelloState;
        v166 = v329;
LABEL_90:
        outlined destroy of HandshakeState(v166, v165);
        v88 = 0;
        v89 = 6;
        goto LABEL_14;
      }

      if (v327)
      {

        outlined destroy of ServerHello(v409);
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          v164 = "server hello is trying to use a psk at an index we didn't offer";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_1B25F5000, v113, v114, "external psk accepted by server", v115, 2u);
        MEMORY[0x1B274ECF0](v115, -1, -1);
      }

      if (!*(v112 + 16))
      {
        __break(1u);
        goto LABEL_194;
      }

      v116 = v364;
      outlined init with copy of HandshakeState(v112 + ((*(v322 + 80) + 32) & ~*(v322 + 80)), v364, type metadata accessor for GeneralEPSK);
      outlined destroy of Extension(&v384);
      v117 = v367;
      outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      (v320)(v116, 0, 1, v323);
      outlined init with take of P256.Signing.PublicKey?(v116, v117, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      v94 = v374;
      v374[v363] = 1;
      v118 = v365;
      *v365 = 0;
      v118[2] = 0;
      v83 = v373;
      if (v326 == v359)
      {
        v366 = v16;
        outlined destroy of ServerHello(v409);
        v155 = 1;
        goto LABEL_92;
      }

      v119 = *(v325 + 16);
      v100 = v328.i64[0] + 88;
      v101 = v359 + 1;
      v319 = 1;
      a1 = v329;
      if (v359 >= v119)
      {
        goto LABEL_158;
      }
    }

    v137 = v357;
    outlined init with take of HandshakeState.IdleState(v111, v357, type metadata accessor for SessionTicket);
    if (v327)
    {

      outlined destroy of ServerHello(v409);
      v274 = Logger.logObject.getter();
      v275 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        *v276 = 0;
        _os_log_impl(&dword_1B25F5000, v274, v275, "server hello is trying to resume a session we didnt offer", v276, 2u);
        MEMORY[0x1B274ECF0](v276, -1, -1);
      }

      goto LABEL_192;
    }

    if (v317 != *(v137 + *(v16 + 44)))
    {
      v277 = v16;

      outlined destroy of ServerHello(v409);
      outlined init with copy of HandshakeState(v357, v331, type metadata accessor for SessionTicket);
      v278 = Logger.logObject.getter();
      v279 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        *&v378 = v281;
        *v280 = 136315394;
        v282 = CipherSuite.description.getter(v317);
        v284 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v282, v283, &v378);

        *(v280 + 4) = v284;
        *(v280 + 12) = 2080;
        v285 = v331;
        v286 = CipherSuite.description.getter(*(v331 + *(v277 + 44)));
        v288 = v287;
        outlined destroy of HandshakeState(v285, type metadata accessor for SessionTicket);
        v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v286, v288, &v378);

        *(v280 + 14) = v289;
        _os_log_impl(&dword_1B25F5000, v278, v279, "server negotiated cipher suite %s, expected %s", v280, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v281, -1, -1);
        MEMORY[0x1B274ECF0](v280, -1, -1);
      }

      else
      {

        outlined destroy of HandshakeState(v331, type metadata accessor for SessionTicket);
      }

LABEL_192:
      v378 = xmmword_1B26C6400;
      v87 = 2;
      LOBYTE(v379) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v370, v371);
      outlined destroy of Extension(&v384);
      (*(*(v369 - 8) + 8))(v368);
      outlined destroy of HandshakeState(v357, type metadata accessor for SessionTicket);
      goto LABEL_88;
    }

    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_1B25F5000, v138, v139, "resuming session", v140, 2u);
      v141 = v140;
      a1 = v329;
      MEMORY[0x1B274ECF0](v141, -1, -1);
    }

    outlined destroy of Extension(&v384);
    v142 = v362;
    outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined init with take of HandshakeState.IdleState(v357, v142, type metadata accessor for SessionTicket);
    v315(v142, 0, 1, v16);
    v94 = v374;
    v313 = 1;
    v374[v352] = 1;
    v143 = v365;
    *v365 = 0;
    v143[2] = 0;
    v99 = v359;
    if (v326 == v359)
    {
      v366 = v16;
      outlined destroy of ServerHello(v409);
      v155 = 1;
      v90 = v372;
      v83 = v373;
      goto LABEL_93;
    }

    v83 = v373;
    v136 = v325;
LABEL_66:
    ;
  }

  while (v99 < *(v136 + 16));
LABEL_158:
  __break(1u);
LABEL_159:
  v268 = v330;
  outlined init with take of HandshakeState.IdleState(v83, v330, type metadata accessor for SessionTicket);
  v60 = v309;
  outlined init with take of HandshakeState.IdleState(v268, &v374[v309[5]], type metadata accessor for SessionTicket);
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
LABEL_123:
  swift_storeEnumTagMultiPayload();
LABEL_124:
  v205 = v340;
  outlined init with copy of Any?(v362, v340, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v206 = *(v360 + 48);
  v207 = v366;
  v208 = v206(v205, 1, v366);
  outlined destroy of P256.Signing.PrivateKey?(v205, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v310 = v69;
  if (v208 == 1)
  {
    v209 = type metadata accessor for HandshakeState.ClientHelloState(0);
    v210 = v329;
    v211 = v335;
    outlined init with copy of Any?(v329->i64 + *(v209 + 40), v335, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    LODWORD(v366) = v206(v211, 1, v207) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v211, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  }

  else
  {
    LODWORD(v366) = 0;
    v210 = v329;
  }

  v218 = v359;
  v373 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v219 = *(v210->i64 + *(v373 + 44));
  v374[v60[13]] = *(v219 + 16) != 0;
  v220 = v341;
  outlined init with copy of Any?(v367, v341, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v221 = (*(v322 + 48))(v220, 1, v323);
  outlined destroy of P256.Signing.PrivateKey?(v220, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  LODWORD(v365) = v221 == 1 && *(v219 + 16) != 0;
  v222 = v218;
  v223 = v342;
  outlined init with copy of Any?(&v374[v372], v342, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v224 = v409;
  v225 = (v409)(v223, 1, v218);
  outlined destroy of P256.Signing.PrivateKey?(v223, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v226 = v373;
  if (v225 == 1)
  {
    v227 = v336;
    outlined init with copy of Any?(v329->i64 + *(v373 + 48), v336, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v228 = (v224)(v227, 1, v222);
    outlined destroy of P256.Signing.PrivateKey?(v227, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    if (v228 != 1)
    {
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&dword_1B25F5000, v253, v254, "pake expected in ServerHello but not present", v255, 2u);
        MEMORY[0x1B274ECF0](v255, -1, -1);
      }

      v384 = xmmword_1B26C6400;
      v87 = 2;
      v385[0] = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v370, v371);
      (*(*(v369 - 8) + 8))(v368);
      (*(v354 + 8))(v351, v355);
      outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
      outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
      v165 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
      v166 = &v374[v60[5]];
      goto LABEL_90;
    }
  }

  v229 = v329;
  v385[48] = v329[4].i8[0];
  v230 = v329[3];
  *&v385[16] = v329[2];
  v231 = *&v385[16];
  *&v385[32] = v230;
  v232 = v329[1];
  v384 = *v329;
  v233 = v384;
  *v385 = v232;
  v234 = v374;
  v374[64] = v385[48];
  *(v234 + 32) = v231;
  *(v234 + 48) = v230;
  *v234 = v233;
  *(v234 + 16) = v232;
  outlined init with copy of Any?(v229->i64 + *(v226 + 36), v234 + v60[6], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  (*(v354 + 16))(v338, v351, v355);
  outlined init with copy of HandshakeStateMachine.Configuration(&v384, &v378);
  _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  v235 = v314;
  SymmetricKey.init<A>(data:)();
  v236 = v370;
  v237 = v371;
  v238 = v356;
  v239 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKFAG6SHA384V_Tg5(v235, v370, v371, v339, (v366 | v365) & 1);
  LODWORD(v409) = v241;
  v373 = v238;
  if (v238)
  {
    v89 = v239;
    v88 = v240;
    outlined consume of Data._Representation(v236, v237);
    (*(*(v369 - 8) + 8))(v368);
    v242 = *(v354 + 8);
    v243 = v235;
    v244 = v355;
    v242(v243, v355);
    v242(v351, v244);
    outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
    outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
    v245 = *(v234 + 48);
    v380 = *(v234 + 32);
    v381 = v245;
    LOBYTE(v382) = *(v234 + 64);
    v246 = *(v234 + 16);
    v378 = *v234;
    v379 = v246;
    outlined destroy of HandshakeStateMachine.Configuration(&v378);
    outlined destroy of HandshakeState(v234 + v60[5], type metadata accessor for HandshakeState.ServerHelloState.SessionData);
    outlined destroy of P256.Signing.PrivateKey?(v234 + v60[6], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v90 = v372;
    v87 = v409;
    goto LABEL_15;
  }

  v248 = *(v354 + 8);
  v248(v235, v355);
  v249 = Logger.logObject.getter();
  v250 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v249, v250))
  {
    v251 = swift_slowAlloc();
    *v251 = 0;
    _os_log_impl(&dword_1B25F5000, v249, v250, "server hello valid", v251, 2u);
    MEMORY[0x1B274ECF0](v251, -1, -1);
  }

  outlined consume of Data._Representation(v370, v371);

  (*(*(v369 - 8) + 8))(v368);
  v248(v351, v355);
  outlined destroy of P256.Signing.PrivateKey?(v367, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v362, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  outlined consume of Extension.KeyShare.KeyShareEntry?(v388, v389, v390);
  v252 = v374;
  outlined init with copy of HandshakeState(v374, v334, type metadata accessor for HandshakeState.ServerHelloState);
  outlined destroy of HandshakeState(v329, type metadata accessor for HandshakeState.ClientHelloState);
  return outlined destroy of HandshakeState(v252, type metadata accessor for HandshakeState.ServerHelloState);
}

uint64_t ServerHello.supportedVersion.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 112);
    while ((*v3 & 0xF0) != 0x20 || (*(v3 - 18) & 1) == 0)
    {
      v3 += 88;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v4 = *(v3 - 10);
    outlined copy of Extension.ServerCertificateType(*(v3 - 10), 1);
    v5 = 0;
  }

  else
  {
LABEL_7:
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1B2616468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void outlined copy of Extension.KeyShare(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (!v3)
  {
  }
}

void outlined consume of Extension.KeyShare.KeyShareEntry?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    outlined consume of Data._Representation(a2, a3);
  }
}

void outlined copy of Extension.KeyShare.KeyShareEntry?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    outlined copy of Data._Representation(a2, a3);
  }
}

uint64_t _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v5 = v4;
  v9 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v5, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v20, v14, type metadata accessor for P384EphemeralKey);
      v22 = v37;
      _s15SwiftTLSLibrary16P384EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(a1, a2, &v35, a4);
      if (v22)
      {
        v24 = *(&v35 + 1);
        v23 = v35;
        v25 = v36;
        v26 = type metadata accessor for P384EphemeralKey;
        v27 = v14;
LABEL_9:
        result = outlined destroy of GeneratedEphemeralPrivateKey(v27, v26);
        v31 = v34;
        *v34 = v23;
        v31[1] = v24;
        *(v31 + 16) = v25;
        return result;
      }

      v32 = type metadata accessor for P384EphemeralKey;
      v33 = v14;
    }

    else
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v20, v11, type metadata accessor for X25519MLKEM768EphemeralKey);
      v29 = v37;
      _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF(a1, a2, &v35, a4);
      if (v29)
      {
        v24 = *(&v35 + 1);
        v23 = v35;
        v25 = v36;
        v26 = type metadata accessor for X25519MLKEM768EphemeralKey;
        v27 = v11;
        goto LABEL_9;
      }

      v32 = type metadata accessor for X25519MLKEM768EphemeralKey;
      v33 = v11;
    }
  }

  else
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v20, v17, type metadata accessor for Curve25519EphemeralKey);
    v28 = v37;
    _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(a1, a2, &v35, a4);
    if (v28)
    {
      v24 = *(&v35 + 1);
      v23 = v35;
      v25 = v36;
      v26 = type metadata accessor for Curve25519EphemeralKey;
      v27 = v17;
      goto LABEL_9;
    }

    v32 = type metadata accessor for Curve25519EphemeralKey;
    v33 = v17;
  }

  return outlined destroy of GeneratedEphemeralPrivateKey(v33, v32);
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKFTm@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(__int128 *, void, void)@<X4>, void (*a6)(char *)@<X5>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a3;
  v30 = a5;
  v24[1] = a7;
  v11 = type metadata accessor for SharedSecret();
  v25 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = a4(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - v19;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  outlined copy of Data._Representation(a1, a2);
  v30(&v28, MEMORY[0x1E6969080], MEMORY[0x1E6969078]);
  if (v7)
  {

    v28 = xmmword_1B26C6420;
    v29 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v23 = v27;
    *v27 = xmmword_1B26C6420;
    *(v23 + 16) = 2;
  }

  else
  {
    v22 = v25;
    v30 = v17;
    v26(v20);
    (*(v22 + 16))(v14, v16, v11);
    lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
    SymmetricKey.init<A>(data:)();
    (*(v22 + 8))(v16, v11);
    return (*(v18 + 8))(v20, v30);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret()
{
  result = lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret;
  if (!lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret)
  {
    type metadata accessor for SharedSecret();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret);
  }

  return result;
}

uint64_t sub_1B2616C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKFAG6SHA384V_Tg5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v40 = a4;
  v39 = a5;
  v37 = a2;
  v38 = a3;
  v43 = a1;
  v36 = type metadata accessor for SymmetricKey();
  v42 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v47 = v5;
  outlined init with copy of Any?(v5, &v34 - v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v44 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_5;
  }

  v35 = v19;
  v24 = v41;
  v23 = v42;
  v25 = v43;
  if (EnumCaseMultiPayload)
  {
LABEL_5:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, logger);
    outlined init with copy of Any?(v47, v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 <= 1)
    {
      if (v30)
      {
        v31 = 0xEF74657263655365;
        v32 = 0x6B616873646E6168;
      }

      else
      {
        v31 = 0xEB00000000746572;
        v32 = 0x636553796C726165;
      }
    }

    else if (v30 == 2)
    {
      v31 = 0xEC00000074657263;
      v32 = 0x655372657473616DLL;
    }

    else
    {
      if (v30 != 3)
      {
        v31 = 0xE400000000000000;
        v32 = 1701602409;
LABEL_17:
        Logger.logInvalidStateTransition(stateName:event:)(v32, v31, 0x7672655374736F70, 0xEF6F6C6C65487265);

        v45 = xmmword_1B26C6450;
        v46 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return 2;
      }

      v31 = 0xEA00000000007374;
      v32 = 0x65726365536C6C61;
    }

    outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_17;
  }

  outlined init with take of P256.Signing.PublicKey?(v21, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v12, v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  (*(v23 + 16))(v24, v25, v36);
  v26 = v37;
  v27 = v38;
  outlined copy of Data._Representation(v37, v38);
  v28 = v35;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5(v10, v24, v26, v27, v40, v39 & 1, v35);
  outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v28, v47, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}