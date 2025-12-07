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
    if (qword_1ED5F8A30 != -1)
    {
      swift_once();
    }

    v5 = off_1ED5F8A18;

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

BOOL _s9CryptoKit12SymmetricKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  sub_1A78CBAB0(v3 + 32, v3 + 32 + *(v3 + 16), v2 + 32, v2 + 32 + v4, &v6);
  return v6;
}

uint64_t static HashFunction.hash(bufferPointer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 32))(v13, v12, v9);
  (*(a4 + 40))(a1, a2, a3, a4);
  (*(a4 + 48))(a3, a4);
  return (*(v8 + 8))(v11, a3);
}

uint64_t get_enum_tag_for_layout_string_9CryptoKit4ASN1O26RFC5480AlgorithmIdentifierVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1A78FF0A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A78FF0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A78FF15C(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A78BF874(v24);
  if (v25 != 255)
  {
    v39[0] = v24[0];
    v39[1] = v24[1];
    v39[2] = v24[2];
    v40 = v25;
    sub_1A791FAD4(v39, 2u);
    if (v2)
    {
      return;
    }

    if (!v5)
    {
      sub_1A78BEFA0(0x30u, v26);
      sub_1A78BF874(v27);
      if (v32 == 255)
      {
        sub_1A78D6B80();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();
        v48 = *v26;
        sub_1A78D6BD4(&v48);
        v47[0] = *&v26[8];
        v47[1] = *&v26[24];
        v12 = &qword_1EB2A6F30;
        v13 = &qword_1A793F4A8;
        v14 = v47;
      }

      else if (v27[0] == 4)
      {
        if ((v32 & 1) == 0)
        {
          sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
          __break(1u);
          return;
        }

        v7 = v28;
        v8 = v29;
        v9 = v30;
        v10 = v31;
        sub_1A791644C(a1, 0, 2u);
        sub_1A78BF9FC(v27, v23, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78BDFE0(v33, v7, v8, v9, v10);
        sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78BF80C(v33, v23);
        sub_1A7920BEC(v33, 0x30u, v34);
        v43[0] = *v34;
        v43[1] = *&v34[16];
        v44 = *&v34[32];
        v16 = *v34;
        if (!*v34)
        {
          sub_1A78BF494(v33);
          v17 = &qword_1EB2A6F38;
          v18 = &qword_1A793F4B0;
          v19 = v27;
          goto LABEL_17;
        }

        v52 = *&v34[8];
        v53 = *&v34[24];
        v49 = *&v43[0];
        v50 = *&v34[8];
        v51 = *&v34[24];
        sub_1A78BF9FC(v43, v23, &qword_1EB2A75F8, qword_1A7942108);
        if (sub_1A78D6980(&v49, v26))
        {
          sub_1A78BF494(v33);
          sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
          v56 = v16;
          sub_1A78D6BD4(&v56);
          v57[0] = v52;
          v57[1] = v53;
          v17 = &qword_1EB2A6F30;
          v18 = &qword_1A793F4A8;
          v19 = v57;
LABEL_17:
          sub_1A78C2ADC(v19, v17, v18);
          *&v22[56] = v35;
          *&v22[72] = v36;
          *&v22[88] = v37;
          *&v22[8] = *v34;
          *&v22[104] = v38;
          *&v22[24] = *&v34[16];
          *&v22[40] = *&v34[32];
          v20 = *&v26[16];
          *v22 = *&v26[32];
          *a2 = *v26;
          a2[1] = v20;
          a2[7] = *&v22[80];
          a2[8] = *&v22[96];
          a2[5] = *&v22[48];
          a2[6] = *&v22[64];
          a2[3] = *&v22[16];
          a2[4] = *&v22[32];
          a2[2] = *v22;
          return;
        }

        sub_1A78D6B80();
        swift_allocError();
        *v21 = 3;
        swift_willThrow();
        v54 = v16;
        sub_1A78D6BD4(&v54);
        v55[0] = v52;
        v55[1] = v53;
        sub_1A78C2ADC(v55, &qword_1EB2A6F30, &qword_1A793F4A8);
        sub_1A78FFBA4(v34);
        sub_1A78BF494(v33);
        sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
        v42 = *v26;
        sub_1A78D6BD4(&v42);
        v41[0] = *&v26[8];
        v41[1] = *&v26[24];
        v14 = v41;
        v12 = &qword_1EB2A6F30;
        v13 = &qword_1A793F4A8;
      }

      else
      {
        sub_1A78D6B80();
        swift_allocError();
        *v15 = 1;
        swift_willThrow();
        v46 = *v26;
        sub_1A78D6BD4(&v46);
        v45[0] = *&v26[8];
        v45[1] = *&v26[24];
        sub_1A78C2ADC(v45, &qword_1EB2A6F30, &qword_1A793F4A8);
        v12 = &qword_1EB2A6F38;
        v13 = &qword_1A793F4B0;
        v14 = v27;
      }

      sub_1A78C2ADC(v14, v12, v13);
      return;
    }
  }

  sub_1A78D6B80();
  swift_allocError();
  *v6 = 3;
  swift_willThrow();
}

uint64_t sub_1A78FF6E4(char **a1, uint64_t a2)
{
  v21[0] = 0;
  v20 = v21;
  result = sub_1A791C348(2, a1, sub_1A78FF8EC, v19);
  if (!v2)
  {
    v6 = *(a2 + 16);
    v25[0] = *a2;
    v25[1] = v6;
    v26 = *(a2 + 32);
    v28 = *&v25[0];
    v7 = *(a2 + 24);
    v27[0] = *(a2 + 8);
    v27[1] = v7;
    sub_1A78FF910(&v28, v21);
    sub_1A78BF9FC(v27, v21, &qword_1EB2A6F30, &qword_1A793F4A8);
    sub_1A7917A4C(0x30uLL, a1, v25);
    v22 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
    v8 = *(a2 + 88);
    v9 = *(a2 + 120);
    v23[4] = *(a2 + 104);
    v23[5] = v9;
    v24 = *(a2 + 136);
    v10 = *(a2 + 56);
    v23[0] = *(a2 + 40);
    v23[1] = v10;
    v23[2] = *(a2 + 72);
    v23[3] = v8;
    sub_1A78FFB48(v23, v21);
    sub_1A791BAC0(48, &v22, v23);
    sub_1A78FFBA4(v23);
    MEMORY[0x1EEE9AC00](v22);
    v15 = v11;
    v16 = v12;
    v17 = 0;
    v18 = v13;
    sub_1A791C348(4, a1, sub_1A78FFBF8, &v14);
  }

  return result;
}

uint64_t sub_1A78FF96C@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_1A78BF494(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v25[0] = *(a1 + 8);
  v25[1] = v9;
  v26 = v8;
  sub_1A78BF80C(a1, v15);
  swift_unknownObjectRetain();
  sub_1A78FF15C(v25, &v16);
  if (v3)
  {
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF874(v27);
  if (v27[48] != 255)
  {
    sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    v15[6] = v22;
    v15[7] = v23;
    v15[8] = v24;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = v21;
    v15[0] = v16;
    v15[1] = v17;
    sub_1A78FFC18(v15);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  v11 = v23;
  a3[6] = v22;
  a3[7] = v11;
  a3[8] = v24;
  v12 = v19;
  a3[2] = v18;
  a3[3] = v12;
  v13 = v21;
  a3[4] = v20;
  a3[5] = v13;
  v14 = v17;
  *a3 = v16;
  a3[1] = v14;
  return result;
}

uint64_t sub_1A78FFC48()
{
  sub_1A793DF58();
  sub_1A793DF88();
  return sub_1A793DFA8();
}

uint64_t sub_1A78FFCBC(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF88();
  return sub_1A793DFA8();
}

uint64_t sub_1A78FFD00()
{
  sub_1A793DE28();

  v0 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v0);

  MEMORY[0x1AC55D280](41, 0xE100000000000000);
  return 0x6E656449314E5341;
}

unint64_t sub_1A78FFDB8()
{
  result = qword_1EB2A7600;
  if (!qword_1EB2A7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7600);
  }

  return result;
}

void *sub_1A78FFE3C()
{
  v0 = sub_1A793DB28();
  *(v0 + 16) = 56;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  if (!ccrng())
  {
LABEL_5:
    __break(1u);
  }

  if (cccurve448_make_pub())
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = sub_1A7900118(v0);

  return v1;
}

void *sub_1A78FFF3C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 56)
  {
    result = sub_1A78BDC10(56, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = a1[2];
      result[10] = *(a1 + 6);
      *(result + 3) = v8;
      *(result + 4) = v9;
      *(result + 2) = v7;
      *a3 = result;
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v10 = 0;
    *(v10 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78FFFF0(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 56)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790005C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  if (!ccrng())
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*a2)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  result = cccurve448();
  *a3 = result;
  return result;
}

void *sub_1A7900118(uint64_t a1)
{
  if (*(a1 + 16) == 56)
  {
    result = sub_1A78BDC10(56, 0);
    v4 = *(a1 + 48);
    v3 = *(a1 + 64);
    v5 = *(a1 + 32);
    result[10] = *(a1 + 80);
    *(result + 3) = v4;
    *(result + 4) = v3;
    *(result + 2) = v5;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A79001A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  result = sub_1A793D6A8();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1A7900234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A793D6A8();
  if (!v3)
  {
    return sub_1A78C2B3C(a1, a2, a3);
  }

  return result;
}

uint64_t AES.GCM.SealedBox.nonce.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1A78C0990(v3, v4);
  sub_1A78C3AA4(v5, v3, v4, v7);
  return sub_1A78C32F4(v7[0], v7[1], a1);
}

uint64_t AES.GCM.SealedBox.ciphertext.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A78C0990(v1, v2);
  sub_1A78C0B50(v3, v1, v2, v5);
  sub_1A78C3CAC(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t AES.GCM.SealedBox.tag.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A78C0990(v1, v2);
  sub_1A78C8A28(16, v1, v2, &v4);
  return v4;
}

uint64_t static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v23 = a8;
  v21 = a5;
  v22 = a7;
  v15 = sub_1A793DC78();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v25 = *a2;
  v24 = *a3;
  v19 = *(a6 - 8);
  (*(v19 + 16))(&v21 - v17, a4, a6);
  (*(v19 + 56))(v18, 0, 1, a6);
  sub_1A78D550C(&v25, a1, &v24, v18, v21, a6, v22, v23, a9);
  return (*(v16 + 8))(v18, v15);
}

uint64_t AES.GCM.SealedBox.combined.getter()
{
  if (v0[2] != 12)
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_1A78C0990(v1, v2[1]);
  return v1;
}

uint64_t AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a8@<X8>)
{
  v31 = a8;
  v13 = *a1;
  v12 = a1[1];
  result = sub_1A793DB98();
  if (result != 16)
  {
    sub_1A78C0AFC(v13, v12);
    sub_1A78D6484();
    swift_allocError();
    *v17 = 1;
    *(v17 + 4) = 1;
    swift_willThrow();
    (*(*(a5 - 8) + 8))(a3, a5);
    return (*(*(a4 - 8) + 8))(a2, a4);
  }

  v15 = v12 >> 62;
  v28 = a4;
  if ((v12 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v12);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v19 = *(v13 + 16);
  v18 = *(v13 + 24);
  v16 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v16 = HIDWORD(v13) - v13;
  }

LABEL_13:
  v30 = xmmword_1A793F230;
  v27 = a2;
  result = sub_1A793DB98();
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = sub_1A793DB98();
  v22 = __OFADD__(v20, v21);
  result = v20 + v21;
  if (v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A793D768();
  v29[3] = MEMORY[0x1E6969080];
  v29[4] = MEMORY[0x1E6969078];
  v29[0] = v13;
  v29[1] = v12;
  v23 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1A78C0990(v13, v12);
  sub_1A7900C14(v24, v25, &v30);
  sub_1A78C0AFC(v13, v12);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_1A793D7F8();
  sub_1A793D7F8();
  (*(*(a5 - 8) + 8))(a3, a5);
  result = (*(*(v28 - 8) + 8))(v27, v28);
  v26 = v31;
  *v31 = v30;
  *(v26 + 2) = v16;
  return result;
}

uint64_t static AES.GCM.open<A>(_:using:authenticating:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A793DC78();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(a1 + 2);
  v20 = *a2;
  v18 = *a1;
  v19 = v14;
  v15 = *(a4 - 8);
  (*(v15 + 16))(v13, a3, a4);
  (*(v15 + 56))(v13, 0, 1, a4);
  v16 = sub_1A78D5984(&v20, &v18, v13, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t static AES.GCM.seal<A>(_:using:nonce:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v15 = *a2;
  v10 = *a3;
  v13 = xmmword_1A7940CC0;
  v14 = v10;
  v11 = sub_1A78CA3EC();
  return sub_1A78D550C(&v15, a1, &v14, &v13, a4, MEMORY[0x1E6969080], a5, v11, a6);
}

uint64_t AES.GCM.SealedBox.init(combined:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 12;
  return result;
}

uint64_t AES.GCM.SealedBox.init<A>(combined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() >= 28)
  {
    v10 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
    a4[2] = 12;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_1A7900C14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1A793D788();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A7900D4C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1A7900D4C(v4, v5);
  }

  return sub_1A793D788();
}

uint64_t sub_1A7900D4C(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  if (!result || (result = sub_1A793D678(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1A793D668();
      return sub_1A793D788();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A7900DE0()
{
  result = qword_1EB2A7608;
  if (!qword_1EB2A7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7608);
  }

  return result;
}

unint64_t sub_1A7900E38()
{
  result = qword_1EB2A7610;
  if (!qword_1EB2A7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7610);
  }

  return result;
}

uint64_t sub_1A7900E9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_1A7900EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A7900F54(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = ccgcm_aad();
      if (!v5)
      {
        return sub_1A78C0AFC(a1, a2);
      }

      goto LABEL_17;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    v8 = sub_1A793D648();
    if (v8)
    {
      v9 = sub_1A793D678();
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_24;
      }

      v8 += v6 - v9;
    }

    if (__OFSUB__(v7, v6))
    {
      goto LABEL_22;
    }

    sub_1A793D668();
    if (v8)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = ccgcm_aad();
    if (!v5)
    {
      return sub_1A78C0AFC(a1, a2);
    }

    goto LABEL_17;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v10 = sub_1A793D648();
  if (!v10)
  {
    result = sub_1A793D668();
    goto LABEL_26;
  }

  v11 = v10;
  v12 = sub_1A793D678();
  if (__OFSUB__(a1, v12))
  {
    goto LABEL_23;
  }

  v13 = a1 - v12 + v11;
  result = sub_1A793D668();
  if (v13)
  {
LABEL_16:
    v5 = ccgcm_aad();
    if (!v5)
    {
      return sub_1A78C0AFC(a1, a2);
    }

LABEL_17:
    v15 = v5;
    sub_1A78D6484();
    swift_allocError();
    *v16 = v15;
    *(v16 + 4) = 0;
    swift_willThrow();
    return sub_1A78C0AFC(a1, a2);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A7901198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a5 >> 60 == 15)
  {
    v53 = xmmword_1A793F380;
    sub_1A78CBDF4(&v53);
    v15 = v8;
    v16 = *(&v53 + 1);
    v17 = v53;
  }

  else
  {
    v15 = v8;
    v17 = a4;
    v16 = a5;
  }

  sub_1A78C0990(v17, v16);
  sub_1A78CBE8C(a4, a5);
  v18 = ccaes_gcm_encrypt_mode();
  if (!v18)
  {
LABEL_44:
    __break(1u);
  }

  v19 = v18;
  *&v56 = a1;
  *&v53 = v17;
  *(&v53 + 1) = v16;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();

  v20 = sub_1A78C35B4(&v56, &v53, v19);
  if (v15)
  {
    return sub_1A78C0AFC(v17, v16);
  }

  v22 = v20;
  if (a7 >> 60 != 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = a8;
      v23 = swift_allocObject();
      v24 = *(v22 + 24);
      v47 = v23;
      *(v23 + 24) = v24;
      MEMORY[0x1AC55E040](v24);
      v25 = swift_slowAlloc();
      __src = *(v22 + 16);
      v26 = MEMORY[0x1AC55E040](v24);
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      memmove(v25, __src, v26);
      *(v47 + 16) = v25;

      v22 = v47;
      a8 = v49;
    }

    sub_1A7900F54(a6, a7);
  }

  v27 = v16 >> 62;
  v28 = a3;
  if ((v16 >> 62) <= 1)
  {
    if (!v27)
    {
      v29 = BYTE6(v16);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v27 != 2)
  {
    v29 = 0;
    goto LABEL_22;
  }

  v31 = *(v17 + 16);
  v30 = *(v17 + 24);
  v29 = v30 - v31;
  if (__OFSUB__(v30, v31))
  {
    __break(1u);
LABEL_19:
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v29 = HIDWORD(v17) - v17;
  }

LABEL_22:
  v56 = xmmword_1A793F230;
  v32 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v32)
    {
      v33 = BYTE6(a3);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v32 != 2)
  {
    v33 = 0;
    goto LABEL_32;
  }

  v35 = *(a2 + 16);
  v34 = *(a2 + 24);
  v36 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  if (v36)
  {
    __break(1u);
LABEL_29:
    LODWORD(v33) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33 = v33;
  }

LABEL_32:
  v36 = __OFADD__(v29, v33);
  v37 = v29 + v33;
  if (v36)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v37, 16))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v48 = v29;
  sub_1A793D768();
  v54 = MEMORY[0x1E6969080];
  v55 = MEMORY[0x1E6969078];
  *&v53 = v17;
  *(&v53 + 1) = v16;
  v38 = __swift_project_boxed_opaque_existential_1(&v53, MEMORY[0x1E6969080]);
  v39 = *v38;
  v40 = v38[1];
  sub_1A78C0990(v17, v16);
  sub_1A7900C14(v39, v40, &v56);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = a8;
    v41 = swift_allocObject();
    v42 = *(v22 + 24);
    *(v41 + 24) = v42;
    MEMORY[0x1AC55E040](v42);
    v43 = swift_slowAlloc();
    v44 = *(v22 + 16);
    v45 = MEMORY[0x1AC55E040](v42);
    if ((v45 & 0x8000000000000000) == 0)
    {
      memmove(v43, v44, v45);
      *(v41 + 16) = v43;

      a8 = v50;
      v28 = a3;
      goto LABEL_37;
    }

    goto LABEL_40;
  }

