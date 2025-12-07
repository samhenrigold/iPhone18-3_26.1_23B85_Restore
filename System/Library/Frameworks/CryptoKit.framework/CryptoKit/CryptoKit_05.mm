uint64_t sub_1A790CC8C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a1;
  return (*(a3 + 40))(&v4, &v5, a2);
}

uint64_t sub_1A790CD00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v24[0] = a3;
      LOWORD(v24[1]) = a4;
      BYTE2(v24[1]) = BYTE2(a4);
      BYTE3(v24[1]) = BYTE3(a4);
      BYTE4(v24[1]) = BYTE4(a4);
      BYTE5(v24[1]) = BYTE5(a4);
      v8 = v24 + BYTE6(a4);
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v9 = v4;
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = sub_1A793D648();
    if (v12)
    {
      v13 = sub_1A793D678();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_28;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
LABEL_15:
      v18 = sub_1A793D668();
      if (v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 + v12;
      if (v12)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v4 = v9;
      sub_1A78CBAB0(v12, v21, a1, a2, v24);
      if (!v9)
      {
        return LOBYTE(v24[0]);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_11:
    v16 = a3;
    v15 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v9 = v4;
      v12 = sub_1A793D648();
      if (!v12)
      {
        goto LABEL_15;
      }

      v17 = sub_1A793D678();
      if (!__OFSUB__(v16, v17))
      {
        v12 += v16 - v17;
        goto LABEL_15;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memset(v24, 0, 14);
  v8 = v24;
LABEL_24:
  sub_1A78CBAB0(v24, v8, a1, a2, &v23);
  if (v4)
  {
LABEL_30:
    result = MEMORY[0x1AC55E410](v4);
    __break(1u);
    return result;
  }

  return v23;
}

uint64_t SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = *v10;

  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v20, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t SharedSecret.init<A>(withExternalSS:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1A78C2B3C(a1, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

uint64_t SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v16 = *v8;
  swift_beginAccess();
  return sub_1A790D0BC(v16 + 32, v16 + 32 + *(v16 + 16), a2, a3, a4, a5, a6, a7, x8_0);
}

uint64_t sub_1A790D0BC@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1A78C2BF8(a1, a2, &v17);
  static ANSIKDFx963.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)(&v17, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t SharedSecret.hashValue.getter()
{
  sub_1A793DF58();
  swift_beginAccess();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A790D208()
{
  sub_1A793DF58();
  swift_beginAccess();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A790D2C0(uint64_t a1)
{
  sub_1A793DF58();
  swift_beginAccess();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t static SharedSecret.== infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = v32 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  v18 = *a1;
  v19 = a2;
  sub_1A793D5A8();
  v32[1] = v8;
  v20 = sub_1A793DB98();
  v21 = *(v12 + 8);
  v21(v17, v11);
  if (v20 != 1)
  {
    v29 = sub_1A78C7370(v19, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
    v31 = v30;
    swift_beginAccess();
    v28 = sub_1A790CD00(v18 + 32, v18 + 32 + *(v18 + 16), v29, v31);
    sub_1A78C0AFC(v29, v31);
    return v28 & 1;
  }

  v35[0] = v18;
  sub_1A793D5A8();
  v22 = v33;
  sub_1A793DBC8();
  v21(v14, v11);
  v23 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  result = (*(v24 + 48))(v22, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v26 = sub_1A78F2924();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = sub_1A78CB9C8(v35, v22, &type metadata for SharedSecret, v23, v26, AssociatedConformanceWitness);
    (*(v24 + 8))(v22, v23);
    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SharedSecret.description.getter()
{
  v1 = *v0;
  strcpy(v12, "SharedSecret: ");
  HIBYTE(v12[1]) = -18;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = 2 * v3;
  if (2 * v3 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = v5;

  sub_1A78DD080(v6, &v11, &v10);

  v7 = sub_1A793D998();
  v9 = v8;

  MEMORY[0x1AC55D280](v7, v9);

  return v12[0];
}

unint64_t sub_1A790D7A0()
{
  result = qword_1EB2A7658;
  if (!qword_1EB2A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7658);
  }

  return result;
}

uint64_t sub_1A790D928@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790D9DC()
{
  result = qword_1EB2A7660;
  if (!qword_1EB2A7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7660);
  }

  return result;
}

unint64_t sub_1A790DA30(uint64_t a1)
{
  result = sub_1A790DA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A790DA58()
{
  result = qword_1ED5F88D8;
  if (!qword_1ED5F88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F88D8);
  }

  return result;
}

unint64_t sub_1A790DAB0()
{
  result = qword_1EB2A7668;
  if (!qword_1EB2A7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7668);
  }

  return result;
}

unint64_t sub_1A790DB08()
{
  result = qword_1EB2A7670;
  if (!qword_1EB2A7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7670);
  }

  return result;
}

unint64_t sub_1A790DB60()
{
  result = qword_1EB2A7678;
  if (!qword_1EB2A7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7678);
  }

  return result;
}

uint64_t sub_1A790DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Curve25519.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v11 == 3)
  {
    v12 = v7;
    (*(v6 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v9);
    Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)(v10, a3, &v16);
    result = (*(v6 + 8))(a1, a3);
    if (!v3)
    {
      *v12 = v16;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v6 + 8))(a1, a3);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 3)
  {
    v1 = sub_1A793DB18();
    v2 = sub_1A78C0DCC(v1);

    return v2;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A790DE50(_BYTE *a1)
{
  if (*a1 == 3)
  {
    v1 = sub_1A793DB18();
    v2 = sub_1A78C0DCC(v1);

    return v2;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A790DF48(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790DF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790DFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A790E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *sub_1A790E064(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  result = *a1;
  if (result)
  {
    return sub_1A790E0AC(result, a3, a2, a4, a5, a6, a7, a8, &v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790E0AC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v46 = a2;
  v40 = a3;
  v41 = a4;
  v48 = a1;
  swift_getAssociatedTypeWitness();
  v52 = a6;
  v47 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v40 - v15;
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v24 = a7[1];
  v43 = a5;
  v44 = a7;
  result = v24(a5, a7, v21);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  ccmldsa_pub_ctx_init();
  v26 = v46;
  v27 = a8;
  sub_1A793D5A8();
  v28 = sub_1A793DB98();
  v29 = *(v17 + 8);
  v29(v23, v16);
  if (v28 == 1)
  {
    sub_1A793D5A8();
    v30 = v42;
    sub_1A793DBC8();
    v29(v19, v16);
    v31 = *(AssociatedTypeWitness - 8);
    result = (*(v31 + 48))(v30, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v50 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(v31 + 32))(boxed_opaque_existential_1, v30, AssociatedTypeWitness);
      v33 = v50;
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v34 = sub_1A78C7370(v26, v52, *(*(*(v27[1] + 8) + 8) + 8));
  v33 = MEMORY[0x1E6969080];
  v50 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v49[0] = v34;
  v49[1] = v35;
LABEL_6:
  v36 = v48;
  v37 = __swift_project_boxed_opaque_existential_1(v49, v33);
  MEMORY[0x1EEE9AC00](v37);
  v38 = v52;
  *(&v40 - 6) = v43;
  *(&v40 - 5) = v38;
  v39 = v45;
  *(&v40 - 4) = v44;
  *(&v40 - 3) = v27;
  *(&v40 - 2) = v36;
  sub_1A793D6A8();
  if (v39)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v49);
    *a9 = v39;
  }

  else
  {
    *v40 = v41;
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  return result;
}

uint64_t sub_1A790E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 8))(a4, a6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = ccmldsa_import_pubkey();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  sub_1A790E620(a3 + 32, a1, a2, a5, a6, a8, &v16, a9);
  return v16;
}

uint64_t sub_1A790E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v62 = a7;
  v67 = a3;
  v76 = a2;
  v61 = a1;
  swift_getAssociatedTypeWitness();
  v68 = a8;
  v69 = a5;
  v66 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v54 - v12;
  v13 = swift_checkMetadataState();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v54 - v16;
  v17 = a6;
  swift_getAssociatedTypeWitness();
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v60 = swift_getAssociatedTypeWitness();
  v19 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v54 - v20;
  v21 = swift_checkMetadataState();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  v28 = v76;
  sub_1A793D5A8();
  v58 = v18;
  v29 = sub_1A793DB98();
  v30 = *(v22 + 8);
  v30(v27, v21);
  if (v29 == 1)
  {
    sub_1A793D5A8();
    v31 = v59;
    sub_1A793DBC8();
    v30(v24, v21);
    v32 = v60;
    v33 = *(v60 - 8);
    result = (*(v33 + 48))(v31, 1, v60);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v74 = v32;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  else
  {
    v36 = sub_1A78C7370(v28, a4, *(*(*(*(v17 + 8) + 8) + 8) + 8));
    v74 = MEMORY[0x1E6969080];
    AssociatedConformanceWitness = MEMORY[0x1E6969078];
    v73[0] = v36;
    v73[1] = v37;
  }

  v39 = v68;
  v38 = v69;
  v40 = v67;
  v42 = v63;
  v41 = v64;
  sub_1A793D5A8();
  v43 = v65;
  v44 = sub_1A793DB98();
  v45 = *(v41 + 8);
  v45(v42, v43);
  if (v44 != 1)
  {
    v51 = sub_1A78C7370(v40, v38, *(*(*(*(v39 + 8) + 8) + 8) + 8));
    v71 = MEMORY[0x1E6969080];
    v72 = MEMORY[0x1E6969078];
    v70[0] = v51;
    v70[1] = v52;
    goto LABEL_9;
  }

  v46 = v55;
  sub_1A793D5A8();
  v47 = v56;
  sub_1A793DBC8();
  v45(v46, v43);
  v48 = AssociatedTypeWitness;
  v49 = *(AssociatedTypeWitness - 8);
  result = (*(v49 + 48))(v47, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v71 = v48;
    v72 = swift_getAssociatedConformanceWitness();
    v50 = __swift_allocate_boxed_opaque_existential_1(v70);
    (*(v49 + 32))(v50, v47, v48);
LABEL_9:
    v53 = __swift_project_boxed_opaque_existential_1(v73, v74);
    MEMORY[0x1EEE9AC00](v53);
    *(&v54 - 2) = v70;
    *(&v54 - 1) = v61;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(v70);
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A790ED68@<X0>(uint64_t result@<X0>, uint64_t a4@<X3>, BOOL *a6@<X8>)
{
  if (a4)
  {
    if (result)
    {
      result = ccmldsa_verify();
      *a6 = result == 0;
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

uint64_t sub_1A790EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  sub_1A790EE90((a4 + 32), a1, a2, a3, a6, a7, a8, &v20, a9, a10, a11, a12);
  return v20;
}

uint64_t sub_1A790EE90@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v91 = a4;
  v97 = a3;
  v100 = a2;
  v85 = a1;
  v86 = a8;
  swift_getAssociatedTypeWitness();
  v92 = a12;
  v110 = a7;
  v90 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v76 - v16;
  v89 = swift_checkMetadataState();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v76 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v76 - v19;
  swift_getAssociatedTypeWitness();
  v98 = a11;
  v99 = a6;
  v96 = *(swift_getAssociatedConformanceWitness() + 8);
  v81 = swift_getAssociatedTypeWitness();
  v20 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v76 - v21;
  v95 = swift_checkMetadataState();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v79 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v76 - v24;
  v25 = a5;
  swift_getAssociatedTypeWitness();
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  v84 = swift_getAssociatedTypeWitness();
  v27 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v83 = &v76 - v28;
  v29 = swift_checkMetadataState();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v76 - v34;
  v36 = v100;
  sub_1A793D5A8();
  v82 = v26;
  v37 = sub_1A793DB98();
  v38 = *(v30 + 8);
  v38(v35, v29);
  if (v37 == 1)
  {
    sub_1A793D5A8();
    v39 = v83;
    sub_1A793DBC8();
    v38(v32, v29);
    v40 = v84;
    v41 = *(v84 - 8);
    result = (*(v41 + 48))(v39, 1, v84);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_15;
    }

    v108 = v40;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
    (*(v41 + 32))(boxed_opaque_existential_1, v39, v40);
  }

  else
  {
    v44 = sub_1A78C7370(v36, v25, *(*(*(*(a10 + 8) + 8) + 8) + 8));
    v108 = MEMORY[0x1E6969080];
    AssociatedConformanceWitness = MEMORY[0x1E6969078];
    v107[0] = v44;
    v107[1] = v45;
  }

  v47 = v98;
  v46 = v99;
  v48 = v97;
  v49 = v95;
  v50 = v94;
  v51 = v93;
  sub_1A793D5A8();
  v52 = sub_1A793DB98();
  v53 = *(v50 + 8);
  v53(v51, v49);
  v54 = v110;
  if (v52 != 1)
  {
    v61 = sub_1A78C7370(v48, v46, *(*(*(*(v47 + 8) + 8) + 8) + 8));
    v105 = MEMORY[0x1E6969080];
    v106 = MEMORY[0x1E6969078];
    v104[0] = v61;
    v104[1] = v62;
    v60 = v92;
    goto LABEL_9;
  }

  v55 = v79;
  sub_1A793D5A8();
  v56 = v80;
  sub_1A793DBC8();
  v53(v55, v49);
  v57 = v81;
  v58 = *(v81 - 8);
  result = (*(v58 + 48))(v56, 1, v81);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v105 = v57;
  v106 = swift_getAssociatedConformanceWitness();
  v59 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(v58 + 32))(v59, v56, v57);
  v60 = v92;
  v54 = v110;
LABEL_9:
  v63 = v91;
  v64 = v87;
  sub_1A793D5A8();
  v65 = v89;
  v66 = sub_1A793DB98();
  v67 = *(v88 + 8);
  v67(v64, v65);
  if (v66 != 1)
  {
    v73 = sub_1A78C7370(v63, v54, *(*(*(*(v60 + 8) + 8) + 8) + 8));
    v102 = MEMORY[0x1E6969080];
    v103 = MEMORY[0x1E6969078];
    v101[0] = v73;
    v101[1] = v74;
    goto LABEL_13;
  }

  v68 = v76;
  sub_1A793D5A8();
  v69 = v77;
  sub_1A793DBC8();
  v67(v68, v65);
  v70 = AssociatedTypeWitness;
  v71 = *(AssociatedTypeWitness - 8);
  result = (*(v71 + 48))(v69, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v102 = v70;
    v103 = swift_getAssociatedConformanceWitness();
    v72 = __swift_allocate_boxed_opaque_existential_1(v101);
    (*(v71 + 32))(v72, v69, v70);
LABEL_13:
    v75 = __swift_project_boxed_opaque_existential_1(v107, v108);
    MEMORY[0x1EEE9AC00](v75);
    *(&v76 - 4) = v104;
    *(&v76 - 3) = v101;
    *(&v76 - 2) = v85;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    return __swift_destroy_boxed_opaque_existential_1(v107);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A790FA14@<X0>(uint64_t result@<X0>, uint64_t a4@<X3>, uint64_t a6@<X5>, BOOL *a8@<X8>)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result)
  {
    result = ccmldsa_verify_with_context();
    *a8 = result == 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1A790FA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A790FC48(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v9 = result;
    swift_beginAccess();
    sub_1A791121C(v9 + 32, a2, a4, &v10);

    return v10;
  }

  return result;
}

uint64_t sub_1A790FB3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v15 = a3;
  sub_1A78C0990(a2, a3);
  v11 = sub_1A78CA3EC();
  v12 = sub_1A790FC48(&v14, a6, MEMORY[0x1E6969080], a8, v11);
  result = sub_1A78C0AFC(v14, v15);
  if (!v8)
  {
    v16 = v12;
    MEMORY[0x1EEE9AC00](result);
    sub_1A7924E08(sub_1A7911E48);

    return v14;
  }

  return result;
}

unint64_t sub_1A790FC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  result = v7(a2, a4);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = ccmldsa_seed_nbytes_params();
  if (sub_1A793DB98() != v9)
  {
    goto LABEL_6;
  }

  result = v7(a2, a4);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = ccmldsa_sizeof_full_ctx();
  MEMORY[0x1EEE9AC00](v10);
  result = sub_1A78C05E8(v11, sub_1A79118AC);
  if (!v13)
  {
    return result;
  }

  swift_unexpectedError();
  __break(1u);
LABEL_6:
  sub_1A78D6484();
  swift_allocError();
  *v12 = 1;
  *(v12 + 4) = 1;
  return swift_willThrow();
}

void *sub_1A790FDC0@<X0>(void *result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  if (result)
  {
    return sub_1A790FE0C(result, a3, a4, a5, a6, a7, &v8, x8_0);
  }

  __break(1u);
  return result;
}

void *sub_1A790FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v58 = a7;
  v59 = a1;
  v54 = a8;
  v13 = sub_1A793D6F8();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v51 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v62 = a6;
  v61 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v50 - v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  result = (*(a5 + 8))(a3, a5, v22);
  if (!result)
  {
    goto LABEL_16;
  }

  v26 = ccmldsa_signature_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v63[0] = off_1ED5F8A18;
  v55 = v20;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v26, 0);
      v27 = a2;
      v28 = v63[0];
      goto LABEL_8;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = a2;

LABEL_8:
  v66 = v28;
  v29 = v62;
  sub_1A793D5A8();
  v30 = sub_1A793DB98();
  v31 = v18 + 8;
  v32 = *(v18 + 8);
  v32(v24, v17);
  if (v30 == 1)
  {
    v33 = v55;
    v50 = v31;
    sub_1A793D5A8();
    v34 = v56;
    sub_1A793DBC8();
    v32(v33, v17);
    v35 = AssociatedTypeWitness;
    v36 = *(AssociatedTypeWitness - 8);
    result = (*(v36 + 48))(v34, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v64 = v35;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
      v38 = (*(v36 + 32))(boxed_opaque_existential_1, v34, v35);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v38 = sub_1A78C7370(v27, a4, *(*(*(*(v29 + 8) + 8) + 8) + 8));
  v64 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v63[0] = v38;
  v63[1] = v39;
LABEL_12:
  v40 = v60;
  MEMORY[0x1EEE9AC00](v38);
  *(&v50 - 2) = v63;
  *(&v50 - 1) = v59;
  sub_1A7924E08(sub_1A7911E6C);
  if (v40)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v63);
    *v58 = v40;
  }

  else
  {
    v41 = v66;
    swift_beginAccess();
    v42 = *(v41 + 16);
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v45 = v51;
    v44 = v52;
    *v51 = sub_1A790AE6C;
    *(v45 + 8) = v43;
    (*(v44 + 104))(v45, *MEMORY[0x1E6969028], v53);

    v46 = sub_1A78DA2C4(v41 + 32, v42, v45);
    v48 = v47;

    v49 = v54;
    *v54 = v46;
    v49[1] = v48;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  return result;
}

uint64_t sub_1A7910434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_9;
  }

  result = ccmldsa_sign();
  if (result)
  {
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A7910534(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a3;
  v16 = a4;
  sub_1A78C0990(a3, a4);
  v12 = sub_1A78CA3EC();
  v13 = sub_1A790FC48(&v15, a7, MEMORY[0x1E6969080], a10, v12);
  result = sub_1A78C0AFC(v15, v16);
  if (!v10)
  {
    v17 = v13;
    MEMORY[0x1EEE9AC00](result);
    sub_1A7924E08(sub_1A7911DB0);

    return v15;
  }

  return result;
}

uint64_t (**sub_1A7910654@<X0>(uint64_t (**result)(uint64_t a1, uint64_t a2)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(void)@<X7>, uint64_t *x8_0@<X8>, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  if (result)
  {
    return sub_1A79106AC(result, a3, a4, a5, a6, a7, a8, a9, x8_0, a10, &v11);
  }

  __break(1u);
  return result;
}

void *sub_1A79106AC@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, void *a11)
{
  v90 = a4;
  v91 = a7;
  v85 = a3;
  v89 = a2;
  v80 = a1;
  v74 = a9;
  v73 = sub_1A793D6F8();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v86 = a10;
  v87 = a6;
  v84 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v71 - v16;
  v83 = swift_checkMetadataState();
  v92 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v71 - v19;
  swift_getAssociatedTypeWitness();
  v88 = a8;
  v20 = a5;
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = &v71 - v23;
  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v71 - v30;
  result = (v91[1])(v29);
  if (!result)
  {
    goto LABEL_20;
  }

  v91 = v27;
  v33 = ccmldsa_signature_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v96[0] = off_1ED5F8A18;
  v34 = v89;
  v75 = v21;
  if (v33)
  {
    if ((v33 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v33, 0);
      v35 = v96[0];
      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  v99 = v35;
  v36 = v34;
  v37 = v88;
  sub_1A793D5A8();
  v38 = sub_1A793DB98();
  v39 = *(v25 + 8);
  v39(v31, v24);
  if (v38 == 1)
  {
    v40 = v91;
    sub_1A793D5A8();
    v41 = v79;
    sub_1A793DBC8();
    v39(v40, v24);
    v42 = v75;
    v43 = *(v75 - 8);
    result = (*(v43 + 48))(v41, 1, v75);
    if (result != 1)
    {
      v97 = v42;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
      (*(v43 + 32))(boxed_opaque_existential_1, v41, v42);
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = sub_1A78C7370(v36, v20, *(*(*(*(v37 + 8) + 8) + 8) + 8));
  v97 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v96[0] = v45;
  v96[1] = v46;
LABEL_12:
  v48 = v86;
  v47 = v87;
  v49 = v85;
  v50 = v83;
  v51 = v82;
  sub_1A793D5A8();
  v52 = sub_1A793DB98();
  v53 = v92 + 8;
  v54 = *(v92 + 8);
  v54(v51, v50);
  if (v52 == 1)
  {
    v55 = v76;
    v92 = v53;
    sub_1A793D5A8();
    v56 = v77;
    sub_1A793DBC8();
    v54(v55, v50);
    v57 = AssociatedTypeWitness;
    v58 = *(AssociatedTypeWitness - 8);
    result = (*(v58 + 48))(v56, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v94 = v57;
      v95 = swift_getAssociatedConformanceWitness();
      v59 = __swift_allocate_boxed_opaque_existential_1(v93);
      v60 = (*(v58 + 32))(v59, v56, v57);
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v60 = sub_1A78C7370(v49, v47, *(*(*(*(v48 + 8) + 8) + 8) + 8));
  v94 = MEMORY[0x1E6969080];
  v95 = MEMORY[0x1E6969078];
  v93[0] = v60;
  v93[1] = v61;
LABEL_16:
  MEMORY[0x1EEE9AC00](v60);
  *(&v71 - 4) = v96;
  *(&v71 - 3) = v93;
  *(&v71 - 2) = v80;
  v62 = v81;
  sub_1A7924E08(sub_1A7911DE4);
  if (v62)
  {

    __swift_destroy_boxed_opaque_existential_1(v93);
    result = __swift_destroy_boxed_opaque_existential_1(v96);
    *a11 = v62;
  }

  else
  {
    v63 = v99;
    swift_beginAccess();
    v64 = *(v63 + 16);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    v66 = v71;
    *v71 = sub_1A78DA2BC;
    *(v66 + 8) = v65;
    (*(v72 + 104))(v66, *MEMORY[0x1E6969028], v73);

    v67 = sub_1A78DA2C4(v63 + 32, v64, v66);
    v69 = v68;

    v70 = v74;
    *v74 = v67;
    v70[1] = v69;
    __swift_destroy_boxed_opaque_existential_1(v93);
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  return result;
}

uint64_t sub_1A79110FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_11;
  }

  result = ccmldsa_sign_with_context();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A791121C@<X0>(uint64_t result@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  if (result)
  {
    return sub_1A7911264(a3, a5, &v7, x8_0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7911264@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X5>, uint64_t *a5@<X8>)
{
  result = (*(a3 + 8))(a2, a3);
  if (!result)
  {
    goto LABEL_11;
  }

  result = ccmldsa_pubkey_nbytes_params();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = result;
  if (result)
  {
    v9 = sub_1A793DB28();
    *(v9 + 16) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = ccmldsa_export_pubkey();
  if (v10)
  {
    v11 = v10;
    sub_1A78D6484();
    v12 = swift_allocError();
    *v13 = v11;
    *(v13 + 4) = 0;
    swift_willThrow();
    *(v9 + 16) = v8;

    *a4 = v12;
  }

  else
  {
    *(v9 + 16) = v8;
    v14 = sub_1A78C0DCC(v9);
    v16 = v15;

    *a5 = v14;
    a5[1] = v16;
  }

  return result;
}

char *sub_1A7911390(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a1;
  if (result)
  {
    result = sub_1A79113F8(result, a3, a5, a6, a7, a8, &v12);
    if (!v8)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79113F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = a7;
  v42 = a2;
  v38 = a1;
  swift_getAssociatedTypeWitness();
  v37 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v34 = &v34 - v13;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  result = (*(a5 + 8))(a3, a5, v19);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  ccmldsa_full_ctx_init();
  sub_1A793D5A8();
  v23 = sub_1A793DB98();
  v24 = *(v15 + 8);
  v24(v21, v14);
  if (v23 == 1)
  {
    sub_1A793D5A8();
    v25 = v34;
    sub_1A793DBC8();
    v24(v17, v14);
    v26 = *(AssociatedTypeWitness - 8);
    result = (*(v26 + 48))(v25, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v40 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(v26 + 32))(boxed_opaque_existential_1, v25, AssociatedTypeWitness);
      v28 = v40;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v29 = sub_1A78C7370(v42, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
  v28 = MEMORY[0x1E6969080];
  v40 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v39[0] = v29;
  v39[1] = v30;
LABEL_6:
  v31 = v38;
  v32 = __swift_project_boxed_opaque_existential_1(v39, v28);
  MEMORY[0x1EEE9AC00](v32);
  *(&v34 - 2) = v31;
  v33 = v36;
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v39);
  if (v33)
  {
    *v35 = v33;
  }

  return result;
}

uint64_t sub_1A79117CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_7;
  }

  result = ccmldsa_derive_key_from_seed();
  if (result)
  {
    v4 = result;
    sub_1A78D6484();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1A79118F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 8))(a2, a4);
  if (result)
  {
    v5 = ccmldsa_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v5);
    return sub_1A78C05E8(v6, sub_1A7911F48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79119AC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v25 = *a2;
  v26 = a2[1];
  v10 = *(a2 + 32);
  v11 = sub_1A790FA90(a1, a3, a4, a5, a6);
  if (v6)
  {
    return v10;
  }

  v13 = v11;
  v14 = v12;
  result = ccsha3_256_di();
  if (result)
  {
    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v18 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v16;
    *(inited + 24) = v18;
    *&v28 = inited;
    sub_1A78C0990(v13, v14);
    sub_1A791D828(v13, v14, &v28);
    sub_1A78C0AFC(v13, v14);
    sub_1A78BD4B0(&v31);

    v19 = v31;
    v20 = v32;
    if ((v10 & 1) != 0 || (v31 = v25, v32 = v26, v28 = v19, v29 = v20, sub_1A78CBAB0(&v28, &v30, &v31, v33, &v27), v27))
    {
      *(&v32 + 1) = &type metadata for SHA3_256Digest;
      v33[0] = sub_1A790CAC0();
      v21 = swift_allocObject();
      *&v31 = v21;
      *(v21 + 16) = v19;
      *(v21 + 32) = v20;
      v22 = __swift_project_boxed_opaque_existential_1(&v31, &type metadata for SHA3_256Digest);
      v23 = v22[1];
      v28 = *v22;
      v29 = v23;
      sub_1A793D698();
      swift_allocObject();
      sub_1A793D638();
      __swift_destroy_boxed_opaque_existential_1(&v31);
      v10 = sub_1A78C7370(a1, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
      sub_1A78C0AFC(v13, v14);
    }

    else
    {
      sub_1A78D6484();
      swift_allocError();
      *v24 = 4;
      *(v24 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v13, v14);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7911C54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0uLL;
  v12 = a3 >> 60;
  if (a3 >> 60 == 15)
  {
    v13 = 0uLL;
  }

  else
  {
    v21 = a7;
    v22 = a1;
    result = ccsha3_256_di();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v19 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    v26 = inited;
    sub_1A78C0990(a2, a3);
    sub_1A791D828(a2, a3, &v26);
    sub_1A78CEEC8(a2, a3);
    sub_1A78BD4B0(&v23);

    v11 = v23;
    v13 = v24;
    a7 = v21;
    a1 = v22;
  }

  v23 = v11;
  v24 = v13;
  v25 = v12 > 0xE;
  result = sub_1A79119AC(a1, &v23, a4, a5, a6, a7);
  if (v7)
  {
    return v20;
  }

  return result;
}

uint64_t MessageAuthenticationCode.makeIterator()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71E8, &qword_1A79404D0);
  sub_1A793D6A8();
  return v2;
}

uint64_t MessageAuthenticationCode.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A793DFB8();
  v20 = v7;
  MEMORY[0x1AC55D280](8250, 0xE200000000000000);
  (*(v4 + 16))(v6, v2, a1);
  result = sub_1A793DB38();
  v9 = *(result + 16);
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = 2 * v9;
  if (2 * v9 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = result;
  if (v9)
  {
    v12 = sub_1A793DB28();
    *(v12 + 16) = v10;
    bzero((v12 + 32), v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  v18 = v12;
  sub_1A793DB18();
  sub_1A78DD23C(v11, &v18, &v17);

  v13 = sub_1A793D998();
  v15 = v14;

  MEMORY[0x1AC55D280](v13, v15);

  return v19;
}

char *sub_1A7912214@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  if (!result || (v5 = result, v6 = a2 - result, a2 == result) || (v4 = sub_1A78BDC10(a2 - result, 0), result = sub_1A78E259C(v4 + 4, v6, v5, v6), v7 == v6))
  {
    *a3 = v4;
    a3[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CryptoKitError.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1AC55D830](v2);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    return sub_1A793DF98();
  }
}

uint64_t CryptoKitError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1A793DF58();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1AC55D830](v3);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    sub_1A793DF98();
  }

  return sub_1A793DFA8();
}

uint64_t sub_1A7912410()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1AC55D830](v2);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    return sub_1A793DF98();
  }
}

uint64_t sub_1A79124AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1A793DF58();
  if (v3 == 1)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v4 = 4;
      }

      else if (v2 == 4)
      {
        v4 = 5;
      }

      else
      {
        v4 = 6;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1AC55D830](v4);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    sub_1A793DF98();
  }

  return sub_1A793DFA8();
}

uint64_t CryptoKitASN1Error.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

BOOL _s9CryptoKit0aB5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_1A79126BC()
{
  result = qword_1EB2A7800;
  if (!qword_1EB2A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7800);
  }

  return result;
}

unint64_t sub_1A7912714()
{
  result = qword_1EB2A7808;
  if (!qword_1EB2A7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7808);
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

uint64_t getEnumTagSinglePayload for CryptoKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1A79127C8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A79127E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitASN1Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoKitASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RSAPSSSPKIErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RSAPSSSPKIErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A7912AB8()
{
  result = qword_1EB2A7810;
  if (!qword_1EB2A7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7810);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = sub_1A791F1D0(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

unint64_t sub_1A7912BB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A78C6074(0x20uLL);
  *a1 = result;
  return result;
}

unint64_t Curve25519.KeyAgreement.PrivateKey.rawRepresentation.getter()
{
  v1 = sub_1A793D6F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *v4 = sub_1A78DA2BC;
  v4[1] = v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969028], v1);

  return sub_1A78DA2C4(v5 + 32, v6, v4);
}

void *sub_1A7912D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A78C65E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A7912D50@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;

  sub_1A793DB18();
  v7 = sub_1A78CA924(0x20uLL, v6, v5);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1A7912DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A79131DC(*a1, a1[1]);

  v5 = (2 * v3[2]) | 1;
  *a2 = v3;
  a2[1] = (v3 + 4);
  a2[2] = 0;
  a2[3] = v5;
  return result;
}

unint64_t sub_1A7912E58()
{
  result = qword_1EB2A7818;
  if (!qword_1EB2A7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7818);
  }

  return result;
}

unint64_t sub_1A7912EBC()
{
  result = qword_1EB2A7820;
  if (!qword_1EB2A7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7820);
  }

  return result;
}

unint64_t sub_1A7912F20()
{
  result = qword_1EB2A7828;
  if (!qword_1EB2A7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7828);
  }

  return result;
}

unint64_t sub_1A7912F78()
{
  result = qword_1EB2A7830;
  if (!qword_1EB2A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7830);
  }

  return result;
}

unint64_t sub_1A7912FD0()
{
  result = qword_1EB2A7838;
  if (!qword_1EB2A7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7838);
  }

  return result;
}

unint64_t sub_1A7913028()
{
  result = qword_1EB2A7840;
  if (!qword_1EB2A7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7840);
  }

  return result;
}

