uint64_t sub_1A791D4A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
        result = cckem_export_privkey();
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

    result = cckem_export_privkey();
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
    result = cckem_export_privkey();
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
  v15 = cckem_export_privkey();

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

uint64_t sub_1A791D828(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1A78DA8BC(v8, v4);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1A791D960(v5, v6);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A791D960(v5, v6);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1A78DA8BC(v8, v4);
}

uint64_t sub_1A791D960(uint64_t a1, uint64_t a2)
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

  return sub_1A78DA8BC(v5, v11);
}

uint64_t sub_1A791DAB0(uint64_t (*a1)(void))
{
  if (!ccrng())
  {
    __break(1u);
  }

  return a1();
}

uint64_t sub_1A791DB6C(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 112);
  return swift_endAccess();
}

uint64_t sub_1A791DBE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    MEMORY[0x1AC55E570](v2, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1A791DC5C(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 32);
  return swift_endAccess();
}

uint64_t RSAPSSSPKI.rsaPublicKeyBytes.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t RSAPSSSPKI.rsaPublicKeyBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t static RSAPSSSPKI.serialize(_:)(uint64_t a1, unint64_t a2)
{
  v7 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A78C0990(a1, a2);
  sub_1A7917E1C(48, &v7, a1, a2);
  if (v2)
  {
  }

  v6 = sub_1A78C0DCC(v7);

  return v6;
}

