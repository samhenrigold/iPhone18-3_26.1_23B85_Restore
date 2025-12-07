char *sub_29EBA5D08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for XPCActorSystemError(uint64_t a1)
{
  result = qword_2A1885718;
  if (!qword_2A1885718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29EBA6038(uint64_t a1)
{
  sub_29EBA60F0();
  if (v1 <= 0x3F)
  {
    sub_29EBA6138();
    if (v2 <= 0x3F)
    {
      sub_29EBA6198();
      if (v3 <= 0x3F)
      {
        sub_29EBA61E4();
        if (v4 <= 0x3F)
        {
          sub_29EBA6214();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29EBA60F0()
{
  if (!qword_2A1885728)
  {
    v0 = type metadata accessor for XPCActorID(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2A1885728);
    }
  }
}

unint64_t sub_29EBA6138()
{
  result = qword_2A1885730;
  if (!qword_2A1885730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1885730);
  }

  return result;
}

unint64_t sub_29EBA6198()
{
  result = qword_2A1885738;
  if (!qword_2A1885738)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1885738);
  }

  return result;
}

ValueMetadata *sub_29EBA61E4()
{
  result = qword_2A1885740;
  if (!qword_2A1885740)
  {
    result = &type metadata for XPCActorSystem.Role;
    atomic_store(&type metadata for XPCActorSystem.Role, &qword_2A1885740);
  }

  return result;
}

uint64_t sub_29EBA6214()
{
  result = qword_2A1885748;
  if (!qword_2A1885748)
  {
    result = MEMORY[0x29EDC99B0];
    atomic_store(MEMORY[0x29EDC99B0], &qword_2A1885748);
  }

  return result;
}

unint64_t sub_29EBA6248()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for XPCActorSystemError(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29EBA6850(v1, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v7;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();
      MEMORY[0x29EDAA640](0x6F74636120656854, 0xAD00009C80E22072);
      swift_getObjectType();
      v34 = v23;
      sub_29EBAFCC0();
      MEMORY[0x29EDAA640](0x100000000000002ALL, 0x800000029EBB50E0);
      swift_unknownObjectRelease();
      return v29;
    case 2u:
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();

      v29 = 0x1000000000000021;
      v30 = 0x800000029EBB4FA0;
      v15 = sub_29EBAFE20();
      MEMORY[0x29EDAA640](v15);

      v16 = 0x69207369209D80E2;
      v17 = 0x64696C61766ELL;
      goto LABEL_17;
    case 3u:
      v18 = *v7;
      v19 = v7[1];
      v20 = v7[2];
      v21 = v7[3];
      v22 = v7[4];
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();
      v34 = v29;
      v35 = v30;
      MEMORY[0x29EDAA640](0x1000000000000038, 0x800000029EBB4F10);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      v33 = v22;
      sub_29EBAFB50();
      MEMORY[0x29EDAA640](0x1000000000000012, 0x800000029EBB4EB0);
      sub_29EBA4EF8(v18, v19, v20, v21, v22);
      return v34;
    case 4u:
      sub_29EB980F4(v7, v4);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();
      v13 = "” was attempted.";
      v14 = 0x1000000000000031;
      goto LABEL_13;
    case 5u:
      sub_29EB980F4(v7, v4);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();
      v13 = "The generic substitution “";
      v14 = 0x1000000000000030;
LABEL_13:
      MEMORY[0x29EDAA640](v14, v13 | 0x8000000000000000);
      v24 = XPCActorID.description.getter();
      MEMORY[0x29EDAA640](v24);

      v10 = 0x800000029EBB4EB0;
      v9 = 0x1000000000000012;
      goto LABEL_14;
    case 6u:
      v26 = *v7;
      v27 = v7[1];
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();

      v29 = 0x100000000000001CLL;
      v30 = 0x800000029EBB4E50;
      MEMORY[0x29EDAA640](v26, v27);

      v16 = 0x75207369209D80E2;
      v17 = 0x6E776F6E6B6ELL;
LABEL_17:
      MEMORY[0x29EDAA640](v16, v17 & 0xFFFFFFFFFFFFLL | 0xAF2E000000000000);
      return v29;
    case 7u:
      return 0xD000000000000016;
    case 8u:
      return 0xD000000000000010;
    case 9u:
      return 0x1000000000000038;
    case 0xAu:
      v12 = 33;
      goto LABEL_20;
    case 0xBu:
      v12 = 5;
LABEL_20:
      result = v12 | 0xD000000000000010;
      break;
    case 0xCu:
      result = 0xD000000000000020;
      break;
    case 0xDu:
      result = 0xD000000000000017;
      break;
    case 0xEu:
      result = 0xD00000000000002CLL;
      break;
    default:
      sub_29EB980F4(v7, v4);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_29EBAFAF0();

      v29 = 0x1000000000000018;
      v30 = 0x800000029EBB5110;
      v8 = XPCActorID.description.getter();
      MEMORY[0x29EDAA640](v8);

      v9 = 0x1000000000000013;
      v10 = 0x800000029EBB5130;
LABEL_14:
      MEMORY[0x29EDAA640](v9, v10);
      v25 = v29;
      sub_29EB970E0(v4);
      result = v25;
      break;
  }

  return result;
}

uint64_t sub_29EBA6810(uint64_t a1)
{
  sub_29EB98378();

  return sub_29EBAFD30();
}

uint64_t sub_29EBA6850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorSystemError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBA68B8()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD000000000000023, 0x800000029EBB5220);
  v1 = MEMORY[0x29EDAA670](*(v0 + 16), MEMORY[0x29EDC99B0]);
  MEMORY[0x29EDAA640](v1);

  MEMORY[0x29EDAA640](0x6E656D7567726120, 0xEC000000203A7374);
  v2 = MEMORY[0x29EDAA670](*(v0 + 24), MEMORY[0x29EDB9B70]);
  MEMORY[0x29EDAA640](v2);

  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EBA69A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EBAF720();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  sub_29EBA874C(a1, v11, type metadata accessor for XPCActorID);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for AddressedEnvelope(0);
  v14 = swift_allocObject();
  sub_29EB980F4(v11, v14 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID);
  (*(v6 + 32))(v14 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target, v8, v5);
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  return v14;
}

uint64_t sub_29EBA6B54()
{

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

unint64_t sub_29EBA6C10()
{
  v1 = 0x746E656D75677261;
  v2 = 0x6E65697069636572;
  if (*v0 != 2)
  {
    v2 = 0x746567726174;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_29EBA6C98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29EBA7DFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29EBA6CCC(uint64_t a1)
{
  v2 = sub_29EBA84D0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA6D08(uint64_t a1)
{
  v2 = sub_29EBA84D0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA6D44()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000002DLL, 0x800000029EBB51F0);
  v1 = MEMORY[0x29EDAA670](*(v0 + 16), MEMORY[0x29EDC99B0]);
  MEMORY[0x29EDAA640](v1);

  MEMORY[0x29EDAA640](0x6E656D7567726120, 0xEC000000203A7374);
  v2 = MEMORY[0x29EDAA670](*(v0 + 24), MEMORY[0x29EDB9B70]);
  MEMORY[0x29EDAA640](v2);

  MEMORY[0x29EDAA640](0x6569706963657220, 0xEF203A444920746ELL);
  v3 = XPCActorID.description.getter();
  MEMORY[0x29EDAA640](v3);

  MEMORY[0x29EDAA640](0x3A74656772617420, 0xE900000000000020);
  sub_29EBAF720();
  sub_29EBA8704(&qword_2A1885590, MEMORY[0x29EDCA2D8], MEMORY[0x29EDCA2E0]);
  v4 = sub_29EBAFCA0();
  MEMORY[0x29EDAA640](v4);

  return 0;
}

uint64_t sub_29EBA6EF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857B8, &qword_29EBB21D8);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA84D0();
  sub_29EBAFDF0();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885780, &qword_29EBB21C8);
  sub_29EBA8578(&qword_2A18857C0, MEMORY[0x29EDC99B8], MEMORY[0x29EDC9A48]);
  sub_29EBAFC80();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885790, &qword_29EBB21D0);
    sub_29EBA85E4(&qword_2A18857C8, sub_29EBA865C, MEMORY[0x29EDC9A48]);
    sub_29EBAFC80();
    LOBYTE(v11) = 2;
    type metadata accessor for XPCActorID(0);
    sub_29EBA8704(&qword_2A18857D8, type metadata accessor for XPCActorID, &protocol conformance descriptor for XPCActorID);
    sub_29EBAFC80();
    LOBYTE(v11) = 3;
    sub_29EBAF720();
    sub_29EBA8704(&qword_2A18857E0, MEMORY[0x29EDCA2D8], &protocol conformance descriptor for RemoteCallTarget);
    sub_29EBAFC80();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29EBA71F8()
{
  sub_29EBA4E98(v0 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID, type metadata accessor for XPCActorID);
  v1 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  v2 = sub_29EBAF720();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_29EBA7284()
{

  v1 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID;

  sub_29EBA4E98(v0 + v1, type metadata accessor for XPCActorID);
  v2 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  v3 = sub_29EBAF720();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v4, v5);
}

uint64_t sub_29EBA738C(uint64_t a1)
{
  result = type metadata accessor for XPCActorID(319);
  if (v2 <= 0x3F)
  {
    result = sub_29EBAF720();
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

uint64_t sub_29EBA746C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCActorID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
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

uint64_t sub_29EBA7550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCActorID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_29EBA7638(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EBA7670(uint64_t a1)
{
  result = type metadata accessor for XPCActorID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBA76E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857F8, &qword_29EBB21E8);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA86B0();
  sub_29EBAFDF0();
  LOBYTE(v13) = 0;
  type metadata accessor for XPCActorID(0);
  sub_29EBA8704(&qword_2A18857D8, type metadata accessor for XPCActorID, &protocol conformance descriptor for XPCActorID);
  sub_29EBAFC80();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SyncAddressedEnvelope(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_29EB9943C(v13, v10);
    sub_29EBA865C();
    sub_29EBAFC80();
    sub_29EB99490(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29EBA78C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857E8, &qword_29EBB21E0);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SyncAddressedEnvelope(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA86B0();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v13 = v11;
  LOBYTE(v20) = 0;
  sub_29EBA8704(&qword_2A18857A8, type metadata accessor for XPCActorID, &protocol conformance descriptor for XPCActorID);
  v14 = v18;
  sub_29EBAFC10();
  sub_29EB980F4(v19, v13);
  v21 = 1;
  sub_29EBA8524();
  sub_29EBAFC10();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v20;
  sub_29EBA874C(v13, v16, type metadata accessor for SyncAddressedEnvelope);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_29EBA4E98(v13, type metadata accessor for SyncAddressedEnvelope);
}

char *sub_29EBA7BD4@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_29EBA7F74(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29EBA7C24()
{
  if (*v0)
  {
    return 0x446567617373656DLL;
  }

  else
  {
    return 0x6E65697069636572;
  }
}

uint64_t sub_29EBA7C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65697069636572 && a2 == 0xEB00000000444974;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EBA7D54(uint64_t a1)
{
  v2 = sub_29EBA86B0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA7D90(uint64_t a1)
{
  v2 = sub_29EBA86B0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA7DFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000029EBB5180 == a2 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEB00000000444974 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_29EBA7F74(void *a1)
{
  v33 = sub_29EBAF720();
  v31 = *(v33 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v33);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - v4;
  v6 = type metadata accessor for XPCActorID(0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885770, &qword_29EBB21C0);
  v12 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v14 = &v29 - v13;
  v15 = a1[3];
  v37 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_29EBA84D0();
  v35 = v14;
  v17 = v36;
  sub_29EBAFDD0();
  if (!v17)
  {
    v18 = v12;
    v19 = v5;
    v36 = v9;
    v20 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885780, &qword_29EBB21C8);
    v38 = 0;
    sub_29EBA8578(&qword_2A1885788, MEMORY[0x29EDC99E8], MEMORY[0x29EDC9A78]);
    v21 = v34;
    sub_29EBAFC10();
    v22 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885790, &qword_29EBB21D0);
    v38 = 1;
    sub_29EBA85E4(&qword_2A1885798, sub_29EBA8524, MEMORY[0x29EDC9A78]);
    sub_29EBAFC10();
    v30 = v22;
    v23 = v39;
    LOBYTE(v39) = 2;
    sub_29EBA8704(&qword_2A18857A8, type metadata accessor for XPCActorID, &protocol conformance descriptor for XPCActorID);
    sub_29EBAFC10();
    LOBYTE(v39) = 3;
    sub_29EBA8704(&qword_2A18857B0, MEMORY[0x29EDCA2D8], &protocol conformance descriptor for RemoteCallTarget);
    sub_29EBAFC10();
    (*(v18 + 8))(v35, v21);
    v25 = v36;
    sub_29EB980F4(v11, v36);
    v26 = *(v31 + 32);
    v27 = v23;
    v28 = v32;
    v26(v32, v19, v20);
    type metadata accessor for AddressedEnvelope(0);
    v16 = swift_allocObject();
    sub_29EB980F4(v25, v16 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID);
    v26((v16 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target), v28, v20);
    *(v16 + 16) = v30;
    *(v16 + 24) = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v16;
}

unint64_t sub_29EBA84D0()
{
  result = qword_2A1885778;
  if (!qword_2A1885778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885778);
  }

  return result;
}

unint64_t sub_29EBA8524()
{
  result = qword_2A18857A0;
  if (!qword_2A18857A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857A0);
  }

  return result;
}

uint64_t sub_29EBA8578(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885780, &qword_29EBB21C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EBA85E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885790, &qword_29EBB21D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EBA865C()
{
  result = qword_2A18857D0;
  if (!qword_2A18857D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857D0);
  }

  return result;
}

unint64_t sub_29EBA86B0()
{
  result = qword_2A18857F0;
  if (!qword_2A18857F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857F0);
  }

  return result;
}

uint64_t sub_29EBA8704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EBA874C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AddressedEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AddressedEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29EBA8920()
{
  result = qword_2A1885800;
  if (!qword_2A1885800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885800);
  }

  return result;
}

unint64_t sub_29EBA8978()
{
  result = qword_2A1885808;
  if (!qword_2A1885808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885808);
  }

  return result;
}

unint64_t sub_29EBA89D0()
{
  result = qword_2A1885810;
  if (!qword_2A1885810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885810);
  }

  return result;
}

unint64_t sub_29EBA8A28()
{
  result = qword_2A1885818;
  if (!qword_2A1885818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885818);
  }

  return result;
}

