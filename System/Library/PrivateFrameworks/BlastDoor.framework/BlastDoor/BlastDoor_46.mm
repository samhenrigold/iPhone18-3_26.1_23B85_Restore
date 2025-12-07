uint64_t sub_21442B754(uint64_t a1)
{
  sub_21442AA14(a1);
  v1 = sub_2146D9468();

  return v1;
}

unint64_t sub_21442B7B0()
{
  result = qword_27C913430;
  if (!qword_27C913430)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for IDSClientMessageContext, v0, v1);
    atomic_store(result, &qword_27C913430);
  }

  return result;
}

unint64_t sub_21442B808()
{
  result = qword_27C913438;
  if (!qword_27C913438)
  {
    result = swift_getWitnessTable(byte_21473ECC8, &type metadata for IDSClientMessageContext, v0, v1);
    atomic_store(result, &qword_27C913438);
  }

  return result;
}

uint64_t sub_21442B85C(uint64_t a1)
{
  result = sub_21442A7D4(&qword_27C913440, type metadata accessor for IDSClientMessageResult, asc_21473ED1C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21442B8B4(uint64_t a1)
{
  *(a1 + 8) = sub_21442A7D4(&qword_27C913448, type metadata accessor for IDSClientMessageResult, byte_21473ED48);
  result = sub_21442A7D4(&qword_27C913450, type metadata accessor for IDSClientMessageResult, aI_18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21442B938(uint64_t a1)
{
  *(a1 + 8) = sub_21442A7D4(&qword_27C913428, type metadata accessor for IDSClientMessageType, byte_214702B50);
  result = sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType, aAr);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21442B9F4(uint64_t a1)
{
  result = type metadata accessor for IDSClientMessageType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21442BA60(uint64_t a1)
{
  result = type metadata accessor for AccountsRepresentativeMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FMFShareInvitation(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for IDSProtobuf(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IDSSampleMessage(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for IDSNearbySessionMessage(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for PhotosSharedAlbumMessage(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_21442BC50()
{
  result = qword_27C913458;
  if (!qword_27C913458)
  {
    result = swift_getWitnessTable(aA_16, &type metadata for IDSClientMessageContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913458);
  }

  return result;
}

unint64_t sub_21442BCA8()
{
  result = qword_27C913460;
  if (!qword_27C913460)
  {
    result = swift_getWitnessTable(byte_21473F040, &type metadata for IDSClientMessageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913460);
  }

  return result;
}

unint64_t sub_21442BD00()
{
  result = qword_27C913468;
  if (!qword_27C913468)
  {
    result = swift_getWitnessTable(byte_21473EFB0, &type metadata for IDSClientMessageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913468);
  }

  return result;
}

unint64_t sub_21442BD58()
{
  result = qword_27C913470;
  if (!qword_27C913470)
  {
    result = swift_getWitnessTable(byte_21473EFD8, &type metadata for IDSClientMessageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913470);
  }

  return result;
}

unint64_t sub_21442BDB0()
{
  result = qword_27C913478;
  if (!qword_27C913478)
  {
    result = swift_getWitnessTable(byte_21473EEF8, &type metadata for IDSClientMessageContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913478);
  }

  return result;
}

unint64_t sub_21442BE08()
{
  result = qword_27C913480;
  if (!qword_27C913480)
  {
    result = swift_getWitnessTable(byte_21473EF20, &type metadata for IDSClientMessageContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913480);
  }

  return result;
}

uint64_t sub_21442BE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EmojiTapBack.$associatedMessageEmoji.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 EmojiTapBack.$associatedMessageEmoji.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t EmojiTapBack.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 EmojiTapBack.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t EmojiTapBack.associatedMessageEmoji.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t EmojiTapBack.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

BlastDoor::EmojiTapBack::AssociatedMessageType __swiftcall EmojiTapBack.AssociatedMessageType.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = defaultingRawValue == 2006;
  if (defaultingRawValue == 3006)
  {
    v2 = 2;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::EmojiTapBack::AssociatedMessageType_optional __swiftcall EmojiTapBack.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 3006)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 2006)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_21442C17C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473F388[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21442C204(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473F388[v2]);
  return sub_2146DA9B8();
}

uint64_t EmojiTapBack.associatedMessageGUID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void EmojiTapBack.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t EmojiTapBack.associatedMessageFallbackHash.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void EmojiTapBack.associatedMessageFallbackHash.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t EmojiTapBack.associatedMessageRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

void EmojiTapBack.associatedMessageEmoji.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*EmojiTapBack.associatedMessageEmoji.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*EmojiTapBack.$associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

void EmojiTapBack.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 96);
  v6 = *(v1 + 120);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*EmojiTapBack.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*EmojiTapBack.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

uint64_t EmojiTapBack.messageSummaryInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v9 = v1[10];
  v10 = v2;
  v11 = v1[12];
  v3 = v11;
  v4 = v1[9];
  v8[0] = v1[8];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2140915E8(v8, &v7);
}

__n128 EmojiTapBack.messageSummaryInfo.setter(uint64_t a1)
{
  v3 = v1[11];
  v7[2] = v1[10];
  v7[3] = v3;
  v7[4] = v1[12];
  v4 = v1[9];
  v7[0] = v1[8];
  v7[1] = v4;
  sub_214091658(v7);
  v5 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v5;
  v1[12] = *(a1 + 64);
  result = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = result;
  return result;
}

uint64_t EmojiTapBack.plainTextBody.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

void EmojiTapBack.plainTextBody.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

uint64_t EmojiTapBack.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x706154696A6F6D45, 0xEC0000006B636142);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v1, v2);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_21442CBE8()
{
  result = qword_27C913488;
  if (!qword_27C913488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmojiTapBack.AssociatedMessageType, &type metadata for EmojiTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C913488);
  }

  return result;
}

uint64_t sub_21442CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_21442CD10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_21442CD58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21442CDF0()
{
  result = qword_27C913490;
  if (!qword_27C913490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmojiTapBack.AssociatedMessageType, &type metadata for EmojiTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C913490);
  }

  return result;
}

void sub_21442CE44(uint64_t a1@<X8>)
{
  sub_214440324();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_21442CE90(uint64_t a2@<X8>)
{
  sub_214440324();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_21442CEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443DE7C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21442CF14@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21442CF2C()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_21442CF58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_21442CF74(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_21442CF94(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21442D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443DED0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21442D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

BOOL sub_21442D0B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_21442D0F0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AA0);
  __swift_project_value_buffer(v0, qword_27CA19AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "buildNumber";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "userInfo";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "version";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442D3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 5:
          sub_21442D51C(a1, v5, a2, a3);
          break;
        case 6:
          type metadata accessor for SecureCloudInviteRequestProtobuf(0);
          sub_2146D8F58();
          break;
      }
    }

    else if (result == 1)
    {
      type metadata accessor for SecureCloudInviteRequestProtobuf(0);
      sub_2146D8F28();
    }

    else if (result == 2 || result == 3)
    {
LABEL_2:
      type metadata accessor for SecureCloudInviteRequestProtobuf(0);
      v4 = 0;
      sub_2146D8F38();
    }
  }
}

uint64_t sub_21442D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);
  return sub_2146D8F98();
}

uint64_t sub_21442D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf, 2);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf, 3);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf, 4);
    sub_21442D710(v3, a1, a2, a3);
    sub_214439A5C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 36), v7, &qword_27C913940, &unk_214740F40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913940, &unk_214740F40);
  }

  sub_21443CC10(v7, v11, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
}

uint64_t sub_21442D920@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_21442DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913938, type metadata accessor for SecureCloudInviteRequestProtobuf, asc_214740C38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442DAC0(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf, asc_214740C70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442DB2C(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf, asc_214740C70);

  return sub_2146D9008();
}

uint64_t sub_21442DBAC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AB8);
  __swift_project_value_buffer(v0, qword_27CA19AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "buildNumber";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "userInfo";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "version";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        type metadata accessor for SecureCloudInviteResponseProtobuf(0);
        sub_2146D8F28();
      }

      else if (result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for SecureCloudInviteResponseProtobuf(0);
        sub_2146D8F38();
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_21442E0A8(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
        type metadata accessor for SecureCloudInviteResponseProtobuf(0);
        sub_2146D8F58();
      }
    }

    else
    {
      if (result == 4)
      {
        goto LABEL_2;
      }

      sub_21442E034(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_21442E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  sub_21443DE7C();
  return sub_2146D8EB8();
}

uint64_t sub_21442E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);
  return sub_2146D8F98();
}

uint64_t sub_21442E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf, 2);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf, 3);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf, 4);
    sub_21442E4C0(v3, a1, a2, a3);
    sub_21442E564(v3, a1, a2, a3);
    sub_2144302CC(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf, 7);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_21442E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  if ((*(a1 + *(result + 36) + 9) & 1) == 0)
  {
    sub_21443DE7C();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21442E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 40), v7, &qword_27C913940, &unk_214740F40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913940, &unk_214740F40);
  }

  sub_21443CC10(v7, v11, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
}

uint64_t sub_21442E774@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *(v11 + 8) = 256;
  *v11 = 0;
  v12 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  result = (*(*(v12 - 8) + 56))(a2 + v10, 1, 1, v12);
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_21442E884(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913950, type metadata accessor for SecureCloudInviteResponseProtobuf, byte_214740AD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442E924(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf, byte_214740B08);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442E990(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf, byte_214740B08);

  return sub_2146D9008();
}

uint64_t sub_21442EA10()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AD0);
  __swift_project_value_buffer(v0, qword_27CA19AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "accept";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "incompatibleVersion";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "incompatibleAccount";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ineligibleDevices";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "invalidAddress";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21442ECBC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AE8);
  __swift_project_value_buffer(v0, qword_27CA19AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activityDataPreview";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "secureCloudShareItem";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "legacyShareLocations";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cloudKitAddress";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
        sub_2146D8F38();
      }
    }

    else if (result == 1 || result == 3)
    {
LABEL_2:
      type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
      sub_2146D8EC8();
    }
  }
}