unint64_t sub_1A7913080()
{
  result = qword_1EB2A7848;
  if (!qword_1EB2A7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7848);
  }

  return result;
}

unint64_t sub_1A79130D8()
{
  result = qword_1EB2A7850;
  if (!qword_1EB2A7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7850);
  }

  return result;
}

unint64_t sub_1A7913130()
{
  result = qword_1EB2A7858;
  if (!qword_1EB2A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7858);
  }

  return result;
}

unint64_t sub_1A7913188()
{
  result = qword_1EB2A7860;
  if (!qword_1EB2A7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7860);
  }

  return result;
}

void *sub_1A79131DC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A78BDC10(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A793DE48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A793D9D8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A78BDC10(v10, 0);
        result = sub_1A793DDF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1A7913360()
{
  result = qword_1EB2A7868;
  if (!qword_1EB2A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7868);
  }

  return result;
}

unint64_t sub_1A79133B8()
{
  result = qword_1EB2A7870;
  if (!qword_1EB2A7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7870);
  }

  return result;
}

unint64_t sub_1A7913410()
{
  result = qword_1EB2A7878;
  if (!qword_1EB2A7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7878);
  }

  return result;
}

unint64_t sub_1A7913468()
{
  result = qword_1EB2A7880;
  if (!qword_1EB2A7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7880);
  }

  return result;
}