unint64_t sub_29EBA8A80()
{
  result = qword_2A1885820;
  if (!qword_2A1885820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885820);
  }

  return result;
}

unint64_t sub_29EBA8AD8()
{
  result = qword_2A1885828;
  if (!qword_2A1885828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885828);
  }

  return result;
}

uint64_t sub_29EBA8B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EBA8BCC(uint64_t a1)
{
  v2 = sub_29EBADD70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA8C08(uint64_t a1)
{
  v2 = sub_29EBADD70();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA8C44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885920, &qword_29EBB2820);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBADD70();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_29EBAFBF0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_29EBA8DC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885900, &qword_29EBB2808);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBADD70();
  sub_29EBAFDF0();
  sub_29EBAFC60();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29EBA8EFC()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885830);
  __swift_project_value_buffer(v0, qword_2A1885830);
  return sub_29EBAF770();
}

double sub_29EBA8F7C@<D0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for SyncAddressedEnvelope(0);
  v2 = MEMORY[0x2A1C7C4A8](v1);
  MEMORY[0x2A1C7C4A8](v2);
  v3 = sub_29EBAF8F0();
  MEMORY[0x2A1C7C4A8](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29EBADDC4();
  sub_29EBAF8D0();
  v6 = v19[0];
  v5 = v19[1];
  if (qword_2A18850D8 != -1)
  {
    swift_once();
  }

  v7 = sub_29EBAF780();
  __swift_project_value_buffer(v7, qword_2A1885830);

  v8 = sub_29EBAF760();
  v9 = sub_29EBAFA70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;

    v12 = sub_29EBA1458(v6, v5, v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_29EB8F000, v8, v9, "A session with the client “%{public}s” was activated.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x29EDAAF90](v11, -1, -1);
    MEMORY[0x29EDAAF90](v10, -1, -1);
  }

  v13 = *v17;
  type metadata accessor for Connection();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v13;
  v15 = v17[5];

  v15(v6, v5, v14);

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29EBA9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29EBAF8F0();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBA9A60, 0, 0);
}