uint64_t sub_21442F00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214433444(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  if (!v4)
  {
    sub_21442F0F0(v3, a1, a2, a3);
    sub_21443B3D0(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf, 4);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf, 5);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

double sub_21442F194@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  v6 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21442F22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913960, type metadata accessor for SecureCloudInviteUserInfoProtobuf, asc_214740940);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442F2CC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442F338(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf, byte_214740978);

  return sub_2146D9008();
}

uint64_t sub_21442F444(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913910, type metadata accessor for SecureCloudPingRequestProtobuf, byte_214740850);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442F4E4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf, byte_214740EC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442F550(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf, byte_214740EC8);

  return sub_2146D9008();
}

uint64_t sub_21442F5FC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B18);
  __swift_project_value_buffer(v0, qword_27CA19B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442F7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for SecureCloudPingResponseProtobuf(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21442F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442F96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913968, type metadata accessor for SecureCloudPingResponseProtobuf, aY_103);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442FA0C(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf, aQ_18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442FA78(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf, aQ_18);

  return sub_2146D9008();
}

uint64_t sub_21442FB24()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B30);
  __swift_project_value_buffer(v0, qword_27CA19B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "buildNumber";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "date";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "upgradeToken";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "secureCloudShareItem";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "version";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_21442FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 2:
          goto LABEL_2;
        case 3:
          type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
          sub_2146D8F28();
          break;
        case 4:
          goto LABEL_2;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        sub_21442FFB4(a1, v5, a2, a3);
      }

      else if (result == 8)
      {
        type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
        sub_2146D8F58();
      }
    }

    else if (result == 5)
    {
LABEL_2:
      type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
      sub_2146D8F38();
    }

    else
    {
      type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
      sub_2146D8EC8();
    }
  }
}

uint64_t sub_21442FFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  sub_21443DED0();
  return sub_2146D8EB8();
}

uint64_t sub_214430028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf, 2);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf, 3);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf, 4);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf, 5);
    sub_214430188(v3, a1, a2, a3);
    sub_214430228(v3, a1, a2, a3);
    sub_2144302CC(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf, 8);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214430188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v6 = a1 + *(result + 36);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_214430228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  if ((*(a1 + *(result + 40) + 9) & 1) == 0)
  {
    sub_21443DED0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_2144302CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

double sub_214430350@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  result = 0.0;
  v11 = a1[10];
  *(a2 + a1[9]) = xmmword_2146E68C0;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 8) = 256;
  v13 = a2 + a1[11];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_214430424(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913970, type metadata accessor for SecureCloudUpgradeMessageProtobuf, byte_214740580);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144304C4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf, byte_2147405B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214430530(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf, byte_2147405B8);

  return sub_2146D9008();
}

uint64_t sub_2144305B0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B48);
  __swift_project_value_buffer(v0, qword_27CA19B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443079C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B60);
  __swift_project_value_buffer(v0, qword_27CA19B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214430964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
      sub_2146D8F28();
    }

    else if (result == 2)
    {
      type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_214430A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudWithdrawRequestProtobuf, 2);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214430ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_214430B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913980, type metadata accessor for SecureCloudWithdrawRequestProtobuf, aQ_109);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214430BEC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf, aI_20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214430C58(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf, aI_20);

  return sub_2146D9008();
}

uint64_t sub_214430CD8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B78);
  __swift_project_value_buffer(v0, qword_27CA19B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21473F3A0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "sample";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 5;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 6;
  *v13 = "totalEnergyBurnedInCanonicalUnit";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "totalBasalEnergyBurnedInCanonicalUnit";
  *(v15 + 1) = 37;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "totalDistanceInCanonicalUnit";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "goalType";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "goalInCanonicalUnit";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "bundleID";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "isWatchWorkout";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "isIndoorWorkout";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "deviceManufacturer";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "deviceModel";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 16;
  *v32 = "amm";
  *(v32 + 1) = 3;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 17;
  *v34 = "seymourCatalogWorkoutIdentifier";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 18;
  *v36 = "seymourMediaType";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214431244()
{
  v1 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v2 = type metadata accessor for SampleProtobuf(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout) = 2;
  v11 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  *v15 = 0;
  v15[1] = 0;
  return v0;
}

uint64_t sub_2144313C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v68 - v4;
  v6 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v7 = type metadata accessor for SampleProtobuf(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  v69 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  v70 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  v71 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  v72 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  *v15 = 0;
  v15[1] = 0;
  v73 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout) = 2;
  v16 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout) = 2;
  v17 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  v74 = v16;
  v75 = v17;
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  v76 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  *v18 = 0;
  v18[1] = 0;
  v19 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  v77 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  v78 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  v79 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  sub_213FB2E54(a1 + v22, v5, &qword_27C913638, "z\t\t");
  swift_beginAccess();
  sub_21443DF24(v5, v1 + v6);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v8 = v24;
  *(v8 + 8) = v23;
  v25 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration);
  swift_beginAccess();
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  swift_beginAccess();
  *v9 = v26;
  *(v9 + 8) = v25;
  v27 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v10 = v28;
  *(v10 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v11 = v30;
  *(v11 + 8) = v29;
  v31 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v33 = v69;
  swift_beginAccess();
  *v33 = v32;
  *(v33 + 8) = v31;
  v34 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = v70;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v71;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  v43 = v72;
  swift_beginAccess();
  *v43 = v42;
  v43[1] = v41;

  v44 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v73;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v74;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v75;
  swift_beginAccess();
  *v51 = v50;
  v51[1] = v49;

  v52 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v76;
  swift_beginAccess();
  *v55 = v54;
  v55[1] = v53;

  v56 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v57 = *v56;
  LOBYTE(v56) = *(v56 + 8);
  v58 = v77;
  swift_beginAccess();
  *v58 = v57;
  *(v58 + 8) = v56;
  v59 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v78;
  swift_beginAccess();
  *v62 = v61;
  v62[1] = v60;

  v63 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];

  v66 = v79;
  swift_beginAccess();
  *v66 = v65;
  v66[1] = v64;

  return v1;
}

uint64_t sub_214431A90()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample, &qword_27C913638, "z\t\t");

  return swift_deallocClassInstance();
}

void sub_214431B90(uint64_t a1)
{
  sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_214431CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for WorkoutProtobuf(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for WorkoutProtobuf._StorageClass(0);
    swift_allocObject();
    v10 = sub_2144313C4(v11);
    *(v4 + v8) = v10;
  }

  return sub_214431D48(v10, a1, a2, a3);
}

uint64_t sub_214431D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_214435134(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
          break;
        case 2:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
          goto LABEL_5;
        case 5:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
          goto LABEL_5;
        case 6:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
          goto LABEL_5;
        case 7:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
          goto LABEL_5;
        case 8:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
          goto LABEL_5;
        case 9:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
          goto LABEL_5;
        case 10:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
          goto LABEL_5;
        case 11:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID, MEMORY[0x277D217D0]);
          break;
        case 12:
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
          goto LABEL_23;
        case 13:
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
LABEL_23:
          sub_214020438(v17, v18, v19, v20, v21);
          break;
        case 14:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer, MEMORY[0x277D217D0]);
          break;
        case 15:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel, MEMORY[0x277D217D0]);
          break;
        case 16:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
LABEL_5:
          sub_2144352A4(v12, v13, v14, v15, v16, v11);
          break;
        case 17:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier, MEMORY[0x277D217D0]);
          break;
        case 18:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType, MEMORY[0x277D217D0]);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_2144320FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214435630(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
  if (!v4)
  {
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type, 2);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration, 5);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit, 6);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit, 7);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit, 8);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType, 9);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit, 10);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID, 11);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout, 12);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout, 13);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer, 14);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel, 15);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm, 16);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier, 17);
    return sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType, 18);
  }

  return result;
}