unint64_t sub_1A79134C0()
{
  result = qword_1EB2A7888;
  if (!qword_1EB2A7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7888);
  }

  return result;
}

uint64_t sub_1A7913548()
{
  result = sub_1A78D90E8(6514035, 0xE300000000000000);
  qword_1EB2A7890 = result;
  *algn_1EB2A7898 = v1;
  return result;
}

uint64_t HPKE.Sender.encapsulatedKey.getter()
{
  v1 = *(v0 + 64);
  sub_1A78C0990(v1, *(v0 + 72));
  return v1;
}

uint64_t HPKE.Sender.exportSecret<A>(context:outputByteCount:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a3;
    v7 = a2;
    v10 = a5;
    v27 = a4;
    v5 = *(v6 + 40);
    v8 = *(v6 + 41);
    v9 = *(v6 + 42);
    v30 = *(v6 + 32);
    v12 = qword_1EB2A6DD0;

    if (v12 == -1)
    {
      if (!(v7 >> 16))
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  swift_once();
  if (v7 >> 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  v26 = v10;
  if (qword_1EB2A6CA8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v28 = qword_1EB2A6CB0;
  v29 = *algn_1EB2A6CB8;
  v13 = qword_1A79441C0[v5];
  sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
  v14 = sub_1A78FE770(v13, 2);
  v16 = v15;
  sub_1A793D808();
  sub_1A78C0AFC(v14, v16);
  v17 = sub_1A78FE770(v8 + 1, 2);
  v19 = v18;
  sub_1A793D808();
  sub_1A78C0AFC(v17, v19);
  v20 = sub_1A78FE770(qword_1A79441E8[v9], 2);
  v22 = v21;
  sub_1A793D808();
  sub_1A78C0AFC(v20, v22);
  v23 = v28;
  v24 = v29;
  LOBYTE(v28) = v8;
  sub_1A791535C(&v30, v7, &v28, v26, v11, v27);
  sub_1A78C0AFC(v23, v24);
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *x8_0@<X8>)
{
  return sub_1A79137F4(a1, a3, a4, a5, a6, sub_1A78EE95C, x8_0);
}

{
  return sub_1A79137F4(a1, a3, a4, a5, a6, sub_1A78EEDAC, x8_0);
}

uint64_t sub_1A79137F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(_OWORD *__return_ptr, __int16 *, void, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X6>, _OWORD *a7@<X8>)
{
  v25 = a6;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 2);
  v29 = *v18;
  v30 = v19;
  v26 = 0;
  (*(v14 + 16))(v17, a1, v20, v15);
  v25(v27, &v29, 0, &v26, 0, 0xF000000000000000, v17, a2, a3, a4, a5, v25);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    v22 = v27[1];
    *a7 = v27[0];
    a7[1] = v22;
    v23 = v27[2];
    v24 = v28;
    a7[3] = v28;
    a7[4] = v24;
    a7[2] = v23;
    return sub_1A78C0990(v24, *(&v24 + 1));
  }

  return result;
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:presharedKey:presharedKeyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, uint64_t a8)
{
  v30 = a3;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 2);
  v21 = *v20;
  v35 = *v18;
  v36 = v19;
  v32 = v21;
  (*(v14 + 16))(v17, a1, v22, v15);
  sub_1A78C0990(a4, a5);
  v23 = v31;
  v24 = sub_1A78EE95C(&v35, 1u, &v32, a4, a5, v17, a2, v30, v33, a6, a8);
  (*(v14 + 8))(a1, a6, v24);
  result = sub_1A78C0AFC(a4, a5);
  if (!v23)
  {
    v26 = v33[1];
    *a7 = v33[0];
    a7[1] = v26;
    v27 = v33[2];
    v28 = v34;
    a7[3] = v34;
    a7[4] = v28;
    a7[2] = v27;
    return sub_1A78C0990(v28, *(&v28 + 1));
  }

  return result;
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:authenticatedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v33 = a4;
  v31 = a5;
  v32 = a3;
  v30 = a8;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v30 - v18;
  LOWORD(v18) = *a2;
  v20 = *(a2 + 2);
  v21 = a1;
  v22 = v31;
  v38 = v18;
  v39 = v20;
  v35 = 0;
  (*(v16 + 16))(v19, v21, AssociatedTypeWitness, v17);
  (*(v12 + 16))(v14, v22, a6);
  v23 = v34;
  v24 = sub_1A78EEFD0(&v38, 2u, &v35, 0, 0xF000000000000000, v19, v32, v33, v36, v14, a6, a7);
  (*(v12 + 8))(v22, a6, v24);
  if (v23)
  {
    return (*(v16 + 8))(v21, AssociatedTypeWitness);
  }

  (*(v16 + 8))(v21, AssociatedTypeWitness);
  v26 = v36[1];
  v27 = v30;
  *v30 = v36[0];
  v27[1] = v26;
  v28 = v36[2];
  v29 = v37;
  v27[3] = v37;
  v27[4] = v29;
  v27[2] = v28;
  return sub_1A78C0990(v29, *(&v29 + 1));
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:authenticatedBy:presharedKey:presharedKeyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v36 = a7;
  v37 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a3;
  v32 = a9;
  v13 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v31 - v19;
  LOWORD(v19) = *a2;
  v21 = *(a2 + 2);
  v22 = v33;
  v23 = *v34;
  v43 = v19;
  v44 = v21;
  v40 = v23;
  (*(v17 + 16))(v20, a1, AssociatedTypeWitness, v18);
  (*(v13 + 16))(v15, v22, a10);
  v24 = v39;
  v25 = sub_1A78EEFD0(&v43, 3u, &v40, v36, v38, v20, v35, v37, v41, v15, a10, a11);
  (*(v13 + 8))(v22, a10, v25);
  if (v24)
  {
    return (*(v17 + 8))(a1, AssociatedTypeWitness);
  }

  (*(v17 + 8))(a1, AssociatedTypeWitness);
  v27 = v41[1];
  v28 = v32;
  *v32 = v41[0];
  v28[1] = v27;
  v29 = v41[2];
  v30 = v42;
  v28[3] = v42;
  v28[4] = v30;
  v28[2] = v29;
  return sub_1A78C0990(v30, *(&v30 + 1));
}