uint64_t sub_29EBA9A60()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v0[2] + 8);
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v10 = (v4 + *v4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_29EBA9BF0;
  v8 = v0[3];

  return (v10)(v8, sub_29EBAE190, v6);
}

uint64_t sub_29EBA9BF0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBA9D34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_29EBA9D34()
{

  if (qword_2A18850D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_29EBAF780();
  __swift_project_value_buffer(v2, qword_2A1885830);
  v3 = sub_29EBAFA50();
  MEMORY[0x29EDAAE00](v1);
  v4 = sub_29EBAF760();
  MEMORY[0x29EDAADF0](v1);
  v5 = os_log_type_enabled(v4, v3);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x29EDAAE00](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_29EB8F000, v4, v3, "A message couldn’t be handled: %{public}@", v7, 0xCu);
    sub_29EBAD824(v8, &qword_2A18858C8, &qword_29EBB26C0);
    MEMORY[0x29EDAAF90](v8, -1, -1);
    MEMORY[0x29EDAAF90](v7, -1, -1);
    MEMORY[0x29EDAADF0](v6);
  }

  else
  {

    MEMORY[0x29EDAADF0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29EBA9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29EBAD7B4(a3, v25 - v10);
  v12 = sub_29EBAFA10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29EBAD824(v11, &qword_2A18858D0, &qword_29EBB26C8);
  }

  else
  {
    sub_29EBAFA00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29EBAF9D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29EBAF960() + 32;
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

      sub_29EBAD824(a3, &qword_2A18858D0, &qword_29EBB26C8);

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

  sub_29EBAD824(a3, &qword_2A18858D0, &qword_29EBB26C8);
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

uint64_t Connection.Request.bundleID.getter()
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = v0[1];
  *token.val = *v0;
  *&token.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (v3)
  {
    v4 = v3;
    error = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &error);
    v6 = v5;
    v7 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      v1 = sub_29EBADE18(&qword_2A1885868, type metadata accessor for CFError, MEMORY[0x29EDB9DC0]);
      v8 = v7;
      swift_allocError();
      *v9 = v8;
      swift_willThrow();

      if (error)
      {
      }

      goto LABEL_16;
    }

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        sub_29EBAF940();

        if (*&token.val[2])
        {
          v1 = *token.val;
          v11 = error;
          if (!error)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      v1 = 0;
      v11 = error;
      if (error)
      {
LABEL_15:
      }
    }

    else
    {
      v1 = 0;
    }

LABEL_16:

    return v1;
  }

  sub_29EBAA3EC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();
  return v1;
}