LABEL_37:
  sub_1A78C3908(a2, v28, &v56);
  sub_1A78D6390();
  sub_1A78C0AFC(v17, v16);

  *a8 = v56;
  *(a8 + 16) = v48;
  return result;
}

double sub_1A79015B8@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 2);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_1A7901E58((a1 + 32), &a1[*(a1 + 2) + 32], v21);
      *(v5 + 32) = v21[0];
      *(v5 + 48) = v21[1];
      *(v5 + 64) = v21[2];
      *(v5 + 80) = v21[3];
      v6 = sub_1A78C24CC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_1A793DB28();
      *(v7 + 16) = 128;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *&v21[0] = v7;
      sub_1A78C1F84(0, *(a1 + 2), a1 + 32, &a1[*(a1 + 2) + 32]);

      a1 = sub_1A78C24CC(*&v21[0]);
    }
  }

  v8 = ccsha512_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7198, "tF");
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v11 = swift_slowAlloc();
  ccdigest_init();
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v20 + 1) = v10;
  swift_beginAccess();
  sub_1A78C29D0(a1 + 32, &a1[*(a1 + 2) + 32], &v19);
  v12 = sub_1A793DB18();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v12 + 32, v12 + 32 + *(v12 + 16));

  v13 = ccsha512_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v16 = swift_slowAlloc();
  ccdigest_init();
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v20 = v15;
  sub_1A78C5560(a1 + 32, &a1[*(a1 + 2) + 32], &v19);
  v17 = sub_1A793DB18();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v17 + 32, v17 + 32 + *(v17 + 16));

  result = *&v20;
  *a2 = v20;
  return result;
}

double sub_1A79018A8@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 2);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_1A7901F14((a1 + 32), &a1[*(a1 + 2) + 32], v22);
      *(v5 + 32) = v22[0];
      v6 = v22[2];
      *(v5 + 48) = v22[1];
      *(v5 + 64) = v6;
      v7 = sub_1A78C24CC(v5);

      a1 = v7;
    }

    else
    {
      v8 = sub_1A793DB28();
      *(v8 + 16) = 128;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *&v22[0] = v8;
      sub_1A78C1F84(0, *(a1 + 2), a1 + 32, &a1[*(a1 + 2) + 32]);

      a1 = sub_1A78C24CC(*&v22[0]);
    }
  }

  v9 = ccsha384_di();
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
  v11 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v12 = swift_slowAlloc();
  ccdigest_init();
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(&v21 + 1) = v11;
  swift_beginAccess();
  sub_1A78C29D0(a1 + 32, &a1[*(a1 + 2) + 32], &v20);
  v13 = sub_1A793DB18();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v13 + 32, v13 + 32 + *(v13 + 16));

  v14 = ccsha384_di();
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v17 = swift_slowAlloc();
  ccdigest_init();
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *&v21 = v16;
  sub_1A78C5560(a1 + 32, &a1[*(a1 + 2) + 32], &v20);
  v18 = sub_1A793DB18();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v18 + 32, v18 + 32 + *(v18 + 16));

  result = *&v21;
  *a2 = v21;
  return result;
}

double sub_1A7901B88@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 2);
  if (v4 != 64)
  {
    if (v4 > 0x40)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 64;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      sub_1A7901FD0((a1 + 32), &a1[*(a1 + 2) + 32], v21);
      *(v5 + 32) = v21[0];
      *(v5 + 48) = v21[1];
      v6 = sub_1A78C24CC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_1A793DB28();
      *(v7 + 16) = 64;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *&v21[0] = v7;
      sub_1A78C1F84(0, *(a1 + 2), a1 + 32, &a1[*(a1 + 2) + 32]);

      a1 = sub_1A78C24CC(*&v21[0]);
    }
  }

  v8 = ccsha256_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v11 = swift_slowAlloc();
  ccdigest_init();
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v20 + 1) = v10;
  swift_beginAccess();
  sub_1A78C29D0(a1 + 32, &a1[*(a1 + 2) + 32], &v19);
  v12 = sub_1A793DB18();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v12 + 32, v12 + 32 + *(v12 + 16));

  v13 = ccsha256_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v16 = swift_slowAlloc();
  ccdigest_init();
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v20 = v15;
  sub_1A78C5560(a1 + 32, &a1[*(a1 + 2) + 32], &v19);
  v17 = sub_1A793DB18();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v17 + 32, v17 + 32 + *(v17 + 16));

  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t sub_1A7901E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = ccsha512_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7198, "tF");
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78C465C(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7901F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = ccsha384_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78C4BA4(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7901FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = ccsha256_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78BD4B0(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A7902164(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v9 = sub_1A793D6F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = ccec_ctx_k(v11);
  v15 = a2();
  if (v15)
  {
    v16 = [objc_opt_self() groupOrderByteCountForCP_];
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = sub_1A7902328(v14, v16);
      v18 = sub_1A78C24CC(v17);

      swift_beginAccess();
      v19 = v18[2];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *v13 = a4;
      v13[1] = v20;
      (*(v10 + 104))(v13, *MEMORY[0x1E6969028], v9);

      v21 = sub_1A78DA2C4((v18 + 4), v19, v13);
      v23 = v22;

      *a5 = v21;
      a5[1] = v23;
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

char *sub_1A7902328(char *result, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v2 = result;
  v4 = sub_1A78BDC10(a2, 0);
  result = sub_1A78E259C(v4 + 32, a2, v2, a2);
  if (v5 != a2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v4 + 2);
  if (v6 < 2)
  {
    return v4;
  }

  v7 = v6 >> 1;
  v8 = v6 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_9;
    }

    v10 = *(v4 + 2);
    if (i - 32 >= v10)
    {
      break;
    }

    if (v8 - 32 >= v10)
    {
      goto LABEL_16;
    }

    v11 = v4[i];
    v12 = v4[v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    v4[i] = v12;
    v4[v8] = v11;
LABEL_9:
    --v8;
    if (!--v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A7902420(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v26, 0, 14);
      v7 = v26;
      v6 = v26;
      goto LABEL_23;
    }

    v8 = v2;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1A793D648();
    if (v11)
    {
      v12 = sub_1A793D678();
      if (__OFSUB__(v9, v12))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    v6 = v26 + BYTE6(a2);
    v7 = v26;
    goto LABEL_23;
  }

  v14 = (v4 >> 32) - v4;
  if (v4 >> 32 < v4)
  {
    __break(1u);
    goto LABEL_30;
  }

  v8 = v2;
  v11 = sub_1A793D648();
  if (v11)
  {
    v15 = sub_1A793D678();
    if (!__OFSUB__(v4, v15))
    {
      v11 += v4 - v15;
      goto LABEL_15;
    }

LABEL_31:
    __break(1u);
  }

LABEL_15:
  v16 = sub_1A793D668();
  if (v16 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  v2 = v8;
LABEL_23:
  v19 = sub_1A79026C0(v7, v6);
  if (v2)
  {
    return sub_1A78C0AFC(v4, v3);
  }

  v26[0] = 0;
  result = MEMORY[0x1AC55DAD0](v19);
  if (result)
  {
    v21 = getccec_pub_ctx_size();
    MEMORY[0x1EEE9AC00](v21);
    v23 = sub_1A78C0EA8(v22, sub_1A790AE34);
    if (v26[0])
    {

      sub_1A78D6484();
      swift_allocError();
      *v24 = 1;
      *(v24 + 4) = 1;
      swift_willThrow();
      v4 = v27;
      v3 = v28;
      return sub_1A78C0AFC(v4, v3);
    }

    v25 = v23;
    sub_1A78C0AFC(v27, v28);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79026C0(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_15;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(result, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 1;
  if (v4 != result + 1 || (v6 = 5, !a1) || a2 == a1 || (*a1 & 0xFE) != 2)
  {
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A79027A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = result;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_1A78C0AFC(a3, a4);
      sub_1A78C0AFC(v12, a2);
      v20 = a5;
      v21 = a6;
      goto LABEL_15;
    }

    v15 = *(a5 + 16);
    v14 = *(a5 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_46;
    }

    if (v17 != 16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(a6) != 16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (HIDWORD(a5) - a5 != 16)
    {
LABEL_13:
      sub_1A78C0AFC(a5, a6);
      sub_1A78C0AFC(a3, a4);
      v20 = v12;
      v21 = a2;
LABEL_15:
      sub_1A78C0AFC(v20, v21);
      sub_1A78D6484();
      swift_allocError();
      *v22 = 1;
      *(v22 + 4) = 1;
      return swift_willThrow();
    }
  }

LABEL_8:
  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a2);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v24 = *(result + 16);
  v23 = *(result + 24);
  v19 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v19 = HIDWORD(result) - result;
  }

LABEL_23:
  v47 = xmmword_1A793F230;
  v25 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v28 = *(a3 + 16);
      v27 = *(a3 + 24);
      v16 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v16)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_33:
    v16 = __OFADD__(v19, v26);
    v29 = v19 + v26;
    if (v16)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v13 == 2)
    {
      v32 = *(a5 + 16);
      v31 = *(a5 + 24);
      v16 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (!v16)
      {
LABEL_42:
        result = v29 + v30;
        if (!__OFADD__(v29, v30))
        {
          v48 = v19;
          sub_1A793D768();
          v34 = MEMORY[0x1E6969080];
          v45 = MEMORY[0x1E6969080];
          v46 = MEMORY[0x1E6969078];
          v43 = v12;
          v44 = a2;
          v35 = __swift_project_boxed_opaque_existential_1(&v43, MEMORY[0x1E6969080]);
          v37 = *v35;
          v36 = v35[1];
          sub_1A78C0990(v12, a2);
          sub_1A7900C14(v37, v36, &v47);
          sub_1A78C0AFC(v12, a2);
          __swift_destroy_boxed_opaque_existential_1(&v43);
          v45 = v34;
          v38 = MEMORY[0x1E6969078];
          v46 = MEMORY[0x1E6969078];
          v43 = a3;
          v44 = a4;
          v39 = __swift_project_boxed_opaque_existential_1(&v43, v34);
          sub_1A7900C14(*v39, v39[1], &v47);
          __swift_destroy_boxed_opaque_existential_1(&v43);
          v45 = v34;
          v46 = v38;
          v43 = a5;
          v44 = a6;
          v40 = __swift_project_boxed_opaque_existential_1(&v43, v34);
          sub_1A7900C14(*v40, v40[1], &v47);
          result = __swift_destroy_boxed_opaque_existential_1(&v43);
          *a7 = v47;
          *(a7 + 16) = v48;
          return result;
        }

        goto LABEL_45;
      }

      __break(1u);
    }

    else if (v13 == 1)
    {
      LODWORD(v30) = HIDWORD(a5) - a5;
      if (__OFSUB__(HIDWORD(a5), a5))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v30 = v30;
      goto LABEL_42;
    }

    v30 = BYTE6(a6);
    goto LABEL_42;
  }

  if (!v25)
  {
    v26 = BYTE6(a4);
    goto LABEL_33;
  }

LABEL_30:
  LODWORD(v26) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v26 = v26;
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1A7902AE0@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1A78C0990(a2, a3);
  sub_1A78F3E70(a2, a3);
  swift_beginAccess();

  sub_1A7901B88(v7, &v24);
  v8 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v8, v9);
  v10 = v24;
  sub_1A78BD4B0(v23);
  v22 = v10;
  v17[0] = v23[0];
  v17[1] = v23[1];

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v17, &v18);

  sub_1A78BD4B0(&v19);

  v11 = v19;
  v12 = v20;
  v13 = v21;

  sub_1A78C0AFC(a2, a3);
  return sub_1A78D040C(v11, *(&v11 + 1), v12, v13, MEMORY[0x1E69E7CC0], a4, a5);
}

uint64_t sub_1A7902C68@<X0>(unint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CC0];
  sub_1A793DB18();

  v5 = sub_1A793DB18();
  sub_1A78C24CC(v5);

  swift_beginAccess();

  sub_1A7901B88(v6, &v22);
  v7 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v7, v8);
  v9 = v22;
  sub_1A78BD4B0(v21);
  v20 = v9;
  v15[0] = v21[0];
  v15[1] = v21[1];

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v15, &v16);

  sub_1A78BD4B0(&v17);

  v10 = v17;
  v12 = v18;
  v11 = v19;

  return sub_1A78D040C(v10, *(&v10 + 1), v12, v11, v4, a2, a3);
}