uint64_t sub_214432358(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v97 = type metadata accessor for SampleProtobuf(0);
  v3 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v93 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v93 - v12;
  v14 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v96;
  sub_213FB2E54(v15, v13, &qword_27C913638, "z\t\t");
  v17 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v18 = *(v6 + 56);
  sub_213FB2E54(v13, v8, &qword_27C913638, "z\t\t");
  v19 = v16 + v17;
  v20 = v97;
  sub_213FB2E54(v19, &v8[v18], &qword_27C913638, "z\t\t");
  v21 = *(v3 + 48);
  if (v21(v8, 1, v20) == 1)
  {

    sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
    v22 = a1;
    if (v21(&v8[v18], 1, v20) == 1)
    {
      sub_213FB2DF4(v8, &qword_27C913638, "z\t\t");
      goto LABEL_11;
    }

LABEL_6:
    sub_213FB2DF4(v8, &qword_27C913990, &qword_214741058);
    goto LABEL_7;
  }

  v22 = a1;
  v23 = v95;
  sub_213FB2E54(v8, v95, &qword_27C913638, "z\t\t");
  if (v21(&v8[v18], 1, v20) == 1)
  {

    sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
    sub_21443CC78(v23, type metadata accessor for SampleProtobuf);
    goto LABEL_6;
  }

  v25 = v94;
  sub_21443CC10(&v8[v18], v94, type metadata accessor for SampleProtobuf);

  v26 = sub_214440134(v23, v25);
  sub_21443CC78(v25, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
  sub_21443CC78(v23, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v8, &qword_27C913638, "z\t\t");
  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v27 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  swift_beginAccess();
  if (v29)
  {
    if ((*(v30 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v30 + 8) & 1) != 0 || v28 != *v30)
  {
    goto LABEL_7;
  }

  v31 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  swift_beginAccess();
  if (v33)
  {
    if ((*(v34 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v34 + 8) & 1) != 0 || v32 != *v34)
  {
    goto LABEL_7;
  }

  v35 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  if (v37)
  {
    if ((*(v38 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v38 + 8) & 1) != 0 || v36 != *v38)
  {
    goto LABEL_7;
  }

  v39 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  if (v41)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v40 != *v42)
  {
    goto LABEL_7;
  }

  v43 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  swift_beginAccess();
  if (v45)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v44 != *v46)
  {
    goto LABEL_7;
  }

  v47 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  swift_beginAccess();
  v48 = *v47;
  v49 = *(v47 + 8);
  v50 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  swift_beginAccess();
  if (v49)
  {
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v50 + 8) & 1) != 0 || v48 != *v50)
  {
    goto LABEL_7;
  }

  v51 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  swift_beginAccess();
  if (v53)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v52 != *v54)
  {
    goto LABEL_7;
  }

  v55 = (v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v58 = (v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (v56 != *v58 || v57 != v59) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v59)
  {
    goto LABEL_7;
  }

  v60 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  v61 = *(v22 + v60);
  v62 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  v63 = *(v16 + v62);
  if (v61 == 2)
  {
    if (v63 == 2)
    {
      goto LABEL_58;
    }

LABEL_7:

    return 0;
  }

  if (v63 == 2 || ((v61 ^ v63) & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_58:
  v64 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  v65 = *(v22 + v64);
  v66 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  v67 = *(v16 + v66);
  if (v65 == 2)
  {
    if (v67 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v67 == 2 || ((v65 ^ v67) & 1) != 0)
  {
    goto LABEL_7;
  }

  v68 = (v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v69 = *v68;
  v70 = v68[1];
  v71 = (v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (v69 != *v71 || v70 != v72) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v72)
  {
    goto LABEL_7;
  }

  v73 = (v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[1];
  v76 = (v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (v74 != *v76 || v75 != v77) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v77)
  {
    goto LABEL_7;
  }

  v78 = v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  swift_beginAccess();
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  swift_beginAccess();
  if (v80)
  {
    if ((*(v81 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v81 + 8) & 1) != 0 || v79 != *v81)
  {
    goto LABEL_7;
  }

  v82 = (v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = (v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (v83 != *v85 || v84 != v86) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v86)
  {
    goto LABEL_7;
  }

  v87 = (v22 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  v90 = (v16 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v91 = v90[1];
  if (!v89)
  {

    if (v91)
    {

      return 0;
    }

    return 1;
  }

  if (!v91)
  {
    goto LABEL_7;
  }

  if (v88 == *v90 && v89 == v91)
  {

    return 1;
  }

  v92 = sub_2146DA6A8();

  result = 0;
  if (v92)
  {
    return 1;
  }

  return result;
}

uint64_t sub_214432EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913988, type metadata accessor for WorkoutProtobuf, byte_214740288);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214432F5C(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf, byte_2147402C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214432FC8(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf, byte_2147402C0);

  return sub_2146D9008();
}

uint64_t sub_214433088()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B90);
  __swift_project_value_buffer(v0, qword_27CA19B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "endDate";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      type metadata accessor for SampleProtobuf(0);
      sub_2146D8F28();
    }

    else if (result == 1)
    {
      type metadata accessor for SampleProtobuf(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214433378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214433444(v3, a1, a2, a3, type metadata accessor for SampleProtobuf);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for SampleProtobuf, 2);
    sub_214436FB0(v3, a1, a2, a3, type metadata accessor for SampleProtobuf, 3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214433444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

uint64_t sub_2144334E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

double sub_21443356C@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_214433618(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913998, type metadata accessor for SampleProtobuf, aA_106);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144336B8(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214433724(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);

  return sub_2146D9008();
}

uint64_t sub_2144337A4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BA8);
  __swift_project_value_buffer(v0, qword_27CA19BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2146EA700;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "sample";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sourceUUID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "snapshotIndex";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timeZoneOffsetFromUTCForNoon";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 20;
  *v15 = "energyBurned";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 21;
  *v17 = "energyBurnedGoal";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 30;
  *v19 = "briskMinutes";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 31;
  *v21 = "briskMinutesGoal";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 40;
  *v22 = "activeHours";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 41;
  *v24 = "activeHoursGoal";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 50;
  *v26 = "walkingAndRunningDistance";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 51;
  *v28 = "stepCount";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 60;
  *v30 = "pushCount";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 61;
  *v32 = "wheelchairUse";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 70;
  *v34 = "mmv";
  *(v34 + 1) = 3;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 71;
  *v36 = "mmg";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 72;
  *v37 = "amm";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214433D54(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214433DA8()
{
  v1 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v2 = type metadata accessor for SampleProtobuf(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid) = xmmword_2146E68C0;
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v17 = 0;
  *(v17 + 8) = 1;
  return v0;
}

uint64_t sub_214433F5C()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample, &qword_27C913638, "z\t\t");
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid), *(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid + 8));

  return swift_deallocClassInstance();
}

void sub_21443400C(uint64_t a1)
{
  sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_214434120(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214434224(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
      if (v3 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21443432C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2144343D8(uint64_t a1)
{
  sub_21443432C(319, &qword_27C913620, type metadata accessor for WorkoutProtobuf, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21443432C(319, &qword_27C913628, type metadata accessor for AchievementProtobuf, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2146D8DF8();
      if (v3 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913630, type metadata accessor for ActivitySnapshotProtobuf, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144345CC(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_27C912D80, MEMORY[0x277D84A28]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214434778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_2146D8DF8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21443484C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C903E58, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913688, type metadata accessor for ShareLocationsProtobuf, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
          if (v5 <= 0x3F)
          {
            sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_214434A54(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21443432C(319, &qword_27C913688, type metadata accessor for ShareLocationsProtobuf, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214434BC0(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214434C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ActivitySnapshotProtobuf(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for ActivitySnapshotProtobuf._StorageClass(0);
    swift_allocObject();
    v12 = sub_214440338(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_214434D50(v10, a1, a2, a3);
}

uint64_t sub_214434D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_214435134(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
          break;
        case 2:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid, MEMORY[0x277D21760]);
          break;
        case 3:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
          goto LABEL_5;
        case 4:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
          goto LABEL_5;
        case 20:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
          goto LABEL_5;
        case 21:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
          goto LABEL_5;
        case 30:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
          goto LABEL_5;
        case 31:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
          goto LABEL_5;
        case 40:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
          goto LABEL_5;
        case 41:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
          goto LABEL_5;
        case 50:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
          goto LABEL_5;
        case 51:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
          goto LABEL_5;
        case 60:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
          goto LABEL_5;
        case 61:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
          goto LABEL_5;
        case 70:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
          goto LABEL_5;
        case 71:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
          goto LABEL_5;
        case 72:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
LABEL_5:
          sub_2144352A4(v12, v13, v14, v15, v16, v11);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214435134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for SampleProtobuf(0);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21443520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2144352A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21443533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144353BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214435630(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
  if (!v4)
  {
    sub_21443584C(a1, a2, a3, a4);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex, 3);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon, 4);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned, 20);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal, 21);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes, 30);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal, 31);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours, 40);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal, 41);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance, 50);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount, 51);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount, 60);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse, 61);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv, 70);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg, 71);
    return sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm, 72);
  }

  return result;
}

uint64_t sub_214435630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for SampleProtobuf(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v9, &qword_27C913638, "z\t\t");
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_213FB2DF4(v9, &qword_27C913638, "z\t\t");
  }

  sub_21443CC10(v9, v13, type metadata accessor for SampleProtobuf);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for SampleProtobuf);
}

uint64_t sub_21443584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  result = swift_beginAccess();
  v6 = v4[1];
  if (v6 >> 60 != 15)
  {
    v7 = *v4;
    sub_21402D9F8(v7, v6);
    sub_2146D9048();
    return sub_213FDC6BC(v7, v6);
  }

  return result;
}

uint64_t sub_214435900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_214435990(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v102 = type metadata accessor for SampleProtobuf(0);
  v3 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v98 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v100 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v98 - v12;
  v14 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v101;
  sub_213FB2E54(v15, v13, &qword_27C913638, "z\t\t");
  v17 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v18 = *(v6 + 56);
  sub_213FB2E54(v13, v8, &qword_27C913638, "z\t\t");
  v19 = v16 + v17;
  v20 = v102;
  sub_213FB2E54(v19, &v8[v18], &qword_27C913638, "z\t\t");
  v21 = *(v3 + 48);
  if (v21(v8, 1, v20) == 1)
  {

    sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
    v22 = a1;
    if (v21(&v8[v18], 1, v20) == 1)
    {
      sub_213FB2DF4(v8, &qword_27C913638, "z\t\t");
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v22 = a1;
  v23 = v100;
  sub_213FB2E54(v8, v100, &qword_27C913638, "z\t\t");
  if (v21(&v8[v18], 1, v20) == 1)
  {

    sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
    sub_21443CC78(v23, type metadata accessor for SampleProtobuf);
LABEL_6:
    sub_213FB2DF4(v8, &qword_27C913990, &qword_214741058);
LABEL_7:

    return 0;
  }

  v25 = v99;
  sub_21443CC10(&v8[v18], v99, type metadata accessor for SampleProtobuf);

  v26 = sub_214440134(v23, v25);
  sub_21443CC78(v25, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
  sub_21443CC78(v23, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v8, &qword_27C913638, "z\t\t");
  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v27 = (v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = v16;
  v31 = (v16 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  sub_213FDCA18(v29, v28);
  sub_213FDCA18(v32, v33);
  if (v28 >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {
      sub_213FDC6BC(v29, v28);
      goto LABEL_18;
    }

LABEL_16:
    sub_213FDC6BC(v29, v28);
    sub_213FDC6BC(v32, v33);
    return 0;
  }

  sub_213FDCA18(v29, v28);
  sub_213FDCA18(v32, v33);
  if (v33 >> 60 == 15)
  {

    sub_213FDC6BC(v32, v33);
    sub_213FDC6BC(v29, v28);
    goto LABEL_16;
  }

  v34 = sub_214466780(v29, v28, v32, v33);
  sub_213FDC6BC(v32, v33);
  sub_213FDC6BC(v29, v28);
  sub_213FDC6BC(v32, v33);
  sub_213FDC6BC(v29, v28);
  if (!v34)
  {
    goto LABEL_7;
  }

LABEL_18:
  v35 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  swift_beginAccess();
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  swift_beginAccess();
  if (v37)
  {
    if ((*(v38 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v38 + 8) & 1) != 0 || v36 != *v38)
  {
    goto LABEL_7;
  }

  v39 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  swift_beginAccess();
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  swift_beginAccess();
  if (v41)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v40 != *v42)
  {
    goto LABEL_7;
  }

  v43 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  swift_beginAccess();
  if (v45)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v44 != *v46)
  {
    goto LABEL_7;
  }

  v47 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  swift_beginAccess();
  v48 = *v47;
  v49 = *(v47 + 8);
  v50 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  swift_beginAccess();
  if (v49)
  {
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v50 + 8) & 1) != 0 || v48 != *v50)
  {
    goto LABEL_7;
  }

  v51 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  swift_beginAccess();
  if (v53)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v52 != *v54)
  {
    goto LABEL_7;
  }

  v55 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  swift_beginAccess();
  v56 = *v55;
  v57 = *(v55 + 8);
  v58 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  swift_beginAccess();
  if (v57)
  {
    if ((*(v58 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v58 + 8) & 1) != 0 || v56 != *v58)
  {
    goto LABEL_7;
  }

  v59 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  swift_beginAccess();
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  swift_beginAccess();
  if (v61)
  {
    if ((*(v62 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v62 + 8) & 1) != 0 || v60 != *v62)
  {
    goto LABEL_7;
  }

  v63 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  swift_beginAccess();
  if (v65)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v64 != *v66)
  {
    goto LABEL_7;
  }

  v67 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  swift_beginAccess();
  if (v69)
  {
    if ((*(v70 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v70 + 8) & 1) != 0 || v68 != *v70)
  {
    goto LABEL_7;
  }

  v71 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(v71 + 8);
  v74 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  swift_beginAccess();
  if (v73)
  {
    if ((*(v74 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v74 + 8) & 1) != 0 || v72 != *v74)
  {
    goto LABEL_7;
  }

  v75 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v75 + 8);
  v78 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  swift_beginAccess();
  if (v77)
  {
    if ((*(v78 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v78 + 8) & 1) != 0 || v76 != *v78)
  {
    goto LABEL_7;
  }

  v79 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  swift_beginAccess();
  v80 = *v79;
  v81 = *(v79 + 8);
  v82 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  swift_beginAccess();
  if (v81)
  {
    if ((*(v82 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v82 + 8) & 1) != 0 || v80 != *v82)
  {
    goto LABEL_7;
  }

  v83 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  swift_beginAccess();
  if (v85)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_7;
  }

  v87 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 8);
  v90 = v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  swift_beginAccess();
  if (v89)
  {
    if ((*(v90 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_7;
  }

  v91 = v22 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  swift_beginAccess();
  v92 = *v91;
  v93 = *(v91 + 8);

  v94 = (v30 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v95 = *v94;
  v96 = *(v94 + 8);

  if (v93)
  {
    if (!v96)
    {
      return 0;
    }
  }

  else
  {
    if (v92 == v95)
    {
      v97 = v96;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_214436588(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139A0, type metadata accessor for ActivitySnapshotProtobuf, byte_21473FFB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214436628(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf, byte_21473FFF0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214436694(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf, byte_21473FFF0);

  return sub_2146D9008();
}

uint64_t sub_214436754()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BC0);
  __swift_project_value_buffer(v0, qword_27CA19BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "sample";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "completedDate";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "doubleValue";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "intValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "workoutActivityType";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "definitionIdentifier";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "templateUniqueName";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_214436A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result == 1)
      {
        sub_214436BD4(a1, v5, a2, a3);
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for AchievementProtobuf(0);
        sub_2146D8F28();
      }
    }

    else if (result > 7)
    {
      if (result == 8 || result == 9)
      {
        type metadata accessor for AchievementProtobuf(0);
        sub_2146D8F38();
      }
    }

    else if (result == 5 || result == 7)
    {
      type metadata accessor for AchievementProtobuf(0);
      sub_2146D8F08();
    }
  }

  return result;
}

uint64_t sub_214436BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AchievementProtobuf(0);
  type metadata accessor for SampleProtobuf(0);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);
  return sub_2146D8F98();
}

uint64_t sub_214436C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214436DA0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for AchievementProtobuf, 3);
    sub_214436FB0(v3, a1, a2, a3, type metadata accessor for AchievementProtobuf, 4);
    sub_214437034(v3, a1, a2, a3);
    sub_2144370AC(v3, a1, a2, a3);
    sub_214437124(v3, a1, a2, a3);
    sub_21443719C(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214436DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SampleProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AchievementProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 20), v7, &qword_27C913638, "z\t\t");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913638, "z\t\t");
  }

  sub_21443CC10(v7, v11, type metadata accessor for SampleProtobuf);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf, a9_6);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for SampleProtobuf);
}