unint64_t sub_29EBAA3EC()
{
  result = qword_2A1885860;
  if (!qword_2A1885860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885860);
  }

  return result;
}

void Connection.Request.value<A>(forEntitlement:)(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = v4[1];
  *token.val = *v4;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = sub_29EBAF930();
    SecTaskCopyValueForEntitlement(v9, v10, &token);

    v11 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_29EBADE18(&qword_2A1885868, type metadata accessor for CFError, MEMORY[0x29EDB9DC0]);
      v12 = v11;
      swift_allocError();
      *v13 = v12;
      swift_willThrow();
      swift_unknownObjectRelease();
      v14 = *token.val;
      if (!*token.val)
      {
LABEL_5:

        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885870, &qword_29EBB2420);
      v16 = swift_dynamicCast();
      (*(*(a3 - 8) + 56))(a4, v16 ^ 1u, 1, a3);
      v14 = *token.val;
      if (!*token.val)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

  sub_29EBAA3EC();
  swift_allocError();
  *v15 = 2;
  swift_willThrow();
}

uint64_t Connection.Rejection.reason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Connection.Rejection.underlyingError.getter()
{
  v1 = *(v0 + 16);
  MEMORY[0x29EDAAE00](v1);
  return v1;
}

unint64_t sub_29EBAA6E0()
{
  result = qword_2A1885878;
  if (!qword_2A1885878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885878);
  }

  return result;
}

uint64_t Connection.Rejection.errorDescription.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    swift_getErrorValue();
    return sub_29EBAFD30();
  }

  return result;
}

