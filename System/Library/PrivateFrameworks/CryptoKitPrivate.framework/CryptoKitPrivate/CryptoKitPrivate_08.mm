id sub_1C0D69EB0(uint64_t a1)
{
  if (!a1)
  {
    sub_1C0D01E40();
    swift_allocError();
    *(v5 + 4) = 0;
    v6 = 1;
    *(v5 + 8) = 1;
    *(v5 + 12) = 0;
    *(v5 + 16) = 256;
    *(v5 + 64) = 0xD000000000000022;
    *(v5 + 72) = 0x80000001C0D802F0;
    v7 = 360;
    goto LABEL_5;
  }

  v2 = *v1;
  share = ccss_shamir_share_generator_generate_share();
  if (share)
  {
    v4 = share;
    sub_1C0D01E40();
    swift_allocError();
    *(v5 + 12) = 0;
    *(v5 + 16) = 256;
    *(v5 + 4) = v4;
    *(v5 + 8) = 0;
    *(v5 + 64) = 0xD000000000000041;
    *(v5 + 72) = 0x80000001C0D80350;
    v6 = 3;
    v7 = 364;
LABEL_5:
    *v5 = v6;
    *(v5 + 24) = v7;
    *(v5 + 32) = 0xD000000000000029;
    *(v5 + 40) = 0x80000001C0D81C40;
    *(v5 + 48) = 0xD00000000000006BLL;
    *(v5 + 56) = 0x80000001C0D81620;
    return swift_willThrow();
  }

  return [objc_allocWithZone(MEMORY[0x1E6999658]) initWithParams:*(v2 + 144) share:*(v2 + 152)];
}

void CKSecretSharing.HybridGenerator.generateShare(shareIndex:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1C0D7877C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = *(*v5 + 64);
  if (v14 < 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 < 1 || v14 < a1)
  {
    goto LABEL_10;
  }

  if (HIDWORD(a1))
  {
    goto LABEL_27;
  }

  v58 = v10;
  v15 = sub_1C0D69EB0(a1);
  if (!v3)
  {
    v16 = *(v13 + 17);
    if (v16 != 1)
    {
      v17 = 0;
LABEL_20:
      v29 = *(v13 + 16);
      v57 = v17;
      if (v29 == 1 && (v30 = *(v13 + 40), v30 >> 60 != 15))
      {
        v31 = v15;
        v55 = *(v13 + 32);
        v56 = v30;
        sub_1C0D134D0(v55, v30);
        v15 = v31;
      }

      else
      {
        v55 = 0;
        v56 = 0xF000000000000000;
      }

      v32 = v15;
      v53 = v15;
      v54 = [v15 x];
      v33 = [v32 y];
      if (v33)
      {
        v34 = v33;
        v52 = v16 ^ 1;
        v35 = sub_1C0D7832C();
        v50 = v36;
        v51 = v35;

        type metadata accessor for CKSecretSharing.HybridGenerator(0);
        sub_1C0D787BC();
        v37 = v58;
        v63 = v58;
        v64 = sub_1C0D6F118(&qword_1EBE6E090, MEMORY[0x1E69664E8], MEMORY[0x1E69664E0]);
        v38 = __swift_allocate_boxed_opaque_existential_1(&v61);
        (*(v9 + 16))(v38, v12, v37);
        __swift_project_boxed_opaque_existential_1(&v61, v63);
        sub_1C0D7819C();
        (*(v9 + 8))(v12, v37);
        v39 = v59;
        v40 = v60;
        __swift_destroy_boxed_opaque_existential_1(&v61);
        v41 = sub_1C0D7878C();
        v43 = v42;
        v44 = sub_1C0D7879C();
        v46 = v45;

        *a2 = 1;
        v47 = v50;
        *(a2 + 24) = v51;
        *(a2 + 32) = v47;
        *(a2 + 40) = v39;
        *(a2 + 48) = v40;
        *(a2 + 56) = v41;
        *(a2 + 64) = v43;
        *(a2 + 72) = v44;
        *(a2 + 80) = v46;
        LODWORD(v47) = v57;
        *(a2 + 8) = v54;
        *(a2 + 12) = v47;
        *(a2 + 16) = v52;
        v48 = v56;
        *(a2 + 88) = v55;
        *(a2 + 96) = v48;
        return;
      }

      goto LABEL_29;
    }

    v17 = *(v13 + 24);
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v17))
      {
        __break(1u);
LABEL_10:
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1C0D78DAC();

        v61 = 0xD00000000000002ALL;
        v62 = 0x80000001C0D818F0;
        v59 = *(v13 + 64);
        v18 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v18);

        v19 = v61;
        v20 = v62;
        sub_1C0D01E40();
        v4 = swift_allocError();
        *(v21 + 4) = 0;
        *(v21 + 8) = 1;
        *(v21 + 12) = 0;
        *(v21 + 16) = 256;
        *(v21 + 64) = v19;
        *(v21 + 72) = v20;
        *v21 = 1;
        *(v21 + 24) = xmmword_1C0D7EDF0;
        *(v21 + 40) = 0x80000001C0D80020;
        *(v21 + 48) = 0xD00000000000006BLL;
        *(v21 + 56) = 0x80000001C0D81620;
        swift_willThrow();
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_11:
  v59 = v4;
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
  if (swift_dynamicCast())
  {

    v23 = v67;
    if (v68 == 1)
    {
      if (v67 == 1)
      {
        sub_1C0D01E40();
        swift_allocError();
        *(v24 + 4) = 0;
        *(v24 + 8) = 1;
        *(v24 + 12) = 0;
        *(v24 + 16) = 256;
        *(v24 + 64) = 0xD000000000000049;
        *(v24 + 72) = 0x80000001C0D800D0;
        *v24 = 1;
        *(v24 + 24) = xmmword_1C0D7EE10;
        *(v24 + 40) = 0x80000001C0D80020;
        *(v24 + 48) = 0xD00000000000006BLL;
        *(v24 + 56) = 0x80000001C0D81620;
      }

      else
      {
        sub_1C0CF8DE0();
        swift_allocError();
        *v28 = v23;
        *(v28 + 4) = 1;
      }
    }

    else
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
      v65 = v23;
      v66 = 0;
      sub_1C0D78E9C();
      MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80090);
      v25 = v61;
      v26 = v62;
      sub_1C0D01E40();
      swift_allocError();
      *(v27 + 12) = 0;
      *(v27 + 16) = 256;
      *(v27 + 4) = v23;
      *(v27 + 8) = 0;
      *(v27 + 64) = v25;
      *(v27 + 72) = v26;
      *v27 = 3;
      *(v27 + 24) = xmmword_1C0D7EE00;
      *(v27 + 40) = 0x80000001C0D80020;
      *(v27 + 48) = 0xD00000000000006BLL;
      *(v27 + 56) = 0x80000001C0D81620;
    }

    swift_willThrow();
  }
}

__n128 CKSecretSharing.HybridSecretShare.init(shareNumber:threshold:shamirSecretShare:nonce:Ciphertext:Tag:authenticatedData:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12)
{
  result = a10;
  *a9 = 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 8) = a1;
  *(a9 + 12) = a2;
  *(a9 + 16) = BYTE4(a2) & 1;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  return result;
}

void CKSecretSharing.HybridGenerator.generateShares(_:)(uint64_t a1)
{
  if (*(*v1 + 24) > a1)
  {
    sub_1C0D01E40();
    v4 = swift_allocError();
    *(v3 + 4) = 0;
    *(v3 + 8) = 1;
    *(v3 + 12) = 0;
    *(v3 + 16) = 256;
    *(v3 + 72) = 0xE000000000000000;
    *v3 = 5;
    v5 = xmmword_1C0D7EE30;
LABEL_5:
    *(v3 + 24) = v5;
    *(v3 + 40) = 0x80000001C0D800B0;
    *(v3 + 48) = 0xD00000000000006BLL;
    *(v3 + 56) = 0x80000001C0D81620;
    *(v3 + 64) = 0;
    swift_willThrow();
LABEL_6:
    v21 = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
    if (swift_dynamicCast())
    {

      v7 = v19;
      if (v20 == 1)
      {
        if (v19 == 1)
        {
          sub_1C0D01E40();
          swift_allocError();
          *(v8 + 4) = 0;
          *(v8 + 8) = 1;
          *(v8 + 12) = 0;
          *(v8 + 16) = 256;
          *(v8 + 64) = 0xD000000000000049;
          *(v8 + 72) = 0x80000001C0D800D0;
          *v8 = 1;
          *(v8 + 24) = xmmword_1C0D7EE50;
          *(v8 + 40) = 0x80000001C0D800B0;
          *(v8 + 48) = 0xD00000000000006BLL;
          *(v8 + 56) = 0x80000001C0D81620;
        }

        else
        {
          sub_1C0CF8DE0();
          swift_allocError();
          *v13 = v7;
          *(v13 + 4) = 1;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
        sub_1C0D78DAC();
        MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
        v15 = v7;
        v16 = 0;
        sub_1C0D78E9C();
        MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80090);
        v10 = v17;
        v11 = v18;
        sub_1C0D01E40();
        swift_allocError();
        *(v12 + 12) = 0;
        *(v12 + 16) = 256;
        *(v12 + 4) = v7;
        *(v12 + 8) = 0;
        *(v12 + 64) = v10;
        *(v12 + 72) = v11;
        *v12 = 3;
        *(v12 + 24) = xmmword_1C0D7EE40;
        *(v12 + 40) = 0x80000001C0D800B0;
        *(v12 + 48) = 0xD00000000000006BLL;
        *(v12 + 56) = 0x80000001C0D81620;
      }

      swift_willThrow();
    }

    return;
  }

  if (*(*v1 + 64) < a1)
  {
    sub_1C0D01E40();
    v4 = swift_allocError();
    *(v3 + 4) = 0;
    *(v3 + 8) = 1;
    *(v3 + 12) = 0;
    *(v3 + 16) = 256;
    *(v3 + 72) = 0xE000000000000000;
    *v3 = 6;
    v5 = xmmword_1C0D7EE20;
    goto LABEL_5;
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1EEE9AC00](a1);
  v14[2] = v1;
  sub_1C0D65484(sub_1C0D6ECB4, v14, (v9 << 32) | 1);
  v4 = v2;
  if (v2)
  {
    goto LABEL_6;
  }
}

uint64_t CKSecretSharing.HybridGenerator.serializedData()()
{
  v2 = v0;
  v3 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0D6F050(v2, v5, type metadata accessor for CKSecretSharing.HybridGenerator);
  sub_1C0D659DC(v5, v8);
  if (!v1)
  {
    sub_1C0D6F118(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization, &unk_1C0D7D1E0);
    v6 = sub_1C0D784EC();
    sub_1C0D03EF4(v8 + 1);
    sub_1C0D6F0B8(v8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  return v6;
}

uint64_t CKSecretSharing.HybridReconstructor.init(threshold:associatedData:includeADInShares:includeThresholdInShares:cipherSuite:insecureToChangeIncludeMessageEntropy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W6>, uint64_t *a7@<X8>)
{
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  v15 = swift_allocObject();
  result = sub_1C0D660D8(a1, a2, a3, a4, a5, v15, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1C0D6ACB0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D786AC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 24);
  if (a1 >> 62)
  {
    v15 = v7;
    v16 = v8;
    v17 = sub_1C0D78ECC();
    v8 = v16;
    v18 = v17;
    v7 = v15;
    if (v18 < v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
  {
LABEL_3:
    sub_1C0D01E40();
    swift_allocError();
    *(v13 + 4) = 0;
    *(v13 + 8) = 1;
    *(v13 + 12) = 0;
    *(v13 + 16) = 256;
    *(v13 + 64) = 0xD00000000000002DLL;
    *(v13 + 72) = 0x80000001C0D81AB0;
    *v13 = 1;
    *(v13 + 24) = xmmword_1C0D7EE70;
    *(v13 + 40) = 0x80000001C0D81C00;
    *(v13 + 48) = 0xD00000000000006BLL;
    *(v13 + 56) = 0x80000001C0D81620;
    return swift_willThrow();
  }

  v43 = v8;
  v44 = v7;
  ccss_sizeof_share_bag();
  v19 = swift_slowAlloc();
  v48 = v19;
  ccss_shamir_share_bag_init();
  v47 = v11;
  v20 = *(v11 + 24);
  if (v20 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_26;
  }

  v45 = v10;
  v46 = v3;
  v42 = a2;
  for (i = 0; v20 != i; ++i)
  {
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1C68E3DC0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * i + 32);
    }

    v23 = v22;
    [v22 share];

    v24 = ccss_shamir_share_bag_add_share();
    if (v24)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      v33 = v24;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000035, 0x80000001C0D80190);
      v50[0] = v33;
      v34 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v34);

      v35 = v51;
      v36 = v52;
      sub_1C0D01E40();
      swift_allocError();
      *(v37 + 12) = 0;
      *(v37 + 16) = 256;
      *(v37 + 4) = v33;
      *(v37 + 8) = 0;
      *(v37 + 64) = v35;
      *(v37 + 72) = v36;
      *v37 = 3;
      *(v37 + 24) = xmmword_1C0D7EE60;
      *(v37 + 40) = 0x80000001C0D81C00;
      *(v37 + 48) = 0xD00000000000006BLL;
      *(v37 + 56) = 0x80000001C0D81620;
      swift_willThrow();
      return MEMORY[0x1C68E4EB0](v19, -1, -1);
    }
  }

  v25 = *(v47 + 72);
  if (!v25)
  {
    if (qword_1EBE6CB98 != -1)
    {
      goto LABEL_39;
    }

LABEL_26:
    v32 = off_1EBE6CBA0;

    goto LABEL_27;
  }

  if (v25 < 0)
  {
    goto LABEL_35;
  }

  if (HIDWORD(v25))
  {
    goto LABEL_36;
  }

  v26 = (v25 - 1) | ((v25 - 1) >> 1) | (((v25 - 1) | ((v25 - 1) >> 1)) >> 2);
  v27 = v26 | (v26 >> 4) | ((v26 | (v26 >> 4)) >> 8);
  v28 = v27 | HIWORD(v27);
  v29 = __CFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    v31 = 0xFFFFFFFFLL;
  }

  else
  {
    v31 = v30;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = v31;
  if ((_swift_stdlib_malloc_size(v32) - 32) < v25)
  {
    goto LABEL_37;
  }

  LODWORD(v51) = 0;
  result = ccrng();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (v51)
  {
    goto LABEL_38;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  v32[2] = v25;
LABEL_27:
  v39 = v45;
  v38 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_beginAccess();
    sub_1C0CF2CF4((v32 + 4), v32 + v32[2] + 32, &v49);
    v40 = v49;

    v32 = v40;
  }

  swift_beginAccess();
  sub_1C0D6B208((v32 + 4), v32 + v32[2] + 32, &v48);

  if (!v38)
  {
    (*(v43 + 32))(v42, v39, v44);
  }

  return MEMORY[0x1C68E4EB0](v19, -1, -1);
}