uint64_t sub_214436FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214437034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AchievementProtobuf(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_2144370AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AchievementProtobuf(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_214437124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AchievementProtobuf(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21443719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AchievementProtobuf(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214437218@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[5];
  v5 = type metadata accessor for SampleProtobuf(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = (a2 + a1[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v13);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_214437328(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139A8, type metadata accessor for AchievementProtobuf, byte_21473FE50);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144373C8(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf, asc_21473FE88);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214437434(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf, asc_21473FE88);

  return sub_2146D9008();
}

uint64_t sub_2144374B0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BD8);
  __swift_project_value_buffer(v0, qword_27CA19BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "activityShareURL";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "relationshipShareURL";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214437678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 3)
    {
      type metadata accessor for ShareLocationsProtobuf(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_214437720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  result = sub_21442F86C(v7, a1, a2, a3, a4, a5);
  if (!v8)
  {
    sub_21442E334(v7, a1, a2, a3, a6, a7);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144377E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_214437898(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139B0, type metadata accessor for ShareLocationsProtobuf, aY_104);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214437938(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144379A4(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);

  return sub_2146D9008();
}

uint64_t sub_214437A24()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BF0);
  __swift_project_value_buffer(v0, qword_27CA19BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activitySnapshot";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workouts";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "achievements";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "date";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214437C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          type metadata accessor for AchievementProtobuf(0);
          sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf, asc_21473FE88);
          goto LABEL_15;
        }

        if (result == 4)
        {
          type metadata accessor for ActivityDataPreviewProtobuf(0);
          sub_2146D8F28();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_214437E00(a1, v5, a2, a3);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = v4;
          type metadata accessor for WorkoutProtobuf(0);
          sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf, byte_2147402C0);
LABEL_15:
          v4 = v11;
          sub_2146D8F78();
        }
      }

LABEL_5:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214437E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  type metadata accessor for ActivitySnapshotProtobuf(0);
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf, byte_21473FFF0);
  return sub_2146D8F98();
}

uint64_t sub_214437EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214438044(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for WorkoutProtobuf(0);
      sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf, byte_2147402C0);
      sub_2146D90D8();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for AchievementProtobuf(0);
      sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf, asc_21473FE88);
      sub_2146D90D8();
    }

    sub_214438254(v3, a1, a2, a3);
    type metadata accessor for ActivityDataPreviewProtobuf(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214438044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ActivitySnapshotProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 28), v7, &qword_27C913608, &qword_21473F468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913608, &qword_21473F468);
  }

  sub_21443CC10(v7, v11, type metadata accessor for ActivitySnapshotProtobuf);
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf, byte_21473FFF0);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ActivitySnapshotProtobuf);
}

uint64_t sub_214438254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDataPreviewProtobuf(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_2144382D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  sub_2146D8DE8();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for ActivitySnapshotProtobuf(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = &a2[*(a1 + 32)];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_2144383B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139B8, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FB80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214438458(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144384C4(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);

  return sub_2146D9008();
}

uint64_t sub_214438544()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C08);
  __swift_project_value_buffer(v0, qword_27CA19C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inviterCloudKitAddress";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inviterCallerID";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inviterBuildNumber";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inviterVersion";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "activityDataPreview";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214438810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 5:
          type metadata accessor for InviteRequestProtobuf(0);
          sub_2146D8F58();
          break;
        case 6:
          sub_21443894C(a1, v5, a2, a3);
          break;
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
LABEL_2:
      type metadata accessor for InviteRequestProtobuf(0);
      sub_2146D8F38();
    }
  }
}

uint64_t sub_21443894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InviteRequestProtobuf(0);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  return sub_2146D8F98();
}

uint64_t sub_214438A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf, 1);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf, 2);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf, 3);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf, 4);
    sub_214438B30(v3, a1, a2, a3);
    sub_214438BA8(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214438B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for InviteRequestProtobuf(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214438BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InviteRequestProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 40), v7, &qword_27C9135E8, &unk_21473F440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v7, v11, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_214438DB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = a1[10];
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v11, 1, 1, v13);
}

uint64_t sub_214438EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913930, type metadata accessor for InviteRequestProtobuf, byte_21473FA90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214438F54(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913740, type metadata accessor for InviteRequestProtobuf, byte_214740CE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214438FC0(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913740, type metadata accessor for InviteRequestProtobuf, byte_214740CE8);

  return sub_2146D9008();
}

uint64_t sub_214439040()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C20);
  __swift_project_value_buffer(v0, qword_27CA19C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseCode";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inviteeCloudKitAddress";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inviteeShareLocations";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inviteeBuildNumber";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "inviteeVersion";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "activityDataPreview";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214439348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          type metadata accessor for InviteResponseProtobuf(0);
          sub_2146D8EF8();
          break;
        case 3:
LABEL_2:
          type metadata accessor for InviteResponseProtobuf(0);
          sub_2146D8F38();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        type metadata accessor for InviteResponseProtobuf(0);
        sub_2146D8F58();
      }

      else if (result == 7)
      {
        sub_21443957C(a1, v5, a2, a3);
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

      sub_2144394C8(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_2144394C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InviteResponseProtobuf(0);
  type metadata accessor for ShareLocationsProtobuf(0);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);
  return sub_2146D8F98();
}

uint64_t sub_21443957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InviteResponseProtobuf(0);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  return sub_2146D8F98();
}

uint64_t sub_214439630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf, 1);
  if (!v4)
  {
    sub_21443975C(v3, a1, a2, a3);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf, 3);
    sub_2144397D4(v3, a1, a2, a3);
    sub_2144399E4(v3, a1, a2, a3);
    sub_214439A5C(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf);
    sub_214439AD8(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for InviteResponseProtobuf(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_2146D9068();
  }

  return result;
}