uint64_t Connection.Rejection.failureReason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Connection.Rejection.init(because:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t Connection.Rejection.init(becauseOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ELL, 0x800000029EBB5250);
  swift_getErrorValue();
  result = sub_29EBAFCC0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = a1;
  return result;
}

uint64_t sub_29EBAA8A0()
{
  result = *(v0 + 16);
  if (result)
  {
    swift_getErrorValue();
    return sub_29EBAFD30();
  }

  return result;
}

uint64_t sub_29EBAA8EC()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885848);
  __swift_project_value_buffer(v0, qword_2A1885848);
  return sub_29EBAF770();
}

void *sub_29EBAA968(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v10 = v9;
  v41 = a6;
  v42 = a4;
  v40 = a2;
  v15 = *v10;
  v16 = sub_29EBAF830();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v45 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v46 = *a1;
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v19 = a9;
  v20 = sub_29EBAF780();
  __swift_project_value_buffer(v20, qword_2A1885848);

  v21 = sub_29EBAF760();
  v22 = sub_29EBAFA70();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v15;
    v24 = v23;
    v37 = swift_slowAlloc();
    v38 = a7;
    v47 = v37;
    *v24 = 136446210;

    v25 = v10;
    v26 = a3;
    v27 = a5;
    v28 = sub_29EBA1458(v46, v18, &v47);

    *(v24 + 4) = v28;
    a5 = v27;
    a3 = v26;
    v10 = v25;
    v19 = a9;
    _os_log_impl(&dword_29EB8F000, v21, v22, "Attempting to listen on “%{public}s”…", v24, 0xCu);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    a7 = v38;
    MEMORY[0x29EDAAF90](v29, -1, -1);
    v30 = v24;
    v15 = v39;
    MEMORY[0x29EDAAF90](v30, -1, -1);
  }

  v31 = swift_allocObject();
  v32 = v40;
  v31[2] = v41;
  v31[3] = a7;
  v31[4] = v32;
  v31[5] = a3;
  v33 = v43;
  v31[6] = v42;
  v31[7] = a5;
  v31[8] = v33;
  v31[9] = v19;
  v31[10] = v15;

  sub_29EBAF820();
  sub_29EBAF890();
  swift_allocObject();
  v34 = v44;
  v35 = sub_29EBAF880();

  if (v34)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10[2] = v35;
    v10[3] = 0;
  }

  return v10;
}

uint64_t sub_29EBAAC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_29EBAF840();
  MEMORY[0x2A1C7C4A8](v8);
  sub_29EBADBC8();
  return sub_29EBAF850();
}

void sub_29EBAB10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, __int128 *))
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  swift_beginAccess();
  v12[0] = v13;
  v12[1] = v14;
  a5(v12, &v10);
  swift_endAccess();
  nullsub_1();
  if (v5)
  {
    v9 = v10;
    v7 = v11;
    sub_29EBAA6E0();
    swift_allocError();
    *v8 = v9;
    *(v8 + 16) = v7;
  }
}

uint64_t sub_29EBAB1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
}

uint64_t *sub_29EBAB258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v8 = v7;
  v40 = a4;
  v37 = a1;
  v45 = *v8;
  v13 = sub_29EBAF7C0();
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = *(a3 + 8);
  v43 = *a3;
  v39 = *(a3 + 16);
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v17 = sub_29EBAF780();
  __swift_project_value_buffer(v17, qword_2A1885848);

  v18 = sub_29EBAF760();
  v19 = sub_29EBAFA70();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = a7;
    v36 = a2;
    v22 = v21;
    v44[0] = v21;
    *v20 = 136446210;

    v23 = a5;
    v24 = sub_29EBA1458(v43, v16, v44);

    *(v20 + 4) = v24;
    a5 = v23;
    _os_log_impl(&dword_29EB8F000, v18, v19, "Attempting to connect to the server “%{public}s”…", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v25 = v22;
    a7 = v35;
    a2 = v36;
    MEMORY[0x29EDAAF90](v25, -1, -1);
    MEMORY[0x29EDAAF90](v20, -1, -1);
  }

  v26 = swift_allocObject();
  v26[2] = v40;
  v26[3] = a5;
  v27 = v45;
  v26[4] = v45;
  v28 = swift_allocObject();
  v28[2] = v41;
  v28[3] = a7;
  v28[4] = v27;
  v8[2] = 0;
  sub_29EBAF810();

  if (v39)
  {
    sub_29EBAF7B0();
    v29 = v42;
    v30 = sub_29EBAF7A0();
    v31 = v29;
    if (v29)
    {
LABEL_7:

      swift_deallocPartialClassInstance();
      return v8;
    }
  }

  else
  {
    sub_29EBAF7B0();
    v32 = v42;
    v30 = sub_29EBAF790();
    v31 = v32;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  v8[3] = v30;
  v44[0] = v37;
  v44[1] = a2;
  sub_29EBAD348();

  sub_29EBAF7E0();

  if (v31)
  {
  }

  return v8;
}