uint64_t sub_1A791DE0C(uint64_t a1)
{
  if (*a1 == 48 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 24);
    v9[0] = *(a1 + 8);
    v9[1] = v5;
    v10 = v4;
    sub_1A78BF80C(a1, v8);
    swift_unknownObjectRetain();
    sub_1A791E2B8(v9, 2);
    if (v1)
    {
      swift_unknownObjectRelease();
      return sub_1A78BF494(a1);
    }

    else
    {
      sub_1A78BF874(v11);
      if (v11[48] != 255)
      {
        sub_1A791EAD8(v11);
        sub_1A78D6B80();
        swift_allocError();
        *v7 = 3;
        swift_willThrow();
      }

      sub_1A78BF494(a1);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A791DF44(uint64_t a1)
{
  if (*a1 == 48 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 24);
    v9 = *(a1 + 8);
    v10 = v5;
    v11 = v4;
    sub_1A78BF80C(a1, v8);
    swift_unknownObjectRetain();
    sub_1A791E078();
    if (v1)
    {
      swift_unknownObjectRelease();
      return sub_1A78BF494(a1);
    }

    else
    {
      sub_1A78BF874(v12);
      if (v12[48] != 255)
      {
        sub_1A791EAD8(v12);
        sub_1A78D6B80();
        swift_allocError();
        *v7 = 3;
        swift_willThrow();
      }

      sub_1A78BF494(a1);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }
}

char *sub_1A791E078()
{
  sub_1A78BF874(v10);
  if (v11 == 255)
  {
    sub_1A78D6B80();
LABEL_10:
    swift_allocError();
    v5 = 3;
LABEL_11:
    *v4 = v5;
    return swift_willThrow();
  }

  v20[0] = v10[0];
  v20[1] = v10[1];
  v20[2] = v10[2];
  v21 = v11;
  result = sub_1A78BFB00(v20, 6u);
  if (v0)
  {
    return result;
  }

  v2 = sub_1A790327C(result, &unk_1F1A76D90);

  if ((v2 & 1) == 0)
  {
    sub_1A791C0F8();
    goto LABEL_10;
  }

  sub_1A78BF874(v12);
  if (v18 == 255)
  {
    sub_1A791C0F8();
    swift_allocError();
    v5 = 4;
    goto LABEL_11;
  }

  if (v12[0] == 48 && (v18 & 1) == 0)
  {
    v6 = v13;
    v9[0] = v13;
    v9[1] = v14;
    v9[2] = v15;
    v9[3] = v16;
    v9[4] = v17;
    sub_1A791EB50(v12, v8);
    j__swift_unknownObjectRetain(v6);
    sub_1A791E2B8(v9, 5);
    sub_1A78BF874(v19);
    if (v19[48] != 255)
    {
      sub_1A791EAD8(v19);
      sub_1A78D6B80();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
    }

    sub_1A791EAD8(v12);
    sub_1A791EAD8(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v12);
  }
}

void sub_1A791E2B8(uint64_t a1, char a2)
{
  sub_1A78BF874(v9);
  if (v10 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v7 = 3;
LABEL_10:
    swift_willThrow();
    return;
  }

  v12[0] = v9[0];
  v12[1] = v9[1];
  v12[2] = v9[2];
  v13 = v10;
  v4 = sub_1A78BFB00(v12, 6u);
  if (v2)
  {
    return;
  }

  v5 = sub_1A790327C(v4, &unk_1F1A76C88);

  if ((v5 & 1) == 0)
  {
    sub_1A791C0F8();
    swift_allocError();
    *v8 = a2;
    goto LABEL_10;
  }

  sub_1A78BF874(v11);
  if (v11[48] != 255)
  {
    if (v11[0] != 5)
    {
      sub_1A78D6B80();
      swift_allocError();
      *v6 = 3;
      swift_willThrow();
    }

    sub_1A791EAD8(v11);
  }
}

uint64_t RSAPSSSPKI.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A78C0990(a1, a2);
  sub_1A78CE6A4(a1, a2);
  sub_1A78BDFE0(v23, v7, v7 + 32, 0, (2 * *(v7 + 16)) | 1);
  if (v3)
  {
    sub_1A78C0AFC(a1, a2);
  }

  if (v23[0] != 48 || (v27 & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    sub_1A78BF494(v23);
    return sub_1A78C0AFC(a1, a2);
  }

  v20 = v24;
  v21 = v25;
  v22 = v26;
  sub_1A78BF80C(v23, v19);
  sub_1A78BF80C(v23, v19);
  sub_1A791E880();
  sub_1A78BF874(v28);
  if (v29 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v31[0] = v28[0];
  v31[1] = v28[1];
  v31[2] = v28[2];
  v32 = v29;
  v10 = sub_1A78C5B9C(v31, 3u);
  v14 = sub_1A78D9C70(v10, v11, v12, v13);
  v16 = v15;
  sub_1A78BF874(v30);
  if (v30[48] != 255)
  {
    sub_1A791EAD8(v30);
    sub_1A78D6B80();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    sub_1A78C0AFC(v14, v16);
LABEL_10:
    sub_1A78BF494(v23);
    sub_1A78BF494(v23);
    sub_1A78C0AFC(a1, a2);
    return swift_unknownObjectRelease();
  }

  sub_1A78C0AFC(a1, a2);
  sub_1A78BF494(v23);
  sub_1A78BF494(v23);
  result = swift_unknownObjectRelease();
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t sub_1A791E6A8()
{
  sub_1A78BF874(v11);
  if (v16 == 255)
  {
    sub_1A791C0F8();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else if (v11[0] == 48 && (v16 & 1) == 0)
  {
    v4 = v12;
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    sub_1A791EB50(v11, &v6);
    j__swift_unknownObjectRetain(v4);
    sub_1A79166F4(&v7, 0, 2);
    if (!v0)
    {
      sub_1A7916720(&v7, 1uLL, 2);
      sub_1A7916A60(&v7, 2uLL, 2u);
      sub_1A78BF874(v17);
      if (v17[48] != 255)
      {
        sub_1A791EAD8(v17);
        sub_1A78D6B80();
        swift_allocError();
        *v5 = 3;
        swift_willThrow();
      }
    }

    sub_1A791EAD8(v11);
    sub_1A791EAD8(v11);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v11);
  }
}

uint64_t sub_1A791E880()
{
  sub_1A78BF874(v16);
  if (v22 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  if (v16[0] != 48 || (v22 & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v16);
  }

  v4 = v17;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  sub_1A78BF874(v23);
  if (v24 != 255)
  {
    v26[0] = v23[0];
    v26[1] = v23[1];
    v26[2] = v23[2];
    v27 = v24;
    sub_1A791EB50(v16, v10);
    j__swift_unknownObjectRetain(v4);
    v5 = sub_1A78BFB00(v26, 6u);
    if (!v0)
    {
      v6 = sub_1A790327C(v5, &unk_1F1A76DE8);

      if ((v6 & 1) == 0)
      {
        sub_1A791C0F8();
        swift_allocError();
        *v9 = 0;
        goto LABEL_13;
      }

      sub_1A791E6A8();
      sub_1A78BF874(v25);
      if (v25[48] != 255)
      {
        sub_1A791EAD8(v25);
        sub_1A78D6B80();
        swift_allocError();
        *v7 = 3;
LABEL_13:
        swift_willThrow();
      }
    }

    sub_1A791EAD8(v16);
    sub_1A791EAD8(v16);
    return swift_unknownObjectRelease();
  }

  sub_1A78D6B80();
  swift_allocError();
  *v8 = 3;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A791EAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F38, &qword_1A793F4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A791EB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F38, &qword_1A793F4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Curve25519.Signing.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_1A793DB28();
  *(v2 + 16) = 32;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v5 = v2;
  v3 = sub_1A78E3110(0x20uLL, &v5);

  *a1 = v3;
  return result;
}

void *Curve25519.Signing.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A791EF98(*v1);
  *a1 = result;
  return result;
}

uint64_t Curve25519.Signing.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = sub_1A791F1D0(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

unint64_t Curve25519.Signing.PrivateKey.rawRepresentation.getter()
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

uint64_t Curve25519.Signing.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A78C49E8(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve25519.Signing.PublicKey.rawRepresentation.getter()
{
  v0 = sub_1A793DB18();
  v1 = sub_1A78C0DCC(v0);

  return v1;
}

unint64_t sub_1A791EF24()
{
  result = qword_1EB2A78D0;
  if (!qword_1EB2A78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78D0);
  }

  return result;
}

void *sub_1A791EF98(uint64_t a1)
{
  v1 = sub_1A793DB28();
  *(v1 + 16) = 32;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  if (ccsha512_di())
  {
    if (!cced25519_make_pub())
    {
      v2 = sub_1A78C66DC(v1);

      return v2;
    }

    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A791F054(uint64_t *a1, void *a2, char **a3)
{
  if (!ccsha512_di())
  {
    goto LABEL_9;
  }

  if (!ccrng())
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (!*a1)
  {
    goto LABEL_11;
  }

  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A78C57C4(0, *(v6 + 2), 0, v6);
  }

  *a3 = v6;
  result = cced25519_make_key_pair();
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *a2 = 32;
  return result;
}

uint64_t sub_1A791F164(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 32)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A791F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A793D6A8();
  if (!v3)
  {
    return sub_1A78C2B3C(a1, a2, a3);
  }

  return result;
}

uint64_t SecureEnclave.Curve25519.Signing.PrivateKey.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v34 - v9;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = *v3;
  v42 = v3[1];
  v43 = v19;
  v20 = v3[2];
  v40 = v3[3];
  v41 = v20;
  v51 = a3;
  sub_1A793D5A8();
  v37 = v7;
  v21 = sub_1A793DB98();
  v22 = *(v13 + 8);
  v22(v18, v12);
  if (v21 == 1)
  {
    sub_1A793D5A8();
    v23 = v38;
    sub_1A793DBC8();
    v22(v15, v12);
    v24 = AssociatedTypeWitness;
    v25 = *(AssociatedTypeWitness - 8);
    result = (*(v25 + 48))(v23, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v46 = v24;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
    sub_1A78C78FC(&v45, v48);
    v28 = v49;
  }

  else
  {
    (*(v36 + 16))(v35, a1, a2);
    v29 = sub_1A793DB38();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v49 = v28;
    v50 = sub_1A78EC320();
    v48[0] = v29;
  }

  v30 = __swift_project_boxed_opaque_existential_1(v48, v28);
  MEMORY[0x1EEE9AC00](v30);
  v31 = v42;
  *(&v34 - 4) = v43;
  *(&v34 - 3) = v31;
  v32 = v40;
  *(&v34 - 2) = v41;
  *(&v34 - 1) = v32;
  v33 = v44;
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v48);
  if (!v33)
  {
    return v45;
  }

  return result;
}

void sub_1A791F6D0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  v9 = sub_1A793D6F8();
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E6969010], v11);
    v14 = sub_1A78DA2C4(a1, a2 - a1, v13);
    v16 = v15;
    v17 = sub_1A791F838(a3, v14, v15);
    if (v4)
    {
      sub_1A78C0AFC(v14, v16);
    }

    else
    {
      v19 = v17;
      v20 = v18;
      sub_1A78C0AFC(v14, v16);
      *a4 = v19;
      a4[1] = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A791F838(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A793D7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B148])
  {
    __break(1u);
  }

  *(v5 + 32) = sub_1A793D958();
  *(v5 + 40) = v6;
  v7 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v8 = sub_1A793D878();

  v13[0] = 0;
  v9 = [a1 sign:v4 algorithms:v7 parameters:v8 error:v13];

  v10 = v13[0];
  if (v9)
  {
    v11 = sub_1A793D7D8();
  }

  else
  {
    v11 = v10;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v11;
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

uint64_t sub_1A791FA24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A791FA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A791FAD4(unsigned __int8 *result, unsigned __int8 a2)
{
  if (*result != a2)
  {
    sub_1A78D6B80();
    swift_allocError();
    v10 = 1;
LABEL_16:
    *v9 = v10;
    swift_willThrow();
    sub_1A78BF494(result);
    return;
  }

  if (result[48])
  {
    v3 = *(result + 3);
    v4 = *(result + 4);
    v5 = v4 >> 1;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
    }

    else
    {
      if (((v4 >> 1) - v3) <= 0)
      {
        goto LABEL_15;
      }

      v6 = *(result + 1);
      v7 = *(result + 2);
      if (v3 == v5)
      {
LABEL_12:
        sub_1A791FCFC(v6, v7, v3, v4);
        return;
      }

      if (v3 < v5)
      {
        if (v3 + 1 == v5)
        {
          goto LABEL_12;
        }

        if (v3 + 1 < v5)
        {
          v8 = *(v7 + v3 + 1);
          if (*(v7 + v3))
          {
            if (*(v7 + v3) != 255 || (v8 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_15;
          }

          if ((v8 & 0x80000000) == 0)
          {
LABEL_15:
            sub_1A78D6B80();
            swift_allocError();
            v10 = 4;
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void sub_1A791FBE0(unsigned __int8 *result, unsigned __int8 a2)
{
  if (*result != a2)
  {
    sub_1A78D6B80();
    swift_allocError();
    v11 = 1;
LABEL_18:
    *v10 = v11;
    swift_willThrow();
    sub_1A78BF494(result);
    return;
  }

  if (result[48])
  {
    v3 = *(result + 3);
    v4 = *(result + 4);
    v5 = v4 >> 1;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
    }

    else
    {
      if (((v4 >> 1) - v3) <= 0)
      {
        goto LABEL_17;
      }

      v6 = *(result + 1);
      v7 = *(result + 2);
      if (v3 == v5)
      {
LABEL_15:
        sub_1A7920008(v6, v7, v3, v4);
        return;
      }

      if (v3 < v5)
      {
        v8 = *(v7 + v3);
        v9 = v3 + 1;
        if (v3 + 1 == v5)
        {
          if (!*(v7 + v3))
          {
            v3 = v4 >> 1;
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (v3 + 1 < v5)
        {
          if (*(v7 + v3))
          {
            if (v8 != 255)
            {
LABEL_14:
              if ((v8 & 0x80) == 0)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            ++v3;
            if (*(v7 + v9) < 0)
            {
              goto LABEL_15;
            }
          }

LABEL_17:
          sub_1A78D6B80();
          swift_allocError();
          v11 = 4;
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1A791FCFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_unknownObjectRetain();
  sub_1A791FE90(v8, a2, a3, a4);
  if (v4 || a4 >> 1 == a3 || (a4 >> 1) > a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A791FE90(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_1A78D6B80();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_1A78C0234(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      v18 = *v13++;
      v17 = v18;
      if ((v16 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else if (v16 < 0)
      {
        v20 = v17 >> -v16;
        if (v16 == -64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v20;
        }
      }

      else
      {
        v19 = v17 << v16;
        if (v16 == 64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v19;
        }
      }

      v12 |= v15;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_1A7920008(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_1A78D6B80();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_1A78C0234(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      if (v16 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else
      {
        v17 = *v13;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v19 = v17 >> -v16;
          if (v16 <= 0xFFFFFFFFFFFFFFC0)
          {
            v15 = 0;
          }

          else
          {
            v15 = v19;
          }
        }

        else
        {
          v18 = v17 << v16;
          if (v16 >= 0x40)
          {
            v15 = 0;
          }

          else
          {
            v15 = v18;
          }
        }
      }

      v12 |= v15;
      ++v13;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_1A792016C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A78BF874(v21);
  if (v22 == 255)
  {
    goto LABEL_8;
  }

  v31[0] = v21[0];
  v31[1] = v21[1];
  v31[2] = v21[2];
  v32 = v22;
  sub_1A791FAD4(v31, 2u);
  if (v2)
  {
    return;
  }

  if (v5 != 1 || (sub_1A78BF874(v23), v28 == 255))
  {
LABEL_8:
    sub_1A78D6B80();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  else if (v23[0] == 4)
  {
    if (v28)
    {
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
      sub_1A7916DD4(a1, 0, 2u);
      v11 = v10;
      sub_1A79170A0(a1, 1uLL, 2u);
      sub_1A7920A7C(v6, v7, v8, v9, v11, v14, v15, v16, v29, v17);
      v18 = v29[5];
      *(a2 + 64) = v29[4];
      *(a2 + 80) = v18;
      *(a2 + 96) = v30;
      v19 = v29[1];
      *a2 = v29[0];
      *(a2 + 16) = v19;
      v20 = v29[3];
      *(a2 + 32) = v29[2];
      *(a2 + 48) = v20;
    }

    else
    {
      sub_1A78C2ADC(v23, &qword_1EB2A6F38, &qword_1A793F4B0);
      __break(1u);
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    sub_1A78C2ADC(v23, &qword_1EB2A6F38, &qword_1A793F4B0);
  }
}

uint64_t sub_1A7920384@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) == 7 && (v5 == &unk_1F1A76BA0 || qword_1F1A76BC0 == *(v5 + 32) && qword_1F1A76BC8 == *(v5 + 40) && qword_1F1A76BD0 == *(v5 + 48) && qword_1F1A76BD8 == *(v5 + 56) && qword_1F1A76BE0 == *(v5 + 64) && qword_1F1A76BE8 == *(v5 + 72) && qword_1F1A76BF0 == *(v5 + 80)))
  {
    if (qword_1EB2A6CC0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADA90;
LABEL_21:
    *a3 = *v6;
    *(a3 + 8) = *(v6 + 8);
    *(a3 + 24) = *(v6 + 24);
    swift_unknownObjectRetain();
    return sub_1A793DB18();
  }

  if (sub_1A790327C(&unk_1F1A76BF8, v5))
  {
    if (qword_1EB2A6D98 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADAC0;
    goto LABEL_21;
  }

  if (sub_1A790327C(&unk_1F1A76C40, v5))
  {
    if (qword_1EB2A6DA0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADAE8;
    goto LABEL_21;
  }

  sub_1A78D6B80();
  v8 = swift_allocError();
  *v9 = 3;
  result = swift_willThrow();
  *a2 = v8;
  return result;
}

uint64_t sub_1A79205A0(char **a1, uint64_t a2)
{
  v22 = 1;
  v21 = &v22;
  result = sub_1A791C348(2, a1, sub_1A791C14C, v20);
  if (!v2)
  {
    *&v6 = MEMORY[0x1EEE9AC00](result);
    v18 = v7;
    v19 = v6;
    result = sub_1A791C348(4, a1, sub_1A78FFBF8, &v17);
    v8 = *(a2 + 16);
    v25[0] = *a2;
    v25[1] = v8;
    v26 = *(a2 + 32);
    if (*&v25[0])
    {
      v9 = *(a2 + 24);
      v37[0] = *(a2 + 8);
      v37[1] = v9;
      v29 = *&v25[0];
      v30 = v37[0];
      v31 = v9;
      v36 = *&v25[0];
      sub_1A78BF9FC(v25, &v22, &qword_1EB2A75F8, qword_1A7942108);
      sub_1A78FF910(&v36, &v22);
      sub_1A78BF9FC(v37, &v22, &qword_1EB2A6F30, &qword_1A793F4A8);
      if (qword_1EB2A6CC0 != -1)
      {
        swift_once();
      }

      v34[0] = xmmword_1EB2ADA90;
      v34[1] = *&qword_1EB2ADAA0;
      v35 = qword_1EB2ADAB0;
      v10 = sub_1A78D6980(v34, &v29);
      sub_1A78D6BD4(&v36);
      v11 = sub_1A78C2ADC(v37, &qword_1EB2A6F30, &qword_1A793F4A8);
      if (v10)
      {
        v12 = &unk_1F1A76BA0;
      }

      else
      {
        sub_1A78FF910(&v36, &v22);
        sub_1A78BF9FC(v37, &v22, &qword_1EB2A6F30, &qword_1A793F4A8);
        if (qword_1EB2A6D98 != -1)
        {
          swift_once();
        }

        v32[0] = xmmword_1EB2ADAC0;
        v32[1] = *&qword_1EB2ADAD0;
        v33 = qword_1EB2ADAE0;
        v13 = sub_1A78D6980(v32, &v29);
        sub_1A78D6BD4(&v36);
        v11 = sub_1A78C2ADC(v37, &qword_1EB2A6F30, &qword_1A793F4A8);
        if (v13)
        {
          v12 = &unk_1F1A76BF8;
        }

        else
        {
          sub_1A78FF910(&v36, &v22);
          sub_1A78BF9FC(v37, &v22, &qword_1EB2A6F30, &qword_1A793F4A8);
          if (qword_1EB2A6DA0 != -1)
          {
            swift_once();
          }

          v27[0] = xmmword_1EB2ADAE8;
          v27[1] = *&qword_1EB2ADAF8;
          v28 = qword_1EB2ADB08;
          v14 = sub_1A78D6980(v27, &v29);
          sub_1A78D6BD4(&v36);
          v11 = sub_1A78C2ADC(v37, &qword_1EB2A6F30, &qword_1A793F4A8);
          if (!v14)
          {
            sub_1A78D6B80();
            swift_allocError();
            *v16 = 3;
            swift_willThrow();
            sub_1A78D6BD4(&v36);
            return sub_1A78C2ADC(v37, &qword_1EB2A6F30, &qword_1A793F4A8);
          }

          v12 = &unk_1F1A76C40;
        }
      }

      v22 = v12;
      MEMORY[0x1EEE9AC00](v11);
      *&v19 = &v22;
      sub_1A791C348(160, a1, sub_1A7920E80, &v18);
      sub_1A78D6BD4(&v36);
      sub_1A78C2ADC(v37, &qword_1EB2A6F30, &qword_1A793F4A8);
    }

    v15 = *(a2 + 72);
    if (v15)
    {
      v23 = *(a2 + 80);
      v24 = *(a2 + 96);
      v22 = v15;
      MEMORY[0x1EEE9AC00](result);
      *&v19 = &v22;
      return sub_1A791C348(161, a1, sub_1A7920A30, &v18);
    }
  }

  return result;
}

uint64_t sub_1A7920A30(char **a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v6 = *v2;
  v7 = v3;
  return sub_1A791C348(3, a1, sub_1A791C0D8, v5);
}

uint64_t sub_1A7920A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (a5)
  {
    v27 = a8;
    *&v29 = a5;
    sub_1A7920384(&v29, v28, v47);
    if (v10)
    {

      v48 = v28[0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      v39 = a1;
      v40 = a2;
      v41 = a3;
      v42 = a4;
      v43 = a6;
      v44 = a7;
      v45 = v27;
      v46 = a10;
      return sub_1A78FFBA4(&v36);
    }

    v48 = 0;

    v23 = v47[0];
    v22 = v47[1];
    v21 = v47[2];
    v20 = v47[3];
    v19 = v47[4];
    a8 = v27;
  }

  else
  {
    v48 = v10;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *&v29 = v23;
  *(&v29 + 1) = v22;
  *&v30 = v21;
  *(&v30 + 1) = v20;
  *&v31 = v19;
  *(&v31 + 1) = a1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a6;
  *&v34 = a7;
  *(&v34 + 1) = a8;
  v35 = a10;
  *&v36 = v23;
  *(&v36 + 1) = v22;
  *&v37 = v21;
  *(&v37 + 1) = v20;
  v38 = v19;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a10;
  sub_1A78FFB48(&v29, v28);
  result = sub_1A78FFBA4(&v36);
  v24 = v34;
  *(a9 + 64) = v33;
  *(a9 + 80) = v24;
  *(a9 + 96) = v35;
  v25 = v30;
  *a9 = v29;
  *(a9 + 16) = v25;
  v26 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v26;
  return result;
}

uint64_t sub_1A7920BEC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
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
  v23[0] = *(a1 + 8);
  v23[1] = v9;
  v24 = v8;
  sub_1A78BF80C(a1, v14);
  swift_unknownObjectRetain();
  sub_1A792016C(v23, &v16);
  if (v3)
  {
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF874(v25);
  if (v25[48] != 255)
  {
    sub_1A78C2ADC(v25, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    v14[4] = v20;
    v14[5] = v21;
    v15 = v22;
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_1A78FFBA4(v14);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  v11 = v21;
  *(a3 + 64) = v20;
  *(a3 + 80) = v11;
  *(a3 + 96) = v22;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  v13 = v19;
  *(a3 + 32) = v18;
  *(a3 + 48) = v13;
  return result;
}

__n128 sub_1A7920DC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = (2 * *(a1 + 16)) | 1;
  v20[0] = *a2;
  v20[1] = v5;
  v7 = *(a2 + 32);
  v8 = (2 * *(a3 + 16)) | 1;
  v13 = v20[0];
  v14 = v5;
  *&v15 = v7;
  *(&v15 + 1) = a1;
  v16 = (a1 + 32);
  *&v17 = v6;
  *(&v17 + 1) = a3;
  v18 = (a3 + 32);
  v19 = v8;
  v21 = v7;
  v22 = a1;
  v23 = a1 + 32;
  v24 = 0;
  v25 = v6;
  v26 = a3;
  v27 = a3 + 32;
  v28 = 0;
  v29 = v8;
  sub_1A78FFB48(&v13, v12);
  sub_1A78FFBA4(v20);
  v9 = v18;
  *(a4 + 64) = v17;
  *(a4 + 80) = v9;
  *(a4 + 96) = v19;
  v10 = v14;
  *a4 = v13;
  *(a4 + 16) = v10;
  result = v16;
  *(a4 + 32) = v15;
  *(a4 + 48) = result;
  return result;
}

uint64_t SecureEnclave.MLDSA65.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

id sub_1A792101C(unint64_t *a1, id a2, uint64_t a3, uint64_t a4, void **a5, uint64_t (*a6)(uint64_t), void (*a7)(void *, uint64_t *))
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v13 = [v12 tokenIDs];
  v14 = sub_1A793DB08();

  v54 = sub_1A793D958();
  v55 = v15;
  v53[2] = &v54;
  LOBYTE(a4) = sub_1A7931890(a4, v53, v14);

  if ((a4 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v44 = 0;
    *(v44 + 8) = 1;
    swift_willThrow();
    return a2;
  }

  v16 = sub_1A79221B0(a3, 0);
  if (v7)
  {
    return a2;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E0, "<5");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7944DF0;
  v54 = *MEMORY[0x1E697AD50];
  v19 = v54;
  type metadata accessor for CFString(0);
  v21 = v20;
  sub_1A7922338();
  v22 = v19;
  result = sub_1A793DDE8();
  v24 = *a5;
  if (!*a5)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 96) = v21;
  *(inited + 72) = v24;
  v54 = *MEMORY[0x1E697AD68];
  v25 = v54;
  v26 = v24;
  result = sub_1A793DDE8();
  v27 = *MEMORY[0x1E697AD98];
  if (!*MEMORY[0x1E697AD98])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 168) = v21;
  *(inited + 144) = v27;
  v54 = *MEMORY[0x1E697ABC8];
  v28 = v54;
  v29 = v27;
  sub_1A793DDE8();
  v30 = [objc_opt_self() dataFromACL_];
  v31 = sub_1A793D7D8();
  v33 = v32;

  *(inited + 240) = MEMORY[0x1E6969080];
  *(inited + 216) = v31;
  *(inited + 224) = v33;
  sub_1A78FC2A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  swift_arrayDestroy();
  v34 = sub_1A793D878();

  v54 = 0;
  a2 = [v17 createObjectWithAttributes:v34 error:&v54];

  if (!a2)
  {
    v45 = v54;
    sub_1A793D6C8();

    swift_willThrow();
    return a2;
  }

  v35 = v54;
  v36 = [a2 publicKey];
  if (!v36)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v46 = 2;
    *(v46 + 8) = 1;
    swift_willThrow();

    return a2;
  }

  v37 = v36;
  v38 = sub_1A793D7D8();
  v40 = v39;

  v54 = v38;
  v55 = v40;
  v41 = sub_1A78C0990(v38, v40);
  result = a6(v41);
  if (result)
  {
    v42 = ccmldsa_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v42);
    v52 = sub_1A78C05E8(v43, a7);
    sub_1A78C0AFC(v54, v55);
    v47 = v17;
    v48 = [a2 objectID];
    sub_1A793D7D8();
    sub_1A78C0AFC(v38, v40);

    *a1 = v52;
    return a2;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1A7921508(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), void (*a8)(void *, uint64_t *))
{
  v10 = v8;
  v43 = *MEMORY[0x1E69E9840];
  v15 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v16 = [v15 tokenIDs];
  v17 = sub_1A793DB08();

  v41 = sub_1A793D958();
  v42 = v18;
  v40 = &v41;
  LOBYTE(a6) = sub_1A7931890(a6, v39, v17);

  if ((a6 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 1;
    swift_willThrow();
    return v10;
  }

  v19 = sub_1A79221B0(a4, a5);
  if (v8)
  {
    return v10;
  }

  v20 = v19;
  v21 = sub_1A793D7B8();
  v41 = 0;
  v10 = [v20 objectForObjectID:v21 error:&v41];

  if (!v10)
  {
    v34 = v41;
    sub_1A793D6C8();

    swift_willThrow();
    return v10;
  }

  v22 = v41;
  v23 = [v10 publicKey];
  if (!v23)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v35 = 2;
    *(v35 + 8) = 1;
    swift_willThrow();

    return v10;
  }

  v24 = v23;
  v25 = sub_1A793D7D8();
  v27 = v26;

  v41 = v25;
  v42 = v27;
  v28 = sub_1A78C0990(v25, v27);
  if (a7(v28))
  {
    v29 = ccmldsa_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v29);
    v31 = sub_1A78C05E8(v30, a8);

    sub_1A78C0AFC(v25, v27);
    sub_1A78C0AFC(v41, v42);
    *a1 = v31;
    sub_1A78C0990(a2, a3);
    return v10;
  }

  __break(1u);
  sub_1A78C0AFC(v41, v42);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1A79218A4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, unint64_t *a7@<X8>)
{
  v11 = sub_1A792101C(&v19, a1, a2, a3, a4, a5, a6);
  v13 = v12;
  v15 = v14;

  if (!v7)
  {
    v16 = v19;
    v17 = v11;
    sub_1A78C0990(v13, v15);
    sub_1A78C0AFC(v13, v15);
    v18 = v17;
    sub_1A78C0990(v13, v15);

    sub_1A78C0AFC(v13, v15);
    *a7 = v16;
    a7[1] = v13;
    a7[2] = v15;
    a7[3] = v18;
  }
}

void sub_1A79219D8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void (*a7)(void *, uint64_t *)@<X6>, unint64_t *a8@<X8>)
{
  v14 = sub_1A78C7370(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  v16 = v15;
  v17 = sub_1A7921508(&v28, v14, v15, a2, 0, a5, a6, a7);
  if (v8)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    v22 = v19;
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);

    v23 = v28;
    v24 = v20;
    sub_1A78C0990(v21, v22);
    sub_1A78C0AFC(v21, v22);
    v25 = v24;
    sub_1A78C0990(v21, v22);

    sub_1A78C0AFC(v21, v22);
    *a8 = v23;
    a8[1] = v21;
    a8[2] = v22;
    a8[3] = v25;
  }
}

void *sub_1A7921B80(void *a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (swift_dynamicCast())
  {
    v7 = v19[0];
    v8 = v19[1];
    v9 = sub_1A793D7B8();
    sub_1A78C0AFC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B168])
  {
    __break(1u);
  }

  *(v10 + 32) = sub_1A793D958();
  *(v10 + 40) = v11;
  v12 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v13 = sub_1A793D878();

  v19[0] = 0;
  v14 = [a1 sign:v9 algorithms:v12 parameters:v13 error:v19];

  v15 = v19[0];
  if (v14)
  {
    v9 = sub_1A793D7D8();
  }

  else
  {
    v16 = v15;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v9;
}

void *sub_1A7921DDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 72, v8);
  if (swift_dynamicCast())
  {
    v11 = v26[0];
    v12 = v26[1];
    v13 = sub_1A793D7B8();
    sub_1A78C0AFC(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v14 = swift_allocObject();
  v25 = xmmword_1A79414F0;
  *(v14 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B168])
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  *(v14 + 32) = sub_1A793D958();
  *(v14 + 40) = v15;
  v16 = sub_1A793DAF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78D8, "65");
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  if (!*MEMORY[0x1E697B250])
  {
    goto LABEL_11;
  }

  *(inited + 32) = sub_1A793D958();
  *(inited + 40) = v18;
  *(inited + 72) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a3, a5);
  sub_1A78FC074(inited);
  swift_setDeallocating();
  sub_1A7922128(inited + 32);
  v20 = sub_1A793D878();

  v26[0] = 0;
  v21 = [a1 sign:v13 algorithms:v16 parameters:v20 error:v26];

  v22 = v26[0];
  if (v21)
  {
    v13 = sub_1A793D7D8();
  }

  else
  {
    v23 = v22;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1A7922128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75B8, &qword_1A7941D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A79221B0(uint64_t a1, unint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED5F89A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED5FA2A0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = sub_1A78FC1A4(MEMORY[0x1E69E7CC0]);
  }

  sub_1A793DB18();
  sub_1A79345B0(v5);

  v11[0] = 0;
  v6 = objc_allocWithZone(MEMORY[0x1E69666E0]);
  v7 = sub_1A793D878();

  v8 = [v6 initWithToken:v4 LAContext:a1 parameters:v7 error:v11];

  v9 = v11[0];
  if (v11[0])
  {
    swift_willThrow();
    v9;
  }

  return v8;
}

unint64_t sub_1A7922338()
{
  result = qword_1EB2A6D90;
  if (!qword_1EB2A6D90)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D90);
  }

  return result;
}

uint64_t sub_1A7922430(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_35;
  }

  if (!(a6)())
  {
    goto LABEL_36;
  }

  v15 = ccmldsa_pub_ctx_init();
  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      result = a6(v15);
      if (result)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v16 != 2)
  {
    result = a6(v15);
    if (result)
    {
LABEL_27:
      v27 = ccmldsa_import_pubkey();
      if (v27)
      {
        v28 = v27;
        sub_1A78D6484();
        swift_allocError();
        *v29 = v28;
        *(v29 + 4) = 0;
        swift_willThrow();
        return sub_1A78C0AFC(a3, a4);
      }

      result = sub_1A78C0AFC(a3, a4);
      goto LABEL_30;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  v30 = a5;
  v31 = a2;
  v18 = *(a3 + 16);
  v19 = *(a3 + 24);

  a5 = sub_1A793D648();
  if (a5)
  {
    v20 = sub_1A793D678();
    if (__OFSUB__(v18, v20))
    {
      goto LABEL_33;
    }

    a5 += v18 - v20;
  }

  v21 = __OFSUB__(v19, v18);
  a2 = (v19 - v18);
  if (v21)
  {
    __break(1u);
LABEL_14:
    v31 = a2;
    a2 = ((a3 >> 32) - a3);
    if (a3 >> 32 >= a3)
    {
      v30 = a5;

      a5 = sub_1A793D648();
      if (!a5)
      {
        goto LABEL_18;
      }

      v22 = sub_1A793D678();
      if (!__OFSUB__(a3, v22))
      {
        a5 += a3 - v22;
        goto LABEL_18;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

LABEL_18:
  v23 = sub_1A793D668();
  if (v23 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = v23;
  }

  v25 = v24 + a5;
  if (a5)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  sub_1A79226E8(a5, v26, v8, a7);
  result = sub_1A78C0AFC(a3, a4);
  if (!v7)
  {
    a5 = v30;
    a2 = v31;
LABEL_30:
    *a2 = a5;
  }

  return result;
}

uint64_t sub_1A79226E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
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
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

void (*sub_1A7922780(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t *)))(void *, uint64_t *)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1())
  {
    goto LABEL_14;
  }

  v9 = ccmldsa_seed_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  v15 = off_1ED5F8A18;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v9, 0);
      v10 = v15;
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_8:
  v16 = v10;
  if (!a1())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v11 = ccmldsa_sizeof_full_ctx();
  v12 = ccrng();
  if (!v12)
  {
    goto LABEL_16;
  }

  a2(v11, &v16, v12, v11);
  if (!v4)
  {

    memset(v17, 0, sizeof(v17));
    v18 = 1;

    a4 = sub_1A7922958(v13, v17, a3, a4);
  }

  return a4;
}

uint64_t sub_1A7922958(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t *))
{
  v8 = a1;
  v41[4] = *MEMORY[0x1E69E9840];
  *&v39 = a1;
  if (!(a3)())
  {
    goto LABEL_21;
  }

  v9 = ccmldsa_seed_nbytes_params();
  v10 = swift_beginAccess();
  if (*(v8 + 16) != v9)
  {
    sub_1A78D6484();
    swift_allocError();
    *v16 = 1;
    *(v16 + 4) = 1;
    swift_willThrow();

    return v8;
  }

  if (!a3(v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = ccmldsa_sizeof_full_ctx();
  MEMORY[0x1EEE9AC00](v11);
  sub_1A78C05E8(v12, a4);
  if (!v4)
  {
    if ((a3)())
    {
      v13 = ccmldsa_pubkey_nbytes_params();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = v13;
        if (v13)
        {
          v15 = sub_1A793DB28();
          *(v15 + 16) = v14;
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }

        if (ccmldsa_public_ctx())
        {
          v17 = ccmldsa_export_pubkey();
          if (v17)
          {
            v18 = v17;
            sub_1A78D6484();
            swift_allocError();
            *v19 = v18;
            *(v19 + 4) = 0;
            swift_willThrow();
            *(v15 + 16) = v14;

            return v8;
          }

          *(v15 + 16) = v14;
          v21 = sub_1A78C0DCC(v15);
          v23 = v22;

          v24 = ccsha3_256_di();
          if (v24)
          {
            v25 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
            inited = swift_initStackObject();
            getDigestSizeForDigestInfo();
            v27 = swift_slowAlloc();
            ccdigest_init();
            *(inited + 16) = v25;
            *(inited + 24) = v27;
            *&v37 = inited;
            sub_1A78C0990(v21, v23);
            sub_1A791D828(v21, v23, &v37);
            sub_1A78C0AFC(v21, v23);
            sub_1A78BD4B0(&v39);

            v28 = v39;
            v29 = v40;
            if ((a2[2] & 1) != 0 || (v30 = a2[1], v39 = *a2, v40 = v30, v37 = v28, v38 = v29, sub_1A78CBAB0(&v37, &v39, &v39, v41, &v36), v36 == 1))
            {
              *(&v40 + 1) = &type metadata for SHA3_256Digest;
              v41[0] = sub_1A790CAC0();
              v31 = swift_allocObject();
              *&v39 = v31;
              *(v31 + 16) = v28;
              *(v31 + 32) = v29;
              v32 = __swift_project_boxed_opaque_existential_1(&v39, &type metadata for SHA3_256Digest);
              v33 = v32[1];
              v37 = *v32;
              v38 = v33;
              sub_1A793D698();
              swift_allocObject();
              sub_1A793D638();
              __swift_destroy_boxed_opaque_existential_1(&v39);
              *(&v40 + 1) = &type metadata for SecureBytes;
              v41[0] = sub_1A78C7DD0();
              *&v39 = v8;
              v34 = *__swift_project_boxed_opaque_existential_1(&v39, &type metadata for SecureBytes);
              swift_beginAccess();
              sub_1A78C2D58((v34 + 32), (v34 + 32 + *(v34 + 16)), &v36);
              sub_1A78C0AFC(v21, v23);
              v8 = v36;
              __swift_destroy_boxed_opaque_existential_1(&v39);
            }

            else
            {

              sub_1A78D6484();
              swift_allocError();
              *v35 = 4;
              *(v35 + 4) = 1;
              swift_willThrow();
              sub_1A78C0AFC(v21, v23);
            }

            return v8;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t (*sub_1A7922E04(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t *), uint64_t (*a6)(void)))(void)
{
  v62[1] = *MEMORY[0x1E69E9840];
  sub_1A7923348(a1, a2, a4, a5);
  if (v6)
  {
    v11 = a1;
    v12 = a2;
LABEL_3:
    sub_1A78C0AFC(v11, v12);
    return a6;
  }

  result = a6();
  if (!result)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v14 = ccmldsa_pubkey_nbytes_params();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  a6 = v14;
  if (v14)
  {
    v15 = sub_1A793DB28();
    *(v15 + 16) = a6;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_51;
  }

  v16 = ccmldsa_export_pubkey();
  if (v16)
  {
    v17 = v16;
    sub_1A78D6484();
    swift_allocError();
    *v18 = v17;
    *(v18 + 4) = 0;
    swift_willThrow();
    *(v15 + 16) = a6;

    sub_1A78C0AFC(a1, a2);

    return a6;
  }

  *(v15 + 16) = a6;
  v19 = sub_1A78C0DCC(v15);
  v21 = v20;

  result = ccsha3_256_di();
  if (result)
  {
    v22 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v24 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v22;
    *(inited + 24) = v24;
    *&v58 = inited;
    sub_1A78C0990(v19, v21);
    sub_1A791D828(v19, v21, &v58);
    v55 = v21;
    v56 = v19;
    sub_1A78C0AFC(v19, v21);
    sub_1A78BD4B0(&v60);

    v25 = v60;
    a6 = *(&v61 + 1);
    v26 = v61;
    if ((a3[2] & 1) == 0)
    {
      v27 = a3[1];
      v60 = *a3;
      v61 = v27;
      v58 = v25;
      v59 = __PAIR128__(a6, v26);
      sub_1A78CBAB0(&v58, &v60, &v60, v62, v57);
      if (LOBYTE(v57[0]) != 1)
      {
        sub_1A78C0AFC(a1, a2);
        sub_1A78D6484();
        swift_allocError();
        *v47 = 4;
        *(v47 + 4) = 1;
        swift_willThrow();
        v12 = v55;
        v11 = v56;
        goto LABEL_3;
      }
    }

    *(&v61 + 1) = &type metadata for SHA3_256Digest;
    v62[0] = sub_1A790CAC0();
    v28 = swift_allocObject();
    *&v60 = v28;
    *(v28 + 16) = v25;
    *(v28 + 32) = v26;
    *(v28 + 40) = a6;
    v29 = __swift_project_boxed_opaque_existential_1(&v60, &type metadata for SHA3_256Digest);
    v30 = v29[1];
    v58 = *v29;
    v59 = v30;
    sub_1A793D698();
    swift_allocObject();
    sub_1A793D638();
    __swift_destroy_boxed_opaque_existential_1(&v60);
    *(&v61 + 1) = MEMORY[0x1E6969080];
    v62[0] = MEMORY[0x1E6969078];
    *&v60 = a1;
    *(&v60 + 1) = a2;
    v31 = __swift_project_boxed_opaque_existential_1(&v60, MEMORY[0x1E6969080]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        memset(v57, 0, 14);
        v35 = v57;
        goto LABEL_43;
      }

      v36 = *(v32 + 16);
      v37 = *(v32 + 24);
      v38 = sub_1A793D648();
      if (v38)
      {
        v39 = sub_1A793D678();
        if (__OFSUB__(v36, v39))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v38 += v36 - v39;
      }

      v40 = __OFSUB__(v37, v36);
      v41 = v37 - v36;
      if (!v40)
      {
        v42 = sub_1A793D668();
        if (v42 >= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v42;
        }

        v44 = &v38[v43];
        if (v38)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        goto LABEL_30;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v34)
    {
      v57[0] = *v31;
      LOWORD(v57[1]) = v33;
      BYTE2(v57[1]) = BYTE2(v33);
      BYTE3(v57[1]) = BYTE3(v33);
      BYTE4(v57[1]) = BYTE4(v33);
      BYTE5(v57[1]) = BYTE5(v33);
      v35 = v57 + BYTE6(v33);
LABEL_43:
      sub_1A78C2D58(v57, v35, &v58);
      v46 = v56;
      goto LABEL_44;
    }

    v48 = v32;
    v49 = v32 >> 32;
    v50 = v49 - v48;
    if (v49 >= v48)
    {
      v38 = sub_1A793D648();
      if (!v38)
      {
LABEL_36:
        v52 = sub_1A793D668();
        if (v52 >= v50)
        {
          v53 = v50;
        }

        else
        {
          v53 = v52;
        }

        v54 = &v38[v53];
        if (v38)
        {
          v45 = v54;
        }

        else
        {
          v45 = 0;
        }

LABEL_30:
        sub_1A78C2D58(v38, v45, &v58);
        v46 = v56;
LABEL_44:
        sub_1A78C0AFC(v46, v55);
        a6 = v58;
        __swift_destroy_boxed_opaque_existential_1(&v60);
        return a6;
      }

      v51 = sub_1A793D678();
      if (!__OFSUB__(v48, v51))
      {
        v38 += v48 - v51;
        goto LABEL_36;
      }

LABEL_49:
      __break(1u);
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1A7923348(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v6 = a3;
  v18[0] = a1;
  v18[1] = a2;
  result = (a3)(a1, a2);
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  result = ccmldsa_seed_nbytes_params();
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if (!result)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == result)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  if (BYTE6(a2) == result)
  {
LABEL_9:
    do
    {
      result = v6();
      if (!result)
      {
        goto LABEL_21;
      }

      v15 = ccmldsa_sizeof_full_ctx();
      v6 = v18;
      MEMORY[0x1EEE9AC00](v15);
      result = sub_1A78C05E8(v16, a4);
      if (!v4)
      {
        return result;
      }

      result = swift_unexpectedError();
      __break(1u);
LABEL_12:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_19;
      }
    }

    while (HIDWORD(a1) - a1 == result);
  }

LABEL_16:
  sub_1A78D6484();
  swift_allocError();
  *v17 = 1;
  *(v17 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_1A79234B8@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  result = a2();
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = ccmldsa_pubkey_nbytes_params();
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_14;
  }

  v6 = ccmldsa_export_pubkey();
  if (v6)
  {
    v7 = v6;
    sub_1A78D6484();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    swift_willThrow();
    *(v5 + 16) = v4;
  }

  else
  {
    *(v5 + 16) = v4;
    v9 = sub_1A78C0DCC(v5);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_1A79235C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a5())
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  ccmldsa_full_ctx_init();
  swift_beginAccess();
  if (!ccrng())
  {
    goto LABEL_9;
  }

  result = ccmldsa_derive_key_from_seed();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A79236F0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (!a4())
  {
LABEL_32:
    __break(1u);
  }

  ccmldsa_full_ctx_init();
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v7)
    {
      result = ccrng();
      if (result)
      {
        v9 = ccmldsa_derive_key_from_seed();
        if (!v9)
        {
          return sub_1A78C0AFC(a2, a3);
        }

        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_14;
  }

  if (v7 == 2)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);

    v12 = sub_1A793D648();
    if (v12)
    {
      v13 = sub_1A793D678();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_30;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v15 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {

      v12 = sub_1A793D648();
      if (!v12)
      {
LABEL_18:
        v17 = sub_1A793D668();
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        v19 = v18 + v12;
        if (v12)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        sub_1A79117CC(v12, v20, a1);
        return sub_1A78C0AFC(a2, a3);
      }

      v16 = sub_1A793D678();
      if (!__OFSUB__(a2, v16))
      {
        v12 += a2 - v16;
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    __break(1u);
    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = ccrng();
  if (result)
  {
    v9 = ccmldsa_derive_key_from_seed();
    if (!v9)
    {
      return sub_1A78C0AFC(a2, a3);
    }

LABEL_27:
    v21 = v9;
    sub_1A78D6484();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();
    return sub_1A78C0AFC(a2, a3);
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A79239D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v9 = sub_1A79118F4(a1, a3, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t MLDSA65.PrivateKey.seedRepresentation.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLDSA65.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1A78C0990(*v1, v3);
  v5 = sub_1A7923348(v4, v3, MEMORY[0x1E69E95A0], sub_1A7924D94);
  swift_beginAccess();
  sub_1A79234B8(v5 + 32, MEMORY[0x1E69E95A0], &v12);
  sub_1A78C0AFC(v4, v3);

  v6 = v12;
  v7 = v13;
  sub_1A78C0990(v12, v13);
  if (ccmldsa65())
  {
    v8 = ccmldsa_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1A78C05E8(v9, sub_1A7924C60);
    sub_1A78C0AFC(v6, v7);
    result = sub_1A78C0AFC(v12, v13);
    *a1 = v10;
  }

  else
  {
    __break(1u);
    sub_1A78C0AFC(v4, v7);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v12, v13);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7923E9C(uint64_t (*a1)(void))
{
  v2 = *v1;
  result = a1();
  if (result)
  {
    v4 = ccmldsa_pubkey_nbytes_params();
    v6[0] = sub_1A78CC5A0(v4);
    v6[1] = v5;
    sub_1A78CC640(v6, 0);
    sub_1A7924820(v6, v2 + 32, v4);
    return v6[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1A7924010@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t)@<X1>, void (*a3)(void *, uint64_t *)@<X2>, uint64_t *a4@<X8>))(void *, uint64_t *)
{
  result = sub_1A7922780(a1, a2, a1, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1A7924084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = a8;
  v14 = *a2;
  if (*a2)
  {
    result = a5();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = ccmldsa_pubkey_nbytes_params();
    v29 = sub_1A78CC5A0(v16);
    v30 = v17;
    sub_1A78CC640(&v29, 0);
    sub_1A7924820(&v29, v14 + 32, v16);
    v18 = v30;
    v19 = v29;
  }

  else
  {
    v19 = 0;
    v18 = 0xF000000000000000;
  }

  v20 = sub_1A7911C54(a1, v19, v18, a6, a3, a7, a4);
  if (v8)
  {
    sub_1A78CEEC8(v19, v18);
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1A78CEEC8(v19, v18);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    v28 = v31;
    *v31 = v24;
    v28[1] = v25;
    v28[2] = v26;
    v28[3] = v27;
  }

  return result;
}

uint64_t MLDSA87.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1A78C0990(*v1, v3);
  v5 = sub_1A7923348(v4, v3, MEMORY[0x1E69E95A8], sub_1A7924D30);
  swift_beginAccess();
  sub_1A79234B8(v5 + 32, MEMORY[0x1E69E95A8], &v12);
  sub_1A78C0AFC(v4, v3);

  v6 = v12;
  v7 = v13;
  sub_1A78C0990(v12, v13);
  if (ccmldsa87())
  {
    v8 = ccmldsa_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1A78C05E8(v9, sub_1A7924C98);
    sub_1A78C0AFC(v6, v7);
    result = sub_1A78C0AFC(v12, v13);
    *a1 = v10;
  }

  else
  {
    __break(1u);
    sub_1A78C0AFC(v4, v7);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v12, v13);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79244AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, uint64_t *a7@<X8>)
{
  if (!a4())
  {
    goto LABEL_12;
  }

  v14 = ccmldsa_seed_nbytes_params();
  v15 = *(*(*(a3 + 8) + 8) + 8);
  v16 = sub_1A793DB98();
  if (__OFADD__(v14, 32))
  {
    __break(1u);
  }

  else
  {
    if (v16 != v14 + 32)
    {
      sub_1A78D6484();
      swift_allocError();
      *v30 = 1;
      *(v30 + 4) = 1;
      swift_willThrow();
      return (*(*(a2 - 8) + 8))(a1, a2);
    }

    v46 = a6;
    v39 = a7;
    a3 = *(v15 + 8);
    v17 = sub_1A78C7370(a1, a2, a3);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_1A793D818();
      v40 = v22;
      v41 = v21;
      sub_1A78C0AFC(v19, v20);
      a3 = sub_1A78C7370(a1, a2, a3);
      v24 = v23;
      if (sub_1A793DB98() >= v14)
      {
        v25 = sub_1A793D818();
        v27 = v26;
        sub_1A78C0AFC(a3, v24);
        sub_1A78C0990(v25, v27);
        v28 = sub_1A791EBC0(v25, v27);
        sub_1A78BDA88((v28 + 32), v28 + 32 + *(v28 + 16), v42);
        a3 = v7;
        if (!v7)
        {
          v29 = v43;

          v44[1] = v42[1];
          v44[0] = v42[0];
          v45 = v29;
          v31 = sub_1A7922E04(v41, v40, v44, a5, v46, a5);
          v33 = v32;
          v35 = v34;
          v37 = v36;
          (*(*(a2 - 8) + 8))(a1, a2);
          result = sub_1A78C0AFC(v25, v27);
          *v39 = v31;
          v39[1] = v33;
          v39[2] = v35;
          v39[3] = v37;
          return result;
        }

        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = MEMORY[0x1AC55E410](a3);
  __break(1u);
  return result;
}

uint64_t _s9CryptoKit7MLDSA65O10PrivateKeyV30integrityCheckedRepresentation10Foundation4DataVvg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v10[0] = v1;
  v10[1] = v2;
  v9[3] = MEMORY[0x1E6969080];
  v9[4] = MEMORY[0x1E6969078];
  v9[0] = v4;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x1E6969080]);
  v6 = *v5;
  v7 = v5[1];
  sub_1A78C0990(v1, v2);
  sub_1A78C0990(v4, v3);
  sub_1A7900C14(v6, v7, v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v10[0];
}

uint64_t sub_1A7924820(uint64_t *a1, uint64_t a2, uint64_t a3)
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
        result = ccmldsa_export_pubkey();
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

    result = ccmldsa_export_pubkey();
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
    result = ccmldsa_export_pubkey();
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
  v15 = ccmldsa_export_pubkey();

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

uint64_t sub_1A7924C18(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = *a1;
  if (result)
  {
    result = sub_1A79236F0(result, *a3, *(a3 + 8), a5);
    if (!v5)
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

uint64_t sub_1A7924E08(uint64_t (*a1)(uint64_t, uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v4 + 32, v4 + 32 + *(v4 + 16), v7);
    v5 = v7[0];

    *v1 = v5;
    v4 = v5;
  }

  swift_beginAccess();
  return a1(v4 + 32, v4 + 32 + *(v4 + 16));
}

uint64_t MLKEM768.PublicKey.rawRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9580];

  return sub_1A79259AC(v0);
}

uint64_t MLKEM768.PrivateKey.seedRepresentation.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1A79251EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, void (*a4)(void *, uint64_t *)@<X5>, uint64_t (*a5)(uint64_t)@<X6>, void (*a6)(void *, uint64_t *)@<X7>, unint64_t *a7@<X8>)
{
  v10 = sub_1A7926844(a1, a2, a3, a4);
  v12 = v11;
  v18 = v11;
  v13 = sub_1A78C0990(v10, v11);
  if (a5(v13))
  {
    v14 = cckem_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v14);
    v16 = sub_1A78C05E8(v15, a6);
    sub_1A78C0AFC(v10, v12);
    result = sub_1A78C0AFC(v10, v18);
    *a7 = v16;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v10, v18);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A792534C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t *))
{
  v8 = a2;
  v9 = a1;
  v48[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A7926844(a1, a2, a4, a5);
  if (v6)
  {
    v12 = v9;
    v13 = v8;
LABEL_3:
    sub_1A78C0AFC(v12, v13);
    return v5;
  }

  v14 = v10;
  v15 = v11;
  result = ccsha3_256_di();
  if (result)
  {
    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v19 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    *&v44 = inited;
    sub_1A78C0990(v14, v15);
    sub_1A791D828(v14, v15, &v44);
    v42 = v15;
    sub_1A78C0AFC(v14, v15);
    sub_1A78BD4B0(&v46);

    v20 = v46;
    v5 = *(&v47 + 1);
    v21 = v47;
    if ((a3[2] & 1) != 0 || (v22 = a3[1], v46 = *a3, v47 = v22, v44 = v20, v45 = __PAIR128__(v5, v21), sub_1A78CBAB0(&v44, &v46, &v46, v48, v43), LOBYTE(v43[0]) == 1))
    {
      *(&v47 + 1) = &type metadata for SHA3_256Digest;
      v48[0] = sub_1A790CAC0();
      v23 = swift_allocObject();
      *&v46 = v23;
      *(v23 + 16) = v20;
      *(v23 + 32) = v21;
      *(v23 + 40) = v5;
      v24 = __swift_project_boxed_opaque_existential_1(&v46, &type metadata for SHA3_256Digest);
      v25 = v24[1];
      v44 = *v24;
      v45 = v25;
      sub_1A793D698();
      swift_allocObject();
      sub_1A793D638();
      __swift_destroy_boxed_opaque_existential_1(&v46);
      *(&v47 + 1) = MEMORY[0x1E6969080];
      v48[0] = MEMORY[0x1E6969078];
      *&v46 = v9;
      *(&v46 + 1) = v8;
      v26 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
      v27 = *v26;
      v9 = v26[1];
      v28 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (!v28)
        {
          v43[0] = *v26;
          LOWORD(v43[1]) = v9;
          BYTE2(v43[1]) = BYTE2(v9);
          BYTE3(v43[1]) = BYTE3(v9);
          BYTE4(v43[1]) = BYTE4(v9);
          BYTE5(v43[1]) = BYTE5(v9);
          v29 = v43 + BYTE6(v9);
          v30 = v43;
LABEL_30:
          sub_1A78C2D58(v30, v29, &v44);
          sub_1A78C0AFC(v14, v42);
          v5 = v44;
          __swift_destroy_boxed_opaque_existential_1(&v46);
          return v5;
        }

        v36 = v27;
        v37 = v27 >> 32;
        v5 = v37 - v36;
        if (v37 >= v36)
        {
          v8 = sub_1A793D648();
          if (!v8)
          {
LABEL_22:
            v39 = sub_1A793D668();
            if (v39 >= v5)
            {
              v40 = v5;
            }

            else
            {
              v40 = v39;
            }

            v41 = (v40 + v8);
            if (v8)
            {
              v29 = v41;
            }

            else
            {
              v29 = 0;
            }

            v30 = v8;
            goto LABEL_30;
          }

          v38 = sub_1A793D678();
          if (!__OFSUB__(v36, v38))
          {
            v8 += v36 - v38;
            goto LABEL_22;
          }

LABEL_34:
          __break(1u);
        }

        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v28 != 2)
      {
        memset(v43, 0, 14);
        v30 = v43;
        v29 = v43;
        goto LABEL_30;
      }

      v31 = *(v27 + 16);
      v32 = *(v27 + 24);
      v8 = sub_1A793D648();
      if (v8)
      {
        v33 = sub_1A793D678();
        if (__OFSUB__(v31, v33))
        {
          goto LABEL_33;
        }

        v8 += v31 - v33;
      }

      v34 = __OFSUB__(v32, v31);
      v5 = v32 - v31;
      if (!v34)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    sub_1A78C0AFC(v9, v8);
    sub_1A790CA04();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    v13 = v42;
    v12 = v14;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79258AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v10 = sub_1A7934078(a1, a4, a2, a5);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t MLKEM1024.PublicKey.rawRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9578];

  return sub_1A79259AC(v0);
}

uint64_t sub_1A79259AC(uint64_t (*a1)(void))
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!a1())
  {
    __break(1u);
  }

  v3 = cckem_pubkey_nbytes_info();
  v7[0] = sub_1A78CC5A0(v3);
  v7[1] = v4;
  sub_1A78CC640(v7, 0);
  v6 = v3;
  sub_1A790C51C(v7, v2 + 32, &v6);
  return v7[0];
}

uint64_t sub_1A7925AB8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (!ccrng())
  {
    __break(1u);
  }

  return sub_1A792666C(v5 + 32, a1, a2);
}

uint64_t sub_1A7925BB8@<X0>(uint64_t (*a3)(uint64_t)@<X2>, uint64_t x8_0@<X8>)
{
  v7 = *v4;
  if (!ccrng())
  {
    __break(1u);
  }

  return sub_1A792666C(v7 + 32, a3, x8_0);
}

uint64_t sub_1A7925CCC@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(uint64_t *)@<X0>, void (*a3)(void *, uint64_t *)@<X1>)
{
  v7 = ccrng();
  if (!v7)
  {
    __break(1u);
  }

  result = sub_1A79269E4(v7, a2, a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v11;
  }

  return result;
}

uint64_t sub_1A7925DE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  if (*a2)
  {
    result = a5();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = cckem_pubkey_nbytes_info();
    v30 = sub_1A78CC5A0(v16);
    v31 = v17;
    sub_1A78CC640(&v30, 0);
    v29 = v16;
    sub_1A790C51C(&v30, v14 + 32, &v29);
    v18 = v31;
    v19 = v30;
  }

  else
  {
    v19 = 0;
    v18 = 0xF000000000000000;
  }

  v20 = sub_1A79343D8(a1, v19, v18, a6, a3, a7, a4);
  if (v8)
  {
    sub_1A78CEEC8(v19, v18);
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1A78CEEC8(v19, v18);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a8 = v24;
    a8[1] = v25;
    a8[2] = v26;
    a8[3] = v27;
  }

  return result;
}

uint64_t sub_1A7926090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, uint64_t *a7@<X8>)
{
  v14 = *(*(*(a3 + 8) + 8) + 8);
  v15 = sub_1A793DB98();
  if (!a4())
  {
    goto LABEL_14;
  }

  v16 = cckem_seed_nbytes_info();
  if (__OFADD__(v16, 32))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 != v16 + 32)
  {
    sub_1A790CA04();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  v41 = a5;
  v46 = a6;
  v17 = *(v14 + 8);
  v15 = sub_1A78C7370(a1, a2, v17);
  v19 = v18;
  if (!a4())
  {
    goto LABEL_15;
  }

  if (cckem_seed_nbytes_info() < 0)
  {
    goto LABEL_12;
  }

  v39 = a7;
  v40 = sub_1A793D818();
  v21 = v20;
  sub_1A78C0AFC(v15, v19);
  v22 = sub_1A78C7370(a1, a2, v17);
  v15 = v23;
  if (a4())
  {
    v24 = cckem_seed_nbytes_info();
    if (sub_1A793DB98() >= v24)
    {
      v25 = sub_1A793D818();
      v27 = v26;
      sub_1A78C0AFC(v22, v15);
      sub_1A78C0990(v25, v27);
      v28 = sub_1A791EBC0(v25, v27);
      sub_1A78BDA88((v28 + 32), v28 + 32 + *(v28 + 16), v42);
      v15 = v7;
      if (!v7)
      {
        v29 = v43;

        v44[1] = v42[1];
        v44[0] = v42[0];
        v45 = v29;
        v31 = sub_1A792534C(v40, v21, v44, v41, v46);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        (*(*(a2 - 8) + 8))(a1, a2);
        result = sub_1A78C0AFC(v25, v27);
        *v39 = v31;
        v39[1] = v33;
        v39[2] = v35;
        v39[3] = v37;
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = MEMORY[0x1AC55E410](v15);
  __break(1u);
  return result;
}

uint64_t sub_1A7926408@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(uint64_t *)@<X2>, void (*a3)(void *, uint64_t *)@<X3>)
{
  v7 = ccrng();
  if (!v7)
  {
    __break(1u);
  }

  result = sub_1A79269E4(v7, a2, a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v11;
  }

  return result;
}

uint64_t sub_1A7926508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  if (a5(a1, a2, a3, a4))
  {
    v16 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v16);
    sub_1A78C05E8(v17, a6);
    if (!v9)
    {
      sub_1A7926F58(a1, a2, a7, a8, a9);
    }
  }

  else
  {
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A792666C@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = (a3)();
  if (result)
  {
    result = cckem_shared_key_nbytes_info();
    v9 = result;
    if (qword_1ED5F8A30 != -1)
    {
      result = swift_once();
    }

    v10 = off_1ED5F8A18;
    v20[0] = off_1ED5F8A18;
    if (!v9)
    {

      if (a3(v17))
      {
LABEL_7:
        v12 = cckem_encapsulated_key_nbytes_info();
        v20[0] = sub_1A78CC5A0(v12);
        v20[1] = v13;
        sub_1A78CC640(v20, 0);
        v21 = *v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          sub_1A78C2BF8((v10 + 4), v10 + v10[2] + 32, &v19);
          v14 = v19;

          v10 = v14;
        }

        swift_beginAccess();
        sub_1A7927360(&v21, a1, (v10 + 4));
        if (v4)
        {

          v16 = *(&v21 + 1);
          v15 = v21;
          return sub_1A78C0AFC(v15, v16);
        }

LABEL_13:
        v18 = v21;
        *a4 = v10;
        *(a4 + 8) = v18;
        sub_1A78C0990(v18, *(&v18 + 1));
        v16 = v18 >> 64;
        v15 = v18;
        return sub_1A78C0AFC(v15, v16);
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {

      v11 = sub_1A78E00C8(v9, 0);
      v10 = v20[0];
      if (a3(v11))
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7926844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  if (!a3())
  {
    goto LABEL_13;
  }

  v7 = cckem_sizeof_full_ctx();
  MEMORY[0x1EEE9AC00](v7);
  sub_1A78C05E8(v8, a4);
  if (!v4)
  {
    if (!a3())
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = cckem_pubkey_nbytes_info();
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = v9;
      if (v9)
      {
        v11 = sub_1A793DB28();
        *(v11 + 16) = v10;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      if (!cckem_public_ctx())
      {
LABEL_15:
        __break(1u);
      }

      if (!cckem_export_pubkey())
      {
        *(v11 + 16) = v10;
        v12 = sub_1A78C0DCC(v11);

        return v12;
      }
    }

    __break(1u);
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A79269E4(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v71 = *MEMORY[0x1E69E9840];
  if (!(a2)())
  {
    goto LABEL_52;
  }

  v8 = cckem_seed_nbytes_info();
  *&v67 = sub_1A78CC5A0(v8);
  *(&v67 + 1) = v9;
  v10 = sub_1A78CC640(&v67, 0);
  v70 = v67;
  if (!a2(v10))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  v11 = cckem_sizeof_full_ctx();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v12 = v11;
  if (HIDWORD(v11))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v60 = a3;
  v61 = a4;
  v63 = v8;
  if (v11)
  {
    v13 = (v11 - 1) | ((v11 - 1) >> 1) | (((v11 - 1) | ((v11 - 1) >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v15 = v14 | HIWORD(v14);
    if (v15 == -1)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = (v15 + 1);
    }
  }

  else
  {
    v16 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v16;
  v18 = _swift_stdlib_malloc_size(v17);
  v19 = sub_1A78C0CEC(v12, (v17 + 4), v17 + v18);
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = v19;
  v22 = v20;

  if (!a2(v23))
  {
    goto LABEL_55;
  }

  cckem_full_ctx_init();
  sub_1A792781C(&v70, v22 + v21, v63);
  if (v4)
  {

    sub_1A78C0AFC(v70, *(&v70 + 1));
    return v22;
  }

  swift_beginAccess();
  v17[2] = v12;

  v24 = v70;
  sub_1A78C0990(v70, *(&v70 + 1));
  v26 = sub_1A7926844(v24, *(&v24 + 1), v60, v61);
  v28 = v27;
  result = ccsha3_256_di();
  if (result)
  {
    v29 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v31 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v29;
    *(inited + 24) = v31;
    *&v66[0] = inited;
    sub_1A78C0990(v26, v28);
    sub_1A791D828(v26, v28, v66);
    sub_1A78C0AFC(v26, v28);
    sub_1A78BD4B0(&v67);

    v32 = sub_1A790CAC0();
    v62 = v68;
    v64 = v67;
    *(&v68 + 1) = &type metadata for SHA3_256Digest;
    v69 = v32;
    v33 = swift_allocObject();
    *&v67 = v33;
    *(v33 + 16) = v64;
    *(v33 + 32) = v62;
    v34 = __swift_project_boxed_opaque_existential_1(&v67, &type metadata for SHA3_256Digest);
    v35 = v34[1];
    v66[0] = *v34;
    v66[1] = v35;
    sub_1A793D698();
    swift_allocObject();
    sub_1A793D638();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    *(&v68 + 1) = MEMORY[0x1E6969080];
    v69 = MEMORY[0x1E6969078];
    v67 = v24;
    v36 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        memset(v65, 0, 14);
        v41 = v65;
        v40 = v65;
        goto LABEL_44;
      }

      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      v44 = sub_1A793D648();
      if (v44)
      {
        v45 = sub_1A793D678();
        if (__OFSUB__(v42, v45))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v44 += v42 - v45;
      }

      v46 = __OFSUB__(v43, v42);
      v47 = v43 - v42;
      if (!v46)
      {
        v48 = sub_1A793D668();
        if (v48 >= v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = v48;
        }

        v50 = &v44[v49];
        if (v44)
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        sub_1A78C2D58(v44, v51, v66);
        sub_1A78C0AFC(v26, v28);
        goto LABEL_45;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (!v39)
    {
      v65[0] = *v36;
      LOWORD(v65[1]) = v38;
      BYTE2(v65[1]) = BYTE2(v38);
      BYTE3(v65[1]) = BYTE3(v38);
      BYTE4(v65[1]) = BYTE4(v38);
      BYTE5(v65[1]) = BYTE5(v38);
      v40 = v65 + BYTE6(v38);
      v41 = v65;
LABEL_44:
      sub_1A78C2D58(v41, v40, v66);
      sub_1A78C0AFC(v26, v28);
LABEL_45:
      v22 = *&v66[0];
      __swift_destroy_boxed_opaque_existential_1(&v67);
      sub_1A78C0AFC(v24, *(&v24 + 1));
      return v22;
    }

    v52 = v37;
    v53 = v37 >> 32;
    v54 = v53 - v52;
    if (v53 >= v52)
    {
      v55 = sub_1A793D648();
      if (!v55)
      {
LABEL_36:
        v57 = sub_1A793D668();
        if (v57 >= v54)
        {
          v58 = v54;
        }

        else
        {
          v58 = v57;
        }

        v59 = (v58 + v55);
        if (v55)
        {
          v40 = v59;
        }

        else
        {
          v40 = 0;
        }

        v41 = v55;
        goto LABEL_44;
      }

      v56 = sub_1A793D678();
      if (!__OFSUB__(v52, v56))
      {
        v55 += v52 - v56;
        goto LABEL_36;
      }

      goto LABEL_51;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

void *sub_1A7926F58@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  result = a3();
  if (!result)
  {
    goto LABEL_13;
  }

  v11 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v13[0] = off_1ED5F8A18;
  if (!v11)
  {

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1A78E00C8(v11, 0);
  v12 = v13[0];
LABEL_8:
  v14 = v12;
  v13[3] = MEMORY[0x1E6969080];
  v13[4] = MEMORY[0x1E6969078];
  v13[0] = a1;
  v13[1] = a2;
  MEMORY[0x1EEE9AC00](v12);
  sub_1A78C0990(a1, a2);
  sub_1A7924E08(a4);
  if (v5)
  {
  }

  else
  {
    *a5 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1A79270CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (!a4())
  {
LABEL_32:
    __break(1u);
  }

  cckem_full_ctx_init();
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v7)
    {
      result = ccrng();
      if (result)
      {
        v9 = cckem_derive_key_from_seed();
        if (!v9)
        {
          return sub_1A78C0AFC(a2, a3);
        }

        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_14;
  }

  if (v7 == 2)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);

    v12 = sub_1A793D648();
    if (v12)
    {
      v13 = sub_1A793D678();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_30;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v15 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {

      v12 = sub_1A793D648();
      if (!v12)
      {
LABEL_18:
        v17 = sub_1A793D668();
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        v19 = v18 + v12;
        if (v12)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        sub_1A7933F50(v12, v20, a1);
        return sub_1A78C0AFC(a2, a3);
      }

      v16 = sub_1A793D678();
      if (!__OFSUB__(a2, v16))
      {
        v12 += a2 - v16;
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    __break(1u);
    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = ccrng();
  if (result)
  {
    v9 = cckem_derive_key_from_seed();
    if (!v9)
    {
      return sub_1A78C0AFC(a2, a3);
    }

LABEL_27:
    v21 = v9;
    sub_1A78D6484();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();
    return sub_1A78C0AFC(a2, a3);
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t *sub_1A7927360(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      result = sub_1A78C0AFC(v6, v5);
      LOWORD(v26) = v5;
      BYTE2(v26) = BYTE2(v5);
      HIBYTE(v26) = BYTE3(v5);
      LOBYTE(v27) = BYTE4(v5);
      HIBYTE(v27) = BYTE5(v5);
      if (a3)
      {
        result = cckem_encapsulate();
        if (result)
        {
          v8 = result;
          sub_1A78D6484();
          swift_allocError();
          *v9 = v8;
          *(v9 + 4) = 0;
          result = swift_willThrow();
        }

        *v4 = v6;
        v4[1] = v26 | ((v27 | (BYTE6(v5) << 16)) << 32);
        return result;
      }

      __break(1u);
      goto LABEL_40;
    }

    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v6, v5);
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v19 < v6)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (sub_1A793D648() && __OFSUB__(v6, sub_1A793D678()))
      {
LABEL_38:
        __break(1u);
      }

      sub_1A793D698();
      swift_allocObject();
      v22 = sub_1A793D628();

      v17 = v22;
      v19 = v6 >> 32;
    }

    if (v19 >= v6)
    {

      result = sub_1A793D648();
      if (!result)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (!__OFSUB__(v6, sub_1A793D678()))
      {
        result = sub_1A793D668();
        if (!a3)
        {
LABEL_44:
          __break(1u);
          return result;
        }

        v23 = cckem_encapsulate();
        if (v23)
        {
          v24 = v23;
          sub_1A78D6484();
          swift_allocError();
          *v25 = v24;
          *(v25 + 4) = 0;
          swift_willThrow();
        }

        v16 = v17 | 0x4000000000000000;
        *v4 = v6;
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v7 == 2)
  {

    sub_1A78C0AFC(v6, v5);
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = v6;
    v10 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v6 + 16);
    v13 = *(v11 + 24);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!__OFSUB__(v12, sub_1A793D678()))
    {
      if (!__OFSUB__(v13, v12))
      {
        result = sub_1A793D668();
        if (!a3)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        result = cckem_encapsulate();
        if (result)
        {
          v14 = result;
          sub_1A78D6484();
          swift_allocError();
          *v15 = v14;
          *(v15 + 4) = 0;
          result = swift_willThrow();
        }

        v16 = v10 | 0x8000000000000000;
        *v4 = v11;
LABEL_31:
        v4[1] = v16;
        return result;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!a3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = cckem_encapsulate();
  if (result)
  {
    v20 = result;
    sub_1A78D6484();
    swift_allocError();
    *v21 = v20;
    *(v21 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A792781C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1A78C0AFC(v5, v4);
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      HIBYTE(v23) = BYTE3(v4);
      LOBYTE(v24) = BYTE4(v4);
      HIBYTE(v24) = BYTE5(v4);
      result = cckem_generate_key_with_seed();
      if (result)
      {
        v8 = result;
        sub_1A78D6484();
        swift_allocError();
        *v9 = v8;
        *(v9 + 4) = 0;
        result = swift_willThrow();
      }

      *a1 = v5;
      a1[1] = v23 | ((v24 | (BYTE6(v4) << 16)) << 32);
      return result;
    }

    v14 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v5 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v16 < v5)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
      {
LABEL_32:
        __break(1u);
      }

      sub_1A793D698();
      swift_allocObject();
      v19 = sub_1A793D628();

      v14 = v19;
      v16 = v5 >> 32;
    }

    if (v16 >= v5)
    {

      result = sub_1A793D648();
      if (result)
      {
        if (!__OFSUB__(v5, sub_1A793D678()))
        {
          sub_1A793D668();
          key_with_seed = cckem_generate_key_with_seed();
          if (key_with_seed)
          {
            v21 = key_with_seed;
            sub_1A78D6484();
            swift_allocError();
            *v22 = v21;
            *(v22 + 4) = 0;
            swift_willThrow();
          }

          *a1 = v5;
          a1[1] = v14 | 0x4000000000000000;
          return result;
        }

        goto LABEL_30;
      }

LABEL_34:
      __break(1u);
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 == 2)
  {

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v5 + 16);
    result = sub_1A793D648();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (__OFSUB__(v11, sub_1A793D678()))
    {
      __break(1u);
      goto LABEL_29;
    }

    sub_1A793D668();
    result = cckem_generate_key_with_seed();
    if (result)
    {
      v12 = result;
      sub_1A78D6484();
      swift_allocError();
      *v13 = v12;
      *(v13 + 4) = 0;
      result = swift_willThrow();
    }

    *a1 = v5;
    a1[1] = v10 | 0x8000000000000000;
  }

  else
  {
    result = cckem_generate_key_with_seed();
    if (result)
    {
      v17 = result;
      sub_1A78D6484();
      swift_allocError();
      *v18 = v17;
      *(v18 + 4) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A7927C8C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = *a1;
  if (result)
  {
    result = sub_1A79270CC(result, *a3, *(a3 + 8), a5);
    if (!v5)
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

uint64_t Kyber768.PublicKey.dataRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9570];

  return sub_1A79286F0(v0);
}

uint64_t Kyber768.PrivateKey.dataRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9570];

  return sub_1A7928E68(v0);
}

uint64_t Kyber768.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v1 = MEMORY[0x1E69E9570];

  return sub_1A79293A8(v1, sub_1A7929E7C, a1);
}

uint64_t sub_1A7928300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void *, uint64_t *)@<X4>, uint64_t *a5@<X8>)
{
  result = a3();
  if (result)
  {
    v11 = cckem_sizeof_pub_ctx();
    MEMORY[0x1EEE9AC00](v11);
    v13 = sub_1A78C0EA8(v12, a4);
    if (!v5)
    {
      *a5 = v13;
    }

    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A79283E0(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = (a5)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = cckem_pub_ctx_init();
  result = a5(v8);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v9 = result;
    sub_1A78D6484();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A79284B8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  result = *a1;
  if (result)
  {
    return sub_1A7928508(result, a3, a2, a4, a5, a6, &v9, a7, a8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7928508(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(void), uint64_t a9)
{
  result = a8();
  if (result)
  {
    v13 = cckem_pub_ctx_init();
    MEMORY[0x1EEE9AC00](v13);
    result = sub_1A793D6A8();
    if (v9)
    {
      *a7 = v9;
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

uint64_t sub_1A79285EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
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
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber1024.PublicKey.dataRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9568];

  return sub_1A79286F0(v0);
}

uint64_t sub_1A79286F0(uint64_t (*a1)(void))
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!a1())
  {
    __break(1u);
  }

  v3 = cckem_pubkey_nbytes_info();
  v7[0] = sub_1A78CC5A0(v3);
  v7[1] = v4;
  sub_1A78CC640(v7, 0);
  v6 = v3;
  sub_1A790C51C(v7, v2 + 32, &v6);
  return v7[0];
}

uint64_t sub_1A79287DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v8[3] = type metadata accessor for Rng();
  v8[4] = &off_1F1A796A0;
  v8[0] = swift_allocObject();
  sub_1A7928888(&v7, a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *sub_1A7928888@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  result = a2();
  if (!result)
  {
    goto LABEL_13;
  }

  v10 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  *&v17 = off_1ED5F8A18;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v10, 0);
      v11 = v17;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v18 = v11;
  result = a2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = cckem_encapsulated_key_nbytes_info();
  *&v16 = sub_1A78CC5A0(v12);
  *(&v16 + 1) = v13;
  v14 = sub_1A78CC640(&v16, 0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v14);
  sub_1A7924E08(a3);
  if (v4)
  {

    result = sub_1A78C0AFC(v17, *(&v17 + 1));
    *a1 = v4;
  }

  else
  {
    v15 = v17;
    *a4 = v18;
    *(a4 + 8) = v15;
    sub_1A78C0990(v15, *(&v15 + 1));
    return sub_1A78C0AFC(v15, *(&v15 + 1));
  }

  return result;
}

uint64_t sub_1A7928A74@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v9 = type metadata accessor for Rng();
  v10 = &off_1F1A796A0;
  v8[0] = swift_allocObject();
  sub_1A7928888(&v7, a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1A7928B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, void (*a4)(void *, uint64_t *)@<X4>, unint64_t *a5@<X8>)
{
  result = a3();
  if (result)
  {
    v11 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v11);
    v13 = sub_1A78C05E8(v12, a4);
    if (!v5)
    {
      *a5 = v13;
    }

    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A7928C40(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*result)
  {
    result = sub_1A793D6A8();
    if (!v7)
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

uint64_t sub_1A7928CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!a4())
  {
    goto LABEL_17;
  }

  v7 = cckem_privkey_nbytes_info();
  if (!a4())
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = cckem_pubkey_nbytes_info();
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_19:
    result = a4();
    if (result)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 != a2 - a1)
  {
LABEL_13:
    v11 = 1;
    v12 = 1;
    goto LABEL_14;
  }

  result = a4();
  if (!result)
  {
    goto LABEL_20;
  }

  LODWORD(result) = cckem_import_privkey();
  if (!result)
  {
    result = cckem_public_ctx();
    if (result)
    {
      result = a4();
      if (result)
      {
        result = cckem_import_pubkey();
        if (!result)
        {
          return result;
        }

        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
      return result;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v11 = result;
  v12 = 0;
LABEL_14:
  sub_1A78D6484();
  swift_allocError();
  *v13 = v11;
  *(v13 + 4) = v12;
  return swift_willThrow();
}

uint64_t Kyber1024.PrivateKey.dataRepresentation.getter()
{
  v0 = MEMORY[0x1E69E9568];

  return sub_1A7928E68(v0);
}

uint64_t sub_1A7928E68(uint64_t (*a1)(void))
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (!a1())
  {
    goto LABEL_6;
  }

  v4 = cckem_privkey_nbytes_info();
  if (!a1())
  {
    goto LABEL_7;
  }

  v5 = cckem_pubkey_nbytes_info();
  v6 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v10[0] = sub_1A78CC5A0(v4 + v5);
  v10[1] = v7;
  sub_1A78CC640(v10, 0);
  v9 = v6;
  sub_1A7929970(v10, v3 + 32, &v9, v6);
  return v10[0];
}

uint64_t sub_1A7928F80@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void *, uint64_t *)@<X1>, unint64_t *a3@<X8>)
{
  v12 = type metadata accessor for Rng();
  v13 = &off_1F1A796A0;
  v11[0] = swift_allocObject();
  result = a1();
  if (result)
  {
    v8 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1A78C05E8(v9, a2);
    if (!v3)
    {
      *a3 = v10;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A7929054(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (*result)
  {
    result = a5();
    if (result)
    {
      cckem_full_ctx_init();
      v8 = a3[4];
      v9 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v10 = MEMORY[0x1EEE9AC00](v9);
      return (*(v8 + 8))(a6, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A792916C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void **, uint64_t, unint64_t, void *)@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  return sub_1A7929200((v11 + 32), a1, a2, a3, a4, a5);
}

void *sub_1A7929200@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, void (*a5)(void **, uint64_t, unint64_t, void *)@<X5>, void *a6@<X8>)
{
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  result = a4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v14 = off_1ED5F8A18;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v12, 0);
      v13 = v14;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v15 = v13;
  sub_1A78C0990(a2, a3);
  a5(&v15, a2, a3, v10);
  result = v15;
  if (v6)
  {
  }

  *a6 = v15;
  return result;
}

uint64_t Kyber1024.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v1 = MEMORY[0x1E69E9568];

  return sub_1A79293A8(v1, sub_1A7929F70, a1);
}

uint64_t sub_1A79293A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void *, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  if (!a1())
  {
    goto LABEL_12;
  }

  v6 = cckem_sizeof_pub_ctx();
  if (v6 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
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

  if (!cckem_public_ctx())
  {
    goto LABEL_13;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_11;
  }

  *(v8 + 16) = v7;
  if (!a1())
  {
    goto LABEL_14;
  }

  v9 = cckem_sizeof_pub_ctx();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1A78C0EA8(v10, a2);

  *a3 = v11;
  return result;
}

uint64_t sub_1A7929530@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t (*a3)(void *, uint64_t *)@<X3>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!(a2)())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v8 = cckem_sizeof_pub_ctx();
  if (v8 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  if (v8)
  {
    v10 = sub_1A793DB28();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
    goto LABEL_16;
  }

  v11 = cckem_export_pubkey();
  if (v11)
  {
    goto LABEL_13;
  }

  *(v10 + 16) = v9;
  if (!a2(v11, v12))
  {
    goto LABEL_17;
  }

  v13 = cckem_sizeof_pub_ctx();
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1A78C0EA8(v14, a3);
  if (v4)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v16 = v15;

    *a4 = v16;
  }

  return result;
}

uint64_t sub_1A7929718@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void *, uint64_t *)@<X3>, unint64_t *a3@<X8>)
{
  v12 = type metadata accessor for Rng();
  v13 = &off_1F1A796A0;
  v11[0] = swift_allocObject();
  result = a1();
  if (result)
  {
    v8 = cckem_sizeof_full_ctx();
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1A78C05E8(v9, a2);
    if (!v3)
    {
      *a3 = v10;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A792982C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, void (*a4)(void **, uint64_t, unint64_t, void *)@<X5>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  return sub_1A7929200((v11 + 32), a1, a2, a3, a4, a5);
}

uint64_t sub_1A79298F0@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t (*a2)(void *, uint64_t *)@<X3>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  return sub_1A7929530(v7 + 32, a1, a2, a3);
}

uint64_t sub_1A7929970(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v17 = a4;
    if (!v10)
    {
      sub_1A78C0AFC(v9, v8);
      LOWORD(v18) = v8;
      BYTE2(v18) = BYTE2(v8);
      HIBYTE(v18) = BYTE3(v8);
      LOBYTE(v19) = BYTE4(v8);
      HIBYTE(v19) = BYTE5(v8);
      if (!cckem_export_privkey())
      {
        if (!__OFSUB__(v17, *a3))
        {
          result = cckem_public_ctx();
          if (result)
          {
            result = cckem_export_pubkey();
            if (!result)
            {
              *a1 = v9;
              a1[1] = v18 | ((v19 | (BYTE6(v8) << 16)) << 32);
              return result;
            }

            goto LABEL_44;
          }

          goto LABEL_54;
        }

        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_37;
    }

    v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v9, v8);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v5 = v9;
    v4 = v9 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_27:
      if (v4 < v5)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      result = sub_1A793D648();
      if (result)
      {
        if (__OFSUB__(v5, sub_1A793D678()))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_1A793D668();
        if (cckem_export_privkey())
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFSUB__(v17, *a3))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        result = cckem_public_ctx();
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = cckem_export_pubkey();

        if (v16)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        *a1 = v9;
        a1[1] = v14 | 0x4000000000000000;
        return result;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v4 < v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_1A793D648() && __OFSUB__(v9, sub_1A793D678()))
    {
LABEL_51:
      __break(1u);
    }

LABEL_26:
    sub_1A793D698();
    swift_allocObject();
    v15 = sub_1A793D628();

    v14 = v15;
    goto LABEL_27;
  }

  if (v10 == 2)
  {

    sub_1A78C0AFC(v9, v8);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v13 = *(v9 + 16);
    result = sub_1A793D648();
    if (!result)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (__OFSUB__(v13, sub_1A793D678()))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_1A793D668();
    if (cckem_export_privkey())
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    result = cckem_public_ctx();
    if (!result)
    {
      goto LABEL_56;
    }

    result = cckem_export_pubkey();
    if (result)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *a1 = v9;
    a1[1] = v12 | 0x8000000000000000;
  }

  else
  {
    if (cckem_export_privkey())
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    result = cckem_public_ctx();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    result = cckem_export_pubkey();
    if (result)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1A792A138(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = a2;
  v5[1] = *(v3 + 24);
  v6 = a1;
  return sub_1A78C9770(a3, v5);
}

uint64_t sub_1A792A1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v11 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v11);
  v14[2] = v8;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v10;
  v14[6] = v9;
  return (*(v12 + 8))(a3, v14, v11, v12);
}

uint64_t sub_1A792A368@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  *a5 = xmmword_1A793F230;
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
          sub_1A793D768();
          sub_1A793B930(v8, a2);
          v20[3] = MEMORY[0x1E6969080];
          v20[4] = MEMORY[0x1E6969078];
          v20[0] = a3;
          v20[1] = a4;
          v16 = __swift_project_boxed_opaque_existential_1(v20, MEMORY[0x1E6969080]);
          v17 = *v16;
          v18 = v16[1];
          sub_1A78C0990(a3, a4);
          sub_1A7900C14(v17, v18, a5);
          return __swift_destroy_boxed_opaque_existential_1(v20);
        }

        goto LABEL_21;
      }

LABEL_19:
      v19 = sub_1A793D9D8();
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

uint64_t P256.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (!v6)
  {

    sub_1A78D6484();
    swift_allocError();
    *v32 = 1;
    *(v32 + 4) = 1;
    return swift_willThrow();
  }

  v34 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v36);
  v7 = v2;

  v38 = v36;
  v35 = v37;
  v8 = sub_1A792A7D8(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v36, v37);
  v10 = v9;
  v11 = 0;
  while (2)
  {
    v12 = sub_1A78FE770(v11, 1);
    v14 = v13;
    v15 = sub_1A792B19C(v8, v10, 0x74616469646E6163, 0xE900000000000065, v12, v13, 0x20uLL, 0x10uLL, sub_1A78D0038);
    v17 = v16;
    sub_1A78C0AFC(v12, v14);
    result = sub_1A791EBC0(v15, v17);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A78F5C2C(v18);
    }

    v18[32] = v19;
    v20 = (v18 + 32);
    v21 = *(v18 + 2);
    do
    {
      if (!v21)
      {

        goto LABEL_6;
      }

      v22 = *v20++;
      --v21;
    }

    while (!v22);
    v23 = sub_1A793DB18();
    v24 = sub_1A78C0DCC(v23);
    v26 = v25;

    v36 = v24;
    v37 = v26;
    result = MEMORY[0x1AC55DAD0](v27);
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    MEMORY[0x1EEE9AC00](v28);
    v30 = sub_1A78C05E8(v29, sub_1A792BCE0);
    if (!v7)
    {
      v33 = v30;
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v38, v35);
      sub_1A78C0AFC(v36, v37);

      *v34 = v33;
      return result;
    }

    sub_1A78C0AFC(v36, v37);
    MEMORY[0x1AC55E410](v7);

    v7 = 0;
LABEL_6:
    if (++v11 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v31 = 1;
  *(v31 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v8, v10);
  return sub_1A78C0AFC(v38, v35);
}

uint64_t sub_1A792A7D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x10uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v41 + 1) = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  *&v40 = v10;
  *(&v40 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17, &v43);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  sub_1A793B930(a3, a4);
  *(&v41 + 1) = v13;
  v42 = v14;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v40, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20, &v43);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v21 = v43;
  sub_1A78F3E70(v43, *(&v43 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();

  sub_1A7901B88(v22, &v39);
  v23 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v23, v24);
  v25 = v39;
  sub_1A78BD4B0(&v40);
  v38 = v25;
  v35[0] = v40;
  v35[1] = v41;

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v35, &v36);

  sub_1A78BD4B0(&v36);

  v32 = v37;
  v34 = v36;

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7560, &qword_1A7941C70);
  *(&v41 + 1) = v26;
  v42 = sub_1A792BD94(&qword_1EB2A7568, &qword_1EB2A7560, &qword_1A7941C70);
  v27 = swift_allocObject();
  *&v40 = v27;
  *(v27 + 16) = v34;
  *(v27 + 32) = v32;
  v28 = __swift_project_boxed_opaque_existential_1(&v40, v26);
  v29 = v28[1];
  v36 = *v28;
  v37 = v29;
  sub_1A793D698();
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  return 0x2000000000;
}

uint64_t P384.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (!v6)
  {

    sub_1A78D6484();
    swift_allocError();
    *v32 = 1;
    *(v32 + 4) = 1;
    return swift_willThrow();
  }

  v34 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v36);
  v7 = v2;

  v38 = v36;
  v35 = v37;
  v8 = sub_1A792AE48(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v36, v37);
  v10 = v9;
  v11 = 0;
  while (2)
  {
    v12 = sub_1A78FE770(v11, 1);
    v14 = v13;
    v15 = sub_1A792B19C(v8, v10, 0x74616469646E6163, 0xE900000000000065, v12, v13, 0x30uLL, 0x11uLL, sub_1A78D0BBC);
    v17 = v16;
    sub_1A78C0AFC(v12, v14);
    result = sub_1A791EBC0(v15, v17);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A78F5C2C(v18);
    }

    v18[32] = v19;
    v20 = (v18 + 32);
    v21 = *(v18 + 2);
    do
    {
      if (!v21)
      {

        goto LABEL_6;
      }

      v22 = *v20++;
      --v21;
    }

    while (!v22);
    v23 = sub_1A793DB18();
    v24 = sub_1A78C0DCC(v23);
    v26 = v25;

    v36 = v24;
    v37 = v26;
    result = MEMORY[0x1AC55DAE0](v27);
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    MEMORY[0x1EEE9AC00](v28);
    v30 = sub_1A78C05E8(v29, sub_1A792BCFC);
    if (!v7)
    {
      v33 = v30;
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v38, v35);
      sub_1A78C0AFC(v36, v37);

      *v34 = v33;
      return result;
    }

    sub_1A78C0AFC(v36, v37);
    MEMORY[0x1AC55E410](v7);

    v7 = 0;
LABEL_6:
    if (++v11 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v31 = 1;
  *(v31 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v8, v10);
  return sub_1A78C0AFC(v38, v35);
}

uint64_t sub_1A792AE48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x11uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v46 + 1) = MEMORY[0x1E6969080];
  *&v47 = MEMORY[0x1E6969078];
  *&v45 = v10;
  *(&v45 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17, &v48);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_1A793B930(a3, a4);
  *(&v46 + 1) = v13;
  *&v47 = v14;
  *&v45 = a5;
  *(&v45 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v45, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20, &v48);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v21 = v48;
  sub_1A78F3E70(v48, *(&v48 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();

  sub_1A79018A8(v22, &v40);
  v23 = sub_1A793DAE8();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v23, v24);
  v25 = v40;
  sub_1A78C4BA4(&v45);
  v39 = v25;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;

  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v38, &v39);

  sub_1A78C4BA4(&v41);

  v26 = v43;
  v27 = v44;
  v35 = v42;
  v37 = v41;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78F8, &qword_1A79452B8);
  *(&v42 + 1) = v28;
  v43 = sub_1A792BD94(&qword_1EB2A7900, &qword_1EB2A78F8, &qword_1A79452B8);
  v29 = swift_allocObject();
  *&v41 = v29;
  *(v29 + 16) = v37;
  *(v29 + 32) = v35;
  *(v29 + 48) = v26;
  *(v29 + 56) = v27;
  v30 = __swift_project_boxed_opaque_existential_1(&v41, v28);
  v31 = v30[1];
  v32 = v30[2];
  v45 = *v30;
  v46 = v31;
  v47 = v32;
  sub_1A793D698();
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  return 0x3000000000;
}

uint64_t sub_1A792B19C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, void (*a9)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t))
{
  v12 = sub_1A78FE770(a8, 2);
  v14 = v13;
  sub_1A792A368(5064011, 0xE300000000000000, v12, v13, &v42);
  sub_1A78C0AFC(v12, v14);
  v15 = v42;
  v16 = sub_1A78FE770(a7, 2);
  v18 = v17;
  v45 = v16;
  v46 = v17;
  sub_1A78C0990(v16, v17);
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A78C0AFC(v16, v18);
  v19 = v45;
  v20 = v46;
  v47 = v45;
  v48 = v46;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v43 = MEMORY[0x1E6969080];
  v44 = MEMORY[0x1E6969078];
  v42 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1A78C0990(v19, v20);
  sub_1A78C0990(v15, *(&v15 + 1));
  sub_1A7900C14(v24, v25, &v47);
  sub_1A78C0AFC(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v26 = v47;
  v27 = v48;
  v45 = v47;
  v46 = v48;
  sub_1A78C0990(v47, v48);
  sub_1A793B930(a3, a4);
  sub_1A78C0AFC(v26, v27);
  v28 = v45;
  v29 = v46;
  v47 = v45;
  v48 = v46;
  v43 = v21;
  v44 = v22;
  *&v42 = a5;
  *(&v42 + 1) = a6;
  v30 = __swift_project_boxed_opaque_existential_1(&v42, v21);
  v31 = *v30;
  v32 = v30[1];
  sub_1A78C0990(v28, v29);
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v31, v32, &v47);
  sub_1A78C0AFC(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v33 = v47;
  v34 = v48;
  sub_1A78C0990(v47, v48);
  a9(&v42, a1, a2, v33, v34, a7);
  sub_1A78C0AFC(v33, v34);
  v35 = v42;
  swift_beginAccess();
  sub_1A78F6AF0(v35 + 32, v35 + 32 + *(v35 + 16), &v47);
  sub_1A78C0AFC(v33, v34);
  sub_1A78C0AFC(v15, *(&v15 + 1));

  return v47;
}

uint64_t P521.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (v6 <= 1)
  {

    sub_1A78D6484();
    swift_allocError();
    *v7 = 1;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }

  v33 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v35);
  v8 = v2;

  v37 = v35;
  v34 = v36;
  v9 = sub_1A792B744(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v35, v36);
  v11 = v10;
  v12 = 0;
  while (2)
  {
    v13 = sub_1A78FE770(v12, 1);
    v15 = v14;
    v16 = sub_1A792B19C(v9, v11, 0x74616469646E6163, 0xE900000000000065, v13, v14, 0x42uLL, 0x12uLL, sub_1A78D0FB0);
    v18 = v17;
    sub_1A78C0AFC(v13, v15);
    result = sub_1A791EBC0(v16, v18);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v19 = result;
    v20 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1A78F5C2C(v19);
    }

    v19[32] = v20 & 1;
    v21 = (v19 + 32);
    v22 = *(v19 + 2);
    do
    {
      if (!v22)
      {

        goto LABEL_7;
      }

      v23 = *v21++;
      --v22;
    }

    while (!v23);
    v24 = sub_1A793DB18();
    v25 = sub_1A78C0DCC(v24);
    v27 = v26;

    v35 = v25;
    v36 = v27;
    result = ccec_cp_521();
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    MEMORY[0x1EEE9AC00](v28);
    v30 = sub_1A78C05E8(v29, sub_1A792BD28);
    if (!v8)
    {
      v32 = v30;
      sub_1A78C0AFC(v9, v11);
      sub_1A78C0AFC(v37, v34);
      sub_1A78C0AFC(v35, v36);

      *v33 = v32;
      return result;
    }

    sub_1A78C0AFC(v35, v36);
    MEMORY[0x1AC55E410](v8);

    v8 = 0;
LABEL_7:
    if (++v12 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v31 = 1;
  *(v31 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v9, v11);
  return sub_1A78C0AFC(v37, v34);
}

uint64_t sub_1A792B744(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x12uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v39 + 1) = MEMORY[0x1E6969080];
  *&v40 = MEMORY[0x1E6969078];
  *&v38 = v10;
  *(&v38 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v38, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17, &v37);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v38);
  sub_1A793B930(a3, a4);
  *(&v39 + 1) = v13;
  *&v40 = v14;
  *&v38 = a5;
  *(&v38 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v38, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20, &v37);
  __swift_destroy_boxed_opaque_existential_1(&v38);
  v21 = v37;
  sub_1A78F3E70(v37, *(&v37 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();

  sub_1A79015B8(v22, v34);
  v23 = sub_1A793DAE8();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v23, v24);
  v25 = *&v34[0];
  sub_1A78C465C(&v38);
  v36[0] = v25;

  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v38, &v42);

  sub_1A78C465C(v35);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E8, "~2");
  v36[3] = v26;
  v36[4] = sub_1A792BD94(&qword_1EB2A78F0, &qword_1EB2A78E8, "~2");
  v27 = swift_allocObject();
  v36[0] = v27;
  v28 = v35[1];
  v27[1] = v35[0];
  v27[2] = v28;
  v29 = v35[3];
  v27[3] = v35[2];
  v27[4] = v29;
  v30 = __swift_project_boxed_opaque_existential_1(v36, v26);
  v41 = v30[3];
  v40 = v30[2];
  v39 = v30[1];
  v38 = *v30;
  v34[0] = v38;
  v34[1] = v39;
  v34[2] = v40;
  v34[3] = v41;
  sub_1A793D698();
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  return 0x4000000000;
}

uint64_t sub_1A792BA90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return (a4)(v10, v6, a3);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_1A792BBB8(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A792BBB8(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return (a4)(v10, v6, a3);
}

uint64_t sub_1A792BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v10 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1A793D668();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_1A792BC64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1A793D698();
  swift_allocObject();
  result = sub_1A793D638();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A793D738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1A792BD54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = sub_1A792BA90(*v6, *(v6 + 8), a1, a3, a3);
  if (!v4)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1A792BD94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A792BDE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = v11;
  }

LABEL_10:
  if (v11 < 1)
  {
    goto LABEL_17;
  }

  result = MEMORY[0x1AC55DB30](a5);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  return a6(v9, a2, a3, a4, 2 * result);
}

uint64_t sub_1A792BECC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a6();
  if (!v12)
  {
    goto LABEL_13;
  }

  sub_1A792BDE8(a2, a3, a4, a5, v12, a7);
  v13 = getccec_pub_ctx_size();
  if (v13 < 0)
  {
    __break(1u);
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13)
  {
    v14 = v13;
    v15 = sub_1A793DB28();
    *(v15 + 16) = v14;
    bzero((v15 + 32), v14);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  init_ccec_ctx_pub();
  swift_beginAccess();
  if (!ccrng())
  {
LABEL_14:
    __break(1u);
  }

  if (ccec_diversify_pub_twin())
  {
    goto LABEL_11;
  }

  v16 = ccec_export_pub_size((v15 + 32));
  v17 = sub_1A793DB28();
  *(v17 + 16) = v16;
  bzero((v17 + 32), v16);
  if (ccec_export_pub())
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return v17;
}

uint64_t sub_1A792C0F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  result = a5();
  if (result)
  {
    v15 = result;
    v16 = *v7;
    sub_1A792BDE8(a1, a2, a3, a4, result, a6);
    v17 = getccec_full_ctx_size();
    swift_beginAccess();
    v18 = sub_1A78E3294(v17, v15, v19, (v16 + 32), v17);

    *a7 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A792C384@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v11 = sub_1A792BECC(*v8, a1, a2, a3, a4, a5, a6);
  result = a7(v11);
  *a8 = result;
  return result;
}

uint64_t ChaChaPoly.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() == 12)
  {
    v8 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v10 = v9;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v8;
    a4[1] = v10;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t AES.GCM.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() >= 12)
  {
    v10 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
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

double ChaChaPoly.Nonce.init()@<D0>(__int128 *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1A793F380;
  sub_1A78CBB34(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

void *ChaChaPoly.Nonce.makeIterator()(uint64_t a1)
{

  return sub_1A792C740(a1);
}

void *sub_1A792C740(uint64_t a1)
{
  __src[2] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(__src, 0, 14);
      v20 = __src;
      v19 = __src;
      return sub_1A78BDB94(v20, v19);
    }

    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = sub_1A793D648();
    if (v9)
    {
      v10 = sub_1A793D678();
      v2 = v7 - v10;
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_28;
      }

      v9 += v2;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (!v11)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v13 = v2;
    v14 = v2 >> 32;
    v12 = v14 - v13;
    if (v14 >= v13)
    {
      v9 = sub_1A793D648();
      if (!v9)
      {
LABEL_16:
        v16 = sub_1A793D668();
        if (v16 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v17 + v9);
        if (v9)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v9;
        return sub_1A78BDB94(v20, v19);
      }

      v15 = sub_1A793D678();
      if (!__OFSUB__(v13, v15))
      {
        v9 += v13 - v15;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4)
  {
    goto LABEL_12;
  }

  __src[0] = *v1;
  LOWORD(__src[1]) = v3;
  BYTE2(__src[1]) = BYTE2(v3);
  BYTE3(__src[1]) = BYTE3(v3);
  BYTE4(__src[1]) = BYTE4(v3);
  BYTE5(__src[1]) = BYTE5(v3);
  if (!BYTE6(v3))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A78BDC10(BYTE6(v3), 0);
  memcpy(v5 + 4, __src, BYTE6(v3));
  return v5;
}

uint64_t sub_1A792C910(int *a1)
{
  sub_1A793D708();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    __break(1u);
    goto LABEL_13;
  }

  if (!sub_1A793D648())
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (__OFSUB__(v2, sub_1A793D678()))
  {
    goto LABEL_11;
  }

  v4 = v3 - v2;
  v5 = sub_1A793D668();
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 12)
  {
    goto LABEL_12;
  }

  if (!ccrng())
  {
    goto LABEL_14;
  }

  ccrng_generate_bridge();
}

uint64_t sub_1A792CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A793D648();
  if (v4)
  {
    v5 = v4;
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_10;
    }

    v7 = a1 - result + v5;
  }

  else
  {
    v7 = 0;
  }

  result = sub_1A793D668();
  if (qword_1EB2A6D80 == -1)
  {
    if (v7)
    {
      return ccchacha20poly1305_setnonce();
    }
  }

  else
  {
    result = swift_once();
    if (v7)
    {
      return ccchacha20poly1305_setnonce();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void *AES.GCM.Nonce.makeIterator()(uint64_t a1)
{

  return ChaChaPoly.Nonce.makeIterator()(a1);
}

double AES.GCM.Nonce.init()@<D0>(__int128 *a1@<X8>)
{

  return ChaChaPoly.Nonce.init()(a1);
}

uint64_t sub_1A792CBEC()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v5, v6);
  v5 = v1;
  sub_1A793B52C(&v5, v6);
  v5 = v2;
  sub_1A793B52C(&v5, v6);
  v5 = v3;
  sub_1A793B52C(&v5, v6);
  return v6[0];
}

uint64_t SHA256Digest.description.getter()
{
  v17 = 0x6420363532414853;
  v18 = 0xEF203A7473656769;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  result = sub_1A792CBEC();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v17;
}

uint64_t SHA256Digest.hash(into:)()
{

  return sub_1A792E56C();
}

uint64_t SHA256Digest.hashValue.getter()
{

  return sub_1A792E5DC();
}

uint64_t sub_1A792CEF8()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *v0;
  v8[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v7, v8);
  v7 = v1;
  sub_1A793B52C(&v7, v8);
  v7 = v2;
  sub_1A793B52C(&v7, v8);
  v7 = v3;
  sub_1A793B52C(&v7, v8);
  v7 = v4;
  sub_1A793B52C(&v7, v8);
  v7 = v5;
  sub_1A793B52C(&v7, v8);
  return v8[0];
}

uint64_t SHA384Digest.description.getter()
{
  v17 = 0x6420343833414853;
  v18 = 0xEF203A7473656769;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = v0[2];
  result = sub_1A792CEF8();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v17;
}

uint64_t SHA384Digest.hash(into:)()
{

  return sub_1A792EA58();
}

uint64_t SHA384Digest.hashValue.getter()
{

  return sub_1A792EAD0();
}

void *sub_1A792D22C()
{
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = v0[2];
  return sub_1A791C280(v3);
}

uint64_t sub_1A792D29C()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v9, v10);
  v9 = v1;
  sub_1A793B52C(&v9, v10);
  v9 = v2;
  sub_1A793B52C(&v9, v10);
  v9 = v3;
  sub_1A793B52C(&v9, v10);
  v9 = v4;
  sub_1A793B52C(&v9, v10);
  v9 = v5;
  sub_1A793B52C(&v9, v10);
  v9 = v6;
  sub_1A793B52C(&v9, v10);
  v9 = v7;
  sub_1A793B52C(&v9, v10);
  return v10[0];
}

uint64_t SHA512Digest.description.getter()
{
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v2 = v0[3];
  v17[2] = v0[2];
  v17[3] = v2;
  v18 = 0x6420323135414853;
  v19 = 0xEF203A7473656769;
  result = sub_1A792D29C();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_1A793DB28();
    *(v12 + 16) = v8;
    bzero((v12 + 32), v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v12;
  sub_1A793DDA8();
  sub_1A78DCF04(v9, v10, v11, v17, &v16);
  swift_unknownObjectRelease();
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t SHA512Digest.hashValue.getter()
{

  return sub_1A792F028();
}

void *sub_1A792D63C()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v2 = v0[3];
  v4[2] = v0[2];
  v4[3] = v2;
  return sub_1A791C2D8(v4);
}

uint64_t Insecure.SHA1Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 2);
  v10 = *v3;
  v11 = v5;
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7928, &qword_1A7945490);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  return sub_1A78BECA0(&v10, sub_1A792F1E8, v12, v6, v7, a3, MEMORY[0x1E69E7288], &v9);
}

uint64_t sub_1A792D7A4()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v4 = *v0;
  v5[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v4, v5);
  v4 = v1;
  sub_1A793B52C(&v4, v5);
  v4 = v2;
  sub_1A793B52C(&v4, v5);
  return v5[0];
}

uint64_t Insecure.SHA1Digest.description.getter()
{
  v1 = *(v0 + 2);
  strcpy(v18, "SHA1 digest: ");
  HIWORD(v18[1]) = -4864;
  v16 = *v0;
  v17 = v1;
  result = sub_1A792D7A4();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16 = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, &v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v18[0];
}

uint64_t Insecure.SHA1Digest.hashValue.getter()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792DAE4()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792DBEC(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

void *sub_1A792DC94@<X0>(uint64_t *a1@<X8>)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 2);
  v5 = *v1;
  v6[0] = v3;
  result = sub_1A78BDB94(&v5, v6 + 4);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_1A792DD24(__int128 *a1, __int128 *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v8 = *a1;
  v9[0] = v2;
  v6 = *a2;
  v7 = v3;
  sub_1A78CBAB0(&v6, &v7 + 4, &v8, v9 + 4, &v5);
  return v5;
}

uint64_t sub_1A792DDC4()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v3 = *v0;
  v4[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v3, v4);
  v3 = v1;
  sub_1A793B52C(&v3, v4);
  return v4[0];
}