uint64_t CompoundMKEMCiphertext.IndividualElement.ciphertext.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t CompoundMKEMCiphertext.IndividualElement.keyID.getter()
{
  v1 = *(v0 + 16);
  sub_1A78C0990(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundMKEMCiphertext.IndividualElement.init(ciphertext:keyID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static CompoundMKEMCiphertext.IndividualElement.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1A790A674(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_1A790A674(v2, v3, v4, v5);
}

uint64_t CompoundMKEMCiphertext.IndividualElement.hash(into:)(uint64_t a1)
{
  sub_1A793D7E8();

  return sub_1A793D7E8();
}

uint64_t CompoundMKEMCiphertext.IndividualElement.hashValue.getter()
{
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A7902F98()
{
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A7903000(uint64_t a1)
{
  sub_1A793D7E8();

  return sub_1A793D7E8();
}

uint64_t sub_1A7903050(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

BOOL sub_1A79030B4(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1A790A674(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_1A790A674(v2, v3, v4, v5);
}

uint64_t CompoundMKEMCiphertext.sharedPrefix.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t CompoundMKEMCiphertext.sharedPrefix.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CompoundMKEMCiphertext.individualElements.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundMKEMCiphertext.init(sharedPrefix:individualElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static CompoundMKEMCiphertext.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (!sub_1A790A674(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_1A79032D8(v2, v3);
}

uint64_t sub_1A790327C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79032D8(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 56);
  for (i = (a1 + 56); ; i += 4)
  {
    v7 = *(i - 3);
    v8 = *(i - 2);
    v9 = *i;
    v11 = *(v3 - 3);
    v10 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    v14 = v8 >> 62;
    v15 = v10 >> 62;
    v175 = v11;
    v176 = *(i - 1);
    v173 = v7;
    v174 = v8;
    if (v8 >> 62 == 3)
    {
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 == 0xC000000000000000;
      }

      v17 = 0;
      v18 = v16 && v10 >> 62 == 3;
      if (v18 && !v11 && v10 == 0xC000000000000000)
      {
        sub_1A78C0990(0, 0xC000000000000000);
        sub_1A78C0990(v176, v9);
        v19 = 0;
        v20 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_30:
      if (v15 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        v23 = __OFSUB__(v25, v26);
        v17 = v25 - v26;
        if (v23)
        {
          goto LABEL_286;
        }

        goto LABEL_30;
      }

      v17 = 0;
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v14)
    {
      LODWORD(v17) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_285;
      }

      v17 = v17;
      if (v15 <= 1)
      {
LABEL_31:
        if (v15)
        {
          LODWORD(v24) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_282;
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v10);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v17 = BYTE6(v8);
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v15 != 2)
    {
      if (v17)
      {
        return 0;
      }

LABEL_52:
      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v176, v9);
      v19 = v11;
      v20 = v10;
LABEL_53:
      sub_1A78C0990(v19, v20);
      sub_1A78C0990(v12, v13);
      goto LABEL_147;
    }

    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
    }

LABEL_37:
    if (v17 != v24)
    {
      return 0;
    }

    if (v17 < 1)
    {
      goto LABEL_52;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v8;
        BYTE2(__s1[1]) = BYTE2(v8);
        BYTE3(__s1[1]) = BYTE3(v8);
        BYTE4(__s1[1]) = BYTE4(v8);
        BYTE5(__s1[1]) = BYTE5(v8);
        if (!v15)
        {
          goto LABEL_75;
        }

        if (v15 != 1)
        {
          v56 = *(v11 + 16);
          v164 = *(v11 + 24);
          sub_1A78C0990(v7, v8);
          v170 = v9;
          sub_1A78C0990(v176, v9);
          sub_1A78C0990(v11, v10);
          sub_1A78C0990(v12, v13);
          v43 = sub_1A793D648();
          if (v43)
          {
            v57 = sub_1A793D678();
            if (__OFSUB__(v56, v57))
            {
              goto LABEL_316;
            }

            v43 += v56 - v57;
          }

          v23 = __OFSUB__(v164, v56);
          v45 = &v164[-v56];
          if (v23)
          {
            goto LABEL_299;
          }

          v46 = sub_1A793D668();
          if (!v43)
          {
            goto LABEL_327;
          }

          goto LABEL_107;
        }

        v27 = v11;
        v160 = ((v11 >> 32) - v11);
        if (v11 >> 32 < v11)
        {
          goto LABEL_296;
        }

        sub_1A78C0990(v7, v8);
        sub_1A78C0990(v176, v9);
        sub_1A78C0990(v11, v10);
        sub_1A78C0990(v12, v13);
        v28 = sub_1A793D648();
        if (!v28)
        {
          goto LABEL_328;
        }

        v29 = v28;
        v30 = sub_1A793D678();
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_300;
        }

        v31 = (v27 - v30 + v29);
        v32 = sub_1A793D668();
        if (!v31)
        {
          goto LABEL_329;
        }

        if (v32 >= v160)
        {
          v33 = v160;
        }

        else
        {
          v33 = v32;
        }

        if (memcmp(__s1, v31, v33))
        {
          goto LABEL_280;
        }

        goto LABEL_147;
      }

      v168 = *(v3 - 1);
      v37 = *v3;
      v38 = v7;
      if (v7 > v7 >> 32)
      {
        goto LABEL_289;
      }

      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v176, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v168, v37);
      v39 = sub_1A793D648();
      if (v39)
      {
        v40 = v39;
        v41 = sub_1A793D678();
        if (__OFSUB__(v38, v41))
        {
          goto LABEL_292;
        }

        v162 = (v38 - v41 + v40);
      }

      else
      {
        v162 = 0;
      }

      v13 = v37;
      sub_1A793D668();
      if (v15 == 2)
      {
        v72 = *(v175 + 16);
        v73 = *(v175 + 24);
        v50 = sub_1A793D648();
        if (v50)
        {
          v74 = sub_1A793D678();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_318;
          }

          v50 += v72 - v74;
        }

        v23 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v23)
        {
          goto LABEL_304;
        }

        v76 = sub_1A793D668();
        if (v76 >= v75)
        {
          v53 = v75;
        }

        else
        {
          v53 = v76;
        }

        v48 = v162;
        if (!v162)
        {
          goto LABEL_339;
        }

        v13 = v37;
        v12 = v168;
        if (!v50)
        {
          goto LABEL_338;
        }

        goto LABEL_142;
      }

      if (v15 == 1)
      {
        if (v175 >> 32 < v175)
        {
          goto LABEL_303;
        }

        v50 = sub_1A793D648();
        if (v50)
        {
          v54 = sub_1A793D678();
          if (__OFSUB__(v175, v54))
          {
            goto LABEL_320;
          }

          v50 += v175 - v54;
        }

        v13 = v37;
        v55 = sub_1A793D668();
        if (v55 >= (v175 >> 32) - v175)
        {
          v53 = (v175 >> 32) - v175;
        }

        else
        {
          v53 = v55;
        }

        v48 = v162;
        v12 = v168;
        if (!v162)
        {
          goto LABEL_337;
        }

        if (!v50)
        {
          goto LABEL_336;
        }

        goto LABEL_142;
      }

      v48 = v162;
      __s1[0] = v175;
      LOWORD(__s1[1]) = v10;
      BYTE2(__s1[1]) = BYTE2(v10);
      BYTE3(__s1[1]) = BYTE3(v10);
      BYTE4(__s1[1]) = BYTE4(v10);
      BYTE5(__s1[1]) = BYTE5(v10);
      v12 = v168;
      if (!v162)
      {
        goto LABEL_330;
      }

LABEL_145:
      v47 = BYTE6(v10);
      p_s2 = __s1;
LABEL_146:
      if (memcmp(v48, p_s2, v47))
      {
        goto LABEL_280;
      }

      goto LABEL_147;
    }

    if (v14 == 2)
    {
      break;
    }

    memset(__s1, 0, 14);
    if (!v15)
    {
LABEL_75:
      __s2 = v11;
      v178 = v10;
      v179 = BYTE2(v10);
      v180 = BYTE3(v10);
      v181 = BYTE4(v10);
      v182 = BYTE5(v10);
      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v176, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v12, v13);
      v47 = BYTE6(v10);
      v48 = __s1;
      p_s2 = &__s2;
      goto LABEL_146;
    }

    if (v15 == 2)
    {
      v42 = *(v11 + 16);
      v163 = *(v11 + 24);
      sub_1A78C0990(v7, v8);
      v170 = v9;
      sub_1A78C0990(v176, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v12, v13);
      v43 = sub_1A793D648();
      if (v43)
      {
        v44 = sub_1A793D678();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_315;
        }

        v43 += v42 - v44;
      }

      v23 = __OFSUB__(v163, v42);
      v45 = &v163[-v42];
      if (v23)
      {
        goto LABEL_297;
      }

      v46 = sub_1A793D668();
      if (!v43)
      {
        goto LABEL_333;
      }

LABEL_107:
      if (v46 >= v45)
      {
        v58 = v45;
      }

      else
      {
        v58 = v46;
      }

      v9 = v170;
      if (memcmp(__s1, v43, v58))
      {
        goto LABEL_280;
      }

      goto LABEL_147;
    }

    v59 = v11;
    v60 = (v11 >> 32) - v11;
    if (v11 >> 32 < v11)
    {
      goto LABEL_295;
    }

    sub_1A78C0990(v7, v8);
    sub_1A78C0990(v176, v9);
    sub_1A78C0990(v11, v10);
    sub_1A78C0990(v12, v13);
    v61 = sub_1A793D648();
    if (!v61)
    {
      goto LABEL_331;
    }

    v62 = v61;
    v63 = sub_1A793D678();
    if (__OFSUB__(v59, v63))
    {
      goto LABEL_301;
    }

    v64 = (v59 - v63 + v62);
    v65 = sub_1A793D668();
    if (!v64)
    {
      goto LABEL_332;
    }

    if (v65 >= v60)
    {
      v66 = v60;
    }

    else
    {
      v66 = v65;
    }

    if (memcmp(__s1, v64, v66))
    {
LABEL_280:
      sub_1A78C0AFC(v175, v10);
      sub_1A78C0AFC(v12, v13);
      sub_1A78C0AFC(v173, v174);
      sub_1A78C0AFC(v176, v9);
      return 0;
    }

LABEL_147:
    v77 = v9 >> 62;
    v78 = v13 >> 62;
    if (v9 >> 62 == 3)
    {
      v79 = 0;
      if (!v176 && v9 == 0xC000000000000000 && v13 >> 62 == 3)
      {
        v79 = 0;
        if (!v12 && v13 == 0xC000000000000000)
        {
          sub_1A78C0AFC(v175, v10);
          sub_1A78C0AFC(0, 0xC000000000000000);
          sub_1A78C0AFC(v173, v174);
          v5 = 0;
          v6 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_163:
      if (v78 <= 1)
      {
        goto LABEL_164;
      }

      goto LABEL_157;
    }

    if (v77 > 1)
    {
      if (v77 == 2)
      {
        v84 = *(v176 + 16);
        v83 = *(v176 + 24);
        v23 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        if (v23)
        {
          goto LABEL_287;
        }

        goto LABEL_163;
      }

      v79 = 0;
      if (v78 <= 1)
      {
        goto LABEL_164;
      }
    }

    else if (v77)
    {
      LODWORD(v79) = HIDWORD(v176) - v176;
      if (__OFSUB__(HIDWORD(v176), v176))
      {
        goto LABEL_288;
      }

      v79 = v79;
      if (v78 <= 1)
      {
LABEL_164:
        if (v78)
        {
          LODWORD(v82) = HIDWORD(v12) - v12;
          if (__OFSUB__(HIDWORD(v12), v12))
          {
            goto LABEL_284;
          }

          v82 = v82;
        }

        else
        {
          v82 = BYTE6(v13);
        }

        goto LABEL_168;
      }
    }

    else
    {
      v79 = BYTE6(v9);
      if (v78 <= 1)
      {
        goto LABEL_164;
      }
    }

LABEL_157:
    if (v78 != 2)
    {
      if (v79)
      {
        goto LABEL_280;
      }

LABEL_6:
      sub_1A78C0AFC(v175, v10);
      sub_1A78C0AFC(v12, v13);
      sub_1A78C0AFC(v173, v174);
      v5 = v176;
      v6 = v9;
LABEL_7:
      sub_1A78C0AFC(v5, v6);
      goto LABEL_8;
    }

    v81 = *(v12 + 16);
    v80 = *(v12 + 24);
    v23 = __OFSUB__(v80, v81);
    v82 = v80 - v81;
    if (v23)
    {
      goto LABEL_283;
    }

LABEL_168:
    if (v79 != v82)
    {
      goto LABEL_280;
    }

    if (v79 < 1)
    {
      goto LABEL_6;
    }

    if (v77 > 1)
    {
      v85 = v173;
      v86 = v174;
      if (v77 != 2)
      {
        memset(__s1, 0, 14);
        if (!v78)
        {
LABEL_200:
          __s2 = v12;
          v178 = v13;
          v179 = BYTE2(v13);
          v180 = BYTE3(v13);
          v181 = BYTE4(v13);
          v182 = BYTE5(v13);
          v107 = v85;
          v167 = memcmp(__s1, &__s2, BYTE6(v13));
          sub_1A78C0AFC(v175, v10);
          sub_1A78C0AFC(v12, v13);
          sub_1A78C0AFC(v107, v86);
          sub_1A78C0AFC(v176, v9);
          if (v167)
          {
            return 0;
          }

          goto LABEL_8;
        }

        v169 = v12;
        v171 = v9;
        if (v78 == 2)
        {
          v104 = *(v12 + 16);
          v105 = *(v12 + 24);
          v94 = sub_1A793D648();
          v90 = v13;
          if (v94)
          {
            v106 = sub_1A793D678();
            if (__OFSUB__(v104, v106))
            {
              goto LABEL_321;
            }

            v94 += v104 - v106;
          }

          v23 = __OFSUB__(v105, v104);
          v89 = v105 - v104;
          if (v23)
          {
            goto LABEL_308;
          }

          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_351;
          }
        }

        else
        {
          v90 = v13;
          v89 = (v169 >> 32) - v169;
          if (v169 >> 32 < v169)
          {
            goto LABEL_306;
          }

          v130 = sub_1A793D648();
          if (!v130)
          {
            goto LABEL_343;
          }

          v131 = v130;
          v132 = sub_1A793D678();
          if (__OFSUB__(v169, v132))
          {
            goto LABEL_310;
          }

          v94 = (v169 - v132 + v131);
          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_344;
          }
        }

LABEL_242:
        if (result >= v89)
        {
          v133 = v89;
        }

        else
        {
          v133 = result;
        }

        v127 = memcmp(__s1, v94, v133);
        sub_1A78C0AFC(v175, v10);
        v128 = v169;
        v129 = v90;
        goto LABEL_246;
      }

      v157 = v10;
      v165 = v13;
      v96 = v174;
      v97 = *(v176 + 16);
      v98 = sub_1A793D648();
      v172 = v9;
      if (v98)
      {
        v99 = v98;
        v100 = sub_1A793D678();
        if (__OFSUB__(v97, v100))
        {
          goto LABEL_293;
        }

        v155 = (v97 - v100 + v99);
      }

      else
      {
        v155 = 0;
      }

      v108 = v176;
      sub_1A793D668();
      v109 = v175;
      if (v78 == 2)
      {
        v134 = v174;
        v135 = *(v12 + 16);
        v136 = *(v12 + 24);
        v137 = sub_1A793D648();
        v138 = v173;
        if (v137)
        {
          v139 = sub_1A793D678();
          if (__OFSUB__(v135, v139))
          {
            goto LABEL_323;
          }

          v137 += v135 - v139;
        }

        v23 = __OFSUB__(v136, v135);
        v149 = v136 - v135;
        if (v23)
        {
          goto LABEL_312;
        }

        v150 = v165;
        v151 = sub_1A793D668();
        if (v151 >= v149)
        {
          v152 = v149;
        }

        else
        {
          v152 = v151;
        }

        result = v155;
        if (!v155)
        {
          goto LABEL_353;
        }

        if (!v137)
        {
          goto LABEL_352;
        }

LABEL_272:
        if (result == v137)
        {
          sub_1A78C0AFC(v175, v157);
          sub_1A78C0AFC(v12, v150);
          v118 = v138;
          v119 = v134;
          goto LABEL_274;
        }

        v145 = memcmp(result, v137, v152);
        sub_1A78C0AFC(v175, v157);
        sub_1A78C0AFC(v12, v150);
        v147 = v138;
        v148 = v134;
        goto LABEL_276;
      }

      v110 = v173;
      if (v78 != 1)
      {
        v140 = v155;
        __s1[0] = v12;
        v141 = v165;
        LODWORD(__s1[1]) = v165;
        WORD2(__s1[1]) = WORD2(v165);
        if (!v155)
        {
          goto LABEL_345;
        }

LABEL_257:
        v145 = memcmp(v140, __s1, BYTE6(v141));
        sub_1A78C0AFC(v109, v157);
        sub_1A78C0AFC(v12, v141);
        sub_1A78C0AFC(v110, v96);
        v146 = v108;
        goto LABEL_277;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_307;
      }

      v111 = sub_1A793D648();
      if (v111)
      {
        v112 = sub_1A793D678();
        if (__OFSUB__(v12, v112))
        {
          goto LABEL_324;
        }

        v111 += v12 - v112;
      }

      v113 = v165;
      v114 = sub_1A793D668();
      if (v114 >= (v12 >> 32) - v12)
      {
        v115 = (v12 >> 32) - v12;
      }

      else
      {
        v115 = v114;
      }

      result = v155;
      if (!v155)
      {
        goto LABEL_347;
      }

      if (!v111)
      {
        goto LABEL_346;
      }
    }

    else
    {
      v85 = v173;
      v86 = v174;
      if (!v77)
      {
        __s1[0] = v176;
        LOWORD(__s1[1]) = v9;
        BYTE2(__s1[1]) = BYTE2(v9);
        BYTE3(__s1[1]) = BYTE3(v9);
        BYTE4(__s1[1]) = BYTE4(v9);
        BYTE5(__s1[1]) = BYTE5(v9);
        if (!v78)
        {
          goto LABEL_200;
        }

        v87 = v13;
        v169 = v12;
        v171 = v9;
        if (v78 == 1)
        {
          v88 = v12;
          v89 = (v12 >> 32) - v12;
          if (v12 >> 32 < v12)
          {
            goto LABEL_305;
          }

          v90 = v87;
          v91 = sub_1A793D648();
          if (!v91)
          {
            goto LABEL_349;
          }

          v92 = v91;
          v93 = sub_1A793D678();
          if (__OFSUB__(v88, v93))
          {
            goto LABEL_311;
          }

          v94 = (v88 - v93 + v92);
          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_350;
          }

          goto LABEL_242;
        }

        v120 = *(v12 + 16);
        v121 = *(v12 + 24);
        v122 = sub_1A793D648();
        if (v122)
        {
          v123 = sub_1A793D678();
          if (__OFSUB__(v120, v123))
          {
            goto LABEL_322;
          }

          v122 += v120 - v123;
        }

        v23 = __OFSUB__(v121, v120);
        v124 = v121 - v120;
        if (v23)
        {
          goto LABEL_309;
        }

        v125 = sub_1A793D668();
        if (!v122)
        {
          goto LABEL_342;
        }

        if (v125 >= v124)
        {
          v126 = v124;
        }

        else
        {
          v126 = v125;
        }

        v127 = memcmp(__s1, v122, v126);
        sub_1A78C0AFC(v175, v10);
        v128 = v12;
        v129 = v87;
LABEL_246:
        sub_1A78C0AFC(v128, v129);
        sub_1A78C0AFC(v173, v174);
        sub_1A78C0AFC(v176, v171);
        if (v127)
        {
          return 0;
        }

        goto LABEL_8;
      }

      v157 = v10;
      v166 = v13;
      if (v176 > v176 >> 32)
      {
        goto LABEL_290;
      }

      v96 = v174;
      v101 = sub_1A793D648();
      v172 = v9;
      if (v101)
      {
        v102 = v101;
        v103 = sub_1A793D678();
        if (__OFSUB__(v176, v103))
        {
          goto LABEL_294;
        }

        v156 = (v176 - v103 + v102);
      }

      else
      {
        v156 = 0;
      }

      v108 = v176;
      sub_1A793D668();
      v109 = v175;
      if (v78 == 2)
      {
        v134 = v174;
        v142 = *(v12 + 16);
        v143 = *(v12 + 24);
        v137 = sub_1A793D648();
        v138 = v173;
        if (v137)
        {
          v144 = sub_1A793D678();
          if (__OFSUB__(v142, v144))
          {
            goto LABEL_325;
          }

          v137 += v142 - v144;
        }

        v23 = __OFSUB__(v143, v142);
        v153 = v143 - v142;
        if (v23)
        {
          goto LABEL_314;
        }

        v150 = v166;
        v154 = sub_1A793D668();
        if (v154 >= v153)
        {
          v152 = v153;
        }

        else
        {
          v152 = v154;
        }

        result = v156;
        if (!v156)
        {
          goto LABEL_355;
        }

        if (!v137)
        {
          goto LABEL_354;
        }

        goto LABEL_272;
      }

      v110 = v173;
      if (v78 != 1)
      {
        v140 = v156;
        __s1[0] = v12;
        v141 = v166;
        LODWORD(__s1[1]) = v166;
        WORD2(__s1[1]) = WORD2(v166);
        if (!v156)
        {
          goto LABEL_348;
        }

        goto LABEL_257;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_313;
      }

      v111 = sub_1A793D648();
      if (v111)
      {
        v116 = sub_1A793D678();
        if (__OFSUB__(v12, v116))
        {
          goto LABEL_326;
        }

        v111 += v12 - v116;
      }

      v113 = v166;
      v117 = sub_1A793D668();
      if (v117 >= (v12 >> 32) - v12)
      {
        v115 = (v12 >> 32) - v12;
      }

      else
      {
        v115 = v117;
      }

      result = v156;
      if (!v156)
      {
        goto LABEL_357;
      }

      if (!v111)
      {
        goto LABEL_356;
      }
    }

    if (result == v111)
    {
      sub_1A78C0AFC(v175, v157);
      sub_1A78C0AFC(v12, v113);
      v118 = v110;
      v119 = v96;
LABEL_274:
      sub_1A78C0AFC(v118, v119);
      sub_1A78C0AFC(v176, v172);
      goto LABEL_8;
    }

    v145 = memcmp(result, v111, v115);
    sub_1A78C0AFC(v175, v157);
    sub_1A78C0AFC(v12, v113);
    v147 = v110;
    v148 = v96;