uint64_t sub_2144397D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ShareLocationsProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 32), v7, &qword_27C913670, "8\t\t");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913670, "8\t\t");
  }

  sub_21443CC10(v7, v11, type metadata accessor for ShareLocationsProtobuf);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ShareLocationsProtobuf);
}

uint64_t sub_2144399E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for InviteResponseProtobuf(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214439A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214439AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 44), v7, &qword_27C9135E8, &unk_21473F440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v7, v11, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_214439CE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for ShareLocationsProtobuf(0);
  (*(*(v9 - 8) + 56))(a2 + v7, 1, 1, v9);
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_214439E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913928, type metadata accessor for InviteResponseProtobuf, byte_21473F9A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214439ED4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913728, type metadata accessor for InviteResponseProtobuf, a1_0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214439F40(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913728, type metadata accessor for InviteResponseProtobuf, a1_0);

  return sub_2146D9008();
}

uint64_t sub_214439FC0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C38);
  __swift_project_value_buffer(v0, qword_27CA19C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inviterShareLocations";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "activityDataPreview";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_21443A358(a1, v5, a2, a3);
        break;
      case 2:
        sub_21443A2A4(a1, v5, a2, a3);
        break;
      case 1:
        type metadata accessor for FinalizeHandshakeProtobuf(0);
        sub_2146D8F38();
        break;
    }
  }

  return result;
}

uint64_t sub_21443A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FinalizeHandshakeProtobuf(0);
  type metadata accessor for ShareLocationsProtobuf(0);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);
  return sub_2146D8F98();
}

uint64_t sub_21443A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FinalizeHandshakeProtobuf(0);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  return sub_2146D8F98();
}

uint64_t sub_21443A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for FinalizeHandshakeProtobuf, 1);
  if (!v4)
  {
    sub_21443A4AC(v3, a1, a2, a3);
    sub_21443A6BC(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ShareLocationsProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 24), v7, &qword_27C913670, "8\t\t");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913670, "8\t\t");
  }

  sub_21443CC10(v7, v11, type metadata accessor for ShareLocationsProtobuf);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf, aQ_16);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ShareLocationsProtobuf);
}

uint64_t sub_21443A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  sub_213FB2E54(a1 + *(v12 + 28), v7, &qword_27C9135E8, &unk_21473F440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v7, v11, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
  sub_2146D90F8();
  return sub_21443CC78(v11, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_21443A8CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for ShareLocationsProtobuf(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_21443A9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913920, type metadata accessor for FinalizeHandshakeProtobuf, byte_21473F8B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443AA84(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf, byte_214740DD8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443AAF0(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf, byte_214740DD8);

  return sub_2146D9008();
}

uint64_t sub_21443AB88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2146D9148();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146EA710;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_2146D9118();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_2146D9128();
}

uint64_t sub_21443ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21443AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_21442F86C(v4, a1, a2, a3, a4, 1);
  if (!v5)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443AE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913918, type metadata accessor for WithdrawInviteRequestProtobuf, byte_21473F7C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443AEFC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf, aA_17);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443AF68(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf, aA_17);

  return sub_2146D9008();
}

uint64_t sub_21443B014()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C68);
  __swift_project_value_buffer(v0, qword_27CA19C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareURL";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "invitationToken";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for SecureCloudShareItemProtobuf(0);
      sub_2146D8EC8();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for SecureCloudShareItemProtobuf(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21443B300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf, 1);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf, 2);
    sub_21443B3D0(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf, 3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  v8 = a1 + *(result + 28);
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    sub_21402D9F8(*v8, *(v8 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v10, v9);
  }

  return result;
}

double sub_21443B484@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + a1[7]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21443B51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139D8, type metadata accessor for SecureCloudShareItemProtobuf, asc_21473F658);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443B5BC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9136D8, type metadata accessor for SecureCloudShareItemProtobuf, byte_21473F690);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443B628(uint64_t a1, uint64_t a2)
{
  sub_21443B758(&qword_27C9136D8, type metadata accessor for SecureCloudShareItemProtobuf, byte_21473F690);

  return sub_2146D9008();
}

uint64_t sub_21443B758(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21443CC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21443CC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21443CCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_21443CDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v4;
      v25 = sub_2146DA6A8();
      v4 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v4;
      v33 = sub_2146DA6A8();
      v4 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v34 = v4[9];
  v36 = *(a1 + v34);
  v35 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v39 = *v37;
  v38 = v37[1];
  if (v35 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      v40 = v4;
      sub_213FDCA18(v36, v35);
      sub_213FDCA18(v39, v38);
      sub_213FDC6BC(v36, v35);
      v41 = v40;
      goto LABEL_41;
    }

LABEL_38:
    sub_213FDCA18(v36, v35);
    sub_213FDCA18(v39, v38);
    sub_213FDC6BC(v36, v35);
    sub_213FDC6BC(v39, v38);
    return 0;
  }

  if (v38 >> 60 == 15)
  {
    goto LABEL_38;
  }

  v43 = v4;
  sub_213FDCA18(v36, v35);
  sub_213FDCA18(v39, v38);
  v44 = sub_214466780(v36, v35, v39, v38);
  sub_213FDC6BC(v39, v38);
  sub_213FDC6BC(v36, v35);
  v41 = v43;
  if (!v44)
  {
    return 0;
  }

LABEL_41:
  v45 = v41[10];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 9);
  v48 = (a2 + v45);
  if (v47)
  {
    if ((*(v48 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v48 + 9))
    {
      return 0;
    }

    v54 = *v46;
    v55 = *(v46 + 8);
    v56 = *v48;
    v57 = *(v48 + 8);
    v58 = v54 != 0;
    if ((v55 & 1) == 0)
    {
      v58 = v54;
    }

    if (v57)
    {
      if (v56)
      {
        if (v58 != 1)
        {
          return 0;
        }
      }

      else if (v58)
      {
        return 0;
      }
    }

    else if (v58 != v56)
    {
      return 0;
    }
  }

  v49 = v41[11];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (v53)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (*v50 != *v52)
  {
    LOBYTE(v53) = 1;
  }

  if (v53)
  {
    return 0;
  }

LABEL_56:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443D144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913948, &qword_214740F78);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_63;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_63;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v26 = v14;
      v27 = sub_2146DA6A8();
      v14 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_63;
  }

  v28 = v14[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_63;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v14;
      v34 = sub_2146DA6A8();
      v14 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_63;
  }

  v35 = v14[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_63;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v14;
      v41 = sub_2146DA6A8();
      v14 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_63;
  }

  v42 = v14[9];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 9);
  v45 = a2 + v42;
  v46 = *(a2 + v42 + 9);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_32;
    }