uint64_t Insecure.MD5Digest.description.getter()
{
  strcpy(v16, "MD5 digest: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v15 = *v0;
  result = sub_1A792DDC4();
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = 2 * v5;
  if (((2 * v5) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v6)
  {
    v10 = sub_1A793DB28();
    *(v10 + 16) = v6;
    bzero((v10 + 32), v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  *&v15 = v10;
  sub_1A793DDA8();
  sub_1A78DCF04(v7, v8, v9, &v15, &v14);
  swift_unknownObjectRelease();
  v11 = sub_1A793D998();
  v13 = v12;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v11, v13);

  return v16[0];
}

uint64_t Insecure.MD5Digest.hashValue.getter()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792E0C8()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792E1B8(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

BOOL sub_1A792E248(__int128 *a1, __int128 *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_1A78CBAB0(&v5, &v6, &v6, v7, &v4);
  return v4;
}

uint64_t sub_1A792E334()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v5, v6);
  v5 = v1;
  sub_1A793B52C(&v5, v6);
  v5 = v2;
  sub_1A793B52C(&v5, v6);
  v5 = v3;
  sub_1A793B52C(&v5, v6);
  result = v6[0];
  if (*(v6[0] + 16) < 0x20uLL)
  {
    __break(1u);
  }

  return result;
}

unint64_t SHA3_256Digest.description.getter()
{
  v17 = 0xD000000000000011;
  v18 = 0x80000001A7950520;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  result = sub_1A792E334();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v17;
}

uint64_t sub_1A792E5DC()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792E65C(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

BOOL sub_1A792E6F4(_OWORD *a1, _OWORD *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  sub_1A78CBAB0(v6, v7, v7, v8, &v5);
  return v5;
}

uint64_t sub_1A792E7E4()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *v0;
  v8[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v7, v8);
  v7 = v1;
  sub_1A793B52C(&v7, v8);
  v7 = v2;
  sub_1A793B52C(&v7, v8);
  v7 = v3;
  sub_1A793B52C(&v7, v8);
  v7 = v4;
  sub_1A793B52C(&v7, v8);
  v7 = v5;
  sub_1A793B52C(&v7, v8);
  result = v8[0];
  if (*(v8[0] + 16) < 0x30uLL)
  {
    __break(1u);
  }

  return result;
}

unint64_t SHA3_384Digest.description.getter()
{
  v17 = 0xD000000000000011;
  v18 = 0x80000001A7950540;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = v0[2];
  result = sub_1A792E7E4();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v17;
}

uint64_t sub_1A792EAD0()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792EB60(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

void *sub_1A792EC08@<X0>(uint64_t *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  result = sub_1A78BDB94(v5, v6);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_1A792EC80(_OWORD *a1, _OWORD *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = a1[2];
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v6[2] = a2[2];
  sub_1A78CBAB0(v6, v7, v7, v8, &v5);
  return v5;
}

uint64_t sub_1A792ED80()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v9, v10);
  v9 = v1;
  sub_1A793B52C(&v9, v10);
  v9 = v2;
  sub_1A793B52C(&v9, v10);
  v9 = v3;
  sub_1A793B52C(&v9, v10);
  v9 = v4;
  sub_1A793B52C(&v9, v10);
  v9 = v5;
  sub_1A793B52C(&v9, v10);
  v9 = v6;
  sub_1A793B52C(&v9, v10);
  v9 = v7;
  sub_1A793B52C(&v9, v10);
  result = v10[0];
  if (*(v10[0] + 16) < 0x40uLL)
  {
    __break(1u);
  }

  return result;
}

unint64_t SHA3_512Digest.description.getter()
{
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v2 = v0[3];
  v17[2] = v0[2];
  v17[3] = v2;
  v18 = 0xD000000000000011;
  v19 = 0x80000001A7950560;
  result = sub_1A792ED80();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_1A793DB28();
    *(v12 + 16) = v8;
    bzero((v12 + 32), v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v12;
  sub_1A793DDA8();
  sub_1A78DCF04(v9, v10, v11, v17, &v16);
  swift_unknownObjectRelease();
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t sub_1A792F028()
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A792F0B0(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793DF68();
  return sub_1A793DFA8();
}

BOOL sub_1A792F150(_OWORD *a1, _OWORD *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  sub_1A78CBAB0(v8, v9, v9, v10, &v7);
  return v7;
}

uint64_t sub_1A792F1E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 20;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

unint64_t sub_1A792F22C(uint64_t a1)
{
  result = sub_1A78F6060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F2A8()
{
  result = qword_1ED5F89F8;
  if (!qword_1ED5F89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89F8);
  }

  return result;
}

unint64_t sub_1A792F2FC()
{
  result = qword_1ED5F89D8;
  if (!qword_1ED5F89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89D8);
  }

  return result;
}

unint64_t sub_1A792F350()
{
  result = qword_1ED5F89F0;
  if (!qword_1ED5F89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89F0);
  }

  return result;
}

unint64_t sub_1A792F3A4()
{
  result = qword_1ED5F89E0;
  if (!qword_1ED5F89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89E0);
  }

  return result;
}

unint64_t sub_1A792F3FC()
{
  result = qword_1ED5F89E8;
  if (!qword_1ED5F89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89E8);
  }

  return result;
}