uint64_t sub_1C0D6B208(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = ccss_shamir_share_bag_recover_secret();
    if (v3)
    {
      v4 = v3;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD00000000000003ALL, 0x80000001C0D80230);
      v5 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v5);

      sub_1C0D01E40();
      swift_allocError();
      *(v6 + 12) = 0;
      *(v6 + 16) = 256;
      *(v6 + 4) = v4;
      *(v6 + 8) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0xE000000000000000;
      *v6 = 3;
      *(v6 + 24) = xmmword_1C0D7EE80;
      *(v6 + 40) = 0x80000001C0D81C00;
      *(v6 + 48) = 0xD00000000000006BLL;
      *(v6 + 56) = 0x80000001C0D81620;
      return swift_willThrow();
    }

    else
    {
      return sub_1C0D7868C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKSecretSharing.HybridReconstructor.recoverSecret(shares:)(uint64_t a1)
{
  v306 = *MEMORY[0x1E69E9840];
  v3 = 0xD00000000000006BLL;
  v4 = sub_1C0D785AC();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v286 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v226 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v226 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v276 = &v226 - v14;
  v280 = sub_1C0D7877C();
  v278 = *(v280 - 8);
  v15 = MEMORY[0x1EEE9AC00](v280);
  v279 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v283 = &v226 - v17;
  v18 = sub_1C0D787CC();
  v281 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v277 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v282 = &v226 - v21;
  v22 = sub_1C0D786AC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v35 = &v226 - v34;
  v36 = *v1;
  v37 = v36[7];
  v38 = *(a1 + 16);
  *v289 = v12;
  if (v37 < v38)
  {
    sub_1C0D01E40();
    v40 = swift_allocError();
    *(v39 + 4) = 0;
    *(v39 + 8) = 1;
    *(v39 + 12) = 0;
    *(v39 + 16) = 256;
    *(v39 + 72) = 0xE000000000000000;
    *v39 = 6;
    v41 = xmmword_1C0D7EEE0;
LABEL_3:
    *(v39 + 24) = v41;
    *(v39 + 40) = 0x80000001C0D81970;
    *(v39 + 48) = 0xD00000000000006BLL;
    *(v39 + 56) = 0x80000001C0D81620;
    *(v39 + 64) = 0;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v42 = v36[3];
  if (v38 < v42)
  {
    v3 = 0x80000001C0D81620;
    sub_1C0D01E40();
    v40 = swift_allocError();
    *(v43 + 4) = 0;
    *(v43 + 8) = 1;
    *(v43 + 12) = 0;
    *(v43 + 16) = 256;
    *(v43 + 64) = 0xD00000000000002DLL;
    *(v43 + 72) = 0x80000001C0D81AB0;
    *v43 = 5;
    *(v43 + 24) = xmmword_1C0D7EED0;
    *(v43 + 40) = 0x80000001C0D81970;
    *(v43 + 48) = 0xD00000000000006BLL;
    *(v43 + 56) = 0x80000001C0D81620;
    goto LABEL_6;
  }

  v50 = v36[9];
  v51 = v36[10];
  v52 = v36[11];
  v53 = v36[14];
  v54 = v36[15];
  v55 = v36[16];
  v56 = v36[17];
  v292 = bswap32(v42);
  if (!v38)
  {
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if ((*(v30 + 48) & 1) == 0 && v42 != *(v30 + 44))
  {
    sub_1C0D01E40();
    v40 = swift_allocError();
    *(v39 + 4) = 0;
    *(v39 + 8) = 1;
    *(v39 + 12) = 0;
    *(v39 + 16) = 256;
    *(v39 + 72) = 0xE000000000000000;
    *v39 = 4;
    v41 = xmmword_1C0D7EE90;
    goto LABEL_3;
  }

  v229 = v54;
  v230 = v53;
  v231 = v50;
  v232 = v56;
  v233 = v55;
  v234 = v52;
  v236 = v29;
  v237 = v33;
  v238 = v31;
  v239 = v23;
  v228 = v51;
  v235 = v32;
  v243 = v35;
  v240 = v28;
  v262 = v30;
  v57 = sub_1C0D07CD0(&v292, v293);
  v58 = v262;
  *&v266 = v57;
  *(&v266 + 1) = v59;
  v60 = v262[16];
  v284 = v36;
  v61 = v36[4];
  v62 = v36[5];
  v258 = v10;
  if (v60 >> 60 != 15)
  {
    v66 = v262[15];
    if (v62 >> 60 == 15)
    {
      v227 = v18;
      v252 = v5;
      v253 = v4;
      sub_1C0CF6468(v66, v60);
      v265 = v66;
      v62 = v60;
    }

    else
    {
      v288 = v60;
      v3 = v61;
      sub_1C0D134D0(v61, v62);
      sub_1C0D134D0(v66, v288);
      v285 = v66;
      v69 = v66;
      v70 = v288;
      v265 = v3;
      if (!sub_1C0D04660(v69, v288, v3, v62))
      {
        sub_1C0D01E40();
        v166 = v62;
        v40 = swift_allocError();
        *(v167 + 4) = 0;
        *(v167 + 8) = 1;
        *(v167 + 12) = 0;
        *(v167 + 16) = 256;
        *(v167 + 64) = 0;
        *(v167 + 72) = 0xE000000000000000;
        *v167 = 13;
        *(v167 + 24) = xmmword_1C0D7EEA0;
        *(v167 + 40) = 0x80000001C0D81970;
        *(v167 + 48) = 0xD00000000000006BLL;
        *(v167 + 56) = 0x80000001C0D81620;
        swift_willThrow();
        sub_1C0CF448C(v266, *(&v266 + 1));
        sub_1C0D13830(v265, v166);
        sub_1C0D13830(v285, v70);
        v10 = v258;
        goto LABEL_7;
      }

      v227 = v18;
      v252 = v5;
      v253 = v4;
      sub_1C0D13830(v285, v70);
    }

    goto LABEL_30;
  }

  v252 = v5;
  v253 = v4;
  v227 = v18;
  if (v62 >> 60 != 15)
  {
    v265 = v61;
    sub_1C0CF6468(v61, v62);
LABEL_30:
    v58 = v262;
    goto LABEL_31;
  }

  v265 = 0;
  v62 = 0xC000000000000000;
LABEL_31:
  v288 = (v58 + 4);
  v4 = &v294;
  v226 = xmmword_1C0D7BAB0;
  v305 = xmmword_1C0D7BAB0;
  v71 = MEMORY[0x1E6969080];
  *(&v299 + 1) = MEMORY[0x1E6969080];
  *&v300 = MEMORY[0x1E6969078];
  v72 = v266;
  v298 = v266;
  v73 = __swift_project_boxed_opaque_existential_1(&v298, MEMORY[0x1E6969080]);
  v74 = *v73;
  v75 = v73[1];
  sub_1C0CF6468(v72, *(&v72 + 1));
  v76 = v287;
  sub_1C0D4268C(v74, v75, &v305);
  __swift_destroy_boxed_opaque_existential_1(&v298);
  *(&v299 + 1) = v71;
  *&v300 = MEMORY[0x1E6969078];
  v77 = v265;
  *&v298 = v265;
  *(&v298 + 1) = v62;
  v78 = __swift_project_boxed_opaque_existential_1(&v298, v71);
  v79 = *v78;
  v80 = v78[1];
  v251 = v62;
  sub_1C0CF6468(v77, v62);
  sub_1C0D4268C(v79, v80, &v305);
  __swift_destroy_boxed_opaque_existential_1(&v298);
  if (*(v284 + 18))
  {
    v81 = &unk_1F4034748;
  }

  else
  {
    v81 = &unk_1F4034770;
  }

  v82 = sub_1C0D0FA30(v81);
  v84 = v83;
  *(&v299 + 1) = v71;
  *&v300 = MEMORY[0x1E6969078];
  *&v298 = v82;
  *(&v298 + 1) = v83;
  v85 = __swift_project_boxed_opaque_existential_1(&v298, v71);
  v86 = *v85;
  v87 = v85[1];
  sub_1C0CF6468(v82, v84);
  sub_1C0D4268C(v86, v87, &v305);
  v3 = v76;
  sub_1C0CF448C(v82, v84);
  __swift_destroy_boxed_opaque_existential_1(&v298);
  v291 = MEMORY[0x1E69E7CC0];
  sub_1C0D78E3C();
  v88 = v288;
  v89 = *(v288 + 48);
  v300 = *(v288 + 32);
  v301 = v89;
  v90 = *(v288 + 80);
  v302 = *(v288 + 64);
  v303 = v90;
  v91 = *(v288 + 96);
  v304 = v91;
  v92 = *(v288 + 16);
  v298 = *v288;
  v299 = v92;
  v93 = *(&v303 + 1);
  v94 = v301 >> 62;
  v95 = __OFSUB__(HIDWORD(v300), DWORD2(v300));
  v250 = v95;
  v249 = HIDWORD(v300) - DWORD2(v300);
  v257 = BYTE6(v301);
  v270 = *(&v301 + 1);
  v271 = *(&v300 + 1);
  v260 = v302;
  v261 = v301;
  if (*(&v300 + 1))
  {
    v96 = 0;
  }

  else
  {
    v96 = v301 == 0xC000000000000000;
  }

  v97 = v96;
  v269 = v97;
  v275 = v302 >> 62;
  v98 = __OFSUB__(HIDWORD(v301), DWORD2(v301));
  v248 = v98;
  v247 = HIDWORD(v301) - DWORD2(v301);
  v256 = BYTE6(v302);
  if (*(&v301 + 1))
  {
    v99 = 0;
  }

  else
  {
    v99 = v302 == 0xC000000000000000;
  }

  v100 = v99;
  v267 = v100;
  v274 = v303 >> 62;
  v101 = __OFSUB__(HIDWORD(v302), DWORD2(v302));
  v246 = v101;
  v245 = HIDWORD(v302) - DWORD2(v302);
  v255 = BYTE6(v303);
  v268 = *(&v302 + 1);
  v259 = v303;
  if (*(&v302 + 1))
  {
    v102 = 0;
  }

  else
  {
    v102 = v303 == 0xC000000000000000;
  }

  v103 = v102;
  v264 = v103;
  v263 = v91 >> 62;
  v104 = __OFSUB__(HIDWORD(v303), DWORD2(v303));
  v242 = v104;
  v241 = HIDWORD(v303) - DWORD2(v303);
  v244 = BYTE6(v91);
  if (*(&v303 + 1))
  {
    v105 = 0;
  }

  else
  {
    v105 = v91 == 0xC000000000000000;
  }

  v272 = v301 >> 62;
  v273 = v298;
  v106 = v105;
  v254 = v106;
  v107 = v38 - 1;
  while (1)
  {
    v108 = *(v88 + 16);
    v294 = *v88;
    v109 = *(v88 + 32);
    v110 = *(v88 + 64);
    v111 = *(v88 + 80);
    *v297 = *(v88 + 48);
    *&v297[16] = v110;
    *&v297[32] = v111;
    *&v297[48] = *(v88 + 96);
    v295 = v108;
    v296 = v109;
    v12 = DWORD2(v294);
    v112 = *(&v109 + 1);
    v113 = *v297;
    v114 = *v297 >> 62;
    v288 = v88;
    LODWORD(v287) = DWORD2(v294);
    v285 = v107;
    if (v94 == 3)
    {
      v115 = v269;
      if (*v297 >> 62 != 3)
      {
        v115 = 0;
      }

      v96 = v115 == 1;
      v116 = v275;
      v117 = 0;
      if (v96 && !*(&v109 + 1) && *v297 == 0xC000000000000000)
      {
        goto LABEL_98;
      }

LABEL_85:
      if (v114 <= 1)
      {
        goto LABEL_86;
      }

      goto LABEL_91;
    }

    v116 = v275;
    if (v94 <= 1)
    {
      v117 = v257;
      if (v94)
      {
        v117 = v249;
        if (v250)
        {
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          sub_1C0D01E40();
          v40 = swift_allocError();
          *(v214 + 4) = 0;
          *(v214 + 8) = 1;
          *(v214 + 12) = 0;
          *(v214 + 16) = 256;
          *(v214 + 64) = 0xD000000000000043;
          *(v214 + 72) = 0x80000001C0D81A60;
          *v214 = 10;
          *(v214 + 24) = xmmword_1C0D7EEC0;
          *(v214 + 40) = 0x80000001C0D81970;
          *(v214 + 48) = 0xD00000000000006BLL;
          *(v214 + 56) = 0x80000001C0D81620;
          swift_willThrow();
          sub_1C0CF448C(v3, v12);
          sub_1C0CF448C(v265, v251);
          sub_1C0CF448C(v266, *(&v266 + 1));
          v215 = *(v281 + 8);
          v3 = v227;
          v215(v277, v227);
          (*(v278 + 8))(v279, v280);
          v216 = v240;
          v217 = v288;
          (v288)(v237, v240);
          v217(v235, v216);
          v217(v238, v216);
          v215(v282, v3);
          v217(v243, v216);
          sub_1C0CF448C(v294, *(&v294 + 1));
          v176 = *(&v305 + 1);
          v175 = v305;
LABEL_200:
          sub_1C0CF448C(v175, v176);
          v5 = v252;
          v4 = v253;
          v10 = v258;
LABEL_7:
          *&v294 = v40;
          v44 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
          v45 = *v289;
          if (swift_dynamicCast())
          {

            (*(v5 + 32))(v10, v45, v4);
            v46 = *(v5 + 16);
            v3 = v286;
            v46(v286, v10, v4);
            v47 = (*(v5 + 88))(v3, v4);
            if (v47 == *MEMORY[0x1E6966358])
            {
              (*(v5 + 96))(v3, v4);
              v289[0] = *v3;
              *&v298 = 0;
              *(&v298 + 1) = 0xE000000000000000;
              sub_1C0D78DAC();
              MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
              sub_1C0D78E9C();
              MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D81990);
              v3 = *(&v298 + 1);
              v48 = v298;
              sub_1C0D01E40();
              swift_allocError();
              *(v49 + 12) = 0;
              *(v49 + 16) = 256;
              *(v49 + 4) = v289[0];
              *(v49 + 8) = 0;
              *(v49 + 64) = v48;
              *(v49 + 72) = v3;
              *v49 = 3;
              *(v49 + 24) = xmmword_1C0D7EF10;
              *(v49 + 40) = 0x80000001C0D81970;
              *(v49 + 48) = 0xD00000000000006BLL;
              *(v49 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              (*(v5 + 8))(v10, v4);
            }

            else
            {
              if (v47 == *MEMORY[0x1E6966368])
              {
                v3 = 0x80000001C0D81620;
                sub_1C0D01E40();
                swift_allocError();
                *(v63 + 4) = 0;
                *(v63 + 8) = 1;
                *(v63 + 12) = 0;
                *(v63 + 16) = 256;
                *(v63 + 64) = 0xD000000000000048;
                *(v63 + 72) = 0x80000001C0D81A10;
                *v63 = 1;
                v64 = xmmword_1C0D7EF00;
              }

              else
              {
                if (v47 != *MEMORY[0x1E6966360])
                {
                  sub_1C0D6F118(&qword_1EBE6E098, MEMORY[0x1E6966370], MEMORY[0x1E6966378]);
                  swift_allocError();
                  v46(v67, v10, v4);
                  swift_willThrow();
                  v68 = *(v5 + 8);
                  v68(v10, v4);
                  v68(v3, v4);
                  goto LABEL_21;
                }

                v3 = 0x80000001C0D81620;
                sub_1C0D01E40();
                swift_allocError();
                *(v63 + 4) = 0;
                *(v63 + 8) = 1;
                *(v63 + 12) = 0;
                *(v63 + 16) = 256;
                *(v63 + 64) = 0xD00000000000005DLL;
                *(v63 + 72) = 0x80000001C0D819B0;
                *v63 = 2;
                v64 = xmmword_1C0D7EEF0;
              }

              *(v63 + 24) = v64;
              *(v63 + 40) = 0x80000001C0D81970;
              *(v63 + 48) = 0xD00000000000006BLL;
              *(v63 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              (*(v5 + 8))(v10, v4);
            }
          }

LABEL_21:

          return v3;
        }
      }

      goto LABEL_85;
    }

    if (v94 == 2)
    {
      v119 = *(v271 + 16);
      v118 = *(v271 + 24);
      v120 = __OFSUB__(v118, v119);
      v117 = v118 - v119;
      if (v120)
      {
        goto LABEL_214;
      }

      goto LABEL_85;
    }

    v117 = 0;
    if (v114 <= 1)
    {
LABEL_86:
      if (v114)
      {
        LODWORD(v121) = HIDWORD(v109) - DWORD2(v109);
        if (__OFSUB__(HIDWORD(v109), DWORD2(v109)))
        {
          goto LABEL_205;
        }

        v121 = v121;
      }

      else
      {
        v121 = v297[6];
      }

      goto LABEL_93;
    }

LABEL_91:
    if (v114 != 2)
    {
      if (v117)
      {
LABEL_193:
        sub_1C0D6ECEC(&v294, v293);
        goto LABEL_199;
      }

LABEL_98:
      sub_1C0D6ECEC(&v294, v293);
      result = sub_1C0D6ECEC(&v298, v293);
      goto LABEL_99;
    }

    v123 = *(*(&v109 + 1) + 16);
    v122 = *(*(&v109 + 1) + 24);
    v120 = __OFSUB__(v122, v123);
    v121 = v122 - v123;
    if (v120)
    {
      goto LABEL_206;
    }

LABEL_93:
    if (v117 != v121)
    {
      goto LABEL_193;
    }

    if (v117 < 1)
    {
      goto LABEL_98;
    }

    sub_1C0D6ECEC(&v294, v293);
    sub_1C0D6ECEC(&v298, v293);
    sub_1C0CF6468(v112, v113);
    result = sub_1C0D6DE04(v271, v261, v112, v113);
    if ((result & 1) == 0)
    {
      goto LABEL_198;
    }

LABEL_99:
    v124 = *&v297[8];
    v125 = *&v297[16];
    v126 = *&v297[16] >> 62;
    if (v116 == 3)
    {
      v127 = v267;
      if (*&v297[16] >> 62 != 3)
      {
        v127 = 0;
      }

      if (v127 == 1)
      {
        v128 = 0;
        if (*&v297[8] == __PAIR128__(0xC000000000000000, 0))
        {
          v129 = v274;
          goto LABEL_127;
        }

LABEL_111:
        if (v126 <= 1)
        {
          goto LABEL_112;
        }

        goto LABEL_115;
      }
    }

    else
    {
      if (v116 <= 1)
      {
        v128 = v256;
        if (v116)
        {
          v128 = v247;
          if (v248)
          {
            goto LABEL_216;
          }
        }

        goto LABEL_111;
      }

      if (v116 == 2)
      {
        v131 = *(v270 + 16);
        v130 = *(v270 + 24);
        v120 = __OFSUB__(v130, v131);
        v128 = v130 - v131;
        if (v120)
        {
          goto LABEL_215;
        }

        goto LABEL_111;
      }
    }

    v128 = 0;
    if (v126 <= 1)
    {
LABEL_112:
      if (v126)
      {
        LODWORD(v132) = *&v297[12] - *&v297[8];
        if (__OFSUB__(*&v297[12], *&v297[8]))
        {
          goto LABEL_208;
        }

        v132 = v132;
      }

      else
      {
        v132 = v297[22];
      }

      v129 = v274;
      goto LABEL_122;
    }

LABEL_115:
    if (v126 != 2)
    {
      v129 = v274;
      if (v128)
      {
        goto LABEL_198;
      }

      goto LABEL_127;
    }

    v134 = *(*&v297[8] + 16);
    v133 = *(*&v297[8] + 24);
    v120 = __OFSUB__(v133, v134);
    v132 = v133 - v134;
    v129 = v274;
    if (v120)
    {
      goto LABEL_207;
    }

LABEL_122:
    if (v128 != v132)
    {
      goto LABEL_198;
    }

    if (v128 >= 1)
    {
      sub_1C0CF6468(*&v297[8], *&v297[16]);
      result = sub_1C0D6DE04(v270, v260, v124, v125);
      if ((result & 1) == 0)
      {
        goto LABEL_198;
      }
    }

LABEL_127:
    v135 = *&v297[24];
    v136 = *&v297[32];
    v137 = *&v297[32] >> 62;
    if (v129 == 3)
    {
      v138 = v264;
      if (*&v297[32] >> 62 != 3)
      {
        v138 = 0;
      }

      if (v138 == 1)
      {
        v139 = 0;
        if (*&v297[24] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_154;
        }

LABEL_139:
        if (v137 <= 1)
        {
          goto LABEL_140;
        }

        goto LABEL_143;
      }
    }

    else
    {
      if (v129 <= 1)
      {
        v139 = v255;
        if (v129)
        {
          v139 = v245;
          if (v246)
          {
            goto LABEL_218;
          }
        }

        goto LABEL_139;
      }

      if (v129 == 2)
      {
        v141 = *(v268 + 16);
        v140 = *(v268 + 24);
        v120 = __OFSUB__(v140, v141);
        v139 = v140 - v141;
        if (v120)
        {
          goto LABEL_217;
        }

        goto LABEL_139;
      }
    }

    v139 = 0;
    if (v137 <= 1)
    {
LABEL_140:
      if (v137)
      {
        LODWORD(v142) = *&v297[28] - *&v297[24];
        if (__OFSUB__(*&v297[28], *&v297[24]))
        {
          goto LABEL_209;
        }

        v142 = v142;
      }

      else
      {
        v142 = v297[38];
      }

      goto LABEL_149;
    }

LABEL_143:
    if (v137 != 2)
    {
      if (v139)
      {
        goto LABEL_198;
      }

      goto LABEL_154;
    }

    v144 = *(*&v297[24] + 16);
    v143 = *(*&v297[24] + 24);
    v120 = __OFSUB__(v143, v144);
    v142 = v143 - v144;
    if (v120)
    {
      goto LABEL_210;
    }

LABEL_149:
    if (v139 != v142)
    {
      goto LABEL_198;
    }

    if (v139 >= 1)
    {
      sub_1C0CF6468(*&v297[24], *&v297[32]);
      result = sub_1C0D6DE04(v268, v259, v135, v136);
      if ((result & 1) == 0)
      {
        goto LABEL_198;
      }
    }

LABEL_154:
    v146 = *&v297[40];
    v145 = *&v297[48];
    if (v91 >> 60 == 15)
    {
      if (*&v297[48] >> 60 != 15)
      {
        goto LABEL_192;
      }

      sub_1C0D134D0(v93, v91);
      sub_1C0D134D0(v146, v145);
      goto LABEL_187;
    }

    if (*&v297[48] >> 60 == 15)
    {
LABEL_192:
      sub_1C0D134D0(v93, v91);
      sub_1C0D134D0(v146, v145);
      sub_1C0D13830(v93, v91);
      v168 = v146;
      v169 = v145;
LABEL_197:
      sub_1C0D13830(v168, v169);
LABEL_198:
      sub_1C0D6ED24(&v298);
LABEL_199:
      v170 = DWORD2(v298);
      v293[0] = 0;
      v293[1] = 0xE000000000000000;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000029, 0x80000001C0D81920);
      v290 = v170;
      v171 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v171);

      MEMORY[0x1C68E3B00](0x20646E6120, 0xE500000000000000);
      v290 = v287;
      v172 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v172);

      MEMORY[0x1C68E3B00](0xD00000000000001ELL, 0x80000001C0D81950);
      v173 = *v293;
      v3 = 0x80000001C0D81970;
      sub_1C0D01E40();
      v40 = swift_allocError();
      *(v174 + 4) = 0;
      *(v174 + 8) = 1;
      *(v174 + 12) = 0;
      *(v174 + 16) = 256;
      *(v174 + 64) = v173;
      *v174 = 9;
      *(v174 + 24) = xmmword_1C0D7EEB0;
      *(v174 + 40) = 0x80000001C0D81970;
      *(v174 + 48) = 0xD00000000000006BLL;
      *(v174 + 56) = 0x80000001C0D81620;
      swift_willThrow();
      sub_1C0CF448C(v266, *(&v266 + 1));
      sub_1C0CF448C(v265, v251);
      sub_1C0D6ED24(&v294);

      v176 = *(&v305 + 1);
      v175 = v305;
      goto LABEL_200;
    }

    v147 = *&v297[48] >> 62;
    if (v263 == 3)
    {
      v148 = v254;
      if (*&v297[48] >> 62 != 3)
      {
        v148 = 0;
      }

      if (v148 == 1)
      {
        v149 = 0;
        if (*&v297[40] == __PAIR128__(0xC000000000000000, 0))
        {
          sub_1C0D134D0(0, 0xC000000000000000);
          sub_1C0D134D0(0, 0xC000000000000000);
          v150 = 0;
          v151 = 0xC000000000000000;
          goto LABEL_186;
        }

LABEL_170:
        if (v147 <= 1)
        {
          goto LABEL_171;
        }

        goto LABEL_174;
      }
    }

    else
    {
      if (v263 <= 1)
      {
        v149 = v244;
        if (v263)
        {
          v149 = v241;
          if (v242)
          {
            goto LABEL_223;
          }
        }

        goto LABEL_170;
      }

      if (v263 == 2)
      {
        v153 = *(v93 + 16);
        v152 = *(v93 + 24);
        v120 = __OFSUB__(v152, v153);
        v149 = v152 - v153;
        if (v120)
        {
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        goto LABEL_170;
      }
    }

    v149 = 0;
    if (v147 <= 1)
    {
LABEL_171:
      if (v147)
      {
        LODWORD(v154) = *&v297[44] - *&v297[40];
        if (__OFSUB__(*&v297[44], *&v297[40]))
        {
          goto LABEL_219;
        }

        v154 = v154;
      }

      else
      {
        v154 = v297[54];
      }

      goto LABEL_180;
    }

LABEL_174:
    if (v147 != 2)
    {
      if (v149)
      {
LABEL_196:
        sub_1C0D134D0(v93, v91);
        sub_1C0D134D0(v146, v145);
        sub_1C0D13830(v146, v145);
        v168 = v93;
        v169 = v91;
        goto LABEL_197;
      }

LABEL_185:
      sub_1C0D134D0(v93, v91);
      sub_1C0D134D0(v146, v145);
      v150 = v146;
      v151 = v145;
LABEL_186:
      sub_1C0D13830(v150, v151);
LABEL_187:
      sub_1C0D13830(v93, v91);
      sub_1C0D6ED24(&v298);
      goto LABEL_188;
    }

    v156 = *(*&v297[40] + 16);
    v155 = *(*&v297[40] + 24);
    v120 = __OFSUB__(v155, v156);
    v154 = v155 - v156;
    if (v120)
    {
      goto LABEL_220;
    }

LABEL_180:
    if (v149 != v154)
    {
      goto LABEL_196;
    }

    if (v149 < 1)
    {
      goto LABEL_185;
    }

    sub_1C0D134D0(v93, v91);
    sub_1C0D134D0(v146, v145);
    sub_1C0D134D0(v93, v91);
    sub_1C0D134D0(v146, v145);
    sub_1C0D134D0(v146, v145);
    v157 = sub_1C0D6DE04(v93, v91, v146, v145);
    sub_1C0D13830(v146, v145);
    sub_1C0D13830(v146, v145);
    sub_1C0D13830(v93, v91);
    sub_1C0D13830(v93, v91);
    sub_1C0D6ED24(&v298);
    if ((v157 & 1) == 0)
    {
      goto LABEL_199;
    }

LABEL_188:
    if (v273 != v294)
    {
      goto LABEL_199;
    }

    v158 = v3;
    v159 = v91;
    v160 = v93;
    v161 = *(&v295 + 1);
    v162 = v296;
    v163 = v284[18];
    v164 = objc_allocWithZone(MEMORY[0x1E6999658]);
    sub_1C0CF6468(v161, v162);
    v165 = sub_1C0D7830C();
    [v164 initWithParams:v163 x:v287 y:v165];

    sub_1C0CF448C(v161, v162);
    sub_1C0D6ED24(&v294);
    sub_1C0D78E0C();
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    if (!v285)
    {
      break;
    }

    v107 = v285 - 1;
    v88 = v288 + 104;
    v4 = &v294;
    v93 = v160;
    v91 = v159;
    v3 = v158;
    v94 = v272;
  }

  v3 = v291;
  *&v298 = v284;
  sub_1C0D6ACB0(v291, v243);
  v40 = v158;
  v10 = v258;
  if (v158)
  {
    sub_1C0CF448C(v266, *(&v266 + 1));
    sub_1C0CF448C(v265, v251);

    sub_1C0CF448C(v305, *(&v305 + 1));
    v5 = v252;
    v4 = v253;
    goto LABEL_7;
  }

  v177 = v262;
  v178 = v262[10];
  *&v298 = v262[9];
  *(&v298 + 1) = v178;
  sub_1C0CF6468(v298, v178);
  sub_1C0D17E68();
  sub_1C0D7876C();
  v180 = v252;
  v179 = v253;
  v181 = v177[12];
  *&v298 = v177[11];
  *(&v298 + 1) = v181;
  v182 = v177[13];
  v183 = v177[14];
  *&v294 = v182;
  *(&v294 + 1) = v183;
  sub_1C0CF6468(v298, v181);
  sub_1C0CF6468(v182, v183);
  sub_1C0D787AC();
  v252 = v180;
  v253 = v179;
  v184 = v305;
  v298 = v305;
  sub_1C0CF6468(v305, *(&v305 + 1));
  v3 = sub_1C0D7873C();
  v12 = v185;
  sub_1C0CF448C(v298, *(&v298 + 1));
  v294 = v226;
  *(&v299 + 1) = MEMORY[0x1E6969080];
  *&v300 = MEMORY[0x1E6969078];
  v298 = v184;
  v186 = __swift_project_boxed_opaque_existential_1(&v298, MEMORY[0x1E6969080]);
  v187 = *v186;
  v288 = v186[1];
  sub_1C0CF6468(v184, *(&v184 + 1));
  sub_1C0D4268C(v187, v288, &v294);
  __swift_destroy_boxed_opaque_existential_1(&v298);
  *(&v299 + 1) = MEMORY[0x1E6969080];
  *&v300 = MEMORY[0x1E6969078];
  *&v298 = v3;
  *(&v298 + 1) = v12;
  v188 = __swift_project_boxed_opaque_existential_1(&v298, MEMORY[0x1E6969080]);
  v189 = *v188;
  v190 = v188[1];
  sub_1C0CF6468(v3, v12);
  sub_1C0D4268C(v189, v190, &v294);
  v287 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v298);
  v298 = v294;
  sub_1C0CF6468(v294, *(&v294 + 1));
  v191 = v236;
  sub_1C0D7868C();
  v192 = v229;
  swift_bridgeObjectRetain_n();
  v193 = v230;
  *&v298 = sub_1C0D07698(v230, v192);
  *(&v298 + 1) = v194;
  v293[0] = sub_1C0D07698(v193, v192);
  v293[1] = v195;
  v285 = sub_1C0D789EC();
  v283 = sub_1C0D6F118(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v196 = v191;
  sub_1C0D7881C();
  sub_1C0CF448C(v293[0], v293[1]);
  sub_1C0CF448C(v298, *(&v298 + 1));
  v197 = v239;
  v198 = v239 + 8;
  v288 = *(v239 + 8);
  (v288)(v196, v240);
  v298 = v294;
  sub_1C0CF6468(v294, *(&v294 + 1));
  sub_1C0D7868C();
  v199 = v232;
  swift_bridgeObjectRetain_n();
  v200 = v233;
  *&v298 = sub_1C0D07698(v233, v199);
  *(&v298 + 1) = v201;
  v293[0] = sub_1C0D07698(v200, v199);
  v293[1] = v202;
  v203 = v235;
  v204 = v236;
  sub_1C0D7881C();
  sub_1C0CF448C(v293[0], v293[1]);
  sub_1C0CF448C(v298, *(&v298 + 1));
  v205 = v240;
  v285 = v198;
  (v288)(v204, v240);
  (*(v197 + 16))(v204, v238, v205);
  sub_1C0D6F118(&qword_1EBE6DCD0, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  sub_1C0D7868C();
  v207 = v279;
  v206 = v280;
  v208 = v287;
  sub_1C0D7867C();
  v40 = v208;
  if (v208)
  {
    sub_1C0CF448C(v3, v12);
    sub_1C0CF448C(v265, v251);
    sub_1C0CF448C(v266, *(&v266 + 1));
    v209 = v240;
    v3 = v288;
    (v288)(v237, v240);
    (v3)(v203, v209);
    (v3)(v238, v209);
    (*(v281 + 8))(v282, v227);
    (v3)(v243, v209);
    sub_1C0CF448C(v294, *(&v294 + 1));
    v176 = *(&v305 + 1);
    v175 = v305;
    goto LABEL_200;
  }

  *&v298 = v3;
  *(&v298 + 1) = v12;
  v210 = v278;
  v4 = v276;
  (*(v278 + 16))(v276, v207, v206);
  (*(v210 + 56))(v4, 0, 1, v206);
  *v293 = v305;
  sub_1C0CF6468(v305, *(&v305 + 1));
  sub_1C0D7874C();
LABEL_211:
  sub_1C0CF448C(v293[0], v293[1]);
  sub_1C0D13578(v4, qword_1EBE6DCE8, &unk_1C0D7EF60);
  result = sub_1C0D6E688();
  if ((result & 1) == 0)
  {
    goto LABEL_221;
  }

  if (*(v284 + 18) == 1)
  {
    sub_1C0CF448C(v265, v251);
    sub_1C0CF448C(v266, *(&v266 + 1));
    *v289 = *(v281 + 8);
    v211 = v227;
    (*v289)(v277, v227);
    (*(v278 + 8))(v279, v280);
    v212 = v240;
    v213 = v288;
    (v288)(v237, v240);
    v213(v235, v212);
    v213(v238, v212);
    (*v289)(v282, v211);
    v213(v243, v212);
    sub_1C0CF448C(v294, *(&v294 + 1));
    sub_1C0CF448C(v305, *(&v305 + 1));
    return v3;
  }

LABEL_224:
  v218 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v218 == 2)
    {
      v221 = *(v3 + 16);
      v220 = *(v3 + 24);
      v120 = __OFSUB__(v220, v221);
      v219 = v220 - v221;
      if (v120)
      {
        __break(1u);
        goto LABEL_231;
      }
    }

    else
    {
      v219 = 0;
    }

LABEL_234:
    result = v219 - v228;
    if (__OFSUB__(v219, v228))
    {
      __break(1u);
      goto LABEL_237;
    }

    sub_1C0D01560(result, v3, v12, &v298);
    sub_1C0CF448C(v265, v251);
    sub_1C0CF448C(v266, *(&v266 + 1));
    v222 = *(v281 + 8);
    v223 = v227;
    v222(v277, v227);
    (*(v278 + 8))(v279, v280);
    v224 = v240;
    v225 = v288;
    (v288)(v237, v240);
    v225(v235, v224);
    v225(v238, v224);
    v222(v282, v223);
    v225(v243, v224);
    sub_1C0CF448C(v294, *(&v294 + 1));
    sub_1C0CF448C(v305, *(&v305 + 1));
    return v298;
  }

  else
  {
    if (!v218)
    {
      v219 = BYTE6(v12);
      goto LABEL_234;
    }

LABEL_231:
    LODWORD(v219) = HIDWORD(v3) - v3;
    if (!__OFSUB__(HIDWORD(v3), v3))
    {
      v219 = v219;
      goto LABEL_234;
    }

LABEL_237:
    __break(1u);
  }

  return result;
}

uint64_t CKSecretSharing.HybridSecretShare.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C0D7840C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C0CF6468(a1, a2);
  sub_1C0D783FC();
  sub_1C0D6F118(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare, &unk_1C0D7E064);
  sub_1C0D784DC();
  if (v3)
  {
    return sub_1C0CF448C(a1, a2);
  }

  if (*v10 == 1)
  {
    sub_1C0CF448C(a1, a2);
    v12 = *(v8 + 48);
    v13 = &v10[*(v8 + 44)];
    v14 = *v13;
    v38 = v13[4];
    v39 = v14;
    v16 = *&v10[v12];
    v15 = *&v10[v12 + 8];
    if (v15 >> 60 != 15)
    {
      sub_1C0D134D0(*&v10[v12], *&v10[v12 + 8]);
    }

    v32 = *(v10 + 1);
    v17 = *(v10 + 1);
    v30 = *(v10 + 2);
    v31 = v17;
    v18 = *(v10 + 3);
    v19 = *(v10 + 4);
    v33 = v16;
    v34 = v15;
    v21 = *(v10 + 5);
    v20 = *(v10 + 6);
    v22 = *(v10 + 7);
    v23 = *(v10 + 8);
    sub_1C0CF6468(v17, v30);
    sub_1C0CF6468(v18, v19);
    sub_1C0CF6468(v21, v20);
    sub_1C0CF6468(v22, v23);
    result = sub_1C0D6F0B8(v10, type metadata accessor for CryptoKitSecretSharing_SecretShare);
    v24 = v38;
    LOBYTE(v35) = v38;
    *a3 = 1;
    v25 = v39;
    *(a3 + 8) = v32;
    *(a3 + 12) = v25;
    *(a3 + 16) = v24;
    v26 = v30;
    *(a3 + 24) = v31;
    *(a3 + 32) = v26;
    *(a3 + 40) = v18;
    *(a3 + 48) = v19;
    *(a3 + 56) = v21;
    *(a3 + 64) = v20;
    *(a3 + 72) = v22;
    *(a3 + 80) = v23;
    v27 = v34;
    *(a3 + 88) = v33;
    *(a3 + 96) = v27;
  }

  else
  {
    sub_1C0D01E40();
    swift_allocError();
    *(v28 + 4) = 0;
    *(v28 + 8) = 1;
    *(v28 + 12) = 0;
    *(v28 + 16) = 256;
    *(v28 + 64) = 0;
    *(v28 + 72) = 0xE000000000000000;
    *v28 = 15;
    *(v28 + 24) = xmmword_1C0D7EF20;
    *(v28 + 40) = 0xE800000000000000;
    *(v28 + 48) = 0xD00000000000006BLL;
    *(v28 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    return sub_1C0D6F0B8(v10, type metadata accessor for CryptoKitSecretSharing_SecretShare);
  }

  return result;
}

uint64_t Data.init(secretShare:)(uint64_t a1)
{
  v72[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 8);
  v56 = *(a1 + 12);
  v57 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v60 = *(a1 + 40);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v62 = v8;
  v63 = v9;
  v11 = *(a1 + 80);
  v67 = *(a1 + 72);
  v65 = v10;
  v66 = v11;
  v12 = *(a1 + 96);
  v69 = *(a1 + 88);
  *(v4 + 8) = xmmword_1C0D7BAB0;
  *(v4 + 24) = xmmword_1C0D7BAB0;
  *(v4 + 40) = xmmword_1C0D7BAB0;
  *(v4 + 56) = xmmword_1C0D7BAB0;
  sub_1C0D783DC();
  v13 = &v4[*(v2 + 44)];
  *v13 = 0;
  v13[4] = 1;
  v64 = v2;
  v14 = &v4[*(v2 + 48)];
  *v14 = xmmword_1C0D7D9D0;
  *v4 = 1;
  *(v4 + 1) = v5;
  v15 = *(v4 + 1);
  v16 = *(v4 + 2);
  *(v4 + 1) = v6;
  *(v4 + 2) = v7;
  v61 = v6;
  v59 = v7;
  sub_1C0CF6468(v6, v7);
  sub_1C0CF448C(v15, v16);
  if ((v57 & 1) == 0)
  {
    *v13 = v56;
    v13[4] = 0;
  }

  if (v12 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v69;
  }

  v18 = v12;
  v58 = v12;
  if (v12 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  v19 = *v14;
  v20 = *(v14 + 1);
  sub_1C0D134D0(v69, v18);
  sub_1C0D13830(v19, v20);
  *v14 = v17;
  *(v14 + 1) = v12;
  v21 = *(v4 + 3);
  v22 = *(v4 + 4);
  v23 = v60;
  v24 = v62;
  sub_1C0CF6468(v60, v62);
  sub_1C0CF448C(v21, v22);
  *(v4 + 3) = v23;
  *(v4 + 4) = v24;
  v25 = *(v4 + 5);
  v26 = *(v4 + 6);
  v27 = v65;
  v28 = v63;
  sub_1C0CF6468(v65, v63);
  sub_1C0CF448C(v25, v26);
  *(v4 + 5) = v27;
  *(v4 + 6) = v28;
  v29 = *(v4 + 7);
  v30 = *(v4 + 8);
  v32 = v66;
  v31 = v67;
  sub_1C0CF6468(v67, v66);
  sub_1C0CF448C(v29, v30);
  sub_1C0CF448C(v61, v59);
  sub_1C0CF448C(v23, v24);
  sub_1C0CF448C(v27, v28);
  sub_1C0CF448C(v31, v32);
  sub_1C0D13830(v69, v58);
  *(v4 + 7) = v31;
  *(v4 + 8) = v32;
  sub_1C0D6F118(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare, &unk_1C0D7E064);
  v33 = v4;
  v34 = v68;
  v35 = sub_1C0D784EC();
  if (!v34)
  {
    v72[3] = MEMORY[0x1E6969080];
    v72[4] = MEMORY[0x1E6969078];
    v72[0] = v35;
    v72[1] = v36;
    v37 = __swift_project_boxed_opaque_existential_1(v72, MEMORY[0x1E6969080]);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        memset(v70, 0, 14);
        v42 = v70;
        v41 = v70;
        goto LABEL_32;
      }

      v43 = *(v38 + 16);
      v44 = *(v38 + 24);
      v45 = sub_1C0D7812C();
      if (v45)
      {
        v46 = sub_1C0D7815C();
        v38 = v43 - v46;
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_35;
        }

        v45 += v38;
      }

      v47 = __OFSUB__(v44, v43);
      v48 = v44 - v43;
      if (!v47)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v40)
    {
      v70[0] = *v37;
      LOWORD(v70[1]) = v39;
      BYTE2(v70[1]) = BYTE2(v39);
      BYTE3(v70[1]) = BYTE3(v39);
      BYTE4(v70[1]) = BYTE4(v39);
      BYTE5(v70[1]) = BYTE5(v39);
      v41 = v70 + BYTE6(v39);
      v42 = v70;
LABEL_32:
      sub_1C0D20850(v42, v41, &v71);
      v33 = v71;
      __swift_destroy_boxed_opaque_existential_1(v72);
      sub_1C0D6F0B8(v4, type metadata accessor for CryptoKitSecretSharing_SecretShare);
      return v33;
    }

    v49 = v38;
    v50 = v38 >> 32;
    v48 = v50 - v49;
    if (v50 >= v49)
    {
      v45 = sub_1C0D7812C();
      if (!v45)
      {
LABEL_24:
        v52 = sub_1C0D7814C();
        if (v52 >= v48)
        {
          v53 = v48;
        }

        else
        {
          v53 = v52;
        }

        v54 = (v53 + v45);
        if (v45)
        {
          v41 = v54;
        }

        else
        {
          v41 = 0;
        }

        v42 = v45;
        goto LABEL_32;
      }

      v51 = sub_1C0D7815C();
      if (!__OFSUB__(v49, v51))
      {
        v45 += v49 - v51;
        goto LABEL_24;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1C0D6F0B8(v4, type metadata accessor for CryptoKitSecretSharing_SecretShare);
  return v33;
}

uint64_t sub_1C0D6DE04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C0D6E268(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C0CF448C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1C0D198E4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C0CF448C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_1C0D6DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
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

  v11 = sub_1C0D7814C();
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

  return (sub_1C0D6E1C0(v8, v14, a4) & 1);
}

uint64_t sub_1C0D6E02C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      v10 = *a3;
      swift_beginAccess();
      sub_1C0CF15F4(*(v10 + 16), *(v10 + 16), v11, 0);
      goto LABEL_10;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
LABEL_7:
    result = sub_1C0D6DF94(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    if (v3)
    {
      return result;
    }

    return result & 1;
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v11[0] = a1;
  LOWORD(v11[1]) = a2;
  BYTE2(v11[1]) = BYTE2(a2);
  BYTE3(v11[1]) = BYTE3(a2);
  BYTE4(v11[1]) = BYTE4(a2);
  v5 = BYTE6(a2);
  BYTE5(v11[1]) = BYTE5(a2);
  v6 = *a3;
  swift_beginAccess();
  sub_1C0CF15F4(*(v6 + 16), *(v6 + 16), v11, v5);
LABEL_10:
  LOBYTE(result) = 0;
  return result & 1;
}

uint64_t sub_1C0D6E1C0(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a2 - a1;
    v4 = *a3;
    swift_beginAccess();
    v6 = *(v4 + 16);
    v7 = v6;
    v8 = a1;
    v9 = v3;
  }

  else
  {
    v10 = *a3;
    swift_beginAccess();
    v6 = *(v10 + 16);
    v7 = v6;
    v8 = 0;
    v9 = 0;
  }

  sub_1C0CF15F4(v6, v7, v8, v9);
  return 0;
}

uint64_t sub_1C0D6E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C0D7812C();
  v11 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C0D7814C();
  sub_1C0D198E4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL _s16CryptoKitPrivate15CKSecretSharingO17HybridSecretShareV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a2 + 16);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v11 = *(a2 + 56);
    v10 = *(a2 + 64);
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    if (*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 12) != *(a2 + 12))
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    v23 = *(a1 + 80);
    v24 = *(a1 + 72);
    v19 = *(a2 + 88);
    v20 = *(a2 + 96);
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    if (sub_1C0D04660(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) && sub_1C0D04660(v4, v3, v8, v9) && sub_1C0D04660(v5, v6, v11, v10) && sub_1C0D04660(v24, v23, v12, v13))
    {
      if (v22 >> 60 == 15)
      {
        v15 = v20;
        v14 = v21;
        if (v20 >> 60 == 15)
        {
          sub_1C0D134D0(v21, v22);
          sub_1C0D134D0(v19, v20);
          sub_1C0D13830(v21, v22);
          return 1;
        }
      }

      else
      {
        v15 = v20;
        v14 = v21;
        if (v20 >> 60 != 15)
        {
          sub_1C0D134D0(v21, v22);
          sub_1C0D134D0(v19, v20);
          v18 = sub_1C0D04660(v21, v22, v19, v20);
          sub_1C0D13830(v19, v20);
          sub_1C0D13830(v21, v22);
          return v18;
        }
      }

      v16 = v14;
      sub_1C0D134D0(v14, v22);
      sub_1C0D134D0(v19, v15);
      sub_1C0D13830(v16, v22);
      sub_1C0D13830(v19, v15);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1C0D6E528(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1C0D7818C();
      swift_allocObject();
      sub_1C0D7816C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CKSecretSharing.HybridGenerator(uint64_t a1)
{
  result = qword_1EBE6E0A0;
  if (!qword_1EBE6E0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C0D6E688()
{
  v0 = sub_1C0D7877C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-v5];
  sub_1C0D787BC();
  sub_1C0D787BC();
  v25 = v4;
  sub_1C0D7875C();
  v7 = *(v1 + 8);
  v7(v6, v0);
  v8 = v26;
  v7(v4, v0);
  if (v8 == 1 && (v9 = sub_1C0D7878C(), v11 = v10, v12 = sub_1C0D7878C(), v14 = v13, v15 = sub_1C0D04660(v9, v11, v12, v13), sub_1C0CF448C(v12, v14), sub_1C0CF448C(v9, v11), v15))
  {
    v16 = sub_1C0D7879C();
    v18 = v17;
    v19 = sub_1C0D7879C();
    v21 = v20;
    v22 = sub_1C0D04660(v16, v18, v19, v20);
    sub_1C0CF448C(v19, v21);
    sub_1C0CF448C(v16, v18);
  }

  else
  {
    return 0;
  }

  return v22;
}

uint64_t sub_1C0D6E898(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = 0x80000001C0D81C70;
    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    v5 = 0xD00000000000004BLL;
    *(v4 + 72) = 0x80000001C0D81C70;
    *v4 = 17;
    v6 = xmmword_1C0D7EF30;
    goto LABEL_6;
  }

  if ((*(a1 + 16) & 1) == 0 && *(a1 + 8))
  {
    v3 = 0x80000001C0D81CC0;
    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    v5 = 0xD000000000000066;
    *(v4 + 72) = 0x80000001C0D81CC0;
    *v4 = 17;
    v6 = xmmword_1C0D7EF40;
LABEL_6:
    *(v4 + 24) = v6;
    *(v4 + 40) = 0xEF293A6675626F74;
    *(v4 + 48) = 0xD00000000000006BLL;
    *(v4 + 56) = 0x80000001C0D81620;
    *(v4 + 64) = v5;
    swift_willThrow();
    goto LABEL_18;
  }

  v7 = *(a1 + 20);
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 24);
  v10 = *(a1 + 17);
  v11 = *(a1 + 48);
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_allocObject();
  sub_1C0CF6468(v3, v8);
  result = sub_1C0D660D8(v7, v3, v8, v9, v10, v12, v11);
  if (v1)
  {
    goto LABEL_18;
  }

  v3 = result;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64) >> 62;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_16;
    }

    v16 = v14 + 16;
    v14 = *(v14 + 16);
    if (!__OFSUB__(*(v16 + 8), v14))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v15)
  {
    goto LABEL_16;
  }

  if (!__OFSUB__(HIDWORD(v14), v14))
  {
LABEL_16:

    v17 = swift_slowAlloc();
    ccss_shamir_share_init();
    sub_1C0D7838C();

    v18 = ccss_shamir_share_generator_deserialize();
    if (!v18)
    {
      memset_s(v17, 8uLL, 0, 8uLL);
      MEMORY[0x1C68E4EB0](v17, -1, -1);
      sub_1C0D6F0B8(a1, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
      return v3;
    }

    v19 = v18;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003DLL, 0x80000001C0D80460);
    v20 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v20);

    sub_1C0D01E40();
    swift_allocError();
    *(v21 + 12) = 0;
    *(v21 + 16) = 256;
    *(v21 + 4) = v19;
    *(v21 + 8) = 0;
    *(v21 + 64) = 0;
    *(v21 + 72) = 0xE000000000000000;
    *v21 = 3;
    *(v21 + 24) = xmmword_1C0D7EF50;
    *(v21 + 40) = 0xEF293A6675626F74;
    *(v21 + 48) = 0xD00000000000006BLL;
    *(v21 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    memset_s(v17, 8uLL, 0, 8uLL);
    MEMORY[0x1C68E4EB0](v17, -1, -1);

LABEL_18:
    sub_1C0D6F0B8(a1, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C0D6ECB4(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  CKSecretSharing.HybridGenerator.generateShare(shareIndex:)(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_1C0D6ED8C(uint64_t a1)
{
  result = type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  if (v2 <= 0x3F)
  {
    result = sub_1C0D786AC();
    if (v3 <= 0x3F)
    {
      result = sub_1C0D787CC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t sub_1C0D6EE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 104))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D6EEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1C0D6EFC4()
{
  result = qword_1EBE6E0B0;
  if (!qword_1EBE6E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0B0);
  }

  return result;
}

uint64_t sub_1C0D6F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0D6F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0D6F118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SymmetricKey.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1C0CF3E1C(a1, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

CryptoKitPrivate::SymmetricKeySize __swiftcall SymmetricKeySize.init(bitCount:)(CryptoKitPrivate::SymmetricKeySize bitCount)
{
  if (bitCount.bitCount < 1 || (bitCount.bitCount & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v1->bitCount = bitCount.bitCount;
  }

  return bitCount;
}

uint64_t SymmetricKey.init(size:)@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 7;
  }

  if ((*a1 + 7) <= 0xE)
  {
    if (qword_1EBE6CB98 != -1)
    {
      swift_once();
    }

    v5 = off_1EBE6CBA0;

    goto LABEL_16;
  }

  if (v3 < -7)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >> 35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v4 >> 3;
  v8 = ((v4 >> 3) - 1) | (((v4 >> 3) - 1) >> 1);
  v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
  v10 = v9 | (v9 >> 8) | ((v9 | (v9 >> 8)) >> 16);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v13;
  if ((_swift_stdlib_malloc_size(v5) - 32) < v7)
  {
LABEL_19:
    __break(1u);
    __break(1u);
  }

  result = ccrng();
  if (result)
  {
    ccrng_generate_bridge();
    result = swift_beginAccess();
    v5[2] = v7;
LABEL_16:
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SymmetricKey.bitCount.getter()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 60))
  {
    return 8 * v3;
  }

  __break(1u);
  return result;
}

BOOL _s16CryptoKitPrivate12SymmetricKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  sub_1C0CF5E04(v3 + 32, v3 + 32 + *(v3 + 16), v2 + 32, v2 + 32 + v4, &v6);
  return v6;
}

uint64_t getEnumTagSinglePayload for SymmetricKeySize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymmetricKeySize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C0D6F528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D6F57C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = sub_1C0D786FC();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0D7872C();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C0D786AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  v33 = a1;
  v34 = a2;
  v32 = a1;
  v35 = a2;
  sub_1C0CF6468(a1, a2);
  sub_1C0D7868C();
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D7880C();
  v27 = *(v11 + 8);
  v27(v17, v10);
  sub_1C0D7818C();
  swift_allocObject();
  v20 = sub_1C0D7813C();
  v33 = 0x1000000000;
  v34 = v20;
  sub_1C0D6F9B8(&v33, 0);
  (*(v11 + 16))(v14, v19, v10);
  v21 = v28;
  (*(v30 + 104))(v29, *MEMORY[0x1E69664D8], v31);
  sub_1C0D7870C();
  v27(v19, v10);
  if (v3)
  {
    return sub_1C0CF448C(v32, v35);
  }

  sub_1C0CF448C(v32, v35);
  return (*(v24 + 32))(v26, v21, v25);
}

uint64_t sub_1C0D6F908()
{
  v0 = sub_1C0D7871C();
  v2 = v1;
  v3 = sub_1C0D6FB40(v0, v1);
  sub_1C0CF448C(v0, v2);
  return v3;
}

uint64_t sub_1C0D6F9B8(int *a1, int a2)
{
  result = sub_1C0D7826C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1C0D7815C();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1C0D7814C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t type metadata accessor for AesPrg(uint64_t a1)
{
  result = qword_1EBE6E0B8;
  if (!qword_1EBE6E0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0D6FAD4(uint64_t a1)
{
  result = sub_1C0D7872C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D6FB40(int64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
LABEL_8:
    if (v2 != 2)
    {
      a1 = 0;
      return bswap64(a1);
    }

    v8 = *(a1 + 16);
    v9 = sub_1C0D7812C();
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = v9;
    v11 = sub_1C0D7815C();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      sub_1C0D7814C();
      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v2)
  {
    return bswap64(a1);
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1C0D7812C();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C0D7815C();
    if (__OFSUB__(v3, v6))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_1C0D7814C();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = (v3 - v6 + v5);
    a1 = sub_1C0D7814C();
    if (v7)
    {
LABEL_12:
      a1 = *v7;
      return bswap64(a1);
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_1C0D7814C();
  __break(1u);
  return result;
}

uint64_t sub_1C0D6FC28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_1C0D78C8C();
  if (!v19)
  {
    return sub_1C0D78C1C();
  }

  v41 = v19;
  v45 = sub_1C0D78E7C();
  v32 = sub_1C0D78E8C();
  sub_1C0D78E2C();
  result = sub_1C0D78C7C();
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
      v22 = sub_1C0D78CDC();
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
      sub_1C0D78E6C();
      result = sub_1C0D78CAC();
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

_OWORD *PIR.BatchKeywordPirClient.init(pirParams:queryHashFunctionCount:numHashFunctionsPerTable:tableSizeForHash:numPirPerShard:secretKey:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = result[1];
  v29[0] = *result;
  v29[1] = v9;
  *v30 = result[2];
  *&v30[10] = *(result + 42);
  v11 = *a6;
  v10 = a6[1];
  if (BYTE2(v29[0]) != 2 || a5 < 1)
  {
    sub_1C0CF448C(*a6, a6[1]);
    sub_1C0D3B80C(v29);
    sub_1C0CF8DE0();
    swift_allocError();
    *v23 = 5;
    *(v23 + 4) = 1;
    swift_willThrow();
  }

  v13 = *(a4 + 16);
  if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *&v30[16];
  if (v30[24])
  {
    v14 = 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = result;
  v31 = a3;
  if (*&v30[8] != 0x8000000000000000 || v14 != -1)
  {
    v17 = sub_1C0D33418(*&v30[8] / v14, v13 * a3);
    v18 = sub_1C0D33418(a5, v17);
    v19 = v15[1];
    v26[0] = *v15;
    v26[1] = v19;
    v27[0] = v15[2];
    *(v27 + 10) = *(v15 + 42);
    v25[0] = v11;
    v25[1] = v10;
    result = PIR.IndexPirClient.init(pirParams:secretKey:)(v26, v25, v28);
    if (!v7)
    {
      v20 = v28[3];
      *(a7 + 32) = v28[2];
      *(a7 + 48) = v20;
      *(a7 + 64) = v28[4];
      v21 = v28[1];
      *a7 = v28[0];
      *(a7 + 16) = v21;
      *(a7 + 80) = a2;
      *(a7 + 88) = 100;
      v22 = v31;
      *(a7 + 96) = v13;
      *(a7 + 104) = v22;
      *(a7 + 112) = a5;
      *(a7 + 120) = v18;
      *(a7 + 128) = a4;
      return result;
    }
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D70208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AesPrg(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v4[3];
  v68 = v4[2];
  v69 = v16;
  v70 = v4[4];
  v17 = v4[1];
  v66 = *v4;
  v67 = v17;
  v18 = *(v4 + 10);
  v46 = *(v4 + 11);
  v47 = v18;
  v45 = *(v4 + 12);
  v19 = *(v4 + 120);
  v64 = *(v4 + 104);
  v65 = v19;
  v60 = xmmword_1C0D7BAB0;
  v43 = a3;
  v20 = a2;
  v44 = a1;
  v21 = v71;
  v22 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78B9C();
  sub_1C0CF448C(v60, *(&v60 + 1));
  sub_1C0D6F57C(v50, *(&v50 + 1), v22);
  if (v21)
  {
    return v14;
  }

  v40 = v11;
  v41 = v13;
  v71 = 0;
  v63[3] = v14;
  v63[4] = sub_1C0D73194(&qword_1EBE6E0C8, type metadata accessor for AesPrg, &unk_1C0D7F438);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  sub_1C0D731DC(v22, boxed_opaque_existential_1);
  *&v60 = v47;
  *(&v60 + 1) = v46;
  v61 = v45;
  v62 = sub_1C0D5FB80(0, 0xF000000000000000, v45);
  if (sub_1C0D19090(v44, v20))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A8, &unk_1C0D7F4D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C0D7B690;
    *(v14 + 32) = sub_1C0D18FB0();
    sub_1C0D73240(&v60);
    sub_1C0D73294(v22);
    return v14;
  }

  sub_1C0D78C7C();
  v25 = v50;
  result = sub_1C0D78C8C();
  v26 = __OFADD__(v25, result / 2);
  v14 = v25 + result / 2;
  if (v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  v39 = v22;
  v27 = v4[3];
  v52 = v4[2];
  v53 = v27;
  v54 = v4[4];
  v28 = v4[1];
  v50 = *v4;
  v51 = v28;
  v55 = v47;
  v56 = v46;
  v57 = v45;
  v58 = *(v4 + 104);
  v59 = *(v4 + 120);
  result = sub_1C0D78C7C();
  if (v14 < v48)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v49 = v14;
  v29 = v41;
  sub_1C0D78CCC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v71;
  v32 = sub_1C0D70208(v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  v71 = v31;
  if (v31)
  {
    (*(v42 + 8))(v29, AssociatedTypeWitness);
    sub_1C0D73240(&v60);
    sub_1C0D73294(v39);
    return v14;
  }

  v38 = v32;
  v42 = *(v42 + 8);
  (v42)(v29, AssociatedTypeWitness);
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v50 = v66;
  v51 = v67;
  v58 = v64;
  v55 = v47;
  v56 = v46;
  v57 = v45;
  v59 = v65;
  result = sub_1C0D78C9C();
  v33 = v48;
  if (v48 >= v14)
  {
    v48 = v14;
    v49 = v33;
    v14 = v40;
    sub_1C0D78CCC();
    v34 = v71;
    v35 = sub_1C0D70208(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v34)
    {

      (v42)(v14, AssociatedTypeWitness);
      sub_1C0D73240(&v60);
      sub_1C0D73294(v39);
    }

    else
    {
      v36 = v14;
      v37 = v35;
      (v42)(v36, AssociatedTypeWitness);
      *&v50 = v38;
      sub_1C0CF9F20(v37);
      sub_1C0D73240(&v60);
      sub_1C0D73294(v39);
      return v50;
    }

    return v14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D70770@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  *a3 = *a1;
  a3[1] = v5;
  v12[3] = MEMORY[0x1E6969080];
  v12[4] = MEMORY[0x1E6969078];
  v12[0] = v6;
  v12[1] = v7;
  v8 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x1E6969080]);
  v9 = *v8;
  v10 = v8[1];
  sub_1C0CF6468(v4, v5);
  sub_1C0CF6468(v6, v7);
  sub_1C0D4268C(v9, v10, a3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t *sub_1C0D70820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v162[0] = *v3;
  v162[1] = v5;
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v167 = *(v3 + 57);
  *v168 = *(v3 + 73);
  *&v168[15] = *(v3 + 88);
  v10 = *(v3 + 104);
  v11 = *(v3 + 112);
  v12 = *(v3 + 120);
  v13 = *(v3 + 128);
  v163 = v6;
  v164 = v7;
  v165 = v8;
  v166 = v9;
  v169 = v10;
  v170 = v11;
  v171 = v12;
  v172 = v13;
  v14 = v162;
  v15 = sub_1C0D70208(a1, a2, a3);
  if (v4)
  {
    return v14;
  }

  v156 = v11;
  v142 = v10;
  v144 = v12;
  if (v9)
  {
    v17 = 1;
  }

  else
  {
    v17 = v8;
  }

  if (!v17)
  {
    goto LABEL_250;
  }

  if (v7 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_252;
  }

  v18 = *(v15 + 16);
  v19 = v10;
  if (!v18)
  {

    v25 = MEMORY[0x1E69E7CC0];
    v108 = v144;
    if (v144 < 0)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    goto LABEL_163;
  }

  v20 = v15;
  *&v162[0] = MEMORY[0x1E69E7CC0];
  v21 = v7 / v17;
  sub_1C0CF7D70(0, v18, 0);
  if (!v21)
  {
    goto LABEL_251;
  }

  v22 = v21;
  v23 = 0;
  v24 = v20;
  v140 = v20;
  v141 = v20 + 32;
  v25 = *&v162[0];
  v150 = v13 + 32;
  v152 = v13;
  v154 = v21;
  v139 = v18;
  while (1)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_248;
    }

    v143 = v25;
    v145 = v23;
    v26 = *(v141 + 8 * v23);
    v27 = *(v26 + 16);
    swift_bridgeObjectRetain_n();
    v153 = v26;
    if (v27)
    {
      v28 = 0;
      v29 = (v26 + 40);
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_220;
        }

        if (v28 >= *(v152 + 16))
        {
          goto LABEL_221;
        }

        v32 = *(v29 - 1);
        v31 = *v29;
        v33 = *(v150 + 8 * v28);
        sub_1C0CF6468(v32, *v29);
        v34 = sub_1C0CF610C(v32, v31, v33, v19);
        sub_1C0CF448C(v32, v31);
        v35 = *(v34 + 2);
        v36 = *(v30 + 2);
        v37 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_222;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v37 <= *(v30 + 3) >> 1)
        {
          if (!*(v34 + 2))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v36 <= v37)
          {
            v39 = v36 + v35;
          }

          else
          {
            v39 = v36;
          }

          v30 = sub_1C0CF4C28(isUniquelyReferenced_nonNull_native, v39, 1, v30);
          if (!*(v34 + 2))
          {
LABEL_15:

            v26 = v153;
            if (v35)
            {
              goto LABEL_223;
            }

            goto LABEL_16;
          }
        }

        v40 = *(v30 + 2);
        if ((*(v30 + 3) >> 1) - v40 < v35)
        {
          goto LABEL_243;
        }

        memcpy(&v30[8 * v40 + 32], v34 + 32, 8 * v35);

        v26 = v153;
        if (v35)
        {
          v41 = *(v30 + 2);
          v42 = __OFADD__(v41, v35);
          v43 = v41 + v35;
          if (v42)
          {
            goto LABEL_247;
          }

          *(v30 + 2) = v43;
        }

LABEL_16:
        ++v28;
        v29 += 2;
        v22 = v154;
        if (v27 == v28)
        {
          goto LABEL_33;
        }
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v146 = v145 + 1;

    v44 = 0;
    v45 = 0;
    v46 = *(v30 + 2);
    while (1)
    {
      v47 = v46 >= v45;
      if (v22 > 0)
      {
        v47 = v45 >= v46;
      }

      if (v47)
      {
        break;
      }

      v42 = __OFADD__(v45, v22);
      v45 += v22;
      if (v42)
      {
        v45 = (v45 >> 63) ^ 0x8000000000000000;
      }

      v42 = __OFADD__(v44++, 1);
      if (v42)
      {
        goto LABEL_214;
      }
    }

    v173 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7E30(0, v44, 0);
    v48 = v173;
    if (v44)
    {
      v49 = 0;
      v14 = v154;
      v158 = v46;
      while (1)
      {
        v50 = v46 >= v49;
        if (v14 > 0)
        {
          v50 = v49 >= v46;
        }

        if (v50)
        {
          goto LABEL_224;
        }

        if (__OFADD__(v49, v14))
        {
          v51 = ((v14 + v49) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v51 = v14 + v49;
        }

        if (__OFADD__(v49, v14))
        {
          goto LABEL_225;
        }

        if (*(v30 + 2) >= v14 + v49)
        {
          v52 = v14 + v49;
        }

        else
        {
          v52 = *(v30 + 2);
        }

        if (v52 < v49)
        {
          goto LABEL_226;
        }

        if (v49 < 0)
        {
          goto LABEL_227;
        }

        v173 = v48;
        v54 = *(v48 + 16);
        v53 = *(v48 + 24);
        v55 = v14;
        v56 = v48;
        sub_1C0D78BFC();
        v48 = v56;
        v14 = v55;
        if (v54 >= v53 >> 1)
        {
          sub_1C0CF7E30((v53 > 1), v54 + 1, 1);
          v14 = v154;
          v48 = v173;
        }

        *(v48 + 16) = v54 + 1;
        v57 = (v48 + 32 * v54);
        v57[4] = v30;
        v57[5] = v30 + 32;
        v57[6] = v49;
        v57[7] = (2 * v52) | 1;
        v49 = v51;
        --v44;
        v46 = v158;
        if (!v44)
        {
          goto LABEL_61;
        }
      }
    }

    v51 = 0;
    v14 = v154;
LABEL_61:
    v58 = v46 >= v51;
    if (v14 > 0)
    {
      v58 = v51 >= v46;
    }

    if (!v58)
    {
      while (1)
      {
        v77 = __OFADD__(v51, v14) ? ((v14 + v51) >> 63) ^ 0x8000000000000000 : v14 + v51;
        if (__OFADD__(v51, v14))
        {
          break;
        }

        if (*(v30 + 2) >= v14 + v51)
        {
          v78 = v14 + v51;
        }

        else
        {
          v78 = *(v30 + 2);
        }

        if (v78 < v51)
        {
          goto LABEL_236;
        }

        if (v51 < 0)
        {
          goto LABEL_237;
        }

        v173 = v48;
        v80 = *(v48 + 16);
        v79 = *(v48 + 24);
        v81 = v48;
        sub_1C0D78BFC();
        v48 = v81;
        if (v80 >= v79 >> 1)
        {
          sub_1C0CF7E30((v79 > 1), v80 + 1, 1);
          v14 = v154;
          v48 = v173;
        }

        *(v48 + 16) = v80 + 1;
        v82 = (v48 + 32 * v80);
        v82[4] = v30;
        v82[5] = v30 + 32;
        v82[6] = v51;
        v82[7] = (2 * v78) | 1;
        v83 = v46 >= v77;
        if (v14 > 0)
        {
          v83 = v77 >= v46;
        }

        v51 = v77;
        if (v83)
        {
          goto LABEL_64;
        }
      }

LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

LABEL_64:
    v147 = v48;

    v59 = *(v147 + 16);
    if (v59)
    {
      v173 = MEMORY[0x1E69E7CC0];
      v14 = &v173;
      sub_1C0CF7DF0(0, v59, 0);
      v60 = v173;
      v61 = (v147 + 56);
      while (1)
      {
        v159 = v60;
        v62 = *(v61 - 2);
        v63 = *(v61 - 1);
        v64 = *v61;
        if ((*v61 & 1) == 0)
        {
          break;
        }

        v66 = *(v61 - 1);
        v148 = *(v61 - 2);
        v14 = sub_1C0D78F4C();
        swift_unknownObjectRetain_n();
        v72 = swift_dynamicCastClass();
        if (!v72)
        {
          swift_unknownObjectRelease();
          v72 = MEMORY[0x1E69E7CC0];
        }

        v73 = *(v72 + 16);
        swift_unknownObjectRelease();

        v65 = v64 >> 1;
        v42 = __OFSUB__(v64 >> 1, v66);
        v67 = (v64 >> 1) - v66;
        if (v42)
        {
          goto LABEL_246;
        }

        if (v73 != v67)
        {
          swift_unknownObjectRelease();
          v62 = v148;
          if (!v67)
          {
            goto LABEL_82;
          }

LABEL_72:
          v14 = (8 * v67);
          if (v67 < 1)
          {
            v69 = MEMORY[0x1E69E7CC0];
            if (v66 == v65)
            {
              goto LABEL_254;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D090, &qword_1C0D7B730);
            v69 = swift_allocObject();
            v70 = _swift_stdlib_malloc_size(v69);
            v71 = v70 - 32;
            if (v70 < 32)
            {
              v71 = v70 - 25;
            }

            v69[2] = v67;
            v69[3] = 2 * (v71 >> 3);
            if (v66 == v65)
            {
              goto LABEL_254;
            }
          }

          memcpy(v69 + 4, (v62 + 8 * v66), 8 * v67);
LABEL_85:
          swift_unknownObjectRelease();
          goto LABEL_86;
        }

        v69 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v69)
        {
          goto LABEL_82;
        }

LABEL_86:
        v60 = v159;
        v173 = v159;
        v75 = *(v159 + 16);
        v74 = *(v159 + 24);
        if (v75 >= v74 >> 1)
        {
          v14 = &v173;
          sub_1C0CF7DF0((v74 > 1), v75 + 1, 1);
          v60 = v173;
        }

        v61 += 4;
        *(v60 + 16) = v75 + 1;
        *(v60 + 8 * v75 + 32) = v69;
        if (!--v59)
        {

          v76 = v60;
          goto LABEL_108;
        }
      }

      v65 = v64 >> 1;
      v66 = *(v61 - 1);
      v42 = __OFSUB__(v64 >> 1, v63);
      v67 = (v64 >> 1) - v63;
      v68 = v42;
      swift_unknownObjectRetain();
      if (v68)
      {
        goto LABEL_245;
      }

      if (v67)
      {
        goto LABEL_72;
      }

LABEL_82:
      v69 = MEMORY[0x1E69E7CC0];
      goto LABEL_85;
    }

    v76 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v84 = v76;
    v85 = *(v76 + 16);
    if (sub_1C0D33418(v156, v85) != v144)
    {

      sub_1C0CF8DE0();
      swift_allocError();
      *v138 = 5;
      *(v138 + 4) = 1;
      swift_willThrow();

      return v14;
    }

    if (!v156)
    {
      goto LABEL_249;
    }

    v86 = 0;
    v87 = 0;
    while (1)
    {
      v88 = v85 >= v87;
      if (v156 > 0)
      {
        v88 = v87 >= v85;
      }

      if (v88)
      {
        break;
      }

      v42 = __OFADD__(v87, v156);
      v87 += v156;
      if (v42)
      {
        v87 = (v87 >> 63) ^ 0x8000000000000000;
      }

      v42 = __OFADD__(v86++, 1);
      if (v42)
      {
        goto LABEL_215;
      }
    }

    v173 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7DB0(0, v86, 0);
    v89 = v173;
    v160 = v85;
    if (v86)
    {
      v90 = 0;
      v91 = *(v84 + 16);
      v149 = v91;
      v22 = v154;
      v92 = v156;
      while (1)
      {
        v93 = v85 >= v90;
        if (v92 > 0)
        {
          v93 = v90 >= v85;
        }

        if (v93)
        {
          goto LABEL_228;
        }

        if (__OFADD__(v90, v92))
        {
          v94 = ((v90 + v92) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v94 = v90 + v92;
        }

        if (__OFADD__(v90, v92))
        {
          goto LABEL_229;
        }

        if (*(v84 + 16) >= v90 + v92)
        {
          v95 = v90 + v92;
        }

        else
        {
          v95 = *(v84 + 16);
        }

        if (v95 < v90)
        {
          goto LABEL_230;
        }

        if (v91 < v90)
        {
          goto LABEL_231;
        }

        if (v90 < 0)
        {
          goto LABEL_232;
        }

        if (v91 < v95)
        {
          goto LABEL_233;
        }

        v173 = v89;
        v97 = *(v89 + 16);
        v96 = *(v89 + 24);
        sub_1C0D78BFC();
        if (v97 >= v96 >> 1)
        {
          sub_1C0CF7DB0((v96 > 1), v97 + 1, 1);
          v22 = v154;
          v89 = v173;
        }

        *(v89 + 16) = v97 + 1;
        v98 = (v89 + 32 * v97);
        v91 = v149;
        v98[4] = v84;
        v98[5] = v84 + 32;
        v98[6] = v90;
        v98[7] = (2 * v95) | 1;
        v90 = v94;
        --v86;
        v92 = v156;
        v85 = v160;
        if (!v86)
        {
          goto LABEL_140;
        }
      }
    }

    v94 = 0;
    v22 = v154;
    v92 = v156;
LABEL_140:
    v99 = v85 >= v94;
    if (v92 > 0)
    {
      v99 = v94 >= v85;
    }

    if (!v99)
    {
      break;
    }

LABEL_143:

    v25 = v143;
    *&v162[0] = v143;
    v101 = *(v143 + 16);
    v100 = *(v143 + 24);
    if (v101 >= v100 >> 1)
    {
      sub_1C0CF7D70((v100 > 1), v101 + 1, 1);
      v22 = v154;
      v25 = *&v162[0];
    }

    *(v25 + 16) = v101 + 1;
    *(v25 + 8 * v101 + 32) = v89;
    v24 = v140;
    v23 = v146;
    v19 = v142;
    if (v146 == v139)
    {

      v108 = v144;
      if (v144 < 0)
      {
        goto LABEL_213;
      }

LABEL_163:
      if (v108)
      {
        *&v162[0] = MEMORY[0x1E69E7CC0];
        sub_1C0CF7D30(0, v108, 0);
        v109 = 0;
        v14 = *&v162[0];
        v157 = *(v25 + 16);
        while (1)
        {
          v151 = v14;
          if (v157)
          {
            break;
          }

          v111 = MEMORY[0x1E69E7CC0];
LABEL_206:
          v14 = v151;
          *&v162[0] = v151;
          v137 = v151[2];
          v136 = v151[3];
          if (v137 >= v136 >> 1)
          {
            sub_1C0CF7D30((v136 > 1), v137 + 1, 1);
            v14 = *&v162[0];
          }

          ++v109;
          v14[2] = v137 + 1;
          v14[v137 + 4] = v111;
          if (v109 == v144)
          {

            return v14;
          }
        }

        v110 = 0;
        v111 = MEMORY[0x1E69E7CC0];
        v155 = v109;
        while (1)
        {
          if (v110 >= *(v25 + 16))
          {
            goto LABEL_216;
          }

          v112 = *(v25 + 32 + 8 * v110);
          if (v109 >= *(v112 + 16))
          {
            goto LABEL_217;
          }

          v161 = v111;
          v113 = v112 + 32 * v109;
          v115 = *(v113 + 48);
          v114 = *(v113 + 56);
          v116 = v114 >> 1;
          if (v114)
          {
            v118 = v115;
            sub_1C0D78F4C();
            swift_unknownObjectRetain_n();
            sub_1C0D78BFC();
            v124 = swift_dynamicCastClass();
            if (!v124)
            {
              swift_unknownObjectRelease();
              v124 = MEMORY[0x1E69E7CC0];
            }

            v125 = *(v124 + 16);

            v117 = v116;
            v42 = __OFSUB__(v116, v118);
            v119 = v116 - v118;
            if (v42)
            {
              goto LABEL_242;
            }

            swift_unknownObjectRelease();
            if (v125 == v119)
            {

              v121 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v121)
              {
                goto LABEL_193;
              }

              swift_unknownObjectRelease();
              goto LABEL_192;
            }

            swift_unknownObjectRelease();
            if (!v119)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v117 = v114 >> 1;
            v118 = v115;
            v42 = __OFSUB__(v116, v115);
            v119 = v116 - v115;
            v120 = v42;
            swift_unknownObjectRetain();
            sub_1C0D78BFC();
            if (v120)
            {
              goto LABEL_241;
            }

            if (!v119)
            {
LABEL_191:
              swift_unknownObjectRelease();

LABEL_192:
              v121 = MEMORY[0x1E69E7CC0];
              goto LABEL_193;
            }
          }

          if (v119 < 1)
          {
            v121 = MEMORY[0x1E69E7CC0];
            if (v118 == v117)
            {
              goto LABEL_253;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D098, &unk_1C0D7F4C0);
            v121 = swift_allocObject();
            v122 = _swift_stdlib_malloc_size(v121);
            v123 = v122 - 32;
            if (v122 < 32)
            {
              v123 = v122 - 25;
            }

            v121[2] = v119;
            v121[3] = 2 * (v123 >> 3);
            if (v118 == v117)
            {
              goto LABEL_253;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
          swift_arrayInitWithCopy();
          swift_unknownObjectRelease();

LABEL_193:
          v126 = v121[2];
          v111 = v161;
          v127 = v161[2];
          v128 = v127 + v126;
          if (__OFADD__(v127, v126))
          {
            goto LABEL_218;
          }

          v129 = swift_isUniquelyReferenced_nonNull_native();
          if ((v129 & 1) == 0 || (v130 = v161[3], v128 > (v130 >> 1)))
          {
            if (v127 <= v128)
            {
              v131 = v127 + v126;
            }

            else
            {
              v131 = v127;
            }

            v111 = sub_1C0CF541C(v129, v131, 1, v161);
            v130 = v111[3];
          }

          v132 = v111[2];
          v133 = v121[2];

          if (v133)
          {
            if (((v130 >> 1) - v132) < v126)
            {
              goto LABEL_234;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
            swift_arrayInitWithCopy();

            v109 = v155;
            if (v126)
            {
              v134 = v111[2];
              v42 = __OFADD__(v134, v126);
              v135 = v134 + v126;
              if (v42)
              {
                goto LABEL_244;
              }

              v111[2] = v135;
            }
          }

          else
          {

            v109 = v155;
            if (v126)
            {
              goto LABEL_219;
            }
          }

          if (v157 == ++v110)
          {
            goto LABEL_206;
          }
        }
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  while (1)
  {
    v102 = __OFADD__(v94, v92) ? ((v94 + v92) >> 63) ^ 0x8000000000000000 : v94 + v92;
    if (__OFADD__(v94, v92))
    {
      break;
    }

    if (*(v84 + 16) >= v94 + v92)
    {
      v103 = v94 + v92;
    }

    else
    {
      v103 = *(v84 + 16);
    }

    if (v103 < v94)
    {
      goto LABEL_239;
    }

    if (v94 < 0)
    {
      goto LABEL_240;
    }

    v173 = v89;
    v105 = *(v89 + 16);
    v104 = *(v89 + 24);
    sub_1C0D78BFC();
    if (v105 >= v104 >> 1)
    {
      sub_1C0CF7DB0((v104 > 1), v105 + 1, 1);
      v22 = v154;
      v89 = v173;
    }

    *(v89 + 16) = v105 + 1;
    v106 = (v89 + 32 * v105);
    v106[4] = v84;
    v106[5] = v84 + 32;
    v106[6] = v94;
    v106[7] = (2 * v103) | 1;
    v92 = v156;
    v107 = v160 >= v102;
    if (v156 > 0)
    {
      v107 = v102 >= v160;
    }

    v94 = v102;
    if (v107)
    {
      goto LABEL_143;
    }
  }

LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  swift_unknownObjectRelease();

  __break(1u);
LABEL_254:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t PIR.BatchKeywordPirClient.queries<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[7];
  v95 = v3[6];
  v96 = v6;
  v7 = v3[1];
  v8 = v3[3];
  v91 = v3[2];
  v92 = v8;
  v9 = v3[3];
  v10 = v3[5];
  v93 = v3[4];
  v94 = v10;
  v11 = v3[1];
  v89 = *v3;
  v90 = v11;
  v85 = v5;
  v86 = v95;
  v87 = v3[7];
  v81 = v7;
  v82 = v91;
  v83 = v9;
  v84 = v93;
  v97 = *(v3 + 16);
  v88 = *(v3 + 16);
  v80 = v89;
  result = sub_1C0D70820(a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v13 = *(result + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v79 = MEMORY[0x1E69E7CC0];
  v69 = result;
  v66 = v13;
  sub_1C0CF7E70(0, v13, 0);
  result = v69;
  v14 = 0;
  v15 = v79;
  v16 = v69 + 32;
  while (1)
  {
    if (v14 >= *(result + 16))
    {
      goto LABEL_105;
    }

    v67 = v14;
    v68 = v15;
    v17 = *(*(v16 + 8 * v14) + 16);
    result = sub_1C0D78BFC();
    if (v17)
    {
      break;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_80:

    v15 = v68;
    v79 = v68;
    v64 = *(v68 + 16);
    v63 = *(v68 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1C0CF7E70((v63 > 1), v64 + 1, 1);
      v15 = v79;
    }

    v14 = v67 + 1;
    *(v15 + 16) = v64 + 1;
    *(v15 + 8 * v64 + 32) = v19;
    v16 = v69 + 32;
    result = v69;
    if (v67 + 1 == v66)
    {
      v65 = v15;

      return v65;
    }
  }

  v18 = 0;
  v71 = result + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v70 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
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
      return result;
    }

    v21 = *(v71 + 8 * v18);
    v72 = v18;
    if (BYTE2(v89) == 2)
    {
      v83 = v92;
      v84 = v93;
      v81 = v90;
      v82 = v91;
      v80 = v89;
      sub_1C0D78BFC();
      sub_1C0D3B974(&v89, v78);
      v22 = sub_1C0D5BA94(v21);
      goto LABEL_67;
    }

    v74 = *(v21 + 16);
    if (v74)
    {
      break;
    }

    sub_1C0D3B974(&v89, &v80);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v22 = sub_1C0D52840(v25, v93, *(&v93 + 1), v26);

LABEL_67:

    result = sub_1C0D3B9D0(&v89);
    v57 = *(v22 + 16);
    v58 = *(v19 + 16);
    v59 = v58 + v57;
    if (__OFADD__(v58, v57))
    {
      goto LABEL_102;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v59 > *(v19 + 24) >> 1)
    {
      if (v58 <= v59)
      {
        v60 = v58 + v57;
      }

      else
      {
        v60 = v58;
      }

      result = sub_1C0CF51C4(result, v60, 1, v19);
      v19 = result;
    }

    if (*(v22 + 16))
    {
      if ((*(v19 + 24) >> 1) - *(v19 + 16) < v57)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      result = v70;
      v20 = v72;
      if (v57)
      {
        v61 = *(v19 + 16);
        v39 = __OFADD__(v61, v57);
        v62 = v61 + v57;
        if (v39)
        {
          goto LABEL_107;
        }

        *(v19 + 16) = v62;
      }
    }

    else
    {

      result = v70;
      v20 = v72;
      if (v57)
      {
        goto LABEL_103;
      }
    }

    v18 = v20 + 1;
    if (v18 == v17)
    {
      goto LABEL_80;
    }
  }

  v77 = v91;
  if (!v91)
  {
    goto LABEL_106;
  }

  v23 = *(&v90 + 1);
  v75 = v21 + 32;
  sub_1C0D78BFC();
  result = sub_1C0D3B974(&v89, &v80);
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v73 = v19;
  while (1)
  {
    v27 = *(v75 + 8 * v24);
    if (v27 == 0x8000000000000000 && v77 == -1)
    {
      goto LABEL_98;
    }

    v29 = *(v23 + 16);
    v98 = v24;
    if (v29)
    {
      break;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v42 = v34[2];
    v43 = *(v25 + 16);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
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
      goto LABEL_101;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v44 <= *(v25 + 24) >> 1)
    {
      if (v34[2])
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v48 = v43 + v42;
      }

      else
      {
        v48 = v43;
      }

      result = sub_1C0CF4C28(result, v48, 1, v25);
      v25 = result;
      if (v34[2])
      {
LABEL_43:
        v45 = *(v25 + 16);
        if ((*(v25 + 24) >> 1) - v45 < v42)
        {
          goto LABEL_96;
        }

        memcpy((v25 + 8 * v45 + 32), v34 + 4, 8 * v42);

        if (v42)
        {
          v46 = *(v25 + 16);
          v39 = __OFADD__(v46, v42);
          v47 = v46 + v42;
          if (v39)
          {
            goto LABEL_99;
          }

          *(v25 + 16) = v47;
        }

        goto LABEL_52;
      }
    }

    if (v42)
    {
      goto LABEL_93;
    }

LABEL_52:
    v49 = *(v23 + 16);
    v50 = *(v26 + 16);
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_94;
    }

    sub_1C0D78BFC();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v51 > *(v26 + 24) >> 1)
    {
      if (v50 <= v51)
      {
        v52 = v50 + v49;
      }

      else
      {
        v52 = v50;
      }

      result = sub_1C0CF4C28(result, v52, 1, v26);
      v26 = result;
    }

    v53 = v98;
    if (*(v23 + 16))
    {
      v54 = *(v26 + 16);
      if ((*(v26 + 24) >> 1) - v54 < v49)
      {
        goto LABEL_97;
      }

      memcpy((v26 + 8 * v54 + 32), (v23 + 32), 8 * v49);

      if (v49)
      {
        v55 = *(v26 + 16);
        v39 = __OFADD__(v55, v49);
        v56 = v55 + v49;
        if (v39)
        {
          goto LABEL_100;
        }

        *(v26 + 16) = v56;
      }
    }

    else
    {

      if (v49)
      {
        goto LABEL_95;
      }
    }

    v24 = v53 + 1;
    if (v24 == v74)
    {

      goto LABEL_66;
    }
  }

  v76 = v26;
  v30 = 0;
  v31 = 1;
  v32 = v27 / v77;
  do
  {
    v33 = *(v23 + 8 * v30 + 32);
    if ((v31 * v33) >> 64 != (v31 * v33) >> 63)
    {
      __break(1u);
      goto LABEL_86;
    }

    v31 *= v33;
    ++v30;
  }

  while (v29 != v30);
  *&v80 = MEMORY[0x1E69E7CC0];
  sub_1C0D78BFC();
  sub_1C0CF7C60(0, v29, 0);
  v34 = v80;
  v35 = 32;
  while (1)
  {
    v36 = *(v23 + v35);
    if (!v36)
    {
      break;
    }

    if (v31 == 0x8000000000000000 && v36 == -1)
    {
      goto LABEL_90;
    }

    v31 /= v36;
    if (!v31)
    {
      goto LABEL_87;
    }

    if (v32 == 0x8000000000000000 && v31 == -1)
    {
      goto LABEL_91;
    }

    v37 = v32 / v31;
    v38 = v32 / v31 * v31;
    if ((v32 / v31 * v31) >> 64 != v38 >> 63)
    {
      goto LABEL_88;
    }

    v39 = __OFSUB__(v32, v38);
    v32 %= v31;
    if (v39)
    {
      goto LABEL_89;
    }

    *&v80 = v34;
    v41 = v34[2];
    v40 = v34[3];
    if (v41 >= v40 >> 1)
    {
      sub_1C0CF7C60((v40 > 1), v41 + 1, 1);
      v34 = v80;
    }

    v34[2] = v41 + 1;
    v34[v41 + 4] = v37;
    v35 += 8;
    if (!--v29)
    {

      v19 = v73;
      v26 = v76;
      goto LABEL_39;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);

  sub_1C0D3B9D0(&v89);
}

uint64_t PIR.BatchKeywordPirClient.decrypt<A>(replies:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v172 = *MEMORY[0x1E69E9840];
  v10 = v4[5];
  v11 = v4[7];
  v169 = v4[6];
  v170 = v11;
  v12 = v4[1];
  v13 = v4[3];
  v165 = v4[2];
  v166 = v13;
  v14 = v4[3];
  v15 = v4[5];
  v167 = v4[4];
  v168 = v15;
  v16 = v4[1];
  v163 = *v4;
  v164 = v16;
  v17 = v4[7];
  v160 = v169;
  v161 = v17;
  v156 = v165;
  v157 = v14;
  v158 = v167;
  v159 = v10;
  v171 = *(v4 + 16);
  v162 = *(v4 + 16);
  v154 = v163;
  v155 = v12;
  v18 = sub_1C0D70820(a2, a3, a4);
  if (v5)
  {
    return v6;
  }

  v20 = v18;
  v21 = sub_1C0D6FC28(sub_1C0D72A0C, 0, a3, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v19);
  v22 = sub_1C0D78C8C();
  v6 = sub_1C0D5FB80(0, 0xF000000000000000, v22);
  v146 = v20;
  v147 = 0;
  v148 = a1;
  v149 = 0;
  v150 = 0;
  sub_1C0D78BFC();
  v23 = sub_1C0D3C214();
  v138 = v24;
  if (!v23)
  {
LABEL_103:

    return v6;
  }

  v25 = v23;
  v137 = v21 + 32;
  v125 = v21;
  while (1)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      break;
    }

LABEL_102:

    v25 = sub_1C0D3C214();
    v138 = v112;
    if (!v25)
    {
      goto LABEL_103;
    }
  }

  v27 = 0;
  v28 = v25 + 32;
LABEL_6:
  while (2)
  {
    if (v27 >= v26)
    {
      __break(1u);
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

    v29 = *(v138 + 16);
    if (v27 == v29)
    {
      goto LABEL_102;
    }

    if (v27 >= v29)
    {
      goto LABEL_112;
    }

    v30 = *(v28 + 8 * v27);
    v31 = *(v138 + 32 + 8 * v27);
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v154 = v163;
    v155 = v164;
    sub_1C0D78BFC();
    sub_1C0D78BFC();
    sub_1C0D3B974(&v163, v153);
    PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(v31, v30);
    v33 = v32;
    v153[2] = v156;
    v153[3] = v157;
    v153[4] = v158;
    v153[0] = v154;
    v153[1] = v155;
    sub_1C0D3B9D0(v153);

    if (!*(v33 + 16))
    {
      ++v27;

      v26 = *(v25 + 16);
      if (v27 == v26)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

  v34 = 0;
  v120 = v33;
  v121 = v33 + 32;
  v116 = *(v33 + 16);
  v119 = v25;
  v117 = v28;
  while (1)
  {
    if (v34 >= *(v33 + 16))
    {
      goto LABEL_115;
    }

    v35 = (v121 + 16 * v34);
    v36 = v35[1];
    v131 = *v35;
    v37 = v36 >> 62;
    v123 = v6;
    v124 = v36;
    v122 = v34;
    if ((v36 >> 62) > 1)
    {
      v38 = *v35;
      if (v37 != 2)
      {
LABEL_109:
        v54 = v35[1];
        v6 = v38;
        sub_1C0CF448C(v38, v36);
LABEL_110:

        sub_1C0CF8DE0();
        swift_allocError();
        *v115 = 5;
        *(v115 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v6, v54);
        goto LABEL_107;
      }

      v52 = *(v131 + 16);
      v53 = *(v131 + 24);
    }

    else
    {
      if (!v37)
      {
        v38 = *v35;
        if ((v36 & 0xFF000000000000) == 0)
        {
          goto LABEL_109;
        }

        v140 = *v35;
        v141 = v36;
        v142 = BYTE2(v36);
        v143 = BYTE3(v36);
        v144 = BYTE4(v36);
        v145 = BYTE5(v36);
        if (v131)
        {
          v39 = 0;
          v40 = BYTE6(v36);
          v41 = 1;
          v42 = MEMORY[0x1E69E7CC0];
          v126 = BYTE6(v36);
          while (1)
          {
            v6 = v41 + 10;
            if (v40 < v41 + 10)
            {
              sub_1C0CF8DE0();
              swift_allocError();
              *v113 = 5;
              *(v113 + 4) = 1;
              swift_willThrow();
              goto LABEL_106;
            }

            v132 = *(&v140 + v41);
            v43 = *(&v140 + v41 + 8);
            v139 = v41 + 10;
            if (v43)
            {
              if (v43 <= 0xE)
              {
                v45 = 0;
                v46 = v118 & 0xF00000000000000 | (v43 << 48);
                v118 = v46;
              }

              else
              {
                sub_1C0D7818C();
                swift_allocObject();
                v44 = sub_1C0D7813C();
                v45 = v43 << 32;
                v46 = v44 | 0x4000000000000000;
              }
            }

            else
            {
              v45 = 0;
              v46 = 0xC000000000000000;
            }

            v151 = v45;
            v152 = v46;
            v41 = v6 + v43;
            if (v40 < v6 + v43)
            {
              break;
            }

            if (v41 < v6)
            {
              goto LABEL_114;
            }

            sub_1C0D72C50(&v151, &v140, &v140 + v40, &v139, v43);
            v139 = v6 + v43;
            v47 = v151;
            v48 = v152;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_1C0CF4FA0(0, *(v42 + 2) + 1, 1, v42);
            }

            v50 = *(v42 + 2);
            v49 = *(v42 + 3);
            if (v50 >= v49 >> 1)
            {
              v42 = sub_1C0CF4FA0((v49 > 1), v50 + 1, 1, v42);
            }

            ++v39;
            *(v42 + 2) = v50 + 1;
            v51 = &v42[24 * v50];
            *(v51 + 4) = v132;
            *(v51 + 5) = v47;
            *(v51 + 6) = v48;
            v40 = v126;
            if (v39 == v131)
            {
              goto LABEL_73;
            }
          }

          sub_1C0CF8DE0();
          swift_allocError();
          *v114 = 5;
          *(v114 + 4) = 1;
          swift_willThrow();
          sub_1C0CF448C(v151, v152);
LABEL_106:

          sub_1C0CF448C(v131, v124);
          sub_1C0CF448C(v131, v124);

LABEL_107:

          return v6;
        }

        goto LABEL_72;
      }

      v38 = *v35;
      v52 = v131;
      v53 = v131 >> 32;
    }

    v54 = v35[1];
    v6 = v38;
    sub_1C0CF6468(v38, v36);
    if (v52 == v53)
    {
      goto LABEL_110;
    }

    sub_1C0CF6468(v6, v54);
    if (v37 == 2)
    {
      break;
    }

    if (v6 >> 32 < v6)
    {
      goto LABEL_117;
    }

    v61 = sub_1C0D7812C();
    if (!v61)
    {
      goto LABEL_122;
    }

    v62 = v61;
    v63 = sub_1C0D7815C();
    if (__OFSUB__(v6, v63))
    {
      goto LABEL_119;
    }

    v64 = (v6 - v63 + v62);
    result = sub_1C0D7814C();
    if (!v64)
    {
      goto LABEL_123;
    }

    if (result >= (v6 >> 32) - v6)
    {
      v66 = (v6 >> 32) - v6;
    }

    else
    {
      v66 = result;
    }

    v129 = v66;
    v67 = v64;
    v68 = *v64;
    v151 = 1;
    v127 = v68;
    if (v68)
    {
      v69 = 0;
      v134 = MEMORY[0x1E69E7CC0];
      do
      {
        v70 = v67;
        v71 = sub_1C0D3C6C4(v67, v67 + v129, &v151);
        v73 = v72;
        v75 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_1C0CF4FA0(0, *(v134 + 2) + 1, 1, v134);
        }

        v77 = *(v134 + 2);
        v76 = *(v134 + 3);
        if (v77 >= v76 >> 1)
        {
          v134 = sub_1C0CF4FA0((v76 > 1), v77 + 1, 1, v134);
        }

        ++v69;
        *(v134 + 2) = v77 + 1;
        v78 = &v134[24 * v77];
        *(v78 + 4) = v71;
        *(v78 + 5) = v73;
        *(v78 + 6) = v75;
        v67 = v70;
      }

      while (v69 != v127);
    }

    else
    {
      v134 = MEMORY[0x1E69E7CC0];
    }

    sub_1C0CF448C(v131, v124);
    v42 = v134;
LABEL_76:
    v92 = *(v125 + 16);
    if (v92)
    {
      v151 = MEMORY[0x1E69E7CC0];
      sub_1C0CF7EB0(0, v92, 0);
      v93 = 0;
      v94 = v151;
      do
      {
        v95 = *(v42 + 2) + 1;
        v96 = (v42 + 32);
        while (--v95)
        {
          v97 = v96 + 3;
          v98 = *v96;
          v96 += 3;
          if (v98 == *(v137 + 8 * v93))
          {
            v135 = *(v97 - 1);
            sub_1C0CF6468(*(v97 - 2), *(v97 - 1));
            v99 = v135;
            goto LABEL_83;
          }
        }

        v99 = xmmword_1C0D7D9D0;
LABEL_83:
        v151 = v94;
        v101 = *(v94 + 16);
        v100 = *(v94 + 24);
        if (v101 >= v100 >> 1)
        {
          v136 = v99;
          sub_1C0CF7EB0((v100 > 1), v101 + 1, 1);
          v99 = v136;
          v94 = v151;
        }

        ++v93;
        *(v94 + 16) = v101 + 1;
        *(v94 + 16 * v101 + 32) = v99;
      }

      while (v93 != v92);

      v102 = *(v94 + 16);
      if (!v102)
      {
        goto LABEL_13;
      }

LABEL_89:
      v103 = 0;
      while (1)
      {
        v104 = 2 * v103;
        v105 = v103;
        while (1)
        {
          if (v105 >= *(v94 + 16))
          {
            goto LABEL_113;
          }

          v106 = *(v94 + v104 * 8 + 32);
          v107 = *(v94 + v104 * 8 + 40);
          v103 = v105 + 1;
          sub_1C0D134D0(v106, v107);
          if (v107 >> 60 != 15)
          {
            break;
          }

          v104 += 2;
          ++v105;
          if (v102 == v103)
          {
            goto LABEL_13;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1C0CFD698(v123);
        }

        if (v105 >= v123[2])
        {
          break;
        }

        v108 = &v123[v104];
        v109 = v123[v104 + 4];
        v110 = v123[v104 + 5];
        v108[4] = v106;
        v108[5] = v107;
        sub_1C0D13830(v109, v110);
        if (v102 - 1 == v105)
        {
          goto LABEL_13;
        }
      }

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
    }

    v94 = MEMORY[0x1E69E7CC0];
    v102 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v102)
    {
      goto LABEL_89;
    }

LABEL_13:
    v34 = v122 + 1;

    sub_1C0CF448C(v131, v124);
    v28 = v117;
    v6 = v123;
    v25 = v119;
    v33 = v120;
    if (v122 + 1 == v116)
    {

      v26 = *(v119 + 16);
      if (v26 - 1 == v27++)
      {
        goto LABEL_102;
      }

      goto LABEL_6;
    }
  }

  v55 = *(v6 + 16);
  v56 = *(v6 + 24);
  v57 = sub_1C0D7812C();
  if (v57)
  {
    v58 = v57;
    v59 = sub_1C0D7815C();
    if (__OFSUB__(v55, v59))
    {
      goto LABEL_120;
    }

    v133 = (v55 - v59 + v58);
    v60 = v56 - v55;
    if (__OFSUB__(v56, v55))
    {
      goto LABEL_118;
    }
  }

  else
  {
    v133 = 0;
    v60 = v56 - v55;
    if (__OFSUB__(v56, v55))
    {
      goto LABEL_118;
    }
  }

  v79 = sub_1C0D7814C();
  if (v133)
  {
    if (v79 >= v60)
    {
      v80 = v60;
    }

    else
    {
      v80 = v79;
    }

    v130 = v80;
    v81 = v133;
    v82 = *v133;
    v151 = 1;
    v128 = v82;
    if (v82)
    {
      v83 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v84 = sub_1C0D3C6C4(v81, v81 + v130, &v151);
        v86 = v85;
        v88 = v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1C0CF4FA0(0, *(v42 + 2) + 1, 1, v42);
        }

        v90 = *(v42 + 2);
        v89 = *(v42 + 3);
        if (v90 >= v89 >> 1)
        {
          v42 = sub_1C0CF4FA0((v89 > 1), v90 + 1, 1, v42);
        }

        ++v83;
        *(v42 + 2) = v90 + 1;
        v91 = &v42[24 * v90];
        *(v91 + 4) = v84;
        *(v91 + 5) = v86;
        *(v91 + 6) = v88;
        v81 = v133;
      }

      while (v83 != v128);
      goto LABEL_73;
    }

LABEL_72:
    v42 = MEMORY[0x1E69E7CC0];
LABEL_73:
    sub_1C0CF448C(v131, v124);
    goto LABEL_76;
  }

  __break(1u);
LABEL_122:
  result = sub_1C0D7814C();
LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_1C0D72A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v3 = sub_1C0D789EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C0D7865C();
  v14 = *(v7 - 8);
  v15 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  sub_1C0D73194(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D7863C();
  sub_1C0CF6468(v10, v11);
  sub_1C0D3C2C8(v10, v11, v6);
  sub_1C0CF448C(v10, v11);
  sub_1C0D7862C();
  (*(v4 + 8))(v6, v3);
  sub_1C0D7864C();
  result = (*(v14 + 8))(v9, v15);
  *v16 = v17;
  return result;
}

char *sub_1C0D72C50(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_1C0CF448C(v9, v8);
      *&v39 = v9;
      WORD4(v39) = v8;
      BYTE10(v39) = BYTE2(v8);
      BYTE11(v39) = BYTE3(v8);
      BYTE12(v39) = BYTE4(v8);
      BYTE13(v39) = BYTE5(v8);
      BYTE14(v39) = BYTE6(v8);
      v11 = *a4;
      v12 = *a4 + a5;
      if (!__OFADD__(*a4, a5))
      {
        if (v12 >= v11)
        {
          result = sub_1C0D01960(v11, v12, a2, a3, &v39);
          v14 = DWORD2(v39) | ((WORD6(v39) | (BYTE14(v39) << 16)) << 32);
          *a1 = v39;
          a1[1] = v14;
          return result;
        }

        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_29;
    }

    v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0CF448C(v9, v8);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v25 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v25 < v9)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (sub_1C0D7812C() && __OFSUB__(v9, sub_1C0D7815C()))
      {
LABEL_41:
        __break(1u);
      }

      sub_1C0D7818C();
      swift_allocObject();
      v28 = sub_1C0D7810C();

      v24 = v28;
    }

    if (v25 < v9)
    {
      goto LABEL_31;
    }

    result = sub_1C0D7812C();
    if (result)
    {
      v29 = result;
      v30 = sub_1C0D7815C();
      v31 = v9 - v30;
      if (__OFSUB__(v9, v30))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      sub_1C0D7814C();
      v32 = *a4;
      v33 = *a4 + a5;
      if (__OFADD__(*a4, a5))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v33 < v32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_1C0D01960(v32, v33, a2, a3, &v29[v31]);

      *a1 = v9;
      a1[1] = v24 | 0x4000000000000000;
      return result;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  if (v10 == 2)
  {

    sub_1C0CF448C(v9, v8);
    *&v39 = v9;
    *(&v39 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v16 = *(&v39 + 1);
    v17 = *(v39 + 16);
    v18 = *(v39 + 24);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_43;
    }

    v19 = result;
    v20 = sub_1C0D7815C();
    v21 = v17 - v20;
    if (__OFSUB__(v17, v20))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (__OFSUB__(v18, v17))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1C0D7814C();
    v22 = *a4;
    v23 = *a4 + a5;
    if (__OFADD__(*a4, a5))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v23 < v22)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    result = sub_1C0D01960(v22, v23, a2, a3, &v19[v21]);
    *a1 = v39;
    a1[1] = v16 | 0x8000000000000000;
  }

  else
  {
    *(&v39 + 7) = 0;
    *&v39 = 0;
    v26 = *a4;
    v27 = *a4 + a5;
    if (__OFADD__(*a4, a5))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v27 < v26)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    return sub_1C0D01960(v26, v27, a2, a3, &v39);
  }

  return result;
}

uint64_t sub_1C0D73074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1C0D730DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D73124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D73194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0D731DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AesPrg(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0D73294(uint64_t a1)
{
  v2 = type metadata accessor for AesPrg(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0D732F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E0D0, &unk_1C0D7F4E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_8:
    LODWORD(v12) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v12 = v12;
  }

LABEL_11:
  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a4);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v15 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v15)
  {
    __break(1u);
LABEL_18:
    LODWORD(v17) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v17 = v17;
  }

LABEL_21:
  if (v12 != v17)
  {
    __break(1u);
    goto LABEL_36;
  }

  v26 = xmmword_1C0D7BAB0;
  if (v11 <= 1)
  {
    if (!v11 || !__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_29;
    }

LABEL_39:
    __break(1u);
  }

  if (v11 == 2 && __OFSUB__(*(a1 + 24), *(a1 + 16)))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  sub_1C0D782BC();
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a3, a4);
  sub_1C0D7837C();
  sub_1C0D7837C();
  sub_1C0D7836C();
  sub_1C0D39328();
  sub_1C0D78D4C();
  while ((v25[0] & 0x100) == 0)
  {
    v23 = v25[0];
    sub_1C0D78D4C();
    if ((v25[0] & 0x100) != 0)
    {
      break;
    }

    v21 = LOBYTE(v25[0]) ^ v23;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D3F8, &qword_1C0D7BD40);
    v25[3] = v22;
    v25[4] = sub_1C0D0225C();
    LOBYTE(v25[0]) = v21;
    v24[7] = *__swift_project_boxed_opaque_existential_1(v25, v22);
    sub_1C0D782AC();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1C0D78D4C();
  }

  v10[*(v8 + 56)] = 1;
  sub_1C0D73678(v10);
  return v26;
}

uint64_t sub_1C0D73678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E0D0, &unk_1C0D7F4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C0D736F4()
{
  result = qword_1EBE6E0D8;
  if (!qword_1EBE6E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0D8);
  }

  return result;
}

void HE.EvaluationKeyConfig.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *HE.EvaluationKeyConfig.init(encryptionParams:galoisElements:hasRelinKey:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1C0D73788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D737D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D73820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OPRF.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OPRF.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D739E8()
{
  result = qword_1EBE6E0E0;
  if (!qword_1EBE6E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0E0);
  }

  return result;
}

unint64_t sub_1C0D73A40()
{
  result = qword_1EBE6E0E8;
  if (!qword_1EBE6E0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6E0F0, qword_1C0D7F6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0E8);
  }

  return result;
}

unint64_t *sub_1C0D73AA4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1C0D73AD0()
{
  result = qword_1EBE6E0F8;
  if (!qword_1EBE6E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0F8);
  }

  return result;
}

uint64_t sub_1C0D73B58()
{
  v1 = *(v0 + 4);
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  sub_1C0D7901C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D73BF8(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v2);
  sub_1C0D7901C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D73C54()
{
  ccaes_ecb_encrypt_mode();
  result = MEMORY[0x1C68E48A0]();
  v1 = result;
  if (qword_1EBE6CB98 != -1)
  {
    result = swift_once();
  }

  v2 = off_1EBE6CBA0;
  v6 = off_1EBE6CBA0;
  if (v1)
  {
    if (v1 < 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    swift_retain_n();
    sub_1C0D64E2C(v1, 0);
    v3 = v6;
  }

  else
  {
    swift_retain_n();
    v3 = v2;
  }

  v7 = v3;
  v4 = AESLubyRackoffContextSize();

  if (!v4)
  {
LABEL_10:
    MEMORY[0x1EEE9AC00](v5);
    sub_1C0CF44FC(&v7, sub_1C0D74558);
    return v7;
  }

  result = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = sub_1C0D64E2C(v4, 0);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C0D73E1C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = ccecb_init();
  *a3 = result;
  if (!result)
  {
    result = cclr_aes_init();
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C0D73F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = swift_beginAccess();
  if (a2 > 128 || (a2 & 7) != 0 || *(v6 + 16) != 32)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1C0D73C54();
    v10 = v9;

    if (!v3)
    {
      *a3 = a2;
      a3[1] = v8;
      a3[2] = v10;
    }
  }

  return result;
}

uint64_t sub_1C0D73FEC(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (__OFADD__(*v3, 7))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        result = 0;
        goto LABEL_12;
      }

      v8 = *(result + 16);
      v7 = *(result + 24);
      result = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v6)
    {
      result = BYTE6(a2);
LABEL_12:
      v10 = sub_1C0D0F990(result);
      v11 = v9;
      MEMORY[0x1EEE9AC00](v10);
      sub_1C0CF44FC(v3 + 2, a3);
      sub_1C0CF6468(v10, v11);
      sub_1C0CF448C(v10, v11);
      return v10;
    }

    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      result = HIDWORD(v5) - v5;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D74188()
{
  result = qword_1EBE6E100;
  if (!qword_1EBE6E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E100);
  }

  return result;
}

uint64_t sub_1C0D74270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D742B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for LubyRackoffError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LubyRackoffError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C0D743B8()
{
  result = qword_1EBE6E108[0];
  if (!qword_1EBE6E108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6E108);
  }

  return result;
}