LABEL_63:
    v60 = 0;
    return v60 & 1;
  }

  if (v46)
  {
    goto LABEL_63;
  }

  v52 = *v43;
  v53 = *v45;
  if (*(v45 + 8))
  {
    if (v53 <= 1)
    {
      if (v53)
      {
        if (v52 != 1)
        {
          goto LABEL_63;
        }
      }

      else if (v52)
      {
        goto LABEL_63;
      }
    }

    else if (v53 == 2)
    {
      if (v52 != 2)
      {
        goto LABEL_63;
      }
    }

    else if (v53 == 3)
    {
      if (v52 != 3)
      {
        goto LABEL_63;
      }
    }

    else if (v52 != 4)
    {
      goto LABEL_63;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_63;
  }

LABEL_32:
  v63 = v14;
  v47 = v14[10];
  v48 = *(v11 + 48);
  sub_213FB2E54(a1 + v47, v13, &qword_27C913940, &unk_214740F40);
  v49 = a2 + v47;
  v50 = v48;
  sub_213FB2E54(v49, &v13[v48], &qword_27C913940, &unk_214740F40);
  v51 = *(v5 + 48);
  if (v51(v13, 1, v4) == 1)
  {
    if (v51(&v13[v50], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C913940, &unk_214740F40);
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  sub_213FB2E54(v13, v10, &qword_27C913940, &unk_214740F40);
  if (v51(&v13[v50], 1, v4) == 1)
  {
    sub_21443CC78(v10, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
LABEL_44:
    sub_213FB2DF4(v13, &qword_27C913948, &qword_214740F78);
    goto LABEL_63;
  }

  sub_21443CC10(&v13[v50], v7, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  v54 = sub_21443D694(v10, v7);
  sub_21443CC78(v7, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443CC78(v10, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_213FB2DF4(v13, &qword_27C913940, &unk_214740F40);
  if ((v54 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_48:
  v55 = v63[11];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      goto LABEL_63;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v60 = sub_2146D9578();
  return v60 & 1;
}

uint64_t sub_21443D694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v14 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if (!v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_18;
    }

LABEL_15:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v18 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v18)
  {
    return 0;
  }

LABEL_18:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (v23 && (*v20 == *v22 && v21 == v23 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v23)
  {
    return 0;
  }

LABEL_25:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443D9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913948, &qword_214740F78);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_36;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_36;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v26 = v14;
      v27 = sub_2146DA6A8();
      v14 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_36;
  }

  v28 = v14[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_36;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v14;
      v34 = sub_2146DA6A8();
      v14 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_36;
  }

  v35 = v14[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_36;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v14;
      v41 = sub_2146DA6A8();
      v14 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_36;
  }

  v56 = v14;
  v42 = v14[9];
  v43 = *(v11 + 48);
  sub_213FB2E54(a1 + v42, v13, &qword_27C913940, &unk_214740F40);
  v44 = a2 + v42;
  v45 = v43;
  sub_213FB2E54(v44, &v13[v43], &qword_27C913940, &unk_214740F40);
  v46 = *(v5 + 48);
  if (v46(v13, 1, v4) != 1)
  {
    sub_213FB2E54(v13, v10, &qword_27C913940, &unk_214740F40);
    if (v46(&v13[v45], 1, v4) != 1)
    {
      sub_21443CC10(&v13[v45], v7, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v49 = sub_21443D694(v10, v7);
      sub_21443CC78(v7, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      sub_21443CC78(v10, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      sub_213FB2DF4(v13, &qword_27C913940, &unk_214740F40);
      if ((v49 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_21443CC78(v10, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
LABEL_35:
    sub_213FB2DF4(v13, &qword_27C913948, &qword_214740F78);
    goto LABEL_36;
  }

  if (v46(&v13[v45], 1, v4) != 1)
  {
    goto LABEL_35;
  }

  sub_213FB2DF4(v13, &qword_27C913940, &unk_214740F40);
LABEL_39:
  v50 = v56[10];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if ((v52 & 1) == 0)
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      goto LABEL_36;
    }

LABEL_45:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v47 = sub_2146D9578();
    return v47 & 1;
  }

  if (v54)
  {
    goto LABEL_45;
  }

LABEL_36:
  v47 = 0;
  return v47 & 1;
}

unint64_t sub_21443DE7C()
{
  result = qword_27C913958;
  if (!qword_27C913958)
  {
    result = swift_getWitnessTable(byte_2147412C0, &type metadata for SecureCloudInviteResponseProtobuf.ProtobufType, v0, v1);
    atomic_store(result, &qword_27C913958);
  }

  return result;
}

unint64_t sub_21443DED0()
{
  result = qword_27C913978;
  if (!qword_27C913978)
  {
    result = swift_getWitnessTable(asc_214741278, &type metadata for SecureCloudUpgradeMessageProtobuf.MessageType, v0, v1);
    atomic_store(result, &qword_27C913978);
  }

  return result;
}

uint64_t sub_21443DF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21443DF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21443E070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudShareItemProtobuf(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  if (v22 >> 60 != 15)
  {
    if (v25 >> 60 == 15)
    {
      goto LABEL_23;
    }

    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    v28 = sub_214466780(v23, v22, v26, v25);
    sub_213FDC6BC(v26, v25);
    sub_213FDC6BC(v23, v22);
    if (v28)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v25 >> 60 != 15)
  {
LABEL_23:
    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    sub_213FDC6BC(v23, v22);
    sub_213FDC6BC(v26, v25);
    return 0;
  }

  sub_213FDCA18(v23, v22);
  sub_213FDCA18(v26, v25);
  sub_213FDC6BC(v23, v22);
LABEL_26:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = (&v47 - v8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  MEMORY[0x28223BE20](v52);
  v10 = &v47 - v9;
  v11 = type metadata accessor for ShareLocationsProtobuf(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139D0, &unk_214741070);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v25)
  {
    goto LABEL_22;
  }

  v47 = v6;
  v48 = v10;
  v26 = v20[6];
  v27 = *(v17 + 48);
  v49 = a1;
  sub_213FB2E54(a1 + v26, v19, &qword_27C913670, "8\t\t");
  v28 = a2 + v26;
  v29 = a2;
  sub_213FB2E54(v28, &v19[v27], &qword_27C913670, "8\t\t");
  v30 = *(v12 + 48);
  if (v30(v19, 1, v11) != 1)
  {
    sub_213FB2E54(v19, v16, &qword_27C913670, "8\t\t");
    if (v30(&v19[v27], 1, v11) != 1)
    {
      v34 = v51;
      sub_21443CC10(&v19[v27], v51, type metadata accessor for ShareLocationsProtobuf);
      v35 = sub_21443E8FC(v16, v34, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v34, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v16, type metadata accessor for ShareLocationsProtobuf);
      sub_213FB2DF4(v19, &qword_27C913670, "8\t\t");
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_21443CC78(v16, type metadata accessor for ShareLocationsProtobuf);
LABEL_13:
    v31 = &qword_27C9139D0;
    v32 = &unk_214741070;
    v33 = v19;
LABEL_21:
    sub_213FB2DF4(v33, v31, v32);
    goto LABEL_22;
  }

  if (v30(&v19[v27], 1, v11) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v19, &qword_27C913670, "8\t\t");
LABEL_15:
  v36 = v20[7];
  v37 = *(v52 + 48);
  v38 = v48;
  sub_213FB2E54(v49 + v36, v48, &qword_27C9135E8, &unk_21473F440);
  sub_213FB2E54(v29 + v36, v38 + v37, &qword_27C9135E8, &unk_21473F440);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_213FB2DF4(v38, &qword_27C9135E8, &unk_21473F440);
LABEL_25:
      sub_2146D8DF8();
      sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_2146D9578();
      return v42 & 1;
    }

    goto LABEL_20;
  }

  v41 = v50;
  sub_213FB2E54(v38, v50, &qword_27C9135E8, &unk_21473F440);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    sub_21443CC78(v41, type metadata accessor for ActivityDataPreviewProtobuf);
LABEL_20:
    v31 = &qword_27C9139C8;
    v32 = &qword_214741068;
    v33 = v38;
    goto LABEL_21;
  }

  v44 = v38 + v37;
  v45 = v47;
  sub_21443CC10(v44, v47, type metadata accessor for ActivityDataPreviewProtobuf);
  v46 = sub_21443F230(v41, v45);
  sub_21443CC78(v45, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443CC78(v41, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_213FB2DF4(v38, &qword_27C9135E8, &unk_21473F440);
  if (v46)
  {
    goto LABEL_25;
  }

LABEL_22:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_21443E8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_2146DA6A8();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      v19 = *v15 == *v17 && v16 == v18;
      if (v19 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v18)
  {
LABEL_17:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21443EA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v84 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  v90 = type metadata accessor for ShareLocationsProtobuf(0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139D0, &unk_214741070);
  MEMORY[0x28223BE20](v18);
  v91 = &v84 - v19;
  v20 = type metadata accessor for InviteResponseProtobuf(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_29;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v87 = v15;
      v26 = v11;
      v27 = v10;
      v28 = v5;
      v29 = v4;
      v30 = v13;
      v31 = a1;
      v32 = a2;
      v33 = v7;
      v34 = v20;
      v35 = sub_2146DA6A8();
      v20 = v34;
      v7 = v33;
      a2 = v32;
      a1 = v31;
      v13 = v30;
      v4 = v29;
      v5 = v28;
      v10 = v27;
      v11 = v26;
      v15 = v87;
      if ((v35 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_29;
  }

  v36 = v20[6];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_29;
    }
  }

  v41 = v20[7];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_29;
    }

    v86 = v7;
    if (*v42 != *v44 || v43 != v45)
    {
      v46 = v20;
      v47 = sub_2146DA6A8();
      v20 = v46;
      if ((v47 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    v84 = v5;
    v85 = v20;
    v48 = v20[8];
    v49 = *(v18 + 48);
    v50 = v91;
    sub_213FB2E54(a1 + v48, v91, &qword_27C913670, "8\t\t");
    v87 = v49;
    sub_213FB2E54(a2 + v48, &v49[v50], &qword_27C913670, "8\t\t");
    v51 = *(v88 + 48);
    v52 = v90;
    if (v51(v50, 1, v90) == 1)
    {
      v53 = v91;
      v54 = v51(&v87[v91], 1, v52) == 1;
      v55 = v53;
      if (!v54)
      {
        goto LABEL_27;
      }

      v90 = v11;
      sub_213FB2DF4(v53, &qword_27C913670, "8\t\t");
    }

    else
    {
      sub_213FB2E54(v91, v89, &qword_27C913670, "8\t\t");
      if (v51(&v87[v91], 1, v52) == 1)
      {
        sub_21443CC78(v89, type metadata accessor for ShareLocationsProtobuf);
        v55 = v91;
LABEL_27:
        v56 = &qword_27C9139D0;
        v57 = &unk_214741070;
LABEL_28:
        sub_213FB2DF4(v55, v56, v57);
        goto LABEL_29;
      }

      v90 = v11;
      v60 = v91;
      sub_21443CC10(&v87[v91], v15, type metadata accessor for ShareLocationsProtobuf);
      v61 = v89;
      v62 = sub_21443E8FC(v89, v15, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v15, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v61, type metadata accessor for ShareLocationsProtobuf);
      sub_213FB2DF4(v60, &qword_27C913670, "8\t\t");
      if ((v62 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v63 = v85;
    v64 = v85[9];
    v65 = (a1 + v64);
    v66 = *(a1 + v64 + 8);
    v67 = (a2 + v64);
    v68 = v67[1];
    if (v66)
    {
      v69 = v84;
      if (!v68)
      {
        goto LABEL_29;
      }

      if (*v65 != *v67 || v66 != v68)
      {
        v70 = sub_2146DA6A8();
        v63 = v85;
        if ((v70 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v69 = v84;
      if (v68)
      {
        goto LABEL_29;
      }
    }

    v71 = v63[10];
    v72 = (a1 + v71);
    v73 = *(a1 + v71 + 4);
    v74 = (a2 + v71);
    v75 = *(a2 + v71 + 4);
    if (v73)
    {
      if (!v75)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (*v72 != *v74)
      {
        LOBYTE(v75) = 1;
      }

      if (v75)
      {
        goto LABEL_29;
      }
    }

    v76 = v10;
    v77 = v63[11];
    v78 = v4;
    v79 = *(v90 + 48);
    sub_213FB2E54(a1 + v77, v13, &qword_27C9135E8, &unk_21473F440);
    sub_213FB2E54(a2 + v77, &v13[v79], &qword_27C9135E8, &unk_21473F440);
    v80 = *(v69 + 48);
    if (v80(v13, 1, v78) == 1)
    {
      if (v80(&v13[v79], 1, v78) == 1)
      {
        sub_213FB2DF4(v13, &qword_27C9135E8, &unk_21473F440);
        goto LABEL_52;
      }
    }

    else
    {
      sub_213FB2E54(v13, v76, &qword_27C9135E8, &unk_21473F440);
      if (v80(&v13[v79], 1, v78) != 1)
      {
        v81 = &v13[v79];
        v82 = v86;
        sub_21443CC10(v81, v86, type metadata accessor for ActivityDataPreviewProtobuf);
        v83 = sub_21443F230(v76, v82);
        sub_21443CC78(v82, type metadata accessor for ActivityDataPreviewProtobuf);
        sub_21443CC78(v76, type metadata accessor for ActivityDataPreviewProtobuf);
        sub_213FB2DF4(v13, &qword_27C9135E8, &unk_21473F440);
        if ((v83 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_52:
        sub_2146D8DF8();
        sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v58 = sub_2146D9578();
        return v58 & 1;
      }

      sub_21443CC78(v76, type metadata accessor for ActivityDataPreviewProtobuf);
    }

    v56 = &qword_27C9139C8;
    v57 = &qword_214741068;
    v55 = v13;
    goto LABEL_28;
  }

  v86 = v7;
  if (!v45)
  {
    goto LABEL_21;
  }

LABEL_29:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_21443F230(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivitySnapshotProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C0, &qword_214741060);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v34 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v14 = *(v34 + 28);
  v15 = *(v11 + 56);
  v36 = a1;
  sub_213FB2E54(a1 + v14, v13, &qword_27C913608, &qword_21473F468);
  sub_213FB2E54(a2 + v14, &v13[v15], &qword_27C913608, &qword_21473F468);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C913608, &qword_21473F468);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_213FB2E54(v13, v9, &qword_27C913608, &qword_21473F468);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21443CC78(v9, type metadata accessor for ActivitySnapshotProtobuf);
LABEL_6:
    v17 = &qword_27C9139C0;
    v18 = &qword_214741060;
    goto LABEL_7;
  }

  v20 = v35;
  sub_21443CC10(&v13[v15], v35, type metadata accessor for ActivitySnapshotProtobuf);
  v21 = *(v4 + 20);
  v22 = *&v9[v21];
  v23 = *(v20 + v21);
  if (v22 == v23 || (, , v24 = sub_214435990(v22, v23), , , (v24 & 1) != 0))
  {
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = sub_2146D9578();
    sub_21443CC78(v20, type metadata accessor for ActivitySnapshotProtobuf);
    sub_21443CC78(v9, type metadata accessor for ActivitySnapshotProtobuf);
    sub_213FB2DF4(v13, &qword_27C913608, &qword_21473F468);
    if ((v25 & 1) == 0)
    {
LABEL_15:
      v19 = 0;
      return v19 & 1;
    }

LABEL_11:
    v26 = v36;
    if ((sub_2143D71CC(*v36, *a2) & 1) == 0 || (sub_2143D743C(v26[1], a2[1]) & 1) == 0)
    {
      goto LABEL_15;
    }

    v27 = *(v34 + 32);
    v28 = (v26 + v27);
    v29 = *(v26 + v27 + 8);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 8);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        goto LABEL_15;
      }
    }

    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_2146D9578();
    return v19 & 1;
  }

  sub_21443CC78(v20, type metadata accessor for ActivitySnapshotProtobuf);
  sub_21443CC78(v9, type metadata accessor for ActivitySnapshotProtobuf);
  v17 = &qword_27C913608;
  v18 = &qword_21473F468;
LABEL_7:
  sub_213FB2DF4(v13, v17, v18);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21443F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v58 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for InviteRequestProtobuf(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_2146DA6A8();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_45;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_45;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = sub_2146DA6A8();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_45;
  }

  v31 = v14[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_45;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v14;
      v37 = sub_2146DA6A8();
      v14 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_45;
  }

  v38 = v14[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_45;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v14;
      v44 = sub_2146DA6A8();
      v14 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_45;
  }

  v45 = v14[9];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      goto LABEL_45;
    }
  }

  v50 = v14[10];
  v51 = *(v11 + 48);
  sub_213FB2E54(a1 + v50, v13, &qword_27C9135E8, &unk_21473F440);
  v52 = a2 + v50;
  v53 = v51;
  sub_213FB2E54(v52, &v13[v51], &qword_27C9135E8, &unk_21473F440);
  v54 = *(v5 + 48);
  if (v54(v13, 1, v4) == 1)
  {
    if (v54(&v13[v53], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C9135E8, &unk_21473F440);
LABEL_48:
      sub_2146D8DF8();
      sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = sub_2146D9578();
      return v55 & 1;
    }

    goto LABEL_44;
  }

  sub_213FB2E54(v13, v10, &qword_27C9135E8, &unk_21473F440);
  if (v54(&v13[v53], 1, v4) == 1)
  {
    sub_21443CC78(v10, type metadata accessor for ActivityDataPreviewProtobuf);
LABEL_44:
    sub_213FB2DF4(v13, &qword_27C9139C8, &qword_214741068);
    goto LABEL_45;
  }

  sub_21443CC10(&v13[v53], v7, type metadata accessor for ActivityDataPreviewProtobuf);
  v57 = sub_21443F230(v10, v7);
  sub_21443CC78(v7, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443CC78(v10, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_213FB2DF4(v13, &qword_27C9135E8, &unk_21473F440);
  if (v57)
  {
    goto LABEL_48;
  }

LABEL_45:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_21443FB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v57 = type metadata accessor for AchievementProtobuf(0);
  v58 = a1;
  v14 = v57[5];
  v15 = *(v11 + 56);
  sub_213FB2E54(a1 + v14, v13, &qword_27C913638, "z\t\t");
  v16 = a2 + v14;
  v17 = a2;
  sub_213FB2E54(v16, &v13[v15], &qword_27C913638, "z\t\t");
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_213FB2E54(v13, v9, &qword_27C913638, "z\t\t");
    if (v18(&v13[v15], 1, v4) != 1)
    {
      v21 = v56;
      sub_21443CC10(&v13[v15], v56, type metadata accessor for SampleProtobuf);
      v22 = sub_214440134(v9, v21);
      sub_21443CC78(v21, type metadata accessor for SampleProtobuf);
      sub_21443CC78(v9, type metadata accessor for SampleProtobuf);
      sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21443CC78(v9, type metadata accessor for SampleProtobuf);
LABEL_6:
    sub_213FB2DF4(v13, &qword_27C913990, &qword_214741058);
    goto LABEL_7;
  }

  if (v18(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_213FB2DF4(v13, &qword_27C913638, "z\t\t");
LABEL_10:
  v24 = v57;
  v23 = v58;
  v25 = v57[6];
  v26 = (v58 + v25);
  v27 = *(v58 + v25 + 8);
  v28 = (v17 + v25);
  v29 = *(v17 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_7;
    }
  }

  v30 = v57[7];
  v31 = (v58 + v30);
  v32 = *(v58 + v30 + 8);
  v33 = (v17 + v30);
  v34 = *(v17 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_7;
    }
  }

  v35 = v57[8];
  v36 = (v58 + v35);
  v37 = *(v58 + v35 + 8);
  v38 = (v17 + v35);
  v39 = *(v17 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      goto LABEL_7;
    }
  }

  v40 = v57[9];
  v41 = (v58 + v40);
  v42 = *(v58 + v40 + 8);
  v43 = (v17 + v40);
  v44 = *(v17 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_7;
    }
  }

  v45 = v57[10];
  v46 = (v58 + v45);
  v47 = *(v58 + v45 + 8);
  v48 = (v17 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v49)
  {
    goto LABEL_7;
  }

  v50 = v24[11];
  v51 = (v23 + v50);
  v52 = *(v23 + v50 + 8);
  v53 = (v17 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (v54 && (*v51 == *v53 && v52 == v54 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_48;
    }
  }

  else if (!v54)
  {
LABEL_48:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_2146D9578();
    return v19 & 1;
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_214440040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214440134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleProtobuf(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v12 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214440338(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v74 - v4;
  v6 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v7 = type metadata accessor for SampleProtobuf(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid) = xmmword_2146E68C0;
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  v75 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  v76 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  v77 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  v78 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  v79 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  v80 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  v81 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  v82 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  v83 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  v84 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  v85 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  v86 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  v87 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *(v23 + 8) = 1;
  *v23 = 0;
  v24 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  sub_213FB2E54(a1 + v24, v5, &qword_27C913638, "z\t\t");
  swift_beginAccess();
  sub_21443DF24(v5, v1 + v6);
  swift_endAccess();
  v25 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  v28 = *v8;
  v29 = v8[1];
  *v8 = v27;
  v8[1] = v26;
  sub_213FDCA18(v27, v26);
  sub_213FDC6BC(v28, v29);
  v30 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v9 = v31;
  *(v9 + 8) = v30;
  v32 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  swift_beginAccess();
  *v10 = v33;
  *(v10 + 8) = v32;
  v34 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = v75;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v76;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v77;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  v43 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v78;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v79;
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 8) = v46;
  v49 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal);
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v80;
  swift_beginAccess();
  *v51 = v50;
  *(v51 + 8) = v49;
  v52 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v81;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v82;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v83;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v58;
  v61 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse);
  swift_beginAccess();
  v62 = *v61;
  LOBYTE(v61) = *(v61 + 8);
  v63 = v84;
  swift_beginAccess();
  *v63 = v62;
  *(v63 + 8) = v61;
  v64 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv);
  swift_beginAccess();
  v65 = *v64;
  LOBYTE(v64) = *(v64 + 8);
  v66 = v85;
  swift_beginAccess();
  *v66 = v65;
  *(v66 + 8) = v64;
  v67 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg);
  swift_beginAccess();
  v68 = *v67;
  LOBYTE(v67) = *(v67 + 8);
  v69 = v86;
  swift_beginAccess();
  *v69 = v68;
  *(v69 + 8) = v67;
  v70 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  v72 = v87;
  swift_beginAccess();
  *v72 = v71;
  *(v72 + 8) = v70;
  return v1;
}

void sub_214440AA4(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C9139F0, type metadata accessor for SecureCloudInviteUserInfoProtobuf, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214440C00(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_27C913A08, &type metadata for SecureCloudInviteResponseProtobuf.ProtobufType);
        if (v4 <= 0x3F)
        {
          sub_21443432C(319, &qword_27C9139F0, type metadata accessor for SecureCloudInviteUserInfoProtobuf, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_214440D94(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214440E80(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214440F3C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_27C913A40, &type metadata for SecureCloudUpgradeMessageProtobuf.MessageType);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2144410B4(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214441198(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_214441258()
{
  result = qword_27C913A68;
  if (!qword_27C913A68)
  {
    result = swift_getWitnessTable(byte_2147410B8, &type metadata for SecureCloudUpgradeMessageProtobuf.MessageType, v0, v1);
    atomic_store(result, &qword_27C913A68);
  }

  return result;
}

unint64_t sub_2144412E0()
{
  result = qword_27C913A80;
  if (!qword_27C913A80)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for SecureCloudInviteResponseProtobuf.ProtobufType, v0, v1);
    atomic_store(result, &qword_27C913A80);
  }

  return result;
}

unint64_t sub_214441368()
{
  result = qword_27C913A98;
  if (!qword_27C913A98)
  {
    result = swift_getWitnessTable(aA_24, &type metadata for SecureCloudUpgradeMessageProtobuf.MessageType, v0, v1);
    atomic_store(result, &qword_27C913A98);
  }

  return result;
}

unint64_t sub_2144413C0()
{
  result = qword_27C913AA0;
  if (!qword_27C913AA0)
  {
    result = swift_getWitnessTable(byte_214741120, &type metadata for SecureCloudUpgradeMessageProtobuf.MessageType, v0, v1);
    atomic_store(result, &qword_27C913AA0);
  }

  return result;
}

unint64_t sub_214441418()
{
  result = qword_27C913AA8;
  if (!qword_27C913AA8)
  {
    result = swift_getWitnessTable(byte_2147411C0, &type metadata for SecureCloudInviteResponseProtobuf.ProtobufType, v0, v1);
    atomic_store(result, &qword_27C913AA8);
  }

  return result;
}

unint64_t sub_214441470()
{
  result = qword_27C913AB0;
  if (!qword_27C913AB0)
  {
    result = swift_getWitnessTable(byte_214741200, &type metadata for SecureCloudInviteResponseProtobuf.ProtobufType, v0, v1);
    atomic_store(result, &qword_27C913AB0);
  }

  return result;
}

uint64_t sub_2144414F0()
{
  result = sub_214441514();
  byte_27CA19C80 = result & 1;
  return result;
}

uint64_t sub_214441514()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2146D95B8();
    v4 = v3;

    v5 = v2 == 0xD000000000000023 && 0x800000021479AB40 == v4;
    if (v5 || (sub_2146DA6A8() & 1) != 0 || (v2 == 0xD000000000000022 ? (v6 = 0x800000021479AB70 == v4) : (v6 = 0), v6 || (sub_2146DA6A8() & 1) != 0))
    {

      return 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = sub_2146D9B98();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v9 = qword_280B35410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146EA710;
  v11 = MEMORY[0x277D837D0];
  if (v4)
  {
    v12 = sub_2146D9618();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  *(v10 + 56) = v11;
  *(v10 + 64) = sub_213FB2DA0();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_2146D91D8(v8, &dword_213FAF000, v9, "Current process ('%@') is not a BlastDoor service instance", 58, 2, v10);

  return 0;
}

uint64_t sub_21444171C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146D89C8();
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      sub_213FDC6BC(v2, v3);
      v7 = 0;
      return v7 == 16;
    }

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v2 = sub_213FDC6BC(v2, v3);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      return v7 == 16;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v3);
    sub_213FDC6BC(v2, v3);
    v7 = v6;
    return v7 == 16;
  }

  v10 = HIDWORD(v2);
  v11 = v2;
  result = sub_213FDC6BC(v2, v3);
  LODWORD(v7) = v10 - v11;
  if (!__OFSUB__(v10, v11))
  {
    v7 = v7;
    return v7 == 16;
  }

  __break(1u);
  return result;
}

unint64_t sub_2144417C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_214741330;
  *(v3 + 16) = sub_214442A04;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_2140442CC(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214741340;
  *(v6 + 16) = sub_214442A14;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_2140442CC(v5, a1 + 32);
}

uint64_t sub_214441908@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21444192C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214441984@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2144419A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214441A00()
{
  if (*(v0 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214441A64()
{
  if (*(v0 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214441AC8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*sub_214441B2C(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_214441BB4;
  }

  return result;
}

uint64_t sub_214441BDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  return result;
}

void (*sub_214441C48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t sub_214441CE0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 48);
  }

  return result;
}

uint64_t (*sub_214441D64(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214441DEC;
  }

  return result;
}

uint64_t sub_214441E18(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 57) = v7;
  return result;
}

void (*sub_214441E84(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

void sub_214441F1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
  }

  else
  {

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
  }

  free(v2);
}

__n128 sub_214441FC8(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214442028(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442078@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214312AE0(v7, &v6);
}

__n128 sub_2144420C4(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214442124(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442174@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214312934(v7, &v6);
}

__n128 sub_2144421C0(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214303240(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442240@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214303190(v7, &v6);
}

__n128 sub_21444228C(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_2143033EC(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_21444230C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_21430333C(v7, &v6);
}

__n128 sub_214442358(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214303598(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t RCSEnvelope.pushLocation.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_2143034E8(v7, &v6);
}

__n128 RCSEnvelope.pushLocation.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214325114(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_2144424A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v3 = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v7 = v1[3];
    v6 = v1[4];
    v9 = v1[1];
    v8 = v1[2];
    v10 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6;
    *(a1 + 40) = v5;
    *(a1 + 48) = v4;
    v13[0] = v10;
    v13[1] = v9;
    v13[2] = v8;
    v13[3] = v7;
    v13[4] = v6;
    v13[5] = v5;
    v13[6] = v4;
    v14 = v3;
    result = sub_214442538(v13, &v12);
  }

  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_214442570@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v4 = v1[4];
    v10 = v1[1];
    v9 = v1[2];
    v11 = *v1;
    v7 = v3 & 0xFF7F;
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    v14[0] = v11;
    v14[1] = v10;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v4;
    v14[5] = v5;
    v14[6] = v6;
    v15 = v3 & 0xFF7F;
    result = sub_214442614(v14, &v13);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_2144427AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214442834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_21444287C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144428EC(uint64_t result, char a2)
{
  v2 = *(result + 56) & 0xFF01 | ((a2 & 1) << 7);
  *(result + 24) &= 0xFF01uLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_214442934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 9) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_214442988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 << 9) & 0x1FFFFFF0000 | (2 * (-a2 & 0x7FLL));
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214442A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC0, &qword_2147417B0);
  sub_2146D99C8();
  (*(v5 + 16))(a3, v7, v4);
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = v21;
  sub_21444337C(0, 0, v21, &unk_2147417C0, v16);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC8, &qword_2147417C8);
  (*(*(v18 - 8) + 8))(v20, v18);
  sub_21444361C(v17);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_214442CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD8, &qword_214741878);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214442DC4, 0, 0);
}

uint64_t sub_214442DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  sub_2146D9A08();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_214442E90;
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_214442E90()
{

  return MEMORY[0x2822009F8](sub_214442F8C, 0, 0);
}

uint64_t sub_214442F8C()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_2144430DC;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2144430DC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_21430299C(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_214442E90;
  v6 = *(v1 + 40);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v6);
}

uint64_t sub_214443280(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214445244;

  return sub_214442CF8(a1, v6, v7, v1 + v5);
}

uint64_t sub_21444337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_214445064(a3, v25 - v10);
  v12 = sub_2146D99B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21444361C(v11);
  }

  else
  {
    sub_2146D99A8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2146D9998();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2146D9628() + 32;
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

uint64_t sub_21444361C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214443684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);

  return sub_2146D99E8();
}

uint64_t sub_2144436BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &unk_2147417E8;
  v10[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  sub_2146D99D8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2144437E8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_21409A9C0;

  return v5();
}

uint64_t sub_2144438D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214445244;

  return sub_2144437E8(a1, v4);
}

uint64_t sub_214443988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2144439B0, 0, 0);
}

uint64_t sub_2144439B0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_214443A98;
  v4 = *(v0 + 16);

  return sub_214443EE0(v4, 0, 0, sub_214443BA8, v1);
}

uint64_t sub_214443A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214443C08(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_214443D30;

  return v9(v6);
}

uint64_t sub_214443D30()
{

  return MEMORY[0x2822009F8](sub_214443E2C, 0, 0);
}

uint64_t sub_214443E2C()
{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_214443EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2146D9998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214443F74, v6, v8);
}

uint64_t sub_214443F74()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_21444401C;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21444401C()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_2144440F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21444411C, 0, 0);
}

uint64_t sub_21444411C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_214444204;
  v4 = *(v0 + 16);

  return sub_214444994(v4, 0, 0, sub_214444508, v1);
}

uint64_t sub_214444204()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214444340, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214444340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2144443A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - v15;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = v20[0];
  *(v18 + 24) = v17;
  v20[2] = a9;
  v20[3] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  sub_2146D99D8();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_214444568(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[6] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = sub_214444694;

  return v9(v6);
}

uint64_t sub_214444694()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_214444858;
  }

  else
  {
    v2 = sub_2144447A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2144447A8()
{
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_214444858()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_214444900((v0 + 2), v1, v2, v3, MEMORY[0x277D84950]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_214444900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x282200958](a2, v8);
}

uint64_t sub_214444994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2146D9998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214444A28, v6, v8);
}