unint64_t sub_1A792F450(uint64_t a1)
{
  result = sub_1A78F6138();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F4CC()
{
  result = qword_1ED5F8AB0;
  if (!qword_1ED5F8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AB0);
  }

  return result;
}

unint64_t sub_1A792F520()
{
  result = qword_1ED5F8A90;
  if (!qword_1ED5F8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A90);
  }

  return result;
}

unint64_t sub_1A792F574()
{
  result = qword_1ED5F8AA8;
  if (!qword_1ED5F8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AA8);
  }

  return result;
}

unint64_t sub_1A792F5C8()
{
  result = qword_1ED5F8A98;
  if (!qword_1ED5F8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A98);
  }

  return result;
}

unint64_t sub_1A792F620()
{
  result = qword_1ED5F8AA0;
  if (!qword_1ED5F8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AA0);
  }

  return result;
}

unint64_t sub_1A792F674(uint64_t a1)
{
  result = sub_1A78F6210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F6F0()
{
  result = qword_1EB2A6D70;
  if (!qword_1EB2A6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D70);
  }

  return result;
}

unint64_t sub_1A792F744()
{
  result = qword_1EB2A6D50;
  if (!qword_1EB2A6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D50);
  }

  return result;
}

unint64_t sub_1A792F798()
{
  result = qword_1EB2A6D68;
  if (!qword_1EB2A6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D68);
  }

  return result;
}