LABEL_276:
    sub_1A78C0AFC(v147, v148);
    v146 = v176;
LABEL_277:
    sub_1A78C0AFC(v146, v172);
    if (v145)
    {
      return 0;
    }

LABEL_8:
    v3 += 4;
    if (!--v2)
    {
      return 1;
    }
  }

  v158 = *(v7 + 16);
  sub_1A78C0990(v7, v8);
  sub_1A78C0990(v176, v9);
  sub_1A78C0990(v11, v10);
  v161 = v13;
  sub_1A78C0990(v12, v13);
  v34 = sub_1A793D648();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A793D678();
    if (__OFSUB__(v158, v36))
    {
      goto LABEL_291;
    }

    v159 = (v158 - v36 + v35);
  }

  else
  {
    v159 = 0;
  }

  sub_1A793D668();
  if (v15 == 2)
  {
    v67 = *(v175 + 16);
    v68 = *(v175 + 24);
    v50 = sub_1A793D648();
    if (v50)
    {
      v69 = sub_1A793D678();
      if (__OFSUB__(v67, v69))
      {
        goto LABEL_317;
      }

      v50 += v67 - v69;
    }

    v23 = __OFSUB__(v68, v67);
    v70 = v68 - v67;
    if (v23)
    {
      goto LABEL_302;
    }

    v71 = sub_1A793D668();
    if (v71 >= v70)
    {
      v53 = v70;
    }

    else
    {
      v53 = v71;
    }

    v48 = v159;
    v13 = v161;
    if (!v159)
    {
      goto LABEL_335;
    }

    if (!v50)
    {
      goto LABEL_334;
    }

    goto LABEL_142;
  }

  if (v15 == 1)
  {
    if (v175 >> 32 < v175)
    {
      goto LABEL_298;
    }

    v50 = sub_1A793D648();
    if (v50)
    {
      v51 = sub_1A793D678();
      if (__OFSUB__(v175, v51))
      {
        goto LABEL_319;
      }

      v50 += v175 - v51;
    }

    v52 = sub_1A793D668();
    if (v52 >= (v175 >> 32) - v175)
    {
      v53 = (v175 >> 32) - v175;
    }

    else
    {
      v53 = v52;
    }

    v48 = v159;
    if (!v159)
    {
      goto LABEL_341;
    }

    if (!v50)
    {
      goto LABEL_340;
    }

LABEL_142:
    if (v48 == v50)
    {
      goto LABEL_147;
    }

    v47 = v53;
    p_s2 = v50;
    goto LABEL_146;
  }

  v48 = v159;
  __s1[0] = v175;
  LOWORD(__s1[1]) = v10;
  BYTE2(__s1[1]) = BYTE2(v10);
  BYTE3(__s1[1]) = BYTE3(v10);
  BYTE4(__s1[1]) = BYTE4(v10);
  BYTE5(__s1[1]) = BYTE5(v10);
  if (v159)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  sub_1A793D668();
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  sub_1A793D668();
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  sub_1A793D668();
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  result = sub_1A793D668();
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
  return result;
}

uint64_t CompoundMKEMCiphertext.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A793D7E8();
  v3 = *(v2 + 16);
  result = MEMORY[0x1AC55D830](v3);
  if (v3)
  {
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_1A78C0990(v6, v7);
      sub_1A78C0990(v8, v9);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v6, v7);
      result = sub_1A78C0AFC(v8, v9);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t CompoundMKEMCiphertext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1A793DF58();
  sub_1A793D7E8();
  v2 = *(v1 + 16);
  MEMORY[0x1AC55D830](v2);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      sub_1A78C0990(v4, v5);
      sub_1A78C0990(v6, v7);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v4, v5);
      sub_1A78C0AFC(v6, v7);
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return sub_1A793DFA8();
}

uint64_t sub_1A7904868()
{
  v1 = *(v0 + 16);
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A790A150(v3, v1);
  return sub_1A793DFA8();
}

uint64_t sub_1A79048CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A793D7E8();

  return sub_1A790A150(a1, v3);
}

uint64_t sub_1A7904910(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A790A150(v4, v2);
  return sub_1A793DFA8();
}

uint64_t sub_1A7904970(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (!sub_1A790A674(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_1A79032D8(v2, v3);
}

uint64_t SimMKEMPublicKey.rawRepresentation.getter()
{
  v1 = *(v0 + 24);
  sub_1A78C0990(v1, *(v0 + 32));
  return v1;
}

uint64_t SimMKEMPublicKey.keyID.getter()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_1A7904A3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v49[0] = a1;
      WORD4(v49[0]) = a2;
      BYTE10(v49[0]) = BYTE2(a2);
      BYTE11(v49[0]) = BYTE3(a2);
      BYTE12(v49[0]) = BYTE4(a2);
      BYTE13(v49[0]) = BYTE5(a2);
      v8 = v49 + BYTE6(a2);
      v9 = v49;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    *(v49 + 6) = 0;
    *&v49[0] = 0;
    v9 = v49;
    v8 = v49;
    goto LABEL_23;
  }

  v10 = v3;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1A793D648();
  if (v13)
  {
    v14 = sub_1A793D678();
    if (__OFSUB__(v11, v14))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v13 += v11 - v14;
  }

  v15 = __OFSUB__(v12, v11);
  v16 = v12 - v11;
  if (v15)
  {
    __break(1u);
LABEL_11:
    v16 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v10 = v3;
    v13 = sub_1A793D648();
    if (v13)
    {
      v17 = sub_1A793D678();
      if (__OFSUB__(a1, v17))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v13 += a1 - v17;
    }
  }

  v18 = sub_1A793D668();
  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v13);
  if (v13)
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  v3 = v10;
LABEL_23:
  sub_1A78CE4C8(v9, v8, v51);
  v21 = v51[0];
  v22 = *(&v51[0] + 1) >> 62;
  if ((*(&v51[0] + 1) >> 62) <= 1)
  {
    if (v22)
    {
      LODWORD(v23) = DWORD1(v51[0]) - LODWORD(v51[0]);
      if (!__OFSUB__(DWORD1(v51[0]), v51[0]))
      {
        v23 = v23;
        goto LABEL_29;
      }

      goto LABEL_46;
    }

LABEL_32:
    sub_1A78C0AFC(a1, a2);
    sub_1A78D6484();
    swift_allocError();
    *v27 = 0;
    *(v27 + 4) = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  if (v22 != 2)
  {
    goto LABEL_32;
  }

  v25 = *(*&v51[0] + 16);
  v24 = *(*&v51[0] + 24);
  v15 = __OFSUB__(v24, v25);
  v23 = v24 - v25;
  if (v15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_29:
  if (v23 != 1601)
  {
    goto LABEL_32;
  }

  sub_1A78C0990(*&v51[0], *(&v51[0] + 1));
  sub_1A78C3AA4(33, v21, *(&v21 + 1), v51);
  v26 = sub_1A7902420(*&v51[0], *(&v51[0] + 1));
  if (v3)
  {
    sub_1A78C0AFC(a1, a2);
LABEL_33:
    v29 = *(&v21 + 1);
    v28 = v21;
    return sub_1A78C0AFC(v28, v29);
  }

  v31 = v26;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    __break(1u);
    goto LABEL_53;
  }

  v32 = ccec_compressed_x962_export_pub_size();
  if (v32 < 0)
  {
    goto LABEL_50;
  }

  v33 = v32;
  if (v32)
  {
    v34 = sub_1A793DB28();
    *(v34 + 16) = v33;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v46 = v31;
  if (ccec_compressed_x962_export_pub())
  {
LABEL_51:
    __break(1u);
  }

  *(v34 + 16) = v33;
  v35 = sub_1A78C0DCC(v34);
  v37 = v36;

  v47 = sub_1A790A204(v35, v37, 0x620uLL);
  v48 = v38;
  sub_1A78C0AFC(v35, v37);
  result = ccsha256_di();
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v39 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v41 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v39;
  *(inited + 24) = v41;
  *&v49[0] = inited;
  sub_1A78C0990(v21, *(&v21 + 1));
  sub_1A79097B4(v21, *(&v21 + 1), v49);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  sub_1A78BD4B0(v51);

  v49[0] = v51[0];
  v49[1] = v51[1];
  sub_1A78F6AF0(v49, v50, v52);
  sub_1A78C0AFC(a1, a2);
  v43 = v52[0];
  v42 = v52[1];
  sub_1A78C0990(v21, *(&v21 + 1));
  sub_1A78C8A28(1568, v21, *(&v21 + 1), v51);
  v44 = v51[0];
  LOBYTE(v41) = sub_1A790A674(*&v51[0], *(&v51[0] + 1), v47, v48);
  result = sub_1A78C0AFC(v44, *(&v44 + 1));
  if ((v41 & 1) == 0)
  {
    sub_1A78D6484();
    swift_allocError();
    *v45 = 5;
    *(v45 + 4) = 1;
    swift_willThrow();

    sub_1A78C0AFC(v47, v48);
    sub_1A78C0AFC(v21, *(&v21 + 1));
    v28 = v43;
    v29 = v42;
    return sub_1A78C0AFC(v28, v29);
  }

  *a3 = v46;
  *(a3 + 8) = v47;
  *(a3 + 16) = v48;
  *(a3 + 24) = v21;
  *(a3 + 40) = v43;
  *(a3 + 48) = v42;
  return result;
}

uint64_t SimMKEMPublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[2] = *MEMORY[0x1E69E9840];
  sub_1A793D6A8();
  v7 = v38[0];
  v8 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) <= 1)
  {
    if (v8)
    {
      LODWORD(v9) = DWORD1(v38[0]) - LODWORD(v38[0]);
      if (!__OFSUB__(DWORD1(v38[0]), v38[0]))
      {
        v9 = v9;
        goto LABEL_7;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_13:
    sub_1A78D6484();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  if (v8 != 2)
  {
    goto LABEL_13;
  }

  v11 = *(*&v38[0] + 16);
  v10 = *(*&v38[0] + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v9 != 1601)
  {
    goto LABEL_13;
  }

  sub_1A78C0990(*&v38[0], *(&v38[0] + 1));
  sub_1A78C3AA4(33, *&v38[0], *(&v38[0] + 1), v38);
  v13 = sub_1A7902420(*&v38[0], *(&v38[0] + 1));
  if (v3)
  {
LABEL_14:
    (*(*(a2 - 8) + 8))(a1, a2);
    v21 = *(&v7 + 1);
    v20 = v7;
    return sub_1A78C0AFC(v20, v21);
  }

  v14 = v13;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = ccec_compressed_x962_export_pub_size();
  if (v16 < 0)
  {
    goto LABEL_24;
  }

  v17 = v16;
  if (v16)
  {
    v18 = sub_1A793DB28();
    *(v18 + 16) = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v33 = v14;
  if (ccec_compressed_x962_export_pub())
  {
LABEL_25:
    __break(1u);
  }

  *(v18 + 16) = v17;
  v22 = sub_1A78C0DCC(v18);
  v24 = v23;

  v34 = sub_1A790A204(v22, v24, 0x620uLL);
  v35 = v25;
  sub_1A78C0AFC(v22, v24);
  result = ccsha256_di();
  if (result)
  {
    v26 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v28 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v26;
    *(inited + 24) = v28;
    *&v36[0] = inited;
    sub_1A78C0990(v7, *(&v7 + 1));
    sub_1A79097B4(v7, *(&v7 + 1), v36);
    sub_1A78C0AFC(v7, *(&v7 + 1));
    sub_1A78BD4B0(v38);

    v36[0] = v38[0];
    v36[1] = v38[1];
    sub_1A78F6AF0(v36, v37, v39);
    v31 = v39[0];
    v32 = v39[1];
    sub_1A78C0990(v7, *(&v7 + 1));
    sub_1A78C8A28(1568, v7, *(&v7 + 1), v38);
    v29 = v38[0];
    LOBYTE(v28) = sub_1A790A674(*&v38[0], *(&v38[0] + 1), v34, v35);
    sub_1A78C0AFC(v29, *(&v29 + 1));
    if (v28)
    {
      result = (*(*(a2 - 8) + 8))(a1, a2);
      *a3 = v33;
      *(a3 + 8) = v34;
      *(a3 + 16) = v35;
      *(a3 + 24) = v7;
      *(a3 + 40) = v31;
      *(a3 + 48) = v32;
      return result;
    }

    sub_1A78D6484();
    swift_allocError();
    *v30 = 5;
    *(v30 + 4) = 1;
    swift_willThrow();
    (*(*(a2 - 8) + 8))(a1, a2);

    sub_1A78C0AFC(v34, v35);
    sub_1A78C0AFC(v7, *(&v7 + 1));
    v20 = v31;
    v21 = v32;
    return sub_1A78C0AFC(v20, v21);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A7905354()
{
  v1 = *(v0 + 24);
  sub_1A78C0990(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_1A7905388()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicParameter.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicParameter.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SimMKEMPrivateKey.rawRepresentation.getter()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1A793DB18();
  sub_1A78C0990(v3, v4);
  sub_1A78C0990(v5, v6);

  return sub_1A78C0990(v7, v8);
}

uint64_t sub_1A7905514(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v23[0] = a1;
      LOWORD(v23[1]) = a2;
      BYTE2(v23[1]) = BYTE2(a2);
      BYTE3(v23[1]) = BYTE3(a2);
      BYTE4(v23[1]) = BYTE4(a2);
      BYTE5(v23[1]) = BYTE5(a2);
      v3 = v23 + BYTE6(a2);
      v4 = v23;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    memset(v23, 0, 14);
    v4 = v23;
    v3 = v23;
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
LABEL_38:
      __break(1u);
LABEL_39:
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
      __break(1u);
      goto LABEL_36;
    }

    v7 = sub_1A793D648();
    if (v7)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_39;
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
  sub_1A78CE4C8(v4, v3, &v24);
  v15 = v24;
  v16 = v25;
  v17 = v25 >> 62;
  if ((v25 >> 62) <= 1)
  {
    if (!v17)
    {
      if (BYTE6(v25) == 32)
      {
        return v15;
      }

      goto LABEL_30;
    }

    if (!__OFSUB__(HIDWORD(v24), v24))
    {
      if (HIDWORD(v24) - v24 == 32)
      {
        return v15;
      }

      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if (v17 != 2)
  {
LABEL_30:
    sub_1A78D6484();
    swift_allocError();
    *v21 = 1;
    *(v21 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v15, v16);
    return v15;
  }

  v19 = *(v24 + 16);
  v18 = *(v24 + 24);
  v8 = __OFSUB__(v18, v19);
  v20 = v18 - v19;
  if (v8)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 != 32)
  {
    goto LABEL_30;
  }

  return v15;
}

uint64_t static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D6A8();
  v3 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(v9 + 16);
    v5 = *(v9 + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
LABEL_10:
      if (v4 == 32)
      {
        return v9;
      }

LABEL_11:
      sub_1A78D6484();
      swift_allocError();
      *v8 = 1;
      *(v8 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v9, v10);
      return v9;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v10);
    goto LABEL_10;
  }

  LODWORD(v4) = HIDWORD(v9) - v9;
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v4 = v4;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790587C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A7905514(a1, a2);
  if (v3)
  {
    v9 = a1;
    v10 = a2;
    return sub_1A78C0AFC(v9, v10);
  }

  v65 = a2;
  v11 = v7;
  v12 = v8;
  v59 = a3;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_32;
  }

  v14 = getccec_full_ctx_size();
  v15 = sub_1A78E2908(v14, 0, v14);
  swift_beginAccess();
  v16 = v15 + 32;
  v64 = MEMORY[0x1E69E9510];
  sub_1A7902164(v15 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, &v73);
  v77 = 0;
  v17 = v73;
  v18 = v74;
  v67 = v73;
  v68 = v74;
  *&v75 = MEMORY[0x1E6969080];
  *(&v75 + 1) = MEMORY[0x1E6969078];
  v73 = v11;
  *&v74 = v12;
  v19 = v12;
  v20 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x1E6969080]);
  v21 = *v20;
  v22 = v20[1];
  sub_1A78C0990(v17, v18);
  v60 = v11;
  v61 = v19;
  sub_1A78C0990(v11, v19);
  v23 = v15;
  v24 = v77;
  sub_1A7900C14(v21, v22, &v67);
  sub_1A78C0AFC(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v25 = v67;
  v26 = v68;
  v27 = sub_1A790A204(v67, v68, 0x20uLL);
  v29 = v28;
  sub_1A78C0AFC(v25, v26);
  v77 = v23;
  __src = v16;
  sub_1A7902164(v16, v64, sub_1A790AE6C, &v73);
  sub_1A78C0AFC(a1, v65);
  v30 = v73;
  v31 = v74;
  v67 = v73;
  v68 = v74;
  *&v75 = MEMORY[0x1E6969080];
  *(&v75 + 1) = MEMORY[0x1E6969078];
  v73 = v27;
  *&v74 = v29;
  v32 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x1E6969080]);
  v33 = *v32;
  v34 = v32[1];
  sub_1A78C0990(v30, v31);
  v66 = v27;
  sub_1A78C0990(v27, v29);
  sub_1A7900C14(v33, v34, &v67);
  sub_1A78C0AFC(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v36 = v67;
  v35 = v68;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = result;

  if (v37)
  {
    v38 = sub_1A793DB28();
    *(v38 + 16) = v37;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v38 + 32), __src, v37);
  *(v38 + 16) = v37;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_27;
  }

  v39 = result;
  if (result)
  {
    v40 = sub_1A793DB28();
    *(v40 + 16) = v39;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_28;
  }

  v63 = v35;
  *(v40 + 16) = v39;
  v41 = sub_1A78C0DCC(v40);
  v43 = v42;

  v44 = sub_1A790A204(v41, v43, 0x620uLL);
  v46 = v45;
  sub_1A78C0AFC(v41, v43);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v47 = result;

  if (v47)
  {
    v48 = sub_1A793DB28();
    *(v48 + 16) = v47;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v48 + 32), __src, v47);
  *(v48 + 16) = v47;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_30;
  }

  v49 = result;
  if (result)
  {
    v50 = sub_1A793DB28();
    *(v50 + 16) = v49;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_31;
  }

  *(v50 + 16) = v49;
  v51 = sub_1A78C0DCC(v50);
  v53 = v52;

  v71 = v51;
  v72 = v53;
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v67 = v44;
  v68 = v46;
  v54 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
  v55 = *v54;
  v56 = v54[1];
  sub_1A78C0990(v51, v53);
  sub_1A78C0990(v44, v46);
  sub_1A7900C14(v55, v56, &v71);
  sub_1A78C0AFC(v51, v53);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  sub_1A7904A3C(v71, v72, &v73);
  result = sub_1A78C0AFC(v44, v46);
  if (v24)
  {
    sub_1A78C0AFC(v60, v61);

    sub_1A78C0AFC(v66, v29);
    v9 = v36;
    v10 = v63;
    return sub_1A78C0AFC(v9, v10);
  }

  v57 = v73;
  *v59 = v60;
  *(v59 + 8) = v61;
  *(v59 + 16) = v77;
  *(v59 + 24) = v66;
  *(v59 + 32) = v29;
  *(v59 + 40) = v36;
  *(v59 + 48) = v63;
  *(v59 + 56) = v57;
  v58 = v75;
  *(v59 + 64) = v74;
  *(v59 + 80) = v58;
  *(v59 + 96) = v76;
  return result;
}