double sub_29EBAB68C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a5;
  v8 = sub_29EBAF8F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v34[-v12];
  type metadata accessor for AddressedEnvelope(0);
  sub_29EBADE18(&qword_2A18858D8, type metadata accessor for AddressedEnvelope, &unk_29EBB2170);
  sub_29EBAF8D0();
  v36 = a1;
  v37 = v8;
  v38 = a2;
  v39 = a4;
  v14 = v42;
  v15 = qword_2A18850E0;
  swift_retain_n();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_29EBAF780();
  __swift_project_value_buffer(v16, qword_2A1885848);
  v17 = sub_29EBAFA40();
  v18 = sub_29EBAF760();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v35 = v17;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136446210;

    v22 = sub_29EBA6D44();
    v24 = v23;

    v25 = sub_29EBA1458(v22, v24, &v42);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_29EB8F000, v18, v35, "A message in the envelope “%{public}s” was received.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x29EDAAF90](v21, -1, -1);
    MEMORY[0x29EDAAF90](v20, -1, -1);
  }

  v26 = v36;
  v27 = v37;
  v28 = sub_29EBAFA10();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  (*(v9 + 16))(&v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v26, v27);
  v29 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v40;
  *(v30 + 4) = v38;
  *(v30 + 5) = v31;
  *(v30 + 6) = v14;
  (*(v9 + 32))(&v30[v29], &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v27);
  *&v30[(v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8] = v39;

  sub_29EBA9EE8(0, 0, v13, &unk_29EBB26D8, v30);

  v32 = v41;
  *(v41 + 32) = 0;
  result = 0.0;
  *v32 = 0u;
  v32[1] = 0u;
  return result;
}

uint64_t sub_29EBABBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_29EBAF8F0();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBABC6C, 0, 0);
}

uint64_t sub_29EBABC6C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  (*(v3 + 16))(v1, v0[5], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v10 = (v4 + *v4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_29EBABDF4;
  v8 = v0[4];

  return (v10)(v8, sub_29EBAE34C, v6);
}

uint64_t sub_29EBABDF4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBABF38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_29EBABF38()
{

  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_29EBAF780();
  __swift_project_value_buffer(v2, qword_2A1885848);
  v3 = sub_29EBAFA50();
  MEMORY[0x29EDAAE00](v1);
  v4 = sub_29EBAF760();
  MEMORY[0x29EDAADF0](v1);
  v5 = os_log_type_enabled(v4, v3);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x29EDAAE00](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_29EB8F000, v4, v3, "A message couldn’t be handled: %{public}@", v7, 0xCu);
    sub_29EBAD824(v8, &qword_2A18858C8, &qword_29EBB26C0);
    MEMORY[0x29EDAAF90](v8, -1, -1);
    MEMORY[0x29EDAAF90](v7, -1, -1);
    MEMORY[0x29EDAADF0](v6);
  }

  else
  {

    MEMORY[0x29EDAADF0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29EBAC0EC(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
  sub_29EBADA30(&qword_2A18858E0, sub_29EBA865C, sub_29EBADAC0, &protocol conformance descriptor for <> Result<A, B>);
  return sub_29EBAF8C0();
}

uint64_t sub_29EBAC1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_29EBAF8A0();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v8 = sub_29EBAF780();
  __swift_project_value_buffer(v8, qword_2A1885848);
  v9 = sub_29EBAFA50();
  v10 = *(v5 + 16);
  v10(v7, a1, v4);
  v11 = sub_29EBAF760();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = a2;
    v14 = v13;
    *v12 = 138543362;
    sub_29EBADE18(&qword_2A18858C0, MEMORY[0x29EDCA350], MEMORY[0x29EDCA358]);
    swift_allocError();
    HIDWORD(v20) = v9;
    v10(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v12 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_29EB8F000, v11, BYTE4(v20), "A session was canceled: %{public}@", v12, 0xCu);
    sub_29EBAD824(v14, &qword_2A18858C8, &qword_29EBB26C0);
    v17 = v14;
    a2 = v21;
    MEMORY[0x29EDAAF90](v17, -1, -1);
    MEMORY[0x29EDAAF90](v12, -1, -1);
  }

  else
  {

    v18 = (*(v5 + 8))(v7, v4);
  }

  return a2(v18);
}

uint64_t Connection.deinit()
{
  if (*(v0 + 16))
  {

    sub_29EBAF870();
  }

  if (*(v0 + 24))
  {

    sub_29EBAF7F0();
  }

  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_29EBAF870();
  }

  if (*(v0 + 24))
  {

    sub_29EBAF7F0();
  }

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EBAC5E4(uint64_t a1, int a2)
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

uint64_t sub_29EBAC62C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConnectionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29EBAC7D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2A1C73D48](sub_29EBAC7F0, 0, 0);
}

uint64_t sub_29EBAC7F0()
{
  v1 = *(v0[6] + 24);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = swift_task_alloc();
    v0[8] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    v4 = swift_task_alloc();
    v0[9] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
    *v4 = v0;
    v4[1] = sub_29EBAC970;

    return MEMORY[0x2A1C73C80](v0 + 2, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_29EBAD1D0, v3, v5);
  }

  else
  {
    sub_29EBAA3EC();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_29EBAC970()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29EBACAF8;
  }

  else
  {

    v2 = sub_29EBACA8C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBACA8C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_29EBACAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EBACB64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v12 - v7;
  v12[1] = a3;
  (*(v6 + 16))(v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
  sub_29EBADE18(&qword_2A18858B0, type metadata accessor for AddressedEnvelope, &unk_29EBB2148);
  sub_29EBADA30(&qword_2A1885898, sub_29EBA8524, sub_29EBAD17C, &protocol conformance descriptor for <> Result<A, B>);
  sub_29EBAF7D0();
}

uint64_t sub_29EBACDB0(uint64_t *a1)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    MEMORY[0x29EDAAE00]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
    return sub_29EBAF9E0();
  }

  else
  {
    sub_29EBAD2E8(v2, a1[1], a1[2] & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
    return sub_29EBAF9F0();
  }
}