unint64_t sub_1A792F7EC()
{
  result = qword_1EB2A6D58;
  if (!qword_1EB2A6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D58);
  }

  return result;
}

unint64_t sub_1A792F844()
{
  result = qword_1EB2A6D60;
  if (!qword_1EB2A6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D60);
  }

  return result;
}

unint64_t sub_1A792F898(uint64_t a1)
{
  result = sub_1A790DAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F914()
{
  result = qword_1EB2A7938;
  if (!qword_1EB2A7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7938);
  }

  return result;
}

unint64_t sub_1A792F968()
{
  result = qword_1EB2A7940;
  if (!qword_1EB2A7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7940);
  }

  return result;
}

unint64_t sub_1A792F9BC()
{
  result = qword_1EB2A7948;
  if (!qword_1EB2A7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7948);
  }

  return result;
}

unint64_t sub_1A792FA10()
{
  result = qword_1EB2A7950;
  if (!qword_1EB2A7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7950);
  }

  return result;
}

unint64_t sub_1A792FA68()
{
  result = qword_1EB2A7958;
  if (!qword_1EB2A7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7958);
  }

  return result;
}

unint64_t sub_1A792FABC(uint64_t a1)
{
  result = sub_1A790DB60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FB38()
{
  result = qword_1EB2A7960;
  if (!qword_1EB2A7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7960);
  }

  return result;
}