uint64_t SimMKEMPrivateKey.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)(a1, a2);
  if (v3)
  {
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  v10 = v7;
  v61 = a2;
  v62 = a1;
  v11 = v8;
  v56 = a3;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_29;
  }

  v12 = getccec_full_ctx_size();
  v13 = sub_1A78E2908(v12, 0, v12);
  swift_beginAccess();
  v64 = MEMORY[0x1E69E9510];
  sub_1A7902164(v13 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, &v71);
  v15 = v71;
  v14 = v72;
  v65 = v71;
  v66 = v72;
  *&v73 = MEMORY[0x1E6969080];
  *(&v73 + 1) = MEMORY[0x1E6969078];
  v16 = v10;
  v71 = v10;
  *&v72 = v11;
  v17 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x1E6969080]);
  v19 = *v17;
  v18 = v17[1];
  sub_1A78C0990(v15, v14);
  v59 = v16;
  v60 = v11;
  v20 = v11;
  v21 = v13;
  sub_1A78C0990(v16, v20);
  sub_1A7900C14(v19, v18, &v65);
  sub_1A78C0AFC(v15, v14);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  v22 = v65;
  v23 = v66;
  v24 = sub_1A790A204(v65, v66, 0x20uLL);
  v26 = v25;
  sub_1A78C0AFC(v22, v23);
  v75 = (v13 + 32);
  sub_1A7902164(v13 + 32, v64, sub_1A790AE6C, &v71);
  v27 = v71;
  v28 = v72;
  v65 = v71;
  v66 = v72;
  *&v73 = MEMORY[0x1E6969080];
  *(&v73 + 1) = MEMORY[0x1E6969078];
  v71 = v24;
  *&v72 = v26;
  v29 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x1E6969080]);
  v30 = *v29;
  v31 = v29[1];
  sub_1A78C0990(v27, v28);
  sub_1A78C0990(v24, v26);
  sub_1A7900C14(v30, v31, &v65);
  sub_1A78C0AFC(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  v33 = v65;
  v32 = v66;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = result;

  if (v34)
  {
    v35 = sub_1A793DB28();
    *(v35 + 16) = v34;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v35 + 32), v75, v34);
  *(v35 + 16) = v34;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_24;
  }

  v36 = result;
  if (result)
  {
    v37 = sub_1A793DB28();
    *(v37 + 16) = v36;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_25;
  }

  v58 = v33;
  v63 = v32;
  *(v37 + 16) = v36;
  v38 = sub_1A78C0DCC(v37);
  v40 = v39;

  v41 = sub_1A790A204(v38, v40, 0x620uLL);
  v43 = v42;
  sub_1A78C0AFC(v38, v40);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = result;

  v57 = v24;
  if (v44)
  {
    v45 = sub_1A793DB28();
    *(v45 + 16) = v44;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v45 + 32), v75, v44);
  *(v45 + 16) = v44;

  result = ccec_compressed_x962_export_pub_size();
  if ((result & 0x8000000000000000) == 0)
  {
    v46 = result;
    v75 = v26;
    if (result)
    {
      v47 = sub_1A793DB28();
      *(v47 + 16) = v46;
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    result = ccec_compressed_x962_export_pub();
    if (!result)
    {
      *(v47 + 16) = v46;
      v48 = sub_1A78C0DCC(v47);
      v50 = v49;

      v69 = v48;
      v70 = v50;
      v67 = MEMORY[0x1E6969080];
      v68 = MEMORY[0x1E6969078];
      v65 = v41;
      v66 = v43;
      v51 = __swift_project_boxed_opaque_existential_1(&v65, MEMORY[0x1E6969080]);
      v52 = *v51;
      v53 = v51[1];
      sub_1A78C0990(v48, v50);
      sub_1A78C0990(v41, v43);
      sub_1A7900C14(v52, v53, &v69);
      sub_1A78C0AFC(v48, v50);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      sub_1A7904A3C(v69, v70, &v71);
      (*(*(v61 - 8) + 8))(v62);
      result = sub_1A78C0AFC(v41, v43);
      v54 = v71;
      *v56 = v59;
      *(v56 + 8) = v60;
      *(v56 + 16) = v21;
      *(v56 + 24) = v57;
      *(v56 + 32) = v75;
      *(v56 + 40) = v58;
      *(v56 + 48) = v63;
      *(v56 + 56) = v54;
      v55 = v73;
      *(v56 + 64) = v72;
      *(v56 + 80) = v55;
      *(v56 + 96) = v74;
      return result;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SimMKEMPrivateKey.init<A>(rawRepresentation:publicParameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A793D6A8();
  v10 = *v77;
  v11 = *&v77[8];
  v12 = *&v77[8] >> 62;
  if ((*&v77[8] >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_13;
    }

    v14 = *(*v77 + 16);
    v13 = *(*v77 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 == 64)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12)
  {
    if (!__OFSUB__(*&v77[4], *v77))
    {
      if (*&v77[4] - *v77 == 64)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A78D6484();
      swift_allocError();
      *v22 = 0;
      *(v22 + 4) = 1;
      swift_willThrow();
      goto LABEL_14;
    }

    goto LABEL_38;
  }

  if (v77[14] != 64)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)(a2, a3);
  if (v4)
  {
LABEL_14:
    v23 = *(*(a3 - 8) + 8);
    v23(a2, a3);
    v23(a1, a3);
    return sub_1A78C0AFC(v10, v11);
  }

  v70 = a2;
  v71 = v17;
  v80 = v18;
  sub_1A78C0990(*v77, *&v77[8]);
  v19 = sub_1A78C3AA4(32, *v77, *&v77[8], v77);
  v72 = *v77;
  result = MEMORY[0x1AC55DAD0](v19);
  if (!result)
  {
    goto LABEL_45;
  }

  v20 = getccec_full_ctx_size();
  MEMORY[0x1EEE9AC00](v20);
  v24 = sub_1A78C05E8(v21, sub_1A790A7DC);
  v61 = a4;
  sub_1A78C0AFC(v72, *(&v72 + 1));
  sub_1A78C0990(v10, v11);
  sub_1A78C8A28(32, v10, v11, v77);
  v25 = *v77;
  v68 = *&v77[8];
  swift_beginAccess();
  v69 = v24;
  v62 = (v24 + 32);
  sub_1A7902164(v24 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, v77);
  v27 = *v77;
  v26 = *&v77[8];
  v72 = *v77;
  *&v78 = MEMORY[0x1E6969080];
  *(&v78 + 1) = MEMORY[0x1E6969078];
  v28 = v80;
  *v77 = v71;
  *&v77[8] = v80;
  v29 = __swift_project_boxed_opaque_existential_1(v77, MEMORY[0x1E6969080]);
  v66 = *v29;
  v64 = v29[1];
  sub_1A78C0990(v27, v26);
  v30 = v25;
  sub_1A78C0990(v71, v28);
  sub_1A7900C14(v66, v64, &v72);
  sub_1A78C0AFC(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(v77);
  v31 = v72;
  v32 = sub_1A790A204(v72, *(&v72 + 1), 0x20uLL);
  v34 = v33;
  sub_1A78C0AFC(v31, *(&v31 + 1));
  if (!sub_1A790A674(v30, v68, v32, v34))
  {
    sub_1A78D6484();
    swift_allocError();
    *v37 = 5;
    *(v37 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v32, v34);
    v38 = *(*(a3 - 8) + 8);
    v38(v70, a3);
    v38(a1, a3);
    sub_1A78C0AFC(v71, v80);

    sub_1A78C0AFC(v30, v68);
    return sub_1A78C0AFC(v10, v11);
  }

  v65 = v30;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    goto LABEL_39;
  }

  v35 = result;

  if (v35)
  {
    v36 = sub_1A793DB28();
    *(v36 + 16) = v35;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v36 + 32), v62, v35);
  *(v36 + 16) = v35;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_40;
  }

  v39 = result;
  if (result)
  {
    v40 = sub_1A793DB28();
    *(v40 + 16) = v39;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v59 = v34;
  v60 = v32;
  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_41;
  }

  *(v40 + 16) = v39;
  v41 = sub_1A78C0DCC(v40);
  v43 = v42;

  v67 = sub_1A790A204(v41, v43, 0x620uLL);
  v45 = v44;
  sub_1A78C0AFC(v41, v43);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v46 = result;

  if (v46)
  {
    v47 = sub_1A793DB28();
    *(v47 + 16) = v46;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v47 + 32), v62, v46);
  *(v47 + 16) = v46;

  result = ccec_compressed_x962_export_pub_size();
  if ((result & 0x8000000000000000) == 0)
  {
    v48 = result;
    if (result)
    {
      v49 = sub_1A793DB28();
      *(v49 + 16) = v48;
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    result = ccec_compressed_x962_export_pub();
    if (!result)
    {
      *(v49 + 16) = v48;
      v50 = sub_1A78C0DCC(v49);
      v52 = v51;

      v75 = v50;
      v76 = v52;
      v73 = MEMORY[0x1E6969080];
      v74 = MEMORY[0x1E6969078];
      *&v72 = v67;
      *(&v72 + 1) = v45;
      v53 = __swift_project_boxed_opaque_existential_1(&v72, MEMORY[0x1E6969080]);
      v54 = v53[1];
      v63 = *v53;
      sub_1A78C0990(v50, v52);
      sub_1A78C0990(v67, v45);
      sub_1A7900C14(v63, v54, &v75);
      sub_1A78C0AFC(v50, v52);
      __swift_destroy_boxed_opaque_existential_1(&v72);
      sub_1A7904A3C(v75, v76, v77);
      sub_1A78C0AFC(v60, v59);
      sub_1A78C0AFC(v67, v45);
      v55 = *(*(a3 - 8) + 8);
      v55(v70, a3);
      result = (v55)(a1, a3);
      v56 = *v77;
      v57 = v80;
      *v61 = v71;
      *(v61 + 8) = v57;
      *(v61 + 16) = v69;
      *(v61 + 24) = v65;
      *(v61 + 32) = v68;
      *(v61 + 40) = v10;
      *(v61 + 48) = v11;
      *(v61 + 56) = v56;
      v58 = v78;
      *(v61 + 64) = *&v77[8];
      *(v61 + 80) = v58;
      *(v61 + 96) = v79;
      return result;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1A7906C28()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1A7906C8C@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1A793DB18();
  sub_1A78C0990(v3, v4);
  sub_1A78C0990(v5, v6);

  return sub_1A78C0990(v7, v8);
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.publicParameter.getter()
{
  v1 = *(v0 + 56);
  sub_1A78C0990(v1, *(v0 + 64));
  return v1;
}

double SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.init()@<D0>(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = sub_1A793D988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A793D978();
  v6 = sub_1A793D968();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v19 = v6;
  sub_1A793D978();
  v10 = sub_1A793D968();
  v12 = v11;
  v9(v5, v2);
  if (v12 >> 60 == 15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1A793D978();
  v13 = sub_1A793D968();
  v15 = v14;
  v9(v5, v2);
  if (v15 >> 60 == 15)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  type metadata accessor for SecureBytes.Backing(0);
  v16 = swift_allocObject();
  v16[1] = xmmword_1A7942340;
  if (_swift_stdlib_malloc_size(v16) < 64)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = 0;
  if (!ccrng())
  {
    goto LABEL_13;
  }

  if (v21)
  {
    goto LABEL_9;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v16 + 2) = 32;
  sub_1A78F6AF0((v16 + 2), (v16 + 4), &v20);

  v17 = v19;
  *a1 = 32;
  *(a1 + 8) = v17;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  result = *&v20;
  *(a1 + 56) = v20;
  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.init(publicParameter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a2;
  v30 = a1;
  v4 = sub_1A793D988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A793D978();
  v8 = sub_1A793D968();
  v10 = v9;
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if (v10 >> 60 == 15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v8;
  sub_1A793D978();
  v28 = sub_1A793D968();
  v14 = v13;
  result = v11(v7, v4);
  if (v14 >> 60 == 15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A793D978();
  v15 = sub_1A793D968();
  v17 = v16;
  result = v11(v7, v4);
  if (v17 >> 60 != 15)
  {
    v18 = v31;
    v19 = v31 >> 62;
    v20 = v30;
    if ((v31 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_14;
      }

      v23 = *(v30 + 16);
      v22 = *(v30 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (!v24)
      {
        if (v21 == 32)
        {
          goto LABEL_11;
        }

LABEL_14:
        sub_1A78D6484();
        swift_allocError();
        *v26 = 1;
        *(v26 + 4) = 1;
        swift_willThrow();
        sub_1A78C0AFC(v20, v18);
        sub_1A78C0AFC(v29, v10);
        sub_1A78C0AFC(v28, v14);
        return sub_1A78C0AFC(v15, v17);
      }

      __break(1u);
    }

    else
    {
      if (!v19)
      {
        v21 = BYTE6(v31);
        if (BYTE6(v31) != 32)
        {
          goto LABEL_14;
        }

LABEL_11:
        *a3 = v21;
        v25 = v28;
        a3[1] = v29;
        a3[2] = v10;
        a3[3] = v25;
        a3[4] = v14;
        a3[5] = v15;
        a3[6] = v17;
        a3[7] = v20;
        a3[8] = v18;
        return result;
      }

      LODWORD(v21) = HIDWORD(v30) - v30;
      if (!__OFSUB__(HIDWORD(v30), v30))
      {
        v21 = v21;
        if (v21 == 32)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.generateKeyPair()(uint64_t a1, void *a2)
{
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  sub_1A78C0990(v7, v6);
  result = sub_1A790587C(v7, v6, v17);
  if (!v3)
  {
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v15;
    *(a1 + 32) = v17[2];
    v16 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v16;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;
    a2[6] = v14;
    sub_1A793DB18();
    sub_1A78C0990(v9, v10);
    sub_1A78C0990(v11, v12);
    return sub_1A78C0990(v13, v14);
  }

  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.encap(mKEMPublicKeys:)(void *a1, uint64_t a2, uint64_t a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (HIDWORD(v5))
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 5;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  v96 = v3[2];
  v97 = v3[1];
  v92 = v3[6];
  v93 = v3[5];
  v94 = v3[8];
  v95 = v3[7];
  type metadata accessor for SecureBytes.Backing(0);
  v9 = swift_allocObject();
  v9[1] = xmmword_1A7942340;
  if (_swift_stdlib_malloc_size(v9) < 64)
  {
LABEL_38:
    __break(1u);
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(v121) = 0;
  result = ccrng();
  if (!result)
  {
    __break(1u);
    goto LABEL_46;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v9 + 2) = 32;
  sub_1A78F6AF0((v9 + 2), (v9 + 4), &v121);
  v10 = v4;

  v99 = v121;
  result = MEMORY[0x1AC55DAD0](v11);
  if (!result)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = getccec_full_ctx_size();
  v14 = sub_1A78E2908(v13, 0, v13);
  v15 = getccec_pub_ctx_size();
  if (v15 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v15;

  if (v16)
  {
    v17 = sub_1A793DB28();
    *(v17 + 16) = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v17 + 32), (v14 + 32), v16);
  *(v17 + 16) = v16;

  v18 = ccec_compressed_x962_export_pub_size();
  if (v18 < 0)
  {
    goto LABEL_40;
  }

  v19 = v18;
  if (v18)
  {
    v20 = sub_1A793DB28();
    *(v20 + 16) = v19;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (ccec_compressed_x962_export_pub())
  {
    goto LABEL_41;
  }

  *(v20 + 16) = v19;
  v21 = sub_1A78C0DCC(v20);
  v23 = v22;

  v24 = getccec_pub_ctx_size();
  if (v24 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v25 = v24;

  if (v25)
  {
    v26 = sub_1A793DB28();
    *(v26 + 16) = v25;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v26 + 32), (v14 + 32), v25);
  *(v26 + 16) = v25;

  v27 = ccec_compressed_x962_export_pub_size();
  if (v27 < 0)
  {
    goto LABEL_43;
  }

  v28 = v27;
  v98 = v12;
  if (v27)
  {
    v29 = sub_1A793DB28();
    *(v29 + 16) = v28;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if (ccec_compressed_x962_export_pub())
  {
LABEL_44:
    __break(1u);
  }

  *(v29 + 16) = v28;
  v30 = sub_1A78C0DCC(v29);
  v101 = v14;
  v32 = v31;

  v33 = sub_1A790A204(v30, v32, 0xB00uLL);
  v35 = v34;
  sub_1A78C0AFC(v30, v32);
  *&v116 = v21;
  *(&v116 + 1) = v23;
  *(&v122 + 1) = MEMORY[0x1E6969080];
  v123 = MEMORY[0x1E6969078];
  *&v121 = v33;
  *(&v121 + 1) = v35;
  v36 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x1E6969080]);
  v37 = *v36;
  v38 = v36[1];
  sub_1A78C0990(v21, v23);
  sub_1A78C0990(v33, v35);
  v39 = v37;
  v40 = v101;
  sub_1A7900C14(v39, v38, &v116);
  sub_1A78C0AFC(v33, v35);
  sub_1A78C0AFC(v21, v23);
  __swift_destroy_boxed_opaque_existential_1(&v121);
  v100 = v116;
  swift_beginAccess();
  if (v5)
  {
    v41 = (a3 + 80);
    v107 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v42 = v40;
      v103 = v41;
      v104 = v5;
      v44 = *(v41 - 6);
      v43 = *(v41 - 5);
      v46 = *(v41 - 4);
      v45 = *(v41 - 3);
      v48 = *(v41 - 2);
      v47 = *(v41 - 1);
      v49 = *v41;
      v110 = objc_opt_self();
      sub_1A793DB18();
      v106 = v43;
      sub_1A78C0990(v43, v46);
      sub_1A78C0990(v45, v48);
      sub_1A78C0990(v47, v49);
      sub_1A793DB18();
      v50 = [v110 groupOrderByteCountForCP_];
      if ((v50 & 0x8000000000000000) != 0)
      {
        break;
      }

      *&v121 = v50;
      sub_1A78E396C(v50, v42 + 32, v44 + 32, &v121, v50);
      if (v10)
      {

        sub_1A78C0AFC(v43, v46);
        sub_1A78C0AFC(v45, v48);
        sub_1A78C0AFC(v47, v49);
        sub_1A78C0AFC(v99, *(&v99 + 1));
        sub_1A78C0AFC(v100, *(&v100 + 1));
      }

      v105 = v48;
      v112 = v49;
      v113 = v47;

      v119 = v97;
      v120 = v96;
      *(&v122 + 1) = MEMORY[0x1E6969080];
      v123 = MEMORY[0x1E6969078];
      *&v121 = v95;
      *(&v121 + 1) = v94;
      v51 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x1E6969080]);
      v52 = *v51;
      v53 = v51[1];
      sub_1A78C0990(v97, v96);
      sub_1A78C0990(v95, v94);
      sub_1A7900C14(v52, v53, &v119);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v54 = v119;
      v55 = v120;
      v108 = v119;
      sub_1A78C0990(v119, v120);
      sub_1A78F3E70(v54, v55);
      swift_beginAccess();

      sub_1A7901B88(v56, &v114);
      v57 = sub_1A793DAE8();
      _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v57, v58);
      sub_1A78BD4B0(&v121);
      v115[0] = v121;
      v115[1] = v122;

      _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v115, &v116);

      sub_1A78BD4B0(&v116);

      v59 = v116;
      v60 = v117;
      v61 = v118;

      sub_1A78C0AFC(v108, v55);
      sub_1A78C0990(v100, *(&v100 + 1));
      sub_1A78D07C4(v59, *(&v59 + 1), v60, v61, v100, *(&v100 + 1), 0x20uLL, &v121);
      sub_1A78C0AFC(v108, v55);
      sub_1A78C0AFC(v100, *(&v100 + 1));
      *&v115[0] = v121;
      sub_1A7907F80(&v116, &v121, v115);
      v111 = v116;
      v62 = v121;
      sub_1A78C0990(v99, *(&v99 + 1));
      v63 = sub_1A790A204(v99, *(&v99 + 1), 0x162uLL);
      v65 = v64;
      v116 = v99;
      v66 = MEMORY[0x1E6969080];
      *(&v122 + 1) = MEMORY[0x1E6969080];
      v123 = MEMORY[0x1E6969078];
      v67 = MEMORY[0x1E6969078];
      *&v121 = v63;
      *(&v121 + 1) = v64;
      v68 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x1E6969080]);
      v69 = *v68;
      v70 = v68[1];
      sub_1A78C0990(v63, v65);
      sub_1A7900C14(v69, v70, &v116);
      sub_1A78C0AFC(v63, v65);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v71 = *(&v116 + 1);
      v109 = v116;
      *&v115[0] = v93;
      *(&v115[0] + 1) = v92;
      *(&v122 + 1) = v66;
      v123 = v67;
      *&v121 = v113;
      *(&v121 + 1) = v112;
      v72 = __swift_project_boxed_opaque_existential_1(&v121, v66);
      v73 = *v72;
      v74 = v72[1];
      sub_1A78C0990(v62, *(&v62 + 1));
      sub_1A78C0990(v93, v92);
      sub_1A78C0990(v113, v112);
      sub_1A7900C14(v73, v74, v115);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v75 = v115[0];
      sub_1A78C0990(*&v115[0], *(&v115[0] + 1));
      v102 = v71;
      sub_1A7901198(v111, v109, v71, v62, *(&v62 + 1), v75, *(&v75 + 1), &v116);
      v10 = 0;
      v76 = MEMORY[0x1E6969080];
      v77 = MEMORY[0x1E6969078];
      sub_1A78C0AFC(v75, *(&v75 + 1));
      sub_1A78C0AFC(v62, *(&v62 + 1));
      sub_1A78C0AFC(v75, *(&v75 + 1));
      v78 = v116;
      v79 = v117;
      sub_1A78C0990(v116, *(&v116 + 1));
      sub_1A78C0B50(v79, v78, *(&v78 + 1), &v116);
      sub_1A78C3CAC(16, v116, *(&v116 + 1), &v121);
      v80 = v121;
      sub_1A78C0990(v78, *(&v78 + 1));
      sub_1A78C8A28(16, v78, *(&v78 + 1), &v121);
      v81 = v121;
      v116 = v80;
      *(&v122 + 1) = v76;
      v123 = v77;
      v82 = __swift_project_boxed_opaque_existential_1(&v121, v76);
      v83 = *v82;
      v84 = v82[1];
      sub_1A78C0990(v80, *(&v80 + 1));
      sub_1A78C0990(v81, *(&v81 + 1));
      sub_1A7900C14(v83, v84, &v116);
      sub_1A78C0AFC(v81, *(&v81 + 1));
      sub_1A78C0AFC(v80, *(&v80 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v85 = v116;
      sub_1A78C0990(v113, v112);
      sub_1A78C0990(v85, *(&v85 + 1));
      v86 = v107;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1A79096A8(0, *(v107 + 2) + 1, 1, v107);
      }

      v88 = *(v86 + 2);
      v87 = *(v86 + 3);
      if (v88 >= v87 >> 1)
      {
        v86 = sub_1A79096A8((v87 > 1), v88 + 1, 1, v86);
      }

      sub_1A78C0AFC(v109, v102);

      sub_1A78C0AFC(v78, *(&v78 + 1));

      sub_1A78C0AFC(v106, v46);
      sub_1A78C0AFC(v45, v105);
      sub_1A78C0AFC(v113, v112);
      sub_1A78C0AFC(v85, *(&v85 + 1));
      sub_1A78C0AFC(v62, *(&v62 + 1));
      *(v86 + 2) = *(&v81 + 1) + 1;
      v107 = v86;
      v89 = &v86[32 * *(&v81 + 1)];
      *(v89 + 2) = v85;
      *(v89 + 6) = v113;
      *(v89 + 7) = v112;
      v41 = v103 + 7;
      v5 = v104 - 1;
      v40 = v101;
      if (v104 == 1)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v107 = MEMORY[0x1E69E7CC0];
LABEL_35:
  sub_1A78F3E70(v99, *(&v99 + 1));
  sub_1A7902C68(0x20uLL, &v121);

  result = sub_1A78C0AFC(v99, *(&v99 + 1));
  *a1 = v121;
  *a2 = v100;
  *(a2 + 16) = v107;
  return result;
}

uint64_t sub_1A7907F80(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_1A7902C68(0x2CuLL, v20);
  v6 = v20[0];
  swift_beginAccess();
  v7 = sub_1A78D9BB4(v6 + 32, v6 + 32 + *(v6 + 16));
  v9 = v8;
  v10 = sub_1A793D798();
  v12 = v11;
  v13 = sub_1A78F3E70(v10, v11);
  sub_1A78C0AFC(v10, v12);
  v14 = sub_1A793D798();
  sub_1A78C32F4(v14, v15, v19);
  if (v3)
  {

    sub_1A78C0AFC(v7, v9);
  }

  else
  {
    sub_1A78C0AFC(v7, v9);
    v17 = v19[0];
    v18 = v19[1];

    *a1 = v13;
    *a2 = v17;
    a2[1] = v18;
  }

  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.decap(mKEMSecretKey:ciphertextShared:ciphertextIndividual:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = v7;
  v104 = *MEMORY[0x1E69E9840];
  v11 = a1[2];
  v12 = a1[12];
  v13 = a1[13];
  v14 = v6[1];
  v15 = v6[2];
  v16 = v6[5];
  v17 = v6[6];
  v18 = v6[7];
  v19 = v6[8];
  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_8;
    }

    v21 = *(a2 + 16);
  }

  else
  {
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = a2;
  }

  if (v21 > 33)
  {
    __break(1u);
  }

LABEL_8:
  v84 = v15;
  v85 = v14;
  v87 = v19;
  v89 = v18;
  v78 = v17;
  v79 = v16;
  v80 = v13;
  v81 = v12;
  v22 = sub_1A793D798();
  v24 = v23;
  sub_1A78C0990(v22, v23);
  v25 = sub_1A790A204(v22, v24, 0xB00uLL);
  v27 = v26;
  sub_1A78C0AFC(v22, v24);
  *&v96 = v22;
  *(&v96 + 1) = v24;
  *(&v102 + 1) = MEMORY[0x1E6969080];
  v103 = MEMORY[0x1E6969078];
  *&v101 = v25;
  *(&v101 + 1) = v27;
  v28 = __swift_project_boxed_opaque_existential_1(&v101, MEMORY[0x1E6969080]);
  v29 = *v28;
  v30 = v28[1];
  sub_1A78C0990(v22, v24);
  sub_1A78C0990(v25, v27);
  sub_1A7900C14(v29, v30, &v96);
  __swift_destroy_boxed_opaque_existential_1(&v101);
  v31 = v96;
  v91 = a2;
  v32 = sub_1A790A674(v96, *(&v96 + 1), a2, a3);
  sub_1A78C0AFC(v31, *(&v31 + 1));
  if (!v32)
  {
    sub_1A78D6484();
    swift_allocError();
    *v36 = 5;
    *(v36 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v25, v27);
    v34 = v22;
    v35 = v24;
    return sub_1A78C0AFC(v34, v35);
  }

  v77 = v25;
  v75 = v27;
  sub_1A78C0990(v22, v24);
  v33 = sub_1A7902420(v22, v24);
  if (v8)
  {
    sub_1A78C0AFC(v22, v24);
    v34 = v25;
    v35 = v27;
    return sub_1A78C0AFC(v34, v35);
  }

  v38 = v33;
  v74 = v22;
  result = MEMORY[0x1AC55DAD0]();
  if (result)
  {
    v39 = [objc_opt_self() groupOrderByteCountForCP_];
    v40 = MEMORY[0x1E6969080];
    v41 = MEMORY[0x1E6969078];
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v42 = v39;
    swift_beginAccess();
    *&v101 = v42;
    sub_1A78E396C(v42, v11 + 32, v38 + 32, &v101, v42);
    v73 = v24;

    v99 = v85;
    v100 = v84;
    *(&v102 + 1) = v40;
    v103 = v41;
    *&v101 = v89;
    *(&v101 + 1) = v87;
    v43 = __swift_project_boxed_opaque_existential_1(&v101, v40);
    v44 = *v43;
    v45 = v43[1];
    sub_1A78C0990(v85, v84);
    sub_1A78C0990(v89, v87);
    sub_1A7900C14(v44, v45, &v99);
    __swift_destroy_boxed_opaque_existential_1(&v101);
    v47 = v99;
    v46 = v100;
    sub_1A78C0990(v99, v100);
    sub_1A78F3E70(v47, v46);
    swift_beginAccess();

    sub_1A7901B88(v48, &v95);
    v49 = sub_1A793DAE8();
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v49, v50);
    v51 = v95;
    sub_1A78BD4B0(&v101);
    v94[1] = v51;
    v93[0] = v101;
    v93[1] = v102;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v93, v94);

    sub_1A78BD4B0(&v96);

    v52 = v96;
    v88 = v97;
    v90 = *(&v96 + 1);
    v86 = v98;

    sub_1A78C0AFC(v47, v46);
    sub_1A78C0990(v91, a3);
    sub_1A78D07C4(v52, v90, v88, v86, v91, a3, 0x20uLL, &v101);
    sub_1A78C0AFC(v47, v46);
    sub_1A78C0AFC(v91, a3);
    *&v93[0] = v101;
    sub_1A7907F80(&v96, &v101, v93);
    v92 = v96;
    v53 = v101;
    sub_1A78C0990(a4, a5);
    sub_1A78C3AA4(386, a4, a5, &v101);
    v54 = v101;
    sub_1A78C0990(a4, a5);
    sub_1A78C8A28(16, a4, a5, &v101);
    v55 = v101;
    sub_1A78C0990(v53, *(&v53 + 1));
    sub_1A78C0990(v54, *(&v54 + 1));
    sub_1A78C0990(v55, *(&v55 + 1));
    sub_1A79027A8(v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), &v101);
    v56 = v101;
    v72 = v102;
    *&v96 = v79;
    *(&v96 + 1) = v78;
    *(&v102 + 1) = MEMORY[0x1E6969080];
    v103 = MEMORY[0x1E6969078];
    *&v101 = v81;
    *(&v101 + 1) = v80;
    v57 = __swift_project_boxed_opaque_existential_1(&v101, MEMORY[0x1E6969080]);
    v58 = *v57;
    v59 = v57[1];
    sub_1A78C0990(v79, v78);
    sub_1A78C0990(v81, v80);
    sub_1A7900C14(v58, v59, &v96);
    __swift_destroy_boxed_opaque_existential_1(&v101);
    v60 = v96;
    sub_1A78C0990(v96, *(&v96 + 1));
    v61 = sub_1A78C2E80(v92, v56, *(&v56 + 1), v72, v60, *(&v60 + 1));
    v63 = v62;
    sub_1A78C0AFC(v60, *(&v60 + 1));
    sub_1A78C0AFC(v60, *(&v60 + 1));
    sub_1A78C0990(v61, v63);
    sub_1A78C3AA4(32, v61, v63, &v101);
    v65 = *(&v101 + 1);
    v64 = v101;
    sub_1A78C0990(v61, v63);
    sub_1A78C8A28(354, v61, v63, &v101);
    v66 = v101;
    sub_1A78C0990(v64, v65);
    v67 = sub_1A790A204(v64, v65, 0x162uLL);
    v69 = v68;
    v70 = v64;
    sub_1A78C0AFC(v64, v65);
    LOBYTE(v64) = sub_1A790A674(v66, *(&v66 + 1), v67, v69);
    sub_1A78C0AFC(v67, v69);
    sub_1A78C0AFC(v66, *(&v66 + 1));
    if ((v64 & 1) == 0)
    {
      sub_1A78D6484();
      swift_allocError();
      *v71 = 4;
      *(v71 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v70, v65);
      sub_1A78C0AFC(v61, v63);
      sub_1A78C0AFC(v56, *(&v56 + 1));
      sub_1A78C0AFC(v55, *(&v55 + 1));
      sub_1A78C0AFC(v54, *(&v54 + 1));
      sub_1A78C0AFC(v53, *(&v53 + 1));

      sub_1A78C0AFC(v77, v75);
      v35 = v73;
      v34 = v74;
      return sub_1A78C0AFC(v34, v35);
    }

    sub_1A78F3E70(v70, v65);
    sub_1A7902C68(0x20uLL, a6);

    sub_1A78C0AFC(v70, v65);
    sub_1A78C0AFC(v61, v63);
    sub_1A78C0AFC(v56, *(&v56 + 1));
    sub_1A78C0AFC(v55, *(&v55 + 1));
    sub_1A78C0AFC(v54, *(&v54 + 1));
    sub_1A78C0AFC(v53, *(&v53 + 1));

    sub_1A78C0AFC(v77, v75);
    return sub_1A78C0AFC(v74, v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.extractIndividualCiphertext(_:keyID:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_143:
    sub_1A78D6484();
    swift_allocError();
    *v66 = 5;
    *(v66 + 4) = 1;
    swift_willThrow();
    return v4;
  }

  v7 = a4;
  v9 = 0;
  v74 = a2[1];
  v75 = *a2;
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 == 0xC000000000000000;
  }

  v11 = a4 >> 62;
  v12 = !v10;
  v90 = v12;
  v83 = HIDWORD(a3);
  v13 = __OFSUB__(HIDWORD(a3), a3);
  v86 = v13;
  __n = BYTE6(a4);
  v84 = a3;
  v85 = HIDWORD(a3) - a3;
  v81 = (a3 >> 32) - a3;
  v82 = a3 >> 32;
  v14 = (v5 + 56);
  v88 = a2[2];
  v87 = *(v5 + 16);
  while (1)
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
    }

    v15 = *(v14 - 3);
    v4 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *v14 >> 62;
    if (v18 == 3)
    {
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v90) & 1) == 0)
      {
        v68 = *(v14 - 3);
        sub_1A78C0990(v15, *(v14 - 2));
        sub_1A78C0990(0, 0xC000000000000000);
        v69 = v68;
        v16 = 0;
LABEL_146:
        *a1 = v69;
        a1[1] = v4;
        a1[2] = v16;
        a1[3] = v17;
        v4 = v75;
        sub_1A78C0990(v75, v74);
        return v4;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_152;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_151;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = __n;
        if (v11)
        {
          v26 = v85;
          if (v86)
          {
            goto LABEL_149;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_144;
      }

      goto LABEL_13;
    }

    v28 = *(a3 + 16);
    v27 = *(a3 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_150;
    }

LABEL_40:
    if (v22 == v26)
    {
      break;
    }

LABEL_13:
    ++v9;
    v14 += 4;
    if (v6 == v9)
    {
      goto LABEL_143;
    }
  }

  if (v22 < 1)
  {
LABEL_144:
    v67 = *(v14 - 3);
    sub_1A78C0990(v15, *(v14 - 2));
    sub_1A78C0990(v16, v17);
    v69 = v67;
    goto LABEL_146;
  }

  v93 = *(v14 - 3);
  if (v18 <= 1)
  {
    if (!v18)
    {
      __s1[0] = *(v14 - 1);
      LOWORD(__s1[1]) = v17;
      BYTE2(__s1[1]) = BYTE2(v17);
      BYTE3(__s1[1]) = BYTE3(v17);
      BYTE4(__s1[1]) = BYTE4(v17);
      BYTE5(__s1[1]) = BYTE5(v17);
      if (v11)
      {
        v91 = v4;
        if (v11 == 1)
        {
          if (v82 < v84)
          {
            goto LABEL_156;
          }

          sub_1A78C0990(v15, v4);
          sub_1A78C0990(v16, v17);
          v29 = sub_1A793D648();
          if (!v29)
          {
            goto LABEL_172;
          }

          v30 = v29;
          v31 = sub_1A793D678();
          if (__OFSUB__(v84, v31))
          {
            goto LABEL_161;
          }

          v32 = (v84 - v31 + v30);
          result = sub_1A793D668();
          if (!v32)
          {
            goto LABEL_173;
          }

          goto LABEL_108;
        }

        v51 = *(a3 + 16);
        v80 = *(a3 + 24);
        sub_1A78C0990(v15, v4);
        sub_1A78C0990(v16, v17);
        v32 = sub_1A793D648();
        if (v32)
        {
          v52 = sub_1A793D678();
          if (__OFSUB__(v51, v52))
          {
            goto LABEL_167;
          }

          v32 += v51 - v52;
        }

        v25 = __OFSUB__(v80, v51);
        v43 = v80 - v51;
        if (v25)
        {
          goto LABEL_159;
        }

        result = sub_1A793D668();
        if (!v32)
        {
          goto LABEL_185;
        }

LABEL_101:
        if (result >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = result;
        }

        goto LABEL_111;
      }

LABEL_70:
      v94 = a3;
      v95 = BYTE2(a3);
      v96 = BYTE3(a3);
      v97 = v83;
      v98 = BYTE5(a3);
      v99 = BYTE6(a3);
      v100 = HIBYTE(a3);
      v101 = v7;
      v102 = BYTE2(v7);
      v103 = BYTE3(v7);
      v104 = BYTE4(v7);
      v105 = BYTE5(v7);
      sub_1A78C0990(v15, v4);
      sub_1A78C0990(v16, v17);
      result = __s1;
      v44 = &v94;
LABEL_123:
      if (!memcmp(result, v44, __n))
      {
        goto LABEL_145;
      }

LABEL_142:
      sub_1A78C0AFC(v93, v4);
      sub_1A78C0AFC(v16, v17);
      v6 = v87;
      v5 = v88;
      goto LABEL_13;
    }

    if (v16 > v16 >> 32)
    {
      goto LABEL_153;
    }

    sub_1A78C0990(v15, v4);
    sub_1A78C0990(v16, v17);
    v38 = sub_1A793D648();
    if (v38)
    {
      v39 = v38;
      v40 = sub_1A793D678();
      if (__OFSUB__(v16, v40))
      {
        goto LABEL_155;
      }

      v78 = (v16 - v40 + v39);
    }

    else
    {
      v78 = 0;
    }

    sub_1A793D668();
    v7 = a4;
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        if (v82 < v84)
        {
          goto LABEL_164;
        }

        v45 = sub_1A793D648();
        if (v45)
        {
          v49 = sub_1A793D678();
          if (__OFSUB__(v84, v49))
          {
            goto LABEL_171;
          }

          v45 += v84 - v49;
        }

        v50 = sub_1A793D668();
        v48 = v81;
        if (v50 < v81)
        {
          v48 = v50;
        }

        result = v78;
        if (!v78)
        {
          goto LABEL_179;
        }

        if (!v45)
        {
          goto LABEL_178;
        }

LABEL_94:
        if (result == v45)
        {
          goto LABEL_145;
        }

LABEL_141:
        if (!memcmp(result, v45, v48))
        {
LABEL_145:
          v69 = v93;
          goto LABEL_146;
        }

        goto LABEL_142;
      }

      result = v78;
      LOWORD(__s1[0]) = a3;
      BYTE2(__s1[0]) = BYTE2(a3);
      BYTE3(__s1[0]) = BYTE3(a3);
      BYTE4(__s1[0]) = v83;
      BYTE5(__s1[0]) = BYTE5(a3);
      BYTE6(__s1[0]) = BYTE6(a3);
      HIBYTE(__s1[0]) = HIBYTE(a3);
      LOWORD(__s1[1]) = a4;
      *(&__s1[1] + 2) = *(&a4 + 2);
      if (!v78)
      {
        goto LABEL_180;
      }

LABEL_122:
      v44 = __s1;
      goto LABEL_123;
    }

    v71 = *(a3 + 24);
    v73 = *(a3 + 16);
    v45 = sub_1A793D648();
    if (v45)
    {
      v60 = sub_1A793D678();
      v61 = v73;
      if (__OFSUB__(v73, v60))
      {
        goto LABEL_169;
      }

      v45 += v73 - v60;
    }

    else
    {
      v61 = v73;
    }

    v64 = v71 - v61;
    if (__OFSUB__(v71, v61))
    {
      goto LABEL_165;
    }

    v65 = sub_1A793D668();
    if (v65 >= v64)
    {
      v48 = v64;
    }

    else
    {
      v48 = v65;
    }

    result = v78;
    if (!v78)
    {
      goto LABEL_184;
    }

    if (!v45)
    {
      goto LABEL_183;
    }

LABEL_140:
    v7 = a4;
    if (result == v45)
    {
      goto LABEL_145;
    }

    goto LABEL_141;
  }

  if (v18 != 2)
  {
    memset(__s1, 0, 14);
    if (!v11)
    {
      goto LABEL_70;
    }

    v91 = v4;
    if (v11 == 2)
    {
      v41 = *(a3 + 16);
      v79 = *(a3 + 24);
      sub_1A78C0990(v15, v4);
      sub_1A78C0990(v16, v17);
      v32 = sub_1A793D648();
      if (v32)
      {
        v42 = sub_1A793D678();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_166;
        }

        v32 += v41 - v42;
      }

      v25 = __OFSUB__(v79, v41);
      v43 = v79 - v41;
      if (v25)
      {
        goto LABEL_160;
      }

      result = sub_1A793D668();
      if (!v32)
      {
        goto LABEL_186;
      }

      goto LABEL_101;
    }

    if (v82 < v84)
    {
      goto LABEL_157;
    }

    sub_1A78C0990(v15, v4);
    sub_1A78C0990(v16, v17);
    v54 = sub_1A793D648();
    if (!v54)
    {
      goto LABEL_174;
    }

    v55 = v54;
    v56 = sub_1A793D678();
    if (__OFSUB__(v84, v56))
    {
      goto LABEL_162;
    }

    v32 = (v84 - v56 + v55);
    result = sub_1A793D668();
    if (!v32)
    {
      goto LABEL_175;
    }

LABEL_108:
    if (result >= v81)
    {
      v53 = v81;
    }

    else
    {
      v53 = result;
    }

LABEL_111:
    v57 = memcmp(__s1, v32, v53);
    v7 = a4;
    v4 = v91;
    if (!v57)
    {
      goto LABEL_145;
    }

    goto LABEL_142;
  }

  v34 = *(v16 + 16);
  sub_1A78C0990(v15, v4);
  sub_1A78C0990(v16, v17);
  v35 = sub_1A793D648();
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A793D678();
    if (__OFSUB__(v34, v37))
    {
      goto LABEL_154;
    }

    v77 = (v34 - v37 + v36);
  }

  else
  {
    v77 = 0;
  }

  v7 = a4;
  sub_1A793D668();
  if (v11 == 2)
  {
    v70 = *(a3 + 24);
    v72 = *(a3 + 16);
    v45 = sub_1A793D648();
    if (v45)
    {
      v58 = sub_1A793D678();
      v59 = v72;
      if (__OFSUB__(v72, v58))
      {
        goto LABEL_168;
      }

      v45 += v72 - v58;
    }

    else
    {
      v59 = v72;
    }

    v62 = v70 - v59;
    if (__OFSUB__(v70, v59))
    {
      goto LABEL_163;
    }

    v63 = sub_1A793D668();
    if (v63 >= v62)
    {
      v48 = v62;
    }

    else
    {
      v48 = v63;
    }

    result = v77;
    if (!v77)
    {
      goto LABEL_182;
    }

    if (!v45)
    {
      goto LABEL_181;
    }

    goto LABEL_140;
  }

  if (v11 == 1)
  {
    if (v82 < v84)
    {
      goto LABEL_158;
    }

    v45 = sub_1A793D648();
    if (v45)
    {
      v46 = sub_1A793D678();
      if (__OFSUB__(v84, v46))
      {
        goto LABEL_170;
      }

      v45 += v84 - v46;
    }

    v47 = sub_1A793D668();
    v48 = v81;
    if (v47 < v81)
    {
      v48 = v47;
    }

    result = v77;
    if (!v77)
    {
      goto LABEL_177;
    }

    if (!v45)
    {
      goto LABEL_176;
    }

    goto LABEL_94;
  }

  result = v77;
  LOWORD(__s1[0]) = a3;
  BYTE2(__s1[0]) = BYTE2(a3);
  BYTE3(__s1[0]) = BYTE3(a3);
  BYTE4(__s1[0]) = v83;
  BYTE5(__s1[0]) = BYTE5(a3);
  BYTE6(__s1[0]) = BYTE6(a3);
  HIBYTE(__s1[0]) = HIBYTE(a3);
  LOWORD(__s1[1]) = a4;
  *(&__s1[1] + 2) = *(&a4 + 2);
  if (v77)
  {
    goto LABEL_122;
  }

  __break(1u);
LABEL_172:
  sub_1A793D668();
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_1A793D668();
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
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
  return result;
}