uint64_t sub_1C0D74518(uint64_t a1, uint64_t (*a2)(void, void, uint64_t, void))
{
  v3 = v2[2];
  result = a2(v2[3], v2[4], a1, v2[5]);
  *v3 = result;
  return result;
}

uint64_t sub_1C0D74620(uint64_t (*a1)(void))
{
  if (!ccrng())
  {
    __break(1u);
  }

  return a1();
}

uint64_t sub_1C0D746DC(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 112);
  return swift_endAccess();
}

uint64_t sub_1C0D74758(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    MEMORY[0x1C68E4EB0](v2, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C0D747CC(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 32);
  return swift_endAccess();
}

uint64_t sub_1C0D74850(uint64_t result)
{
  v2 = *(*v1 + 16);
  v3 = result * v2;
  if ((result * v2) >> 64 != (result * v2) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 > 0)
  {
    v4 = sub_1C0D78C2C();
    v5 = v4;
    *(v4 + 16) = ((v3 - 1) >> 3) + 1;
    *(v4 + 32) = 0;
    if (v3 >= 9)
    {
      bzero((v4 + 33), (v3 - 1) >> 3);
    }

    goto LABEL_7;
  }

  if ((v3 + 7) >= 8)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v6 = cche_coeffs_to_bytes();
  if (v6)
  {
    v7 = v6;

    sub_1C0CF8DE0();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C0D7496C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    MEMORY[0x1C68E4EB0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

void sub_1C0D74A0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    memset_s(*(v0 + 24), *(v0 + 32) - v1, 0, *(v0 + 32) - v1);

    MEMORY[0x1C68E4EB0](v1, -1, -1);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C0D74AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ATHM.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATHM.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D74C78()
{
  result = qword_1EBE6E190;
  if (!qword_1EBE6E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E190);
  }

  return result;
}

unint64_t sub_1C0D74CCC(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;
  sub_1C0D78BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (swift_dynamicCast())
  {
    sub_1C0D13498(v45, &v47);
    v5 = __swift_project_boxed_opaque_existential_1(&v47, v48);
    MEMORY[0x1EEE9AC00](v5);
    v39 = v2;
    sub_1C0D7819C();
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_1C0D77EA4(v45);
  result = sub_1C0D77BD4(a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_8:
  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10 != 2)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v13 = v8 + 16;
  v8 = *(v8 + 16);
  v11 = *(v13 + 8);
  v12 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
  }

LABEL_18:
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_74;
  }

  if ((v11 + v7) < v11)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v14 = sub_1C0D7829C();
  MEMORY[0x1EEE9AC00](v14);
  v38[2] = v12;
  v38[3] = v7;
  v39 = v44;
  v15 = sub_1C0D773F0(sub_1C0D77F0C, v38);
  v19 = v16;
  if (v18 != v7)
  {
    v31 = 0;
    v32 = *v2;
    v33 = v2[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v31 = *(v32 + 16);
      }
    }

    else if (v34)
    {
      v31 = v32;
    }

    v35 = __OFADD__(v31, v12);
    v36 = v31 + v12;
    if (!v35)
    {
      if (!__OFADD__(v36, v18))
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v37 = *(v32 + 24);
          }

          else
          {
            v37 = 0;
          }
        }

        else if (v34)
        {
          v37 = v32 >> 32;
        }

        else
        {
          v37 = BYTE6(v33);
        }

        if (v37 >= v36 + v18)
        {
          sub_1C0D782AC();
        }

        goto LABEL_78;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v20 = v15;
  v21 = v17;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  *(v45 + 7) = 0;
  *&v45[0] = 0;
  if (4 * v22 != v17 >> 14)
  {
    LOBYTE(v23) = 0;
    v24 = (v15 >> 59) & 1;
    if ((v16 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v40 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v41 = v16 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = v21 & 0xC;
      v27 = v21;
      if (v26 == v25)
      {
        v27 = sub_1C0D77C68(v21, v20, v19);
      }

      v28 = v27 >> 16;
      if (v27 >> 16 >= v22)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v7 = sub_1C0D78B2C();
        goto LABEL_8;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        v30 = sub_1C0D78B5C();
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        *&v47 = v20;
        *(&v47 + 1) = v41;
        v30 = *(&v47 + v28);
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v29 = v40;
        if ((v20 & 0x1000000000000000) == 0)
        {
          v29 = sub_1C0D78DFC();
        }

        v30 = *(v29 + v28);
        if (v26 != v25)
        {
LABEL_40:
          if ((v19 & 0x1000000000000000) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        }
      }

      v21 = sub_1C0D77C68(v21, v20, v19);
      if ((v19 & 0x1000000000000000) != 0)
      {
LABEL_44:
        if (v22 <= v21 >> 16)
        {
          goto LABEL_71;
        }

        v21 = sub_1C0D78B3C();
        goto LABEL_46;
      }

LABEL_41:
      v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
      *(v45 + v23) = v30;
      v23 = v23 + 1;
      if ((v23 >> 8))
      {
        goto LABEL_70;
      }

      if (v23 == 14)
      {
        *&v47 = *&v45[0];
        *(&v47 + 6) = *(v45 + 6);
        sub_1C0D782CC();
        LOBYTE(v23) = 0;
      }

      if (4 * v22 == v21 >> 14)
      {
        if (v23)
        {
          *&v47 = *&v45[0];
          *(&v47 + 6) = *(v45 + 6);
          sub_1C0D782CC();
        }
      }
    }
  }
}

uint64_t sub_1C0D75198@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  *a5 = xmmword_1C0D7BAB0;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
LABEL_12:
          result = v11 + (result & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v11, v8 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

LABEL_17:
        v14 = HIBYTE(a2) & 0xF;
        v15 = __OFADD__(v11, v14);
        result = v11 + v14;
        if (!v15)
        {
LABEL_18:
          sub_1C0D782BC();
          sub_1C0D74CCC(v8, a2);
          v20[3] = MEMORY[0x1E6969080];
          v20[4] = MEMORY[0x1E6969078];
          v20[0] = a3;
          v20[1] = a4;
          v16 = __swift_project_boxed_opaque_existential_1(v20, MEMORY[0x1E6969080]);
          v17 = *v16;
          v18 = v16[1];
          sub_1C0CF6468(a3, a4);
          sub_1C0D4268C(v17, v18, a5);
          return __swift_destroy_boxed_opaque_existential_1(v20);
        }

        goto LABEL_21;
      }

LABEL_19:
      v19 = sub_1C0D78B2C();
      v15 = __OFADD__(v11, v19);
      result = v11 + v19;
      if (!v15)
      {
        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
LABEL_10:
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a4);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v11 = HIDWORD(a3) - a3;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_1C0D752D4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C0D75340(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t P256.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7883C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 3)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v9 = 1;
      *(v9 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v31 = sub_1C0D786AC();
      return (*(*(v31 - 8) + 8))(a1, v31);
    }

    v33 = v6;
    v34 = v5;
    v35 = a2;
    v38 = a1;
    sub_1C0D7867C();
    v10 = v2;
    v36 = v40;
    v37 = v39;
    v11 = sub_1C0D75750(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v39, v40);
    v13 = v12;
    v14 = 0;
    while (2)
    {
      v15 = sub_1C0D053E8(v14, 1);
      v17 = v16;
      v18 = sub_1C0D75B0C(v11, v13, 0x74616469646E6163, 0xE900000000000065, v15, v16, 0x20uLL);
      v20 = v19;
      sub_1C0CF448C(v15, v17);
      result = sub_1C0D30C08(v18, v20);
      if (*(result + 16))
      {
        v21 = result;
        v22 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C0CFD670(v21);
        }

        v21[32] = v22;
        v23 = (v21 + 32);
        v24 = *(v21 + 2);
        do
        {
          if (!v24)
          {

            goto LABEL_6;
          }

          v25 = *v23++;
          --v24;
        }

        while (!v25);
        v26 = sub_1C0D78BFC();
        v27 = sub_1C0D0FA30(v26);
        v29 = v28;

        v39 = v27;
        v40 = v29;
        sub_1C0D7882C();
        if (!v10)
        {
          v32 = sub_1C0D786AC();
          (*(*(v32 - 8) + 8))(v38, v32);
          sub_1C0CF448C(v11, v13);
          sub_1C0CF448C(v37, v36);
          (*(v33 + 32))(v35, v41, v34);
        }

        v10 = 0;
LABEL_6:
        if (++v14 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v30 = 1;
        *(v30 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v11, v13);
        sub_1C0CF448C(v37, v36);
        a1 = v38;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D75750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v6 = sub_1C0D786AC();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v40 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v13 = sub_1C0D053E8(0x10uLL, 2);
  v15 = v14;
  v16 = MEMORY[0x1E6969080];
  v17 = MEMORY[0x1E6969078];
  v38 = MEMORY[0x1E6969080];
  v39 = MEMORY[0x1E6969078];
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v18 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v19 = *v18;
  v20 = v18[1];
  sub_1C0CF6468(v13, v15);
  sub_1C0D4268C(v19, v20, &v40);
  sub_1C0CF448C(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0D74CCC(v30, v31);
  v38 = v16;
  v39 = v17;
  v21 = v29;
  v22 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v23 = __swift_project_boxed_opaque_existential_1(&v37, v16);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v21, v22);
  sub_1C0D4268C(v24, v25, &v40);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v37 = v40;
  sub_1C0CF6468(v40, *(&v40 + 1));
  sub_1C0D7868C();
  v37 = v33;
  sub_1C0CF6468(v33, *(&v33 + 1));
  sub_1C0D789EC();
  sub_1C0D78000(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v37, *(&v37 + 1));
  (*(v34 + 8))(v8, v35);
  v38 = v9;
  v39 = sub_1C0D78048(&qword_1EBE6D8B8, &qword_1EBE6D8B0, &qword_1C0D7D9F0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  __swift_project_boxed_opaque_existential_1(&v37, v38);
  sub_1C0D7819C();
  (*(v10 + 8))(v12, v9);
  v27 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0CF448C(v40, *(&v40 + 1));
  return v27;
}

uint64_t sub_1C0D75B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v41 = a7;
  *&v42 = a1;
  v38 = a4;
  v39 = a6;
  v37 = a3;
  *(&v42 + 1) = a2;
  v9 = sub_1C0D786AC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C0D053E8(0x10uLL, 2);
  v14 = v13;
  sub_1C0D75198(5064011, 0xE300000000000000, v12, v13, &v45);
  sub_1C0CF448C(v12, v14);
  v15 = v45;
  v16 = sub_1C0D053E8(a7, 2);
  v18 = v17;
  v48 = v16;
  v49 = v17;
  sub_1C0CF6468(v16, v17);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v16, v18);
  v20 = v48;
  v19 = v49;
  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v46 = MEMORY[0x1E6969080];
  v47 = MEMORY[0x1E6969078];
  v40 = v15;
  v45 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v20, v19);
  sub_1C0CF6468(v15, *(&v15 + 1));
  sub_1C0D4268C(v24, v25, &v50);
  sub_1C0CF448C(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v26 = v50;
  v27 = v51;
  v48 = v50;
  v49 = v51;
  sub_1C0CF6468(v50, v51);
  sub_1C0D74CCC(v37, v38);
  sub_1C0CF448C(v26, v27);
  v28 = v48;
  v29 = v49;
  v50 = v48;
  v51 = v49;
  v46 = v21;
  v47 = v22;
  v30 = v39;
  *&v45 = a5;
  *(&v45 + 1) = v39;
  v31 = __swift_project_boxed_opaque_existential_1(&v45, v21);
  v32 = *v31;
  v33 = v31[1];
  sub_1C0CF6468(v28, v29);
  sub_1C0CF6468(a5, v30);
  sub_1C0D4268C(v32, v33, &v50);
  sub_1C0CF448C(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v34 = v50;
  v35 = v51;
  v45 = v42;
  sub_1C0CF6468(v50, v51);
  sub_1C0D789EC();
  sub_1C0D78000(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v50, v51);
  sub_1C0D7867C();
  sub_1C0CF448C(v34, v35);
  sub_1C0CF448C(v40, *(&v15 + 1));
  (*(v43 + 8))(v11, v44);
  return v45;
}

uint64_t P384.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7889C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 5)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v9 = 1;
      *(v9 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v31 = sub_1C0D786AC();
      return (*(*(v31 - 8) + 8))(a1, v31);
    }

    v33 = v6;
    v34 = v5;
    v35 = a2;
    v38 = a1;
    sub_1C0D7867C();
    v10 = v2;
    v36 = v40;
    v37 = v39;
    v11 = sub_1C0D76218(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v39, v40);
    v13 = v12;
    v14 = 0;
    while (2)
    {
      v15 = sub_1C0D053E8(v14, 1);
      v17 = v16;
      v18 = sub_1C0D765D4(v11, v13, 0x74616469646E6163, 0xE900000000000065, v15, v16, 0x30uLL);
      v20 = v19;
      sub_1C0CF448C(v15, v17);
      result = sub_1C0D30C08(v18, v20);
      if (*(result + 16))
      {
        v21 = result;
        v22 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C0CFD670(v21);
        }

        v21[32] = v22;
        v23 = (v21 + 32);
        v24 = *(v21 + 2);
        do
        {
          if (!v24)
          {

            goto LABEL_6;
          }

          v25 = *v23++;
          --v24;
        }

        while (!v25);
        v26 = sub_1C0D78BFC();
        v27 = sub_1C0D0FA30(v26);
        v29 = v28;

        v39 = v27;
        v40 = v29;
        sub_1C0D7888C();
        if (!v10)
        {
          v32 = sub_1C0D786AC();
          (*(*(v32 - 8) + 8))(v38, v32);
          sub_1C0CF448C(v11, v13);
          sub_1C0CF448C(v37, v36);
          (*(v33 + 32))(v35, v41, v34);
        }

        v10 = 0;
LABEL_6:
        if (++v14 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v30 = 1;
        *(v30 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v11, v13);
        sub_1C0CF448C(v37, v36);
        a1 = v38;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D76218(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v6 = sub_1C0D786AC();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E1B0, &qword_1C0D7FB28);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v40 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v13 = sub_1C0D053E8(0x11uLL, 2);
  v15 = v14;
  v16 = MEMORY[0x1E6969080];
  v17 = MEMORY[0x1E6969078];
  v38 = MEMORY[0x1E6969080];
  v39 = MEMORY[0x1E6969078];
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v18 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v19 = *v18;
  v20 = v18[1];
  sub_1C0CF6468(v13, v15);
  sub_1C0D4268C(v19, v20, &v40);
  sub_1C0CF448C(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0D74CCC(v30, v31);
  v38 = v16;
  v39 = v17;
  v21 = v29;
  v22 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v23 = __swift_project_boxed_opaque_existential_1(&v37, v16);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v21, v22);
  sub_1C0D4268C(v24, v25, &v40);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v37 = v40;
  sub_1C0CF6468(v40, *(&v40 + 1));
  sub_1C0D7868C();
  v37 = v33;
  sub_1C0CF6468(v33, *(&v33 + 1));
  sub_1C0D789FC();
  sub_1C0D78000(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v37, *(&v37 + 1));
  (*(v34 + 8))(v8, v35);
  v38 = v9;
  v39 = sub_1C0D78048(&qword_1EBE6E1B8, &qword_1EBE6E1B0, &qword_1C0D7FB28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  __swift_project_boxed_opaque_existential_1(&v37, v38);
  sub_1C0D7819C();
  (*(v10 + 8))(v12, v9);
  v27 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0CF448C(v40, *(&v40 + 1));
  return v27;
}

uint64_t sub_1C0D765D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v41 = a7;
  *&v42 = a1;
  v38 = a4;
  v39 = a6;
  v37 = a3;
  *(&v42 + 1) = a2;
  v9 = sub_1C0D786AC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C0D053E8(0x11uLL, 2);
  v14 = v13;
  sub_1C0D75198(5064011, 0xE300000000000000, v12, v13, &v45);
  sub_1C0CF448C(v12, v14);
  v15 = v45;
  v16 = sub_1C0D053E8(a7, 2);
  v18 = v17;
  v48 = v16;
  v49 = v17;
  sub_1C0CF6468(v16, v17);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v16, v18);
  v20 = v48;
  v19 = v49;
  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v46 = MEMORY[0x1E6969080];
  v47 = MEMORY[0x1E6969078];
  v40 = v15;
  v45 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v20, v19);
  sub_1C0CF6468(v15, *(&v15 + 1));
  sub_1C0D4268C(v24, v25, &v50);
  sub_1C0CF448C(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v26 = v50;
  v27 = v51;
  v48 = v50;
  v49 = v51;
  sub_1C0CF6468(v50, v51);
  sub_1C0D74CCC(v37, v38);
  sub_1C0CF448C(v26, v27);
  v28 = v48;
  v29 = v49;
  v50 = v48;
  v51 = v49;
  v46 = v21;
  v47 = v22;
  v30 = v39;
  *&v45 = a5;
  *(&v45 + 1) = v39;
  v31 = __swift_project_boxed_opaque_existential_1(&v45, v21);
  v32 = *v31;
  v33 = v31[1];
  sub_1C0CF6468(v28, v29);
  sub_1C0CF6468(a5, v30);
  sub_1C0D4268C(v32, v33, &v50);
  sub_1C0CF448C(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v34 = v50;
  v35 = v51;
  v45 = v42;
  sub_1C0CF6468(v50, v51);
  sub_1C0D789FC();
  sub_1C0D78000(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v50, v51);
  sub_1C0D7867C();
  sub_1C0CF448C(v34, v35);
  sub_1C0CF448C(v40, *(&v15 + 1));
  (*(v43 + 8))(v11, v44);
  return v45;
}

uint64_t P521.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7898C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 8)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v9 = 1;
      *(v9 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v31 = sub_1C0D786AC();
      return (*(*(v31 - 8) + 8))(a1, v31);
    }

    v33 = v6;
    v34 = v5;
    v35 = a2;
    v38 = a1;
    sub_1C0D7867C();
    v10 = v2;
    v36 = v40;
    v37 = v39;
    v11 = sub_1C0D76CE4(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v39, v40);
    v13 = v12;
    v14 = 0;
    while (2)
    {
      v15 = sub_1C0D053E8(v14, 1);
      v17 = v16;
      v18 = sub_1C0D770A0(v11, v13, 0x74616469646E6163, 0xE900000000000065, v15, v16, 0x42uLL);
      v20 = v19;
      sub_1C0CF448C(v15, v17);
      result = sub_1C0D30C08(v18, v20);
      if (*(result + 16))
      {
        v21 = result;
        v22 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C0CFD670(v21);
        }

        v21[32] = v22 & 1;
        v23 = (v21 + 32);
        v24 = *(v21 + 2);
        do
        {
          if (!v24)
          {

            goto LABEL_6;
          }

          v25 = *v23++;
          --v24;
        }

        while (!v25);
        v26 = sub_1C0D78BFC();
        v27 = sub_1C0D0FA30(v26);
        v29 = v28;

        v39 = v27;
        v40 = v29;
        sub_1C0D7897C();
        if (!v10)
        {
          v32 = sub_1C0D786AC();
          (*(*(v32 - 8) + 8))(v38, v32);
          sub_1C0CF448C(v11, v13);
          sub_1C0CF448C(v37, v36);
          (*(v33 + 32))(v35, v41, v34);
        }

        v10 = 0;
LABEL_6:
        if (++v14 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v30 = 1;
        *(v30 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v11, v13);
        sub_1C0CF448C(v37, v36);
        a1 = v38;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D76CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v6 = sub_1C0D786AC();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E1A0, &qword_1C0D7FB20);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v40 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v13 = sub_1C0D053E8(0x12uLL, 2);
  v15 = v14;
  v16 = MEMORY[0x1E6969080];
  v17 = MEMORY[0x1E6969078];
  v38 = MEMORY[0x1E6969080];
  v39 = MEMORY[0x1E6969078];
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v18 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v19 = *v18;
  v20 = v18[1];
  sub_1C0CF6468(v13, v15);
  sub_1C0D4268C(v19, v20, &v40);
  sub_1C0CF448C(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0D74CCC(v30, v31);
  v38 = v16;
  v39 = v17;
  v21 = v29;
  v22 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v23 = __swift_project_boxed_opaque_existential_1(&v37, v16);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v21, v22);
  sub_1C0D4268C(v24, v25, &v40);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v37 = v40;
  sub_1C0CF6468(v40, *(&v40 + 1));
  sub_1C0D7868C();
  v37 = v33;
  sub_1C0CF6468(v33, *(&v33 + 1));
  sub_1C0D78A0C();
  sub_1C0D78000(&qword_1EBE6E198, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v37, *(&v37 + 1));
  (*(v34 + 8))(v8, v35);
  v38 = v9;
  v39 = sub_1C0D78048(&qword_1EBE6E1A8, &qword_1EBE6E1A0, &qword_1C0D7FB20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  __swift_project_boxed_opaque_existential_1(&v37, v38);
  sub_1C0D7819C();
  (*(v10 + 8))(v12, v9);
  v27 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0CF448C(v40, *(&v40 + 1));
  return v27;
}

uint64_t sub_1C0D770A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v41 = a7;
  *&v42 = a1;
  v38 = a4;
  v39 = a6;
  v37 = a3;
  *(&v42 + 1) = a2;
  v9 = sub_1C0D786AC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C0D053E8(0x12uLL, 2);
  v14 = v13;
  sub_1C0D75198(5064011, 0xE300000000000000, v12, v13, &v45);
  sub_1C0CF448C(v12, v14);
  v15 = v45;
  v16 = sub_1C0D053E8(a7, 2);
  v18 = v17;
  v48 = v16;
  v49 = v17;
  sub_1C0CF6468(v16, v17);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v16, v18);
  v20 = v48;
  v19 = v49;
  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v46 = MEMORY[0x1E6969080];
  v47 = MEMORY[0x1E6969078];
  v40 = v15;
  v45 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v20, v19);
  sub_1C0CF6468(v15, *(&v15 + 1));
  sub_1C0D4268C(v24, v25, &v50);
  sub_1C0CF448C(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v26 = v50;
  v27 = v51;
  v48 = v50;
  v49 = v51;
  sub_1C0CF6468(v50, v51);
  sub_1C0D74CCC(v37, v38);
  sub_1C0CF448C(v26, v27);
  v28 = v48;
  v29 = v49;
  v50 = v48;
  v51 = v49;
  v46 = v21;
  v47 = v22;
  v30 = v39;
  *&v45 = a5;
  *(&v45 + 1) = v39;
  v31 = __swift_project_boxed_opaque_existential_1(&v45, v21);
  v32 = *v31;
  v33 = v31[1];
  sub_1C0CF6468(v28, v29);
  sub_1C0CF6468(a5, v30);
  sub_1C0D4268C(v32, v33, &v50);
  sub_1C0CF448C(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v34 = v50;
  v35 = v51;
  v45 = v42;
  sub_1C0CF6468(v50, v51);
  sub_1C0D78A0C();
  sub_1C0D78000(&qword_1EBE6E198, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v50, v51);
  sub_1C0D7867C();
  sub_1C0CF448C(v34, v35);
  sub_1C0CF448C(v40, *(&v15 + 1));
  (*(v43 + 8))(v11, v44);
  return v45;
}

char *sub_1C0D773F0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_1C0CF448C(v7, v6);
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

    sub_1C0CF448C(v7, v6);
    *v4 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1C0D7818C();
      swift_allocObject();
      v14 = sub_1C0D7810C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1C0D77B20(v7, v7 >> 32, a1);

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

    sub_1C0CF448C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    result = sub_1C0D77B20(*(v17 + 2), *(v17 + 3), a1);
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

uint64_t sub_1C0D77794(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1C0CF448C(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D77A44(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1C0CF448C(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_1C0CF448C(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_1C0D7812C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_1C0D7815C();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_1C0D7814C();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_1C0D77A44(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1C0D7826C();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1C0D7815C();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1C0D7814C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_1C0D77B20(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C0D7815C();
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

  v12 = sub_1C0D7814C();
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

unint64_t sub_1C0D77BD4(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1C0D78DFC();
    }

    sub_1C0D782CC();
  }

  return v2 >> 60;
}

unint64_t sub_1C0D77C68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C0D78B6C();
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
    v5 = MEMORY[0x1C68E3B30](15, a1 >> 16);
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

unint64_t sub_1C0D77CE4(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1C0D42970(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1C0D77DA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C0D7818C();
  swift_allocObject();
  result = sub_1C0D7811C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C0D7828C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C0D77E20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C0D7818C();
  swift_allocObject();
  result = sub_1C0D7811C();
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

uint64_t sub_1C0D77EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B8, &qword_1C0D7C018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0D77F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C0D77F64(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_1C0D77F64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  sub_1C0D78BFC();
  result = sub_1C0D78DBC();
  if ((v5 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C0D78000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0D78048(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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