unint64_t sub_1A792FB8C()
{
  result = qword_1EB2A7968;
  if (!qword_1EB2A7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7968);
  }

  return result;
}

unint64_t sub_1A792FBE0()
{
  result = qword_1EB2A7970;
  if (!qword_1EB2A7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7970);
  }

  return result;
}

unint64_t sub_1A792FC34()
{
  result = qword_1EB2A7978;
  if (!qword_1EB2A7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7978);
  }

  return result;
}

unint64_t sub_1A792FC8C()
{
  result = qword_1EB2A7980;
  if (!qword_1EB2A7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7980);
  }

  return result;
}

unint64_t sub_1A792FCE0(uint64_t a1)
{
  result = sub_1A78DAEA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FD5C()
{
  result = qword_1EB2A7988;
  if (!qword_1EB2A7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7988);
  }

  return result;
}

unint64_t sub_1A792FDB0()
{
  result = qword_1EB2A7990;
  if (!qword_1EB2A7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7990);
  }

  return result;
}

unint64_t sub_1A792FE04()
{
  result = qword_1EB2A7998;
  if (!qword_1EB2A7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7998);
  }

  return result;
}

unint64_t sub_1A792FE5C()
{
  result = qword_1EB2A79A0;
  if (!qword_1EB2A79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79A0);
  }

  return result;
}