uint64_t sub_214444A28()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_214444AD0;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214444AD0(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = qword_280B30810;
  if (!qword_280B30810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214444C4C(uint64_t a1)
{
  sub_214444CB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214444CB8(uint64_t a1)
{
  if (!qword_280B2FE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913AC0, &qword_2147417B0);
    v1 = sub_2146D99F8();
    if (!v2)
    {
      atomic_store(v1, &qword_280B2FE40);
    }
  }
}

uint64_t sub_214444D1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214444E14;

  return v6(a1);
}

uint64_t sub_214444E14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214444F0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21409A9C0;

  return sub_214444568(v3, v5, v4, v2);
}

uint64_t sub_214444FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_214445244;

  return sub_214443C08(v3, v5, v4, v2);
}

uint64_t sub_214445064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144450D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214445244;

  return sub_214444D1C(a1, v4);
}

uint64_t sub_21444518C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21409A9C0;

  return sub_214444D1C(a1, v4);
}

uint64_t sub_214445248(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2146D8578();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](a1);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2146D9398();
  *a2 = result;
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  MEMORY[0x2160542A0]();
  result = sub_2146D9388();
  if ((result & 0x100000000) != 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  sub_2144453E8(MEMORY[0x277D84F90]);
  sub_2144454F8();
  sub_2146D8818();
  sub_2146D8568();
  (*(v5 + 8))(v8, v4);
  return swift_willThrow();
}