uint64_t HPKE.Sender.seal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_1A793F230;
  v6 = sub_1A78CA3EC();
  v7 = sub_1A78D43CC(a1, &v9, a2, MEMORY[0x1E6969080], a3, v6);
  sub_1A78C0AFC(v9, *(&v9 + 1));
  return v7;
}

uint64_t HPKE.Recipient.exportSecret<A>(context:outputByteCount:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a3;
    v7 = a2;
    v10 = a5;
    v27 = a4;
    v5 = *(v6 + 40);
    v8 = *(v6 + 41);
    v9 = *(v6 + 42);
    v30 = *(v6 + 32);
    v12 = qword_1EB2A6DD0;

    if (v12 == -1)
    {
      if (!(v7 >> 16))
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  swift_once();
  if (v7 >> 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  v26 = v10;
  if (qword_1EB2A6CA8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v28 = qword_1EB2A6CB0;
  v29 = *algn_1EB2A6CB8;
  v13 = qword_1A79441C0[v5];
  sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
  v14 = sub_1A78FE770(v13, 2);
  v16 = v15;
  sub_1A793D808();
  sub_1A78C0AFC(v14, v16);
  v17 = sub_1A78FE770(v8 + 1, 2);
  v19 = v18;
  sub_1A793D808();
  sub_1A78C0AFC(v17, v19);
  v20 = sub_1A78FE770(qword_1A79441E8[v9], 2);
  v22 = v21;
  sub_1A793D808();
  sub_1A78C0AFC(v20, v22);
  v23 = v28;
  v24 = v29;
  LOBYTE(v28) = v8;
  sub_1A791535C(&v30, v7, &v28, v26, v11, v27);
  sub_1A78C0AFC(v23, v24);
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  return sub_1A791433C(a1, a2, a3, a4, a5, a6, a7, a8, a9, &protocol requirements base descriptor for DiffieHellmanKeyAgreement, &associated type descriptor for DiffieHellmanKeyAgreement.PublicKey, sub_1A78EF7F4);
}

{
  return sub_1A791433C(a1, a2, a3, a4, a5, a6, a7, a8, a9, &protocol requirements base descriptor for KEMPrivateKey, &associated type descriptor for KEMPrivateKey.PublicKey, sub_1A78F003C);
}

double sub_1A791433C@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(_OWORD *__return_ptr, __int16 *, void, uint64_t, uint64_t, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v37 = a6;
  v33 = a9;
  v34 = a3;
  v35 = a12;
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  v21 = *(a7 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 2);
  v43 = *a2;
  v44 = v26;
  v39 = 0;
  (*(v21 + 16))(v25, a1, a7, v23);
  (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1, AssociatedTypeWitness);
  v27 = v38;
  v35(v40, &v43, 0, v36, v37, &v39, 0, 0xF000000000000000, v25, v34, a4, v20, a7, a8);
  (*(v21 + 8))(a1, a7);
  if (!v27)
  {
    v29 = v40[1];
    v30 = v33;
    *v33 = v40[0];
    v30[1] = v29;
    result = *&v41;
    v31 = v42;
    v30[2] = v41;
    v30[3] = v31;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:presharedKey:presharedKeyIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a6;
  v34 = a7;
  v35 = a1;
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v33 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = *(a11 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v21) = *a2;
  v23 = *(a2 + 2);
  v24 = v35;
  v25 = *v34;
  v45 = v21;
  v46 = v23;
  v41 = v25;
  (*(v18 + 16))(v22, v35, a11, v20);
  (*(*(AssociatedTypeWitness - 8) + 56))(v17, 1, 1, AssociatedTypeWitness);
  sub_1A78C0990(a8, a10);
  v26 = v40;
  v27 = sub_1A78EF7F4(&v45, 1u, v38, v39, &v41, a8, a10, v22, v42, v37, v36, v17, a11, a12);
  (*(v18 + 8))(v24, a11, v27);
  sub_1A78C0AFC(a8, a10);
  if (!v26)
  {
    v29 = v42[1];
    v30 = v33;
    *v33 = v42[0];
    v30[1] = v29;
    result = *&v43;
    v31 = v44;
    v30[2] = v43;
    v30[3] = v31;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:authenticatedBy:)@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v37 = a6;
  v35 = a3;
  v36 = a5;
  v33 = a9;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = *(a8 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 2);
  v45 = *a2;
  v46 = v23;
  v40 = a1;
  v41 = 0;
  (*(v18 + 16))(v22, a1, a8, v20);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 16);
  v39 = a7;
  v25(v17, a7, AssociatedTypeWitness);
  (*(v24 + 56))(v17, 0, 1, AssociatedTypeWitness);
  v26 = v38;
  v27 = sub_1A78EF7F4(&v45, 2u, v36, v37, &v41, 0, 0xF000000000000000, v22, v42, v35, v34, v17, a8, a10);
  (*(v24 + 8))(v39, AssociatedTypeWitness, v27);
  (*(v18 + 8))(v40, a8);
  if (!v26)
  {
    v29 = v42[1];
    v30 = v33;
    *v33 = v42[0];
    v30[1] = v29;
    result = *&v43;
    v31 = v44;
    v30[2] = v43;
    v30[3] = v31;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:authenticatedBy:presharedKey:presharedKeyIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a6;
  v38 = a8;
  v39 = a4;
  v37 = a9;
  v42 = a10;
  v43 = a5;
  v40 = a3;
  v41 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  v20 = *(a12 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v23) = *a2;
  v25 = *(a2 + 2);
  v26 = a1;
  v27 = a7;
  v28 = *v38;
  v50 = v23;
  v51 = v25;
  v46 = v28;
  (*(v20 + 16))(v24, v26, a12, v22);
  v29 = *(AssociatedTypeWitness - 8);
  (*(v29 + 16))(v19, v27, AssociatedTypeWitness);
  (*(v29 + 56))(v19, 0, 1, AssociatedTypeWitness);
  v30 = v45;
  v31 = sub_1A78EF7F4(&v50, 3u, v43, v44, &v46, v42, v41, v24, v47, v40, v39, v19, a12, a13);
  (*(v29 + 8))(v27, AssociatedTypeWitness, v31);
  (*(v20 + 8))(v26, a12);
  if (!v30)
  {
    v33 = v47[1];
    v34 = v37;
    *v37 = v47[0];
    v34[1] = v33;
    result = *&v48;
    v35 = v49;
    v34[2] = v48;
    v34[3] = v35;
  }

  return result;
}

char *HPKE.Recipient.open<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_1A793F230;
  v6 = sub_1A78CA3EC();
  v7 = sub_1A78D4754(a1, &v9, a2, MEMORY[0x1E6969080], a3, v6);
  sub_1A78C0AFC(v9, *(&v9 + 1));
  return v7;
}

uint64_t sub_1A7914DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7914E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1A7914EA4()
{
  v0 = sub_1A793DB28();
  *(v0 + 16) = 57;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 73) = 0u;
  if (!ccrng())
  {
LABEL_5:
    __break(1u);
  }

  if (cced448_make_pub())
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = sub_1A79151BC(v0);

  return v1;
}

uint64_t sub_1A7914FA4(uint64_t *a1, void *a2, char **a3)
{
  if (!ccrng())
  {
    goto LABEL_8;
  }

  if (!*a1)
  {
    goto LABEL_9;
  }

  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A78C57C4(0, *(v6 + 2), 0, v6);
  }

  *a3 = v6;
  result = cced448_make_key_pair();
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  *a2 = 57;
  return result;
}

uint64_t sub_1A7915098(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 57)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_1A7915104@<X0>(const void *a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (a1 && a2 - a1 == 57)
  {
    result = sub_1A78BDC10(57, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      result = memmove(result + 32, a1, 0x39uLL);
      *a3 = v7;
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 0;
    *(v8 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void *sub_1A79151BC(uint64_t a1)
{
  if (*(a1 + 16) == 57)
  {
    v1 = sub_1A78BDC10(57, 0);
    memmove(v1 + 4, (a1 + 32), 0x39uLL);
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v3 = 0;
    *(v3 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1A7915254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A793D6A8();
  if (!v3)
  {
    return sub_1A78C2B3C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1A79152D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  result = sub_1A793D6A8();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1A791535C@<X0>(uint64_t *a1@<X0>, unsigned __int16 a5@<W4>, unsigned __int8 *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = *a1;
  v12 = *a8;
  v23 = sub_1A78FE770(a5, 2);
  v24 = v13;
  if (qword_1EB2A6CE8 != -1)
  {
    swift_once();
  }

  sub_1A793D808();
  sub_1A793D808();
  sub_1A793D808();
  sub_1A793D7F8();
  v14 = v23;
  v15 = v24;
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1A78CF840(v19, v23, v24, a5, &v22);
    }

    else
    {
      sub_1A78CFC48(v19, v23, v24, a5, &v22);
    }
  }

  else
  {
    sub_1A78CF454(v19, v23, v24, a5, &v22);
  }

  v16 = v22;
  swift_beginAccess();
  sub_1A78C2BF8(v16 + 32, v16 + 32 + *(v16 + 16), &v21);
  v17 = v21;

  *a9 = v17;
  return sub_1A78C0AFC(v14, v15);
}

uint64_t sub_1A7915500()
{
  result = sub_1A78D90E8(0x31762D454B5048, 0xE700000000000000);
  qword_1EB2A6CF0 = result;
  *algn_1EB2A6CF8 = v1;
  return result;
}

uint64_t sub_1A7915538()
{
  result = sub_1A78D90E8(0x6B72705F656165, 0xE700000000000000);
  qword_1EB2A6D38 = result;
  unk_1EB2A6D40 = v1;
  return result;
}

uint64_t sub_1A7915570()
{
  result = sub_1A78D90E8(0x735F646572616873, 0xED00007465726365);
  qword_1EB2A6CD0 = result;
  *algn_1EB2A6CD8 = v1;
  return result;
}

uint64_t sub_1A79155B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v6, v4);
  sub_1A793D6A8();
  v7 = v9[2];
  (*(v3 + 8))(v6, a2);
  return v7;
}

unint64_t sub_1A79156D8()
{
  result = qword_1EB2A78A0;
  if (!qword_1EB2A78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7108, &unk_1A7946860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78A0);
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13)
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  else
  {
    v16 = v9;
    (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v11);
    P256.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v16 = v18;
    }
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1)
  {
    sub_1A78D4960();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = ccec_export_pub_size((*v1 + 32));
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    ccec_export_pub();
    *(v5 + 16) = v4;
    v6 = sub_1A78C0DCC(v5);

    return v6;
  }
}

uint64_t sub_1A79159EC(_BYTE *a1)
{
  if (*a1)
  {
    sub_1A78D4960();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = ccec_export_pub_size((*v1 + 32));
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    ccec_export_pub();
    *(v5 + 16) = v4;
    v6 = sub_1A78C0DCC(v5);

    return v6;
  }
}

uint64_t P384.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13 == 1)
  {
    v14 = v9;
    (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v11);
    P384.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v14 = v18;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t P384.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7915D60(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7915E4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size();
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7915ED8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size();
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t P521.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13 == 2)
  {
    v14 = v9;
    (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v11);
    P521.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v14 = v18;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t P521.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7916198(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
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

uint64_t sub_1A79162D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1A791631C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A791638C()
{
  result = qword_1EB2A78A8;
  if (!qword_1EB2A78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78A8);
  }

  return result;
}

uint64_t sub_1A79163E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A793DD78();
  result = sub_1A793DE68();
  v4 = v2 - result;
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(v4, 7);
    v6 = v4 + 7;
    if (!v5)
    {
      return v6 / 8;
    }
  }

  __break(1u);
  return result;
}

void sub_1A791644C(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = *(a1 + 4);
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v23 = v6;
  sub_1A78BF874(v24);
  v8 = v28;
  if (v28 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v12 = 64;
  }

  else if (a3 == 2)
  {
    v12 = 128;
  }

  else
  {
    v12 = 192;
  }

  if (v24[0] != (v12 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v13 = *(&v21 + 1);
  v14 = v23;
  *a1 = v21;
  *(a1 + 1) = v13;
  a1[1] = v22;
  *(a1 + 4) = v14;
  if (v8)
  {
LABEL_20:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_21;
  }

  v18 = v9;
  v19 = v10;
  v20 = v11;
  sub_1A78BF874(v29);
  if (v29[48] == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v24, v17, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  sub_1A78BF874(v30);
  v15 = v30[48];
  swift_unknownObjectRetain();
  if (v15 != 255)
  {
    sub_1A78BF9FC(v24, v17, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v30, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v29, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78C2ADC(v29, &qword_1EB2A6F38, &qword_1A793F4B0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1A791674C(__int128 *a1, unint64_t a2, unsigned __int8 a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(&v26 + 1);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
LABEL_21:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 128;
    }

    else
    {
      v14 = 192;
    }

LABEL_10:
    if (BYTE1(v26) != (v14 | a2 | 0x20))
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
      return;
    }

    v15 = *(&v23 + 1);
    v16 = v25;
    *a1 = v23;
    *(a1 + 1) = v15;
    a1[1] = v24;
    *(a1 + 4) = v16;
    if ((v10 & 1) == 0)
    {
      v20 = v11;
      v21 = v12;
      v22 = v13;
      sub_1A78BF874(v31);
      if (v32 == 255)
      {
        swift_unknownObjectRetain();
        sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
      }

      else
      {
        v34[0] = v31[0];
        v34[1] = v31[1];
        v34[2] = v31[2];
        v35 = v32;
        sub_1A78BF874(v33);
        v17 = v33[48];
        swift_unknownObjectRetain();
        if (v17 == 255)
        {
          sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
          a4(&v26, v34);
          sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
          sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
          goto LABEL_19;
        }

        sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
      }

      sub_1A78D6B80();
      swift_allocError();
      *v18 = 3;
      swift_willThrow();
      sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_19:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_21;
  }

  if (a3 == 1)
  {
    v14 = 64;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
}

void sub_1A7916A60(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  v27 = v8;
  sub_1A78BF874(v28);
  v10 = v32;
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
LABEL_25:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_26;
  }

  v11 = v29;
  v12 = v30;
  v13 = v31;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 128;
    }

    else
    {
      v14 = 192;
    }

LABEL_10:
    if (v28[0] != (v14 | a2 | 0x20))
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
      return;
    }

    v15 = *(&v25 + 1);
    v16 = v27;
    *a1 = v25;
    *(a1 + 1) = v15;
    a1[1] = v26;
    *(a1 + 4) = v16;
    if ((v10 & 1) == 0)
    {
      v22 = v11;
      v23 = v12;
      v24 = v13;
      sub_1A78BF874(v33);
      if (v34 == 255)
      {
        swift_unknownObjectRetain();
        sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
        goto LABEL_17;
      }

      v36[0] = v33[0];
      v36[1] = v33[1];
      v36[2] = v33[2];
      v37 = v34;
      sub_1A78BF874(v35);
      v17 = v35[48];
      swift_unknownObjectRetain();
      if (v17 != 255)
      {
        sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v35, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
        sub_1A78D6B80();
        swift_allocError();
        *v18 = 3;
        swift_willThrow();
LABEL_18:
        sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
      sub_1A78BF9FC(v33, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
      sub_1A791FBE0(v36, 2u);
      if (!v4)
      {
        if (v19 == 48)
        {
          sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
          sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        sub_1A791C0F8();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
      }

      sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (a3 == 1)
  {
    v14 = 64;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

void sub_1A7916DD4(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_1A78BF874(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_1A78BF874(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78BFB00(v34, 6u);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1A79170A0(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_1A78BF874(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_1A78BF874(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78C5B9C(v34, 3u);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1A7917390()
{
  sub_1A793DE28();

  v0 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v0);

  MEMORY[0x1AC55D280](41, 0xE100000000000000);
  MEMORY[0x1AC55D280](0x6E656449314E5341, 0xEF28726569666974);
}

uint64_t sub_1A791745C()
{
  sub_1A793DF88();
  MEMORY[0x1AC55D830](v0[1]);
  if (!v0[2])
  {
    return sub_1A793DF88();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1A793DF88();
  v4 = v2 >> 1;
  result = (v2 >> 1) - v1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x1AC55D830](result);
  v6 = __OFSUB__(v4, v1);
  v7 = v4 - v1;
  if (!v7)
  {
    return result;
  }

  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v3 + v1;
  do
  {
    ++v8;
    result = sub_1A793DF88();
    --v7;
  }

  while (v7);
  return result;
}

uint64_t sub_1A79174FC()
{
  sub_1A793DF58();
  sub_1A791745C();
  return sub_1A793DFA8();
}

uint64_t sub_1A791758C(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A791745C();
  return sub_1A793DFA8();
}

uint64_t sub_1A79175DC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1A791B224(v7, v8) & 1;
}

uint64_t sub_1A7917624()
{
  sub_1A793DE28();
  MEMORY[0x1AC55D280](0xD000000000000020, 0x80000001A7950360);
  sub_1A7917390();
  MEMORY[0x1AC55D280](0x3A6874706564202CLL, 0xE900000000000020);
  v1 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v1);

  result = MEMORY[0x1AC55D280](0x794261746164202CLL, 0xED0000203A736574);
  if (v0[2] && __OFSUB__(v0[5] >> 1, v0[4]))
  {
    __break(1u);
  }

  else
  {
    v3 = sub_1A793DEA8();
    MEMORY[0x1AC55D280](v3);

    MEMORY[0x1AC55D280](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_1A79177B4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A791B6C0(v5, v1, v2, v3);
  return sub_1A793DFA8();
}

uint64_t sub_1A791781C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1A793DF58();
  sub_1A791B6C0(v6, v2, v3, v4);
  return sub_1A793DFA8();
}

double sub_1A7917890@<D0>(uint64_t a1@<X8>)
{
  sub_1A78BF874(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1A79178DC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *sub_1A79178F0()
{
  v1 = sub_1A791B3C0(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  return v1;
}

unint64_t sub_1A791796C()
{
  result = qword_1EB2A78B0;
  if (!qword_1EB2A78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78B0);
  }

  return result;
}

unint64_t sub_1A79179C4()
{
  result = qword_1EB2A78B8;
  if (!qword_1EB2A78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78B8);
  }

  return result;
}

uint64_t sub_1A7917A4C(unint64_t a1, char **a2, char *a3)
{
  v5 = v3;
  LODWORD(v8) = a1;
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
      v11 = *(isUniquelyReferenced_nonNull_native + 24);
      v13 = v11 >> 1;
    }

    *(v9 + 2) = v14;
    v9[v12 + 32] = v8;
    v15 = v12 + 2;
    if (v13 < v15)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v11 > 1), v15, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    *(v9 + 2) = v15;
    v9[v14 + 32] = 0;
    *a2 = v9;
    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v9 = *a3;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v26 = v9;
    sub_1A791B7B0(6, a2, sub_1A78D6B64, &v25);
    if (v5)
    {

      v17 = *(a3 + 24);
      v27[0] = *(a3 + 8);
      v27[1] = v17;
      return sub_1A78C2ADC(v27, &qword_1EB2A6F30, &qword_1A793F4A8);
    }

    v8 = *(a3 + 1);
    if (v8)
    {
      v14 = *(a3 + 3);
      v19 = *(a3 + 4);
      v20 = *(a3 + 2);
      v21 = swift_unknownObjectRetain();
      sub_1A78C5A88(v21, v20, v14, v19);
    }

    a3 = *a2;
    v22 = *(*a2 + 2);
    v4 = v22 - v15;
    if ((v22 - v15) >= 128)
    {
      v28 = v8;
      if (v22 >= v15)
      {
        v8 = 71 - __clz(v4);
        v14 = v8 >> 3;
        sub_1A7919F9C(v8 >> 3, v15, v22);
        a3 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_14;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    a3 = sub_1A78F5C2C(a3);
LABEL_14:
    if (v16 >= *(a3 + 2))
    {
      __break(1u);
      goto LABEL_43;
    }

    v23 = v8;
    v24 = a3 + 32;
    a3[v16 + 32] = (v8 >> 3) | 0x80;
    *a2 = a3;
    LODWORD(v8) = v28;
    if (v15 < *(a3 + 2))
    {
      v24[v15] = v4 >> (8 * ((v14 - 1) & 7));
      if (v14 == 1)
      {
        goto LABEL_35;
      }

      if (v15 + 1 < *(a3 + 2))
      {
        v24[v15 + 1] = v4 >> (8 * ((v14 - 2) & 7));
        if (v14 == 2)
        {
          goto LABEL_35;
        }

        if (v15 + 2 < *(a3 + 2))
        {
          v24[v15 + 2] = v4 >> (8 * ((v14 - 3) & 7));
          if (v14 == 3)
          {
            goto LABEL_35;
          }

          if (v15 + 3 < *(a3 + 2))
          {
            v24[v15 + 3] = v4 >> (8 * ((v14 - 4) & 7));
            if (v14 == 4)
            {
              goto LABEL_35;
            }

            if (v15 + 4 < *(a3 + 2))
            {
              v24[v15 + 4] = v4 >> (8 * ((v14 - 5) & 7));
              if (v14 == 5)
              {
                goto LABEL_35;
              }

              if (v15 + 5 < *(a3 + 2))
              {
                v24[v15 + 5] = v4 >> (8 * ((v14 - 6) & 7));
                if (v14 == 6)
                {
                  goto LABEL_35;
                }

                if (v15 + 6 < *(a3 + 2))
                {
                  v24[v15 + 6] = v4 >> (8 * ((v14 - 7) & 7));
                  if (v14 == 7)
                  {
                    goto LABEL_35;
                  }

                  if (v15 + 7 < *(a3 + 2))
                  {
                    v24[v15 + 7] = v4 >> (v23 & 0x38);
LABEL_35:

                    result = swift_unknownObjectRelease();
                    *a2 = a3;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_37:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_33;
  }

LABEL_43:
  result = sub_1A78F5C2C(a3);
  a3 = result;
LABEL_33:
  if (v16 < *(a3 + 2))
  {
    a3[v16 + 32] = v4;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7917E1C(char a1, char **a2, uint64_t a3, unint64_t a4)
{
  v10 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  v10[v12 + 32] = a1;
  v15 = (v12 + 2);
  if (v13 < (v12 + 2))
  {
    v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
  }

  *(v10 + 2) = v15;
  v10[v14 + 32] = 0;
  *a2 = v10;
  v16 = v12 + 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  sub_1A79181FC(48, a2);
  if (v4)
  {
    return sub_1A78C0AFC(a3, a4);
  }

  sub_1A78C0990(a3, a4);
  v18 = sub_1A791EBC0(a3, a4);
  MEMORY[0x1EEE9AC00](v18);
  v25 = v19;
  v26 = v20;
  v27 = 0;
  v28 = v21;
  sub_1A791B7B0(3, a2, sub_1A791C264, &v24);

  v10 = *a2;
  v22 = *(*a2 + 2);
  v12 = v22 - v15;
  if ((v22 - v15) <= 127)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v22 < v15)
    {
      goto LABEL_37;
    }

    v5 = 71 - __clz(v12);
    v10 = (v5 >> 3);
    sub_1A7919F9C(v5 >> 3, v15, v22);
    v15 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v16 < *(v15 + 2))
    {
      v23 = v15 + 32;
      v15[v16 + 32] = (v5 >> 3) | 0x80;
      *a2 = v15;
      if (v16 + 1 < *(v15 + 2))
      {
        v23[v16 + 1] = v12 >> (8 * ((v10 - 1) & 7u));
        if (v10 == 1)
        {
          goto LABEL_30;
        }

        if (v16 + 2 < *(v15 + 2))
        {
          v23[v16 + 2] = v12 >> (8 * ((v10 - 2) & 7u));
          if (v10 == 2)
          {
            goto LABEL_30;
          }

          if (v16 + 3 < *(v15 + 2))
          {
            v23[v16 + 3] = v12 >> (8 * ((v10 - 3) & 7u));
            if (v10 == 3)
            {
              goto LABEL_30;
            }

            if (v16 + 4 < *(v15 + 2))
            {
              v23[v16 + 4] = v12 >> (8 * ((v10 - 4) & 7u));
              if (v10 == 4)
              {
                goto LABEL_30;
              }

              if (v16 + 5 < *(v15 + 2))
              {
                v23[v16 + 5] = v12 >> (8 * ((v10 - 5) & 7u));
                if (v10 == 5)
                {
                  goto LABEL_30;
                }

                if (v16 + 6 < *(v15 + 2))
                {
                  v23[v16 + 6] = v12 >> (8 * ((v10 - 6) & 7u));
                  if (v10 == 6)
                  {
                    goto LABEL_30;
                  }

                  if (v16 + 7 < *(v15 + 2))
                  {
                    v23[v16 + 7] = v12 >> (8 * ((v10 - 7) & 7u));
                    if (v10 == 7)
                    {
                      goto LABEL_30;
                    }

                    if (v16 + 8 < *(v15 + 2))
                    {
                      v23[v16 + 8] = v12 >> (v5 & 0x38);
LABEL_30:
                      result = sub_1A78C0AFC(a3, a4);
                      *a2 = v15;
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v15 = sub_1A78F5C2C(v15);
    }

    __break(1u);
  }

  result = sub_1A78F5C2C(v10);
  v10 = result;
LABEL_33:
  if (v16 >= *(v10 + 2))
  {
    __break(1u);
  }

  else
  {
    v10[v16 + 32] = v12;
    result = sub_1A78C0AFC(a3, a4);
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1A79181FC(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
    v9 = *(isUniquelyReferenced_nonNull_native + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 2) = v12;
  v7[v10 + 32] = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  *(v7 + 2) = v13;
  v7[v12 + 32] = 0;
  *a2 = v7;
  v14 = v10 + 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = &v20;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v19 = &unk_1F1A76DE8;
  result = sub_1A791B7B0(6, a2, sub_1A791C330, &v18);
  if (v2)
  {
    return result;
  }

  sub_1A791855C(48, a2);
  v4 = *a2;
  v16 = *(*a2 + 2);
  v10 = v16 - v13;
  if ((v16 - v13) > 127)
  {
    if (v16 < v13)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v10);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v13, v16);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v14 < *(v4 + 2))
    {
      v17 = v4 + 32;
      v4[v14 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v13 < *(v4 + 2))
      {
        v17[v13] = v10 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v13 + 1 < *(v4 + 2))
        {
          v17[v13 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v13 + 2 < *(v4 + 2))
          {
            v17[v13 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v13 + 3 < *(v4 + 2))
            {
              v17[v13 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v13 + 4 < *(v4 + 2))
              {
                v17[v13 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v13 + 5 < *(v4 + 2))
                {
                  v17[v13 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v13 + 6 < *(v4 + 2))
                  {
                    v17[v13 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v13 + 7 < *(v4 + 2))
                    {
                      v17[v13 + 7] = v10 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v14 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v14 + 32] = v10;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A791855C(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v7[v9 + 32] = a1;
  v12 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 2) = v12;
  v7[v11 + 32] = 0;
  *a2 = v7;
  v13 = v9 + 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1A7918880(160, a2);
  if (v2)
  {
    return result;
  }

  sub_1A7918B98(161, a2);
  sub_1A7918E9C(162, a2);
  v4 = *a2;
  v15 = *(*a2 + 2);
  v9 = v15 - v12;
  if ((v15 - v12) > 127)
  {
    if (v15 < v12)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v9);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v12, v15);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v13 < *(v4 + 2))
    {
      v16 = v4 + 32;
      v4[v13 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v12 < *(v4 + 2))
      {
        v16[v12] = v9 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v12 + 1 < *(v4 + 2))
        {
          v16[v12 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v12 + 2 < *(v4 + 2))
          {
            v16[v12 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v12 + 3 < *(v4 + 2))
            {
              v16[v12 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v12 + 4 < *(v4 + 2))
              {
                v16[v12 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v12 + 5 < *(v4 + 2))
                {
                  v16[v12 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v12 + 6 < *(v4 + 2))
                  {
                    v16[v12 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v12 + 7 < *(v4 + 2))
                    {
                      v16[v12 + 7] = v9 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v13 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v13 + 32] = v9;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A7918880(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = v6;
    v6 = v9 + 2;
    if (v10 < (v9 + 2))
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
    }

    *(v7 + 2) = v6;
    v7[v11 + 32] = 0;
    *a2 = v7;
    v12 = v9 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A7919568(48, a2, sub_1A791C330);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v9 = v14 - v6;
    if ((v14 - v6) > 127)
    {
      if (v14 >= v6)
      {
        v3 = 71 - __clz(v9);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v4[v12 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v15[v6] = v9 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v15[v6 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v15[v6 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v15[v6 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v15[v6 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v15[v6 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v15[v6 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v15[v6 + 7] = v9 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v12 < *(v4 + 2))
  {
    v4[v12 + 32] = v9;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7918B98(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = v6;
    v6 = v9 + 2;
    if (v10 < (v9 + 2))
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
    }

    *(v7 + 2) = v6;
    v7[v11 + 32] = 0;
    *a2 = v7;
    v12 = v9 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A79191F4(48, a2);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v9 = v14 - v6;
    if ((v14 - v6) > 127)
    {
      if (v14 >= v6)
      {
        v3 = 71 - __clz(v9);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v4[v12 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v15[v6] = v9 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v15[v6 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v15[v6 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v15[v6 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v15[v6 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v15[v6 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v15[v6 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v15[v6 + 7] = v9 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v12 < *(v4 + 2))
  {
    v4[v12 + 32] = v9;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7918E9C(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v9 = *(isUniquelyReferenced_nonNull_native + 24);
      v11 = v9 >> 1;
    }

    *(v7 + 2) = v12;
    v7[v10 + 32] = v6;
    v6 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    *(v7 + 2) = v6;
    v7[v12 + 32] = 0;
    *a2 = v7;
    v13 = v10 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = &v19;
    v20 = 48;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v18 = &v20;
    result = sub_1A791B7B0(2, a2, sub_1A791C14C, &v17);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v15 = *(*a2 + 2);
    v10 = v15 - v6;
    if ((v15 - v6) > 127)
    {
      if (v15 >= v6)
      {
        v3 = 71 - __clz(v10);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v15);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v13 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v16 = v4 + 32;
    v4[v13 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v16[v6] = v10 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v16[v6 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v16[v6 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v16[v6 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v16[v6 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v16[v6 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v16[v6 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v16[v6 + 7] = v10 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v13 < *(v4 + 2))
  {
    v4[v13 + 32] = v10;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79191F4(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
    v9 = *(isUniquelyReferenced_nonNull_native + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 2) = v12;
  v7[v10 + 32] = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  *(v7 + 2) = v13;
  v7[v12 + 32] = 0;
  *a2 = v7;
  v14 = v10 + 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = &v20;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v19 = &unk_1F1A76D90;
  result = sub_1A791B7B0(6, a2, sub_1A791C330, &v18);
  if (v2)
  {
    return result;
  }

  sub_1A7919568(48, a2, sub_1A791C330);
  v4 = *a2;
  v16 = *(*a2 + 2);
  v10 = v16 - v13;
  if ((v16 - v13) > 127)
  {
    if (v16 < v13)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v10);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v13, v16);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v14 < *(v4 + 2))
    {
      v17 = v4 + 32;
      v4[v14 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v13 < *(v4 + 2))
      {
        v17[v13] = v10 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v13 + 1 < *(v4 + 2))
        {
          v17[v13 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v13 + 2 < *(v4 + 2))
          {
            v17[v13 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v13 + 3 < *(v4 + 2))
            {
              v17[v13 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v13 + 4 < *(v4 + 2))
              {
                v17[v13 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v13 + 5 < *(v4 + 2))
                {
                  v17[v13 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v13 + 6 < *(v4 + 2))
                  {
                    v17[v13 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v13 + 7 < *(v4 + 2))
                    {
                      v17[v13 + 7] = v10 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v14 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v14 + 32] = v10;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A7919568(char a1, char **a2, unint64_t a3)
{
  v5 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    v12 = v10 >> 1;
    v13 = v11 + 1;
    if (v10 >> 1 <= v11)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v10 > 1), v11 + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
      v10 = *(isUniquelyReferenced_nonNull_native + 24);
      v12 = v10 >> 1;
    }

    *(v8 + 2) = v13;
    v8[v11 + 32] = v7;
    v7 = v11 + 2;
    if (v12 < (v11 + 2))
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v10 > 1), v11 + 2, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 2) = v7;
    v8[v13 + 32] = 0;
    *a2 = v8;
    v8 = (v11 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v18 = &unk_1F1A76C88;
    result = sub_1A791B7B0(6, a2, a3, &v17);
    if (v5)
    {
      return result;
    }

    v5 = *a2;
    v15 = *(*a2 + 2);
    v13 = v15 - v7;
    if ((v15 - v7) > 127)
    {
      if (v15 >= v7)
      {
        v11 = 71 - __clz(v13);
        a3 = v11 >> 3;
        sub_1A7919F9C(v11 >> 3, v7, v15);
        v5 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v5);
    v5 = result;
LABEL_11:
    if (v8 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v16 = v5 + 32;
    v8[(v5 + 32)] = (v11 >> 3) | 0x80;
    *a2 = v5;
    if (v7 < *(v5 + 2))
    {
      v16[v7] = v13 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v5 + 2))
      {
        v16[v7 + 1] = v13 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v5 + 2))
        {
          v16[v7 + 2] = v13 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v5 + 2))
          {
            v16[v7 + 3] = v13 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v5 + 2))
            {
              v16[v7 + 4] = v13 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v5 + 2))
              {
                v16[v7 + 5] = v13 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v5 + 2))
                {
                  v16[v7 + 6] = v13 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v5 + 2))
                  {
                    v16[v7 + 7] = v13 >> (v11 & 0x38);
LABEL_32:
                    *a2 = v5;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v5);
  v5 = result;
LABEL_30:
  if (v8 < *(v5 + 2))
  {
    v8[v5 + 32] = v13;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79198AC(unint64_t a1, char **a2, uint64_t a3)
{
  v9 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v9 = sub_1A78C57C4((v10 > 1), v11 + 1, 1, v9);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
  }

  *(v9 + 2) = v13;
  v9[v11 + 32] = a1;
  v14 = v11 + 2;
  if (v12 < v14)
  {
    v9 = sub_1A78C57C4((v10 > 1), v14, 1, v9);
  }

  *(v9 + 2) = v14;
  v9[v13 + 32] = 0;
  *a2 = v9;
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(a3 + 16);
  v28[0] = *a3;
  v28[1] = v16;
  v29 = *(a3 + 32);
  v31 = *&v28[0];
  v17 = *(a3 + 24);
  v30[0] = *(a3 + 8);
  v30[1] = v17;
  sub_1A78FF910(&v31, v27);
  sub_1A78BF9FC(v30, v27, &qword_1EB2A6F30, &qword_1A793F4A8);
  v18 = sub_1A7917A4C(0x30uLL, a2, v28);
  if (v3)
  {
    return sub_1A78C5F48(a3);
  }

  *&v20 = MEMORY[0x1EEE9AC00](v18);
  v25 = v21;
  v26 = v20;
  sub_1A791B7B0(3, a2, sub_1A791C0D8, &v24);
  v9 = *a2;
  v22 = *(*a2 + 2);
  v4 = v22 - v14;
  if ((v22 - v14) > 127)
  {
    if (v22 < v14)
    {
      goto LABEL_37;
    }

    v5 = 71 - __clz(v4);
    a1 = v5 >> 3;
    sub_1A7919F9C(v5 >> 3, v14, v22);
    v9 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v15 < *(v9 + 2))
    {
      v23 = v9 + 32;
      v9[v15 + 32] = (v5 >> 3) | 0x80;
      *a2 = v9;
      if (v14 < *(v9 + 2))
      {
        v23[v14] = v4 >> (8 * ((a1 - 1) & 7));
        if (a1 == 1)
        {
          goto LABEL_34;
        }

        if (v14 + 1 < *(v9 + 2))
        {
          v23[v14 + 1] = v4 >> (8 * ((a1 - 2) & 7));
          if (a1 == 2)
          {
            goto LABEL_34;
          }

          if (v14 + 2 < *(v9 + 2))
          {
            v23[v14 + 2] = v4 >> (8 * ((a1 - 3) & 7));
            if (a1 == 3)
            {
              goto LABEL_34;
            }

            if (v14 + 3 < *(v9 + 2))
            {
              v23[v14 + 3] = v4 >> (8 * ((a1 - 4) & 7));
              if (a1 == 4)
              {
                goto LABEL_34;
              }

              if (v14 + 4 < *(v9 + 2))
              {
                v23[v14 + 4] = v4 >> (8 * ((a1 - 5) & 7));
                if (a1 == 5)
                {
                  goto LABEL_34;
                }

                if (v14 + 5 < *(v9 + 2))
                {
                  v23[v14 + 5] = v4 >> (8 * ((a1 - 6) & 7));
                  if (a1 == 6)
                  {
                    goto LABEL_34;
                  }

                  if (v14 + 6 < *(v9 + 2))
                  {
                    v23[v14 + 6] = v4 >> (8 * ((a1 - 7) & 7));
                    if (a1 == 7)
                    {
                      goto LABEL_34;
                    }

                    if (v14 + 7 < *(v9 + 2))
                    {
                      v23[v14 + 7] = v4 >> (v5 & 0x38);
                      goto LABEL_34;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v9 = sub_1A78F5C2C(v9);
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v9);
    v9 = result;
  }

  if (v15 >= *(v9 + 2))
  {
    __break(1u);
  }

  else
  {
    v9[v15 + 32] = v4;
LABEL_34:
    result = sub_1A78C5F48(a3);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1A7919C8C(char a1, unint64_t a2, char *a3)
{
  v5 = v4;
  v6 = v3;
  LOBYTE(v9) = a1;
  v10 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = v9;
    v9 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
    }

    *(v10 + 2) = v9;
    v10[v14 + 32] = 0;
    *v6 = v10;
    v10 = (v12 + 1);
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = (a2)(v6);
    if (v5)
    {
      return result;
    }

    a3 = *v6;
    v16 = *(*v6 + 2);
    a2 = v16 - v9;
    if ((v16 - v9) > 127)
    {
      if (v16 >= v9)
      {
        v14 = 71 - __clz(a2);
        v5 = v14 >> 3;
        sub_1A7919F9C(v14 >> 3, v9, v16);
        a3 = *v6;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(a3);
    a3 = result;
LABEL_11:
    if (v10 >= *(a3 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v17 = a3 + 32;
    v10[(a3 + 32)] = (v14 >> 3) | 0x80;
    *v6 = a3;
    if (v9 < *(a3 + 2))
    {
      v17[v9] = a2 >> (8 * ((v5 - 1) & 7));
      if (v5 == 1)
      {
        goto LABEL_32;
      }

      if (v12 + 3 < *(a3 + 2))
      {
        v17[v12 + 3] = a2 >> (8 * ((v5 - 2) & 7));
        if (v5 == 2)
        {
          goto LABEL_32;
        }

        if (v12 + 4 < *(a3 + 2))
        {
          v17[v12 + 4] = a2 >> (8 * ((v5 - 3) & 7));
          if (v5 == 3)
          {
            goto LABEL_32;
          }

          if (v12 + 5 < *(a3 + 2))
          {
            v17[v12 + 5] = a2 >> (8 * ((v5 - 4) & 7));
            if (v5 == 4)
            {
              goto LABEL_32;
            }

            if (v12 + 6 < *(a3 + 2))
            {
              v17[v12 + 6] = a2 >> (8 * ((v5 - 5) & 7));
              if (v5 == 5)
              {
                goto LABEL_32;
              }

              if (v12 + 7 < *(a3 + 2))
              {
                v17[v12 + 7] = a2 >> (8 * ((v5 - 6) & 7));
                if (v5 == 6)
                {
                  goto LABEL_32;
                }

                if (v12 + 8 < *(a3 + 2))
                {
                  v17[v12 + 8] = a2 >> (8 * ((v5 - 7) & 7));
                  if (v5 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v12 + 9 < *(a3 + 2))
                  {
                    v17[v12 + 9] = a2 >> (v14 & 0x38);
LABEL_32:
                    *v6 = a3;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(a3);
  a3 = result;
LABEL_30:
  if (v10 < *(a3 + 2))
  {
    v10[a3 + 32] = a2;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7919F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  v10 = v7 - a3;
  if (__OFSUB__(v7, a3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = a2;
  v5 = result;
  if (v10 >= result)
  {
    goto LABEL_13;
  }

  v8 = result - v10;
  if (__OFSUB__(result, v10))
  {
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = sub_1A78C57C4(0, v7 + 1, 1, v6);
    v6 = result;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  v11 = *(v6 + 16);
  a3 = v9;
  do
  {
    v12 = *(v6 + 24);
    if (v11 >= v12 >> 1)
    {
      result = sub_1A78C57C4((v12 > 1), v11 + 1, 1, v6);
      a3 = v9;
      v6 = result;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + v11++ + 32) = 0;
    --v8;
  }

  while (v8);
  *v4 = v6;
LABEL_13:
  if (a3 != v3)
  {
    while (a3 > v3)
    {
      v13 = a3 - 1 + v5;
      if (__OFADD__(a3 - 1, v5))
      {
        goto LABEL_26;
      }

      v14 = a3 - 1;
      if (a3 < 1)
      {
        goto LABEL_27;
      }

      if (v14 >= *(v6 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v6 + a3 + 31);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1A78F5C2C(v6);
        v6 = result;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      if (v13 >= *(v6 + 16))
      {
        goto LABEL_29;
      }

      *(v6 + v13 + 32) = v15;
      a3 = v14;
      if (v14 == v3)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    *v4 = v6;
  }

  return result;
}

uint64_t sub_1A791A13C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v25 = *(v3 + 24);
  if (!a2)
  {
LABEL_33:
    v7 = 0;
    goto LABEL_36;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_36:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 24) = v25;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v24 = result;
    result = 0;
    v9 = v25 >> 1;
    v10 = 1;
    while (1)
    {
      if (v6 == v9)
      {
        v6 = v25 >> 1;
        v7 = result;
LABEL_35:
        result = v24;
        goto LABEL_36;
      }

      if (v6 >= v9)
      {
        break;
      }

      v11 = v5 + 48 * v6;
      v12 = *v11;
      v13 = v6 + 1;
      if ((*v11 & 0x20) != 0)
      {
        v16 = *(v11 + 8);
        v17 = v25 >> 1;
        if (v13 != v9)
        {
          v18 = (v5 + 56 + 48 * v6);
          v17 = v6 + 1;
          while (1)
          {
            v19 = *v18;
            v18 += 6;
            if (v16 >= v19)
            {
              break;
            }

            if (v9 == ++v17)
            {
              v17 = v25 >> 1;
              break;
            }
          }
        }

        if (v17 <= v6)
        {
          goto LABEL_37;
        }

        if (v9 < v17)
        {
          goto LABEL_38;
        }

        if (v17 < 0)
        {
          goto LABEL_39;
        }

        v20 = v17 - v13;
        if (__OFSUB__(v17, v13))
        {
          goto LABEL_40;
        }

        if (v20 < 0)
        {
          goto LABEL_41;
        }

        v21 = v9 - v13;
        if (__OFSUB__(v9, v13))
        {
          goto LABEL_42;
        }

        if (!v20 || v21 < 0 || (v22 = v25 >> 1, v21 >= v20))
        {
          v22 = v17;
          if (__OFADD__(v13, v20))
          {
            goto LABEL_45;
          }

          if (v9 < v17)
          {
            goto LABEL_43;
          }
        }

        if (v22 <= v6)
        {
          goto LABEL_44;
        }

        sub_1A78BF4E8(v4, v5, v13, v25 & 1 | (2 * v17), v16, v29);
        v26 = v29[1];
        v28 = v29[0];
        v14 = v30;
        swift_unknownObjectRetain();
        v15 = v28;
        v6 = v22;
      }

      else
      {
        v27 = *(v11 + 16);
        result = *(v11 + 16);
        if (!v27)
        {
          goto LABEL_47;
        }

        v26 = *(v11 + 32);
        swift_unknownObjectRetain();
        v14 = 0;
        v6 = v13;
        v15 = v27;
      }

      *v8 = v12;
      *(v8 + 8) = v15;
      *(v8 + 24) = v26;
      *(v8 + 40) = v14;
      *(v8 + 48) = (v12 & 0x20) == 0;
      if (v10 == v7)
      {
        goto LABEL_35;
      }

      v8 += 56;
      result = v10;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_1A791A374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22 = a3;
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7118, &unk_1A79446E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - v6);
  v25 = *v3;
  *v7 = v25;
  v7[1] = 0;
  v23 = a1;
  v8 = v3[3];
  v9 = v3[4];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7128, &qword_1A793FF00);
  result = sub_1A793D838();
  v12 = *(v10 + 56);
  *(v7 + v12) = 0;
  v13 = (v7 + *(v5 + 44));
  *v13 = v8;
  v13[1] = v9;
  if (v26)
  {
    v14 = v22;
    if (v22)
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v15 = v25;
      v16 = *(v25 + 16);
      if (v16)
      {
        v21 = v12;
        v14 = 0;
        v17 = v25 + 32;
        v24 = v22 - 1;
        while (v14 < *(v15 + 16))
        {
          v18 = *(v17 + v14);
          v7[1] = v14 + 1;
          sub_1A793D828();
          sub_1A78DA6E4();
          sub_1A793DCF8();
          if ((v27 & 0x100000000) != 0)
          {
            goto LABEL_11;
          }

          BYTE1(v27) = v18;
          BYTE2(v27) = BYTE3(v27);
          result = v8(&v27, &v27 + 1);
          *(v26 + v14) = v27;
          if (v24 == v14)
          {
            v14 = v22;
            v19 = v23;
            goto LABEL_16;
          }

          ++v14;
          v15 = v25;
          if (v16 == v14)
          {
            v14 = v16;
LABEL_11:
            v12 = v21;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

      v14 = 0;
LABEL_14:
      *(v7 + v12) = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = v23;
LABEL_16:
  sub_1A78DA674(v7, v19);
  return v14;
}

void *sub_1A791A5A4(_OWORD *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v23[0] = *a1;
  v23[1] = v1;
  v23[2] = a1[2];
  v2 = sub_1A78BDB94(v23, v24);
  v3 = v2[2];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (v3)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  return v4;
}

void *sub_1A791A744(_OWORD *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v24[0] = *a1;
  v24[1] = v1;
  v2 = a1[3];
  v24[2] = a1[2];
  v24[3] = v2;
  v3 = sub_1A78BDB94(v24, v25);
  v4 = v3[2];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0;
  if (v4)
  {
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  return v5;
}

void *sub_1A791A8E4(uint64_t a1, unint64_t a2)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v35[0] = a1;
      LOWORD(v35[1]) = a2;
      BYTE2(v35[1]) = BYTE2(a2);
      BYTE3(v35[1]) = BYTE3(a2);
      BYTE4(v35[1]) = BYTE4(a2);
      BYTE5(v35[1]) = BYTE5(a2);
      v3 = v35 + BYTE6(a2);
      v4 = v35;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    memset(v35, 0, 14);
    v4 = v35;
    v3 = v35;
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  a1 = sub_1A793D648();
  v7 = a1;
  if (a1)
  {
    a1 = sub_1A793D678();
    if (__OFSUB__(v5, a1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    v7 += v5 - a1;
  }

  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    __break(1u);
LABEL_11:
    v10 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v7 = sub_1A793D648();
    if (v7)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_50;
      }

      v7 += v10 - v11;
    }
  }

  v12 = sub_1A793D668();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v13 + v7);
  if (v7)
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v7;
LABEL_23:
  v15 = sub_1A78BDB94(v4, v3);
  v16 = v15[2];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 0;
  if (v16)
  {
    v19 = (MEMORY[0x1E69E7CC0] + 32);
    v20 = (v15 + 4);
    while (1)
    {
      v22 = *v20++;
      v21 = v22;
      if (!v18)
      {
        v23 = v17[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v26 = swift_allocObject();
        v27 = 2 * _swift_stdlib_malloc_size(v26) - 64;
        v26[2] = v25;
        v26[3] = v27;
        v28 = (v26 + 4);
        v29 = v17[3] >> 1;
        if (v17[2])
        {
          if (v26 != v17 || v28 >= v17 + v29 + 32)
          {
            memmove(v26 + 4, v17 + 4, v29);
          }

          v17[2] = 0;
        }

        v19 = (v28 + v29);
        v18 = (v27 >> 1) - v29;

        v17 = v26;
      }

      v8 = __OFSUB__(v18--, 1);
      if (v8)
      {
        break;
      }

      *v19++ = v21;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v31 = v17[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v8 = __OFSUB__(v32, v18);
    v33 = v32 - v18;
    if (v8)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v17[2] = v33;
  }

  return v17;
}

void *sub_1A791ABA8(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      v7 = sub_1A793D648();
      if (v7)
      {
        v8 = sub_1A793D678();
        if (__OFSUB__(v5, v8))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v7 += v5 - v8;
      }

      v9 = __OFSUB__(v6, v5);
      v10 = v6 - v5;
      if (v9)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v11 = sub_1A793D668();
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v4 = MEMORY[0x1E69E7CC0];
      if (!v7)
      {
        goto LABEL_28;
      }

      if (!v12)
      {
        goto LABEL_28;
      }

      v4 = sub_1A78BDC10(v12, 0);
      sub_1A78E259C(v4 + 4, v12, v7, v12);
      if (v13 == v12)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

LABEL_17:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  if (!v2)
  {
    __src = a1;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v3 = BYTE6(a2);
    v45 = BYTE5(a2);
    if (BYTE6(a2))
    {
      v4 = sub_1A78BDC10(BYTE6(a2), 0);
      memcpy(v4 + 4, &__src, v3);
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v14 = a1;
  v15 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v16 = sub_1A793D648();
  if (v16)
  {
    v17 = sub_1A793D678();
    if (__OFSUB__(v14, v17))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v16 += v14 - v17;
  }

  v18 = sub_1A793D668();
  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    if (v19)
    {
      v4 = sub_1A78BDC10(v19, 0);
      sub_1A78E259C(v4 + 4, v19, v16, v19);
      if (v20 != v19)
      {
LABEL_57:
        __break(1u);
      }
    }
  }

LABEL_28:
  v21 = v4[2];
  v22 = MEMORY[0x1E69E7CC0];
  v23 = 0;
  if (v21)
  {
    v24 = (MEMORY[0x1E69E7CC0] + 32);
    v25 = (v4 + 4);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (!v23)
      {
        v28 = v22[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v31 = swift_allocObject();
        v32 = 2 * _swift_stdlib_malloc_size(v31) - 64;
        v31[2] = v30;
        v31[3] = v32;
        v33 = (v31 + 4);
        v34 = v22[3] >> 1;
        if (v22[2])
        {
          if (v31 != v22 || v33 >= v22 + v34 + 32)
          {
            memmove(v31 + 4, v22 + 4, v34);
          }

          v22[2] = 0;
        }

        v24 = (v33 + v34);
        v23 = (v32 >> 1) - v34;

        v22 = v31;
      }

      v9 = __OFSUB__(v23--, 1);
      if (v9)
      {
        break;
      }

      *v24++ = v26;
      if (!--v21)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_46:

  v36 = v22[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v9 = __OFSUB__(v37, v23);
    v38 = v37 - v23;
    if (v9)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v22[2] = v38;
  }

  return v22;
}

void *sub_1A791AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24[0] = a1;
  v24[1] = a2;
  v25[0] = a3;
  v3 = sub_1A78BDB94(v24, v25 + 4);
  v4 = v3[2];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0;
  if (v4)
  {
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  return v5;
}

void *sub_1A791B090(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v23[0] = a1;
  v23[1] = a2;
  v2 = sub_1A78BDB94(v23, &v24);
  v3 = v2[2];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (v3)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  return v4;
}

uint64_t sub_1A791B224(uint64_t result, void *a2)
{
  if (*result != *a2 || *(result + 8) != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  if (!*(result + 16))
  {
    if (!v2)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v2)
  {
LABEL_25:
    sub_1A791B388(result, v16);
    sub_1A791B388(a2, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = *(result + 32);
  v4 = *(result + 40) >> 1;
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2[4];
  v7 = a2[5] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 != v8)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v9 = *(result + 24) + v3;
  v10 = a2[3] + v6;
  result = 1;
  if (v9 != v10 && v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    if (v6 != v7)
    {
      v11 = 0;
      if (v6 <= v7)
      {
        v12 = a2[5] >> 1;
      }

      else
      {
        v12 = a2[4];
      }

      v13 = v12 - v6;
      while (v13 != v11)
      {
        if (*(v9 + v11) != *(v10 + v11))
        {
          return 0;
        }

        if (~v3 + v4 == v11)
        {
          return 1;
        }

        v14 = v3 + v11 + 1;
        if (v14 < v3 || v14 >= v4)
        {
          goto LABEL_32;
        }

        result = 0;
        if (v8 == ++v11)
        {
          return result;
        }
      }

      goto LABEL_31;
    }

    return 0;
  }

  return result;
}

void *sub_1A791B3C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = a4 >> 1;
  result = swift_unknownObjectRetain();
  v9 = MEMORY[0x1E69E7CC0];
  if (v7 != a3)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0] + 32;
    v12 = a2;
    v36 = a2 + 56;
    v37 = v4 & 1;
    v39 = a2;
    while (1)
    {
      if (a3 >= v7)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
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
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v13 = v12 + 48 * a3;
      v14 = *v13;
      v15 = a3 + 1;
      if ((*v13 & 0x20) != 0)
      {
        v17 = *(v13 + 8);
        v18 = v7;
        if (v15 != v7)
        {
          v19 = (v36 + 48 * a3);
          v18 = a3 + 1;
          while (1)
          {
            v20 = *v19;
            v19 += 6;
            if (v17 >= v20)
            {
              break;
            }

            if (v7 == ++v18)
            {
              v18 = v7;
              break;
            }
          }
        }

        if (v18 <= a3)
        {
          goto LABEL_48;
        }

        if (v7 < v18)
        {
          goto LABEL_49;
        }

        if (v18 < 0)
        {
          goto LABEL_50;
        }

        v21 = v18 - v15;
        if (__OFSUB__(v18, v15))
        {
          goto LABEL_51;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (__OFSUB__(v7, v15))
        {
          goto LABEL_53;
        }

        if (!v21 || (v22 = v7, v7 - v15 >= v21))
        {
          v22 = v18;
          if (__OFADD__(v15, v21))
          {
            goto LABEL_57;
          }

          if (v7 < v18)
          {
            goto LABEL_56;
          }
        }

        if (v22 <= a3)
        {
          goto LABEL_54;
        }

        sub_1A78BF4E8(a1, v12, a3 + 1, v37 | (2 * v18), v17, v42);
        v40 = v42[1];
        v41 = v42[0];
        v16 = v43;
        result = swift_unknownObjectRetain();
        v15 = v22;
        if (v10)
        {
          v15 = v22;
          goto LABEL_40;
        }
      }

      else
      {
        v41 = *(v13 + 16);
        result = *(v13 + 16);
        if (!v41)
        {
          goto LABEL_59;
        }

        v40 = *(v13 + 32);
        result = swift_unknownObjectRetain();
        v16 = 0;
        if (v10)
        {
          goto LABEL_40;
        }
      }

      v23 = v9[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_55;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78C0, &qword_1A79446D8);
      v26 = swift_allocObject();
      v27 = (_swift_stdlib_malloc_size(v26) - 32) / 56;
      v26[2] = v25;
      v26[3] = 2 * v27;
      v28 = (v26 + 4);
      v29 = v9[3] >> 1;
      v30 = 7 * v29;
      if (v9[2])
      {
        if (v26 != v9 || v28 >= &v9[v30 + 4])
        {
          memmove(v26 + 4, v9 + 4, 56 * v29);
        }

        v9[2] = 0;
      }

      v11 = v28 + v30 * 8;
      v10 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

      v9 = v26;
LABEL_40:
      v32 = __OFSUB__(v10--, 1);
      if (v32)
      {
        goto LABEL_47;
      }

      *v11 = v14;
      *(v11 + 8) = v41;
      *(v11 + 24) = v40;
      *(v11 + 40) = v16;
      *(v11 + 48) = (v14 & 0x20) == 0;
      v11 += 56;
      a3 = v15;
      v12 = v39;
      if (v15 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = 0;
LABEL_42:
  result = swift_unknownObjectRelease();
  v33 = v9[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v32 = __OFSUB__(v34, v10);
    v35 = v34 - v10;
    if (v32)
    {
      goto LABEL_58;
    }

    v9[2] = v35;
  }

  return v9;
}

uint64_t sub_1A791B6C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  result = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_17;
  }

  v6 = a3;
  result = MEMORY[0x1AC55D830](result);
  if (v4 == v6)
  {
    return result;
  }

  if (v4 <= v6)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = (a2 + 48 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    sub_1A793DF88();
    MEMORY[0x1AC55D830](v9);
    if (!v10)
    {
      result = sub_1A793DF88();
      goto LABEL_7;
    }

    sub_1A793DF88();
    v14 = v13 >> 1;
    result = (v13 >> 1) - v12;
    if (__OFSUB__(v13 >> 1, v12))
    {
      break;
    }

    result = MEMORY[0x1AC55D830](result);
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (v16)
    {
      if ((v16 < 0) ^ v15 | (v16 == 0))
      {
        goto LABEL_16;
      }

      v17 = v11 + v12;
      do
      {
        ++v17;
        result = sub_1A793DF88();
        --v16;
      }

      while (v16);
    }

LABEL_7:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A791B7B0(char a1, char **a2, unint64_t a3, char *a4)
{
  v5 = v4;
  LOBYTE(v9) = a1;
  v10 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = v9;
    v9 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
    }

    *(v10 + 2) = v9;
    v10[v14 + 32] = 0;
    *a2 = v10;
    v10 = (v12 + 1);
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = (a3)(a2);
    if (v5)
    {
      return result;
    }

    a4 = *a2;
    v16 = *(*a2 + 2);
    a3 = v16 - v9;
    if ((v16 - v9) > 127)
    {
      if (v16 >= v9)
      {
        v14 = 71 - __clz(a3);
        v5 = v14 >> 3;
        sub_1A7919F9C(v14 >> 3, v9, v16);
        a4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(a4);
    a4 = result;
LABEL_11:
    if (v10 >= *(a4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v17 = a4 + 32;
    v10[(a4 + 32)] = (v14 >> 3) | 0x80;
    *a2 = a4;
    if (v9 < *(a4 + 2))
    {
      v17[v9] = a3 >> (8 * ((v5 - 1) & 7));
      if (v5 == 1)
      {
        goto LABEL_32;
      }

      if (v12 + 3 < *(a4 + 2))
      {
        v17[v12 + 3] = a3 >> (8 * ((v5 - 2) & 7));
        if (v5 == 2)
        {
          goto LABEL_32;
        }

        if (v12 + 4 < *(a4 + 2))
        {
          v17[v12 + 4] = a3 >> (8 * ((v5 - 3) & 7));
          if (v5 == 3)
          {
            goto LABEL_32;
          }

          if (v12 + 5 < *(a4 + 2))
          {
            v17[v12 + 5] = a3 >> (8 * ((v5 - 4) & 7));
            if (v5 == 4)
            {
              goto LABEL_32;
            }

            if (v12 + 6 < *(a4 + 2))
            {
              v17[v12 + 6] = a3 >> (8 * ((v5 - 5) & 7));
              if (v5 == 5)
              {
                goto LABEL_32;
              }

              if (v12 + 7 < *(a4 + 2))
              {
                v17[v12 + 7] = a3 >> (8 * ((v5 - 6) & 7));
                if (v5 == 6)
                {
                  goto LABEL_32;
                }

                if (v12 + 8 < *(a4 + 2))
                {
                  v17[v12 + 8] = a3 >> (8 * ((v5 - 7) & 7));
                  if (v5 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v12 + 9 < *(a4 + 2))
                  {
                    v17[v12 + 9] = a3 >> (v14 & 0x38);
LABEL_32:
                    *a2 = a4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(a4);
  a4 = result;
LABEL_30:
  if (v10 < *(a4 + 2))
  {
    v10[a4 + 32] = a3;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A791BAC0(char a1, char **a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A79205A0(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_1A7919F9C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A791BDC8(char a1, char **a2, unint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A78FF6E4(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_1A7919F9C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A791C0F8()
{
  result = qword_1EB2A6CE0;
  if (!qword_1EB2A6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6CE0);
  }

  return result;
}

uint64_t sub_1A791C168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1A791C1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_1A791C280(_OWORD *a1)
{

  return sub_1A78CE5D4(a1);
}

void *sub_1A791C2D8(_OWORD *a1)
{

  return sub_1A78CE62C(a1);
}

void *sub_1A791C360(uint64_t a1, unint64_t a2)
{

  return sub_1A78CE57C(a1, a2);
}

uint64_t HPKE.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A791C448()
{
  result = qword_1EB2A78C8;
  if (!qword_1EB2A78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78C8);
  }

  return result;
}

__int128 *sub_1A791C4AC@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = a2 - result == 20;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  if (v3)
  {
    v6 = *result;
    v5 = *(result + 4);
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A790C89C(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.encapsulate()@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for Rng();
  v6 = &off_1F1A796A0;
  v4[0] = swift_allocObject();
  sub_1A790B1BC(&v3, a1);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1A791C644@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for Rng();
  v6 = &off_1F1A796A0;
  v4[0] = swift_allocObject();
  sub_1A790B1BC(&v3, a1);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t XWingMLKEM768X25519.PrivateKey.seedRepresentation.getter(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!cckem_xwing_mlkem768x25519())
  {
    __break(1u);
  }

  v3 = cckem_privkey_nbytes_info();
  v7[0] = sub_1A78CC5A0(v3);
  v7[1] = v4;
  sub_1A78CC640(v7, 0);
  v6 = v3;
  sub_1A791D4A8(v7, v2 + 32, &v6);
  return v7[0];
}

uint64_t sub_1A791C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v7 = sub_1A790C928(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *XWingMLKEM768X25519.PrivateKey.decapsulate(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  return sub_1A790BF88((v7 + 32), a1, a2, a3);
}

uint64_t XWingMLKEM768X25519.PrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = sub_1A790C380(v3 + 32, &v5);
  *a1 = v5;
  return result;
}

void *sub_1A791C960@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  return sub_1A790BF88((v7 + 32), a1, a2, a3);
}

uint64_t sub_1A791C9DC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = sub_1A790C380(v3 + 32, &v5);
  *a1 = v5;
  return result;
}

uint64_t sub_1A791CA70@<X0>(void (*a1)(void *, uint64_t *)@<X0>, unint64_t *a2@<X8>)
{
  v10 = type metadata accessor for Rng();
  v11 = &off_1F1A796A0;
  v9[0] = swift_allocObject();
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v6 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v6);
    v8 = sub_1A78C05E8(v7, a1);
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    if (!v2)
    {
      *a2 = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PrivateKey.init<A>(seedRepresentation:publicKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = a1;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  if (*v13)
  {
    *&v28 = v4;
    v24[1] = a3;
    v25 = v8;
    v26 = a4;
    v15 = sub_1A790B114(v14);
    v17 = v16;

    result = ccsha3_256_di();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v21 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v19;
    *(inited + 24) = v21;
    v32 = inited;
    sub_1A78C0990(v15, v17);
    v22 = v28;
    sub_1A791D828(v15, v17, &v32);
    sub_1A78C0AFC(v15, v17);
    sub_1A78BD4B0(&v29);

    v23 = v15;
    v5 = v22;
    sub_1A78C0AFC(v23, v17);
    v27 = v30;
    v28 = v29;
    v8 = v25;
    a4 = v26;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  (*(v10 + 16))(v12, v8, a2);
  v30 = v27;
  v29 = v28;
  v31 = v14 == 0;
  sub_1A791C788(v12, a2, &v32);
  result = (*(v10 + 8))(v8, a2);
  if (!v5)
  {
    *a4 = v32;
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PrivateKey.init<A>(integrityCheckedRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  v46 = *(*(v8 + 8) + 8);
  *&v39 = *(v46 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v45 = v5;
  v21 = *(v5 + 16);
  v21(v7, a1, a2, v18);
  v43 = v20;
  sub_1A793D8B8();
  v46 = a1;
  v22 = a1;
  v23 = v38;
  (v21)(v7, v22, a2);
  sub_1A793DBE8();
  v24 = *(v23 + 16);
  v41 = v16;
  v24(v13, v16, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v25 = sub_1A793DB38();
  v26 = *(v25 + 16);
  if (v26 == 32)
  {
    v27 = v42;
    if (v42)
    {
LABEL_10:
      result = MEMORY[0x1AC55E410](v27);
      __break(1u);
      return result;
    }

    v28 = *(v25 + 32);
    v37 = *(v25 + 48);
    v39 = v28;
  }

  else
  {
    v39 = 0u;
    v37 = 0u;
    v27 = v42;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  v29 = v26 != 32;

  v30 = v40;
  v31 = v43;
  v24(v40, v43, AssociatedTypeWitness);
  v47 = v39;
  v48 = v37;
  v49 = v29;
  swift_getAssociatedConformanceWitness();
  sub_1A791C788(v30, AssociatedTypeWitness, &v50);
  if (v27)
  {
    (*(v45 + 8))(v46, a2);
    v32 = *(v23 + 8);
    v32(v41, AssociatedTypeWitness);
    return (v32)(v31, AssociatedTypeWitness);
  }

  else
  {
    (*(v45 + 8))(v46, a2);
    v34 = *(v23 + 8);
    v34(v41, AssociatedTypeWitness);
    result = (v34)(v31, AssociatedTypeWitness);
    *v36 = v50;
  }

  return result;
}

uint64_t sub_1A791D168@<X0>(void (*a1)(void *, uint64_t *)@<X2>, unint64_t *a2@<X8>)
{
  v10 = type metadata accessor for Rng();
  v11 = &off_1F1A796A0;
  v9[0] = swift_allocObject();
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v6 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v6);
    v8 = sub_1A78C05E8(v7, a1);
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    if (!v2)
    {
      *a2 = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v11 == 4)
  {
    v12 = v7;
    (*(v6 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v9);
    XWingMLKEM768X25519.PublicKey.init<A>(rawRepresentation:)(v10, a3, &v16);
    result = (*(v6 + 8))(a1, a3);
    if (!v3)
    {
      *v12 = v16;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v6 + 8))(a1, a3);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 4)
  {
    return sub_1A790B114(*v1);
  }

  sub_1A78D4960();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

uint64_t sub_1A791D43C(_BYTE *a1)
{
  if (*a1 == 4)
  {
    return sub_1A790B114(*v1);
  }

  sub_1A78D4960();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}