unint64_t sub_1A792FEB0(uint64_t a1)
{
  result = sub_1A78DAFD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FF2C()
{
  result = qword_1EB2A79A8;
  if (!qword_1EB2A79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79A8);
  }

  return result;
}

unint64_t sub_1A792FF80()
{
  result = qword_1EB2A79B0;
  if (!qword_1EB2A79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79B0);
  }

  return result;
}

unint64_t sub_1A792FFD4()
{
  result = qword_1EB2A79B8;
  if (!qword_1EB2A79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79B8);
  }

  return result;
}

unint64_t sub_1A7930028()
{
  result = qword_1EB2A79C0;
  if (!qword_1EB2A79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79C0);
  }

  return result;
}

unint64_t sub_1A7930080()
{
  result = qword_1EB2A79C8;
  if (!qword_1EB2A79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79C8);
  }

  return result;
}

unint64_t sub_1A79300D4(uint64_t a1)
{
  result = sub_1A78DB100();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A7930150(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1A79301B4()
{
  result = qword_1EB2A79D0;
  if (!qword_1EB2A79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79D0);
  }

  return result;
}

unint64_t sub_1A7930208()
{
  result = qword_1EB2A79D8;
  if (!qword_1EB2A79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79D8);
  }

  return result;
}

unint64_t sub_1A793025C()
{
  result = qword_1EB2A79E0;
  if (!qword_1EB2A79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79E0);
  }

  return result;
}