uint64_t sub_1A79093FC()
{
  v1 = *(v0 + 56);
  sub_1A78C0990(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_1A790944C(uint64_t a1, void *a2)
{
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  sub_1A78C0990(v7, v6);
  result = sub_1A790587C(v7, v6, v17);
  if (!v3)
  {
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v15;
    *(a1 + 32) = v17[2];
    v16 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v16;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;
    a2[6] = v14;
    sub_1A793DB18();
    sub_1A78C0990(v9, v10);
    sub_1A78C0990(v11, v12);
    return sub_1A78C0990(v13, v14);
  }

  return result;
}

char *sub_1A790959C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7638, "JQ");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A79096A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7640, &qword_1A7942D48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A79097B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v8, v4);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1A7909C58(v5, v6);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A7909C58(v5, v6);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v8, v4);
}

uint64_t sub_1A79098EC(uint64_t result, unint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      result = MEMORY[0x1AC55DAD0]();
      if (result)
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (v9 == 2)
  {
    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = sub_1A793D648();
    if (v12)
    {
      v13 = sub_1A793D678();
      if (__OFSUB__(v11, v13))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 += v11 - v13;
    }

    if (__OFSUB__(v10, v11))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1A793D668();
    result = MEMORY[0x1AC55DAD0]();
    if (!result)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v12)
    {
LABEL_19:
      result = ccec_compressed_x962_import_pub();
      *a3 = result;
      *a5 = a6;
      return result;
    }

    __break(1u);
LABEL_13:
    v14 = result;
    if (result >> 32 >= result)
    {
      v15 = sub_1A793D648();
      if (!v15)
      {
LABEL_17:
        sub_1A793D668();
        result = MEMORY[0x1AC55DAD0]();
        if (!result)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (!v15)
        {
LABEL_31:
          __break(1u);
          return result;
        }

        goto LABEL_19;
      }

      v16 = sub_1A793D678();
      if (!__OFSUB__(v14, v16))
      {
        v15 += v14 - v16;
        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  result = MEMORY[0x1AC55DAD0](result);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_21:
  result = ccec_compressed_x962_import_pub();
  *a3 = result;
  *a5 = a6;
  return result;
}

uint64_t sub_1A7909B30(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1A7936A18(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1A7909CEC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A7909CEC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1A7936A18(v8, v4, a3);
}

uint64_t sub_1A7909C58(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v5 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1A793D668();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v5, v11);
}

uint64_t sub_1A7909CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
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

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1A7936A18(v8, v14, a4);
}

uint64_t sub_1A7909D90@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1A793D648();
    if (v10)
    {
      v11 = sub_1A793D678();
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
      result = sub_1A793D668();
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
  v10 = sub_1A793D648();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A793D678();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A793D668();
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

uint64_t sub_1A7909FC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1A790A5BC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A78C0AFC(a3, a4);
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
  sub_1A7909D90(v13, a3, a4, &v12);
  v10 = v4;
  sub_1A78C0AFC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1A790A150(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC55D830](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_1A78C0990(v6, v7);
      sub_1A78C0990(v8, v9);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v6, v7);
      result = sub_1A78C0AFC(v8, v9);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A790A204(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1A793D988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v33, 0, 14);
      v12 = v33;
      v11 = v33;
      goto LABEL_23;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = sub_1A793D648();
    if (v15)
    {
      a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = sub_1A793D678();
      if (__OFSUB__(v13, v16))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v33[0] = a1;
    LOWORD(v33[1]) = a2;
    BYTE2(v33[1]) = BYTE2(a2);
    BYTE3(v33[1]) = BYTE3(a2);
    BYTE4(v33[1]) = BYTE4(a2);
    BYTE5(v33[1]) = BYTE5(a2);
    v11 = (v33 + BYTE6(a2));
    v12 = v33;
    goto LABEL_23;
  }

  v18 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v15 = sub_1A793D648();
  if (v15)
  {
    v19 = sub_1A793D678();
    if (!__OFSUB__(a1, v19))
    {
      v15 += a1 - v19;
      goto LABEL_15;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

LABEL_15:
  v20 = sub_1A793D668();
  if (v20 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  v22 = (v21 + v15);
  if (v15)
  {
    v11 = v22;
  }

  else
  {
    v11 = 0;
  }

  v12 = v15;
LABEL_23:
  sub_1A78F6AF0(v12, v11, &v31);
  v23 = v31;
  v24 = v32;
  sub_1A78C0990(v31, v32);
  sub_1A78F3E70(v23, v24);
  sub_1A78C0AFC(v23, v24);
  sub_1A793D978();
  v25 = sub_1A793D968();
  v27 = v26;
  (*(v7 + 8))(v9, v6);
  if (v27 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1A7902AE0(v25, v27, a3, v30);

  sub_1A78CEEC8(v25, v27);
  v28 = v30[0];
  swift_beginAccess();
  sub_1A78F6AF0(v28 + 32, v28 + 32 + *(v28 + 16), v33);
  sub_1A78C0AFC(v23, v24);

  return v33[0];
}

uint64_t *sub_1A790A544(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*result)
  {
    return sub_1A79098EC(*a4, *(a4 + 8), a5, *result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790A580(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A7909B30(*a3, *(a3 + 8), a1);
  if (!v4)
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A790A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A793D648();
  v11 = result;
  if (result)
  {
    result = sub_1A793D678();
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

  sub_1A793D668();
  sub_1A7909D90(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1A790A674(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A78C0990(a3, a4);
          return sub_1A7909FC0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A790A7DC(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = sub_1A7909B30(*v5, *(v5 + 8), a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1A790A818()
{
  result = qword_1EB2A7618;
  if (!qword_1EB2A7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7618);
  }

  return result;
}

unint64_t sub_1A790A870()
{
  result = qword_1EB2A7620;
  if (!qword_1EB2A7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7620);
  }

  return result;
}

uint64_t sub_1A790AAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A790AAF0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A790AB40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_1A790AB94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A790ABF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A790AC3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A790ACBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A790AD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A790AD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
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

uint64_t sub_1A790ADC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t *sub_1A790AE90(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  cckem_pub_ctx_init();
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A790AF54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *a1;
  if (result)
  {
    return sub_1A790AF98(result, a3, a2, a4, a5, a6, &v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790AF98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v12 = cckem_pub_ctx_init();
    MEMORY[0x1EEE9AC00](v12);
    result = sub_1A793D6A8();
    if (v7)
    {
      *a7 = v7;
    }

    else
    {
      *a3 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790B080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = cckem_xwing_mlkem768x25519();
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

  result = cckem_import_pubkey();
  if (result)
  {
    v5 = result;
    sub_1A78D6484();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790B114(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
    __break(1u);
  }

  v2 = cckem_pubkey_nbytes_info();
  v6[0] = sub_1A78CC5A0(v2);
  v6[1] = v3;
  sub_1A78CC640(v6, 0);
  v5 = v2;
  sub_1A790C51C(v6, a1 + 32, &v5);
  return v6[0];
}

void *sub_1A790B1BC@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
    goto LABEL_13;
  }

  v7 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  *&v14 = off_1ED5F8A18;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v7, 0);
      v8 = v14;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v15 = v8;
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = cckem_encapsulated_key_nbytes_info();
  *&v13 = sub_1A78CC5A0(v9);
  *(&v13 + 1) = v10;
  v11 = sub_1A78CC640(&v13, 0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v11);
  sub_1A7924E08(sub_1A790CB14);
  if (v3)
  {

    result = sub_1A78C0AFC(v14, *(&v14 + 1));
    *a2 = v3;
  }

  else
  {
    v12 = v14;
    *a3 = v15;
    *(a3 + 8) = v12;
    sub_1A78C0990(v12, *(&v12 + 1));
    return sub_1A78C0AFC(v12, *(&v12 + 1));
  }

  return result;
}

void sub_1A790B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = cckem_encapsulate();
  if (v5)
  {
    v6 = v5;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1A790B3E8(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
    goto LABEL_16;
  }

  v2 = cckem_privkey_nbytes_info();
  v26[0] = sub_1A78CC5A0(v2);
  v26[1] = v3;
  sub_1A78CC640(v26, 0);
  *&v29[0] = v2;
  sub_1A791D4A8(v26, a1 + 32, v29);
  v4 = v26[0];
  v5 = v26[1];
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = cckem_sizeof_pub_ctx();
  if (v6 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  if (v6)
  {
    v8 = sub_1A793DB28();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v7;
  if (!cckem_public_ctx())
  {
    goto LABEL_18;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_14;
  }

  if (v7 < v26[0])
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v8 + 16) = v26[0];
  v26[0] = v8;
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v9 = cckem_sizeof_pub_ctx();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1A78C0EA8(v10, sub_1A790CC74);

  v12 = sub_1A790B114(v11);
  v14 = v13;

  v15 = ccsha3_256_di();
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v18 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v16;
  *(inited + 24) = v18;
  v26[0] = inited;
  sub_1A78C0990(v12, v14);
  sub_1A791D828(v12, v14, v26);
  sub_1A78C0AFC(v12, v14);
  sub_1A78BD4B0(v29);

  sub_1A78C0AFC(v12, v14);
  v27 = &type metadata for SHA3_256Digest;
  v28 = sub_1A790CAC0();
  v19 = swift_allocObject();
  v26[0] = v19;
  v20 = v29[1];
  *(v19 + 16) = v29[0];
  *(v19 + 32) = v20;
  __swift_project_boxed_opaque_existential_1(v26, &type metadata for SHA3_256Digest);
  sub_1A793D698();
  swift_allocObject();
  v21 = sub_1A793D638() | 0x4000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v26);
  *&v29[0] = v4;
  *(&v29[0] + 1) = v5;
  v27 = MEMORY[0x1E6969080];
  v28 = MEMORY[0x1E6969078];
  v26[0] = 0x2000000000;
  v26[1] = v21;
  v22 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  sub_1A78C0990(v4, v5);

  sub_1A7900C14(v23, v24, v29);

  sub_1A78C0AFC(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return *&v29[0];
}

uint64_t sub_1A790B754(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *a1;
  if (result)
  {
    return sub_1A790B79C(result, a3, a4, a2, a5, a6, a7, &v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790B79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v14 = sub_1A78C7370(a2, a6, *(*(*(*(a7 + 8) + 8) + 8) + 8));
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v18)
    {
      v38[0] = v14;
      LOWORD(v38[1]) = v15;
      BYTE2(v38[1]) = BYTE2(v15);
      BYTE3(v38[1]) = BYTE3(v15);
      BYTE4(v38[1]) = BYTE4(v15);
      BYTE5(v38[1]) = BYTE5(v15);
      v19 = v38 + BYTE6(v15);
      goto LABEL_25;
    }

    v35 = a4;
    v36 = a5;
    v28 = (v14 >> 32) - v14;
    if (v14 >> 32 >= v14)
    {
      v37 = a8;
      v22 = sub_1A793D648();
      if (!v22)
      {
        goto LABEL_16;
      }

      v29 = sub_1A793D678();
      if (!__OFSUB__(v16, v29))
      {
        v22 += v16 - v29;
LABEL_16:
        v30 = sub_1A793D668();
        if (v30 >= v28)
        {
          v27 = (v16 >> 32) - v16;
        }

        else
        {
          v27 = v30;
        }

        goto LABEL_19;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v18 != 2)
  {
    memset(v38, 0, 14);
    v19 = v38;
LABEL_25:
    sub_1A790BA0C(v38, v19, a1, a3);
    v33 = v8;
    result = sub_1A78C0AFC(v16, v17);
    if (v8)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v35 = a4;
  v36 = a5;
  v37 = a8;
  v21 = *(v14 + 16);
  v20 = *(v14 + 24);
  v22 = sub_1A793D648();
  if (v22)
  {
    v23 = sub_1A793D678();
    if (__OFSUB__(v21, v23))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v22 += v21 - v23;
  }

  v24 = __OFSUB__(v20, v21);
  v25 = v20 - v21;
  if (v24)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = sub_1A793D668();
  if (v26 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

LABEL_19:
  v31 = v27 + v22;
  if (v22)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_1A790BA0C(v22, v32, a1, a3);
  v33 = v8;
  result = sub_1A78C0AFC(v16, v17);
  if (v8)
  {
    a8 = v37;
LABEL_26:
    *a8 = v33;
    return result;
  }

  a4 = v35;
  a5 = v36;
LABEL_28:
  *a4 = a5;
  return result;
}

uint64_t sub_1A790BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_43:
    __break(1u);
  }

  v7 = cckem_privkey_nbytes_info();
  if (!a1)
  {
    if (!v7)
    {
      result = cckem_xwing_mlkem768x25519();
      if (result)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_8:
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }

  if (v7 != a2 - a1)
  {
    goto LABEL_8;
  }

  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
    goto LABEL_45;
  }

  v9 = cckem_import_privkey();
  if (v9)
  {
    v10 = v9;
    sub_1A78D6484();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    return swift_willThrow();
  }

  result = cckem_public_ctx();
  if (!result)
  {
    goto LABEL_47;
  }

  v13 = result;
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = cckem_pubkey_nbytes_info();
  *&v48 = sub_1A78CC5A0(v14);
  *(&v48 + 1) = v15;
  sub_1A78CC640(&v48, 0);
  v51 = v48;
  v46 = v14;
  sub_1A790C51C(&v51, v13, &v46);
  v16 = v51;
  if (*(a4 + 32))
  {
    goto LABEL_37;
  }

  *(&v49 + 1) = MEMORY[0x1E6969080];
  v50 = MEMORY[0x1E6969078];
  v48 = v51;
  v17 = __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      *(v44 + 6) = 0;
      *&v44[0] = 0;
      sub_1A78C0990(v16, *(&v16 + 1));
      v21 = v44;
      v22 = v44;
      goto LABEL_35;
    }

    v23 = *(v18 + 16);
    v24 = *(v18 + 24);
    sub_1A78C0990(v16, *(&v16 + 1));
    v25 = sub_1A793D648();
    if (v25)
    {
      v26 = sub_1A793D678();
      v18 = v23 - v26;
      if (__OFSUB__(v23, v26))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v25 += v18;
    }

    v27 = __OFSUB__(v24, v23);
    v28 = v24 - v23;
    if (!v27)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v20)
  {
    *&v44[0] = *v17;
    WORD4(v44[0]) = v19;
    BYTE10(v44[0]) = BYTE2(v19);
    BYTE11(v44[0]) = BYTE3(v19);
    BYTE12(v44[0]) = BYTE4(v19);
    BYTE13(v44[0]) = BYTE5(v19);
    sub_1A78C0990(v16, *(&v16 + 1));
    v21 = v44;
    v22 = v44 + BYTE6(v19);
    goto LABEL_35;
  }

  v29 = v18;
  v30 = v18 >> 32;
  v28 = v30 - v29;
  if (v30 < v29)
  {
    __break(1u);
    goto LABEL_41;
  }

  sub_1A78C0990(v16, *(&v16 + 1));
  v25 = sub_1A793D648();
  if (v25)
  {
    v31 = sub_1A793D678();
    if (!__OFSUB__(v29, v31))
    {
      v25 += v29 - v31;
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_27:
  v32 = sub_1A793D668();
  if (v32 >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  v34 = (v33 + v25);
  if (v25)
  {
    v22 = v34;
  }

  else
  {
    v22 = 0;
  }

  v21 = v25;
LABEL_35:
  sub_1A78C2D58(v21, v22, v47);
  v35 = v47[0];
  __swift_destroy_boxed_opaque_existential_1(&v48);
  result = ccsha3_256_di();
  if (result)
  {
    v36 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v38 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v36;
    *(inited + 24) = v38;
    *&v47[0] = inited;
    sub_1A78C0990(v35, *(&v35 + 1));
    sub_1A791D828(v35, *(&v35 + 1), v47);
    sub_1A78C0AFC(v35, *(&v35 + 1));
    sub_1A78BD4B0(&v48);

    sub_1A78C0AFC(v35, *(&v35 + 1));
    v39 = *(a4 + 16);
    v47[0] = *a4;
    v47[1] = v39;
    v44[0] = v48;
    v44[1] = v49;
    sub_1A78CBAB0(v44, &v45, v47, &v48, &v43);
    if (!v43)
    {
      sub_1A790CA04();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();
      v41 = *(&v51 + 1);
      v40 = v51;
      return sub_1A78C0AFC(v40, v41);
    }

LABEL_37:
    v41 = *(&v16 + 1);
    v40 = v16;
    return sub_1A78C0AFC(v40, v41);
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t *sub_1A790BEA8(uint64_t *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    result = cckem_xwing_mlkem768x25519();
    if (result)
    {
      cckem_full_ctx_init();
      v4 = a3[4];
      v5 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v6 = MEMORY[0x1EEE9AC00](v5);
      return (*(v4 + 8))(sub_1A790CA78, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A790BF88@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v11 = off_1ED5F8A18;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v9, 0);
      v10 = v11;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v12 = v10;
  sub_1A78C0990(a2, a3);
  sub_1A78E0E20(&v12, a2, a3, v7);
  result = v12;
  if (v4)
  {
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1A790C0A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = result;
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      if (result)
      {
LABEL_25:
        result = cckem_decapsulate();
        if (result)
        {
          v23 = result;
          sub_1A78D6484();
          swift_allocError();
          *v24 = v23;
          *(v24 + 4) = 0;
          return swift_willThrow();
        }

        return result;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v17 = a3;
    v18 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v11 = sub_1A793D648();
      if (!v11)
      {
        goto LABEL_17;
      }

      v19 = sub_1A793D678();
      if (!__OFSUB__(v17, v19))
      {
        v11 += v17 - v19;
LABEL_17:
        v20 = sub_1A793D668();
        if (v20 >= v18)
        {
          v16 = v18;
        }

        else
        {
          v16 = v20;
        }

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v8 != 2)
  {
    if (result)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v11 = sub_1A793D648();
  if (v11)
  {
    v12 = sub_1A793D678();
    if (__OFSUB__(v10, v12))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 += v10 - v12;
  }

  v13 = __OFSUB__(v9, v10);
  v14 = v9 - v10;
  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_1A793D668();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

LABEL_20:
  v21 = v16 + v11;
  if (v11)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return sub_1A790C2F4(v11, v22, a5, v7, a2);
}

uint64_t sub_1A790C2F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_decapsulate();
  if (result)
  {
    v5 = result;
    sub_1A78D6484();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790C380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v4 = cckem_sizeof_pub_ctx();
  if (v4 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1A793DB28();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
    goto LABEL_16;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_13;
  }

  *(v6 + 16) = v5;
  if (!cckem_xwing_mlkem768x25519())
  {
    goto LABEL_17;
  }

  v7 = cckem_sizeof_pub_ctx();
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1A78C0EA8(v8, sub_1A790CA58);
  if (v2)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = v9;

    *a2 = v10;
  }

  return result;
}

uint64_t sub_1A790C51C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_1A78C0AFC(v7, v6);
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      sub_1A793D6D8();
      v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *(v7 + 16);
      result = sub_1A793D648();
      if (result)
      {
        if (__OFSUB__(v11, sub_1A793D678()))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_1A793D668();
        result = cckem_export_pubkey();
        if (result)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v12 = v10 | 0x8000000000000000;
        *a1 = v7;
        goto LABEL_23;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    result = cckem_export_pubkey();
    if (!result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    sub_1A78C0AFC(v7, v6);
    LOWORD(v16) = v6;
    BYTE2(v16) = BYTE2(v6);
    HIBYTE(v16) = BYTE3(v6);
    LOBYTE(v17) = BYTE4(v6);
    HIBYTE(v17) = BYTE5(v6);
    result = cckem_export_pubkey();
    if (!result)
    {
      *a1 = v7;
      a1[1] = v16 | ((v17 | (BYTE6(v6) << 16)) << 32);
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v7, v6);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v4 = v7;
  v3 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v3 < v7)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    sub_1A793D698();
    swift_allocObject();
    v14 = sub_1A793D628();

    v13 = v14;
  }

  if (v3 < v4)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(v4, sub_1A793D678()))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1A793D668();
  v15 = cckem_export_pubkey();

  if (v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v13 | 0x4000000000000000;
  *a1 = v7;
LABEL_23:
  a1[1] = v12;
  return result;
}

uint64_t sub_1A790C89C(uint64_t a1)
{
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v2 = cckem_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v2);
    return sub_1A78C0EA8(v3, sub_1A790CC38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790C928(uint64_t a1)
{
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v2 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v2);
    return sub_1A78C05E8(v3, sub_1A790C9E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790CA04()
{
  result = qword_1EB2A7650;
  if (!qword_1EB2A7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7650);
  }

  return result;
}

uint64_t sub_1A790CA78(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = cckem_generate_key();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *v2 = v3;
  }

  return result;
}

unint64_t sub_1A790CAC0()
{
  result = qword_1ED5F8998;
  if (!qword_1ED5F8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8998);
  }

  return result;
}

uint64_t sub_1A790CB14(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v4[1] = *(v2 + 24);
  v5 = a1;
  return sub_1A78C9770(sub_1A790CB68, v4);
}

uint64_t sub_1A790CB68(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v7;
  v12[6] = v8;
  return (*(v10 + 8))(sub_1A790CC14, v12, v9, v10);
}