uint64_t sub_29EBACE4C(uint64_t a1)
{
  v3 = sub_29EBAF8F0();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24))
  {
    type metadata accessor for SyncAddressedEnvelope(0);
    sub_29EBADE18(&qword_2A1885888, type metadata accessor for SyncAddressedEnvelope, &unk_29EBB20F8);

    sub_29EBAF800();
    if (v2)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
      sub_29EBADA30(&qword_2A1885898, sub_29EBA8524, sub_29EBAD17C, &protocol conformance descriptor for <> Result<A, B>);
      sub_29EBAF8D0();
      (*(v4 + 8))(v6, v3);

      return v9[1];
    }
  }

  else
  {
    sub_29EBAA3EC();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_29EBAD0C8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x1000000000000026;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

unint64_t sub_29EBAD128()
{
  result = qword_2A1885880;
  if (!qword_2A1885880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885880);
  }

  return result;
}

unint64_t sub_29EBAD17C()
{
  result = qword_2A18858A0;
  if (!qword_2A18858A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858A0);
  }

  return result;
}

uint64_t sub_29EBAD1D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EBAD26C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);

  return sub_29EBACDB0(a1);
}

void sub_29EBAD2E8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_29EB9943C(a1, a2);
  }
}

uint64_t sub_29EBAD2F8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

unint64_t sub_29EBAD348()
{
  result = qword_2A18858B8;
  if (!qword_2A18858B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858B8);
  }

  return result;
}

uint64_t sub_29EBAD39C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EBAD494;

  return v6(a1);
}

uint64_t sub_29EBAD494()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EBAD58C()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29EBAD66C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29EBAF8F0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29EBA5F94;

  return sub_29EBABBA0(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_29EBAD7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBAD824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EBAD884()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBAD8BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EBA5F94;

  return sub_29EBAD39C(a1, v4);
}

uint64_t sub_29EBAD974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EB99244;

  return sub_29EBAD39C(a1, v4);
}

uint64_t sub_29EBADA30(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885890, &qword_29EBB26A8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EBADAC0()
{
  result = qword_2A18858E8;
  if (!qword_2A18858E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858E8);
  }

  return result;
}

uint64_t sub_29EBADB14()
{

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

unint64_t sub_29EBADBC8()
{
  result = qword_2A18858F8;
  if (!qword_2A18858F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858F8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29EBADC38(uint64_t *a1, int a2)
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

uint64_t sub_29EBADC80(uint64_t result, int a2, int a3)
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

uint64_t sub_29EBADCDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29EBADD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EBADD70()
{
  result = qword_2A1885908;
  if (!qword_2A1885908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885908);
  }

  return result;
}

unint64_t sub_29EBADDC4()
{
  result = qword_2A1885910;
  if (!qword_2A1885910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885910);
  }

  return result;
}

uint64_t sub_29EBADE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EBADE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncAddressedEnvelope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBADEC4(uint64_t a1)
{
  v2 = type metadata accessor for SyncAddressedEnvelope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBADF20()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EBAE00C(uint64_t a1)
{
  v4 = *(sub_29EBAF8F0() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EB99244;

  return sub_29EBA9994(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_29EBAE240()
{
  result = qword_2A1885928;
  if (!qword_2A1885928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885928);
  }

  return result;
}

unint64_t sub_29EBAE298()
{
  result = qword_2A1885930;
  if (!qword_2A1885930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885930);
  }

  return result;
}

unint64_t sub_29EBAE2F0()
{
  result = qword_2A1885938;
  if (!qword_2A1885938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885938);
  }

  return result;
}

uint64_t sub_29EBAE368(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_29EBAF3E0(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_29EBA2260(a2, a3, a4 & 1);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_29EBA40DC();
        v16 = v18;
      }

      result = sub_29EBAF080(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_29EBAE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBAE494, 0, 0);
}

uint64_t sub_29EBAE494()
{
  v1 = v0[5];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  if (*(v2 + 16) && (v3 = sub_29EBA22E8(v0[3], v0[4]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v0[6] = v5;

    os_unfair_lock_unlock((v1 + 32));
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_29EBAE600;
      v7 = v0[2];

      return sub_29EBAC7D0(v7);
    }
  }

  else
  {
    os_unfair_lock_unlock((v1 + 32));
  }

  type metadata accessor for XPCActorSystemError(0);
  sub_29EB98378();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_29EBAE600(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v9 = sub_29EBAE7B0;
  }

  else
  {
    *(v8 + 88) = a3;
    *(v8 + 72) = a2;
    *(v8 + 80) = a1;
    v9 = sub_29EBAE73C;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EBAE73C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_29EBAE7B0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_29EBAE818()
{
  type metadata accessor for Transport();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x29EDCA190];
  v2 = sub_29EBA546C(MEMORY[0x29EDCA190]);
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  result = sub_29EBA5570(v1);
  *(v0 + 48) = 0;
  *(v0 + 56) = result;
  qword_2A1889A80 = v0;
  return result;
}

uint64_t sub_29EBAE880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  os_unfair_lock_lock((a4 + 32));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + 40);
  *(a4 + 40) = 0x8000000000000000;
  sub_29EBAF538(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 40) = v10;
  os_unfair_lock_unlock((a4 + 32));
}

uint64_t *sub_29EBAE940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = a1;
  v7 = v5;
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  os_unfair_lock_lock((v5 + 48));
  v14 = *(v5 + 56);
  if (*(v14 + 16) && (v15 = sub_29EBA2260(v12, v11, v13), (v16 & 1) != 0))
  {
    a5 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v23[0] = v12;
    v23[1] = v11;
    v24 = v13;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = a4;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v12;
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    type metadata accessor for Connection();
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v20 = sub_29EBAB258(v25, a2, v23, v18, a5, sub_29EBAED4C, v19);
    if (!v6)
    {
      a5 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = *(v7 + 56);
      *(v7 + 56) = 0x8000000000000000;
      sub_29EBAF3E0(a5, v12, v11, v13, isUniquelyReferenced_nonNull_native);

      *(v7 + 56) = v23[0];
    }
  }

  os_unfair_lock_unlock((v7 + 48));
  return a5;
}

os_unfair_lock_s *sub_29EBAEB10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    os_unfair_lock_lock(result + 12);

    sub_29EBAE368(0, a2, a3, a4 & 1);
    os_unfair_lock_unlock(v8 + 12);
  }

  return result;
}