unint64_t sub_1A79302B0()
{
  result = qword_1EB2A79E8;
  if (!qword_1EB2A79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79E8);
  }

  return result;
}

unint64_t sub_1A7930308()
{
  result = qword_1EB2A79F0[0];
  if (!qword_1EB2A79F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2A79F0);
  }

  return result;
}

uint64_t _s10SHA1DigestVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SHA1DigestVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A79303F8()
{

  return sub_1A78CEC60();
}

uint64_t sub_1A7930450()
{

  return sub_1A78CE948();
}

uint64_t sub_1A79304A8(uint64_t a1)
{

  return sub_1A78CE9A0(a1);
}

uint64_t sub_1A7930500()
{

  return sub_1A78CEAA8();
}

uint64_t sub_1A7930558(uint64_t a1)
{

  return sub_1A78CEB00(a1);
}

void *sub_1A79305B0@<X0>(uint64_t *a1@<X8>)
{

  return sub_1A78CEB58(a1);
}

uint64_t sub_1A7930608(uint64_t a1)
{

  return sub_1A78CECD8(a1);
}

BOOL sub_1A7930660(_OWORD *a1, _OWORD *a2)
{

  return sub_1A78CE9F8(a1, a2);
}

BOOL sub_1A79306B8(_OWORD *a1, _OWORD *a2)
{

  return sub_1A78CEBB0(a1, a2);
}

BOOL sub_1A7930710(_OWORD *a1, _OWORD *a2)
{

  return sub_1A78CED30(a1, a2);
}

uint64_t SHA3_256Digest.hashValue.getter()
{

  return SHA256Digest.hashValue.getter();
}

uint64_t SHA3_384Digest.hashValue.getter()
{

  return SHA384Digest.hashValue.getter();
}

uint64_t SHA3_512Digest.hashValue.getter()
{

  return SHA512Digest.hashValue.getter();
}

uint64_t SHA3_512Digest.hash(into:)()
{

  return SHA512Digest.hash(into:)();
}

uint64_t SHA3_256Digest.hash(into:)()
{

  return SHA256Digest.hash(into:)();
}

uint64_t SHA3_384Digest.hash(into:)()
{

  return SHA384Digest.hash(into:)();
}

uint64_t sub_1A79309D0()
{

  return sub_1A78CE8F0();
}

uint64_t sub_1A7930A28()
{

  return sub_1A78CEA50();
}

uint64_t sub_1A7930A80()
{

  return sub_1A78CEC08();
}

void sub_1A7930B90(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A79221B0(a4, a3);
  if (v5)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v11 = v10;
    v12 = sub_1A793D7B8();
    v27[0] = 0;
    v13 = [v11 objectForObjectID:v12 error:v27];

    if (v13)
    {
      v14 = v27[0];
      v15 = [v13 publicKey];
      if (v15)
      {
        v16 = v15;
        v25 = v13;
        v26 = a5;
        v17 = sub_1A793D7D8();
        v19 = v18;

        sub_1A78C0990(v17, v19);
        v20 = sub_1A78F9B58(v17, v19);
        sub_1A78C0AFC(v17, v19);

        v21 = v25;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v22 = v21;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v26 = v20;
        v26[1] = a1;
        v26[2] = a2;
        v26[3] = v22;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v24 = 2;
        *(v24 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v23 = v27[0];

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }
}

uint64_t static SecureEnclave.isAvailable.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v1 = [v0 tokenIDs];
  v2 = sub_1A793DB08();

  v7[0] = sub_1A793D958();
  v7[1] = v3;
  v6[2] = v7;
  v4 = sub_1A7931890(sub_1A7931994, v6, v2);

  return v4 & 1;
}

void sub_1A7930F04()
{
  v0 = *MEMORY[0x1E697AEE0];
  v1 = objc_allocWithZone(MEMORY[0x1E69666D8]);
  v2 = v0;
  v3 = [v1 initWithTokenID_];

  qword_1ED5FA2A0 = v3;
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void sub_1A793106C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1A79221B0(a3, 0);
  if (v4)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v10 = v9;
    v11 = sub_1A793D7B8();
    v25[0] = 0;
    v12 = [v10 objectForObjectID:v11 error:v25];

    if (v12)
    {
      v13 = v25[0];
      v14 = [v12 publicKey];
      if (v14)
      {
        v15 = v14;
        v24 = v12;
        v16 = sub_1A793D7D8();
        v18 = v17;

        sub_1A78C0990(v16, v18);
        v19 = sub_1A78F9B58(v16, v18);
        sub_1A78C0AFC(v16, v18);

        v20 = v24;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v21 = v20;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *a4 = v19;
        a4[1] = a1;
        a4[2] = a2;
        a4[3] = v21;
      }

      else
      {
        sub_1A78FC3E4();
        swift_allocError();
        *v23 = 2;
        *(v23 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v22 = v25[0];
      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }
}

id sub_1A79312DC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v56[9] = *MEMORY[0x1E69E9840];
  v10 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v11 = [v10 tokenIDs];
  v12 = sub_1A793DB08();

  *&v53[0] = sub_1A793D958();
  *(&v53[0] + 1) = v13;
  v52 = v53;
  LOBYTE(a5) = sub_1A7931890(a5, v51, v12);

  if (a5)
  {
    v14 = sub_1A79221B0(a4, 0);
    if (!v5)
    {
      v15 = v14;
      v47 = a1;
      v48 = objc_opt_self();
      v16 = *MEMORY[0x1E697ABC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C0, &qword_1A7941D70);
      type metadata accessor for CFString(0);
      v17 = 1000;
      sub_1A7922338();
      while (1)
      {
        *&v53[0] = v16;
        v18 = v16;
        sub_1A793DDE8();
        v19 = [v48 dataFromACL_];
        v20 = sub_1A793D7D8();
        v22 = v21;

        v56[8] = MEMORY[0x1E6969080];
        v56[5] = v20;
        v56[6] = v22;
        v23 = sub_1A793DE98();
        sub_1A7931A10(v56, v53);
        v24 = sub_1A78FBCDC(v53);
        if (v25)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
        }

        v23[(v24 >> 6) + 8] |= 1 << v24;
        v26 = v23[6] + 40 * v24;
        v27 = v53[0];
        v28 = v53[1];
        *(v26 + 32) = v54;
        *v26 = v27;
        *(v26 + 16) = v28;
        sub_1A78FC550(&v55, (v23[7] + 32 * v24));
        v29 = v23[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_19;
        }

        v23[2] = v31;
        sub_1A7931A80(v56);
        v32 = sub_1A793D878();

        *&v53[0] = 0;
        v7 = [v15 createObjectWithAttributes:v32 error:v53];

        if (!v7)
        {
          break;
        }

        v33 = *&v53[0];
        v34 = [v7 publicKey];
        if (!v34)
        {
          goto LABEL_20;
        }

        v35 = v34;
        v36 = sub_1A793D7D8();
        v38 = v37;

        if ((a2 & 1) == 0)
        {
          goto LABEL_15;
        }

        v39 = sub_1A793D7B8();
        if (!MEMORY[0x1AC55DAD0]())
        {
          goto LABEL_21;
        }

        IsCompactRepresentable = keyIsCompactRepresentable();

        if (IsCompactRepresentable)
        {
LABEL_15:
          v44 = [v7 objectID];
          sub_1A793D7D8();

          sub_1A78C0990(v36, v38);
          v45 = sub_1A78F9B58(v36, v38);

          sub_1A78C0AFC(v36, v38);
          *v47 = v45;
          return v7;
        }

        sub_1A78C0AFC(v36, v38);

        if (!--v17)
        {
          sub_1A78FC3E4();
          swift_allocError();
          *v41 = 3;
          *(v41 + 8) = 1;
          goto LABEL_17;
        }
      }

      v46 = *&v53[0];
      sub_1A793D6C8();

LABEL_17:
      swift_willThrow();
    }
  }

  else
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 1;
    swift_willThrow();
  }

  return v7;
}

void sub_1A79317B8(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_1A79312DC(&v17, a1, a2, a3, a4);
  v11 = v10;
  v13 = v12;

  if (!v5)
  {
    v14 = v17;
    v15 = v9;
    sub_1A78C0990(v11, v13);
    sub_1A78C0AFC(v11, v13);
    v16 = v15;
    sub_1A78C0990(v11, v13);

    sub_1A78C0AFC(v11, v13);
    *a5 = v14;
    a5[1] = v11;
    a5[2] = v13;
    a5[3] = v16;
  }
}

uint64_t sub_1A7931890(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
      sub_1A793DB18();
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

uint64_t sub_1A793193C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A793DEC8() & 1;
  }
}

uint64_t sub_1A7931A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7931A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7931AE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A793DEC8() & 1;
  }
}

void sub_1A7931C5C(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A79221B0(a4, a3);
  if (v5)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v11 = v10;
    v12 = sub_1A793D7B8();
    v27[0] = 0;
    v13 = [v11 objectForObjectID:v12 error:v27];

    if (v13)
    {
      v14 = v27[0];
      v15 = [v13 publicKey];
      if (v15)
      {
        v16 = v15;
        v25 = v13;
        v26 = a5;
        v17 = sub_1A793D7D8();
        v19 = v18;

        sub_1A78C0990(v17, v19);
        v20 = sub_1A78F9BE0(v17, v19);
        sub_1A78C0AFC(v17, v19);

        v21 = v25;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v22 = v21;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v26 = v20;
        v26[1] = a1;
        v26[2] = a2;
        v26[3] = v22;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v24 = 2;
        *(v24 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v23 = v27[0];

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }
}

uint64_t SecureEnclave.P384.KeyAgreement.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void sub_1A7932000(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1A79221B0(a3, 0);
  if (v4)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v10 = v9;
    v11 = sub_1A793D7B8();
    v25[0] = 0;
    v12 = [v10 objectForObjectID:v11 error:v25];

    if (v12)
    {
      v13 = v25[0];
      v14 = [v12 publicKey];
      if (v14)
      {
        v15 = v14;
        v24 = v12;
        v16 = sub_1A793D7D8();
        v18 = v17;

        sub_1A78C0990(v16, v18);
        v19 = sub_1A78F9BE0(v16, v18);
        sub_1A78C0AFC(v16, v18);

        v20 = v24;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v21 = v20;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *a4 = v19;
        a4[1] = a1;
        a4[2] = a2;
        a4[3] = v21;
      }

      else
      {
        sub_1A78FC3E4();
        swift_allocError();
        *v23 = 2;
        *(v23 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v22 = v25[0];
      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }
}