uint64_t sub_29EBAEBA8()
{
  sub_29EBAD824(v0 + 24, &qword_2A1885958, &qword_29EBB2990);
  sub_29EBAD824(v0 + 40, &qword_2A1885960, &qword_29EBB2998);
  sub_29EBAD824(v0 + 56, &qword_2A1885968, &qword_29EBB29A0);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t sub_29EBAEC44()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885940, &qword_29EBB2978);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAEC74()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885948, &qword_29EBB2980);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAECA4()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885950, &qword_29EBB2988);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAECD4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EBAED0C()
{

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

unint64_t sub_29EBAED5C(unint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for XPCActorID(0);
  v4 = *(v31 - 8);
  result = MEMORY[0x2A1C7C4A8](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_29EBAFAB0();
    v13 = *(v4 + 72);
    v33 = (v12 + 1) & v11;
    v34 = a2 + 64;
    v32 = v13;
    do
    {
      v14 = a1;
      v15 = v11;
      v16 = v13 * v10;
      sub_29EB9707C(*(a2 + 48) + v13 * v10, v7);
      v17 = a2;
      sub_29EBAFD80();
      v19 = *v7;
      v18 = *(v7 + 1);
      v20 = *(v7 + 8);
      if (v20 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v20 & 0x100) == 0)
        {
LABEL_9:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_12;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v20 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_12:
      sub_29EB96EC0(v19, v18);
      sub_29EBAF970();

      v21 = sub_29EBAFDA0();
      result = sub_29EB970E0(v7);
      v11 = v15;
      v22 = v21 & v15;
      a1 = v14;
      a2 = v17;
      if (v14 >= v33)
      {
        v8 = v34;
        v13 = v32;
        if (v22 < v33)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v8 = v34;
        v13 = v32;
        if (v22 >= v33)
        {
          goto LABEL_17;
        }
      }

      if (v14 >= v22)
      {
LABEL_17:
        v23 = *(a2 + 48);
        result = v23 + v13 * v14;
        if (v13 * v14 < v16 || result >= v23 + v16 + v13)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * v14 != v16)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v24 = *(a2 + 56);
        v25 = (v24 + 8 * v14);
        v26 = (v24 + 8 * v10);
        if (v14 != v10 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29EBAF080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29EBAFAB0() + 1) & ~v5;
    do
    {
      v9 = 24 * v6;
      sub_29EBAFD80();

      sub_29EBAF970();
      v10 = sub_29EBAFDA0();

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
        v13 = v12 + 24 * v3;
        v14 = (v12 + v9);
        if (24 * v3 < v9 || v13 >= v14 + 24 || v3 != v6)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29EBAF250(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_29EBA21F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_29EBA3CAC();
      goto LABEL_7;
    }

    sub_29EBA2E24(v16, a3 & 1);
    v21 = sub_29EBA21F4(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_29EB9707C(a2, v10);
      return sub_29EBA3B74(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_29EBAFD20();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_29EBAF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v13 = sub_29EBA2260(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_29EBA40DC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_29EBA360C(v18, a5 & 1);
    v13 = sub_29EBA2260(a2, a3, v8 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_29EBAFD20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    sub_29EBA3C14(v13, a2, a3, v8 & 1, a1, v23);
  }
}

uint64_t sub_29EBAF538(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29EBA22E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_29EBA4258();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29EBA38CC(v16, a4 & 1);
    v11 = sub_29EBA22E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_29EBAFD20();
      __break(1u);
      return sub_29EBAF680();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_29EBA3C64(v11, a2, a3, a1, v21);
  }
}