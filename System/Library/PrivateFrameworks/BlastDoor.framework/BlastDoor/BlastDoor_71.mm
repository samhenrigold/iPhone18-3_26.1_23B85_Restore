void (*TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214478A68;
}

uint64_t TextMessage.messageSummaryInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v4 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16[0] = v4;
  *(v16 + 9) = *(v3 + 73);
  v6 = *(v16 + 9);
  v7 = v3[2];
  v13 = v3[1];
  v8 = v13;
  v14 = v7;
  v12 = *v3;
  v9 = v12;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  *(a1 + 73) = v6;
  *a1 = v9;
  a1[1] = v8;
  return sub_213FB2E54(&v12, &v11, &qword_27C909990, &qword_2146F58B0);
}

__n128 TextMessage.messageSummaryInfo.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v4 = v3[4];
  v9[3] = v3[3];
  v10[0] = v4;
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[2];
  v9[1] = v3[1];
  v9[2] = v5;
  v9[0] = *v3;
  sub_213FB2DF4(v9, &qword_27C909990, &qword_2146F58B0);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

uint64_t TextMessage.isAutoReply.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t TextMessage.availabilityVerificationRecipientChannelIDPrefix.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 72));

  return v1;
}

void TextMessage.availabilityVerificationRecipientChannelIDPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 72));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.availabilityVerificationRecipientEncryptionValidationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 76));

  return v1;
}

void TextMessage.availabilityVerificationRecipientEncryptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 76));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.availabilityOffGridRecipientSubscriptionValidationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 80));

  return v1;
}

void TextMessage.availabilityOffGridRecipientSubscriptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 80));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.availabilityOffGridRecipientEncryptionValidationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 84));

  return v1;
}

void TextMessage.availabilityOffGridRecipientEncryptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 84));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.seenAsOffGrid.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

void sub_21466DB6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 92);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21466DC08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void TextMessage.lastPublisherOfOffGridStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 92);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.lastPublisherOfOffGridStatus.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for TextMessage(0) + 92);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21466DF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 92));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21466DF7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 92);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*TextMessage.$lastPublisherOfOffGridStatus.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 92);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t TextMessage.nicknameInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(__dst, (v1 + v3), 0x109uLL);
  memcpy(a1, (v1 + v3), 0x109uLL);
  return sub_213FB2E54(__dst, &v5, &qword_27C909998, &qword_2146F58B8);
}

void *TextMessage.nicknameInformation.setter(const void *a1)
{
  v3 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(v5, (v1 + v3), 0x109uLL);
  sub_213FB2DF4(v5, &qword_27C909998, &qword_2146F58B8);
  return memcpy((v1 + v3), a1, 0x109uLL);
}

uint64_t TextMessage.truncatedNicknameRecordKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 100));

  return v1;
}

void TextMessage.truncatedNicknameRecordKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 100));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.isExpirable.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t TextMessage.isSOS.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TextMessage.isCritical.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TextMessage.replicationSourceID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 116);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.scheduleType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TextMessage(0);
  *a1 = *(v1 + *(result + 120));
  return result;
}

uint64_t TextMessage.scheduleType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 120)) = v2;
  return result;
}

double TextMessage.replicatedFallbackGUIDs.getter()
{
  type metadata accessor for TextMessage(0);

  return result;
}

void TextMessage.replicatedFallbackGUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextMessage(0) + 128);

  *(v1 + v3) = a1;
}

uint64_t TextMessage.isBIAMessage.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t TextMessage.biaReferenceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 136));

  return v1;
}

void TextMessage.biaReferenceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 136));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x7373654D74786554, 0xEB00000000656761);
  MEMORY[0x2160545D0](0x6570797462757320, 0xEA0000000000203ALL);
  type metadata accessor for TextMessage(0);
  type metadata accessor for TextMessage.MessageType(0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x7461646174656D20, 0xEB00000000203A61);
  type metadata accessor for Metadata(0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_21466EB3C(uint64_t a1)
{
  *(a1 + 8) = sub_21466EBC0(&qword_280B2FA98, type metadata accessor for TextMessage.MessageType, protocol conformance descriptor for TextMessage.MessageType);
  result = sub_21466EBC0(&qword_280B2FAA0, type metadata accessor for TextMessage.MessageType, protocol conformance descriptor for TextMessage.MessageType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21466EBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21466EC0C()
{
  result = qword_27C9177D8;
  if (!qword_27C9177D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextMessage.ScheduleType, &type metadata for TextMessage.ScheduleType, v0, v1);
    atomic_store(result, &qword_27C9177D8);
  }

  return result;
}

uint64_t sub_21466ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21466ECF4(uint64_t a1)
{
  *(a1 + 8) = sub_21466EBC0(&qword_280B30A88, type metadata accessor for TextMessage, protocol conformance descriptor for TextMessage);
  result = sub_21466EBC0(&qword_280B30A90, type metadata accessor for TextMessage, protocol conformance descriptor for TextMessage);
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21466EDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_21466EE00(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466EE74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 536))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 488);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21466EEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 536) = 1;
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
      *(result + 488) = (a2 - 1);
      return result;
    }

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466EFA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21466EFF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21466F0AC(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextMessage.MessageType(319);
    if (v2 <= 0x3F)
    {
      sub_21466F3B4(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        sub_21409EE88(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BB8, MEMORY[0x277D83E88]);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B2E320, MEMORY[0x277D84D38]);
              if (v7 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B2FAC8, &type metadata for TextMessage.MessageSummaryInfo);
                if (v8 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
                  if (v9 <= 0x3F)
                  {
                    sub_21403BEC8(319, &qword_280B2F250, &type metadata for NicknameInformation);
                    if (v10 <= 0x3F)
                    {
                      sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
                      if (v11 <= 0x3F)
                      {
                        sub_21403BEC8(319, &qword_280B2FA80, &type metadata for TextMessage.ScheduleType);
                        if (v12 <= 0x3F)
                        {
                          sub_21466F3B4(319, &qword_280B35230, MEMORY[0x277CC9578]);
                          if (v13 <= 0x3F)
                          {
                            sub_21409EE88(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0, MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_21466F3B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21466F408(uint64_t a1)
{
  result = type metadata accessor for BalloonPlugin(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CustomAcknowledgement(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21466F4E4()
{
  result = qword_27C9177E0;
  if (!qword_27C9177E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextMessage.ScheduleType, &type metadata for TextMessage.ScheduleType, v0, v1);
    atomic_store(result, &qword_27C9177E0);
  }

  return result;
}

uint64_t sub_21466F538(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 2);
  v4 = *a3;
  v6 = *a1;
  v7 = v3;
  return sub_2145B9168(&v6, v4) & 1;
}

uint64_t sub_21466F574(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return sub_2145B9168(&v5, v3) & 1;
}

uint64_t sub_21466F5B0(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a3;
    v6 = a1[1];
    v5 = a1[2];
    v11[0] = *a1;
    v11[1] = v6;
    v11[2] = v5;
    MEMORY[0x28223BE20](a1);
    v9[2] = v11;
    v10 = 2;

    v7 = sub_2140479E4(sub_21466F688, v9, v4);
    sub_214031CE0(v3, v6, v5);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_21466F688(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 2);
  v10 = v5;
  v11 = v6;
  v7 = *(v4 + 16);
  v9 = v3;
  return v7(&v10, &v9) & 1;
}

id sub_21466F6F0(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initForBusinessChat_];
}

id sub_21466F734(char a1)
{
  v2 = type metadata accessor for _ObjCValidatorContextWrapper();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_21466F840()
{
  v49[2] = *MEMORY[0x277D85DE8];
  v49[0] = 47;
  v49[1] = 0xE100000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v0 = sub_2146D9558();
  v2 = v1;

  MEMORY[0x2160545D0](v0, v2);

  v3 = sub_2146D9588();

  v4 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (v4)
  {
    v5 = [v4 seekToEndOfFile];
    v49[0] = 0;
    v6 = &off_27817C000;
    if ([v4 seekToOffset:0 error:v49])
    {
      v7 = v49[0];
    }

    else
    {
      v9 = v49[0];
      v10 = sub_2146D8838();

      swift_willThrow();
    }

    v11 = sub_2146D9B78();
    v13 = v12;
    if (v12 >> 60 != 15)
    {
      v14 = v11;
      LOBYTE(v49[0]) = 12;
      if (Data.hasValidHeader(for:)(v49))
      {
        v15 = sub_21466FDF0();
        if ((v15 & 0x100000000) == 0)
        {
          v16 = v15;
          if (v15)
          {
            v17 = &off_27817C000;
            while (1)
            {
              v18 = [v4 v17[306]];
              v19 = &v18[v16];
              if (__CFADD__(v16, v18))
              {
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
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
              }

              v20 = __CFADD__(v19, 8);
              v21 = (v19 + 8);
              if (v20)
              {
                goto LABEL_54;
              }

              if (v21 >= v5)
              {
                goto LABEL_48;
              }

              v22 = sub_21466FFAC();
              if (v22 != 4)
              {
                if (v22 <= 2)
                {
                  v46 = sub_2146DA6A8();

                  sub_213FDC6BC(v14, v13);
                  v8 = v46 ^ 1;
                  goto LABEL_51;
                }

                goto LABEL_48;
              }

              v23 = [v4 v17[306]];
              v24 = v23 + v16;
              if (__CFADD__(v23, v16))
              {
                goto LABEL_55;
              }

              if (v24 >= 0xFFFFFFFFFFFFFFFCLL)
              {
                goto LABEL_56;
              }

              v49[0] = 0;
              if ([v4 v6[305]])
              {
                v25 = v49[0];
              }

              else
              {
                v26 = v49[0];
                v27 = sub_2146D8838();

                swift_willThrow();
              }

              v28 = sub_2146D9B78();
              v30 = v29;
              if (v29 >> 60 == 15)
              {
                goto LABEL_48;
              }

              v31 = v28;
              v32 = v29 >> 62;
              if ((v29 >> 62) > 1)
              {
                if (v32 != 2)
                {
                  goto LABEL_46;
                }

                v35 = *(v28 + 16);
                v34 = *(v28 + 24);
                v36 = __OFSUB__(v34, v35);
                v33 = v34 - v35;
                if (v36)
                {
                  goto LABEL_57;
                }
              }

              else if (v32)
              {
                LODWORD(v33) = HIDWORD(v28) - v28;
                if (__OFSUB__(HIDWORD(v28), v28))
                {
                  goto LABEL_58;
                }

                v33 = v33;
              }

              else
              {
                v33 = BYTE6(v29);
              }

              if (v33 != 4)
              {
LABEL_46:
                sub_213FDC6BC(v14, v13);
                v47 = v31;
                v48 = v30;
                goto LABEL_49;
              }

              if (v32 == 2)
              {
                break;
              }

              if (v32 == 1)
              {
                if (v28 > v28 >> 32)
                {
                  goto LABEL_60;
                }

                v37 = sub_2146D8728();
                if (!v37)
                {
                  goto LABEL_64;
                }

                v38 = v37;
                v39 = sub_2146D8758();
                if (__OFSUB__(v31, v39))
                {
                  goto LABEL_61;
                }

                v40 = (v31 - v39 + v38);
                result = sub_2146D8748();
                v17 = &off_27817C000;
                if (!v40)
                {
                  goto LABEL_65;
                }

LABEL_41:
                LODWORD(v28) = *v40;
                v6 = &off_27817C000;
              }

              v16 = _OSSwapInt32(v28);
              sub_213FDC6BC(v31, v30);
              if (!v16)
              {
                goto LABEL_48;
              }
            }

            v42 = *(v28 + 16);
            v43 = sub_2146D8728();
            if (!v43)
            {
              sub_2146D8748();
LABEL_63:
              __break(1u);
LABEL_64:
              result = sub_2146D8748();
              __break(1u);
LABEL_65:
              __break(1u);
              return result;
            }

            v44 = v43;
            v45 = sub_2146D8758();
            if (__OFSUB__(v42, v45))
            {
              goto LABEL_59;
            }

            v40 = (v42 - v45 + v44);
            sub_2146D8748();
            v17 = &off_27817C000;
            if (!v40)
            {
              goto LABEL_63;
            }

            goto LABEL_41;
          }
        }
      }

LABEL_48:
      v47 = v14;
      v48 = v13;
LABEL_49:
      sub_213FDC6BC(v47, v48);
    }

    v8 = 0;
LABEL_51:
    sub_21466FD10(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_21466FD10(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v6[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_2146D8838();

    swift_willThrow();
  }
}

uint64_t sub_21466FDF0()
{
  v0 = sub_2146D9B78();
  if (v1 >> 60 != 15)
  {
    v2 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v2 != 2)
      {
LABEL_18:
        sub_213FDC6BC(v0, v1);
        goto LABEL_19;
      }

      v4 = *(v0 + 16);
      v3 = *(v0 + 24);
      v5 = __OFSUB__(v3, v4);
      v6 = v3 - v4;
      if (!v5)
      {
        if (v6 == 4)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
      if (v2)
      {
        goto LABEL_16;
      }

      if (BYTE6(v1) != 4)
      {
        goto LABEL_18;
      }

LABEL_9:
      while (v2 != 2)
      {
        if (v2 != 1)
        {
          v9 = v1;
          v8 = v0;
          goto LABEL_26;
        }

        v7 = v0;
        if (v0 > v0 >> 32)
        {
          goto LABEL_29;
        }

        v8 = v0;
        v9 = v1;
        v10 = sub_2146D8728();
        if (!v10)
        {
          goto LABEL_34;
        }

        v11 = v10;
        v12 = sub_2146D8758();
        if (__OFSUB__(v7, v12))
        {
          goto LABEL_31;
        }

        v13 = (v7 - v12 + v11);
        v0 = sub_2146D8748();
        if (v13)
        {
          goto LABEL_24;
        }

        __break(1u);
LABEL_16:
        if (__OFSUB__(HIDWORD(v0), v0))
        {
          goto LABEL_28;
        }

        if (HIDWORD(v0) - v0 != 4)
        {
          goto LABEL_18;
        }
      }

      v8 = v0;
      v17 = *(v0 + 16);
      v9 = v1;
      v18 = sub_2146D8728();
      if (!v18)
      {
        goto LABEL_32;
      }

      v19 = v18;
      v20 = sub_2146D8758();
      if (!__OFSUB__(v17, v20))
      {
        v13 = (v17 - v20 + v19);
        sub_2146D8748();
        if (!v13)
        {
          goto LABEL_33;
        }

LABEL_24:
        LODWORD(v0) = *v13;
LABEL_26:
        v21 = _OSSwapInt32(v0);
        sub_213FDC6BC(v8, v9);
        v15 = 0;
        v14 = v21;
        return v14 | (v15 << 32);
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_2146D8748();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_2146D8748();
    __break(1u);
    return result;
  }

LABEL_19:
  v14 = 0;
  v15 = 1;
  return v14 | (v15 << 32);
}

unint64_t sub_21466FFAC()
{
  result = sub_2146D9B78();
  if (v1 >> 60 == 15)
  {
    return 4;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 4)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(v1) != 4)
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = result;
      v8 = v1;
      sub_21402D9F8(result, v1);
      v9 = v7;
      v10 = v7;
      v11 = v8;
      v12 = sub_214670464(v10, v8);
      if (!v13)
      {
        v19 = v9;
        v20 = v8;
        sub_21402D9F8(v9, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177F0, &qword_214779380);
        if (swift_dynamicCast())
        {
          sub_213FB77C8(v17, v21);
          __swift_project_boxed_opaque_existential_1(v21, v22);
          if (sub_2146DA078())
          {
            sub_213FDC6BC(v9, v8);
            __swift_project_boxed_opaque_existential_1(v21, v22);
            sub_2146DA068();
            v15 = *(&v17[0] + 1);
            v14 = *&v17[0];
            __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_21:
            v16 = sub_214670678(v14, v15);
            sub_213FDC6BC(v9, v11);
            return v16;
          }

          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        else
        {
          v18 = 0;
          memset(v17, 0, sizeof(v17));
          sub_214670610(v17);
        }

        v12 = sub_214670240(v9, v8);
      }

      v14 = v12;
      v15 = v13;
      sub_213FDC6BC(v9, v11);
      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_9;
      }

LABEL_15:
      sub_213FDC6BC(result, v1);
      return 4;
    }
  }

  __break(1u);
  return result;
}

void *sub_2146701CC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914828, &unk_2147514F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_214670240(uint64_t a1, unint64_t a2)
{
  sub_21402D9F8(a1, a2);
  sub_2146702E8(a1, a2);
  v4 = sub_2146D9678();

  return v4;
}

uint64_t sub_2146702AC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2146D9678();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_2146702E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D8A88();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_213FB54FC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2146701CC(v10, 0);
      v14 = sub_2146D89B8();
      sub_213FB54FC(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_214670464(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_2146D9678();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_2146D9678();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2146D8728();
  if (a1)
  {
    a1 = sub_2146D8758();
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
      if (!sub_2146D8728() || !__OFSUB__(v5, sub_2146D8758()))
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
  sub_2146D8748();
  return sub_2146D9678();
}

uint64_t sub_214670610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177F8, &qword_214779388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214670678(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2146706C4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19EE0);
  __swift_project_value_buffer(v0, qword_27CA19EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "exportedPCSData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareePublicKeyData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21467088C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for PCSManateeShareInvitation(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214670934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146709A4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_214670A44(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2146709A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PCSManateeShareInvitation(0);
  v6 = a1 + *(result + 20);
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

uint64_t sub_214670A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PCSManateeShareInvitation(0);
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

uint64_t sub_214670B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_214671110(&qword_27C917818, type metadata accessor for PCSManateeShareInvitation, byte_214779448);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214670BAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C903240 != -1)
  {
    swift_once();
  }

  v2 = sub_2146D9148();
  v3 = __swift_project_value_buffer(v2, qword_27CA19EE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_214670C54(uint64_t a1)
{
  v2 = sub_214671110(&qword_27C915C68, type metadata accessor for PCSManateeShareInvitation, byte_214779480);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214670CC0(uint64_t a1, uint64_t a2)
{
  sub_214671110(&qword_27C915C68, type metadata accessor for PCSManateeShareInvitation, byte_214779480);

  return sub_2146D9008();
}

uint64_t type metadata accessor for PCSManateeShareInvitation(uint64_t a1)
{
  result = qword_27C917820;
  if (!qword_27C917820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214670EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCSManateeShareInvitation(0);
  v5 = *(v4 + 20);
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
      goto LABEL_7;
    }

LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    sub_213FDC6BC(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v13 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v13)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    v21 = sub_214466780(v16, v15, v19, v18);
    sub_213FDC6BC(v19, v18);
    sub_213FDC6BC(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    sub_213FDC6BC(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  sub_213FDCA18(v16, v15);
  sub_213FDCA18(v19, v18);
  sub_213FDC6BC(v16, v15);
LABEL_15:
  sub_2146D8DF8();
  sub_214671110(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214671110(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_214671180(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_214671204();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214671204()
{
  if (!qword_280B2FDD0)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2FDD0);
    }
  }
}

id sub_214671268(uint64_t a1)
{
  v2 = type metadata accessor for _ObjCMachImageWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorMachImage_image] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21467146C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214671500()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214671548()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCMachImageWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorMachImage_image] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2146715C0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 7);
  v6 = *(v0 + 11);
  v19 = *(v0 + 97);
  v7 = *(v0 + 14);
  v17 = *(v0 + 10);
  v18 = *(v0 + 13);
  v8 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v8)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  if ((v2 & 1) == 0)
  {
    [v8 writeUint32:v1 forTag:1];
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_20;
    }

    v10 = sub_2146D9588();
    sub_213FDC6D0(v3, v4);
    [v9 writeString:v10 forTag:2];
  }

  if (v5)
  {
    v11 = sub_2146D9588();
    [v9 writeString:v11 forTag:3];
  }

  if (!v6)
  {
LABEL_12:
    if (v19 != 2)
    {
      [v9 writeBOOL:v19 & 1 forTag:5];
    }

    if (v7 >> 60 != 15)
    {
      sub_21402D9F8(v18, v7);
      v13 = sub_2146D8A38();
      [v9 writeData:v13 forTag:6];

      sub_213FDC6BC(v18, v7);
    }

    v14 = [v9 immutableData];
    if (v14)
    {
      v15 = v14;

      return v15;
    }

    goto LABEL_19;
  }

  if (v6 != 1)
  {

    v12 = sub_2146D9588();
    sub_213FDC6D0(v17, v6);
    [v9 writeString:v12 forTag:4];

    goto LABEL_12;
  }

LABEL_20:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21467180C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF24;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v7 + 16) = sub_21439DF54;
  *(v7 + 24) = v8;
  *(v3 + 32) = v7;
  v9 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_214032610;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146719C4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_2145B865C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214671B10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214671B68(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214671BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214671C28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_i64[0];
  v7 = v1[5].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214671C90()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_214671D10()
{
  if (*(v0 + 88) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);

    return v1;
  }

  return result;
}

uint64_t sub_214671DB0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_214671DE0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
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

void (*sub_214671F24(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_214671FFC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_21467209C()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_2146720CC(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void sub_214672124(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 64);
  v8 = *(v2 + 96);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 80), *(v2 + 88));

    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
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

void (*sub_214672268(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 80);
  *(v3 + 24) = v5;
  v6 = *(v1 + 88);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145CF55C;
  }

  return result;
}

void (*sub_214672340(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CF8A8;
}

uint64_t sub_214672410()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214672444(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

void sub_2146724A0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    v3 = 0;
    v73 = 0;
    v90 = 0;
    v91 = 0;
    v87 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0xF000000000000000;
    v81 = 1;
    v85 = 0;
    LOBYTE(v86) = 2;
    goto LABEL_65;
  }

  v9 = objc_allocWithZone(MEMORY[0x277D43170]);
  sub_21402D9F8(a1, a2);
  v10 = sub_2146D8A38();
  v11 = [v9 initWithData_];

  v12 = [v11 position];
  if (v12 < [v11 length])
  {
    v87 = 0;
    v88 = 0;
    v73 = 0;
    v74 = 0;
    v90 = 0;
    v91 = 0;
    v3 = 0;
    v85 = 0;
    LOBYTE(v86) = 2;
    v13 = 1;
    v92 = 0xF000000000000000;
    while (1)
    {
      if ([v11 hasError])
      {
        goto LABEL_64;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        LOBYTE(v100) = 0;
        v18 = [v11 position] + 1;
        if (v18 >= [v11 position] && (v19 = objc_msgSend(v11, "position") + 1, v19 <= objc_msgSend(v11, "length")))
        {
          v20 = [v11 data];
          [v20 getBytes:&v100 range:{objc_msgSend(v11, "position"), 1}];

          [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
        }

        else
        {
          [v11 _setError];
        }

        v17 |= (v100 & 0x7F) << v15;
        if ((v100 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v21 = v16++ >= 9;
        if (v21)
        {
          v22 = 0;
          goto LABEL_20;
        }
      }

      if ([v11 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_20:
      if ([v11 hasError])
      {

        sub_2140861C4();
        swift_allocError();
        *v70 = 0;
        swift_willThrow();
        sub_213FDC6BC(v3, v92);
        sub_213FDC6BC(a1, a2);

        return;
      }

      v23 = v22 >> 3;
      if ((v22 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:

            v40 = PBReaderReadString();
            if (v40)
            {
              v41 = v40;
              v73 = sub_2146D95B8();
              v90 = v42;
            }

            else
            {
              v73 = 0;
              v90 = 0;
            }

            goto LABEL_6;
          case 6:
            v46 = PBReaderReadData();
            if (v46)
            {
              v47 = v46;
              v48 = sub_2146D8A58();
              v50 = v49;
              sub_213FDC6BC(v3, v92);

              v3 = v48;
              v92 = v50;
            }

            else
            {
              sub_213FDC6BC(v3, v92);
              v3 = 0;
              v92 = 0xF000000000000000;
            }

            goto LABEL_6;
          case 5:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              LOBYTE(v100) = 0;
              v30 = [v11 position] + 1;
              if (v30 >= [v11 position] && (v31 = objc_msgSend(v11, "position") + 1, v31 <= objc_msgSend(v11, "length")))
              {
                v32 = [v11 data];
                [v32 getBytes:&v100 range:{objc_msgSend(v11, "position"), 1}];

                [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
              }

              else
              {
                [v11 _setError];
              }

              v29 |= (v100 & 0x7F) << v27;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v21 = v28++ >= 9;
              if (v21)
              {
                LOBYTE(v86) = 0;
                goto LABEL_6;
              }
            }

            v86 = (v29 != 0) & ~[v11 hasError];
            goto LABEL_6;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v100) = 0;
              v36 = [v11 position] + 1;
              if (v36 >= [v11 position] && (v37 = objc_msgSend(v11, "position") + 1, v37 <= objc_msgSend(v11, "length")))
              {
                v38 = [v11 data];
                [v38 getBytes:&v100 range:{objc_msgSend(v11, "position"), 1}];

                [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
              }

              else
              {
                [v11 _setError];
              }

              v35 |= (v100 & 0x7F) << v33;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              if (v34++ > 8)
              {
                v85 = 0;
                v13 = 0;
                goto LABEL_6;
              }
            }

            v13 = 0;
            if ([v11 hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v35;
            }

            v85 = v51;
            goto LABEL_6;
          case 2:

            v43 = PBReaderReadString();
            if (v43)
            {
              v44 = v43;
              v74 = sub_2146D95B8();
              v88 = v45;
            }

            else
            {
              v74 = 0;
              v88 = 0;
            }

            goto LABEL_6;
          case 3:

            v24 = PBReaderReadString();
            if (v24)
            {
              v25 = v24;
              v87 = sub_2146D95B8();
              v91 = v26;
            }

            else
            {
              v87 = 0;
              v91 = 0;
            }

            goto LABEL_6;
        }
      }

      PBReaderSkipValueWithTag();
LABEL_6:
      v14 = [v11 position];
      if (v14 >= [v11 length])
      {
        goto LABEL_64;
      }
    }
  }

  v3 = 0;
  v73 = 0;
  v74 = 0;
  v90 = 0;
  v91 = 0;
  v87 = 0;
  v88 = 0;
  v92 = 0xF000000000000000;
  v13 = 1;
  v85 = 0;
  LOBYTE(v86) = 2;
LABEL_64:
  v81 = v13;

  sub_213FDC6BC(a1, a2);
  v6 = v92;
  v5 = v88;
  v4 = v74;
LABEL_65:
  sub_213FDCA18(v3, v6);
  sub_21467180C(&v100);
  v53 = v100;
  v52 = v101;
  v54 = v3;
  v55 = v102;
  v56 = v103;
  v57 = v104;
  sub_2146719C4(&v119);
  v77 = v119;
  v82 = v121;
  v83 = v122;
  v84 = v120;
  v78 = v123;
  v119 = v4;
  v120 = v5;
  v94[0] = v57;
  v100 = 0xD00000000000002DLL;
  v101 = 0x8000000214790D20;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v75 = v55;
  v58 = v55;
  v59 = v56;
  sub_213FDC9D0(v58, v56);
  v76 = v52;
  v60 = v79;
  v80 = v53;
  v61 = v53(&v119, v94, &v100);
  v93 = v6;
  if (v60)
  {

    v62 = v54;
    sub_213FDC6BC(v54, v6);

    v63 = v78;
    v64 = v52;
    v4 = v75;
LABEL_70:

    sub_213FDC6D0(v4, v56);
    v68 = v62;
    v69 = v93;
    v65 = v77;
LABEL_71:
    LODWORD(v100) = v85;
    BYTE4(v100) = v81 & 1;
    *(&v100 + 5) = v98;
    HIBYTE(v100) = v99;
    v101 = v80;
    v102 = v64;
    v103 = v4;
    v104 = v59;
    v105 = v57;
    *v106 = v97[0];
    *&v106[3] = *(v97 + 3);
    v107 = v87;
    v108 = v91;
    v109 = v65;
    v110 = v84;
    v111 = v82;
    v112 = v83;
    v113 = v63;
    v114 = v86;
    v116 = v96;
    v115 = v95;
    v117 = v68;
    v118 = v69;
    sub_21404B8A0(&v100);
    return;
  }

  v89 = v5;
  v62 = v54;
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD00000000000002DLL;
    v67[1] = 0x8000000214790D20;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v54, v6);

    v63 = v78;
    v64 = v52;
    v4 = v75;
    goto LABEL_70;
  }

  sub_213FDC6D0(v75, v56);

  v64 = v52;

  sub_213FDC6D0(v75, v56);
  v119 = v73;
  v120 = v90;
  v63 = v78;
  v94[0] = v78;
  v100 = 0xD000000000000033;
  v101 = 0x8000000214790D50;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v82, v83);
  v65 = v77;
  v66 = v77(&v119, v94, &v100);
  v68 = v54;
  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD000000000000033;
    v71[1] = 0x8000000214790D50;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = 0x800000021478A360;
    swift_willThrow();

    v69 = v93;
    sub_213FDC6BC(v62, v93);

    sub_213FDC6D0(v82, v83);
    v59 = v89;
    goto LABEL_71;
  }

  sub_213FDC6D0(v82, v83);
  sub_213FDC6BC(v54, v93);

  sub_213FDC6D0(v82, v83);
  *a3 = v85;
  *(a3 + 4) = v81 & 1;
  *(a3 + 8) = v80;
  *(a3 + 16) = v76;
  *(a3 + 24) = v4;
  *(a3 + 32) = v89;
  *(a3 + 40) = v57;
  *(a3 + 48) = v87;
  *(a3 + 56) = v91;
  *(a3 + 64) = v77;
  *(a3 + 72) = v84;
  *(a3 + 80) = v73;
  *(a3 + 88) = v90;
  *(a3 + 96) = v78;
  *(a3 + 97) = v86;
  *(a3 + 104) = v54;
  *(a3 + 112) = v93;
}

unint64_t sub_214672F4C(uint64_t a1)
{
  *(a1 + 8) = sub_214320808();
  result = sub_21432061C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214672F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_214672FC4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214673030@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214673150@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214779750;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

uint64_t RCSFileInfo.$fileSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 RCSFileInfo.$fileSize.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t RCSFileInfo.$fileName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RCSFileInfo.$fileName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t RCSFileInfo.$contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RCSFileInfo.$contentType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t type metadata accessor for RCSFileInfo(uint64_t a1)
{
  result = qword_27C917848;
  if (!qword_27C917848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSFileInfo.$url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFileInfo(0) + 36);

  return sub_2143A009C(a1, v3);
}

uint64_t RCSFileInfo.$playingLengthInSeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSFileInfo(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 RCSFileInfo.$playingLengthInSeconds.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for RCSFileInfo(0) + 44));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t RCSFileInfo.fileSize.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t RCSFileInfo.fileName.getter()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t RCSFileInfo.contentType.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RCSFileInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + *(type metadata accessor for RCSFileInfo(0) + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  sub_21407E248(v5);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t RCSFileInfo.playingLengthInSeconds.getter()
{
  v1 = v0 + *(type metadata accessor for RCSFileInfo(0) + 44);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t RCSFileInfo.FileType.rawValue.getter()
{
  if (*v0)
  {
    return 0x69616E626D756874;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_2146739D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69616E626D756874;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v5 = 0x69616E626D756874;
  }

  else
  {
    v5 = 1701603686;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006CLL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_214673A74()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214673AF4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214673B60(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214673BE8(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 0x69616E626D756874;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RCSFileInfo.FileDisposition.rawValue.getter()
{
  if (*v0)
  {
    return 0x656D686361747461;
  }

  else
  {
    return 0x7265646E6572;
  }
}

uint64_t sub_214673D1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D686361747461;
  }

  else
  {
    v3 = 0x7265646E6572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v5 = 0x656D686361747461;
  }

  else
  {
    v5 = 0x7265646E6572;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_214673DC4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214673E48(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214673EB8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214673F44(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E6572;
  if (*v1)
  {
    v2 = 0x656D686361747461;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*RCSFileInfo.fileSize.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 24);
    return sub_214610CD8;
  }

  return result;
}

void (*RCSFileInfo.$fileSize.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214610E04;
}

void RCSFileInfo.fileName.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
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

void (*RCSFileInfo.fileName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*RCSFileInfo.$fileName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

void RCSFileInfo.contentType.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
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

void (*RCSFileInfo.contentType.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RCSFileInfo.$contentType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

uint64_t sub_214674720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a1 + *(type metadata accessor for RCSFileInfo(0) + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146748AC(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for RCSFileInfo(0);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t RCSFileInfo.url.setter(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for RCSFileInfo(0);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*RCSFileInfo.url.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RCSFileInfo(0) + 36);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void (*RCSFileInfo.$url.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for RCSFileInfo(0) + 36);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

uint64_t RCSFileInfo.untilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFileInfo(0) + 40);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFileInfo.untilDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFileInfo(0) + 40);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214674F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for RCSFileInfo(0);
  v5 = a1 + *(result + 44);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*RCSFileInfo.playingLengthInSeconds.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RCSFileInfo(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t sub_2146750A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RCSFileInfo(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214675114(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for RCSFileInfo(0) + 44);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*RCSFileInfo.$playingLengthInSeconds.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for RCSFileInfo(0) + 44);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

unint64_t sub_214675250()
{
  result = qword_27C917838;
  if (!qword_27C917838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RCSFileInfo.FileType, &type metadata for RCSFileInfo.FileType, v0, v1);
    atomic_store(result, &qword_27C917838);
  }

  return result;
}

unint64_t sub_2146752A8()
{
  result = qword_27C917840;
  if (!qword_27C917840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RCSFileInfo.FileDisposition, &type metadata for RCSFileInfo.FileDisposition, v0, v1);
    atomic_store(result, &qword_27C917840);
  }

  return result;
}

uint64_t sub_2146752FC(uint64_t a1)
{
  *(a1 + 8) = sub_214675364(&qword_27C908EA8, protocol conformance descriptor for RCSFileInfo);
  result = sub_214675364(&qword_27C908EC0, protocol conformance descriptor for RCSFileInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214675364(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RCSFileInfo(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146753D0(uint64_t a1)
{
  sub_214675578(319, &qword_27C917858, &type metadata for RCSFileInfo.FileDisposition, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_214675578(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v3 <= 0x3F)
      {
        sub_214675578(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
        if (v4 <= 0x3F)
        {
          sub_2143A5654(319);
          if (v5 <= 0x3F)
          {
            sub_2146D8B08();
            if (v6 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
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

void sub_214675578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2146755E8()
{
  result = qword_27C917860;
  if (!qword_27C917860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RCSFileInfo.FileDisposition, &type metadata for RCSFileInfo.FileDisposition, v0, v1);
    atomic_store(result, &qword_27C917860);
  }

  return result;
}

unint64_t sub_21467563C()
{
  result = qword_27C917868;
  if (!qword_27C917868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RCSFileInfo.FileType, &type metadata for RCSFileInfo.FileType, v0, v1);
    atomic_store(result, &qword_27C917868);
  }

  return result;
}

uint64_t sub_2146756CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214675700(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_214675700(uint64_t result)
{
  if (result > 205)
  {
    if ((result - 206) <= 0x31 && ((1 << (result + 50)) & 0x200F1BC20003FLL) != 0)
    {
      return result;
    }

    return 0;
  }

  if (result && result != 97 && result != 100)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214675760()
{
  result = qword_27C917870;
  if (!qword_27C917870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandType, &type metadata for CommandType, v0, v1);
    atomic_store(result, &qword_27C917870);
  }

  return result;
}

uint64_t sub_2146757C4(uint64_t a1)
{
  v1 = sub_214675854();
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_21467580C(uint64_t a1)
{
  v1 = sub_214675854();
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_214675854()
{
  v1 = type metadata accessor for PersistenceEvent(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v55 = &v54 - v5;
  v6 = type metadata accessor for MembershipEvent(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v54 - v10;
  v11 = type metadata accessor for MentionEvent(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = type metadata accessor for ChangeEvent(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = type metadata accessor for CollaborationHighlightEvent(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_214678C34(v0, v25, type metadata accessor for CollaborationHighlightEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_214678CFC(v25, v16, type metadata accessor for MentionEvent);
      v47 = sub_2146D9588();
      v48 = type metadata accessor for MentionEventSecureCoding(0);
      v49 = v26;
      [v26 setClassName:v47 forClass:swift_getObjCClassFromMetadata()];

      sub_214678C34(v16, v14, type metadata accessor for MentionEvent);
      v50 = objc_allocWithZone(v48);
      sub_214678C34(v14, v50 + OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent, type metadata accessor for MentionEvent);
      v57.receiver = v50;
      v57.super_class = v48;
      v51 = objc_msgSendSuper2(&v57, sel_init);
      v34 = type metadata accessor for MentionEvent;
      sub_214678C9C(v14, type metadata accessor for MentionEvent);
      [v49 encodeObject:v51 forKey:*MEMORY[0x277CCA308]];

      v52 = [v49 encodedData];
      v36 = sub_2146D8A58();

      v37 = v16;
      goto LABEL_11;
    }

    sub_214678CFC(v25, v22, type metadata accessor for ChangeEvent);
    v38 = sub_2146D9588();
    v39 = type metadata accessor for ChangeEventSecureCoding(0);
    v40 = v26;
    [v26 setClassName:v38 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v22, v20, type metadata accessor for ChangeEvent);
    v41 = objc_allocWithZone(v39);
    sub_214678C34(v20, v41 + OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent, type metadata accessor for ChangeEvent);
    v56.receiver = v41;
    v56.super_class = v39;
    v42 = objc_msgSendSuper2(&v56, sel_init);
    v34 = type metadata accessor for ChangeEvent;
    sub_214678C9C(v20, type metadata accessor for ChangeEvent);
    [v40 encodeObject:v42 forKey:*MEMORY[0x277CCA308]];

    v26 = [v40 encodedData];
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v22 = v54;
    sub_214678CFC(v25, v54, type metadata accessor for MembershipEvent);
    v43 = sub_2146D9588();
    v44 = type metadata accessor for MembershipEventSecureCoding(0);
    [v26 setClassName:v43 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v22, v9, type metadata accessor for MembershipEvent);
    v45 = objc_allocWithZone(v44);
    sub_214678C34(v9, v45 + OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent, type metadata accessor for MembershipEvent);
    v58.receiver = v45;
    v58.super_class = v44;
    v46 = objc_msgSendSuper2(&v58, sel_init);
    v34 = type metadata accessor for MembershipEvent;
    sub_214678C9C(v9, type metadata accessor for MembershipEvent);
    [v26 encodeObject:v46 forKey:*MEMORY[0x277CCA308]];

    v40 = [v26 encodedData];
LABEL_8:
    v36 = sub_2146D8A58();

    v37 = v22;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v28 = v55;
    sub_214678CFC(v25, v55, type metadata accessor for PersistenceEvent);
    v29 = sub_2146D9588();
    v30 = type metadata accessor for PersistenceEventSecureCoding(0);
    v31 = v26;
    [v26 setClassName:v29 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v28, v4, type metadata accessor for PersistenceEvent);
    v32 = objc_allocWithZone(v30);
    sub_214678C34(v4, v32 + OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent, type metadata accessor for PersistenceEvent);
    v59.receiver = v32;
    v59.super_class = v30;
    v33 = objc_msgSendSuper2(&v59, sel_init);
    v34 = type metadata accessor for PersistenceEvent;
    sub_214678C9C(v4, type metadata accessor for PersistenceEvent);
    [v31 encodeObject:v33 forKey:*MEMORY[0x277CCA308]];

    v35 = [v31 encodedData];
    v36 = sub_2146D8A58();

    v37 = v28;
LABEL_11:
    sub_214678C9C(v37, v34);
    return v36;
  }

  sub_214678C9C(v25, type metadata accessor for CollaborationHighlightEvent);
  return 0;
}

uint64_t sub_2146760D0(char a1)
{
  result = swift_beginAccess();
  byte_27C917880 = a1;
  return result;
}

id sub_21467628C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v11 = sub_2146D9CF8();
  if (!v11)
  {

LABEL_7:
    type metadata accessor for ChangeEventSecureCoding(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = [v11 absoluteString];
  if (v13)
  {
    v14 = v13;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_21407E248(v6);
    goto LABEL_7;
  }

  v16 = *(v8 + 32);
  v16(v10, v6, v7);
  v17 = sub_2146D9588();
  v18 = [a1 decodeIntegerForKey_];

  if (v18 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 == 1;
  }

  v20 = &v2[OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent];
  v21 = type metadata accessor for ChangeEvent(0);
  v16(&v20[*(v21 + 20)], v10, v7);
  *v20 = v19;
  v22 = type metadata accessor for ChangeEventSecureCoding(0);
  v24.receiver = v2;
  v24.super_class = v22;
  v23 = objc_msgSendSuper2(&v24, sel_init);

  return v23;
}

void sub_2146765E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChangeEvent(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v8, v7, type metadata accessor for ChangeEvent);
  v9 = *(v5 + 28);
  sub_2146D8868();
  v10 = sub_2146D8958();
  (*(*(v10 - 8) + 8))(&v7[v9], v10);
  v11 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v12 = sub_2146D9588();

  v13 = [v11 initWithString_];

  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v2 + v8);
  v16 = sub_2146D9588();
  [a1 encodeInteger:v15 forKey:v16];
}

id sub_214676830()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21467699C(char a1)
{
  result = swift_beginAccess();
  byte_27C917881 = a1;
  return result;
}

uint64_t sub_214676A84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v13 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  sub_214678C34(a1, &v19 - v14, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  sub_214677FEC(v15, v16 + v17, a8);
  return swift_endAccess();
}

uint64_t sub_214676B74@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_214678C34(v3 + v6, a3, a2);
}

uint64_t sub_214676BF0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  sub_214677FEC(a1, v3 + v6, a3);
  return swift_endAccess();
}

id sub_214676CE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v11 = sub_2146D9CF8();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 absoluteString];
    if (v13)
    {
      v14 = v13;
      sub_2146D95B8();
    }

    sub_2146D8928();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_21407E248(v6);
    }

    else
    {
      v15 = *(v8 + 32);
      v15(v10, v6, v7);
      sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
      v16 = sub_2146D9CF8();
      if (v16)
      {
        v31[0] = 0uLL;
        v17 = v16;
        sub_2146D95A8();

        v18 = *(&v31[0] + 1);
        if (*(&v31[0] + 1))
        {
          v29 = *&v31[0];
          sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
          v19 = sub_2146D9CF8();
          if (v19)
          {
            sub_21449A7A4(v19, v31);

            v27 = v31[1];
            v28 = v31[0];
            v20 = v32;
            v21 = &v2[OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent];
            v22 = type metadata accessor for MentionEvent(0);
            v15(&v21[*(v22 + 24)], v10, v7);
            *v21 = v29;
            *(v21 + 1) = v18;
            v23 = v27;
            *(v21 + 1) = v28;
            *(v21 + 2) = v23;
            *(v21 + 6) = v20;
            v24 = type metadata accessor for MentionEventSecureCoding(0);
            v30.receiver = v2;
            v30.super_class = v24;
            v25 = objc_msgSendSuper2(&v30, sel_init);

            return v25;
          }

          (*(v8 + 8))(v10, v7);
        }

        else
        {

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }
  }

  else
  {
  }

  type metadata accessor for MentionEventSecureCoding(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214677128(void *a1)
{
  v3 = type metadata accessor for MentionEvent(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent;
  swift_beginAccess();
  (*(v8 + 16))(v10, v11 + *(v4 + 32), v7);
  v12 = sub_2146D8898();
  (*(v8 + 8))(v10, v7);
  v13 = sub_2146D9588();
  [a1 encodeObject:v12 forKey:v13];

  v14 = sub_2146D9588();

  v15 = sub_2146D9588();
  [a1 encodeObject:v14 forKey:v15];

  sub_214678C34(v11, v6, type metadata accessor for MentionEvent);
  v16 = v6[4];
  if (v16)
  {
    v17 = v6[2];
    v18 = v6[3];
    v19 = v6[5];
    v20 = v6[6];
    sub_21402D9F8(v17, v18);

    sub_213FDCA18(v19, v20);
    sub_214678C9C(v6, type metadata accessor for MentionEvent);
    v21 = sub_2146D8A38();
    v22 = sub_2146D98E8();
    if (v20 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_2146D8A38();
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v21 publicKeys:v22 trackingPreventionSalt:v23];

    sub_2142EC728(v17, v18, v16, v19, v20);
    v25 = v24;
    v26 = sub_2146D9588();
    [a1 encodeObject:v25 forKey:v26];
  }

  else
  {
    sub_214678C9C(v6, type metadata accessor for MentionEvent);
  }
}

id sub_21467758C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21467768C(char a1)
{
  result = swift_beginAccess();
  byte_27C917882 = a1;
  return result;
}

id sub_214677848(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v11 = sub_2146D9CF8();
  if (!v11)
  {

LABEL_7:
    type metadata accessor for MembershipEventSecureCoding(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = [v11 absoluteString];
  if (v13)
  {
    v14 = v13;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_21407E248(v6);
    goto LABEL_7;
  }

  v16 = *(v8 + 32);
  v16(v10, v6, v7);
  v17 = sub_2146D9588();
  v18 = [a1 decodeIntegerForKey_];

  if (v18 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 == 1;
  }

  v20 = &v2[OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent];
  v21 = type metadata accessor for MembershipEvent(0);
  v16(&v20[*(v21 + 20)], v10, v7);
  *v20 = v19;
  v22 = type metadata accessor for MembershipEventSecureCoding(0);
  v24.receiver = v2;
  v24.super_class = v22;
  v23 = objc_msgSendSuper2(&v24, sel_init);

  return v23;
}

void sub_214677B98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MembershipEvent(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v8, v7, type metadata accessor for MembershipEvent);
  v9 = *(v5 + 28);
  v10 = sub_2146D8898();
  v11 = sub_2146D8958();
  (*(*(v11 - 8) + 8))(&v7[v9], v11);
  v12 = sub_2146D9588();
  [a1 encodeObject:v10 forKey:v12];

  v13 = *(v2 + v8);
  v14 = sub_2146D9588();
  [a1 encodeInteger:v13 forKey:v14];
}

uint64_t sub_214677EC4(char a1)
{
  result = swift_beginAccess();
  byte_27C917883 = a1;
  return result;
}

uint64_t sub_214677FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_2146780E8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v11 = sub_2146D9CF8();
  if (!v11)
  {

LABEL_7:
    type metadata accessor for PersistenceEventSecureCoding(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = [v11 absoluteString];
  if (v13)
  {
    v14 = v13;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_21407E248(v6);
    goto LABEL_7;
  }

  v16 = *(v8 + 32);
  v16(v10, v6, v7);
  v17 = sub_2146D9588();
  v18 = [a1 decodeIntegerForKey_];

  if (v18 >= 5)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = &v2[OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent];
  v21 = type metadata accessor for PersistenceEvent(0);
  v16(&v20[*(v21 + 20)], v10, v7);
  *v20 = v19;
  v22 = type metadata accessor for PersistenceEventSecureCoding(0);
  v24.receiver = v2;
  v24.super_class = v22;
  v23 = objc_msgSendSuper2(&v24, sel_init);

  return v23;
}

void sub_21467842C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersistenceEvent(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v8, v7, type metadata accessor for PersistenceEvent);
  v9 = *(v5 + 28);
  v10 = sub_2146D8898();
  v11 = sub_2146D8958();
  (*(*(v11 - 8) + 8))(&v7[v9], v11);
  v12 = sub_2146D9588();
  [a1 encodeObject:v10 forKey:v12];

  v13 = *(v2 + v8);
  v14 = sub_2146D9588();
  [a1 encodeInteger:v13 forKey:v14];
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_214678C34(v6 + v7, a4, a3);
}

uint64_t sub_214678AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_214678C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214678C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214678CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BlastDoor::IDSProtobuf::IDSProtobufKey_optional __swiftcall IDSProtobuf.IDSProtobufKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDSProtobuf.IDSProtobufKey.stringValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_214678EC0(uint64_t a1)
{
  *(a1 + 8) = sub_214678F64(&qword_27C907868, type metadata accessor for IDSClientProtobufMessageType, byte_214702C40);
  result = sub_214678F64(&qword_27C907890, type metadata accessor for IDSClientProtobufMessageType, aQq);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214678F64(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_214678FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v2 == 1)
  {
    v6 = "IDSProtoBufDataKey";
  }

  else
  {
    v6 = "IDSProtoBufTypeKey";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "aradigm";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "IDSProtoBufTypeKey";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "aradigm";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

unint64_t sub_214679084()
{
  result = qword_27C917910;
  if (!qword_27C917910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IDSProtobuf.IDSProtobufKey, &type metadata for IDSProtobuf.IDSProtobufKey, v0, v1);
    atomic_store(result, &qword_27C917910);
  }

  return result;
}

uint64_t sub_2146790D8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214679170(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146791F4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214679294(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "IDSProtoBufTypeKey";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "aradigm";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_2146792F0()
{
  result = qword_27C917918;
  if (!qword_27C917918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IDSProtobuf.IDSProtobufKey, &type metadata for IDSProtobuf.IDSProtobufKey, v0, v1);
    atomic_store(result, &qword_27C917918);
  }

  return result;
}

unint64_t sub_214679348()
{
  result = qword_27C917920;
  if (!qword_27C917920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IDSProtobuf.IDSProtobufKey, &type metadata for IDSProtobuf.IDSProtobufKey, v0, v1);
    atomic_store(result, &qword_27C917920);
  }

  return result;
}

unint64_t sub_21467939C()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

BlastDoor::IDSProtobuf::IDSProtobufKey_optional sub_2146793F0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = IDSProtobuf.IDSProtobufKey.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_214679428(uint64_t a1)
{
  v2 = sub_214679890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214679464(uint64_t a1)
{
  v2 = sub_214679890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146794A0(uint64_t a1)
{
  *(a1 + 8) = sub_214678F64(&qword_27C90CA58, type metadata accessor for IDSProtobuf, protocol conformance descriptor for IDSProtobuf);
  result = sub_214678F64(&qword_27C90C978, type metadata accessor for IDSProtobuf, protocol conformance descriptor for IDSProtobuf);
  *(a1 + 16) = result;
  return result;
}

void sub_214679524(uint64_t a1)
{
  type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(319);
    if (v2 <= 0x3F)
    {
      sub_214679690(319, &qword_27C917938, sub_21467963C, &type metadata for WalletPassSharingExternalInvitationRequestMessage);
      if (v3 <= 0x3F)
      {
        sub_214679690(319, &qword_27C917948, sub_2146796F0, &type metadata for WalletPassSharingUrlMessage);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21467963C()
{
  result = qword_27C917940;
  if (!qword_27C917940)
  {
    result = swift_getWitnessTable(byte_21473E958, &type metadata for WalletPassSharingExternalInvitationRequestMessage, v0, v1);
    atomic_store(result, &qword_27C917940);
  }

  return result;
}

void sub_214679690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for WalletPassSharingSpecializedMessage(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2146796F0()
{
  result = qword_27C917950;
  if (!qword_27C917950)
  {
    result = swift_getWitnessTable(byte_2147812A8, &type metadata for WalletPassSharingUrlMessage, v0, v1);
    atomic_store(result, &qword_27C917950);
  }

  return result;
}

void sub_21467976C(uint64_t a1)
{
  sub_214679828(319);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C917970, MEMORY[0x277D84C58]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214679828(uint64_t a1)
{
  if (!qword_27C917968)
  {
    type metadata accessor for IDSClientProtobufMessageType(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C917968);
    }
  }
}

unint64_t sub_214679890()
{
  result = qword_27C917978;
  if (!qword_27C917978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IDSProtobuf.IDSProtobufKey, &type metadata for IDSProtobuf.IDSProtobufKey, v0, v1);
    atomic_store(result, &qword_27C917978);
  }

  return result;
}

uint64_t sub_214679944()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_2146799B0()
{
  v2[3] = &type metadata for BlastdoorUnpacking;
  v2[4] = sub_214679A00();
  v0 = sub_2146D8BC8();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_214679A00()
{
  result = qword_27C917980;
  if (!qword_27C917980)
  {
    result = swift_getWitnessTable(byte_214779DE8, &type metadata for BlastdoorUnpacking, v0, v1);
    atomic_store(result, &qword_27C917980);
  }

  return result;
}

unint64_t sub_214679A58()
{
  result = qword_27C917988;
  if (!qword_27C917988)
  {
    result = swift_getWitnessTable(aI_52, &type metadata for BlastdoorUnpacking, v0, v1);
    atomic_store(result, &qword_27C917988);
  }

  return result;
}

uint64_t sub_214679ABC()
{
  v1 = v0;
  v2 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2145BFB38(v1, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    return *v7;
  }

  sub_214679DE8(v7, v4);
  sub_2146D8608();
  swift_allocObject();
  sub_2146D85F8();
  sub_214679E4C();
  v9 = sub_2146D85D8();
  sub_214679EA4(v4);

  return v9;
}

uint64_t sub_214679C48()
{
  v1 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2145BFB38(v0, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    sub_214679DE8(v6, v3);
    sub_2146D8608();
    swift_allocObject();
    sub_2146D85F8();
    sub_214679E4C();
    v7 = sub_2146D85D8();
    v8 = v9;
    sub_214679EA4(v3);
  }

  v10 = sub_2146D8A38();
  sub_213FB54FC(v7, v8);
  return v10;
}

uint64_t sub_214679DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214679E4C()
{
  result = qword_27C917990;
  if (!qword_27C917990)
  {
    v3 = type metadata accessor for BusinessMessage(255);
    result = swift_getWitnessTable(byte_21477D618, v3, v0, v1);
    atomic_store(result, &qword_27C917990);
  }

  return result;
}

uint64_t sub_214679EA4(uint64_t a1)
{
  v2 = type metadata accessor for BusinessMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21467A0C8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21467A194@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 3) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = -result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21467A1D4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](-v1);
  return sub_2146DA9B8();
}

uint64_t sub_21467A24C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](-v2);
  return sub_2146DA9B8();
}

void sub_21467A358(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_21467A3C4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21467A428(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_21467A474(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

unint64_t sub_21467A780()
{
  result = qword_27C917998;
  if (!qword_27C917998)
  {
    result = swift_getWitnessTable(byte_214779E40, &type metadata for ServicesDataOffCharacteristic.DataOffBehavior, v0, v1);
    atomic_store(result, &qword_27C917998);
  }

  return result;
}

unint64_t sub_21467A830()
{
  result = qword_27C9179A0;
  if (!qword_27C9179A0)
  {
    result = swift_getWitnessTable(aA_50, &type metadata for ServicesCharacteristic.StandaloneMsgAuth, v0, v1);
    atomic_store(result, &qword_27C9179A0);
  }

  return result;
}

unint64_t sub_21467A888()
{
  result = qword_27C9179A8;
  if (!qword_27C9179A8)
  {
    result = swift_getWitnessTable("q", &type metadata for ServicesCharacteristic.RCSDisabledState, v0, v1);
    atomic_store(result, &qword_27C9179A8);
  }

  return result;
}

unint64_t sub_21467A8E0()
{
  result = qword_27C9179B0;
  if (!qword_27C9179B0)
  {
    result = swift_getWitnessTable(byte_21477A148, &type metadata for ServicesCharacteristic.RCSProfileVersion, v0, v1);
    atomic_store(result, &qword_27C9179B0);
  }

  return result;
}

uint64_t sub_21467A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21467A9C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[4])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_21467AA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_21467AA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21467AAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21467AB60()
{
  result = qword_27C9179B8;
  if (!qword_27C9179B8)
  {
    result = swift_getWitnessTable(byte_21477A1B0, &type metadata for ServicesCharacteristic.RCSProfileVersion, v0, v1);
    atomic_store(result, &qword_27C9179B8);
  }

  return result;
}

unint64_t sub_21467ABB4()
{
  result = qword_27C9179C0;
  if (!qword_27C9179C0)
  {
    result = swift_getWitnessTable(byte_21477A0C0, &type metadata for ServicesCharacteristic.RCSDisabledState, v0, v1);
    atomic_store(result, &qword_27C9179C0);
  }

  return result;
}

unint64_t sub_21467AC08()
{
  result = qword_27C9179C8;
  if (!qword_27C9179C8)
  {
    result = swift_getWitnessTable(byte_214779FD0, &type metadata for ServicesCharacteristic.StandaloneMsgAuth, v0, v1);
    atomic_store(result, &qword_27C9179C8);
  }

  return result;
}

unint64_t sub_21467AC5C()
{
  result = qword_27C9179D0;
  if (!qword_27C9179D0)
  {
    result = swift_getWitnessTable(byte_214779EA8, &type metadata for ServicesDataOffCharacteristic.DataOffBehavior, v0, v1);
    atomic_store(result, &qword_27C9179D0);
  }

  return result;
}

CGColorRef sub_21467ACC4()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27C903248 != -1)
  {
    v4 = v0[1];
    v5 = *v0;
    swift_once();
    v2 = v4;
    v1 = v5;
  }

  v6[0] = v1;
  v6[1] = v2;
  result = CGColorCreate(qword_27C9179D8, v6);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_21467AD3C()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27C9179D8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_21467AD88(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CGColorGetColorSpace(a1);
  if (!v4)
  {
    sub_21467AF20();
    swift_allocError();
    *v10 = 0;
LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  if (qword_27C903248 != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27C9179D8, kCGRenderingIntentDefault, a1, 0);
  if (!CopyByMatchingToColorSpace)
  {
    sub_21467AF20();
    swift_allocError();
    *v11 = 1;
    goto LABEL_11;
  }

  v6 = CopyByMatchingToColorSpace;
  v7 = sub_2146D9B48();
  if (!v7)
  {
LABEL_8:
    sub_21467AF20();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();

LABEL_12:
    return;
  }

  v8 = *(v7 + 16);
  if (v8 < 3)
  {

    goto LABEL_8;
  }

  v12 = 1.0;
  if (v8 != 3)
  {
    v12 = *(v7 + 56);
  }

  v14 = *(v7 + 32);
  v13 = *(v7 + 48);

  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
}

unint64_t sub_21467AF20()
{
  result = qword_27C9179E0;
  if (!qword_27C9179E0)
  {
    result = swift_getWitnessTable(aE_89, &type metadata for ColorError, v0, v1);
    atomic_store(result, &qword_27C9179E0);
  }

  return result;
}

unint64_t sub_21467AF88()
{
  result = qword_27C9179E8;
  if (!qword_27C9179E8)
  {
    result = swift_getWitnessTable(byte_21477A42C, &type metadata for ColorError, v0, v1);
    atomic_store(result, &qword_27C9179E8);
  }

  return result;
}

char *XPCEncoder.__allocating_init(dictionary:)(void *a1)
{
  result = swift_allocObject();
  *(result + 8) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 7) = 0;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = result;
  result = xpc_dictionary_create_reply(a1);
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    result = v3;
LABEL_5:
    *(result + 8) = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t XPCEncoder.DataEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCEncoder.UUIDEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

xpc_object_t XPCEncoder.init(dictionary:)(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  result = xpc_dictionary_create_reply(a1);
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
LABEL_5:
    *(v1 + 64) = v3;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t *sub_21467B1D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v30 = a3;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(*v3 + 120))(&v35, v7);
  (*(*v3 + 144))(&v31, v10);
  BYTE1(v35) = v31;
  swift_beginAccess();
  sub_21467B590((v3 + 3), &v31);
  v11 = v3[8];
  v12 = type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_21467B64C(&v35, &v31, v11);
  v14 = *(v6 + 16);
  v28 = a1;
  v14(v9, a1, a2);
  v33 = v12;
  v34 = sub_21467F744(qword_280B35370, type metadata accessor for _XPCEncoder, asc_21477A770);
  v31 = v13;
  v15 = v13;

  v16 = v9;
  v17 = v29;
  v18 = a2;
  sub_2146D94B8();
  if (v17)
  {

    __swift_destroy_boxed_opaque_existential_1(&v31);
    (*(v6 + 8))(v9, a2);
  }

  else
  {
    v30 = v14;
    v19 = v28;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v16 = *(v15 + 72);
    v20 = *(v6 + 8);
    swift_unknownObjectRetain();
    v20(v9, v18);
    if (!v16)
    {
      v22 = sub_2146D9F78();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720);
      v24[3] = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
      v30(boxed_opaque_existential_0, v19, v18);
      v31 = 0;
      v32 = 0xE000000000000000;
      v16 = &v31;
      sub_2146D9EF8();

      v31 = 0x6576656C2D706F54;
      v32 = 0xEA0000000000206CLL;
      v26 = sub_2146DAA78();
      MEMORY[0x2160545D0](v26);

      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D841A8], v22);
      swift_willThrow();
    }
  }

  return v16;
}

uint64_t sub_21467B590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t XPCEncoder.deinit()
{
  sub_213FB4944(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21467B64C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = MEMORY[0x277D84F90];
  *(v4 + 16) = MEMORY[0x277D84F90];
  v10 = sub_214046008(v9);
  *(v4 + 32) = 0u;
  *(v4 + 24) = v10;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = v7;
  *(v4 + 81) = v8;
  swift_beginAccess();
  sub_21467F2FC(a2, v4 + 32);
  swift_endAccess();
  if (a3)
  {
    swift_getObjectType();
    v11 = sub_21408FD98();
    sub_213FB4944(a2);
    if (v11 == 7)
    {
      *(v4 + 72) = a3;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_213FB4944(a2);
  }

  return v4;
}

unint64_t sub_21467B734()
{
  result = qword_27C9179F8;
  if (!qword_27C9179F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCEncoder.DataEncodingStrategy, &type metadata for XPCEncoder.DataEncodingStrategy, v0, v1);
    atomic_store(result, &qword_27C9179F8);
  }

  return result;
}

unint64_t sub_21467B78C()
{
  result = qword_27C917A00;
  if (!qword_27C917A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCEncoder.UUIDEncodingStrategy, &type metadata for XPCEncoder.UUIDEncodingStrategy, v0, v1);
    atomic_store(result, &qword_27C917A00);
  }

  return result;
}

uint64_t sub_21467B960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 72);
  if (!v7)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = v7;
  if (sub_21408FD98() != 7)
  {
    __break(1u);
LABEL_4:
    v8 = xpc_dictionary_create(0, 0, 0);
    *(v4 + 72) = v8;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  v9 = *(v4 + 16);
  swift_unknownObjectRetain();

  sub_21467BADC(v4, v9, v8);
  v11 = type metadata accessor for _XPCKeyedEncodingContainer(0, a2, a3, v10);

  swift_unknownObjectRetain();

  swift_getWitnessTable(byte_21477A9C0, v11);
  sub_2146DA408();

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_21467BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (sub_21408FD98() == 7)
  {
    return a1;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21467BB84@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (v4)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = v4;
    if (sub_21408FD98() == 6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = xpc_array_create(0, 0);
  *(v2 + 72) = v5;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  v6 = *(v2 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();

  if (sub_21408FD98() == 6)
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_21467F36C();

    result = swift_unknownObjectRelease();
    *a1 = v2;
    a1[1] = v5;
    a1[2] = v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

xpc_object_t sub_21467BCCC(void *a1)
{
  v37[5] = *MEMORY[0x277D85DE8];
  v4 = sub_2146D9408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == MEMORY[0x277CC9318])
  {
    sub_214053840(a1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    v17 = MEMORY[0x277CC9318];
    swift_dynamicCast();
    v19 = v35;
    v18 = v36;
    if (!*(v1 + 80))
    {
      v25 = sub_2146D9F78();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720);
      v27[3] = v17;
      *v27 = v19;
      v27[1] = v18;
      v16 = *(v1 + 16);
      sub_21402D9F8(v19, v18);

      sub_2146D9F28();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D841A8], v25);
      swift_willThrow();
      sub_213FB54FC(v19, v18);
      return v16;
    }

    if (*(v1 + 80) != 1)
    {
      sub_2146D8A48();
      v28 = sub_2146D9628();

      v16 = xpc_string_create((v28 + 32));
      sub_213FB54FC(v19, v18);
LABEL_23:

      return v16;
    }

    v20 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v20 != 2)
      {
        memset(v34, 0, 14);
        goto LABEL_29;
      }

      v29 = *(v35 + 16);
      v33 = *(v35 + 24);
      if (sub_2146D8728() && __OFSUB__(v29, sub_2146D8758()))
      {
        goto LABEL_33;
      }

      if (!__OFSUB__(v33, v29))
      {
LABEL_21:
        sub_2146D8748();
        goto LABEL_29;
      }
    }

    else
    {
      if (!v20)
      {
        v34[0] = v35;
        LODWORD(v34[1]) = v36;
        WORD2(v34[1]) = WORD2(v36);
LABEL_29:
        sub_2146D93F8();
        v30 = sub_2146D93E8();
        (*(v5 + 8))(v7, v4);
        v16 = xpc_data_create_with_dispatch_data(v30);
        sub_213FB54FC(v19, v18);

        return v16;
      }

      v33 = (v35 >> 32) - v35;
      if (v35 >> 32 >= v35)
      {
        if (!sub_2146D8728() || !__OFSUB__(v19, sub_2146D8758()))
        {
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = DynamicType;
  if (DynamicType == __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318))
  {
    sub_214053840(a1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    swift_dynamicCast();
    v21 = xpc_mach_send_create();
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v16, "mpr_p", v21);
    swift_unknownObjectRelease();
    return v16;
  }

  if (v9 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0))
  {
    sub_214053840(a1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    swift_dynamicCast();
    v22 = v34[0];
    swift_beginAccess();
    v23 = xpc_mach_send_create();
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v16, "mpr_p", v23);
    swift_unknownObjectRelease();
    v24 = xpc_int64_create(*(v22 + 24));
    xpc_dictionary_set_value(v16, "mpr_s", v24);

    swift_unknownObjectRelease();
    return v16;
  }

  v10 = *(v1 + 80);
  v11 = *(v1 + 81);
  swift_beginAccess();
  sub_21467B590(v1 + 32, v37);
  v12 = type metadata accessor for _XPCEncoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = MEMORY[0x277D84F90];
  *(v13 + 24) = sub_214046008(v14);
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 80) = v10;
  *(v13 + 81) = v11;
  swift_beginAccess();
  sub_21467F2FC(v37, v13 + 32);
  swift_endAccess();
  sub_213FB4944(v37);
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37[3] = v12;
  v37[4] = sub_21467F744(qword_280B35370, type metadata accessor for _XPCEncoder, asc_21477A770);
  v37[0] = v13;

  v16 = v15;
  sub_2146D94B8();
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v16 = *(v13 + 72);
    if (v16)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v16 = xpc_null_create();
    }

    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v16;
}

void sub_21467C428(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 72))
  {
    __break(1u);
  }

  else
  {
    a1[3] = type metadata accessor for _XPCEncoder();
    a1[4] = sub_21467F744(&qword_280B35340, type metadata accessor for _XPCEncoder, byte_21477A6A8);
    *a1 = v3;
  }
}

uint64_t sub_21467C4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_21467B590(v3 + 32, a1);
}

uint64_t sub_21467C508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[4] = a3;
  v10[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v8 = sub_21467BCCC(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v4)
  {
    *(v3 + 72) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21467C5AC()
{
  v1 = *v0;
  *(v1 + 72) = xpc_null_create();
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C5E8(char a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_BOOL_create(a1 & 1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C628(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_2146D9628();
  v5 = xpc_string_create((v4 + 32));

  *(v3 + 72) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C680(double a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_double_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C6BC(float a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_double_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C6FC(char a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C73C(__int16 a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C77C(int a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C7D4(unsigned __int8 a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_uint64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C814(unsigned __int16 a1)
{
  v2 = *v1;
  *(v2 + 72) = xpc_uint64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C854(uint64_t value)
{
  v2 = *v1;
  *(v2 + 72) = xpc_uint64_create(value);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 72) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C910(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  xarray = *(v3 + 8);
  count = xpc_array_get_count(xarray);
  *&v20 = 0x207865646E49;
  *(&v20 + 1) = 0xE600000000000000;
  v23 = count;
  v8 = sub_2146DA428();
  MEMORY[0x2160545D0](v8);

  v9 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_2140954FC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_2140954FC((v10 > 1), v11 + 1, 1, v9);
  }

  v21 = &type metadata for XPCCodingKey;
  v22 = sub_2144EE044();
  v12 = swift_allocObject();
  *&v20 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = count;
  *(v12 + 40) = 0;
  v9[2] = v11 + 1;
  sub_213FB77C8(&v20, &v9[5 * v11 + 4]);
  *(v4 + 16) = v9;
  v21 = a2;
  v22 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_0, a1, a2);
  v14 = sub_21467BCCC(&v20);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v20);
    xpc_array_append_value(xarray, v15);
    swift_unknownObjectRelease();
  }

  return sub_21467CF74(v4);
}

uint64_t sub_21467CAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3[1];
  count = xpc_array_get_count(v7);
  *&v21 = 0x207865646E49;
  *(&v21 + 1) = 0xE600000000000000;
  v25 = count;
  v9 = sub_2146DA428();
  MEMORY[0x2160545D0](v9);

  v10 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2140954FC(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2140954FC((v11 > 1), v12 + 1, 1, v10);
  }

  v23 = &type metadata for XPCCodingKey;
  v24 = sub_2144EE044();
  v13 = swift_allocObject();
  *&v21 = v13;
  *(v13 + 16) = 0x207865646E49;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = count;
  *(v13 + 40) = 0;
  v10[2] = v12 + 1;
  sub_213FB77C8(&v21, &v10[5 * v12 + 4]);
  v4[2] = v10;
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_array_append_value(v7, v14);
  v15 = *v4;

  swift_unknownObjectRetain();
  *&v21 = sub_21467BADC(v15, v10, v14);
  *(&v21 + 1) = v16;
  v22 = v17;
  v19 = type metadata accessor for _XPCKeyedEncodingContainer(0, a2, a3, v18);

  swift_unknownObjectRetain();

  swift_getWitnessTable(byte_21477A9C0, v19);
  sub_2146DA408();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_21467CF74(v4);
}

uint64_t sub_21467CD4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  count = xpc_array_get_count(v4);
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v17 = count;
  v6 = sub_2146DA428();
  MEMORY[0x2160545D0](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_2140954FC((v8 > 1), v9 + 1, 1, v7);
  }

  v15 = &type metadata for XPCCodingKey;
  v16 = sub_2144EE044();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = count;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  sub_213FB77C8(&v14, &v7[5 * v9 + 4]);
  v1[2] = v7;
  v11 = xpc_array_create(0, 0);
  xpc_array_append_value(v4, v11);
  v12 = *v2;
  swift_getObjectType();

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_21467F36C();
    swift_unknownObjectRelease();
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v7;
    return sub_21467CF74(v2);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21467CF74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21467CFFC()
{
  v1 = *(v0 + 8);
  v2 = xpc_null_create();
  xpc_array_append_value(v1, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D048(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_BOOL_create(a1 & 1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D098(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = sub_2146D9628();
  v5 = xpc_string_create((v4 + 32));

  xpc_array_append_value(v3, v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D0F8(double a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D144(float a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D194(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D1E4(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D234(int a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D29C(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D2EC(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D33C(uint64_t value)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(value);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v4 + 8);
  v6 = a4(a1, a2, a3);
  xpc_array_append_value(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D734@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];

  xpc_array_get_count(v4);
  v5 = type metadata accessor for _XPCSuperUnkeyedEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v6 = sub_21467F424(v3, v4);

  swift_unknownObjectRelease();
  a1[3] = v5;
  result = sub_21467F744(&qword_27C917A30, type metadata accessor for _XPCSuperUnkeyedEncoder, asc_21477A770);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_21467D7FC(void *a1, void *a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2146DAA38();
  v6 = sub_2146D9628();

  xpc_dictionary_set_value(a4, (v6 + 32), a1);
}

uint64_t sub_21467D888(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = xpc_null_create();
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v12[3] = v9;
  v12[4] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);
  sub_21467D7FC(v7, v12, v5, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_21467D954(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_BOOL_create(a1 & 1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DA24(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_int64_create(a1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DAF4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_int64_create(a1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DBC4(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_int64_create(a1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = a4(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v7, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DD64(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_uint64_create(a1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DE34(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_uint64_create(a1);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DF04(uint64_t value, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_uint64_create(value);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  v9 = sub_2146D9628();
  v10 = xpc_string_create((v9 + 32));

  v12 = *(a4 + 16);
  v11 = *(a4 + 24);
  v15[3] = v12;
  v15[4] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a3, v12);
  sub_21467D7FC(v10, v15, v7, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_21467E0B4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_double_create(a3);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467E180(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = xpc_double_create(a3);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);
  sub_21467D7FC(v8, v13, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467E250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v40 = a5;
  v44 = a4;
  v36 = a3;
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = *(v7 + 16);
  v35 = v14;
  v15 = v13;
  (v13)(&v34 - v11);
  v16 = v5 + 2;
  v17 = v5[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[2] = v17;
  v39 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_2140954FC(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v33 = sub_2140954FC((v19 > 1), v20 + 1, 1, v17);
    v21 = v15;
    v17 = v33;
    *v16 = v33;
  }

  else
  {
    v21 = v15;
  }

  v34 = v21;
  v21(v10, v12, v6);
  v22 = v36[3];
  sub_21467F264(v20, v10, v16, v6, v22);
  (*(v7 + 8))(v12, v6);
  v24 = v39;
  v23 = v40;
  v39[2] = v17;
  v25 = *v24;
  v36 = v24[1];
  v26 = v44;
  v42 = v44;
  v43 = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v37, v26);
  v28 = v38;
  v29 = sub_21467BCCC(v41);
  if (!v28)
  {
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v42 = v6;
    v43 = v22;
    v31 = __swift_allocate_boxed_opaque_existential_0(v41);
    v34(v31, v35, v6);
    sub_21467D7FC(v30, v41, v25, v36);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_21467CF74(v24);
}

uint64_t sub_21467E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a6;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = *v6;
  v38 = v6[1];
  v44 = v6;
  v17 = v6 + 2;
  v18 = v6[2];
  v19 = *(a3 + 24);
  v47[3] = v9;
  v47[4] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
  v41 = v10;
  v21 = *(v10 + 16);
  v21(boxed_opaque_existential_0, a2, v9);
  v42 = v15;
  v22 = v15;
  v40 = v16;
  v23 = v19;
  sub_21467D7FC(v22, v47, v16, v38);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v21(v14, a2, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2140954FC(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v26 = v18[2];
  v25 = v18[3];
  if (v26 >= v25 >> 1)
  {
    v18 = sub_2140954FC((v25 > 1), v26 + 1, 1, v18);
    *v17 = v18;
  }

  v27 = v39;
  v21(v39, v14, v9);
  sub_21467F264(v26, v27, v17, v9, v23);
  (*(v41 + 8))(v14, v9);
  v28 = v44;
  v44[2] = v18;
  v29 = v40;

  v30 = v42;
  swift_unknownObjectRetain();
  v32 = v45;
  v31 = v46;
  v47[0] = sub_21467BADC(v29, v18, v30);
  v47[1] = v33;
  v47[2] = v34;
  v36 = type metadata accessor for _XPCKeyedEncodingContainer(0, v32, v31, v35);
  swift_getWitnessTable(byte_21477A9C0, v36);
  sub_2146DA408();
  sub_21467CF74(v28);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467E80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = xpc_array_create(0, 0);
  v14 = *v4;
  v31 = v4[1];
  v36 = v4;
  v17 = v4[2];
  v16 = v4 + 2;
  v15 = v17;
  v18 = *(a2 + 24);
  v37[3] = v7;
  v37[4] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  v33 = v8;
  v20 = *(v8 + 16);
  v20(boxed_opaque_existential_0, a1, v7);
  v34 = v14;
  v21 = v31;
  v30 = v13;
  v31 = v18;
  sub_21467D7FC(v13, v37, v14, v21);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v20(v12, a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_2140954FC(0, v15[2] + 1, 1, v15);
    *v16 = v15;
  }

  v24 = v15[2];
  v23 = v15[3];
  if (v24 >= v23 >> 1)
  {
    v15 = sub_2140954FC((v23 > 1), v24 + 1, 1, v15);
    *v16 = v15;
  }

  v25 = v32;
  v20(v32, v12, v7);
  sub_21467F264(v24, v25, v16, v7, v31);
  (*(v33 + 8))(v12, v7);
  *v16 = v15;
  v26 = v30;
  swift_getObjectType();
  v27 = v34;

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v28 = v35;
    v35[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    v28[4] = sub_21467F36C();
    *v28 = v27;
    v28[1] = v26;
    v28[2] = v15;
    sub_21467CF74(v36);
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21467EB14@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _XPCSuperKeyedEncoder();
  v6 = swift_allocObject();

  swift_unknownObjectRetain();
  v7 = sub_21467F508(v4, 0x7265707573, 0xE500000000000000, 0, 1, v3, v6);

  swift_unknownObjectRelease();
  a1[3] = v5;
  result = sub_21467F744(&qword_27C917A28, type metadata accessor for _XPCSuperKeyedEncoder, asc_21477A770);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_21467EBF0@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];

  swift_unknownObjectRetain();
  v6 = sub_21467F6D8(v5, v4);

  swift_unknownObjectRelease();
  a2[3] = type metadata accessor for _XPCSuperKeyedEncoder();
  result = sub_21467F744(&qword_27C917A28, type metadata accessor for _XPCSuperKeyedEncoder, asc_21477A770);
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_21467F14C()
{

  sub_213FB4944(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for XPCEncoder.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21467F264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_213FB77C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_21467F2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21467F36C()
{
  result = qword_280B300B0[0];
  if (!qword_280B300B0[0])
  {
    result = swift_getWitnessTable(byte_21477A858, &type metadata for _XPCUnkeyedEncodingContainer, v0, v1);
    atomic_store(result, qword_280B300B0);
  }

  return result;
}

uint64_t sub_21467F3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21467F424(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 6)
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v8);
    v7 = MEMORY[0x277D84F90];
    *(v2 + 16) = MEMORY[0x277D84F90];
    *(v2 + 24) = sub_214046008(v7);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 80) = v5;
    *(v2 + 81) = v6;
    swift_beginAccess();
    sub_21467F2FC(v8, v2 + 32);
    swift_endAccess();
    sub_213FB4944(v8);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 7)
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v13);
    v12 = MEMORY[0x277D84F90];
    *(a7 + 16) = MEMORY[0x277D84F90];
    *(a7 + 24) = sub_214046008(v12);
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 80) = v10;
    *(a7 + 81) = v11;
    swift_beginAccess();
    sub_21467F2FC(v13, a7 + 32);
    swift_endAccess();
    sub_213FB4944(v13);
    return a7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 7)
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v9);
    v8 = MEMORY[0x277D84F90];
    *(a3 + 16) = MEMORY[0x277D84F90];
    *(a3 + 24) = sub_214046008(v8);
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 80) = v6;
    *(a3 + 81) = v7;
    swift_beginAccess();
    sub_21467F2FC(v9, a3 + 32);
    swift_endAccess();
    sub_213FB4944(v9);
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F6D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _XPCSuperKeyedEncoder();
  v4 = swift_allocObject();

  return sub_21467F5F4(a1, a2, v4);
}

uint64_t sub_21467F744(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

NSObject *BitmapDecoder.decode(from:)(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v5 = a2;
  sub_21402D9F8(a1, a2);
  v2 = sub_214061224(&v4);
  sub_213FB54FC(v4, v5);
  return v2;
}

NSObject *BitmapDecoder.decode(from:)(uint64_t a1)
{
  v3 = sub_2146D8978();
  if (!v2)
  {
    v6 = v3;
    v7 = v4;
    v1 = sub_214061224(&v6);
    sub_213FB54FC(v6, v7);
  }

  return v1;
}

uint64_t BitmapEncoder.__allocating_init(configuration:maxPixelDimension:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  return v4;
}

uint64_t BitmapEncoder.__allocating_init(configuration:)()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t BitmapEncoder.maxPixelDimension.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BitmapEncoder.init(configuration:)()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t BitmapEncoder.init(configuration:maxPixelDimension:)(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

void BitmapEncoder.encode(image:to:)(CGImage *a1, uint64_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    sub_2146D8A68();
    sub_213FB54FC(v8, v9);
  }
}

const __CFDictionary *BitmapEncoder.encode(imageSource:)(CGImageSource *a1)
{
  v73 = a1;
  sub_2143C122C(v69);
  v2 = v70;
  v3 = v71;
  v4 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v5 = qword_280B30DE0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EA710;
  type metadata accessor for CGSize(0);
  v8 = sub_2146D9618();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_213FB2DA0();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_2146D91D8(v4, &dword_213FAF000, v5, "Encoding image with original size %{public}@", 44, 2, v7);

  swift_beginAccess();
  if (*(v1 + 24))
  {
    v12 = sub_2146D9B88();
    sub_2146D91D8(v12, &dword_213FAF000, v5, "No maximum size", 15, 2, MEMORY[0x277D84F90]);
    v13 = v2;
    v14 = v3;
  }

  else
  {
    sub_21407FF6C(*(v1 + 16), v2, v3);
    v13 = v15;
    v14 = v16;
    v17 = sub_2146D9B88();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2146E6910;
    v19 = sub_2146D9618();
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = v11;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    if (*(v1 + 24))
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v22 = sub_2146D9618();
    }

    *(v18 + 96) = MEMORY[0x277D837D0];
    *(v18 + 104) = v11;
    *(v18 + 72) = v22;
    *(v18 + 80) = v21;
    sub_2146D91D8(v17, &dword_213FAF000, v5, "Destination size %{public}@ based on maxPixelDimension %{public}@", 65, 2, v18);
  }

  v23 = CGImageSourceGetType(v73);
  if (v23)
  {
    v24 = v23;
    v25 = sub_2146D95B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  type metadata accessor for EncoderUtils();
  v28 = sub_21407E534(v25, v27, v2, v3, v13, v14);
  if (v67)
  {

    sub_21463F708(v69);
  }

  else
  {
    v30 = v28;
    v31 = sub_2146D9B88();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2146EA710;
    v33 = sub_2146D9618();
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = v11;
    v66 = v11;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    sub_2146D91D8(v31, &dword_213FAF000, v5, "Subsample factor %{public}@", 27, 2, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
    inited = swift_initStackObject();
    v36 = inited;
    v37 = *MEMORY[0x277CD3648];
    *(inited + 32) = *MEMORY[0x277CD3648];
    *(inited + 16) = xmmword_2146E6930;
    v38 = MEMORY[0x277D839B0];
    v39 = MEMORY[0x277CD3568];
    *(inited + 40) = 1;
    v40 = *v39;
    *(inited + 64) = v38;
    *(inited + 72) = v40;
    v41 = MEMORY[0x277CD3578];
    *(inited + 80) = 0;
    v42 = *v41;
    *(inited + 104) = v38;
    *(inited + 112) = v42;
    v43 = MEMORY[0x277CD3678];
    *(inited + 120) = 1;
    v44 = *v43;
    *(inited + 144) = v38;
    *(inited + 152) = v44;
    v45 = MEMORY[0x277CD3618];
    *(inited + 160) = 0;
    v46 = *v45;
    *(inited + 184) = v38;
    *(inited + 192) = v46;
    v47 = MEMORY[0x277CD3650];
    *(inited + 200) = 0;
    v68 = v5;
    v48 = *v47;
    *(inited + 224) = v38;
    *(inited + 232) = v48;
    v49 = MEMORY[0x277D83B88];
    v50 = *&v30;
    if (v30 <= 0.0)
    {
      v50 = 2;
    }

    else
    {
      v49 = MEMORY[0x277D85048];
    }

    *(inited + 264) = v49;
    *(inited + 240) = v50;
    v51 = v37;
    v52 = v40;
    v53 = v42;
    v54 = v44;
    v55 = v46;
    v56 = v48;
    sub_214045EE0(v36);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    v57 = sub_2146D9B88();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2146EA710;
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    sub_2146D9498();
    v59 = MEMORY[0x277D837D0];
    v60 = sub_2146D9618();
    *(v58 + 56) = v59;
    *(v58 + 64) = v66;
    *(v58 + 32) = v60;
    *(v58 + 40) = v61;
    sub_2146D91D8(v57, &dword_213FAF000, v68, "Encoding using BitmapEncoder with options %{public}@", 52, 2, v58);

    v6 = sub_2146D9468();
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v73, 0, v6);

    if (ImageAtIndex)
    {

      sub_214680BD0(ImageAtIndex, v72, v13, v14);
      v6 = v63;
      sub_21463F708(v69);
    }

    else
    {
      sub_21463F708(v69);
      if (v27)
      {

        sub_21407D454();
        swift_allocError();
        v65 = 1281;
      }

      else
      {
        sub_21407D454();
        swift_allocError();
        v65 = 1537;
      }

      *v64 = v65;
      *(v64 + 8) = 0;
      swift_willThrow();
    }
  }

  return v6;
}

void BitmapEncoder.encode(image:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
}

uint64_t BitmapEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t BitmapEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214680318@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *a1 = result;
  return result;
}

void sub_214680394(CGImage *a1, uint64_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    sub_2146D8A68();
    sub_213FB54FC(v8, v9);
  }
}

void sub_214680420(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
}

void sub_214680494(uint64_t *a1, void *a2, int a3, double a4, double a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      v12 = a2;
      sub_213FB54FC(v8, v7);
      *&v44 = v8;
      WORD4(v44) = v7;
      BYTE10(v44) = BYTE2(v7);
      BYTE11(v44) = BYTE3(v7);
      BYTE12(v44) = BYTE4(v7);
      BYTE13(v44) = BYTE5(v7);
      BYTE14(v44) = BYTE6(v7);
      sub_21409C088(v12, &v44, &v44 + BYTE6(v7), a3, a4, a5);
      v13 = v44;
      v14 = DWORD2(v44) | ((WORD6(v44) | (BYTE14(v44) << 16)) << 32);

      *a1 = v13;
      a1[1] = v14;
      return;
    }

    v29 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v30 = a2;
    sub_21402D9F8(v8, v7);
    sub_213FB54FC(v8, v7);
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v31 = v30;
    v32 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v32 < v8)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (sub_2146D8728() && __OFSUB__(v8, sub_2146D8758()))
      {
LABEL_31:
        __break(1u);
      }

      sub_2146D8778();
      swift_allocObject();
      v34 = sub_2146D8708();

      v29 = v34;
    }

    v35 = v32 < v8;
    v36 = v32 - v8;
    if (!v35)
    {

      v37 = sub_2146D8728();
      if (v37)
      {
        v38 = v37;
        v39 = sub_2146D8758();
        v40 = v8 - v39;
        if (!__OFSUB__(v8, v39))
        {
          v41 = sub_2146D8748();
          if (v41 >= v36)
          {
            v42 = v36;
          }

          else
          {
            v42 = v41;
          }

          sub_21409C088(v31, v38 + v40, v38 + v40 + v42, a3, a4, a5);

          *a1 = v8;
          a1[1] = v29 | 0x4000000000000000;
          return;
        }

        goto LABEL_29;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  if (v9 != 2)
  {
    *(&v44 + 7) = 0;
    *&v44 = 0;
    sub_21409C088(a2, &v44, &v44, a3, a4, a5);

    return;
  }

  v17 = a2;

  sub_213FB54FC(v8, v7);
  *&v44 = v8;
  *(&v44 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v18 = *(&v44 + 1);
  v19 = *(v44 + 16);
  v20 = *(v44 + 24);
  v21 = sub_2146D8728();
  if (!v21)
  {

    __break(1u);
    goto LABEL_33;
  }

  v22 = v21;
  v23 = sub_2146D8758();
  v24 = v19 - v23;
  if (__OFSUB__(v19, v23))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = __OFSUB__(v20, v19);
  v26 = v20 - v19;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_2146D8748();
  if (v27 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  sub_21409C088(v17, v22 + v24, v22 + v24 + v28, a3, a4, a5);

  *a1 = v44;
  a1[1] = v18 | 0x8000000000000000;
}

uint64_t *sub_2146808C0(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_213FB54FC(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_214680B28(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_213FB54FC(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_213FB54FC(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_2146D8728();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_2146D8758();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_2146D8748();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_214680B28(int *a1, int a2)
{
  result = sub_2146D89A8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2146D8728();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_2146D8758();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_2146D8748();
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

void sub_214680BD0(void *a1, int a2, double a3, double a4)
{
  sub_21409B984(a3, a4);
  if (!v4)
  {
    *&v11 = sub_21408F798(v9);
    *(&v11 + 1) = v10;
    sub_2146808C0(&v11, 0);
    v12 = v11;
    sub_214680494(&v12, a1, a2, a3, a4);
  }
}

void sub_214680C78(CGImageSource *a1, uint64_t a2)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v4 = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(v4);
    sub_214680BD0(v4, 1, Width, Height);
    if (!v2)
    {
      v10 = v7;
      v11 = v8;
      sub_2146D8A68();
      sub_213FB54FC(v10, v11);
    }
  }

  else
  {
    sub_21407D454();
    swift_allocError();
    *v9 = 1281;
    *(v9 + 8) = 0;
    swift_willThrow();
  }
}

unint64_t sub_214680E34(uint64_t a1)
{
  *(a1 + 8) = sub_21431E660();
  result = sub_21431DAF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214680E74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = sub_214069764(&unk_282653CA0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059810;
  *(v7 + 24) = v8;
  *(v5 + 32) = v7;
  v9 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21403254C;
  *(v10 + 24) = v11;
  *(v4 + 32) = v10;
  sub_214042A28(v4, a1 + 40);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 60;
  *(v15 + 24) = 0;
  *(v14 + 16) = sub_21406418C;
  *(v14 + 24) = v15;
  *(v13 + 32) = v14;
  v16 = sub_2142E0070(v13);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 16) = sub_214032610;
  *(v17 + 24) = v18;
  *(v12 + 32) = v17;
  return sub_214042A28(v12, a1 + 80);
}

unint64_t sub_214681104(uint64_t a1)
{
  *(a1 + 8) = sub_21431ECFC();
  result = sub_21431E1D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214681144@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EAEB0;
  v8 = sub_214069764(&unk_2826538E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214059810;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = __swift_project_value_buffer(v11, qword_27CA19E80);
  (*(*(v11 - 8) + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = swift_allocObject();
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2144A041C(v5, v15 + v14);
  *(v13 + 16) = sub_214306D5C;
  *(v13 + 24) = v15;
  *(v7 + 40) = v13;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v16 + 16) = sub_21439DF54;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2146813E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214681434(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214681490()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21468150C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 15;
  if (result < 0xF)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146815D8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146817BC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146818A8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_2146819AC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_214681AF4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214681B90(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214681C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IMDispositionNotification(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_214681CA4(uint64_t a1)
{
  v3 = *(type metadata accessor for IMDispositionNotification(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214681D68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification(0) + 24);

  return sub_21407E1D8(v3, a1);
}

uint64_t sub_214681DAC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification(0) + 24);

  return sub_214682208(a1, v3);
}

uint64_t sub_214681E38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification(0) + 28);

  return sub_21407E1D8(v3, a1);
}

uint64_t sub_214681E7C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification(0) + 28);

  return sub_214682208(a1, v3);
}

uint64_t sub_214681F08@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_214681F3C(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for IMDispositionNotification(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_214681FB4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification(0);
  v4 = *(v1 + *(result + 32));
  if (v4 > 0xFF)
  {
    LOBYTE(v4) = -48;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214681FF4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification(0);
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x100 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214682044@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification(0);
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x200 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214682094@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification(0);
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x300 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
  return result;
}

BOOL sub_2146820E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 4;
  if (v4 > 0xD)
  {
    if (v4 == 14)
    {
      return (v3 & 0xF0) == 0xE0;
    }

    if (v4 == 15)
    {
      return v3 > 0xEF;
    }
  }

  else
  {
    if (v4 == 6)
    {
      return (v3 & 0xF0) == 0x60;
    }

    if (v4 == 7)
    {
      return (v3 & 0xF0) == 0x70;
    }
  }

  if (v3 >> 4 <= -3 || ((0x303u >> (((*a2 >> 4) + 2) & 0xF)) & 1) == 0)
  {
    if (v2 < 0)
    {
      if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x7F) == 0)
      {
        return 1;
      }
    }

    else if (v3 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for IMDispositionNotification(uint64_t a1)
{
  result = qword_27C917A60;
  if (!qword_27C917A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214682208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21468227C()
{
  result = qword_27C917A38;
  if (!qword_27C917A38)
  {
    result = swift_getWitnessTable(byte_21477ACD8, &type metadata for IMDispositionNotification.DeliveryNotification.Status.FailureReason.MlsServerFailureReason, v0, v1);
    atomic_store(result, &qword_27C917A38);
  }

  return result;
}

unint64_t sub_2146822D4()
{
  result = qword_27C917A40;
  if (!qword_27C917A40)
  {
    result = swift_getWitnessTable(byte_21477ADC8, &type metadata for IMDispositionNotification.DeliveryNotification.Status.FailureReason.MlsClientFailureReason, v0, v1);
    atomic_store(result, &qword_27C917A40);
  }

  return result;
}

uint64_t sub_214682380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146823EC()
{
  result = qword_27C917A48;
  if (!qword_27C917A48)
  {
    result = swift_getWitnessTable(aM_132, &type metadata for IMDispositionNotification.InterworkingNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A48);
  }

  return result;
}

unint64_t sub_214682470()
{
  result = qword_27C917A50;
  if (!qword_27C917A50)
  {
    result = swift_getWitnessTable(aA_51, &type metadata for IMDispositionNotification.DisplayNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A50);
  }

  return result;
}

unint64_t sub_2146824F4()
{
  result = qword_27C917A58;
  if (!qword_27C917A58)
  {
    result = swift_getWitnessTable(aU_103, &type metadata for IMDispositionNotification.ProcessingNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A58);
  }

  return result;
}

uint64_t sub_2146825A0(uint64_t a1)
{
  *(a1 + 8) = sub_214682608(&qword_27C90D4A8, byte_2146FC980);
  result = sub_214682608(&qword_27C90D448, a1gm);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214682608(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IMDispositionNotification(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214682674(uint64_t a1)
{
  sub_2146827C8(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2146D8B08();
    if (v2 <= 0x3F)
    {
      sub_214682770(319);
      if (v3 <= 0x3F)
      {
        sub_2146827C8(319, &qword_27C917A70, &type metadata for IMDispositionNotification.DispositionNotification, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214682770(uint64_t a1)
{
  if (!qword_280B30B80)
  {
    sub_2146D8958();
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B30B80);
    }
  }
}

void sub_2146827C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB)
  {
    goto LABEL_17;
  }

  if (a2 + 245 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 245) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 245;
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

      return (*a1 | (v4 << 8)) - 245;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 245;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = (v6 >> 3) & 0xE | (v6 >> 7);
  v8 = __OFSUB__(11, v7);
  v9 = 11 - v7;
  if (v9 < 0 != v8)
  {
    v9 = -1;
  }

  if (((v6 >> 3) & 0xE) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 245 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 245) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB)
  {
    v4 = 0;
  }

  if (a2 > 0xA)
  {
    v5 = ((a2 - 11) >> 8) + 1;
    *result = a2 - 11;
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
    *result = (8 * (12 - a2)) & 0x70 | ((12 - a2) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 245;
  if (a2 + 245 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 245;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 245;
    }
  }

LABEL_20:
  v7 = *a1;
  if (((v7 >> 3) & 0xE) != 0)
  {
    v8 = 16 - ((v7 >> 3) & 0xE | (v7 >> 7));
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 245;
  if (a3 + 245 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xB)
  {
    v5 = 0;
  }

  if (a2 > 0xA)
  {
    v6 = ((a2 - 11) >> 8) + 1;
    *result = a2 - 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = (8 * (12 - a2)) & 0x70 | ((12 - a2) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_214682B08(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 3) & 0xE) != 0)
  {
    return 16 - ((v1 >> 3) & 0xE | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_214682B2C(_BYTE *result, unsigned int a2)
{
  if (a2 > 0xE)
  {
    LOBYTE(v2) = a2 - 15;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 16 * (((-a2 >> 1) & 7) - 8 * a2);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status.FailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DispositionNotification(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DispositionNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214682EEC()
{
  result = qword_27C917A78;
  if (!qword_27C917A78)
  {
    result = swift_getWitnessTable(byte_21477B1DC, &type metadata for IMDispositionNotification.ProcessingNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A78);
  }

  return result;
}

unint64_t sub_214682F40()
{
  result = qword_27C917A80;
  if (!qword_27C917A80)
  {
    result = swift_getWitnessTable(byte_21477B0D0, &type metadata for IMDispositionNotification.DisplayNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A80);
  }

  return result;
}

unint64_t sub_214682F94()
{
  result = qword_27C917A88;
  if (!qword_27C917A88)
  {
    result = swift_getWitnessTable(byte_21477AFC4, &type metadata for IMDispositionNotification.InterworkingNotification.Status, v0, v1);
    atomic_store(result, &qword_27C917A88);
  }

  return result;
}

unint64_t sub_214682FE8()
{
  result = qword_27C917A90;
  if (!qword_27C917A90)
  {
    result = swift_getWitnessTable(aQ_44, &type metadata for IMDispositionNotification.DeliveryNotification.Status.FailureReason.MlsClientFailureReason, v0, v1);
    atomic_store(result, &qword_27C917A90);
  }

  return result;
}

unint64_t sub_21468303C()
{
  result = qword_27C917A98;
  if (!qword_27C917A98)
  {
    result = swift_getWitnessTable(aA_52, &type metadata for IMDispositionNotification.DeliveryNotification.Status.FailureReason.MlsServerFailureReason, v0, v1);
    atomic_store(result, &qword_27C917A98);
  }

  return result;
}

unint64_t sub_2146830BC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t GroupContext.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 GroupContext.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_i64[0];
  v7 = v1[3].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

uint64_t GroupContext.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 GroupContext.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

void GroupContext.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t GroupContext.groupID.getter()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

void GroupContext.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
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

uint64_t (*GroupContext.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*GroupContext.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

void GroupContext.groupID.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 32);
  v8 = *(v2 + 64);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 48), *(v2 + 56));

    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
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

void (*GroupContext.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214030A78;
  }

  return result;
}

void (*GroupContext.$groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

uint64_t GroupContext.currentGroupName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void GroupContext.currentGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t GroupContext.groupParticipantVersion.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t GroupContext.groupProtocolVersion.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

unint64_t sub_214683A58(uint64_t a1)
{
  *(a1 + 8) = sub_214301E18();
  result = sub_214301F3C();
  *(a1 + 16) = result;
  return result;
}

void sub_214683A98(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_214683AF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
}

uint64_t sub_214683B48@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = result == 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214683B64@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214683C58()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_214683C88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v12 = *(v1 + 128);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 160);
  v5 = v14;
  v6 = *(v1 + 64);
  v11[0] = *(v1 + 48);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_2142F236C(v11, v10);
}

BOOL sub_214683E94(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_214683EC4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_214683EF0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unint64_t sub_214683FC4()
{
  result = qword_27C917AA0;
  if (!qword_27C917AA0)
  {
    result = swift_getWitnessTable(asc_21477B5C0, &type metadata for SyndicationAction.ItemType, v0, v1);
    atomic_store(result, &qword_27C917AA0);
  }

  return result;
}

uint64_t sub_214684070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146840AC()
{
  result = qword_27C917AA8;
  if (!qword_27C917AA8)
  {
    result = swift_getWitnessTable(aY3m, &type metadata for SyndicationAction, v0, v1);
    atomic_store(result, &qword_27C917AA8);
  }

  return result;
}

unint64_t sub_214684100()
{
  result = qword_27C917AB0;
  if (!qword_27C917AB0)
  {
    result = swift_getWitnessTable(byte_2146FC6D8, &type metadata for SyndicationAction, v0, v1);
    atomic_store(result, &qword_27C917AB0);
  }

  return result;
}

unint64_t sub_214684158()
{
  result = qword_27C917AB8;
  if (!qword_27C917AB8)
  {
    result = swift_getWitnessTable(aI_53, &type metadata for SyndicationAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C917AB8);
  }

  return result;
}

unint64_t sub_2146841B0()
{
  result = qword_27C917AC0;
  if (!qword_27C917AC0)
  {
    result = swift_getWitnessTable(byte_21477B790, &type metadata for SyndicationAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C917AC0);
  }

  return result;
}

unint64_t sub_214684208()
{
  result = qword_27C917AC8;
  if (!qword_27C917AC8)
  {
    result = swift_getWitnessTable(a9_16, &type metadata for SyndicationAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C917AC8);
  }

  return result;
}

unint64_t sub_214684260()
{
  result = qword_27C917AD0;
  if (!qword_27C917AD0)
  {
    result = swift_getWitnessTable(byte_21477B8B8, &type metadata for SyndicationAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C917AD0);
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2146842F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21468433C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146843D8()
{
  result = qword_27C917AD8;
  if (!qword_27C917AD8)
  {
    result = swift_getWitnessTable(aY_43, &type metadata for SyndicationAction.ItemType, v0, v1);
    atomic_store(result, &qword_27C917AD8);
  }

  return result;
}

unint64_t sub_214684434@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7994;
  v4[3] = 0;
  v4[4] = 100;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21405980C;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v5;
  *(inited + 40) = v6;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_214684580@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PriorityMessageCommand(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t type metadata accessor for PriorityMessageCommand(uint64_t a1)
{
  result = qword_280B2EEB0;
  if (!qword_280B2EEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21468462C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for PriorityMessageCommand(0) + 20));

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

void sub_214684694()
{
  if (*(v0 + *(type metadata accessor for PriorityMessageCommand(0) + 20) + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

void sub_214684748(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PriorityMessageCommand(0) + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2146847DC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PriorityMessageCommand(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214684898(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PriorityMessageCommand(0) + 20);
  v8 = a1;
  v4 = *v3;
  v7 = *(v3 + 24);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v4(&v8, &v7, v6))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2146849E0(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for PriorityMessageCommand(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214684A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PriorityMessageCommand(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

void sub_214684AF4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for PriorityMessageCommand(0) + 20);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void (*sub_214684B78(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for PriorityMessageCommand(0) + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_214684C24(uint64_t a1)
{
  *(a1 + 8) = sub_214684C8C(&qword_27C917AE0, aY_107);
  result = sub_214684C8C(&qword_27C917AE8, asc_2146FB9B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214684C8C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PriorityMessageCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v9 = sub_2146D8A38();
  v10 = [v8 initWithData_];

  (*(*v5 + 80))(a4, v10, a4, a5);
}

uint64_t sub_214684DD8(uint64_t result)
{
  if (result < 8)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214684EE8(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214684FF8(uint64_t result)
{
  if (result < 2)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214685108(uint64_t result)
{
  if (result < 4)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214685218@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  (*(a3 + 24))(&v12, a2, a3);
  v6 = v12;
  type metadata accessor for _BinaryDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = sub_214046008(v8);
  *(v7 + 32) = a1;
  *(v7 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = a1;
  v10 = a1;
  sub_21451EC18(inited, sub_214686110, a4);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_214685360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _BinaryDecoder();
  sub_2146861C8(qword_280B2F6E8, byte_21477BCA0);

  return sub_2146D9AF8();
}

uint64_t sub_214685444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _BinaryDecoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable(byte_21477BD38, v4);
  return sub_2146DA268();
}

uint64_t sub_2146854CC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2146855A0@<X0>(unint64_t *a1@<X2>, const char *a2@<X3>, void *a3@<X8>)
{
  v7 = *v3;
  a3[3] = type metadata accessor for _BinaryDecoder();
  a3[4] = sub_2146861C8(a1, a2);
  *a3 = v7;
}

void sub_214685610()
{
  v1 = *(*v0 + 32);
  sub_214684DD8(8);
}

void sub_2146856D8()
{
  v1 = *(*v0 + 32);
  sub_214684FF8(2);
}

void sub_214685744()
{
  v1 = *(*v0 + 32);
  sub_214685108(4);
}

uint64_t sub_214685990@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = type metadata accessor for _BinaryDecoder();
  a2[4] = a1;
  *a2 = v5;
}

uint64_t sub_2146859E0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _BinaryDecoder();
  a1[4] = sub_2146861C8(qword_280B2F6E8, byte_21477BCA0);
  *a1 = v3;
}

uint64_t sub_214685AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for _BinaryDecoder();
  a2[4] = sub_2146861C8(qword_280B2F6E8, byte_21477BCA0);
  *a2 = a1;
}

uint64_t sub_214685B1C@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X4>, const char *a3@<X5>, void *a4@<X8>)
{
  a4[3] = type metadata accessor for _BinaryDecoder();
  a4[4] = sub_2146861C8(a2, a3);
  *a4 = a1;
}

uint64_t sub_214685BA0(uint64_t a1, uint64_t a2)
{
  sub_214685A50(MEMORY[0x277D839B0], a1, *v2, *(a2 + 16), MEMORY[0x277D839B0], *(a2 + 24), MEMORY[0x277D839D0]);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_214685BF8(uint64_t a1, uint64_t a2)
{
  result = sub_214685A50(MEMORY[0x277D837D0], a1, *v2, *(a2 + 16), MEMORY[0x277D837D0], *(a2 + 24), MEMORY[0x277D83808]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_214685C4C(uint64_t a1, uint64_t a2)
{
  sub_214685A50(MEMORY[0x277D839F8], a1, *v2, *(a2 + 16), MEMORY[0x277D839F8], *(a2 + 24), MEMORY[0x277D83A30]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_214685CA0(uint64_t a1, uint64_t a2)
{
  sub_214685A50(MEMORY[0x277D83A90], a1, *v2, *(a2 + 16), MEMORY[0x277D83A90], *(a2 + 24), MEMORY[0x277D83AC8]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_214685E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214685A50(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214685A50(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214685A50(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214685A50(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2146861C8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for _BinaryDecoder();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21468620C()
{
  result = qword_27C917AF8;
  if (!qword_27C917AF8)
  {
    result = swift_getWitnessTable(byte_214759810, &type metadata for StreamError, v0, v1);
    atomic_store(result, &qword_27C917AF8);
  }

  return result;
}

uint64_t sub_214686278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_214686368(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_2146863F0(uint64_t a1)
{
  v2 = sub_2146865A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468642C(uint64_t a1)
{
  v2 = sub_2146865A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214686468(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B00, &qword_21477BEC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2146865A0()
{
  result = qword_27C917B08;
  if (!qword_27C917B08)
  {
    result = swift_getWitnessTable(byte_21477C218, &type metadata for AnimatedImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B08);
  }

  return result;
}

uint64_t sub_2146865F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B10, &qword_21477BEC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214686760(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B00, &qword_21477BEC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21468691C()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_21468694C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2146869A4()
{
  v1 = 0x7A69536C65786970;
  if (*v0 != 1)
  {
    v1 = 0x7453657079547475;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_214686A0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214687508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214686A34(uint64_t a1)
{
  v2 = sub_214686CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214686A70(uint64_t a1)
{
  v2 = sub_214686CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214686AAC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B18, &unk_21477BED0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v13[0] = v1[4];
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214686CF4();

  sub_2146DAA28();
  v14 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
  sub_214687000(&qword_27C90A910, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
  sub_2146DA388();

  if (!v2)
  {
    v14 = v9;
    v15 = v10;
    v16 = 1;
    type metadata accessor for CGSize(0);
    sub_21464A290(&qword_280B2E368, MEMORY[0x277CBF288]);
    sub_2146DA388();
    LOBYTE(v14) = 2;
    sub_2146DA328();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214686CF4()
{
  result = qword_27C917B20;
  if (!qword_27C917B20)
  {
    result = swift_getWitnessTable(aA_53, &type metadata for AnimatedImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B20);
  }

  return result;
}

void sub_214686D48(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B28, &qword_21477BEE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214686CF4();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
    v16 = 0;
    sub_214687000(&qword_27C90A8F8, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    sub_2146DA1C8();
    v9 = v15[0];
    type metadata accessor for CGSize(0);
    v16 = 1;
    sub_21464A290(&qword_280B30B88, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    v10 = v15[0];
    v11 = v15[1];
    LOBYTE(v15[0]) = 2;
    v12 = sub_2146DA168();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_214687000(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90A8F0, &qword_2146F5FD8);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21468709C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_2146870B8()
{
  result = qword_27C917B30;
  if (!qword_27C917B30)
  {
    result = swift_getWitnessTable(asc_21477BEE8, &type metadata for AnimatedImageMetadata.Constraints, v0, v1);
    atomic_store(result, &qword_27C917B30);
  }

  return result;
}

unint64_t sub_214687110()
{
  result = qword_27C917B38;
  if (!qword_27C917B38)
  {
    result = swift_getWitnessTable(byte_21477BF10, &type metadata for AnimatedImageMetadata.Constraints, v0, v1);
    atomic_store(result, &qword_27C917B38);
  }

  return result;
}

unint64_t sub_214687164(uint64_t a1)
{
  result = sub_21468718C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21468718C()
{
  result = qword_27C917B40;
  if (!qword_27C917B40)
  {
    result = swift_getWitnessTable(byte_21477BF64, &type metadata for AnimatedImageMetadata, v0, v1);
    atomic_store(result, &qword_27C917B40);
  }

  return result;
}

unint64_t sub_2146871E0(uint64_t a1)
{
  *(a1 + 8) = sub_214687210();
  result = sub_214687264();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214687210()
{
  result = qword_27C917B48;
  if (!qword_27C917B48)
  {
    result = swift_getWitnessTable(byte_21477BF80, &type metadata for AnimatedImageMetadata, v0, v1);
    atomic_store(result, &qword_27C917B48);
  }

  return result;
}

unint64_t sub_214687264()
{
  result = qword_27C917B50;
  if (!qword_27C917B50)
  {
    result = swift_getWitnessTable(a1Mlm, &type metadata for AnimatedImageMetadata, v0, v1);
    atomic_store(result, &qword_27C917B50);
  }

  return result;
}

unint64_t sub_2146872FC()
{
  result = qword_27C917B58;
  if (!qword_27C917B58)
  {
    result = swift_getWitnessTable(byte_21477C0E8, &type metadata for AnimatedImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B58);
  }

  return result;
}

unint64_t sub_214687354()
{
  result = qword_27C917B60;
  if (!qword_27C917B60)
  {
    result = swift_getWitnessTable(aM_133, &type metadata for AnimatedImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B60);
  }

  return result;
}

unint64_t sub_2146873AC()
{
  result = qword_27C917B68;
  if (!qword_27C917B68)
  {
    result = swift_getWitnessTable(byte_21477C110, &type metadata for AnimatedImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B68);
  }

  return result;
}

unint64_t sub_214687404()
{
  result = qword_27C917B70;
  if (!qword_27C917B70)
  {
    result = swift_getWitnessTable(byte_21477C138, &type metadata for AnimatedImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B70);
  }

  return result;
}

unint64_t sub_21468745C()
{
  result = qword_27C917B78;
  if (!qword_27C917B78)
  {
    result = swift_getWitnessTable(aI_54, &type metadata for AnimatedImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B78);
  }

  return result;
}

unint64_t sub_2146874B4()
{
  result = qword_27C917B80;
  if (!qword_27C917B80)
  {
    result = swift_getWitnessTable(aY_44, &type metadata for AnimatedImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917B80);
  }

  return result;
}

uint64_t sub_214687508(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69536C65786970 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214687634@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214687680(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146876DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214687728(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214687784@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146877D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21468782C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 168);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214687878(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 136) = *a1;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 168) = v5;
  return result;
}

uint64_t sub_2146878D4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214687950()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146879CC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 112);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214687A48()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 152);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214687AC4()
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v0 + 176) longitude:*(v0 + 184)];
  *&v29 = 0;
  v10 = [objc_opt_self() archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v29];
  v11 = v29;
  if (v10)
  {
    v26 = v9;
    v27 = v8;
    v12 = sub_2146D8A58();
    v14 = v13;

    v30 = MEMORY[0x277D839F8];
    *&v29 = v5;
    sub_213FDC730(&v29, v28);
    v15 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 1702125924, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    if (v1)
    {
      v17 = MEMORY[0x277D837D0];
      v30 = MEMORY[0x277D837D0];
      *&v29 = v2;
      *(&v29 + 1) = v1;
      sub_213FDC730(&v29, v28);

      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0x444965636E6566, 0xE700000000000000, v18);
      v30 = &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus;
      LOBYTE(v29) = v6;
      sub_213FDC730(&v29, v28);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0xD000000000000015, 0x800000021479B0F0, v19);
      v30 = MEMORY[0x277CC9318];
      *&v29 = v12;
      *(&v29 + 1) = v14;
      sub_213FDC730(&v29, v28);
      sub_21402D9F8(v12, v14);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0x6E6F697461636F6CLL, 0xE800000000000000, v20);
      v30 = &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus;
      LOBYTE(v29) = v6;
      sub_213FDC730(&v29, v28);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0x5372656767697274, 0xED00007375746174, v21);
      if (v4)
      {
        v30 = v17;
        *&v29 = v3;
        *(&v29 + 1) = v4;
        sub_213FDC730(&v29, v28);

        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v28, 1684632949, 0xE400000000000000, v22);
        if (v7)
        {
          v30 = v17;
          *&v29 = v27;
          *(&v29 + 1) = v7;
          sub_213FDC730(&v29, v28);

          v23 = swift_isUniquelyReferenced_nonNull_native();
          sub_2140524DC(v28, 118, 0xE100000000000000, v23);
          sub_213FB54FC(v12, v14);

          return v15;
        }
      }
    }

    v11 = sub_2146DA018();
    __break(1u);
  }

  v25 = v11;
  sub_2146D8838();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_214687EA4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 5;
  if (v4 < 5)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_214687F00()
{
  v1 = *v0;
  v2 = 28265;
  v3 = 0x7265746E65;
  v4 = 1953069157;
  if (v1 != 3)
  {
    v4 = 0x6D72657465646E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7632239;
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

uint64_t sub_214687F90()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21468805C(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214688114(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2146881E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_214688320(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_214688468(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214688504(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void sub_21468859C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
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

void (*sub_2146886E4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214688780(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

void sub_214688880(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    *a2 = *(a1 + 112);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2146888F0(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146889A0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 96);
  v8 = *(v2 + 128);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
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

void (*sub_214688AE8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 120);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 112);
    a1[1] = v3;

    return sub_214688B84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214688B84(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 96);
    v10 = *(v3 + 128);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 112) = v4;
      *(v3 + 120) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 96);
  v10 = *(v3 + 128);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 112) = v4;
  *(v3 + 120) = v2;
}

void sub_214688DA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v6;
  *(a2 + 120) = v5;
  *(a2 + 128) = v7;
}

void (*sub_214688E1C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214688EB4;
}

void sub_214688EB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
  }

  else
  {

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
  }

  free(v2);
}

void sub_214688F84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    *a2 = *(a1 + 152);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214688FF4(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146890A4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 136);
  v8 = *(v2 + 168);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
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

void (*sub_2146891EC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 160);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 152);
    a1[1] = v3;

    return sub_214689288;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214689288(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 136);
    v10 = *(v3 + 168);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 152) = v4;
      *(v3 + 160) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 136);
  v10 = *(v3 + 168);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 152) = v4;
  *(v3 + 160) = v2;
}

void sub_2146894A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
  *(a2 + 152) = v6;
  *(a2 + 160) = v5;
  *(a2 + 168) = v7;
}

void (*sub_214689520(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 144);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 168);
  *v4 = *(v1 + 136);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146895B8;
}

void sub_2146895B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 136) = v5;
    *(v3 + 144) = v4;
    *(v3 + 152) = v7;
    *(v3 + 160) = v6;
    *(v3 + 168) = v8;
  }

  else
  {

    *(v3 + 136) = v5;
    *(v3 + 144) = v4;
    *(v3 + 152) = v7;
    *(v3 + 160) = v6;
    *(v3 + 168) = v8;
  }

  free(v2);
}

uint64_t sub_2146896E8()
{
  sub_214687AC4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21468973C()
{
  sub_214687AC4();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_214689794()
{
  result = qword_27C917B88;
  if (!qword_27C917B88)
  {
    result = swift_getWitnessTable(aYMK, &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus, v0, v1);
    atomic_store(result, &qword_27C917B88);
  }

  return result;
}

unint64_t sub_2146897E8(uint64_t a1)
{
  *(a1 + 8) = sub_214320130();
  result = sub_21431F9F8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214689818(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_214689860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146898F0()
{
  result = qword_27C917B90;
  if (!qword_27C917B90)
  {
    result = swift_getWitnessTable(byte_21477C2D8, &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus, v0, v1);
    atomic_store(result, &qword_27C917B90);
  }

  return result;
}

void sub_214689944(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 domain];
  v9 = sub_2146D95B8();
  v11 = v10;

  MEMORY[0x2160545D0](v9, v11);

  *a4 = 0xD000000000000014;
  a4[1] = 0x800000021478AAD0;
  [a1 code];
  v12 = sub_2146DA428();
  v14 = v13;

  a4[2] = v12;
  a4[3] = v14;
  a4[4] = a2;
  a4[5] = a3;
}

void sub_214689A34(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v42 = a2;
  v5 = sub_2146D9F58();
  v44 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v14 = qword_280B35410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146EA710;
  v51 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  v17 = sub_2146D9618();
  v19 = v18;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_213FB2DA0();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  sub_2146D91D8(v13, &dword_213FAF000, v14, "BlastDoor contained an explosion with error: %@", 47, 2, v15);

  v47 = a1;
  v20 = a1;
  if (swift_dynamicCast())
  {

LABEL_7:
    v24 = v51;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    v29 = v55;
    v28 = v56;
    v30 = v47;
LABEL_8:

    goto LABEL_9;
  }

  v47 = a1;
  v21 = a1;
  if (swift_dynamicCast())
  {

    v22 = v44;
    (*(v44 + 32))(v10, v12, v5);
    v23 = v43;
    (*(v22 + 16))(v43, v10, v5);
    sub_21468A070(v23, &v51);

    (*(v22 + 8))(v10, v5);
    goto LABEL_7;
  }

  v47 = a1;
  v32 = a1;
  if (swift_dynamicCast())
  {

    v29 = v51;
    v28 = v52;
    v25 = 0x80000002147A6E60;

    v24 = 0xD000000000000022;
    v27 = 0xEC00000065756C61;
    v26 = 0x5664696C61766E69;
    goto LABEL_9;
  }

  v50 = a1;
  v33 = a1;
  if (swift_dynamicCast())
  {

    sub_21468A624(v47, v48, v49, 0, 0, &v51);

    v24 = v51;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    v29 = v55;
    v28 = v56;
    v30 = v50;
    goto LABEL_8;
  }

  v47 = a1;
  v34 = a1;
  sub_21404E35C();
  if (swift_dynamicCast())
  {
    v35 = v50;
    v36 = [v50 domain];
    v37 = sub_2146D95B8();
    v39 = v38;

    v51 = 0xD000000000000014;
    v52 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v37, v39);

    v24 = v51;
    v25 = v52;
    v51 = [v35 code];
    v26 = sub_2146DA428();
    v27 = v40;
  }

  else
  {

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2146D9EF8();

    v51 = 0xD000000000000014;
    v52 = 0x800000021478AAD0;
    swift_getErrorValue();
    swift_getDynamicType();
    v41 = sub_2146DAA78();
    MEMORY[0x2160545D0](v41);

    v24 = v51;
    v25 = v52;

    v27 = 0xEB00000000657079;
    v26 = 0x546E776F6E6B6E55;
  }

  v28 = v45;
  v29 = v42;
LABEL_9:
  v31 = v46;
  *v46 = v24;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  v31[4] = v29;
  v31[5] = v28;
}

uint64_t sub_214689FD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_214689FE0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21468A010()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21468A040()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21468A070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2146D9F48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2146D9F58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D84160])
  {
    (*(v9 + 96))(v11, v8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v5 + 32))(v7, v11 + *(v13 + 48), v4);
    v14 = sub_21468AE74();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = 0xEC00000068637461;
    v18 = 0x6D73694D65707974;
  }

  else if (v12 == *MEMORY[0x277D84170])
  {
    (*(v9 + 96))(v11, v8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v5 + 32))(v7, v11 + *(v19 + 48), v4);
    v14 = sub_21468AE74();
    v16 = v20;
    (*(v5 + 8))(v7, v4);
    v17 = 0xED0000646E756F46;
    v18 = 0x746F4E65756C6176;
  }

  else if (v12 == *MEMORY[0x277D84158])
  {
    (*(v9 + 96))(v11, v8);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    sub_213FB77C8(v11, v35);
    (*(v5 + 32))(v7, v11 + v21, v4);
    v31 = sub_21468AE74();
    v32 = a1;
    v23 = v22;
    v33 = 46;
    v34 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v24 = sub_2146DAA38();
    MEMORY[0x2160545D0](v24);

    v25 = v33;
    v26 = v34;
    v33 = v31;
    v34 = v23;

    v27 = v25;
    a1 = v32;
    MEMORY[0x2160545D0](v27, v26);

    v14 = v33;
    v16 = v34;
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v17 = 0xEB00000000646E75;
    v18 = 0x6F46746F4E79656BLL;
  }

  else if (v12 == *MEMORY[0x277D84168])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v14 = sub_21468AE74();
    v16 = v28;
    (*(v5 + 8))(v7, v4);
    v17 = 0xED00006465747075;
    v18 = 0x72726F4361746164;
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v17 = 0xEB00000000657079;
    v18 = 0x546E776F6E6B6E55;
    v16 = 0xEA00000000007965;
    v14 = 0x4B6E776F6E6B6E55;
  }

  result = (*(v9 + 8))(a1, v8);
  *a2 = 0xD000000000000021;
  a2[1] = 0x80000002147A6E90;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v14;
  a2[5] = v16;
  return result;
}

void sub_21468A5B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = 0xD000000000000022;
  *(a2 + 8) = 0x80000002147A6E60;
  strcpy((a2 + 16), "invalidValue");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
}

void sub_21468A624(uint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      v21 = 0xEA00000000006567;
      v20 = 0x616D497974706D65;
      goto LABEL_15;
    }

    sub_2146D9EF8();

    v22 = 0xD000000000000021;
    v23 = 0x80000002147A6F10;
    v16 = result;
    v17 = a2;
    if (!a2)
    {
      v16 = 0x6E776F6E6B6E55;
      sub_21468BE1C(result, 0, 2u);
      v17 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v16, v17);

    v13 = result;
    v14 = a2;
    v15 = 2;
  }

  else if (a3)
  {

    sub_2146D9EF8();

    v22 = 0xD00000000000001ALL;
    v23 = 0x80000002147A6F40;
    v18 = result;
    v19 = a2;
    if (!a2)
    {
      v18 = 0x6E776F6E6B6E55;
      sub_21468BE1C(result, 0, 1u);
      v19 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v18, v19);

    v13 = result;
    v14 = a2;
    v15 = 1;
  }

  else
  {

    sub_2146D9EF8();

    v22 = 0xD00000000000001ELL;
    v23 = 0x80000002147A6F60;
    v11 = result;
    v12 = a2;
    if (!a2)
    {
      v11 = 0x6E776F6E6B6E55;
      sub_21468BE1C(result, 0, 0);
      v12 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v11, v12);

    v13 = result;
    v14 = a2;
    v15 = 0;
  }

  sub_21468BE1C(v13, v14, v15);
  v20 = v22;
  v21 = v23;
LABEL_15:
  *a6 = 0xD000000000000022;
  a6[1] = 0x80000002147A6EE0;
  a6[2] = v20;
  a6[3] = v21;
  a6[4] = a4;
  a6[5] = a5;
}

uint64_t sub_21468A894()
{
  v1 = 0x707954726F727265;
  if (*v0 != 1)
  {
    v1 = 0x6874615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_21468A8F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21468BCAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21468A918(uint64_t a1)
{
  v2 = sub_21468AFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468A954(uint64_t a1)
{
  v2 = sub_21468AFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21468A990(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B98, &qword_21477C460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21468AFEC();
  sub_2146DAA28();
  v14 = 0;
  v9 = v11[5];
  sub_2146DA328();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_2146DA328();
  v12 = 2;
  sub_2146DA2B8();
  return (*(v4 + 8))(v6, v3);
}

void sub_21468AB54(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BA0, &qword_21477C468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21468AFEC();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v21 = v9;
    v23 = 1;
    v19 = sub_2146DA168();
    v20 = v12;
    v22 = 2;
    v13 = sub_2146DA0F8();
    v15 = v14;
    v16 = v13;
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v21;
    a2[1] = v11;
    a2[2] = v19;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_21468ADFC(uint64_t a1)
{
  v2 = sub_21468BDC8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21468AE38(uint64_t a1)
{
  v2 = sub_21468BDC8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21468AE74()
{
  v0 = sub_2146D9F38();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v1, 0);
    v2 = v13;
    v3 = v0 + 32;
    do
    {
      sub_214053840(v3, v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v4 = sub_2146DAA38();
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v12);
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_21409FD08((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v12[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v10 = sub_2146D9558();

  return v10;
}

unint64_t sub_21468AFEC()
{
  result = qword_280B2FEA0;
  if (!qword_280B2FEA0)
  {
    result = swift_getWitnessTable(byte_21477C650, &type metadata for Explosion.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FEA0);
  }

  return result;
}

uint64_t sub_21468B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2146D9F48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2146D9F58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 16);
  v36 = a3;
  v16(v15, a3, v12);
  v17 = (*(v13 + 88))(v15, v12);
  if (v17 == *MEMORY[0x277D84160])
  {
    (*(v13 + 96))(v15, v12);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v9 + 32))(v11, v15 + *(v18 + 48), v8);
    v19 = sub_21468B5EC(a1, a2);
    v21 = v20;

    (*(v9 + 8))(v11, v8);
    v22 = 0xEC00000068637461;
    v23 = 0x6D73694D65707974;
  }

  else if (v17 == *MEMORY[0x277D84170])
  {
    (*(v13 + 96))(v15, v12);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v9 + 32))(v11, v15 + *(v24 + 48), v8);
    v19 = sub_21468B5EC(a1, a2);
    v21 = v25;

    (*(v9 + 8))(v11, v8);
    v22 = 0xED0000646E756F46;
    v23 = 0x746F4E65756C6176;
  }

  else if (v17 == *MEMORY[0x277D84158])
  {
    (*(v13 + 96))(v15, v12);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    sub_213FB77C8(v15, &v39);
    (*(v9 + 32))(v11, v15 + v26, v8);
    v35 = sub_21468B5EC(a1, a2);
    v28 = v27;

    v37 = 46;
    v38 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v39, v41);
    v29 = sub_2146DAA38();
    MEMORY[0x2160545D0](v29);

    v30 = v37;
    v31 = v38;
    v37 = v35;
    v38 = v28;

    MEMORY[0x2160545D0](v30, v31);

    v19 = v37;
    v21 = v38;
    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(&v39);
    v22 = 0xEB00000000646E75;
    v23 = 0x6F46746F4E79656BLL;
  }

  else if (v17 == *MEMORY[0x277D84168])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    v19 = sub_21468B5EC(a1, a2);
    v21 = v32;

    (*(v9 + 8))(v11, v8);
    v22 = 0xED00006465747075;
    v23 = 0x72726F4361746164;
  }

  else
  {
    v39 = a1;
    v40 = a2;

    MEMORY[0x2160545D0](0x6E776F6E6B6E552ELL, 0xEB0000000079654BLL);

    v19 = v39;
    v21 = v40;
    (*(v13 + 8))(v15, v12);
    v22 = 0xEB00000000657079;
    v23 = 0x546E776F6E6B6E55;
  }

  result = (*(v13 + 8))(v36, v12);
  *a4 = 0xD000000000000021;
  a4[1] = 0x80000002147A6E90;
  a4[2] = v23;
  a4[3] = v22;
  a4[4] = v19;
  a4[5] = v21;
  return result;
}

uint64_t sub_21468B5EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146EA710;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = sub_2146D9F38();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v6, 0);
    v7 = v18;
    v8 = v5 + 32;
    do
    {
      sub_214053840(v8, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v9 = sub_2146DAA38();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21409FD08((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v17[0] = v4;
  sub_21468BA8C(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v15 = sub_2146D9558();

  return v15;
}

unint64_t sub_21468B7BC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v13 = *v0;

  MEMORY[0x2160545D0](45, 0xE100000000000000);
  MEMORY[0x2160545D0](v4, v3);
  v7 = v13;
  v8 = v1;
  if (v6)
  {
    MEMORY[0x2160545D0](v5, v6);
    MEMORY[0x2160545D0](45, 0xE100000000000000);

    v7 = v13;
    v8 = v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6F69736F6C707865;
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF6E69616D6F446ELL;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002147A6EC0;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v10;
  *(inited + 128) = 0x74654D726F727265;
  *(inited + 168) = v10;
  *(inited + 136) = 0xEB00000000636972;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  v11 = sub_2140457C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  swift_arrayDestroy();
  return v11;
}

void sub_21468B984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2140954FC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905260, &qword_2146F1958);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21468BA8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2140960E0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

unint64_t sub_21468BBA8()
{
  result = qword_27C917BA8;
  if (!qword_27C917BA8)
  {
    result = swift_getWitnessTable(byte_21477C628, &type metadata for Explosion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917BA8);
  }

  return result;
}

unint64_t sub_21468BC00()
{
  result = qword_280B2FE90;
  if (!qword_280B2FE90)
  {
    result = swift_getWitnessTable(asc_21477C598, &type metadata for Explosion.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FE90);
  }

  return result;
}

unint64_t sub_21468BC58()
{
  result = qword_280B2FE98;
  if (!qword_280B2FE98)
  {
    result = swift_getWitnessTable(byte_21477C5C0, &type metadata for Explosion.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FE98);
  }

  return result;
}

uint64_t sub_21468BCAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21468BDC8()
{
  result = qword_280B2E5A8[0];
  if (!qword_280B2E5A8[0])
  {
    result = swift_getWitnessTable(byte_21477C500, &type metadata for Explosion, v0, v1);
    atomic_store(result, qword_280B2E5A8);
  }

  return result;
}

double sub_21468BE1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_21468BE34@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21408E9E0;
  *(v19 + 24) = v17;
  v21 = inited;
  v20 = v25;
  *(inited + 32) = v19;
  return sub_2140433DC(v21, v20);
}

uint64_t sub_21468C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_21468C1F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

void sub_21468C24C()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

void sub_21468C2BC(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
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

uint64_t (*sub_21468C3F8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21468C490(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

unint64_t sub_21468C528(uint64_t a1)
{
  *(a1 + 8) = sub_214304B90();
  result = sub_214304D70();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21468C568(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C670(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C758(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C88C(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C9B0(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CAF8(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CC58(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CD88(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CDEC(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CEF0(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D00C(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D114(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D1F8(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D2FC(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D408(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D51C(uint64_t a1, unsigned __int8 a2)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D658(uint64_t a1, char a2)
{
  sub_2146DA958();
  sub_21405019C(*&a420v_1[8 * a2], 0xE400000000000000);
  sub_2146DA998();
  return sub_2146DA9B8();
}

double sub_21468D6B0(uint64_t a1, unsigned __int8 a2)
{
  sub_2146D9698();

  return result;
}

double sub_21468D7DC(uint64_t a1, unsigned __int8 a2)
{
  sub_2146D9698();

  return result;
}

double sub_21468D8FC(uint64_t a1, unsigned __int8 a2)
{
  sub_2146D9698();

  return result;
}

double sub_21468DA48(uint64_t a1, unsigned __int8 a2)
{
  sub_2146D9698();

  return result;
}

double sub_21468DBD8(uint64_t a1, unsigned __int8 a2)
{
  sub_2146D9698();

  return result;
}

unint64_t sub_21468DD28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214696AA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21468DD58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000644965;
  v4 = 0x636E657265666572;
  v5 = 0xE200000000000000;
  v6 = 25705;
  if (v2 != 6)
  {
    v6 = 0x4379616C70736964;
    v5 = 0xEE00746E65746E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1869768040;
  if (v2 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000214788230;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v2 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_21468DE50()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 1869768040;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21468DF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214696AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21468DF6C(uint64_t a1)
{
  v2 = sub_21469005C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468DFA8(uint64_t a1)
{
  v2 = sub_21469005C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAPayload.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v194 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v195 = (&v180 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BB0, &qword_21477C718);
  v196 = *(v7 - 8);
  v197 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v180 - v8;
  v10 = type metadata accessor for BIAPayload(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v180 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v180 - v17;
  v19 = a1[3];
  v243 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21469005C();
  v20 = v198;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v243);
  }

  v198 = v16;
  v191 = v18;
  v192 = v13;
  LOBYTE(v242[0]) = 7;
  v21 = v197;
  if ((sub_2146DA248() & 1) == 0)
  {
    memset(v242, 0, 272);
    v242[17] = 0x1FFFFFFFEuLL;
    *(&v242[18] + 8) = 0uLL;
    *(&v242[19] + 8) = 0uLL;
    *(&v242[20] + 8) = 0uLL;
    *(&v242[21] + 8) = 0uLL;
    *(&v242[22] + 8) = 0uLL;
    *(&v242[23] + 8) = 0uLL;
    *(&v242[24] + 8) = 0uLL;
    *(&v242[25] + 8) = 0uLL;
    *(&v242[26] + 8) = 0uLL;
    memset(v241, 0, 272);
    v241[17] = 0x1FFFFFFFEuLL;
    *(&v241[18] + 8) = 0uLL;
    *(&v241[19] + 8) = 0uLL;
    *(&v241[20] + 8) = 0uLL;
    *(&v241[21] + 8) = 0uLL;
    *(&v241[22] + 8) = 0uLL;
    *(&v241[23] + 8) = 0uLL;
    *(&v241[24] + 8) = 0uLL;
    *(&v241[25] + 8) = 0uLL;
    *(&v241[26] + 8) = 0uLL;
    LOBYTE(v240[0]) = 3;
    sub_2146DA0F8();
    if (v24)
    {
      v25 = sub_2146D89C8();
      v27 = v26;

      if (v27 >> 60 != 15)
      {
        sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
        sub_2146900B0(&v199);
        v219 = v207;
        v220 = v208;
        v221 = v209;
        v222 = v210;
        v215 = v203;
        v216 = v204;
        v217 = v205;
        v218 = v206;
        v211 = v199;
        v212 = v200;
        v213 = v201;
        v214 = v202;
        nullsub_1();
        *&v239[135] = v219;
        *&v239[151] = v220;
        *&v239[167] = v221;
        *&v239[183] = v222;
        *&v239[71] = v215;
        *&v239[87] = v216;
        *&v239[103] = v217;
        *&v239[119] = v218;
        *&v239[7] = v211;
        *&v239[23] = v212;
        *&v239[39] = v213;
        LOBYTE(v235) = 1;
        *&v239[55] = v214;
        LOWORD(v223) = 0;
        sub_2140615D0(&v223);
        *(&v240[24] + 8) = v232;
        *(&v240[25] + 8) = v233;
        *(&v240[26] + 8) = v234;
        *(&v240[20] + 8) = v228;
        *(&v240[21] + 8) = v229;
        *(&v240[22] + 8) = v230;
        *(&v240[23] + 8) = v231;
        *(&v240[16] + 8) = v224;
        *(&v240[17] + 8) = v225;
        *(&v240[18] + 8) = v226;
        *(&v240[19] + 8) = v227;
        *(&v240[15] + 8) = v223;
        memset(v240, 0, 248);
        sub_213FB2DF4(v240, &qword_27C904858, &qword_214736F00);
        *(&v240[12] + 1) = *&v239[144];
        *(&v240[13] + 1) = *&v239[160];
        *(&v240[14] + 1) = *&v239[176];
        *(&v240[8] + 1) = *&v239[80];
        *(&v240[9] + 1) = *&v239[96];
        *(&v240[10] + 1) = *&v239[112];
        *(&v240[11] + 1) = *&v239[128];
        *(&v240[4] + 1) = *&v239[16];
        *(&v240[5] + 1) = *&v239[32];
        *(&v240[6] + 1) = *&v239[48];
        *(&v240[7] + 1) = *&v239[64];
        *&v240[0] = v25;
        *(&v240[0] + 1) = v27;
        *(&v240[1] + 1) = MEMORY[0x277CC9318];
        *&v240[2] = &protocol witness table for Data;
        *(&v240[2] + 1) = 0;
        LOBYTE(v240[3]) = v235;
        *&v240[15] = *&v239[191];
        *(&v240[3] + 1) = *v239;
        memcpy(v242, v240, 0x1B8uLL);
      }
    }

    LOBYTE(v240[0]) = 4;
    sub_2146DA0F8();
    if (v28)
    {
      v29 = sub_2146D89C8();
      v31 = v30;

      if (v31 >> 60 != 15)
      {
        sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
        sub_2146900B0(&v199);
        v219 = v207;
        v220 = v208;
        v221 = v209;
        v222 = v210;
        v215 = v203;
        v216 = v204;
        v217 = v205;
        v218 = v206;
        v211 = v199;
        v212 = v200;
        v213 = v201;
        v214 = v202;
        nullsub_1();
        *&v239[135] = v219;
        *&v239[151] = v220;
        *&v239[167] = v221;
        *&v239[183] = v222;
        *&v239[71] = v215;
        *&v239[87] = v216;
        *&v239[103] = v217;
        *&v239[119] = v218;
        *&v239[7] = v211;
        *&v239[23] = v212;
        *&v239[39] = v213;
        LOBYTE(v235) = 1;
        *&v239[55] = v214;
        LOWORD(v223) = 0;
        sub_2140615D0(&v223);
        *(&v240[24] + 8) = v232;
        *(&v240[25] + 8) = v233;
        *(&v240[26] + 8) = v234;
        *(&v240[20] + 8) = v228;
        *(&v240[21] + 8) = v229;
        *(&v240[22] + 8) = v230;
        *(&v240[23] + 8) = v231;
        *(&v240[16] + 8) = v224;
        *(&v240[17] + 8) = v225;
        *(&v240[18] + 8) = v226;
        *(&v240[19] + 8) = v227;
        *(&v240[15] + 8) = v223;
        memset(v240, 0, 248);
        sub_213FB2DF4(v240, &qword_27C904858, &qword_214736F00);
        *(&v240[12] + 1) = *&v239[144];
        *(&v240[13] + 1) = *&v239[160];
        *(&v240[14] + 1) = *&v239[176];
        *(&v240[8] + 1) = *&v239[80];
        *(&v240[9] + 1) = *&v239[96];
        *(&v240[10] + 1) = *&v239[112];
        *(&v240[11] + 1) = *&v239[128];
        *(&v240[4] + 1) = *&v239[16];
        *(&v240[5] + 1) = *&v239[32];
        *(&v240[6] + 1) = *&v239[48];
        *(&v240[7] + 1) = *&v239[64];
        *&v240[0] = v29;
        *(&v240[0] + 1) = v31;
        *(&v240[1] + 1) = MEMORY[0x277CC9318];
        *&v240[2] = &protocol witness table for Data;
        *(&v240[2] + 1) = 0;
        LOBYTE(v240[3]) = v235;
        *&v240[15] = *&v239[191];
        *(&v240[3] + 1) = *v239;
        memcpy(v241, v240, 0x1B8uLL);
      }
    }

    LOBYTE(v240[0]) = 0;
    v52 = sub_2146DA0F8();
    v54 = v53;
    sub_213FB2E54(v242, v240, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v241, v239, &qword_27C907C00, &unk_2146F4D60);
    LOBYTE(v223) = 1;
    v195 = sub_2146DA0F8();
    v198 = v69;
    LOBYTE(v223) = 2;
    *&v188 = sub_2146DA0F8();
    *(&v188 + 1) = v81;
    type metadata accessor for BIAUserInteractionParadigm(0);
    v238 = 5;
    sub_2146960E0(&qword_27C917BC0, type metadata accessor for BIAUserInteractionParadigm, asc_21477C8A8);
    v82 = v194;
    sub_2146DA0C8();
    v190 = 0;
    v189 = v9;
    v88 = v192;
    sub_213FB2E54(v240, (v192 + 5), &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v239, (v88 + 60), &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v82, v88 + v10[9], &qword_27C907C08, &qword_21473BF00);
    sub_214409FCC(&v223);
    v186 = *(&v224 + 1);
    v187 = v224;
    LODWORD(v185) = v225;
    sub_21440A3C0(&v211);
    v183 = *(&v212 + 1);
    v184 = v212;
    LODWORD(v182) = v213;
    sub_21440A7B4(&v199);
    v89 = v200;
    LOBYTE(v82) = v201;
    sub_21440ABA8(&v235);
    *v88 = v223;
    v90 = v186;
    v88[2] = v187;
    v88[3] = v90;
    *(v88 + 32) = v185;
    *(v88 + 115) = v211;
    v91 = v183;
    v88[117] = v184;
    v88[118] = v91;
    *(v88 + 952) = v182;
    *(v88 + 60) = v199;
    *(v88 + 61) = v89;
    *(v88 + 992) = v82;
    v92 = v88 + v10[10];
    v93 = v236;
    *v92 = v235;
    LOBYTE(v91) = v237;
    *(v92 + 1) = v93;
    v181 = v92 + 16;
    v92[32] = v91;
    v94 = v88 + v10[11];
    *(v94 + 3) = 0u;
    *(v94 + 4) = 0u;
    *(v94 + 1) = 0u;
    *(v94 + 2) = 0u;
    *v94 = 0u;
    v94[80] = 0;
    v96 = *v88;
    v95 = v88[1];
    v97 = v88[2];
    v98 = v88[3];
    LODWORD(v94) = *(v88 + 32);
    *&v211 = v52;
    *(&v211 + 1) = v54;
    LODWORD(v185) = v94;
    LOBYTE(v199) = v94;
    *&v223 = 0xD000000000000016;
    v182 = 0x800000021478EEE0;
    *(&v223 + 1) = 0x800000021478EEE0;
    *&v224 = 0xD00000000000001CLL;
    v187 = 0x800000021478A360;
    *(&v224 + 1) = 0x800000021478A360;

    v183 = v98;
    v184 = v97;
    sub_213FDC9D0(v97, v98);
    v99 = v95;
    v100 = v190;
    v186 = v96;
    v101 = v96(&v211, &v199, &v223);
    v190 = v100;
    if (v100)
    {
    }

    else
    {
      v112 = v182;
      v180 = v92;
      if (v101)
      {
        sub_213FDC6D0(v184, v183);
        v113 = v187;

        v114 = v192;
        v115 = v192[2];
        v116 = v192[3];

        sub_213FDC6D0(v115, v116);
        *v114 = v186;
        v114[1] = v99;
        v114[2] = v52;
        v114[3] = v54;
        *(v114 + 32) = v185;
        v117 = v114[115];
        v118 = v114[116];
        v119 = v114[117];
        v120 = v114[118];
        v121 = *(v114 + 952);
        *&v211 = v195;
        *(&v211 + 1) = v198;
        LODWORD(v186) = v121;
        LOBYTE(v199) = v121;
        *&v223 = 0xD000000000000010;
        *(&v223 + 1) = 0x800000021478EF00;
        *&v224 = 0xD00000000000001CLL;
        *(&v224 + 1) = v113;

        sub_213FDC9D0(v119, v120);
        v122 = v190;
        v190 = v117;
        v123 = v117(&v211, &v199, &v223);
        if (v122)
        {
        }

        else
        {
          if (v123)
          {
            sub_213FDC6D0(v119, v120);
            v139 = v187;

            v140 = v192;
            v141 = v192[117];
            v142 = v192[118];

            sub_213FDC6D0(v141, v142);
            v140[115] = v190;
            v140[116] = v118;
            v140[117] = v195;
            v140[118] = v198;
            *(v140 + 952) = v186;
            v143 = v140[120];
            v144 = v140[121];
            v145 = v140[122];
            v146 = v140[123];
            v147 = *(v140 + 992);
            v211 = v188;
            LODWORD(v198) = v147;
            LOBYTE(v199) = v147;
            *&v223 = 0xD000000000000013;
            *(&v223 + 1) = 0x800000021478EF20;
            *&v224 = 0xD00000000000001CLL;
            *(&v224 + 1) = v139;

            sub_213FDC9D0(v145, v146);
            v195 = v143;
            v148 = (v143)(&v211, &v199, &v223);
            if (v148)
            {
              sub_213FDC6D0(v145, v146);
              v158 = v187;

              v159 = v192;
              v160 = v192[122];
              v161 = v192[123];

              sub_213FDC6D0(v160, v161);
              v159[120] = v195;
              v159[121] = v144;
              v162 = *(&v188 + 1);
              v159[122] = v188;
              v159[123] = v162;
              *(v159 + 992) = v198;
              v164 = *v180;
              v163 = *(v180 + 1);
              v165 = *(v180 + 2);
              v166 = *(v180 + 3);
              LODWORD(v162) = v180[32];
              v211 = 0uLL;
              LODWORD(v198) = v162;
              LOBYTE(v199) = v162;
              strcpy(&v223, "BIAPayload.id");
              HIWORD(v223) = -4864;
              *&v224 = 0xD00000000000001CLL;
              *(&v224 + 1) = v158;

              sub_213FDC9D0(v165, v166);
              v167 = v164(&v211, &v199, &v223);
              v190 = 0;
              if (v167)
              {
                sub_213FDC6D0(v165, v166);

                sub_213FB2DF4(v194, &qword_27C907C08, &qword_21473BF00);
                sub_213FB2DF4(v239, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v240, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
                (*(v196 + 8))(v189, v197);
                v171 = v180;
                v172 = *(v180 + 2);
                v173 = *(v180 + 3);

                sub_213FDC6D0(v172, v173);
                *v171 = v164;
                *(v171 + 1) = v163;
                v174 = v181;
                *v181 = 0;
                v174[1] = 0;
                v171[32] = v198;
                v138 = v192;
                goto LABEL_35;
              }

              sub_214031C4C();
              v175 = swift_allocError();
              strcpy(v176, "BIAPayload.id");
              *(v176 + 7) = -4864;
              *(v176 + 2) = 0xD00000000000001CLL;
              *(v176 + 3) = v187;
              v190 = v175;
              swift_willThrow();
              sub_213FB2DF4(v194, &qword_27C907C08, &qword_21473BF00);
              sub_213FB2DF4(v239, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v240, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
              (*(v196 + 8))(v189, v197);
              v177 = v180;
              v178 = *(v180 + 2);
              v179 = *(v180 + 3);

              sub_213FDC6D0(v178, v179);
              *v177 = v164;
              *(v177 + 1) = v163;
              *(v177 + 2) = v165;
              *(v177 + 3) = v166;
              v177[32] = v198;
              v130 = v192;
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v168 = 0xD000000000000013;
              v168[1] = 0x800000021478EF20;
              v168[2] = 0xD00000000000001CLL;
              v168[3] = v187;
              swift_willThrow();

              sub_213FB2DF4(v194, &qword_27C907C08, &qword_21473BF00);
              sub_213FB2DF4(v239, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v240, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
              (*(v196 + 8))(v189, v197);
              v130 = v192;
              v169 = v192[122];
              v170 = v192[123];

              sub_213FDC6D0(v169, v170);
              *(v130 + 960) = v195;
              *(v130 + 968) = v144;
              *(v130 + 976) = v145;
              *(v130 + 984) = v146;
              *(v130 + 992) = v198;
            }

LABEL_32:
            sub_214693C18(v130, type metadata accessor for BIAPayload);
            return __swift_destroy_boxed_opaque_existential_1(v243);
          }

          sub_214031C4C();
          swift_allocError();
          *v154 = 0xD000000000000010;
          v154[1] = 0x800000021478EF00;
          v155 = v187;
          v154[2] = 0xD00000000000001CLL;
          v154[3] = v155;
          swift_willThrow();
        }

        sub_213FB2DF4(v194, &qword_27C907C08, &qword_21473BF00);
        sub_213FB2DF4(v239, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v240, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
        (*(v196 + 8))(v189, v197);
        v130 = v192;
        v156 = v192[117];
        v157 = v192[118];

        sub_213FDC6D0(v156, v157);
        *(v130 + 920) = v190;
        *(v130 + 928) = v118;
        *(v130 + 936) = v119;
        *(v130 + 944) = v120;
        *(v130 + 952) = v186;
        goto LABEL_32;
      }

      sub_214031C4C();
      swift_allocError();
      *v129 = 0xD000000000000016;
      v129[1] = v112;
      v129[2] = 0xD00000000000001CLL;
      v129[3] = v187;
      swift_willThrow();
    }

    sub_213FB2DF4(v194, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v239, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v240, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
    (*(v196 + 8))(v189, v21);
    v130 = v192;
    v131 = v192[2];
    v132 = v192[3];

    sub_213FDC6D0(v131, v132);
    *v130 = v186;
    *(v130 + 8) = v95;
    v133 = v183;
    *(v130 + 16) = v184;
    *(v130 + 24) = v133;
    *(v130 + 32) = v185;
    goto LABEL_32;
  }

  memset(v242, 0, 272);
  v242[17] = 0x1FFFFFFFEuLL;
  *(&v242[18] + 8) = 0uLL;
  *(&v242[19] + 8) = 0uLL;
  *(&v242[20] + 8) = 0uLL;
  *(&v242[21] + 8) = 0uLL;
  *(&v242[22] + 8) = 0uLL;
  *(&v242[23] + 8) = 0uLL;
  *(&v242[24] + 8) = 0uLL;
  *(&v242[25] + 8) = 0uLL;
  *(&v242[26] + 8) = 0uLL;
  memset(v241, 0, 272);
  *&v241[17] = 0x1FFFFFFFELL;
  v22 = type metadata accessor for BIAUserInteractionParadigm(0);
  *(&v241[17] + 8) = 0u;
  *(&v241[18] + 8) = 0u;
  *(&v241[19] + 8) = 0u;
  *(&v241[20] + 8) = 0u;
  *(&v241[21] + 8) = 0u;
  *(&v241[22] + 8) = 0u;
  *(&v241[23] + 8) = 0u;
  *(&v241[24] + 8) = 0u;
  *(&v241[25] + 8) = 0u;
  *(&v241[26] + 8) = 0u;
  v23 = v195;
  (*(*(v22 - 8) + 56))(v195, 1, 1, v22);
  LOBYTE(v240[0]) = 6;
  v192 = sub_2146DA0F8();
  v194 = v33;
  v238 = 7;
  sub_2146900F0();
  sub_2146DA0C8();
  v189 = v9;
  *&v239[32] = v240[2];
  *&v239[48] = v240[3];
  *&v239[64] = v240[4];
  v239[80] = v240[5];
  *v239 = v240[0];
  *&v239[16] = v240[1];
  v34 = v198;
  sub_213FB2E54(v242, (v198 + 40), &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v241, v34 + 480, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v23, v34 + v10[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v223);
  v35 = v224;
  DWORD2(v188) = v225;
  sub_21440A3C0(&v211);
  v187 = *(&v212 + 1);
  *&v188 = v212;
  LODWORD(v186) = v213;
  sub_21440A7B4(&v199);
  v36 = v200;
  v190 = 0;
  v37 = v201;
  sub_21440ABA8(&v235);
  v38 = v237;
  *v34 = v223;
  *(v34 + 16) = v35;
  *(v34 + 32) = BYTE8(v188);
  *(v34 + 920) = v211;
  v39 = v187;
  *(v34 + 936) = v188;
  *(v34 + 944) = v39;
  *(v34 + 952) = v186;
  *(v34 + 960) = v199;
  *(v34 + 976) = v36;
  *(v34 + 992) = v37;
  v40 = v34 + v10[10];
  v41 = v236;
  *v40 = v235;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  v42 = v34 + v10[11];
  v43 = *&v239[48];
  *(v42 + 32) = *&v239[32];
  *(v42 + 48) = v43;
  *(v42 + 64) = *&v239[64];
  *(v42 + 80) = v239[80];
  v44 = *&v239[16];
  *v42 = *v239;
  *(v42 + 16) = v44;
  v46 = *v34;
  v45 = *(v34 + 8);
  v47 = *(v34 + 16);
  v48 = *(v34 + 24);
  LODWORD(v42) = *(v34 + 32);
  v211 = 0uLL;
  DWORD2(v188) = v42;
  LOBYTE(v199) = v42;
  *&v223 = 0xD000000000000016;
  v186 = 0x800000021478EEE0;
  *(&v223 + 1) = 0x800000021478EEE0;
  *&v224 = 0xD00000000000001CLL;
  *(&v224 + 1) = 0x800000021478A360;

  v187 = v48;
  *&v188 = v47;
  sub_213FDC9D0(v47, v48);
  v49 = v190;
  v190 = v46;
  v50 = v46(&v211, &v199, &v223);
  if (v49)
  {

    v51 = v197;
LABEL_17:
    sub_213FB2DF4(v195, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
    (*(v196 + 8))(v189, v51);
    v66 = *(v34 + 16);
    v67 = *(v34 + 24);

    sub_213FDC6D0(v66, v67);
    *v34 = v190;
    *(v34 + 8) = v45;
    v68 = v187;
    *(v34 + 16) = v188;
    *(v34 + 24) = v68;
    *(v34 + 32) = BYTE8(v188);
LABEL_18:
    sub_214693C18(v34, type metadata accessor for BIAPayload);
    return __swift_destroy_boxed_opaque_existential_1(v243);
  }

  v184 = 0xD000000000000016;
  v185 = 0x800000021478A360;
  v55 = v186;
  v51 = v197;
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = v184;
    v65[1] = v55;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = v185;
    swift_willThrow();

    goto LABEL_17;
  }

  v184 = v40;
  sub_213FDC6D0(v188, v187);
  v56 = v185;

  v57 = *(v34 + 16);
  v58 = *(v34 + 24);

  sub_213FDC6D0(v57, v58);
  *v34 = v190;
  *(v34 + 8) = v45;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = BYTE8(v188);
  v59 = *(v34 + 920);
  v60 = *(v34 + 928);
  v61 = *(v34 + 936);
  v62 = *(v34 + 944);
  v63 = *(v34 + 952);
  v211 = 0uLL;
  LODWORD(v190) = v63;
  LOBYTE(v199) = v63;
  *&v223 = 0xD000000000000010;
  *(&v223 + 1) = 0x800000021478EF00;
  *&v224 = 0xD00000000000001CLL;
  *(&v224 + 1) = v56;

  *&v188 = v61;
  sub_213FDC9D0(v61, v62);
  *(&v188 + 1) = v59;
  v64 = v59(&v211, &v199, &v223);
  if ((v64 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v83 = 0xD000000000000010;
    v83[1] = 0x800000021478EF00;
    v84 = v185;
    v83[2] = 0xD00000000000001CLL;
    v83[3] = v84;
    swift_willThrow();

    sub_213FB2DF4(v195, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
    (*(v196 + 8))(v189, v197);
    v85 = *(v34 + 936);
    v86 = *(v34 + 944);

    sub_213FDC6D0(v85, v86);
    v87 = v188;
    *(v34 + 920) = *(&v188 + 1);
    *(v34 + 928) = v60;
    *(v34 + 936) = v87;
    *(v34 + 944) = v62;
    *(v34 + 952) = v190;
    goto LABEL_18;
  }

  sub_213FDC6D0(v188, v62);
  v70 = v185;

  v71 = *(v34 + 936);
  v72 = *(v34 + 944);

  sub_213FDC6D0(v71, v72);
  *(v34 + 920) = *(&v188 + 1);
  *(v34 + 928) = v60;
  *(v34 + 936) = 0;
  *(v34 + 944) = 0;
  *(v34 + 952) = v190;
  v73 = *(v34 + 960);
  v74 = *(v34 + 968);
  v75 = *(v34 + 976);
  v76 = *(v34 + 984);
  v77 = *(v34 + 992);
  v211 = 0uLL;
  LODWORD(v190) = v77;
  LOBYTE(v199) = v77;
  *&v223 = 0xD000000000000013;
  *(&v223 + 1) = 0x800000021478EF20;
  *&v224 = 0xD00000000000001CLL;
  *(&v224 + 1) = v70;

  *&v188 = v76;
  *(&v188 + 1) = v75;
  v78 = v76;
  v79 = v73;
  sub_213FDC9D0(v75, v78);
  v80 = v73(&v211, &v199, &v223);
  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v124 = 0xD000000000000013;
    v124[1] = 0x800000021478EF20;
    v125 = v185;
    v124[2] = 0xD00000000000001CLL;
    v124[3] = v125;
    swift_willThrow();

    sub_213FB2DF4(v195, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
    (*(v196 + 8))(v189, v197);
    v126 = *(v34 + 976);
    v127 = *(v34 + 984);

    sub_213FDC6D0(v126, v127);
    *(v34 + 960) = v79;
    *(v34 + 968) = v74;
    v128 = v188;
    *(v34 + 976) = *(&v188 + 1);
    *(v34 + 984) = v128;
    *(v34 + 992) = v190;
    goto LABEL_18;
  }

  sub_213FDC6D0(*(&v188 + 1), v188);
  v102 = v185;

  v103 = *(v34 + 976);
  v104 = *(v34 + 984);

  sub_213FDC6D0(v103, v104);
  *(v34 + 960) = v73;
  *(v34 + 968) = v74;
  *(v34 + 976) = 0;
  *(v34 + 984) = 0;
  *(v34 + 992) = v190;
  v106 = *v184;
  v105 = *(v184 + 8);
  v107 = *(v184 + 16);
  v108 = *(v184 + 24);
  v109 = *(v184 + 32);
  *&v211 = v192;
  *(&v211 + 1) = v194;
  DWORD2(v188) = v109;
  LOBYTE(v199) = v109;
  strcpy(&v223, "BIAPayload.id");
  HIWORD(v223) = -4864;
  *&v224 = 0xD00000000000001CLL;
  *(&v224 + 1) = v102;

  sub_213FDC9D0(v107, v108);
  v110 = v106;
  v111 = v106(&v211, &v199, &v223);
  v190 = 0;
  if ((v111 & 1) == 0)
  {
    sub_214031C4C();
    v149 = swift_allocError();
    strcpy(v150, "BIAPayload.id");
    *(v150 + 7) = -4864;
    *(v150 + 2) = 0xD00000000000001CLL;
    *(v150 + 3) = v185;
    v190 = v149;
    swift_willThrow();

    sub_213FB2DF4(v195, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
    (*(v196 + 8))(v189, v197);
    v151 = v184;
    v152 = *(v184 + 16);
    v153 = *(v184 + 24);

    sub_213FDC6D0(v152, v153);
    *v151 = v110;
    *(v151 + 8) = v105;
    *(v151 + 16) = v107;
    *(v151 + 24) = v108;
    *(v151 + 32) = BYTE8(v188);
    goto LABEL_18;
  }

  sub_213FDC6D0(v107, v108);

  sub_213FB2DF4(v195, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v241, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(v242, &qword_27C907C00, &unk_2146F4D60);
  (*(v196 + 8))(v189, v197);
  v134 = v184;
  v135 = *(v184 + 16);
  v136 = *(v184 + 24);

  sub_213FDC6D0(v135, v136);
  *v134 = v110;
  *(v134 + 8) = v105;
  v137 = v194;
  *(v134 + 16) = v192;
  *(v134 + 24) = v137;
  *(v134 + 32) = BYTE8(v188);
  v138 = v34;
LABEL_35:
  sub_214693C78(v138, v191, type metadata accessor for BIAPayload);
  sub_214693C78(v191, v193, type metadata accessor for BIAPayload);
  return __swift_destroy_boxed_opaque_existential_1(v243);
}

unint64_t sub_21469005C()
{
  result = qword_27C917BB8;
  if (!qword_27C917BB8)
  {
    result = swift_getWitnessTable(byte_21477D544, &_s19CodingConfigurationV10CodingKeysON_23, v0, v1);
    atomic_store(result, &qword_27C917BB8);
  }

  return result;
}

double sub_2146900B0(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x8000000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

unint64_t sub_2146900F0()
{
  result = qword_27C917BC8;
  if (!qword_27C917BC8)
  {
    result = swift_getWitnessTable(aI_55, &type metadata for BIAReplyDisplayContent, v0, v1);
    atomic_store(result, &qword_27C917BC8);
  }

  return result;
}

void BIAPayload.encode(to:configuration:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BD0, &unk_21477C720);
  v110 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for BIAPayload(0);
  v12 = v3 + *(v11 + 44);
  v13 = *(v12 + 3);
  v104 = *(v12 + 2);
  v105 = v13;
  v106 = *(v12 + 4);
  v107 = v12[80];
  v14 = *(v12 + 1);
  v103[0] = *v12;
  v103[1] = v14;
  v108[3] = v13;
  v108[4] = v106;
  v108[1] = v14;
  v108[2] = v104;
  v109 = v107;
  v108[0] = v103[0];
  if (*(&v103[0] + 1))
  {
    v15 = *(v12 + 3);
    v94[2] = *(v12 + 2);
    v94[3] = v15;
    v94[4] = *(v12 + 4);
    v95 = v12[80];
    v16 = *(v12 + 1);
    v94[0] = *v12;
    v94[1] = v16;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_214690B1C(v94, &v78);
    sub_21469005C();
    sub_2146DAA28();
    v17 = v3 + *(v11 + 40);
    v18 = *(v17 + 3);
    if (v18 != 1)
    {
      v19 = *(v17 + 2);
      LOBYTE(v78) = 6;

      sub_2146DA2B8();
      if (v2)
      {
        (*(v110 + 8))(v10, v5);
        sub_213FDC6D0(v19, v18);
      }

      else
      {
        sub_213FDC6D0(v19, v18);
        sub_214320DF0(v108, &v78);
        LOBYTE(v62) = 7;
        sub_214690B78();
        sub_2146DA2A8();
        (*(v110 + 8))(v10, v5);
      }

      sub_213FB2DF4(v103, &qword_27C907C40, &qword_2146F4D78);
      return;
    }

LABEL_34:
    sub_2146DA018();
    __break(1u);
    return;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469005C();
  sub_2146DAA28();
  v20 = v3[3];
  if (v20 == 1)
  {
    goto LABEL_34;
  }

  v21 = v3[2];
  LOBYTE(v94[0]) = 0;

  sub_2146DA2B8();
  if (v2)
  {
    (*(v110 + 8))(v8, v5);
    sub_213FDC6D0(v21, v20);
    return;
  }

  sub_213FDC6D0(v21, v20);
  v22 = v3[118];
  if (v22 == 1)
  {
    goto LABEL_34;
  }

  v23 = v3[117];
  LOBYTE(v94[0]) = 1;

  sub_2146DA2B8();
  sub_213FDC6D0(v23, v22);
  v24 = v3[123];
  if (v24 == 1)
  {
    goto LABEL_34;
  }

  v25 = v3[122];
  LOBYTE(v94[0]) = 2;

  sub_2146DA2B8();
  sub_213FDC6D0(v25, v24);
  sub_213FB2E54((v3 + 5), v94, &qword_27C907C00, &unk_2146F4D60);
  if (v96 >> 1 != 0xFFFFFFFF || (v98 | v97) > 1 || v100 & 0xFFFFFFFFFFFFFEFELL | v99 & 0xFFFFFFFFFFFF00FELL || (v102 | v101) >= 2)
  {
    sub_213FB2E54(v94, &v62, &qword_27C904858, &qword_214736F00);
    if (!*(&v63 + 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    v90 = v74;
    v91 = v75;
    v92 = v76;
    v93 = v77;
    v86 = v70;
    v87 = v71;
    v88 = v72;
    v89 = v73;
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v78 = v62;
    v79 = v63;
    v80 = v64;
    v81 = v65;
    sub_214690AC8(v94);
    LOWORD(v50) = 0;
    sub_2140615D0(&v50);
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v26 = sub_21463C734(&v38);
    v27 = v28;
    sub_21406D2CC(&v78);
  }

  else
  {
    sub_213FB2DF4(v94, &qword_27C907C00, &unk_2146F4D60);
    v26 = 0;
    v27 = 0xF000000000000000;
  }

  sub_213FB2E54((v3 + 60), v94, &qword_27C907C00, &unk_2146F4D60);
  if (v96 >> 1 != 0xFFFFFFFF || (v98 | v97) > 1 || v100 & 0xFFFFFFFFFFFFFEFELL | v99 & 0xFFFFFFFFFFFF00FELL || (v102 | v101) >= 2)
  {
    sub_213FB2E54(v94, &v62, &qword_27C904858, &qword_214736F00);
    if (*(&v63 + 1))
    {
      v90 = v74;
      v91 = v75;
      v92 = v76;
      v93 = v77;
      v86 = v70;
      v87 = v71;
      v88 = v72;
      v89 = v73;
      v82 = v66;
      v83 = v67;
      v84 = v68;
      v85 = v69;
      v78 = v62;
      v79 = v63;
      v80 = v64;
      v81 = v65;
      sub_214690AC8(v94);
      LOWORD(v50) = 0;
      sub_2140615D0(&v50);
      v46 = v58;
      v47 = v59;
      v48 = v60;
      v49 = v61;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v45 = v57;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v30 = sub_21463C734(&v38);
      v29 = v31;
      v36 = v30;
      sub_21406D2CC(&v78);
      goto LABEL_27;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_213FB2DF4(v94, &qword_27C907C00, &unk_2146F4D60);
  v36 = 0;
  v29 = 0xF000000000000000;
LABEL_27:
  v37 = v29;
  v35 = v26;
  if (v27 >> 60 != 15)
  {
    sub_21402D9F8(v26, v27);
    sub_2146D8A48();
    sub_213FDC6BC(v26, v27);
  }

  LOBYTE(v94[0]) = 3;
  sub_2146DA2B8();

  v32 = v37;
  if (v37 >> 60 != 15)
  {
    v33 = v36;
    sub_21402D9F8(v36, v37);
    sub_2146D8A48();
    sub_213FDC6BC(v33, v32);
  }

  LOBYTE(v94[0]) = 4;
  sub_2146DA2B8();

  LOBYTE(v94[0]) = 5;
  type metadata accessor for BIAUserInteractionParadigm(0);
  sub_2146960E0(&qword_27C917BD8, type metadata accessor for BIAUserInteractionParadigm, byte_21477C8D8);
  sub_2146DA298();
  (*(v110 + 8))(v8, v5);
  sub_213FDC6BC(v35, v27);
  sub_213FDC6BC(v36, v37);
}

unint64_t sub_214690B78()
{
  result = qword_27C917BE0;
  if (!qword_27C917BE0)
  {
    result = swift_getWitnessTable(aI_56, &type metadata for BIAReplyDisplayContent, v0, v1);
    atomic_store(result, &qword_27C917BE0);
  }

  return result;
}

void sub_214690C24(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_214690C7C(uint64_t a1)
{
  v2 = sub_214690EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214690CB8(uint64_t a1)
{
  v2 = sub_214690EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214690CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BE8, &qword_21477C730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214690EF4();
  sub_2146DAA08();
  if (!v2)
  {
    if (sub_2146DA248())
    {
      sub_214320D9C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v11[2] = v15;
      v11[3] = v16;
      v11[4] = v17;
      v12 = v18;
      v11[0] = v13;
      v11[1] = v14;
      sub_214320DF0(v11, a2);
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v9 = 3;
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214690EF4()
{
  result = qword_27C917BF0;
  if (!qword_27C917BF0)
  {
    result = swift_getWitnessTable(a5_44, &_s19CodingConfigurationV10CodingKeysON_22, v0, v1);
    atomic_store(result, &qword_27C917BF0);
  }

  return result;
}

unint64_t sub_214690F48()
{
  result = qword_27C917BF8;
  if (!qword_27C917BF8)
  {
    result = swift_getWitnessTable(byte_21473C3A4, &type metadata for BusinessMessageCodingError, v0, v1);
    atomic_store(result, &qword_27C917BF8);
  }

  return result;
}

uint64_t sub_214690F9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C00, &qword_21477C738);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v2;
  v9 = *(v2 + 3);
  v13 = *(v2 + 4);
  HIDWORD(v12) = v2[40];
  v10 = *(v2 + 8);
  v15 = *(v2 + 9);
  v16 = v10;
  v14 = v2[80];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214690EF4();
  sub_2146DAA28();
  v17[0] = v8;
  v18 = *(v2 + 8);
  v19 = v9;
  v20 = v13;
  v21 = BYTE4(v12);
  v22 = *(v2 + 3);
  v23 = v16;
  v24 = v15;
  v25 = v14;
  sub_214320CF4();
  sub_2146DA388();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214691170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214696B40(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2146911A0()
{
  v1 = 1701736302;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0x68437972616E6962;
  }

  if (*v0)
  {
    v1 = 0x656C676E6973;
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

unint64_t sub_214691218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214696B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214691240(uint64_t a1)
{
  v2 = sub_214691B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469127C(uint64_t a1)
{
  v2 = sub_214691B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146912B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v57 - v6;
  v64 = type metadata accessor for BIABinaryChoice(0);
  MEMORY[0x28223BE20](v64);
  v71 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v57 - v9;
  v70 = type metadata accessor for BIASingleAction(0);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C08, &unk_21477C750);
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v12 = &v57 - v11;
  v67 = type metadata accessor for BIAUserInteractionParadigm(0);
  v13 = MEMORY[0x28223BE20](v67);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214691B58();
  v24 = v73;
  sub_2146DAA08();
  if (v24)
  {
    goto LABEL_22;
  }

  v58 = v18;
  v73 = 0;
  v59 = v21;
  v25 = v69;
  v57 = v15;
  v60 = v23;
  v61 = a1;
  v26 = v68;
  v74 = 1;
  v28 = v71;
  v27 = v72;
  v29 = v12;
  if (sub_2146DA248())
  {
    v74 = 1;
    sub_2146960E0(&qword_27C917C28, type metadata accessor for BIASingleAction, asc_21477CA88);
    v30 = v73;
    sub_2146DA0D8();
    if (!v30)
    {
      v31 = v65;
      sub_213FB2E54(v25, v65, &qword_27C912F10, &qword_21473C4D0);
      v32 = type metadata accessor for BIAUserAction(0);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
      {
        sub_214693C18(v25, type metadata accessor for BIASingleAction);
        (*(v26 + 8))(v29, v27);
        v33 = v31;
        v34 = v59;
        sub_214693C78(v33, v59, type metadata accessor for BIAUserAction);
        swift_storeEnumTagMultiPayload();
        v35 = v34;
LABEL_16:
        v52 = v60;
        sub_214693C78(v35, v60, type metadata accessor for BIAUserInteractionParadigm);
LABEL_17:
        v53 = v61;
        sub_214693C78(v52, v66, type metadata accessor for BIAUserInteractionParadigm);
        v54 = v53;
        return __swift_destroy_boxed_opaque_existential_1(v54);
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v74 = 2;
  if ((sub_2146DA248() & 1) == 0)
  {
    v74 = 3;
    v41 = sub_2146DA248();
    v42 = v73;
    if (v41)
    {
      v74 = 3;
      sub_2146960E0(&qword_27C917C18, type metadata accessor for BIABinaryChoice, byte_21477CAE8);
      sub_2146DA0D8();
      if (!v42)
      {
        v43 = v62;
        sub_213FB2E54(v28, v62, &qword_27C912F30, &unk_21477C740);
        v44 = type metadata accessor for BIABinaryChoiceButton(0);
        v45 = *(v44 - 8);
        v46 = *(v45 + 48);
        v73 = (v45 + 48);
        if (v46(v43, 1, v44) != 1)
        {
          v47 = v57;
          sub_214693C78(v43, v57, type metadata accessor for BIABinaryChoiceButton);
          v48 = v28 + *(v64 + 20);
          v49 = v28;
          v50 = v63;
          sub_213FB2E54(v48, v63, &qword_27C912F30, &unk_21477C740);
          if (v46(v50, 1, v44) != 1)
          {
            v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
            sub_214693C18(v49, type metadata accessor for BIABinaryChoice);
            (*(v26 + 8))(v29, v27);
            sub_214693C78(v50, v47 + v51, type metadata accessor for BIABinaryChoiceButton);
            swift_storeEnumTagMultiPayload();
            v35 = v47;
            goto LABEL_16;
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      v74 = 0;
      if (sub_2146DA248())
      {
        (*(v26 + 8))(v12, v27);
        v52 = v60;
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      sub_214690F48();
      swift_allocError();
      *v55 = 3;
      swift_willThrow();
    }

    goto LABEL_21;
  }

  v78 = 2;
  sub_214691BAC();
  v36 = v73;
  sub_2146DA0D8();
  if (v36)
  {
LABEL_21:
    (*(v26 + 8))(v12, v27);
    a1 = v61;
LABEL_22:
    v54 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v37 = v76;
  if (v76)
  {
    v73 = v29;
    v38 = v77;
    v39 = v58;
    if (v77)
    {
      v40 = v75;

      (*(v26 + 8))(v73, v27);
      *v39 = v40;
      v39[1] = v37;
      v39[2] = v38;
      swift_storeEnumTagMultiPayload();
      v35 = v39;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_28:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214691B58()
{
  result = qword_27C917C10;
  if (!qword_27C917C10)
  {
    result = swift_getWitnessTable(byte_21477D4A4, &_s19CodingConfigurationV10CodingKeysON_21, v0, v1);
    atomic_store(result, &qword_27C917C10);
  }

  return result;
}

unint64_t sub_214691BAC()
{
  result = qword_27C917C20;
  if (!qword_27C917C20)
  {
    result = swift_getWitnessTable(byte_21477CA28, &type metadata for BIAUserOptions, v0, v1);
    atomic_store(result, &qword_27C917C20);
  }

  return result;
}

double sub_214691C00(void *a1)
{
  v45 = type metadata accessor for BIABinaryChoice(0);
  MEMORY[0x28223BE20](v45);
  v48 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BIABinaryChoiceButton(0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v39 - v6;
  v42 = type metadata accessor for BIASingleAction(0);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BIAUserAction(0);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BIAUserInteractionParadigm(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v39 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C30, &unk_21477C760);
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214691B58();
  v51 = v20;
  sub_2146DAA28();
  sub_21469239C(v49, v17, type metadata accessor for BIAUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
      v27 = v47;
      sub_214693C78(v17, v47, type metadata accessor for BIABinaryChoiceButton);
      v28 = v46;
      sub_214693C78(v17 + v26, v46, type metadata accessor for BIABinaryChoiceButton);
      v29 = v48;
      sub_21469239C(v27, v48, type metadata accessor for BIABinaryChoiceButton);
      v30 = v44;
      v31 = *(v43 + 56);
      v31(v29, 0, 1, v44);
      v32 = *(v45 + 20);
      sub_21469239C(v28, v29 + v32, type metadata accessor for BIABinaryChoiceButton);
      v31(v29 + v32, 0, 1, v30);
      LOBYTE(v54) = 3;
      sub_2146960E0(&qword_27C917C38, type metadata accessor for BIABinaryChoice, byte_21477CB18);
      v22 = v53;
      v23 = v51;
      sub_2146DA2A8();
      sub_214693C18(v29, type metadata accessor for BIABinaryChoice);
      sub_214693C18(v28, type metadata accessor for BIABinaryChoiceButton);
      v25 = v27;
      v24 = type metadata accessor for BIABinaryChoiceButton;
      goto LABEL_6;
    }

    swift_storeEnumTagMultiPayload();
    LOBYTE(v54) = 0;
    sub_2146960E0(&qword_27C907C78, type metadata accessor for BIAUserInteractionParadigm, byte_214702D08);
    v35 = v53;
    v36 = v51;
    sub_2146DA388();
    sub_214693C18(v15, type metadata accessor for BIAUserInteractionParadigm);
    (*(v52 + 8))(v36, v35);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214693C78(v17, v11, type metadata accessor for BIAUserAction);
      sub_21469239C(v11, v8, type metadata accessor for BIAUserAction);
      (*(v40 + 56))(v8, 0, 1, v41);
      LOBYTE(v54) = 1;
      sub_2146960E0(&qword_27C917C48, type metadata accessor for BIASingleAction, asc_21477CAB8);
      v22 = v53;
      v23 = v51;
      sub_2146DA2A8();
      sub_214693C18(v8, type metadata accessor for BIASingleAction);
      v24 = type metadata accessor for BIAUserAction;
      v25 = v11;
LABEL_6:
      sub_214693C18(v25, v24);
      (*(v52 + 8))(v23, v22);
      return result;
    }

    v34 = v50;
    sub_214175C98(*v17, v17[1], v17[2], &v54);
    if (v34)
    {
      (*(v52 + 8))(v51, v53);
    }

    else
    {
      v55 = 2;
      sub_214692348();
      v37 = v53;
      v38 = v51;
      sub_2146DA2A8();
      (*(v52 + 8))(v38, v37);
    }
  }

  return result;
}

unint64_t sub_214692348()
{
  result = qword_27C917C40;
  if (!qword_27C917C40)
  {
    result = swift_getWitnessTable(aI_57, &type metadata for BIAUserOptions, v0, v1);
    atomic_store(result, &qword_27C917C40);
  }

  return result;
}

uint64_t sub_21469239C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214692440()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_214692484(uint64_t a1)
{
  v2 = sub_214692AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146924C0(uint64_t a1)
{
  v2 = sub_214692AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAUserAction.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v42 - v4;
  v5 = sub_2146D8958();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C50, &qword_21477C770);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for BIAUserAction(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214692AD8();
  v21 = v53;
  sub_2146DAA08();
  if (v21)
  {
    goto LABEL_9;
  }

  v42 = v15;
  v43 = v18;
  v22 = v52;
  v44 = v20;
  v53 = a1;
  v23 = v50;
  v24 = v51;
  v25 = *(sub_2146DA238() + 16);

  if (!v25)
  {
    sub_214690F48();
    swift_allocError();
    v29 = 3;
    goto LABEL_7;
  }

  LOBYTE(v54) = 0;
  if ((sub_2146DA248() & 1) == 0)
  {
    LOBYTE(v54) = 1;
    v32 = (v23 + 8);
    if ((sub_2146DA248() & 1) == 0)
    {
      sub_214690F48();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      (*v32)(v11, v24);
      goto LABEL_8;
    }

    v62 = 1;
    sub_214320BF8();
    sub_2146DA1C8();
    (*v32)(v11, v24);
    v33 = v59;
    v34 = v42;
    *(v42 + 4) = v58;
    *(v34 + 5) = v33;
    *(v34 + 6) = v60;
    v34[112] = v61;
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    v36 = v57;
    *(v34 + 2) = v56;
    *(v34 + 3) = v36;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v40 = v34;
    v41 = v44;
    sub_214693C78(v40, v44, type metadata accessor for BIAUserAction);
    sub_214693C78(v41, v47, type metadata accessor for BIAUserAction);
    v30 = v53;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  LOBYTE(v54) = 0;
  sub_2146DA168();
  sub_2146D8928();

  v27 = v48;
  v26 = v49;
  if ((*(v48 + 48))(v22, 1, v49) != 1)
  {
    v38 = v46;
    (*(v27 + 32))(v46, v22, v26);
    v39 = v45;
    (*(v27 + 16))(v45, v38, v26);
    sub_21417140C(v39, v43);
    (*(v27 + 8))(v38, v26);
    (*(v23 + 8))(v11, v24);
    v34 = v43;
    goto LABEL_15;
  }

  sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
  sub_214690F48();
  swift_allocError();
  v29 = 2;
LABEL_7:
  *v28 = v29;
  swift_willThrow();
  (*(v23 + 8))(v11, v24);
LABEL_8:
  a1 = v53;
LABEL_9:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_214692AD8()
{
  result = qword_27C917C58;
  if (!qword_27C917C58)
  {
    result = swift_getWitnessTable(byte_21477D454, &_s19CodingConfigurationV10CodingKeysON_20, v0, v1);
    atomic_store(result, &qword_27C917C58);
  }

  return result;
}

uint64_t BIAUserAction.encode(to:configuration:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - v3;
  v32 = sub_2146D8958();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BIAURL(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C60, &unk_21477C778);
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214692AD8();
  sub_2146DAA28();
  sub_21469239C(v33, v10, type metadata accessor for BIAUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v10 + 5);
    v15 = *(v10 + 3);
    v48 = *(v10 + 4);
    v49 = v14;
    v16 = *(v10 + 5);
    v50 = *(v10 + 6);
    v17 = *(v10 + 1);
    v45[0] = *v10;
    v45[1] = v17;
    v18 = *(v10 + 3);
    v20 = *v10;
    v19 = *(v10 + 1);
    v46 = *(v10 + 2);
    v47 = v18;
    v41 = v48;
    v42 = v16;
    v43 = *(v10 + 6);
    v37 = v20;
    v38 = v19;
    v51 = v10[112];
    v44 = v10[112];
    v39 = v46;
    v40 = v15;
    v36 = 1;
    sub_214320B50();
    sub_2146DA388();
    (*(v34 + 8))(v13, v11);
    return sub_2142F8368(v45);
  }

  else
  {
    v22 = v11;
    sub_214693C78(v10, v7, type metadata accessor for BIAURL);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    v24 = v31;
    sub_213FB2E54(&v7[*(v23 + 28)], v31, &unk_27C9131A0, &unk_2146E9D10);
    v25 = v32;
    if ((*(v35 + 48))(v24, 1, v32) == 1)
    {
      sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v26 = v35;
      v27 = v30;
      (*(v35 + 32))(v30, v24, v25);
      sub_2146D8868();
      (*(v26 + 8))(v27, v25);
      LOBYTE(v45[0]) = 0;
      sub_2146DA328();
      v28 = v34;

      sub_214693C18(v7, type metadata accessor for BIAURL);
      return (*(v28 + 8))(v13, v22);
    }
  }

  return result;
}

uint64_t sub_214693040(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D614E6567616D69;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6D614E6567616D69;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6E6F69746361;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214693140()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2146931E0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21469326C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214693308@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214696AF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214693338(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6D614E6567616D69;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_214693394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214696AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2146933BC(uint64_t a1)
{
  v2 = sub_214693BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146933F8(uint64_t a1)
{
  v2 = sub_214693BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214693434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for BIALabeledUserAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C68, &qword_21477C788);
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214693BC4();
  v13 = v68;
  sub_2146DAA08();
  if (!v13)
  {
    v14 = v3;
    v68 = v8;
    v15 = v67;
    v65 = v5;
    LOBYTE(v72) = 0;
    v16 = v11;
    v18 = v9;
    v17 = sub_2146DA168();
    v20 = v19;
    v64 = v17;
    LOBYTE(v72) = 1;
    v21 = sub_2146DA168();
    v23 = v22;
    v62 = v21;
    LOBYTE(v72) = 2;
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
    v24 = v68;
    sub_2146DA0D8();
    v60 = v16;
    v61 = v23;
    v26 = v65;
    sub_21469239C(v24, &v65[*(v14 + 24)], type metadata accessor for BIAUserAction);
    sub_21440CDF0(&v72);
    v27 = v73;
    v63 = v72;
    v29 = v74;
    v28 = v75;
    LODWORD(v24) = v76;
    sub_21440D164(v70);
    v30 = v70[1];
    *(v26 + 40) = v70[0];
    v31 = v71;
    v32 = v63;
    *v26 = v63;
    *(v26 + 1) = v27;
    v55 = v29;
    *(v26 + 2) = v29;
    *(v26 + 3) = v28;
    v26[32] = v24;
    *(v26 + 56) = v30;
    v26[72] = v31;
    *&v70[0] = v64;
    *(&v70[0] + 1) = v20;
    v56 = v20;
    LODWORD(v59) = v24;
    v77 = v24;
    v33 = v32;
    v72 = 0xD00000000000001ALL;
    v73 = 0x800000021478F000;
    v74 = 0xD00000000000001CLL;
    v75 = 0x800000021478A360;
    v57 = v28;

    v58 = v27;
    v34 = v33(v70, &v77, &v72);
    v54 = 0x800000021478A360;
    v35 = v56;
    if (v34)
    {
      v36 = v54;

      v37 = v65;

      v38 = v58;
      *v37 = v63;
      *(v37 + 8) = v38;
      *(v37 + 16) = v64;
      *(v37 + 24) = v35;
      *(v37 + 32) = v59;
      v40 = *(v37 + 40);
      v39 = *(v37 + 48);
      v41 = *(v37 + 64);
      v58 = *(v37 + 56);
      v42 = *(v37 + 72);
      *&v70[0] = v62;
      *(&v70[0] + 1) = v61;
      LODWORD(v64) = v42;
      v77 = v42;
      v72 = 0xD00000000000001ELL;
      v73 = 0x800000021478F020;
      v74 = 0xD00000000000001CLL;
      v75 = v36;
      v59 = v41;

      v63 = v40;
      v43 = v40(v70, &v77, &v72);
      if (v43)
      {

        sub_214693C18(v68, type metadata accessor for BIAUserAction);
        (*(v15 + 8))(v60, v18);

        v49 = v62;
        *(v37 + 40) = v63;
        *(v37 + 48) = v39;
        v50 = v61;
        *(v37 + 56) = v49;
        *(v37 + 64) = v50;
        *(v37 + 72) = v64;
        sub_214693C78(v37, v66, type metadata accessor for BIALabeledUserAction);
        return __swift_destroy_boxed_opaque_existential_1(v69);
      }

      sub_214031C4C();
      swift_allocError();
      *v51 = 0xD00000000000001ELL;
      v51[1] = 0x800000021478F020;
      v52 = v54;
      v51[2] = 0xD00000000000001CLL;
      v51[3] = v52;
      swift_willThrow();

      sub_214693C18(v68, type metadata accessor for BIAUserAction);
      (*(v15 + 8))(v60, v18);
      v46 = v37;

      *(v37 + 40) = v63;
      *(v37 + 48) = v39;
      v53 = v59;
      *(v37 + 56) = v58;
      *(v37 + 64) = v53;
      *(v37 + 72) = v64;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v44 = 0xD00000000000001ALL;
      v44[1] = 0x800000021478F000;
      v45 = v54;
      v44[2] = 0xD00000000000001CLL;
      v44[3] = v45;
      swift_willThrow();

      sub_214693C18(v68, type metadata accessor for BIAUserAction);
      (*(v15 + 8))(v60, v18);
      v46 = v65;

      v47 = v58;
      *v46 = v63;
      *(v46 + 8) = v47;
      v48 = v57;
      *(v46 + 16) = v55;
      *(v46 + 24) = v48;
      *(v46 + 32) = v59;
    }

    sub_214693C18(v46, type metadata accessor for BIALabeledUserAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

unint64_t sub_214693BC4()
{
  result = qword_27C917C70;
  if (!qword_27C917C70)
  {
    result = swift_getWitnessTable(asc_21477D404, &_s19CodingConfigurationV10CodingKeysON_19, v0, v1);
    atomic_store(result, &qword_27C917C70);
  }

  return result;
}

uint64_t sub_214693C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214693C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_214693CE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C80, &unk_21477C790);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214693BC4();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v17 = 0;

    sub_2146DA2B8();
    if (v2)
    {
      (*(v9 + 8))(v11, v8);

      return;
    }

    if (*(v3 + 64))
    {
      v16 = 1;

      sub_2146DA2B8();

      v12 = type metadata accessor for BIALabeledUserAction(0);
      sub_21469239C(v3 + *(v12 + 24), v7, type metadata accessor for BIAUserAction);
      v13 = type metadata accessor for BIAUserAction(0);
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      v15 = 2;
      sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
      sub_2146DA298();
      sub_213FB2DF4(v7, &qword_27C912F10, &qword_21473C4D0);
      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  sub_2146DA018();
  __break(1u);
}

uint64_t sub_214694058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for BIABinaryChoiceButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D10, &unk_2146F4DD0);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F866C();
  v13 = v44;
  sub_2146DAA08();
  if (!v13)
  {
    v44 = v3;
    v14 = v8;
    v41 = v5;
    LOBYTE(v47) = 0;
    v15 = sub_2146DA168();
    v17 = v16;
    v18 = v15;
    LOBYTE(v47) = 1;
    sub_2142F86C0();
    sub_2146DA1C8();
    v40 = v18;
    LOBYTE(v18) = v52[1];
    LOBYTE(v47) = 2;
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
    sub_2146DA0D8();
    v39 = v9;
    v20 = v41;
    sub_21469239C(v14, &v41[*(v44 + 24)], type metadata accessor for BIAUserAction);
    sub_21440D608(&v47);
    v21 = v47;
    v22 = v48;
    v24 = v49;
    v23 = v50;
    v25 = v51;
    *v20 = v47;
    *(v20 + 1) = v22;
    v37 = v24;
    *(v20 + 2) = v24;
    *(v20 + 3) = v23;
    v20[32] = v25;
    v20[33] = v18;
    v26 = v17;
    v27 = v21;
    v46[0] = v40;
    v46[1] = v26;
    LODWORD(v44) = v25;
    v52[0] = v25;
    v47 = 0xD00000000000001BLL;
    v48 = 0x800000021478F040;
    v49 = 0xD00000000000001CLL;
    v50 = 0x800000021478A360;
    v38 = v23;

    v28 = v27(v46, v52, &v47);
    v36 = v26;
    v29 = v39;
    if (v28)
    {

      sub_214693C18(v14, type metadata accessor for BIAUserAction);
      (*(v43 + 8))(v11, v29);
      v30 = v41;

      *v30 = v27;
      *(v30 + 8) = v22;
      v31 = v36;
      *(v30 + 16) = v40;
      *(v30 + 24) = v31;
      *(v30 + 32) = v44;
      sub_214693C78(v30, v42, type metadata accessor for BIABinaryChoiceButton);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v32 = 0xD00000000000001BLL;
      v32[1] = 0x800000021478F040;
      v32[2] = 0xD00000000000001CLL;
      v32[3] = 0x800000021478A360;
      swift_willThrow();

      sub_214693C18(v14, type metadata accessor for BIAUserAction);
      (*(v43 + 8))(v11, v29);
      v33 = v41;

      *v33 = v27;
      *(v33 + 8) = v22;
      v34 = v38;
      *(v33 + 16) = v37;
      *(v33 + 24) = v34;
      *(v33 + 32) = v44;
      sub_214693C18(v33, type metadata accessor for BIABinaryChoiceButton);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

void sub_2146945A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D28, &qword_21477C7A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F866C();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v9[15] = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      v9[14] = *(v3 + 33);
      v9[13] = 1;
      sub_2142F8714();
      sub_2146DA388();
      type metadata accessor for BIABinaryChoiceButton(0);
      v9[12] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
      sub_2146DA2A8();
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_214694854(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F69746361;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F69746361;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2146948F8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214694978(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146949E4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214694A6C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x736E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214694AB4(uint64_t a1)
{
  v2 = sub_214694D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214694AF0(uint64_t a1)
{
  v2 = sub_214694D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214694B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C90, &unk_21477C7A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214694D8C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
    v16[15] = 1;
    sub_2146950C4(&qword_27C917CA0, &qword_27C917CA8, aI_123, MEMORY[0x277CC9C38]);
    sub_2146DA0D8();
    sub_214175C98(v9, v11, v20, v17);
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v19;
    v14 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214694D8C()
{
  result = qword_27C917C98;
  if (!qword_27C917C98)
  {
    result = swift_getWitnessTable(aU_104, &_s19CodingConfigurationV10CodingKeysON_18, v0, v1);
    atomic_store(result, &qword_27C917C98);
  }

  return result;
}

void sub_214694DE0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CB0, &qword_21477C7B8);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v7 = *(v1 + 24);
  v9 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214694D8C();
  sub_2146DAA28();
  if (v7)
  {
    v13 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v10 + 8))(v6, v4);
    }

    else
    {

      v11 = v9;
      v12 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
      sub_214695008();
      sub_2146DA2A8();
      (*(v10 + 8))(v6, v4);
    }
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

unint64_t sub_214695008()
{
  result = qword_27C917CB8;
  if (!qword_27C917CB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D48, &qword_21477C7C0);
    v4[0] = sub_2146950C4(&qword_27C917CC0, &qword_27C917CC8, asc_21477C998, MEMORY[0x277CC9C40]);
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C917CB8);
  }

  return result;
}

uint64_t sub_2146950C4(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D60, &qword_2146F4DF0);
    v10 = sub_2146960E0(a2, type metadata accessor for BIALabeledUserAction, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214695190()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2146951F4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_214695264(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_2146952BC(uint64_t a1)
{
  v2 = sub_214695574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146952F8(uint64_t a1)
{
  v2 = sub_214695574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214695334@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CD0, &qword_21477C7C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695574();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v15;
    v12 = type metadata accessor for BIAUserAction(0);
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
    sub_2146DA0D8();
    (*(v8 + 8))(v10, v7);
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    sub_21408AC04(v6, v11, &qword_27C912F10, &qword_21473C4D0);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214695574()
{
  result = qword_27C917CD8;
  if (!qword_27C917CD8)
  {
    result = swift_getWitnessTable(byte_21477D364, &_s19CodingConfigurationV10CodingKeysON_17, v0, v1);
    atomic_store(result, &qword_27C917CD8);
  }

  return result;
}

uint64_t sub_2146955C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CE0, &qword_21477C7D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695574();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  sub_21469571C();
  sub_2146DA2A8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21469571C()
{
  result = qword_27C917CE8;
  if (!qword_27C917CE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912F10, &qword_21473C4D0);
    v4[0] = sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C917CE8);
  }

  return result;
}

uint64_t sub_214695800(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x326E6F6974706FLL;
  }

  else
  {
    v2 = 0x316E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x326E6F6974706FLL;
  }

  else
  {
    v3 = 0x316E6F6974706FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_214695888()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214695900(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21469595C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2146959DC(uint64_t *a1@<X8>)
{
  v2 = 0x316E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x326E6F6974706FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

void sub_214695A20(char *a4@<X8>)
{
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_214695A80(uint64_t a1)
{
  v2 = sub_214695E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214695ABC(uint64_t a1)
{
  v2 = sub_214695E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214695AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CF0, &qword_21477C7D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695E38();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = v7;
    v25 = v10;
    v13 = type metadata accessor for BIABinaryChoiceButton(0);
    v29 = 0;
    sub_2146960E0(&qword_27C917D00, type metadata accessor for BIABinaryChoiceButton, byte_21477C9C8);
    v14 = v27;
    sub_2146DA0D8();
    v15 = *(v13 - 8);
    v16 = *(v15 + 56);
    v22 = v15 + 56;
    v23 = v16;
    v16(v14, 0, 1, v13);
    v28 = 1;
    v17 = v24;
    sub_2146DA0D8();
    (*(v25 + 8))(v12, v9);
    v23(v17, 0, 1, v13);
    v19 = v14;
    v20 = v26;
    sub_21408AC04(v19, v26, &qword_27C912F30, &unk_21477C740);
    v21 = type metadata accessor for BIABinaryChoice(0);
    sub_21408AC04(v17, v20 + *(v21 + 20), &qword_27C912F30, &unk_21477C740);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214695E38()
{
  result = qword_27C917CF8;
  if (!qword_27C917CF8)
  {
    result = swift_getWitnessTable(byte_21477D314, &_s19CodingConfigurationV10CodingKeysON_16, v0, v1);
    atomic_store(result, &qword_27C917CF8);
  }

  return result;
}

uint64_t sub_214695E8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917D08, &qword_21477C7E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695E38();
  sub_2146DAA28();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  sub_21469602C();
  sub_2146DA2A8();
  if (!v1)
  {
    type metadata accessor for BIABinaryChoice(0);
    v8[14] = 1;
    sub_2146DA2A8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21469602C()
{
  result = qword_27C917D10;
  if (!qword_27C917D10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912F30, &unk_21477C740);
    v4[0] = sub_2146960E0(&qword_27C917D18, type metadata accessor for BIABinaryChoiceButton, byte_21477C9F8);
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C917D10);
  }

  return result;
}

uint64_t sub_2146960E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21469626C()
{
  result = qword_27C917D20;
  if (!qword_27C917D20)
  {
    result = swift_getWitnessTable(aMMlc, &_s19CodingConfigurationV10CodingKeysON_23, v0, v1);
    atomic_store(result, &qword_27C917D20);
  }

  return result;
}

unint64_t sub_2146962C4()
{
  result = qword_27C917D28;
  if (!qword_27C917D28)
  {
    result = swift_getWitnessTable(aOmB, &_s19CodingConfigurationV10CodingKeysON_22, v0, v1);
    atomic_store(result, &qword_27C917D28);
  }

  return result;
}

unint64_t sub_21469631C()
{
  result = qword_27C917D30;
  if (!qword_27C917D30)
  {
    result = swift_getWitnessTable(byte_21477CE3C, &_s19CodingConfigurationV10CodingKeysON_21, v0, v1);
    atomic_store(result, &qword_27C917D30);
  }

  return result;
}

unint64_t sub_214696374()
{
  result = qword_27C917D38;
  if (!qword_27C917D38)
  {
    result = swift_getWitnessTable(byte_21477CF2C, &_s19CodingConfigurationV10CodingKeysON_20, v0, v1);
    atomic_store(result, &qword_27C917D38);
  }

  return result;
}

unint64_t sub_2146963CC()
{
  result = qword_27C917D40;
  if (!qword_27C917D40)
  {
    result = swift_getWitnessTable(byte_21477D01C, &_s19CodingConfigurationV10CodingKeysON_19, v0, v1);
    atomic_store(result, &qword_27C917D40);
  }

  return result;
}

unint64_t sub_214696424()
{
  result = qword_27C917D48;
  if (!qword_27C917D48)
  {
    result = swift_getWitnessTable(byte_21477D10C, &_s19CodingConfigurationV10CodingKeysON_18, v0, v1);
    atomic_store(result, &qword_27C917D48);
  }

  return result;
}

unint64_t sub_21469647C()
{
  result = qword_27C917D50;
  if (!qword_27C917D50)
  {
    result = swift_getWitnessTable(byte_21477D1FC, &_s19CodingConfigurationV10CodingKeysON_17, v0, v1);
    atomic_store(result, &qword_27C917D50);
  }

  return result;
}

unint64_t sub_2146964D4()
{
  result = qword_27C917D58;
  if (!qword_27C917D58)
  {
    result = swift_getWitnessTable(byte_21477D2EC, &_s19CodingConfigurationV10CodingKeysON_16, v0, v1);
    atomic_store(result, &qword_27C917D58);
  }

  return result;
}

unint64_t sub_21469652C()
{
  result = qword_27C917D60;
  if (!qword_27C917D60)
  {
    result = swift_getWitnessTable(aM_134, &_s19CodingConfigurationV10CodingKeysON_16, v0, v1);
    atomic_store(result, &qword_27C917D60);
  }

  return result;
}

unint64_t sub_214696584()
{
  result = qword_27C917D68;
  if (!qword_27C917D68)
  {
    result = swift_getWitnessTable(byte_21477D24C, &_s19CodingConfigurationV10CodingKeysON_16, v0, v1);
    atomic_store(result, &qword_27C917D68);
  }

  return result;
}

unint64_t sub_2146965DC()
{
  result = qword_27C917D70;
  if (!qword_27C917D70)
  {
    result = swift_getWitnessTable(aMM_3, &_s19CodingConfigurationV10CodingKeysON_17, v0, v1);
    atomic_store(result, &qword_27C917D70);
  }

  return result;
}

unint64_t sub_214696634()
{
  result = qword_27C917D78;
  if (!qword_27C917D78)
  {
    result = swift_getWitnessTable(aKm, &_s19CodingConfigurationV10CodingKeysON_17, v0, v1);
    atomic_store(result, &qword_27C917D78);
  }

  return result;
}

unint64_t sub_21469668C()
{
  result = qword_27C917D80;
  if (!qword_27C917D80)
  {
    result = swift_getWitnessTable(aM_135, &_s19CodingConfigurationV10CodingKeysON_18, v0, v1);
    atomic_store(result, &qword_27C917D80);
  }

  return result;
}

unint64_t sub_2146966E4()
{
  result = qword_27C917D88;
  if (!qword_27C917D88)
  {
    result = swift_getWitnessTable(aMM_4, &_s19CodingConfigurationV10CodingKeysON_18, v0, v1);
    atomic_store(result, &qword_27C917D88);
  }

  return result;
}

unint64_t sub_21469673C()
{
  result = qword_27C917D90;
  if (!qword_27C917D90)
  {
    result = swift_getWitnessTable(aM_136, &_s19CodingConfigurationV10CodingKeysON_19, v0, v1);
    atomic_store(result, &qword_27C917D90);
  }

  return result;
}

unint64_t sub_214696794()
{
  result = qword_27C917D98;
  if (!qword_27C917D98)
  {
    result = swift_getWitnessTable(aM_137, &_s19CodingConfigurationV10CodingKeysON_19, v0, v1);
    atomic_store(result, &qword_27C917D98);
  }

  return result;
}

unint64_t sub_2146967EC()
{
  result = qword_27C917DA0;
  if (!qword_27C917DA0)
  {
    result = swift_getWitnessTable(asc_21477CE64, &_s19CodingConfigurationV10CodingKeysON_20, v0, v1);
    atomic_store(result, &qword_27C917DA0);
  }

  return result;
}

unint64_t sub_214696844()
{
  result = qword_27C917DA8;
  if (!qword_27C917DA8)
  {
    result = swift_getWitnessTable(aMM_5, &_s19CodingConfigurationV10CodingKeysON_20, v0, v1);
    atomic_store(result, &qword_27C917DA8);
  }

  return result;
}

unint64_t sub_21469689C()
{
  result = qword_27C917DB0;
  if (!qword_27C917DB0)
  {
    result = swift_getWitnessTable(asc_21477CD74, &_s19CodingConfigurationV10CodingKeysON_21, v0, v1);
    atomic_store(result, &qword_27C917DB0);
  }

  return result;
}

unint64_t sub_2146968F4()
{
  result = qword_27C917DB8;
  if (!qword_27C917DB8)
  {
    result = swift_getWitnessTable(aM_138, &_s19CodingConfigurationV10CodingKeysON_21, v0, v1);
    atomic_store(result, &qword_27C917DB8);
  }

  return result;
}

unint64_t sub_21469694C()
{
  result = qword_27C917DC0;
  if (!qword_27C917DC0)
  {
    result = swift_getWitnessTable(byte_21477CC84, &_s19CodingConfigurationV10CodingKeysON_22, v0, v1);
    atomic_store(result, &qword_27C917DC0);
  }

  return result;
}

unint64_t sub_2146969A4()
{
  result = qword_27C917DC8;
  if (!qword_27C917DC8)
  {
    result = swift_getWitnessTable("-߫m", &_s19CodingConfigurationV10CodingKeysON_22, v0, v1);
    atomic_store(result, &qword_27C917DC8);
  }

  return result;
}

unint64_t sub_2146969FC()
{
  result = qword_27C917DD0;
  if (!qword_27C917DD0)
  {
    result = swift_getWitnessTable(asc_21477CB94, &_s19CodingConfigurationV10CodingKeysON_23, v0, v1);
    atomic_store(result, &qword_27C917DD0);
  }

  return result;
}

unint64_t sub_214696A54()
{
  result = qword_27C917DD8;
  if (!qword_27C917DD8)
  {
    result = swift_getWitnessTable(byte_21477CBBC, &_s19CodingConfigurationV10CodingKeysON_23, v0, v1);
    atomic_store(result, &qword_27C917DD8);
  }

  return result;
}

unint64_t sub_214696AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214696AF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214696B40(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214696B8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for BusinessMessage.RootObject(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917DE0, &qword_21477D5C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214696DE8();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v15;
    if (sub_2146DA248())
    {
      type metadata accessor for BIAPayload(0);
      sub_214698540(&qword_27C917DF0, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
      sub_2146DA0D8();
      (*(v8 + 8))(v10, v7);
      sub_2146980A0(v6, v11, type metadata accessor for BusinessMessage.RootObject);
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214696DE8()
{
  result = qword_27C917DE8;
  if (!qword_27C917DE8)
  {
    result = swift_getWitnessTable(byte_21477D8A0, &_s19CodingConfigurationV10CodingKeysON_25, v0, v1);
    atomic_store(result, &qword_27C917DE8);
  }

  return result;
}

uint64_t sub_214696E3C(void *a1)
{
  v2 = type metadata accessor for BIAPayload(0);
  MEMORY[0x28223BE20](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BusinessMessage.RootObject(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917DF8, &unk_21477D5C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214696DE8();
  sub_2146DAA28();
  sub_21440957C(v13[1], v7);
  sub_2146980A0(v7, v4, type metadata accessor for BIAPayload);
  sub_214698540(&qword_27C912E60, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
  sub_2146DA388();
  sub_214698040(v4, type metadata accessor for BIAPayload);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21469708C()
{
  sub_2146D8608();
  swift_allocObject();
  sub_2146D85F8();
  type metadata accessor for BusinessMessage(0);
  sub_214698540(&qword_27C917990, type metadata accessor for BusinessMessage, byte_21477D618);
  v0 = sub_2146D85D8();

  return v0;
}

uint64_t sub_21469714C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E6F6973726576;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6163696669746F6ELL;
  if (v3 == 1)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000214788420;
  }

  v8 = 0xE700000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6163696669746F6ELL;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000214788420;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214697258()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214697308(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146973A4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214697450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214698A24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214697480(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 0x6163696669746F6ELL;
    v3 = 0xEC0000006E6F6974;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x8000000214788420;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2146974EC()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_214697554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214698A24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21469757C(uint64_t a1)
{
  v2 = sub_214697F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146975B8(uint64_t a1)
{
  v2 = sub_214697F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146975F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v75 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v75);
  v78 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v63 - v5;
  v77 = type metadata accessor for BIAPayload(0);
  MEMORY[0x28223BE20](v77);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BusinessMessage.RootObject(0);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E00, &qword_21477D5D8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214697F14();
  v16 = v79;
  sub_2146DAA08();
  if (!v16)
  {
    v72 = 0;
    v70 = v8;
    v71 = v10;
    v79 = v12;
    v17 = v78;
    LOBYTE(v83) = 2;
    v18 = v14;
    if (sub_2146DA248())
    {
      LOBYTE(v83) = 2;
      sub_214698540(&qword_27C917DF0, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
      v19 = v72;
      sub_2146DA0D8();
      v20 = v79;
      if (v19)
      {
        (*(v79 + 8))(v18, v11);
      }

      else
      {
        v21 = v71;
        sub_2146980A0(v7, v71, type metadata accessor for BIAPayload);
        LOBYTE(v83) = 0;
        v22 = sub_2146DA0F8();
        v24 = v23;
        v25 = v22;
        LOBYTE(v83) = 1;
        v64 = sub_2146DA0F8();
        v72 = v28;
        v68 = v18;
        v69 = v11;
        v29 = v76;
        sub_21440957C(v21, v76);
        (*(v74 + 56))(v29, 0, 1, v70);
        sub_214697F68(v29, v17 + *(v75 + 24));
        sub_214406CE8(&v83);
        v74 = v25;
        v31 = v83;
        v30 = v84;
        v77 = v83;
        v32 = v86;
        v75 = v85;
        v33 = v87;
        sub_2144070DC(v81);
        v34 = v81[1];
        *(v17 + 40) = v81[0];
        v35 = v82;
        *v17 = v31;
        *(v17 + 8) = v30;
        v36 = v74;
        v37 = v75;
        *(v17 + 16) = v75;
        *(v17 + 24) = v32;
        *(v17 + 32) = v33;
        *(v17 + 56) = v34;
        *(v17 + 72) = v35;
        *&v81[0] = v36;
        *(&v81[0] + 1) = v24;
        v65 = v24;
        LODWORD(v70) = v33;
        v88 = v33;
        v83 = 0xD000000000000021;
        v84 = 0x800000021478F080;
        v85 = 0xD00000000000001CLL;
        v86 = 0x800000021478A360;

        v66 = v32;
        sub_213FDC9D0(v37, v32);
        v67 = v30;
        v38 = v77(v81, &v88, &v83);
        v39 = v65;
        if (v38)
        {
          sub_213FDC6D0(v75, v66);

          v40 = *(v17 + 16);
          v41 = *(v17 + 24);

          sub_213FDC6D0(v40, v41);
          v42 = v67;
          *v17 = v77;
          *(v17 + 8) = v42;
          *(v17 + 16) = v74;
          *(v17 + 24) = v39;
          *(v17 + 32) = v70;
          v44 = *(v17 + 40);
          v43 = *(v17 + 48);
          v45 = *(v17 + 56);
          v46 = *(v17 + 64);
          v47 = *(v17 + 72);
          *&v81[0] = v64;
          *(&v81[0] + 1) = v72;
          LODWORD(v75) = v47;
          v88 = v47;
          v83 = 0xD000000000000017;
          v84 = 0x800000021478F0B0;
          v85 = 0xD00000000000001CLL;
          v86 = 0x800000021478A360;

          v74 = v45;
          sub_213FDC9D0(v45, v46);
          v77 = v44;
          v48 = v44(v81, &v88, &v83);
          v54 = v79;
          if (v48)
          {
            sub_213FDC6D0(v74, v46);

            sub_214697FD8(v76);
            sub_214698040(v71, type metadata accessor for BusinessMessage.RootObject);
            (*(v54 + 8))(v68, v69);
            v55 = v17;
            v56 = *(v17 + 56);
            v57 = *(v17 + 64);

            sub_213FDC6D0(v56, v57);
            *(v55 + 40) = v77;
            *(v55 + 48) = v43;
            v59 = v72;
            v58 = v73;
            *(v55 + 56) = v64;
            *(v55 + 64) = v59;
            *(v55 + 72) = v75;
            sub_2146980A0(v55, v58, type metadata accessor for BusinessMessage);
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v60 = 0xD000000000000017;
            v60[1] = 0x800000021478F0B0;
            v60[2] = 0xD00000000000001CLL;
            v60[3] = 0x800000021478A360;
            swift_willThrow();

            sub_214697FD8(v76);
            sub_214698040(v71, type metadata accessor for BusinessMessage.RootObject);
            (*(v54 + 8))(v68, v69);
            v61 = *(v17 + 56);
            v62 = *(v17 + 64);

            sub_213FDC6D0(v61, v62);
            *(v17 + 40) = v77;
            *(v17 + 48) = v43;
            *(v17 + 56) = v74;
            *(v17 + 64) = v46;
            *(v17 + 72) = v75;
            sub_214698040(v17, type metadata accessor for BusinessMessage);
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v49 = 0xD000000000000021;
          v49[1] = 0x800000021478F080;
          v49[2] = 0xD00000000000001CLL;
          v49[3] = 0x800000021478A360;
          swift_willThrow();

          sub_214697FD8(v76);
          sub_214698040(v71, type metadata accessor for BusinessMessage.RootObject);
          (*(v20 + 8))(v68, v69);
          v50 = *(v17 + 16);
          v51 = *(v17 + 24);

          sub_213FDC6D0(v50, v51);
          v52 = v67;
          *v17 = v77;
          *(v17 + 8) = v52;
          v53 = v66;
          *(v17 + 16) = v75;
          *(v17 + 24) = v53;
          *(v17 + 32) = v70;
          sub_214698040(v17, type metadata accessor for BusinessMessage);
        }
      }
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v26 = 4;
      swift_willThrow();
      (*(v79 + 8))(v14, v11);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

unint64_t sub_214697F14()
{
  result = qword_27C917E08;
  if (!qword_27C917E08)
  {
    result = swift_getWitnessTable(byte_21477D850, &_s19CodingConfigurationV10CodingKeysON_24, v0, v1);
    atomic_store(result, &qword_27C917E08);
  }

  return result;
}

uint64_t sub_214697F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214697FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214698040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2146980A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214698108(void *a1)
{
  v3 = v1;
  v26 = type metadata accessor for BIAPayload(0);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v25 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E10, &qword_21477D5E0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214697F14();
  sub_2146DAA28();
  v15 = v3[3];
  if (v15 == 1)
  {
    goto LABEL_10;
  }

  v16 = v3[2];
  v31 = 0;

  sub_2146DA2B8();
  if (v2)
  {
    (*(v12 + 8))(v14, v11);
    return sub_213FDC6D0(v16, v15);
  }

  sub_213FDC6D0(v16, v15);
  v17 = v3[8];
  if (v17 == 1)
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = v3[7];
    v30 = 1;

    sub_2146DA2B8();
    sub_213FDC6D0(v18, v17);
    v20 = type metadata accessor for BusinessMessage(0);
    v21 = v28;
    sub_214697F68(v3 + *(v20 + 24), v28);
    v22 = type metadata accessor for BusinessMessage.RootObject(0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      sub_214690F48();
      swift_allocError();
      *v23 = 4;
      swift_willThrow();
    }

    else
    {
      sub_214697F68(v21, v9);
      v24 = v27;
      sub_2146980A0(v9, v27, type metadata accessor for BIAPayload);
      v29 = 2;
      sub_214698540(&qword_27C917E18, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
      sub_2146DA2A8();
      sub_214698040(v24, type metadata accessor for BIAPayload);
    }

    (*(v12 + 8))(v14, v11);
    return sub_214697FD8(v21);
  }

  return result;
}

uint64_t sub_214698540(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2146985F8()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214698674(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_2146986CC(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

void sub_214698720(uint64_t a1@<X8>)
{
  strcpy(a1, "notification");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_214698744(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_21469879C(uint64_t a1)
{
  v2 = sub_214696DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146987D8(uint64_t a1)
{
  v2 = sub_214696DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214698818()
{
  result = qword_27C917E20;
  if (!qword_27C917E20)
  {
    result = swift_getWitnessTable(byte_21477D738, &_s19CodingConfigurationV10CodingKeysON_25, v0, v1);
    atomic_store(result, &qword_27C917E20);
  }

  return result;
}

unint64_t sub_214698870()
{
  result = qword_27C917E28;
  if (!qword_27C917E28)
  {
    result = swift_getWitnessTable(byte_21477D828, &_s19CodingConfigurationV10CodingKeysON_24, v0, v1);
    atomic_store(result, &qword_27C917E28);
  }

  return result;
}

unint64_t sub_2146988C8()
{
  result = qword_27C917E30;
  if (!qword_27C917E30)
  {
    result = swift_getWitnessTable(aAM_2, &_s19CodingConfigurationV10CodingKeysON_24, v0, v1);
    atomic_store(result, &qword_27C917E30);
  }

  return result;
}

unint64_t sub_214698920()
{
  result = qword_27C917E38;
  if (!qword_27C917E38)
  {
    result = swift_getWitnessTable(aQM_1, &_s19CodingConfigurationV10CodingKeysON_24, v0, v1);
    atomic_store(result, &qword_27C917E38);
  }

  return result;
}

unint64_t sub_214698978()
{
  result = qword_27C917E40;
  if (!qword_27C917E40)
  {
    result = swift_getWitnessTable(a1M, &_s19CodingConfigurationV10CodingKeysON_25, v0, v1);
    atomic_store(result, &qword_27C917E40);
  }

  return result;
}

unint64_t sub_2146989D0()
{
  result = qword_27C917E48;
  if (!qword_27C917E48)
  {
    result = swift_getWitnessTable(aAim, &_s19CodingConfigurationV10CodingKeysON_25, v0, v1);
    atomic_store(result, &qword_27C917E48);
  }

  return result;
}

unint64_t sub_214698A24(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214698A70()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 32) = 1701080941;
  *(inited + 16) = xmmword_2146E68D0;
  v7 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  *(inited + 72) = v7;
  *(inited + 80) = 7107189;
  *(inited + 88) = 0xE300000000000000;
  if (v2 && (v8 = MEMORY[0x277D837D0], *(inited + 96) = v3, *(inited + 104) = v2, *(inited + 120) = v8, *(inited + 128) = 0x6574656D61726170, *(inited + 136) = 0xEA00000000007372, v4))
  {
    *(inited + 168) = v8;
    *(inited + 144) = v5;
    *(inited + 152) = v4;
    v9 = inited;

    v10 = sub_2140457C0(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    return v10;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214698BE4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *(v3 + 16) = sub_2143E18F8;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21405980C;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v3;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214698D98@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214698DE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214698E40()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214698EBC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_214699004(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146990A0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

unint64_t sub_214699138(uint64_t a1)
{
  *(a1 + 8) = sub_2142FDEC0();
  result = sub_2142FDF68();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214699178()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v6 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v6;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (!v3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *(inited + 112) = 0;
LABEL_6:
      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 120) = v9;
      v10 = inited;

      sub_213FDC9D0(v4, v3);
      v11 = sub_214045690(v10);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
      swift_arrayDestroy();
      v12 = sub_2140418B8(v11);

      return v12;
    }

    if (v3 != 1)
    {
      v9 = MEMORY[0x277D837D0];
      v7 = v4;
      v8 = v3;
      goto LABEL_6;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21469931C(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21469937C(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2146993E0(uint64_t a1)
{
  v2 = sub_2146998B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469941C(uint64_t a1)
{
  v2 = sub_2146998B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214699458@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E50, &qword_21477D970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146998B8();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v19 = 1;
    v12 = sub_2146DA0F8();
    sub_2140FCF38(v9, v11, v12, v13, v17);
    (*(v6 + 8))(v8, v5);
    v14 = v18[0];
    a2[2] = v17[2];
    a2[3] = v14;
    *(a2 + 57) = *(v18 + 9);
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_214699654(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E60, qword_21477D978);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = v1[3];
  v8 = v1[7];
  v10 = v1[8];
  v11 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146998B8();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_6;
  }

  LOBYTE(v13) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v12 + 8))(v6, v4);

    return;
  }

  if (v10 == 1)
  {
LABEL_6:
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    v13 = v11;
    v14 = v10;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    (*(v12 + 8))(v6, v4);
  }
}

unint64_t sub_2146998B8()
{
  result = qword_27C917E58;
  if (!qword_27C917E58)
  {
    result = swift_getWitnessTable(byte_21477DB10, &_s19CodingConfigurationV10CodingKeysON_26, v0, v1);
    atomic_store(result, &qword_27C917E58);
  }

  return result;
}

unint64_t sub_214699930()
{
  result = qword_27C917E68;
  if (!qword_27C917E68)
  {
    result = swift_getWitnessTable(byte_21477DAE8, &_s19CodingConfigurationV10CodingKeysON_26, v0, v1);
    atomic_store(result, &qword_27C917E68);
  }

  return result;
}

unint64_t sub_214699988()
{
  result = qword_27C917E70;
  if (!qword_27C917E70)
  {
    result = swift_getWitnessTable(byte_21477DA20, &_s19CodingConfigurationV10CodingKeysON_26, v0, v1);
    atomic_store(result, &qword_27C917E70);
  }

  return result;
}

unint64_t sub_2146999E0()
{
  result = qword_27C917E78;
  if (!qword_27C917E78)
  {
    result = swift_getWitnessTable(byte_21477DA48, &_s19CodingConfigurationV10CodingKeysON_26, v0, v1);
    atomic_store(result, &qword_27C917E78);
  }

  return result;
}

uint64_t sub_214699A58(uint64_t a1)
{
  v2 = sub_214699C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214699A94(uint64_t a1)
{
  v2 = sub_214699C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214699AD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E80, &qword_21477DB60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214699C64();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA368();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA348();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_214699C64()
{
  result = qword_27C917E88;
  if (!qword_27C917E88)
  {
    result = swift_getWitnessTable(byte_21477E150, &type metadata for WorkoutPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917E88);
  }

  return result;
}

uint64_t sub_214699CB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E90, &qword_21477DB68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214699C64();
  sub_2146DAA08();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_2146DA1A8();
    v13[14] = 1;
    sub_2146DA188();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214699E98@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010000uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699EB8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699F98@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699FA8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21469A10C()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_21469A13C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21469A1CC@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = v7;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = v8;
  return result;
}

unint64_t sub_21469A1EC()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6F646E497369;
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

uint64_t sub_21469A294@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21469B0B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21469A2BC(uint64_t a1)
{
  v2 = sub_21469A5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469A2F8(uint64_t a1)
{
  v2 = sub_21469A5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21469A334(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E98, &qword_21477DB70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = v8;
  v9 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v9;
  HIDWORD(v14) = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469A5E4();
  sub_2146DAA28();
  v25 = 0;
  sub_2146DA378();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v17;
  v12 = v5;
  v13 = BYTE4(v14);
  v24 = 1;
  sub_2146DA338();
  v23 = v11;
  v22 = 2;
  sub_21469A638();
  sub_2146DA388();
  v21 = 3;
  sub_2146DA328();
  v20 = v13;
  v19 = 4;
  sub_21469A68C();
  sub_2146DA388();
  return (*(v12 + 8))(v7, v4);
}

unint64_t sub_21469A5E4()
{
  result = qword_27C917EA0;
  if (!qword_27C917EA0)
  {
    result = swift_getWitnessTable(aIm0, &type metadata for WorkoutPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917EA0);
  }

  return result;
}

unint64_t sub_21469A638()
{
  result = qword_27C917EA8;
  if (!qword_27C917EA8)
  {
    result = swift_getWitnessTable(byte_21477DCC4, &type metadata for WorkoutPreview.ConfigurationType, v0, v1);
    atomic_store(result, &qword_27C917EA8);
  }

  return result;
}

unint64_t sub_21469A68C()
{
  result = qword_27C917EB0;
  if (!qword_27C917EB0)
  {
    result = swift_getWitnessTable(byte_21477DDE0, &type metadata for WorkoutPreview.GoalTypeIdentifier, v0, v1);
    atomic_store(result, &qword_27C917EB0);
  }

  return result;
}

void sub_21469A6E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917EB8, &qword_21477DB78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469A5E4();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_2146DA1B8();
    v25 = 1;
    v19 = sub_2146DA178();
    v23 = 2;
    sub_21469A990();
    sub_2146DA1C8();
    v10 = v24;
    v22 = 3;
    v11 = sub_2146DA168();
    HIDWORD(v16) = v10;
    v17 = v11;
    v18 = v12;
    v20 = 4;
    sub_21469A9E4();
    sub_2146DA1C8();
    v13 = v19 & 1;
    (*(v6 + 8))(v8, v5);
    v14 = v21;
    *a2 = v9;
    *(a2 + 8) = v13;
    *(a2 + 9) = BYTE4(v16);
    v15 = v18;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_21469A990()
{
  result = qword_27C917EC0;
  if (!qword_27C917EC0)
  {
    result = swift_getWitnessTable(aMumd4, &type metadata for WorkoutPreview.ConfigurationType, v0, v1);
    atomic_store(result, &qword_27C917EC0);
  }

  return result;
}

unint64_t sub_21469A9E4()
{
  result = qword_27C917EC8;
  if (!qword_27C917EC8)
  {
    result = swift_getWitnessTable(aQimd3, &type metadata for WorkoutPreview.GoalTypeIdentifier, v0, v1);
    atomic_store(result, &qword_27C917EC8);
  }

  return result;
}

uint64_t sub_21469AA68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

unint64_t sub_21469AA78()
{
  result = qword_27C917ED0;
  if (!qword_27C917ED0)
  {
    result = swift_getWitnessTable(byte_21477DBD0, &type metadata for WorkoutPreview.ConfigurationType, v0, v1);
    atomic_store(result, &qword_27C917ED0);
  }

  return result;
}

unint64_t sub_21469AAFC()
{
  result = qword_27C917ED8;
  if (!qword_27C917ED8)
  {
    result = swift_getWitnessTable(byte_21477DCEC, &type metadata for WorkoutPreview.GoalTypeIdentifier, v0, v1);
    atomic_store(result, &qword_27C917ED8);
  }

  return result;
}

unint64_t sub_21469AB80()
{
  result = qword_27C917EE0;
  if (!qword_27C917EE0)
  {
    result = swift_getWitnessTable(byte_21477DB80, &type metadata for WorkoutPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C917EE0);
  }

  return result;
}

unint64_t sub_21469ABD8()
{
  result = qword_27C917EE8;
  if (!qword_27C917EE8)
  {
    result = swift_getWitnessTable(a1_14, &type metadata for WorkoutPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C917EE8);
  }

  return result;
}

unint64_t sub_21469AC2C(uint64_t a1)
{
  result = sub_21469AC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21469AC54()
{
  result = qword_27C917EF0;
  if (!qword_27C917EF0)
  {
    result = swift_getWitnessTable(asc_21477DE34, &type metadata for WorkoutPreview, v0, v1);
    atomic_store(result, &qword_27C917EF0);
  }

  return result;
}

uint64_t sub_21469ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21469AD10()
{
  result = qword_27C917EF8;
  if (!qword_27C917EF8)
  {
    result = swift_getWitnessTable(byte_21477DE50, &type metadata for WorkoutPreview, v0, v1);
    atomic_store(result, &qword_27C917EF8);
  }

  return result;
}

unint64_t sub_21469AD64()
{
  result = qword_27C917F00;
  if (!qword_27C917F00)
  {
    result = swift_getWitnessTable(aA_54, &type metadata for WorkoutPreview, v0, v1);
    atomic_store(result, &qword_27C917F00);
  }

  return result;
}

uint64_t sub_21469ADB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21469AE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21469AEA8()
{
  result = qword_27C917F08;
  if (!qword_27C917F08)
  {
    result = swift_getWitnessTable(byte_21477E020, &type metadata for WorkoutPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F08);
  }

  return result;
}

unint64_t sub_21469AF00()
{
  result = qword_27C917F10;
  if (!qword_27C917F10)
  {
    result = swift_getWitnessTable(byte_21477E0D8, &type metadata for WorkoutPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F10);
  }

  return result;
}

unint64_t sub_21469AF58()
{
  result = qword_27C917F18;
  if (!qword_27C917F18)
  {
    result = swift_getWitnessTable(aYgm, &type metadata for WorkoutPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F18);
  }

  return result;
}

unint64_t sub_21469AFB0()
{
  result = qword_27C917F20;
  if (!qword_27C917F20)
  {
    result = swift_getWitnessTable(aIM_6, &type metadata for WorkoutPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F20);
  }

  return result;
}

unint64_t sub_21469B008()
{
  result = qword_27C917F28;
  if (!qword_27C917F28)
  {
    result = swift_getWitnessTable(byte_21477DF90, &type metadata for WorkoutPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F28);
  }

  return result;
}

unint64_t sub_21469B060()
{
  result = qword_27C917F30;
  if (!qword_27C917F30)
  {
    result = swift_getWitnessTable(aM_139, &type metadata for WorkoutPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917F30);
  }

  return result;
}

uint64_t sub_21469B0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147A3DD0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147A3DF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002147A3E10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21469B274()
{
  result = qword_27C917F38;
  if (!qword_27C917F38)
  {
    result = swift_getWitnessTable(aMim_0, &type metadata for WorkoutPreview.GoalTypeIdentifier, v0, v1);
    atomic_store(result, &qword_27C917F38);
  }

  return result;
}

unint64_t sub_21469B2C8()
{
  result = qword_27C917F40;
  if (!qword_27C917F40)
  {
    result = swift_getWitnessTable(aIum, &type metadata for WorkoutPreview.ConfigurationType, v0, v1);
    atomic_store(result, &qword_27C917F40);
  }

  return result;
}

uint64_t sub_21469B31C(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v5[7] = v1;
  v5[8] = v2;
  v5[3] = &type metadata for BlastdoorUnpacking;
  v5[4] = sub_214679A00();
  v3 = sub_2146D8BC8();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return (v3 ^ 1) & 1;
}

uint64_t sub_21469B388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_21439DF24;
  *(v1 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21439DF24;
  *(v2 + 24) = 0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21403281C;
  *(v3 + 24) = 0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = sub_21438EDCC;
  *(v4 + 24) = v5;
  *(v0 + 56) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v6 + 16) = sub_21439DF54;
  *(v6 + 24) = v7;
  result = swift_allocObject();
  *(result + 16) = sub_21469B514;
  *(result + 24) = v6;
  return result;
}

uint64_t sub_21469B544@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21469B59C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21469B604()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21469B68C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_21469B754(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

void (*sub_21469B7F4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

unint64_t sub_21469B894(uint64_t a1)
{
  *(a1 + 8) = sub_2143252B8();
  result = sub_21432506C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21469B8D4(uint64_t a1)
{
  *(a1 + 8) = sub_2142FFBF4();
  result = sub_2142FFDA4();
  *(a1 + 16) = result;
  return result;
}

double sub_21469B914(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v9 = *a2;
  v11 = *a3;
  v10 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  if (v9 != 2)
  {
    v4[*(a4 + 32)] = v9;
  }

  v14 = *v4;
  v23 = v4[*(a4 + 32)];
  v22[0] = v11;
  v22[1] = v10;
  v22[2] = v13;
  v22[3] = v12;
  v15 = v14(a1, &v23, v22);
  if (!v5)
  {
    if (v15)
    {
      v17 = *(a4 + 28);
      v18 = *(a4 + 16);
      v19 = sub_2146D9D38();
      (*(*(v19 - 8) + 8))(&v6[v17], v19);
      v20 = *(v18 - 8);
      (*(v20 + 16))(&v6[v17], a1, v18);
      (*(v20 + 56))(&v6[v17], 0, 1, v18);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = v11;
      v21[1] = v10;
      v21[2] = v13;
      v21[3] = v12;
      swift_willThrow();
    }
  }

  return result;
}

void sub_21469BAA8(uint64_t a1)
{
  sub_21469BB48();
  if (v1 <= 0x3F)
  {
    sub_2146D9D38();
    if (v2 <= 0x3F)
    {
      sub_2144F2708();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21469BB48()
{
  result = qword_280B2E318;
  if (!qword_280B2E318)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280B2E318);
  }

  return result;
}

unint64_t sub_21469BB98@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21477E330;
  *(v3 + 16) = sub_214032554;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_21404328C(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21477E330;
  *(v6 + 16) = sub_21447174C;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_21404328C(v5, a1 + 32);
}

uint64_t sub_21469BCE0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21469BD04(__n128 *a1)
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

uint64_t sub_21469BD5C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21469BD80(__n128 *a1)
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

uint64_t sub_21469BDD8()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469BE3C()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_21469BEA4(void *a1))(uint64_t *a1)
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
    return sub_2143D0368;
  }

  return result;
}

void (*sub_21469BF2C(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t (*sub_21469BFE8(void *a1))(uint64_t *a1)
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
    return sub_214519B08;
  }

  return result;
}

void (*sub_21469C070(uint64_t *a1))(uint64_t **a1, char a2)
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

unint64_t sub_21469C108(uint64_t a1)
{
  *(a1 + 8) = sub_214306FB8();
  result = sub_214307494();
  *(a1 + 16) = result;
  return result;
}

id sub_21469C148()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if (v2 != 2)
    {
      [v5 writeBOOL:v2 & 1 forTag:2];
    }

    if (v3 != 2)
    {
      [v5 writeBOOL:v3 & 1 forTag:3];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21469C2AC(uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277D43170]);
  v5 = sub_2146D8A38();
  v6 = [v4 initWithData_];

  v7 = [v6 position];
  if (v7 >= [v6 length])
  {
LABEL_55:
    v39 = 1;
LABEL_56:
    sub_2140861C4();
    swift_allocError();
    *v40 = v39;
    swift_willThrow();
  }

  else
  {
    v41 = a3;
    LODWORD(v8) = 0;
    LOBYTE(v42) = 2;
    v9 = 1;
    v10 = 2;
    do
    {
      if ([v6 hasError])
      {
        break;
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v43 = 0;
        v15 = [v6 position] + 1;
        if (v15 >= [v6 position] && (v16 = objc_msgSend(v6, "position") + 1, v16 <= objc_msgSend(v6, "length")))
        {
          v17 = [v6 data];
          [v17 getBytes:&v43 range:{objc_msgSend(v6, "position"), 1}];

          [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
        }

        else
        {
          [v6 _setError];
        }

        v14 |= (v43 & 0x7F) << v12;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v12 += 7;
        v18 = v13++ >= 9;
        if (v18)
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      if ([v6 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v14;
      }

LABEL_18:
      if ([v6 hasError])
      {
        v39 = 0;
        goto LABEL_56;
      }

      v20 = v19 >> 3;
      if ((v19 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v8 = 0;
        while (1)
        {
          v46 = 0;
          v35 = [v6 position] + 1;
          if (v35 >= [v6 position] && (v36 = objc_msgSend(v6, "position") + 1, v36 <= objc_msgSend(v6, "length")))
          {
            v37 = [v6 data];
            [v37 getBytes:&v46 range:{objc_msgSend(v6, "position"), 1}];

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v8 |= (v46 & 0x7F) << v33;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          if (v34++ > 8)
          {
            LODWORD(v8) = 0;
            v9 = 0;
            goto LABEL_4;
          }
        }

        v9 = 0;
        if ([v6 hasError])
        {
          LODWORD(v8) = 0;
        }
      }

      else if (v20 == 2)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v44 = 0;
          v30 = [v6 position] + 1;
          if (v30 >= [v6 position] && (v31 = objc_msgSend(v6, "position") + 1, v31 <= objc_msgSend(v6, "length")))
          {
            v32 = [v6 data];
            [v32 getBytes:&v44 range:{objc_msgSend(v6, "position"), 1}];

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v29 |= (v44 & 0x7F) << v27;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v18 = v28++ >= 9;
          if (v18)
          {
            LOBYTE(v42) = 0;
            goto LABEL_4;
          }
        }

        v42 = (v29 != 0) & ~[v6 hasError];
      }

      else if (v20 == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v45 = 0;
          v24 = [v6 position] + 1;
          if (v24 >= [v6 position] && (v25 = objc_msgSend(v6, "position") + 1, v25 <= objc_msgSend(v6, "length")))
          {
            v26 = [v6 data];
            [v26 getBytes:&v45 range:{objc_msgSend(v6, "position"), 1}];

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v23 |= (v45 & 0x7F) << v21;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v18 = v22++ >= 9;
          if (v18)
          {
            v10 = 0;
            goto LABEL_4;
          }
        }

        v10 = (v23 != 0) & ~[v6 hasError];
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v11 = [v6 position];
    }

    while (v11 < [v6 length]);
    if (v9)
    {
      goto LABEL_55;
    }

    *v41 = v8;
    *(v41 + 4) = v42;
    *(v41 + 5) = v10;
  }
}

unint64_t sub_21469C7DC(uint64_t a1)
{
  *(a1 + 8) = sub_214320718();
  result = sub_214320574();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WalletRemoteRegistrationRequestMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 6))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WalletRemoteRegistrationRequestMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21469C8C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21469C90C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21469C968()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21469C9E4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_21469CB2C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21469CBC8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

unint64_t sub_21469CC60(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE168();
  result = sub_2142FE240();
  *(a1 + 16) = result;
  return result;
}

uint64_t GroupContext.debugDescription.getter()
{
  v1 = 1162760014;
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  if (*(v0 + 112))
  {
    v8 = 0xE400000000000000;
    v19 = 1162760014;
    if ((*(v0 + 96) & 1) == 0)
    {
LABEL_3:
      v1 = sub_2146DA428();
      v10 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v19 = sub_2146DA428();
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0xE400000000000000;
LABEL_6:
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x6E6F4370756F7247, 0xEC00000074786574);
  MEMORY[0x2160545D0](0x70756F7267203A3ELL, 0xEC000000203A4449);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_18;
    }

    v12 = v4;
  }

  else
  {
    sub_213FDC6D0(v3, 0);
    v12 = 0xE400000000000000;
    v3 = 1280070990;
  }

  MEMORY[0x2160545D0](v3, v12);

  MEMORY[0x2160545D0](0xD000000000000015, 0x80000002147A6F80);
  if (v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = 1280070990;
  }

  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x2160545D0](v13, v14);

  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A6FA0);
  MEMORY[0x2160545D0](v1, v10);

  MEMORY[0x2160545D0](0xD000000000000018, 0x80000002147A6FC0);
  MEMORY[0x2160545D0](v19, v8);

  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A6FE0);
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2140610B4();
    v15 = sub_2146D9558();
    v17 = v16;

    MEMORY[0x2160545D0](v15, v17);

    return 0;
  }

LABEL_18:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21469CFCC@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282653FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282654050);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

uint64_t sub_21469D130@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

uint64_t type metadata accessor for CombinedPluginAttachmentInfo(uint64_t a1)
{
  result = qword_280B30140;
  if (!qword_280B30140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21469D1DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21469D248@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_21407E248(v5);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469D3C0()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469D5C8(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_21469D6F8(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21469D7E4(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void (*sub_21469DA00(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_214477F78;
}

uint64_t sub_21469DAB0()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 20);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21469DAF4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 20);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void sub_21469DB84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21469DC1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CombinedPluginAttachmentInfo(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21469DCE4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21469DE38(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21469DF80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21469E008(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

uint64_t sub_21469E0D8(uint64_t a1)
{
  result = type metadata accessor for CombinedPluginAttachmentInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21469E150()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 32);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21469E194(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo(0) + 32);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_21469E224(uint64_t a1)
{
  *(a1 + 8) = sub_21469E28C(&qword_27C90CF10, byte_2146F8D80);
  result = sub_21469E28C(&qword_27C90CEE0, a1_45);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21469E28C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CombinedPluginAttachmentInfo(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469E2F8(uint64_t a1)
{
  sub_2143A5654(319);
  if (v1 <= 0x3F)
  {
    sub_214426938(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21469E394(uint64_t a1)
{
  *(a1 + 8) = sub_21469E448(&qword_27C90C5D0, protocol conformance descriptor for MBDChipAction);
  result = sub_21469E448(&qword_27C90C5B0, protocol conformance descriptor for MBDChipAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChipAction(uint64_t a1)
{
  result = qword_27C917F48;
  if (!qword_27C917F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21469E448(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MBDChipAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469E4B4(uint64_t a1)
{
  sub_21469E538(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21469E538(uint64_t a1)
{
  if (!qword_27C917F58)
  {
    type metadata accessor for MBDActionContent(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C917F58);
    }
  }
}

unint64_t sub_21469E590@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t ReadReceipt.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadReceipt(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 ReadReceipt.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for ReadReceipt(0) + 24));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t ReadReceipt.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadReceipt(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

__n128 ReadReceipt.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for ReadReceipt(0) + 20));

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

void ReadReceipt.participantDestinationIdentifiers.getter()
{
  if (*(v0 + *(type metadata accessor for ReadReceipt(0) + 20) + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t ReadReceipt.groupID.getter()
{
  v1 = v0 + *(type metadata accessor for ReadReceipt(0) + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

void sub_21469E9A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReadReceipt(0) + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21469EA34(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ReadReceipt(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void ReadReceipt.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadReceipt(0) + 20);
  v8 = a1;
  v4 = *v3;
  v7 = *(v3 + 24);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v4(&v8, &v7, v6))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*ReadReceipt.participantDestinationIdentifiers.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ReadReceipt(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReadReceipt(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

void sub_21469ED4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for ReadReceipt(0) + 20);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void (*ReadReceipt.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ReadReceipt(0) + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

void sub_21469EE7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ReadReceipt(0) + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21469EF18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ReadReceipt(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void ReadReceipt.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ReadReceipt(0) + 24);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*ReadReceipt.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ReadReceipt(0) + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21469F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReadReceipt(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21469F28C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for ReadReceipt(0) + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*ReadReceipt.$groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ReadReceipt(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t ReadReceipt.groupName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReadReceipt(0) + 28));

  return v1;
}

void ReadReceipt.groupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReadReceipt(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ReadReceipt.originalMessageTimestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReadReceipt(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21469F55C(uint64_t a1)
{
  *(a1 + 8) = sub_21469F5C4(&qword_280B2FB30, protocol conformance descriptor for ReadReceipt);
  result = sub_21469F5C4(&qword_280B2FB38, protocol conformance descriptor for ReadReceipt);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21469F5C4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    Receipt = type metadata accessor for ReadReceipt(255);
    result = swift_getWitnessTable(a2, Receipt);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469F61C(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0);
    if (v2 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E320, MEMORY[0x277D84D38]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t *sub_21469F7B4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D60, &unk_21477E710);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-v6];
  v8 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(*v1 + 120))(&v24, v9);
  (*(*v1 + 144))(&v22, v12);
  BYTE1(v24) = v22;
  swift_beginAccess();
  sub_213FB2E54((v1 + 3), &v22, &unk_27C904F50, &unk_2146F08E0);
  v13 = v1[8];
  type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_21467B64C(&v24, &v22, v13);
  sub_214081EB0(a1, v11, type metadata accessor for UnpackResponseSessionFinishedMessage);
  sub_21469FFC4();
  LOBYTE(v22) = 0;
  sub_2146D8B88();
  sub_2146A2884(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v15 = v7;
  sub_2146DA388();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);

    sub_214081F18(v11, type metadata accessor for UnpackResponseSessionFinishedMessage);
  }

  else
  {
    LOBYTE(v22) = 1;
    sub_2146DA338();
    (*(v5 + 8))(v7, v4);
    v15 = *(v14 + 72);
    swift_unknownObjectRetain();
    sub_214081F18(v11, type metadata accessor for UnpackResponseSessionFinishedMessage);
    if (!v15)
    {
      v17 = sub_2146D9F78();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720);
      v19[3] = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
      sub_214081EB0(a1, boxed_opaque_existential_0, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v22 = 0;
      v23 = 0xE000000000000000;
      v15 = &v22;
      sub_2146D9EF8();

      v22 = 0x6576656C2D706F54;
      v23 = 0xEA0000000000206CLL;
      MEMORY[0x2160545D0](0xD000000000000024, 0x80000002147A70A0);
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D841A8], v17);
      swift_willThrow();
    }
  }

  return v15;
}

uint64_t *sub_21469FC34(uint64_t a1)
{
  v4 = type metadata accessor for EncoderErrorResponseMessage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(*v1 + 120))(&v23, v5);
  (*(*v1 + 144))(&v19, v8);
  BYTE1(v23) = v19;
  swift_beginAccess();
  sub_213FB2E54((v1 + 3), &v19, &unk_27C904F50, &unk_2146F08E0);
  v9 = v1[8];
  v10 = type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v11 = sub_21467B64C(&v23, &v19, v9);
  sub_214081EB0(a1, v7, type metadata accessor for EncoderErrorResponseMessage);
  v21 = v10;
  v22 = sub_2146A2884(qword_280B35370, type metadata accessor for _XPCEncoder, asc_21477A770);
  v19 = v11;

  v12 = v7;
  sub_214081228(&v19);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(&v19);
    sub_214081F18(v7, type metadata accessor for EncoderErrorResponseMessage);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v12 = *(v11 + 72);
    swift_unknownObjectRetain();
    sub_214081F18(v7, type metadata accessor for EncoderErrorResponseMessage);
    if (!v12)
    {
      v14 = sub_2146D9F78();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720);
      v16[3] = v4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
      sub_214081EB0(a1, boxed_opaque_existential_0, type metadata accessor for EncoderErrorResponseMessage);
      v19 = 0;
      v20 = 0xE000000000000000;
      v12 = &v19;
      sub_2146D9EF8();

      v19 = 0x6576656C2D706F54;
      v20 = 0xEA0000000000206CLL;
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A70D0);
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D841A8], v14);
      swift_willThrow();
    }
  }

  return v12;
}

uint64_t sub_21469FFC4()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_21408FD98() == 7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  *(v0 + 72) = xpc_dictionary_create(0, 0, 0);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  swift_getObjectType();
  swift_unknownObjectRetain();

  if (sub_21408FD98() == 7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F78, &qword_21477E728);
    sub_21432076C(&qword_27C917F80, &qword_27C917F78, &qword_21477E728, byte_21477A9C0);
    sub_2146DA408();

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t *sub_2146A01AC(uint64_t a1)
{
  v14 = *v1;
  v15 = a1;
  v2 = sub_2146D9C28();
  v12 = *(v2 - 8);
  v13 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D9C18();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2146D93D8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_214480EA8();
  v11[1] = "sessionCallbacks";
  v11[2] = v7;
  sub_2146D93C8();
  v16 = MEMORY[0x277D84F90];
  sub_2146A2884(&qword_280B34D60, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914338, &qword_21474BE38);
  v8 = MEMORY[0x277D83970];
  sub_21432076C(&qword_280B34CA0, &qword_27C914338, &qword_21474BE38, MEMORY[0x277D83970]);
  sub_2146D9E48();
  (*(v12 + 104))(v4, *MEMORY[0x277D85260], v13);
  v1[2] = sub_2146D9C58();
  v16 = v15;
  swift_getTupleTypeMetadata2();
  v9 = sub_2146D9978();
  swift_getWitnessTable(v8, v9);
  v1[3] = sub_2146D94A8();
  return v1;
}

uint64_t sub_2146A04B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_21408C470(a2);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2146A0560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  (*(v9 + 16))(v11, a3, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  (*(v9 + 32))(v14 + v12, v11, v8);
  v15 = (v14 + v13);
  *v15 = a1;
  v15[1] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2146A2718;
  *(v16 + 24) = v14;
  aBlock[4] = sub_214484288;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21469F760;
  aBlock[3] = &block_descriptor_20;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  (*(v9 + 8))(a3, v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A07C4()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_2146A0804@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_2146A0170(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2146A082C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2146A1420(a1);
  }

  return result;
}

uint64_t sub_2146A088C(uint64_t a1)
{
  v2 = sub_2146D8B88();
  v103 = *(v2 - 8);
  v104 = v2;
  MEMORY[0x28223BE20](v2);
  v102 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F70, &qword_21477E708);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v97 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v98 = v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v100 = v86 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v101 = v86 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v86 - v13;
  v107 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v15 = *(v107 - 8);
  v16 = MEMORY[0x28223BE20](v107);
  v106 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v86 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v86 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v86 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v86 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v86 - v30;
  type metadata accessor for XPCDecoder();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  sub_2146C6E9C(a1);
  v91 = v26;
  v92 = v23;
  v99 = v29;
  v95 = v32;
  v34 = v107;
  v93 = *(v15 + 56);
  v93(v14, 0, 1, v107);
  sub_2146A2684(v14, v31);
  v35 = sub_2146D9B88();
  v36 = v35;
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v37 = qword_280B35410;
  v38 = v99;
  sub_214081EB0(v31, v99, type metadata accessor for UnpackResponseSessionFinishedMessage);
  v39 = os_log_type_enabled(v37, v36);
  v96 = v31;
  v94 = v20;
  v90 = v15;
  v89 = v15 + 56;
  if (v39)
  {
    v88 = v36;
    v40 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v109[0] = v87;
    *v40 = 136446466;
    swift_getObjectType();
    v41 = sub_2140901DC(0);
    v86[1] = a1;
    if (v41)
    {
      v108 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
      v42 = sub_2146D9618();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
      v42 = 7104878;
    }

    v48 = v101;
    v49 = sub_2144AEA38(v42, v44, v109);

    *(v40 + 4) = v49;
    *(v40 + 12) = 2082;
    sub_214081EB0(v99, v48, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v93(v48, 0, 1, v34);
    v50 = v100;
    sub_213FB2E54(v48, v100, &qword_27C917F70, &qword_21477E708);
    if ((*(v15 + 48))(v50, 1, v34) == 1)
    {
      sub_213FB2DF4(v50, &qword_27C917F70, &qword_21477E708);
      v51 = 0xE300000000000000;
      v52 = 7104878;
    }

    else
    {
      v53 = v91;
      sub_2146A2684(v50, v91);
      sub_214081EB0(v53, v92, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v52 = sub_2146D9618();
      v51 = v54;
      sub_214081F18(v53, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    sub_213FB2DF4(v48, &qword_27C917F70, &qword_21477E708);
    sub_214081F18(v99, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v55 = sub_2144AEA38(v52, v51, v109);

    *(v40 + 14) = v55;
    v45 = v37;
    _os_log_impl(&dword_213FAF000, v37, v88, "Received session end message for unpacker: %{public}s with sessionEnd message: %{public}s", v40, 0x16u);
    v56 = v87;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v56, -1, -1);
    v46 = MEMORY[0x216056AC0](v40, -1, -1);
    v47 = v105;
  }

  else
  {
    v45 = v37;
    v46 = sub_214081F18(v38, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v47 = v105;
  }

  isa = v47[10].isa;
  MEMORY[0x28223BE20](v46);
  v58 = v96;
  v86[-2] = isa;
  v86[-1] = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F60, &unk_21477E6F8);
  sub_2146D9C48();

  v59 = v106;
  if (v109[0])
  {
    sub_21430299C(v109[0], v109[1]);
    type metadata accessor for XPCEncoder();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0;
    v61 = swift_unknownObjectRetain();
    reply = xpc_dictionary_create_reply(v61);
    if (reply)
    {
      v63 = reply;
      swift_unknownObjectRelease();
      *(v60 + 64) = v63;
      v64 = v96;
      v65 = sub_21469F7B4(v96);
      v67 = v103;
      v66 = v104;
      v68 = v102;
      xpc_connection_send_message(v47[2].isa, v65);
      (*(v67 + 16))(v68, v64, v66);

      sub_2146A0560(0, 0, v68);

      swift_unknownObjectRelease();

      sub_214081F18(v64, type metadata accessor for UnpackResponseSessionFinishedMessage);
      return 1;
    }

    else
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v69 = sub_2146D9B88();
    v70 = v94;
    sub_214081EB0(v58, v94, type metadata accessor for UnpackResponseSessionFinishedMessage);
    if (os_log_type_enabled(v45, v69))
    {
      v105 = v45;
      v71 = 7104878;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v109[0] = v73;
      *v72 = 136446466;
      swift_getObjectType();
      v74 = sub_2140901DC(0);
      if (v74)
      {
        v108 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
        v75 = sub_2146D9618();
        v77 = v76;
      }

      else
      {
        v77 = 0xE300000000000000;
        v75 = 7104878;
      }

      v78 = v92;
      v79 = sub_2144AEA38(v75, v77, v109);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2082;
      v80 = v98;
      sub_214081EB0(v94, v98, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v81 = v107;
      v93(v80, 0, 1, v107);
      v82 = v97;
      sub_213FB2E54(v80, v97, &qword_27C917F70, &qword_21477E708);
      if ((*(v90 + 48))(v82, 1, v81) == 1)
      {
        sub_213FB2DF4(v82, &qword_27C917F70, &qword_21477E708);
        v83 = 0xE300000000000000;
      }

      else
      {
        sub_2146A2684(v82, v59);
        sub_214081EB0(v59, v78, type metadata accessor for UnpackResponseSessionFinishedMessage);
        v71 = sub_2146D9618();
        v83 = v84;
        sub_214081F18(v59, type metadata accessor for UnpackResponseSessionFinishedMessage);
      }

      sub_213FB2DF4(v80, &qword_27C917F70, &qword_21477E708);
      sub_214081F18(v94, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v85 = sub_2144AEA38(v71, v83, v109);

      *(v72 + 14) = v85;
      _os_log_impl(&dword_213FAF000, v105, v69, "Could not find current session: %{public}s with message: %{public}s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216056AC0](v73, -1, -1);
      MEMORY[0x216056AC0](v72, -1, -1);

      sub_214081F18(v96, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    else
    {

      sub_214081F18(v70, type metadata accessor for UnpackResponseSessionFinishedMessage);
      sub_214081F18(v58, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    return 0;
  }

  return result;
}

void sub_2146A1420(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_2146D8B88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v11 = sub_21408FD98();
  if (v11 == 7)
  {

    sub_2146D9C48();

    if (v55[0])
    {
      v19 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v20 = qword_280B35410;
      if (os_log_type_enabled(qword_280B35410, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v55[0] = v22;
        *v21 = 136446210;
        v23 = sub_2140901DC(0);
        if (v23)
        {
          v54 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v24 = sub_2146D9618();
          v26 = v25;
        }

        else
        {
          v24 = 7104878;
          v26 = 0xE300000000000000;
        }

        v35 = sub_2144AEA38(v24, v26, v55);

        *(v21 + 4) = v35;
        _os_log_impl(&dword_213FAF000, v20, v19, "Received handle event when no session was present: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x216056AC0](v22, -1, -1);
        MEMORY[0x216056AC0](v21, -1, -1);
      }
    }

    else if ((sub_2146A088C(a1) & 1) == 0)
    {
      v28 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v53 = qword_280B35410;
      v29 = os_log_type_enabled(qword_280B35410, v28);
      v52 = 0;
      if (v29)
      {
        v51 = v28;
        v30 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55[0] = v50;
        *v30 = 136446210;
        v31 = sub_2140901DC(0);
        if (v31)
        {
          v54 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v32 = sub_2146D9618();
          v34 = v33;
        }

        else
        {
          v32 = 7104878;
          v34 = 0xE300000000000000;
        }

        v36 = sub_2144AEA38(v32, v34, v55);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_213FAF000, v53, v51, "Received session response for unpacker: %{public}s", v30, 0xCu);
        v37 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x216056AC0](v37, -1, -1);
        MEMORY[0x216056AC0](v30, -1, -1);
      }

      sub_2140902B8(v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_213FB2DF4(v6, &unk_27C904F30, &unk_2146EFA20);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v38 = sub_2146D9B88();
        v39 = os_log_type_enabled(v53, v38);
        if (v39)
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v55[0] = v41;
          *v40 = 136446210;
          v42 = sub_2140901DC(2u);
          if (v42)
          {
            v54 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
            v43 = sub_2146D9618();
            v45 = v44;
          }

          else
          {
            v43 = 7104878;
            v45 = 0xE300000000000000;
          }

          v46 = sub_2144AEA38(v43, v45, v55);

          *(v40 + 4) = v46;
          _os_log_impl(&dword_213FAF000, v53, v38, "    For session: %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x216056AC0](v41, -1, -1);
          v39 = MEMORY[0x216056AC0](v40, -1, -1);
        }

        v47 = *(v2 + 80);
        MEMORY[0x28223BE20](v39);
        *(&v50 - 2) = v47;
        *(&v50 - 1) = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F60, &unk_21477E6F8);
        sub_2146D9C48();

        v48 = v55[0];
        if (v55[0])
        {
          v49 = v55[1];
          v55[0] = a1;
          v48(v55);
          sub_21430299C(v48, v49);
        }

        (*(v8 + 8))(v10, v7);
      }
    }
  }

  else if (v11 == 13)
  {
    sub_2146A1BDC();
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v12 = sub_2146D9208();
    __swift_project_value_buffer(v12, qword_280B34D98);
    swift_unknownObjectRetain();
    v53 = sub_2146D91E8();
    v13 = sub_2146D9BA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v53, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v55[0] = v15;
      *v14 = 136315138;
      LOBYTE(v54) = sub_21408FFD8();
      v16 = sub_2146D9618();
      v18 = sub_2144AEA38(v16, v17, v55);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_213FAF000, v53, v13, "Got an XPC Error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x216056AC0](v15, -1, -1);
      MEMORY[0x216056AC0](v14, -1, -1);
    }

    else
    {
      v27 = v53;
    }
  }
}

void sub_2146A1BDC()
{
  if (xpc_connection_copy_invalidation_reason())
  {
    v0 = sub_2146D96E8();
    v2 = v1;
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v3 = sub_2146D9208();
    __swift_project_value_buffer(v3, qword_280B34D98);

    oslog = sub_2146D91E8();
    v4 = sub_2146D9BA8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      v7 = sub_2144AEA38(v0, v2, &v9);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_213FAF000, oslog, v4, "XPC Connection invalid with reason: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x216056AC0](v6, -1, -1);
      MEMORY[0x216056AC0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2146A1D78()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 sub_2146A1E58@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  result = *(*v1 + 40);
  v4 = *(*v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v2 + 72);
  return result;
}

void sub_2146A1E74()
{
  v1 = *(*v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_2146A1F78;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_213FB14A8;
  v4[3] = &block_descriptor_3;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_activate(v1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2146A1F98(unint64_t a1, char a2, void *a3)
{
  v7 = sub_2146D8B88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F98, &qword_21477E748);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = *(v13 + 72);
  v58 = a1;
  v52[0] = v17;
  v52[1] = v3;
  sub_213FB2E54(a1 + v17, v52 - v14, &qword_27C917F98, &qword_21477E748);
  v53 = v8;
  v18 = *(v8 + 32);
  v60 = v7;
  v18(v10, v15, v7);
  v55 = v16;
  v59 = *&v15[v16];
  v19 = *a3;
  v20 = sub_21408C470(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_214050C88(v25, a2 & 1);
    v20 = sub_21408C470(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_2146DA8D8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_214482F70();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v63 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v30 = swift_dynamicCast();
    v31 = v53;
    if ((v30 & 1) == 0)
    {

      (*(v31 + 8))(v10, v60);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v54 = *(v53 + 72);
  v35 = v20;
  v18((v34 + v54 * v20), v10, v60);
  *(v33[7] + 16 * v35) = v59;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v58 + v56 + v52[0];
    v39 = 1;
    while (v39 < *(v58 + 16))
    {
      sub_213FB2E54(v38, v15, &qword_27C917F98, &qword_21477E748);
      v18(v10, v15, v60);
      v59 = *&v15[v55];
      v40 = *a3;
      v41 = sub_21408C470(v10);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v24 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v24)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_214050C88(v45, 1);
        v41 = sub_21408C470(v10);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v49 = v41;
      v18((v48[6] + v54 * v41), v10, v60);
      *(v48[7] + 16 * v49) = v59;
      v50 = v48[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v39;
      v48[2] = v51;
      v38 += v56;
      if (v57 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A7110);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](39, 0xE100000000000000);
  sub_2146DA018();
  __break(1u);
}

uint64_t sub_2146A2504(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2146D8B88();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v8 = a3[1];
  (*(v10 + 16))(v7, a2);
  swift_beginAccess();
  sub_21430298C(v9, v8);
  sub_214480264(v9, v8, v7);
  return swift_endAccess();
}

uint64_t sub_2146A2614@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 24) + 16) == 0;
  return result;
}

uint64_t sub_2146A2684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146A26E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2146A04B4(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2146A2718()
{
  v1 = *(sub_2146D8B88() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2146A2504(v3, v0 + v2, v4);
}

uint64_t sub_2146A27A8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_213FB34FC(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_2146A2884(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2146A28CC(uint64_t a1)
{
  v12 = a1;
  v13 = sub_2146D9C28();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2146D9C18();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2146D93D8();
  MEMORY[0x28223BE20](v5 - 8);
  v11[0] = sub_214480EA8();
  sub_2146D93C8();
  v14 = MEMORY[0x277D84F90];
  sub_2146A2884(&qword_280B34D60, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914338, &qword_21474BE38);
  v6 = v11[1];
  sub_21432076C(&qword_280B34CA0, &qword_27C914338, &qword_21474BE38, MEMORY[0x277D83970]);
  v7 = v12;
  sub_2146D9E48();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v13);
  *(v6 + 16) = sub_2146D9C58();
  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042A0, &unk_2146EAE50);
    v8 = sub_2146DA058();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v14 = v8;

  sub_2146A1F98(v9, 1, &v14);
  *(v6 + 24) = v14;
  return v6;
}

void *sub_2146A2BBC(_xpc_connection_s *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F88, &unk_21477E738);
  swift_allocObject();
  *(v3 + 80) = sub_2146A28CC(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  v7 = sub_2146D95B8();
  v9 = v8;
  if (v7 == sub_2146D95B8() && v9 == v10)
  {
    swift_unknownObjectRetain();
    v16 = a3;
    v17 = a2;

    goto LABEL_9;
  }

  v12 = sub_2146DA6A8();
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = a2;

  if (v12)
  {
LABEL_9:
    xpc_connection_get_audit_token();
    pid = xpc_connection_get_pid(a1);
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = pid;
    return v3;
  }

  swift_unknownObjectRetain();
  result = [v14 UTF8String];
  if (result)
  {
    blastdoor_xpc_connection_set_instance(a1);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void blastdoor_xpc_connection_set_instance(void *a1)
{
  v1 = a1;
  xpc_connection_set_instance();
}

uint64_t sub_2146A2DF0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2146A2E20()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2146A2E50()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2146A2E84()
{
  v1 = *(v0 + 48);
  sub_213FDCA18(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_2146A2EB8()
{
  v1 = *(v0 + 64);
  sub_213FDCA18(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_2146A2EEC()
{
  v1 = *(v0 + 80);
  sub_213FDCA18(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_2146A2F20()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_2146A2F5C()
{
  v1 = *(v0 + 128);
  sub_213FDCA18(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_2146A3004()
{
  v1 = *(v0 + 368);

  return v1;
}

uint64_t sub_2146A3034()
{
  v1 = *(v0 + 384);

  return v1;
}

uint64_t sub_2146A3064(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917FB0, &qword_21477E750);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - v5;
  v7 = *v1;
  v84 = v1[1];
  v85 = v7;
  v8 = v1[2];
  v82 = v1[3];
  v83 = v8;
  v9 = v1[4];
  v80 = v1[5];
  v81 = v9;
  v10 = v1[7];
  v79 = v1[6];
  v11 = v1[8];
  v76 = v1[9];
  v77 = v10;
  v12 = v1[10];
  v74 = v1[11];
  v75 = v11;
  v13 = v1[12];
  v72 = v1[13];
  v73 = v12;
  v70 = v1[14];
  v71 = v13;
  v89 = *(v1 + 120);
  v14 = v1[17];
  v68 = v1[16];
  v69 = v14;
  v58 = *(v1 + 144);
  v56 = v1[19];
  v57 = *(v1 + 160);
  v66 = v1[21];
  v67 = *(v1 + 176);
  v65 = *(v1 + 177);
  v64 = *(v1 + 178);
  v63 = *(v1 + 179);
  v15 = v1[24];
  v61 = v1[23];
  v62 = v15;
  v16 = v1[26];
  v59 = v1[25];
  v60 = v16;
  v37[1] = v1[27];
  v38 = *(v1 + 224);
  v17 = v1[30];
  v39 = v1[29];
  v40 = v17;
  v41 = *(v1 + 248);
  v18 = v1[33];
  v43 = v1[32];
  v42 = v18;
  v44 = v1[34];
  v45 = *(v1 + 280);
  v19 = v1[37];
  v46 = v1[36];
  v47 = v19;
  v48 = *(v1 + 304);
  v20 = v1[40];
  v49 = v1[39];
  v50 = v20;
  v51 = *(v1 + 328);
  v21 = v1[43];
  v52 = v1[42];
  v53 = v21;
  v22 = v1[45];
  v54 = v1[44];
  v55 = v22;
  v23 = v1[47];
  v78 = v1[46];
  v25 = v1[48];
  v24 = v1[49];
  v26 = a1[3];
  v27 = a1;
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v26);
  sub_2146A3C08();
  sub_2146DAA28();
  LOBYTE(v87) = 0;
  v30 = v6;
  v31 = v86;
  sub_2146DA2B8();
  if (v31)
  {
    return (*(v4 + 8))(v6, v29);
  }

  v33 = v80;
  v34 = v81;
  v85 = v23;
  v86 = v24;
  v35 = v79;
  v84 = v25;
  LOBYTE(v87) = 1;
  sub_2146DA2B8();
  v87 = v34;
  v88 = v33;
  v90 = 2;
  sub_213FDCA18(v34, v33);
  v36 = sub_214061684();
  sub_2146DA308();
  sub_213FDC6BC(v87, v88);
  v87 = v35;
  v88 = v77;
  v90 = 3;
  sub_213FDCA18(v35, v77);
  sub_2146DA308();
  sub_213FDC6BC(v87, v88);
  v87 = v75;
  v88 = v76;
  v90 = 4;
  sub_213FDCA18(v75, v76);
  sub_2146DA308();
  sub_213FDC6BC(v87, v88);
  v87 = v73;
  v88 = v74;
  v90 = 5;
  sub_213FDCA18(v73, v74);
  sub_2146DA308();
  v83 = v36;
  sub_213FDC6BC(v87, v88);
  LOBYTE(v87) = 6;
  sub_2146DA2B8();
  LOBYTE(v87) = 7;
  sub_2146DA318();
  v87 = v68;
  v88 = v69;
  v90 = 8;
  sub_213FDCA18(v68, v69);
  sub_2146DA308();
  sub_213FDC6BC(v87, v88);
  LOBYTE(v87) = 9;
  sub_2146DA318();
  LOBYTE(v87) = 10;
  sub_2146DA2C8();
  LOBYTE(v87) = 11;
  sub_2146DA2C8();
  LOBYTE(v87) = 12;
  sub_2146DA2C8();
  LOBYTE(v87) = 13;
  sub_2146DA2B8();
  v87 = v59;
  v88 = v60;
  v90 = 14;
  sub_213FDCA18(v59, v60);
  sub_2146DA308();
  sub_213FDC6BC(v87, v88);
  LOBYTE(v87) = 15;
  sub_2146DA2C8();
  LOBYTE(v87) = 16;
  sub_2146DA2E8();
  LOBYTE(v87) = 17;
  sub_2146DA2F8();
  v87 = v39;
  v90 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_214045A54(&qword_280B30BA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2146DA308();
  LOBYTE(v87) = 19;
  sub_2146DA2F8();
  v87 = v42;
  v90 = 20;
  sub_2146DA308();
  v87 = v43;
  v90 = 21;
  sub_2146DA308();
  LOBYTE(v87) = 22;
  sub_2146DA2F8();
  v87 = v46;
  v90 = 23;
  sub_2146DA308();
  LOBYTE(v87) = 24;
  sub_2146DA2F8();
  v87 = v49;
  v90 = 25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  v83 = sub_2142FFE4C(&qword_27C908A60, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2146DA308();
  LOBYTE(v87) = 26;
  sub_2146DA2F8();
  v87 = v52;
  v90 = 27;
  sub_2146DA308();
  v87 = v53;
  v90 = 28;
  sub_2146DA308();
  v87 = v54;
  v90 = 29;
  sub_2146DA308();
  v87 = v55;
  v90 = 30;
  sub_2146DA308();
  LOBYTE(v87) = 31;
  sub_2146DA2B8();
  LOBYTE(v87) = 32;
  sub_2146DA2B8();
  return (*(v4 + 8))(v30, v29);
}

unint64_t sub_2146A3C08()
{
  result = qword_27C917FB8;
  if (!qword_27C917FB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NameAndPhoto.NameAndPhotoKey, &type metadata for NameAndPhoto.NameAndPhotoKey, v0, v1);
    atomic_store(result, &qword_27C917FB8);
  }

  return result;
}

void sub_2146A3C5C(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917FC0, qword_21477E758);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v175 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2146A3C08();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v175);
    return;
  }

  v95 = a2;
  LOBYTE(v97) = 0;
  v10 = sub_2146DA0F8();
  v93 = v11;
  LOBYTE(v97) = 1;
  v12 = sub_2146DA0F8();
  v86 = v13;
  v14 = v12;
  LOBYTE(v96[0]) = 2;
  sub_21406116C();
  sub_2146DA148();
  v84 = v97;
  v85 = v98;
  LOBYTE(v96[0]) = 3;
  sub_2146DA148();
  v82 = v97;
  v83 = v98;
  LOBYTE(v96[0]) = 4;
  sub_2146DA148();
  v80 = v97;
  v81 = v98;
  LOBYTE(v96[0]) = 5;
  sub_2146DA148();
  v78 = v97;
  v79 = v98;
  LOBYTE(v97) = 6;
  v92 = sub_2146DA0F8();
  v77 = v15;
  LOBYTE(v97) = 7;
  v91 = sub_2146DA158();
  v65 = 0;
  v174 = v16 & 1;
  LOBYTE(v96[0]) = 8;
  sub_2146DA148();
  v94 = 0;
  v75 = v97;
  v76 = v98;
  LOBYTE(v97) = 9;
  v17 = sub_2146DA158();
  v94 = 0;
  v18 = v17;
  v169 = v19 & 1;
  LOBYTE(v97) = 10;
  v90 = sub_2146DA108();
  v94 = 0;
  LOBYTE(v97) = 11;
  v89 = sub_2146DA108();
  v94 = 0;
  LOBYTE(v97) = 12;
  v88 = sub_2146DA108();
  v94 = 0;
  LOBYTE(v97) = 13;
  v87 = sub_2146DA0F8();
  v74 = v20;
  v94 = 0;
  LOBYTE(v96[0]) = 14;
  sub_2146DA148();
  v94 = 0;
  v72 = v98;
  v73 = v97;
  LOBYTE(v97) = 15;
  v22 = sub_2146DA108();
  v94 = 0;
  v23 = v22;
  LOBYTE(v97) = 16;
  v64 = sub_2146DA128();
  v94 = 0;
  v171 = v24 & 1;
  LOBYTE(v97) = 17;
  v63 = sub_2146DA138();
  v94 = 0;
  v168 = v25 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v96[0]) = 18;
  v61 = sub_214045A54(&qword_280B2FE60, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v62 = v26;
  v27 = v94;
  sub_2146DA148();
  v94 = v27;
  if (v27)
  {
    (*(v6 + 8))(v8, v5);
    LODWORD(v87) = 0;
    v90 = 0;
    v88 = 0;
    LODWORD(v91) = 0;
    LODWORD(v92) = 0;
    LODWORD(v95) = 0;
    v89 = 1;
  }

  else
  {
    v71 = v97;
    LOBYTE(v97) = 19;
    v60 = sub_2146DA138();
    v94 = 0;
    v166 = v28 & 1;
    LOBYTE(v96[0]) = 20;
    sub_2146DA148();
    v94 = 0;
    v70 = v97;
    LOBYTE(v96[0]) = 21;
    sub_2146DA148();
    v94 = 0;
    v69 = v97;
    LOBYTE(v97) = 22;
    v59 = sub_2146DA138();
    v94 = 0;
    v164 = v29 & 1;
    LOBYTE(v96[0]) = 23;
    sub_2146DA148();
    v94 = 0;
    v68 = v97;
    LOBYTE(v97) = 24;
    v58 = sub_2146DA138();
    v94 = 0;
    v162 = v30 & 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    LOBYTE(v96[0]) = 25;
    v32 = sub_2142FFE4C(&qword_27C908A50, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v66 = v31;
    v57 = v32;
    v33 = v94;
    sub_2146DA148();
    v94 = v33;
    if (!v33)
    {
      v67 = v97;
      LOBYTE(v97) = 26;
      v56 = sub_2146DA138();
      v94 = 0;
      v160 = v34 & 1;
      LOBYTE(v96[0]) = 27;
      sub_2146DA148();
      v94 = 0;
      v66 = v97;
      LOBYTE(v96[0]) = 28;
      sub_2146DA148();
      v94 = 0;
      v57 = v97;
      LOBYTE(v96[0]) = 29;
      sub_2146DA148();
      v65 = 0;
      v55 = v97;
      LOBYTE(v96[0]) = 30;
      sub_2146DA148();
      v94 = 0;
      v62 = v97;
      LOBYTE(v97) = 31;
      v54 = sub_2146DA0F8();
      v61 = v35;
      v94 = 0;
      v158 = 32;
      v36 = sub_2146DA0F8();
      v52 = v37;
      v53 = v36;
      v94 = 0;
      (*(v6 + 8))(v8, v5);
      v96[0] = v10;
      v96[1] = v93;
      v50 = v14;
      v96[2] = v14;
      v96[3] = v86;
      v96[4] = v84;
      v96[5] = v85;
      v96[6] = v82;
      v96[7] = v83;
      v96[8] = v80;
      v96[9] = v81;
      v96[10] = v78;
      v96[11] = v79;
      v96[12] = v92;
      v96[13] = v77;
      v96[14] = v91;
      v48 = v23;
      v49 = v174;
      LOBYTE(v96[15]) = v174;
      HIDWORD(v96[15]) = *&v173[3];
      *(&v96[15] + 1) = *v173;
      v96[16] = v75;
      v96[17] = v76;
      LOBYTE(v96[18]) = v23;
      *(&v96[18] + 1) = *v172;
      HIDWORD(v96[18]) = *&v172[3];
      v96[19] = v64;
      v47 = v171;
      LOBYTE(v96[20]) = v171;
      *(&v96[20] + 1) = *v170;
      HIDWORD(v96[20]) = *&v170[3];
      v45 = v18;
      v96[21] = v18;
      HIDWORD(v44) = v169;
      LOBYTE(v96[22]) = v169;
      v38 = v90;
      BYTE1(v96[22]) = v90;
      v39 = v89;
      BYTE2(v96[22]) = v89;
      BYTE3(v96[22]) = v88;
      v96[23] = v87;
      v96[24] = v74;
      v96[25] = v73;
      v96[26] = v72;
      v96[27] = v63;
      LODWORD(v65) = v168;
      LOBYTE(v96[28]) = v168;
      HIDWORD(v96[28]) = *&v167[3];
      *(&v96[28] + 1) = *v167;
      v96[29] = v71;
      v96[30] = v60;
      v51 = v166;
      LOBYTE(v96[31]) = v166;
      HIDWORD(v96[31]) = *&v165[3];
      *(&v96[31] + 1) = *v165;
      v96[32] = v69;
      v96[33] = v70;
      v96[34] = v59;
      *(&v96[35] + 1) = *v163;
      *(&v96[38] + 1) = *v161;
      v46 = v164;
      LOBYTE(v96[35]) = v164;
      HIDWORD(v96[35]) = *&v163[3];
      v40 = v67;
      v96[36] = v68;
      v96[37] = v58;
      *(&v96[41] + 1) = *v159;
      v41 = v162;
      LOBYTE(v96[38]) = v162;
      HIDWORD(v96[38]) = *&v161[3];
      v96[39] = v67;
      v42 = v56;
      v96[40] = v56;
      HIDWORD(v96[41]) = *&v159[3];
      v43 = v160;
      LOBYTE(v96[41]) = v160;
      v96[42] = v66;
      v96[43] = v57;
      v96[44] = v55;
      v96[45] = v62;
      v96[46] = v54;
      v96[47] = v61;
      v96[48] = v53;
      v96[49] = v52;
      memcpy(v95, v96, 0x190uLL);
      sub_2146A51CC(v96, &v97);
      __swift_destroy_boxed_opaque_existential_1(v175);
      v97 = v10;
      v98 = v93;
      v99 = v50;
      v100 = v86;
      v101 = v84;
      v102 = v85;
      v103 = v82;
      v104 = v83;
      v105 = v80;
      v106 = v81;
      v107 = v78;
      v108 = v79;
      v109 = v92;
      v110 = v77;
      v111 = v91;
      v112 = v49;
      v114 = v75;
      v115 = v76;
      v116 = v48;
      v118 = v64;
      v119 = v47;
      v121 = v45;
      v122 = BYTE4(v44);
      v123 = v38;
      v124 = v39;
      *v113 = *v173;
      *&v113[3] = *&v173[3];
      *v117 = *v172;
      *&v117[3] = *&v172[3];
      *v120 = *v170;
      *&v120[3] = *&v170[3];
      v125 = v88;
      v126 = v87;
      v127 = v74;
      v128 = v73;
      v129 = v72;
      v130 = v63;
      v131 = v65;
      *&v132[3] = *&v167[3];
      *v132 = *v167;
      v133 = v71;
      v134 = v60;
      v135 = v51;
      *&v136[3] = *&v165[3];
      *v136 = *v165;
      v137 = v69;
      v138 = v70;
      v139 = v59;
      v140 = v46;
      *v141 = *v163;
      *&v141[3] = *&v163[3];
      v142 = v68;
      v143 = v58;
      v144 = v41;
      *v145 = *v161;
      *&v145[3] = *&v161[3];
      v146 = v40;
      v147 = v42;
      v148 = v43;
      *v149 = *v159;
      *&v149[3] = *&v159[3];
      v150 = v66;
      v151 = v57;
      v152 = v55;
      v153 = v62;
      v154 = v54;
      v155 = v61;
      v156 = v53;
      v157 = v52;
      sub_2146A5204(&v97);
      return;
    }

    (*(v6 + 8))(v8, v5);
    LODWORD(v92) = 0;
    LODWORD(v95) = 0;
    v89 = 1;
    LODWORD(v87) = 1;
    v90 = 1;
    v88 = 1;
    LODWORD(v91) = 1;
  }

  v21 = v65;
  __swift_destroy_boxed_opaque_existential_1(v175);

  if (v21)
  {
    if (!v89)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v89)
  {
LABEL_6:
    sub_213FDC6BC(v84, v85);
  }

LABEL_14:
  sub_213FDC6BC(v82, v83);
  sub_213FDC6BC(v80, v81);
  sub_213FDC6BC(v78, v79);

  sub_213FDC6BC(v75, v76);

  sub_213FDC6BC(v73, v72);
  if (v87)
  {

    if (v90)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (!v88)
    {
      goto LABEL_17;
    }

LABEL_9:

    if (v91)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (!v92)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!v90)
  {
    goto LABEL_8;
  }

LABEL_16:

  if (v88)
  {
    goto LABEL_9;
  }

LABEL_17:
  if (!v91)
  {
    goto LABEL_10;
  }

LABEL_18:

  if ((v92 & 1) == 0)
  {
LABEL_19:
    if (!v95)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_11:

  if ((v95 & 1) == 0)
  {
    return;
  }

LABEL_20:
}

uint64_t sub_2146A526C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 400))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2146A52C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A5394(char *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_2146A58F4(a1, a2);
  return v4;
}

void sub_2146A53EC(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2146A5650(a1);
  if (!v4)
  {
    a1(v9);
    if (*(v3 + 40))
    {
      v11 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        v20 = v11;
        swift_once();
        v11 = v20;
      }

      sub_2146D91D8(v11, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
    }

    else
    {
      v12 = sandbox_extension_release();
      if (v12 == sub_2146D93B8())
      {
        *(v3 + 32) = 0;
        *(v3 + 40) = 1;
        return;
      }

      v13 = MEMORY[0x2160542A0]();
      sub_21408FA04();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 4) = 0;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a3, a2);
      if (*(v5 + 40))
      {
        v10 = sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          v19 = v10;
          swift_once();
          v10 = v19;
        }

        sub_2146D91D8(v10, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        v16 = sandbox_extension_release();
        if (v16 != sub_2146D93B8())
        {
          v17 = MEMORY[0x2160542A0]();
          sub_21408FA04();
          swift_allocError();
          *v18 = v17;
          *(v18 + 4) = 0;
          swift_willThrow();

          return;
        }

        *(v5 + 32) = 0;
        *(v5 + 40) = 1;
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_2146A5650(uint64_t a1)
{
  if (*(v1 + 40) == 1)
  {
    sub_2146D9628();
    v2 = sandbox_extension_consume();

    if (v2 == -1)
    {
      v5 = MEMORY[0x2160542A0](result);
      sub_21408FA04();
      swift_allocError();
      *v6 = v5;
      *(v6 + 4) = 0;
      return swift_willThrow();
    }

    else
    {
      *(v1 + 32) = v2;
      *(v1 + 40) = 0;
    }
  }

  else
  {
    v4 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      v7 = v4;
      swift_once();
      v4 = v7;
    }

    return sub_2146D91D8(v4, &dword_213FAF000, qword_280B35410, "Trying to consume sandbox extension that is already consumed. ", 62, 2, MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_2146A5764(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v2 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      v7 = v2;
      swift_once();
      v2 = v7;
    }

    return sub_2146D91D8(v2, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = sandbox_extension_release();
    result = sub_2146D93B8();
    if (v4 == result)
    {
      *(v1 + 32) = 0;
      *(v1 + 40) = 1;
    }

    else
    {
      v5 = MEMORY[0x2160542A0]();
      sub_21408FA04();
      swift_allocError();
      *v6 = v5;
      *(v6 + 4) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2146A58AC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t *sub_2146A58F4(char *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  if (v4)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = *MEMORY[0x277D861B8];
  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_5:
  sub_2146D96E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v6 = sub_2146D9558();
  v8 = v7;

  MEMORY[0x2160545D0](v6, v8);

  sub_2146D9628();

  sub_2146D9628();

  v9 = sandbox_extension_issue_file();

  if (v9)
  {
    *(v3 + 16) = sub_2146D96E8();
    *(v3 + 24) = v10;
    free(v9);
  }

  else
  {
    sub_21408FA04();
    swift_allocError();
    *v11 = 0;
    *(v11 + 4) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_2146A5B20()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2146A5B70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2146DA708();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2146A5C10@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2146A5CDC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2146A5C3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2146DA708();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2146A5CDC(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = sub_2146DA6B8();
    v7 = v6;
    type metadata accessor for SandboxExtension();
    v3 = swift_allocObject();
    *(v3 + 24) = v7;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    *(v3 + 16) = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_2146A5DCC()
{
  result = qword_27C917FC8;
  if (!qword_27C917FC8)
  {
    result = swift_getWitnessTable(byte_21477EC18, &type metadata for SandboxExtensionClass, v0, v1);
    atomic_store(result, &qword_27C917FC8);
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

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
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

uint64_t sub_2146A5F04(uint64_t a1)
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

uint64_t sub_2146A5F20(uint64_t result, int a2)
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

uint64_t sub_2146A5F50()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A5FCC()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A6048()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 144);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146A60D0()
{
  v1 = *(v0 + 192);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 184);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146A6158@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 3072;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146A62C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 3072;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2146A6428@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146A6474(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_2146A64D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146A651C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A6578@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146A65D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A6638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146A6690(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2146A6728()
{
  v1 = *(v0 + 8);
  sub_213FDCA18(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2146A675C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void sub_2146A67B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    *a2 = *(a1 + 40);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2146A6824(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146A68D4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 24);
  v8 = *(v2 + 56);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
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

void (*sub_2146A6A1C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 48);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 40);
    a1[1] = v3;

    return sub_2146A6AB8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2146A6AB8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 24);
    v10 = *(v3 + 56);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 40) = v4;
      *(v3 + 48) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 24);
  v10 = *(v3 + 56);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
}

void sub_2146A6CD8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
}

void (*sub_2146A6D50(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146A6DE8;
}

void sub_2146A6DE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  else
  {

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  free(v2);
}

void sub_2146A6EB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    *a2 = *(a1 + 80);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2146A6F28(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146A6FD8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 64);
  v8 = *(v2 + 96);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
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

void (*sub_2146A7120(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 88);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 80);
    a1[1] = v3;

    return sub_2146A71BC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2146A71BC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 64);
    v10 = *(v3 + 96);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 80) = v4;
      *(v3 + 88) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 64);
  v10 = *(v3 + 96);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 80) = v4;
  *(v3 + 88) = v2;
}

void sub_2146A73DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
}

void (*sub_2146A7454(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146A74EC;
}

void sub_2146A74EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
  }

  else
  {

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
  }

  free(v2);
}

uint64_t sub_2146A75BC()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_2146A75F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_2146A76D8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146A77A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 152);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 144);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DF1B8;
  }

  return result;
}

void (*sub_2146A7844(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DF39C;
}

uint64_t sub_2146A7914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 192);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 184);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2146A7988(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2146A7A38(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146A7B04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 192);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 184);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146A7BA4;
  }

  return result;
}

uint64_t sub_2146A7BA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2146A7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  v4 = *(a1 + 192);
  v5 = *(a1 + 200);
  *a2 = *(a1 + 168);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146A7D38(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 184);
  v9 = *(a2 + 192);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  *(a2 + 184) = v5;
  *(a2 + 192) = v6;
  *(a2 + 200) = v7;
  return result;
}

void (*sub_2146A7DC0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146A7E60;
}

void sub_2146A7E60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 184);
  v10 = *(v3 + 192);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
  }

  free(v2);
}

uint64_t sub_2146A7F4C(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t sub_2146A7F88(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

unint64_t sub_2146A7FE8(uint64_t a1)
{
  *(a1 + 8) = sub_21431FD94();
  result = sub_21431F560();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy234_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 218) = *(a2 + 218);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2146A8064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 234))
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

uint64_t sub_2146A80AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 234) = 1;
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

    *(result + 234) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146A826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146A82B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2203))
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

uint64_t sub_2146A82F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 2202) = 0;
    *(result + 2200) = 0;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2203) = 1;
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

    *(result + 2203) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146A8594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2146A85F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A867C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2146A86D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A8748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_2146A87A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A8818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 105))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2146A8874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_2146A8900(uint64_t a1)
{
  *(a1 + 8) = sub_2146A8930();
  result = sub_2146A8984();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146A8930()
{
  result = qword_27C917FD0;
  if (!qword_27C917FD0)
  {
    result = swift_getWitnessTable(byte_2146FD740, &type metadata for TranscriptBackgroundStandaloneCommand, v0, v1);
    atomic_store(result, &qword_27C917FD0);
  }

  return result;
}

unint64_t sub_2146A8984()
{
  result = qword_27C917FD8;
  if (!qword_27C917FD8)
  {
    result = swift_getWitnessTable(aQym, &type metadata for TranscriptBackgroundStandaloneCommand, v0, v1);
    atomic_store(result, &qword_27C917FD8);
  }

  return result;
}

unint64_t sub_2146A89E8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214064194;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146A8B08@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED240;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

uint64_t sub_2146A8C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMCompositionIndication(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for IMCompositionIndication(uint64_t a1)
{
  result = qword_27C917FE8;
  if (!qword_27C917FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2146A8D04(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMCompositionIndication(0) + 24));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A8D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMCompositionIndication(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2146A8DE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IMCompositionIndication(0) + 28));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2146A8E54()
{
  v1 = v0 + *(type metadata accessor for IMCompositionIndication(0) + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2146A8EE4()
{
  v1 = v0 + *(type metadata accessor for IMCompositionIndication(0) + 28);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146A8F60@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146A906C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMCompositionIndication(0) + 20);

  return sub_2144716D8(v3, a1);
}

uint64_t sub_2146A90B0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMCompositionIndication(0) + 20);

  return sub_2140924F0(a1, v3);
}

void sub_2146A913C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMCompositionIndication(0) + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2146A91D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IMCompositionIndication(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146A92A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMCompositionIndication(0) + 24);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146A93F0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IMCompositionIndication(0) + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2146A94DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMCompositionIndication(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2146A954C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMCompositionIndication(0) + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2146A95E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMCompositionIndication(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2146A9690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IMCompositionIndication(0);
  v5 = a1 + *(result + 28);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2146A976C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IMCompositionIndication(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t sub_2146A9820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMCompositionIndication(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2146A988C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IMCompositionIndication(0) + 28);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2146A9910(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMCompositionIndication(0) + 28);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

unint64_t sub_2146A99C8()
{
  result = qword_27C917FE0;
  if (!qword_27C917FE0)
  {
    result = swift_getWitnessTable(byte_214781118, &type metadata for IMCompositionIndication.State, v0, v1);
    atomic_store(result, &qword_27C917FE0);
  }

  return result;
}

uint64_t sub_2146A9A1C(uint64_t a1)
{
  *(a1 + 8) = sub_2146A9A84(&qword_27C90D4B0, byte_2146FC930);
  result = sub_2146A9A84(&qword_27C90D450, byte_2146FC958);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146A9A84(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IMCompositionIndication(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146A9AF0(uint64_t a1)
{
  sub_21409320C(319);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2146A9BDC()
{
  result = qword_27C917FF8;
  if (!qword_27C917FF8)
  {
    result = swift_getWitnessTable(asc_214781180, &type metadata for IMCompositionIndication.State, v0, v1);
    atomic_store(result, &qword_27C917FF8);
  }

  return result;
}

uint64_t sub_2146A9C30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2146A9C44(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_2146A9C84@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_2146A9CEC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282653F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_214059810;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282653FA0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059818;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2146A9E18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146A9E64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A9EC0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146A9F44(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v2;
    return sub_214428888;
  }

  return result;
}

uint64_t (*sub_2146A9FCC(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;

  return sub_214428908;
}

void sub_2146AA024(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_2146AA16C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146AA208(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2146AA2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2146AA2B4(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_2146AA314@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146AA360(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

unint64_t sub_2146AA434(uint64_t a1)
{
  result = sub_2146AA45C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2146AA45C()
{
  result = qword_27C918000;
  if (!qword_27C918000)
  {
    result = swift_getWitnessTable(byte_2147812C4, &type metadata for WalletPassSharingUrlMessage, v0, v1);
    atomic_store(result, &qword_27C918000);
  }

  return result;
}

uint64_t sub_2146AA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146AA518()
{
  result = qword_27C918008;
  if (!qword_27C918008)
  {
    result = swift_getWitnessTable(byte_2146FD970, &type metadata for WalletPassSharingUrlMessage, v0, v1);
    atomic_store(result, &qword_27C918008);
  }

  return result;
}

unint64_t sub_2146AA56C()
{
  result = qword_27C918010;
  if (!qword_27C918010)
  {
    result = swift_getWitnessTable(aAM_3, &type metadata for WalletPassSharingUrlMessage, v0, v1);
    atomic_store(result, &qword_27C918010);
  }

  return result;
}

BOOL sub_2146AA5F0(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8928();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21407E248(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);

    v12 = sub_214069888(v11);
    v10 = sub_21407DAC4(v9, v12);

    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_2146AA798()
{
  v1 = type metadata accessor for CSDMConversationMessageProto(0);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v15, v0, 0x6F3uLL);
  v10[2] = v15;
  sub_2146AA9C8();
  sub_2146D9018();
  v4 = sub_2146D8FC8();
  v6 = v5;
  sub_2146AAA20(v3);
  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v7;
  sub_2140524DC(v12, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
  return v11;
}

uint64_t sub_2146AA920()
{
  sub_2146AA798();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146AA974()
{
  sub_2146AA798();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2146AA9C8()
{
  result = qword_27C903BD8;
  if (!qword_27C903BD8)
  {
    v3 = type metadata accessor for CSDMConversationMessageProto(255);
    result = swift_getWitnessTable(aAc_1, v3, v0, v1);
    atomic_store(result, &qword_27C903BD8);
  }

  return result;
}

uint64_t sub_2146AAA20(uint64_t a1)
{
  v2 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2146AAA7C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

void sub_2146AAB1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2140A0060(0, v2, 0);
    v23 = a1 + 64;
    v24 = v36;
    v3 = sub_2146D9E58();
    v4 = 0;
    v37 = *(a1 + 36);
    v22 = v2;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(a1 + 32))
    {
      v6 = v3 >> 6;
      if ((*(v23 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_22;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 56);
      v32 = *(*(a1 + 48) + v3);
      sub_2140537E4(v7 + 32 * v3, v33);
      v30[0] = v32;
      sub_213FDC730(v33, &v31);
      sub_213FB2E54(v30, v28, &qword_27C918048, &qword_214783CD8);
      v27 = v28[0];
      *&v34 = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
      *(&v34 + 1) = v8;
      sub_213FB2E54(v30, v25, &qword_27C918048, &qword_214783CD8);
      sub_213FDC730(&v26, v35);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_2146B8F68(v30);
      v9 = v24;
      v36 = v24;
      v11 = *(v24 + 16);
      v10 = *(v24 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2140A0060((v10 > 1), v11 + 1, 1);
        v9 = v36;
      }

      *(v9 + 16) = v11 + 1;
      v12 = (v9 + 48 * v11);
      v13 = v34;
      v14 = v35[1];
      v12[3] = v35[0];
      v12[4] = v14;
      v12[2] = v13;
      v5 = 1 << *(a1 + 32);
      if (v3 >= v5)
      {
        goto LABEL_24;
      }

      v15 = *(v23 + 8 * v6);
      if ((v15 & (1 << v3)) == 0)
      {
        goto LABEL_25;
      }

      v24 = v9;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v3 & 0x3F));
      if (v16)
      {
        v5 = __clz(__rbit64(v16)) | v3 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v6 << 6;
        v18 = v6 + 1;
        v19 = (a1 + 72 + 8 * v6);
        while (v18 < (v5 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_214493D04(v3, v37, 0);
            v5 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_214493D04(v3, v37, 0);
      }

LABEL_4:
      ++v4;
      v3 = v5;
      if (v4 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_2146AAE04@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146AAF74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146AB0E4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146AB254@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2146AB3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146AB410(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AB46C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2146AB4C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146AB52C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB584(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AB5EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB644(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2146AB6AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB704(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[11].n128_i64[0];
  v7 = v1[11].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AB76C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB7C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_2146AB82C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146AB8A8()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AB930()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AB9B8()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ABA40()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ABAC8()
{
  v1 = *(v0 + 240);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 232);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146ABB50@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146ABCA4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146ABE0C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146ABF7C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146AC0EC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2146AC25C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2146AC3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146AC424(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AC48C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC4E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146AC54C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC5A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC664(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2146AC6CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC724(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[11].n128_i64[0];
  v7 = v1[11].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AC78C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC7E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 200) = *a1;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  return result;
}

uint64_t sub_2146AC84C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146AC8CC()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AC954()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AC9DC()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ACA64()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ACAEC()
{
  v1 = *(v0 + 224);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 216);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146ACB74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146ACDE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146AD02C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

uint64_t sub_2146AD270@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146AD2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[2].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146AD314@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146AD360(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[4].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

void sub_2146AD3B8()
{
  if (*(v0 + 32) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

void sub_2146AD42C()
{
  if (*(v0 + 64) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

unint64_t sub_2146AD4A0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146AD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918050, qword_214783CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C58, &unk_2147319C0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v11;
  *(v10 + 32) = v12;
  v13 = sub_2142E0868(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D0, &qword_2146EAA20);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = a4;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  return sub_21404515C(inited, a5);
}

uint64_t sub_2146AD8EC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *a2 = *(v2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;

  return a1(v4);
}

__n128 sub_2146AD94C(__n128 *a1, void (*a2)(unint64_t))
{
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u8[8];
  v7 = v2[2].n128_u64[0];

  a2(v7);
  result = *a1;
  v2[1] = *a1;
  v2[2].n128_u64[0] = v5;
  v2[2].n128_u8[8] = v6;
  return result;
}

void sub_2146AD9AC()
{
  if (*(v0 + 32) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

unint64_t sub_2146ADA20@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v4;
  *(v3 + 32) = v6;
  v7 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2146B908C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_2140452B0(inited, a1);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059904;
  v13[3] = 0;
  v13[4] = 16;
  *(v12 + 16) = sub_2140598E0;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21439DF64;
  *(v14 + 24) = v12;
  *(v11 + 32) = v14;
  v15 = sub_2142E01D8(v11);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_2146B9220;
  *(v16 + 24) = v17;
  *(v10 + 32) = v16;
  sub_2140452B0(v10, a1 + 32);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059904;
  v21[3] = 0;
  v21[4] = 16;
  *(v20 + 16) = sub_2140598E0;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21439DF64;
  *(v22 + 24) = v20;
  *(v19 + 32) = v22;
  v23 = sub_2142E01D8(v19);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_2146B9220;
  *(v24 + 24) = v25;
  *(v18 + 32) = v24;
  return sub_2140452B0(v18, a1 + 64);
}

uint64_t sub_2146ADDDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADE28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[1].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146ADE80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADECC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[3].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146ADF24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADF70(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[5].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u8[8] = v4;
  return result;
}

void sub_2146ADFC8()
{
  if (*(v0 + 16) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

void sub_2146AE03C()
{
  if (*(v0 + 48) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

void sub_2146AE0B0()
{
  if (*(v0 + 80) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_2146AE124()
{
  memcpy(__dst, v0, 0x261uLL);
  v121 = MEMORY[0x277D84F98];
  memcpy(v123, v0, 0x261uLL);
  v1 = sub_214322C8C(v123);
  sub_213FBF560(v123);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xEE00657461647055;
      v3 = 0x796C6E4F656D614ELL;
    }

    else
    {
      v3 = 0xD000000000000010;
      v2 = 0x80000002147A71D0;
    }
  }

  else
  {
    v2 = 0x80000002147A71F0;
    v3 = 0xD000000000000012;
  }

  v4 = MEMORY[0x277D837D0];
  v120[3] = MEMORY[0x277D837D0];
  v120[0] = v3;
  v120[1] = v2;
  sub_21448054C(v120, 0);
  memcpy(v119, __dst, 0x261uLL);
  v5 = sub_214322C8C(v119);
  v6 = sub_213FBF560(v119);
  v7 = v6;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v8)
      {
        v11 = *v6;
        v12 = MEMORY[0x277D837D0];
      }

      else
      {
        v11 = 0;
        v12 = 0;
        *&v116 = 0;
      }

      v106 = *(v6 + 4);
      v107 = v6[40];
      *&v115 = v11;
      *(&v115 + 1) = v8;
      *(&v116 + 1) = v12;
      sub_2142F9BA4(__dst, v118);

      sub_21448054C(&v115, 31);
      if (v10)
      {
        v108 = MEMORY[0x277D837D0];
      }

      else
      {
        v9 = 0;
        v108 = 0;
        v118[2] = 0;
      }

      v118[0] = v9;
      v118[1] = v10;
      v118[3] = v108;

      sub_21448054C(v118, 32);
      sub_2142F9C54(__dst);
      if (v107)
      {
        v106 = 0;
        v109 = 0;
        v118[2] = 0;
        v118[1] = 0;
      }

      else
      {
        v109 = MEMORY[0x277D84A28];
      }

      v118[0] = v106;
      v118[3] = v109;
      sub_21448054C(v118, 7);
      goto LABEL_142;
    }

    v15 = *(v6 + 3);
    if (v15)
    {
      v16 = *(v6 + 2);
      *(&v116 + 1) = v4;
      *&v115 = v16;
      *(&v115 + 1) = v15;
      sub_2142F9BA4(__dst, v118);

      sub_21448054C(&v115, 1);
      v17 = *(v7 + 8);
      if (v17 >> 60 != 15)
      {
        v18 = *(v7 + 7);
        v118[3] = MEMORY[0x277CC9318];
        v118[0] = v18;
        v118[1] = v17;
        sub_21402D9F8(v18, v17);
        sub_21448054C(v118, 2);
        v19 = *(v7 + 13);
        if (v19 >> 60 != 11)
        {
          v20 = *(v7 + 12);
          if (v19 >> 60 == 15)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v118[2] = 0;
          }

          else
          {
            v23 = MEMORY[0x277CC9318];
            v21 = *(v7 + 12);
            v22 = *(v7 + 13);
          }

          v118[0] = v21;
          v118[1] = v22;
          v118[3] = v23;
          sub_213FDCA18(v20, v19);
          sub_21448054C(v118, 3);
          v72 = *(v7 + 18);
          if (v72 >> 60 != 11)
          {
            v73 = *(v7 + 17);
            if (v72 >> 60 == 15)
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v118[2] = 0;
            }

            else
            {
              v76 = MEMORY[0x277CC9318];
              v74 = *(v7 + 17);
              v75 = *(v7 + 18);
            }

            v118[0] = v74;
            v118[1] = v75;
            v118[3] = v76;
            sub_213FDCA18(v73, v72);
            sub_21448054C(v118, 4);
            v83 = *(v7 + 23);
            if (v83 >> 60 != 11)
            {
              v84 = *(v7 + 22);
              if (v83 >> 60 == 15)
              {
                v85 = 0;
                v86 = 0;
                v87 = 0;
                v118[2] = 0;
              }

              else
              {
                v87 = MEMORY[0x277CC9318];
                v85 = *(v7 + 22);
                v86 = *(v7 + 23);
              }

              v118[0] = v85;
              v118[1] = v86;
              v118[3] = v87;
              sub_213FDCA18(v84, v83);
              sub_21448054C(v118, 5);
              v94 = v7[193] == 0;
              v95 = 20302;
              if (v7[193])
              {
                v95 = 5457241;
              }

              v96 = 0xE200000000000000;
              v118[3] = v4;
              if (!v94)
              {
                v96 = 0xE300000000000000;
              }

              v118[0] = v95;
              v118[1] = v96;
              sub_21448054C(v118, 6);
              if (v7[208])
              {
                v97 = 0;
                v98 = 0;
                v118[2] = 0;
                v118[1] = 0;
              }

              else
              {
                v97 = *(v7 + 25);
                v98 = MEMORY[0x277D84A28];
              }

              v118[0] = v97;
              v118[3] = v98;
              sub_21448054C(v118, 7);
              v99 = *(v7 + 30);
              if (v99 >> 60 != 11)
              {
                v100 = *(v7 + 29);
                if (v99 >> 60 == 15)
                {
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v118[2] = 0;
                }

                else
                {
                  v103 = MEMORY[0x277CC9318];
                  v101 = *(v7 + 29);
                  v102 = *(v7 + 30);
                }

                v118[0] = v101;
                v118[1] = v102;
                v118[3] = v103;
                sub_213FDCA18(v100, v99);
                v104 = v118;
                v105 = 8;
                goto LABEL_133;
              }
            }
          }
        }
      }
    }

LABEL_146:
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v13 = *v6;
  if (v13 == 2)
  {
    v14 = 0;
    memset(v117, 0, 24);
  }

  else
  {
    LOBYTE(v117[0]) = v13 & 1;
    v14 = MEMORY[0x277D839B0];
  }

  v117[3] = v14;
  memcpy(v118, __dst, 0x261uLL);
  v24 = sub_213FBF560(v118);
  sub_2146B8EDC(v24, &v115);
  sub_21448054C(v117, 15);
  v25 = v7[1];
  v26 = v7[2];
  v27 = v7[3];
  v28 = v7[4];
  if (v25 == 3)
  {
    v25 = 0;
    v29 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v29 = MEMORY[0x277D83B88];
  }

  *&v115 = v25;
  *(&v116 + 1) = v29;
  sub_21448054C(&v115, 9);
  if (v26 == 2)
  {
    v30 = 0;
    v115 = 0uLL;
    *&v116 = 0;
  }

  else
  {
    LOBYTE(v115) = v26 & 1;
    v30 = MEMORY[0x277D839B0];
  }

  *(&v116 + 1) = v30;
  sub_21448054C(&v115, 10);
  if (v28 == 2)
  {
    v31 = 0;
    v115 = 0uLL;
    *&v116 = 0;
  }

  else
  {
    LOBYTE(v115) = v28 & 1;
    v31 = MEMORY[0x277D839B0];
  }

  *(&v116 + 1) = v31;
  sub_21448054C(&v115, 12);
  if (v27 == 2)
  {
    v32 = 0;
    v115 = 0uLL;
    *&v116 = 0;
  }

  else
  {
    LOBYTE(v115) = v27 & 1;
    v32 = MEMORY[0x277D839B0];
  }

  *(&v116 + 1) = v32;
  sub_21448054C(&v115, 11);
  v33 = *(v7 + 4);
  if (v33)
  {
    if (v33 == 1)
    {
      goto LABEL_146;
    }

    v34 = *(v7 + 3);
    *(&v116 + 1) = v4;
    *&v115 = v34;
    *(&v115 + 1) = v33;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 13);
  v35 = *(v7 + 9);
  if (v35 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v36 = *(v7 + 8);
  if (v35 >> 60 == 15)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    *&v116 = 0;
  }

  else
  {
    v39 = MEMORY[0x277CC9318];
    v37 = *(v7 + 8);
    v38 = *(v7 + 9);
  }

  *&v115 = v37;
  *(&v115 + 1) = v38;
  *(&v116 + 1) = v39;
  sub_213FDCA18(v36, v35);
  sub_21448054C(&v115, 14);
  v40 = *(v7 + 14);
  if (v40 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v41 = *(v7 + 13);
  if (v40 >> 60 == 15)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    *&v116 = 0;
  }

  else
  {
    v44 = MEMORY[0x277CC9318];
    v42 = *(v7 + 13);
    v43 = *(v7 + 14);
  }

  *&v115 = v42;
  *(&v115 + 1) = v43;
  *(&v116 + 1) = v44;
  sub_213FDCA18(v41, v40);
  sub_21448054C(&v115, 3);
  v45 = *(v7 + 19);
  if (v45 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v46 = *(v7 + 18);
  if (v45 >> 60 == 15)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    *&v116 = 0;
  }

  else
  {
    v49 = MEMORY[0x277CC9318];
    v47 = *(v7 + 18);
    v48 = *(v7 + 19);
  }

  *&v115 = v47;
  *(&v115 + 1) = v48;
  *(&v116 + 1) = v49;
  sub_213FDCA18(v46, v45);
  sub_21448054C(&v115, 4);
  v50 = *(v7 + 24);
  if (v50 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v51 = *(v7 + 23);
  if (v50 >> 60 == 15)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    *&v116 = 0;
  }

  else
  {
    v54 = MEMORY[0x277CC9318];
    v52 = *(v7 + 23);
    v53 = *(v7 + 24);
  }

  *&v115 = v52;
  *(&v115 + 1) = v53;
  *(&v116 + 1) = v54;
  sub_213FDCA18(v51, v50);
  sub_21448054C(&v115, 5);
  v55 = v7[201];
  if (v55 != 2)
  {
    v56 = (v55 & 1) == 0;
    v57 = 20302;
    if (!v56)
    {
      v57 = 5457241;
    }

    v58 = 0xE200000000000000;
    *(&v116 + 1) = v4;
    if (!v56)
    {
      v58 = 0xE300000000000000;
    }

    *&v115 = v57;
    *(&v115 + 1) = v58;
    sub_21448054C(&v115, 6);
  }

  v59 = *(v7 + 29);
  if (v59 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v60 = *(v7 + 28);
  if (v59 >> 60 == 15)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *&v116 = 0;
  }

  else
  {
    v63 = MEMORY[0x277CC9318];
    v61 = *(v7 + 28);
    v62 = *(v7 + 29);
  }

  *&v115 = v61;
  *(&v115 + 1) = v62;
  *(&v116 + 1) = v63;
  sub_213FDCA18(v60, v59);
  sub_21448054C(&v115, 8);
  v64 = *(v7 + 31);
  v65 = v7[256];
  v66 = *(v7 + 35);
  if (v66)
  {
    if (v66 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v66;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 18);
  if (v65)
  {
    v64 = 0;
    v67 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v67 = MEMORY[0x277D83E88];
  }

  *&v115 = v64;
  *(&v116 + 1) = v67;
  sub_21448054C(&v115, 17);
  v68 = *(v7 + 45);
  if (v7[304])
  {
    v69 = 0;
    v70 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v69 = *(v7 + 37);
    v70 = MEMORY[0x277D83E88];
  }

  v71 = *(v7 + 41);
  *&v115 = v69;
  *(&v116 + 1) = v70;
  sub_21448054C(&v115, 19);
  if (v68)
  {
    if (v68 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v68;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 21);
  if (v71)
  {
    if (v71 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v71;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 20);
  v77 = *(v7 + 51);
  if (v7[384])
  {
    v78 = 0;
    v79 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v78 = *(v7 + 47);
    v79 = MEMORY[0x277D83E88];
  }

  *&v115 = v78;
  *(&v116 + 1) = v79;
  sub_21448054C(&v115, 22);
  if (v77)
  {
    if (v77 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v77;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 23);
  v80 = *(v7 + 57);
  if (v7[432])
  {
    v81 = 0;
    v82 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v81 = *(v7 + 53);
    v82 = MEMORY[0x277D83E88];
  }

  *&v115 = v81;
  *(&v116 + 1) = v82;
  sub_21448054C(&v115, 24);
  if (v80)
  {
    if (v80 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    *&v115 = v80;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 25);
  v88 = *(v7 + 63);
  if (v7[480])
  {
    v89 = 0;
    v90 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v89 = *(v7 + 59);
    v90 = MEMORY[0x277D83E88];
  }

  *&v115 = v89;
  *(&v116 + 1) = v90;
  sub_21448054C(&v115, 26);
  if (v88)
  {
    if (v88 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    *&v115 = v88;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 27);
  v91 = *(v7 + 67);
  v92 = *(v7 + 71);
  v93 = *(v7 + 75);
  if (v91)
  {
    if (v91 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v91;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 28);
  if (v92)
  {
    if (v92 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v92;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  sub_21448054C(&v115, 29);
  if (v93)
  {
    if (v93 == 1)
    {
      goto LABEL_146;
    }

    *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v115 = v93;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  v104 = &v115;
  v105 = 30;
LABEL_133:
  sub_21448054C(v104, v105);
  sub_2142F9C54(__dst);
LABEL_142:
  sub_2146AAB1C(v121);
  v111 = v110;

  if (*(v111 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v112 = sub_2146DA058();
  }

  else
  {
    v112 = MEMORY[0x277D84F98];
  }

  v118[0] = v112;

  sub_2146B7C30(v113, 1, v118);

  return v118[0];
}

unint64_t NameAndPhoto.UpdateType.rawValue.getter()
{
  memcpy(v4, v0, 0x261uLL);
  v1 = sub_214322C8C(v4);
  sub_213FBF560(v4);
  v2 = 0x796C6E4F656D614ELL;
  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t NameAndPhoto.type.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x261uLL);
  memcpy(a1, v1, 0x261uLL);
  return sub_2142F9BA4(__dst, v4);
}

void *NameAndPhoto.type.setter(const void *a1)
{
  memcpy(v4, v1, 0x261uLL);
  sub_21431F6B0(v4);
  return memcpy(v1, a1, 0x261uLL);
}

BlastDoor::NameAndPhoto::NameAndPhotoKey_optional __swiftcall NameAndPhoto.NameAndPhotoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA8B8();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

BlastDoor::NameAndPhoto::NameAndPhotoKey_optional __swiftcall NameAndPhoto.NameAndPhotoKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = NameAndPhoto.NameAndPhotoKey.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t NameAndPhoto.NameAndPhotoKey.rawValue.getter()
{
  result = 0x546567617373654DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 1262770030;
      break;
    case 4:
      result = 0x4B4457524C6ELL;
      break;
    case 5:
      result = 1263359854;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 1146241390;
      break;
    case 9:
      result = 1262576493;
      break;
    case 0xA:
      result = 1262838637;
      break;
    case 0xB:
      result = 0x4B464E636DLL;
      break;
    case 0xC:
      result = 0x4B4649636DLL;
      break;
    case 0xD:
      result = 1145655918;
      break;
    case 0xE:
      result = 4932718;
      break;
    case 0xF:
      result = 6901362;
      break;
    case 0x10:
      result = 22126;
      break;
    case 0x11:
      result = 5664368;
      break;
    case 0x12:
      result = 1263038064;
      break;
    case 0x13:
      result = 1448559214;
      break;
    case 0x14:
      result = 5003118;
      break;
    case 0x15:
      result = 4997742;
      break;
    case 0x16:
      result = 1448364142;
      break;
    case 0x17:
      result = 5002350;
      break;
    case 0x18:
      result = 1447118958;
      break;
    case 0x19:
      result = 4997486;
      break;
    case 0x1A:
      result = 1447643246;
      break;
    case 0x1B:
      result = 4999534;
      break;
    case 0x1C:
      result = 1263693424;
      break;
    case 0x1D:
      result = 1263693411;
      break;
    case 0x1E:
      result = 1263693409;
      break;
    case 0x1F:
      result = 0x6D614E7473726946;
      break;
    case 0x20:
      result = 0x656D614E7473614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2146AF474()
{
  v0 = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  v2 = v1;
  if (v0 == NameAndPhoto.NameAndPhotoKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_2146AF510()
{
  sub_2146DA958();
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2146AF578(uint64_t a1)
{
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();

  return result;
}

uint64_t sub_2146AF5DC(uint64_t a1)
{
  sub_2146DA958();
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2146AF64C@<X0>(unint64_t *a1@<X8>)
{
  result = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BlastDoor::NameAndPhoto::NameAndPhotoKey_optional sub_2146AF6A8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = NameAndPhoto.NameAndPhotoKey.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2146AF6EC(uint64_t a1)
{
  v2 = sub_2146A3C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146AF728(uint64_t a1)
{
  v2 = sub_2146A3C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146AF764()
{
  sub_2146AE124();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t NameAndPhoto.bridgedToObjectiveC.getter()
{
  sub_2146AE124();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146AF874@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 225);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v5;
  v18[10] = *(v1 + 168);
  v18[11] = v2;
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v7;
  v18[6] = *(v1 + 104);
  v18[7] = v4;
  v8 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v8;
  v18[2] = *(v1 + 40);
  v18[3] = v6;
  v9 = *(v1 + 184);
  v10 = *(v1 + 216);
  a1[12] = *(v1 + 200);
  a1[13] = v10;
  *(a1 + 217) = *(v1 + 225);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v12;
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v14;
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  v15 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v15;
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  return sub_2142FA098(v18, &v17);
}

__n128 sub_2146AF960(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 225);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v6;
  v18[10] = *(v1 + 168);
  v18[11] = v3;
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v8;
  v18[6] = *(v1 + 104);
  v18[7] = v5;
  v9 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v9;
  v18[2] = *(v1 + 40);
  v18[3] = v7;
  sub_2142F9DF8(v18);
  v10 = *(a1 + 160);
  *(v1 + 184) = *(a1 + 176);
  v11 = *(a1 + 208);
  *(v1 + 200) = *(a1 + 192);
  *(v1 + 216) = v11;
  *(v1 + 225) = *(a1 + 217);
  v12 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v13;
  *(v1 + 168) = v10;
  v14 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v15;
  *(v1 + 104) = v12;
  result = *a1;
  v17 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v17;
  *(v1 + 40) = v14;
  return result;
}

uint64_t sub_2146AFA68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v4 = *(v1 + 264);
  v3 = *(v1 + 272);
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFAC4(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 280);

  sub_213FB7170(v7);
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  result = a1[1];
  *(v1 + 264) = result;
  *(v1 + 280) = v5;
  *(v1 + 288) = v6;
  return result;
}

uint64_t sub_2146AFB58@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 344);
  v9 = *(v1 + 328);
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 353);
  v3 = *(v10 + 9);
  v4 = *(v1 + 312);
  v8[0] = *(v1 + 296);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2142FA19C(v8, &v7);
}

__n128 sub_2146AFBA8(uint64_t a1)
{
  v3 = (v1 + 296);
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2142F9EF4(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_2146AFC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  v4 = *(v1 + 392);
  v3 = *(v1 + 400);
  v5 = *(v1 + 408);
  v6 = *(v1 + 416);
  *a1 = *(v1 + 376);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFC88(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 408);

  sub_213FB7170(v7);
  *(v1 + 376) = v3;
  *(v1 + 384) = v4;
  result = a1[1];
  *(v1 + 392) = result;
  *(v1 + 408) = v5;
  *(v1 + 416) = v6;
  return result;
}

uint64_t sub_2146AFD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  v4 = *(v1 + 440);
  v3 = *(v1 + 448);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  *a1 = *(v1 + 424);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFD78(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 456);

  sub_213FB7170(v7);
  *(v1 + 424) = v3;
  *(v1 + 432) = v4;
  result = a1[1];
  *(v1 + 440) = result;
  *(v1 + 456) = v5;
  *(v1 + 464) = v6;
  return result;
}

uint64_t sub_2146AFE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  v4 = *(v1 + 488);
  v3 = *(v1 + 496);
  v5 = *(v1 + 504);
  v6 = *(v1 + 512);
  *a1 = *(v1 + 472);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFE68(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 504);

  sub_213FB7170(v7);
  *(v1 + 472) = v3;
  *(v1 + 480) = v4;
  result = a1[1];
  *(v1 + 488) = result;
  *(v1 + 504) = v5;
  *(v1 + 512) = v6;
  return result;
}

uint64_t sub_2146AFEFC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 568);
  v10 = *(v1 + 552);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 584);
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 593);
  v6 = *(v1 + 536);
  v9[0] = *(v1 + 520);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2142FA348(v9, &v8);
}

__n128 sub_2146AFF58(uint64_t a1)
{
  v3 = (v1 + 520);
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_2142FA3F8(v9);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

unint64_t sub_2146B00B4@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_2146B0188(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_2146B02CC(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2146B03A4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_2146B0444(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0510(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B05B0;
  }

  return result;
}

void (*sub_2146B05F0(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B0690;
}

uint64_t sub_2146B06BC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0788(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9248;
  }

  return result;
}

uint64_t (*sub_2146B0828(uint64_t *a1))()
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B924C;
}

uint64_t sub_2146B08C8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0994(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9250;
  }

  return result;
}

void (*sub_2146B0A34(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B9254;
}

uint64_t sub_2146B0AD4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0BA0(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9258;
  }

  return result;
}

void (*sub_2146B0C40(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B925C;
}

uint64_t sub_2146B0D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 224);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 216);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2146B0D84(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2146B0E34(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0F00(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 224);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 216);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B0FA0;
  }

  return result;
}

uint64_t sub_2146B0FA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2146B10E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  v5 = *(a1 + 232);
  *a2 = *(a1 + 200);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146B1134(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 216);
  v9 = *(a2 + 224);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 200) = v4;
  *(a2 + 208) = v3;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  *(a2 + 232) = v7;
  return result;
}

void (*sub_2146B11BC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = *(v1 + 232);
  *v4 = *(v1 + 200);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B125C;
}

void sub_2146B125C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 216);
  v10 = *(v3 + 224);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
  }

  free(v2);
}

uint64_t (*sub_2146B1374(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

uint64_t (*sub_2146B1410(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

uint64_t sub_2146B14B0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_2146B14E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2146B154C(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B15F4(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 16);
  v6 = *(v1 + 40);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 32));

    *(v1 + 32) = a1;
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

void (*sub_2146B172C(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B17C8;
  }

  return result;
}

uint64_t sub_2146B17E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 32);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

void (*sub_2146B1854(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B18E8;
}

void sub_2146B1914(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2146B1980(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B1A28(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 48);
  v6 = *(v1 + 72);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 64));

    *(v1 + 64) = a1;
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

void (*sub_2146B1B60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B1BFC;
  }

  return result;
}

void sub_2146B1BFC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 48);
    v9 = *(v4 + 72);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 64) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 48);
  v9 = *(v4 + 72);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 64) = v3;
}

uint64_t sub_2146B1DD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 64);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

void (*sub_2146B1E48(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B1EDC;
}

void sub_2146B1EDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 64);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
  }

  free(v2);
}

uint64_t (*sub_2146B1FBC(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

uint64_t (*sub_2146B2058(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

uint64_t sub_2146B20F8(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void (*sub_2146B2140(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B17C8;
  }

  return result;
}

void (*sub_2146B21DC(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B18E8;
}

double sub_2146B2290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B2340(uint64_t a1, void (*a2)(void))
{
  v9 = a1;
  v5 = *(v2 + 16);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(&v9, &v8, v7))
  {
    a2(*(v2 + 32));

    *(v2 + 32) = a1;
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

uint64_t (*sub_2146B2488(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

void sub_2146B2524(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  if ((a2 & 1) == 0)
  {
    v10 = *a1;
    v8 = *(v6 + 16);
    v11 = *(v6 + 40);
    v12 = 0x6E776F6E6B6E753CLL;
    v13 = 0xE90000000000003ELL;
    v14 = 0xD00000000000001CLL;
    v15 = 0x800000021478A360;
    if (v8(&v10, &v11, &v12))
    {
      a3(a1[2]);

      *(v6 + 32) = v5;
      return;
    }

    goto LABEL_8;
  }

  v10 = *a1;
  v7 = *(v6 + 16);
  v11 = *(v6 + 40);
  v12 = 0x6E776F6E6B6E753CLL;
  v13 = 0xE90000000000003ELL;
  v14 = 0xD00000000000001CLL;
  v15 = 0x800000021478A360;

  if ((v7(&v10, &v11, &v12) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  a3(a1[2]);

  *(v6 + 32) = v5;
}

uint64_t sub_2146B2744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 24);
  v13 = *(a2 + 32);

  a5(v11);

  result = a6(v13);
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t (*sub_2146B27D0(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

void sub_2146B2864(uint64_t **a1, char a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[4];
  v8 = **a1;
  v7 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = *(*a1 + 24);
  v11 = *(v6 + 32);
  if (a2)
  {

    a4(v9);

    a3(v11);
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    v13 = v5[2];

    a3(v13);
  }

  else
  {

    a3(v11);
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
  }

  free(v5);
}

void sub_2146B2944(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2146B29B0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B2A58(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 16));

    *(v1 + 16) = a1;
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

void (*sub_2146B2B90(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B2C2C;
  }

  return result;
}

void sub_2146B2C2C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *v4;
    v9 = *(v4 + 24);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 16) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *v4;
  v9 = *(v4 + 24);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 16) = v3;
}

uint64_t sub_2146B2E04(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 16);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void (*sub_2146B2E78(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B2F0C;
}

void sub_2146B2F0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 16);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

void sub_2146B2FCC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2146B3038(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B30E0(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 32);
  v6 = *(v1 + 56);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 48));

    *(v1 + 48) = a1;
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

void (*sub_2146B3218(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B32B4;
  }

  return result;
}

void sub_2146B32B4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 32);
    v9 = *(v4 + 56);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 48) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 32);
  v9 = *(v4 + 56);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 48) = v3;
}

uint64_t sub_2146B348C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 48);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return result;
}

void (*sub_2146B3500(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B3594;
}

void sub_2146B3594(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 48);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
  }

  free(v2);
}

void sub_2146B3654(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2146B36C0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146B3768(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 64);
  v6 = *(v1 + 88);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 80));

    *(v1 + 80) = a1;
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

void (*sub_2146B38A0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B393C;
  }

  return result;
}

void sub_2146B393C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 64);
    v9 = *(v4 + 88);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 80) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 64);
  v9 = *(v4 + 88);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 80) = v3;
}

uint64_t sub_2146B3B14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 80);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  return result;
}

void (*sub_2146B3B88(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B3C1C;
}

void sub_2146B3C1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 80);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
  }

  free(v2);
}

void sub_2146B3CDC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_2146B3E24(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146B3EC0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2146B3F58(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2146B4024(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2146B40C4;
  }

  return result;
}

uint64_t sub_2146B4104(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if (a2)
  {
    a4(*a1, v7);
    a3(v6, v7, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    a5(v6, v7);
  }

  else
  {
    a3(*a1, v7, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return (a5)(v6, v7);
}

void (*sub_2146B426C(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2146B430C;
}

void sub_2146B4338(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v17 = *(*a1 + 32);
  v11 = *(v6 + 56);
  v12 = *(v6 + 64);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v12);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v17;
    v14 = v5[2];
    v15 = v5[3];

    a3(v14, v15);
  }

  else
  {

    a3(v11, v12);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v17;
  }

  free(v5);
}

uint64_t sub_2146B444C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4518(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B45B8;
  }

  return result;
}

uint64_t (*sub_2146B45BC(uint64_t *a1))()
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B465C;
}

void sub_2146B4660(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 96);
  v10 = *(v3 + 104);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

uint64_t sub_2146B4740(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B480C(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B48AC;
  }

  return result;
}

void (*sub_2146B48B0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B4950;
}

uint64_t sub_2146B4954(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4A20(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B4AC0;
  }

  return result;
}

void (*sub_2146B4AC4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B4B64;
}

uint64_t sub_2146B4BA4(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t sub_2146B4BD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 232);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2146B4C48(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2146B4CF8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4DC4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 240);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 232);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B4E64;
  }

  return result;
}

uint64_t sub_2146B4E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2146B4FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  *a2 = *(a1 + 216);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146B4FF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 232);
  v9 = *(a2 + 240);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v5;
  *(a2 + 240) = v6;
  *(a2 + 248) = v7;
  return result;
}

void (*sub_2146B5080(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B5120;
}

void sub_2146B5120(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 232);
  v10 = *(v3 + 240);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

uint64_t NameAndPhotoNameOnlyUpdate.firstName.getter()
{
  v1 = *v0;

  return v1;
}

void NameAndPhotoNameOnlyUpdate.firstName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t NameAndPhotoNameOnlyUpdate.lastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void NameAndPhotoNameOnlyUpdate.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t NameAndPhotoNameOnlyUpdate.updateInfoIncluded.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void NameAndPhoto.UpdateType.init(from:)(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = __dst[0];
  v6 = __dst[1];
  if (!__dst[1])
  {
    goto LABEL_22;
  }

  v7 = __dst[0] == 0xD000000000000012 && 0x80000002147A71F0 == __dst[1];
  if (v7 || (sub_2146DA6A8() & 1) != 0)
  {
    sub_2146B5778(__srca, __src);
    if (v2)
    {
      return;
    }

    memcpy(v24, __srca, sizeof(v24));
    sub_214323040(v24);
    v8 = v24;
    goto LABEL_16;
  }

  if ((v5 != 0x796C6E4F656D614ELL || v6 != 0xEE00657461647055) && (sub_2146DA6A8() & 1) == 0)
  {
    if (v5 == 0xD000000000000010 && 0x80000002147A71D0 == v6 || (sub_2146DA6A8() & 1) != 0)
    {
      sub_2146B6C60(v24, __src);
      if (v2)
      {
        return;
      }

      *&__srca[192] = *&v24[192];
      *&__srca[208] = *&v24[208];
      *&__srca[224] = *&v24[224];
      *&__srca[233] = *&v24[233];
      *&__srca[128] = *&v24[128];
      *&__srca[144] = *&v24[144];
      *&__srca[160] = *&v24[160];
      *&__srca[176] = *&v24[176];
      *&__srca[64] = *&v24[64];
      *&__srca[80] = *&v24[80];
      *&__srca[96] = *&v24[96];
      *&__srca[112] = *&v24[112];
      *__srca = *v24;
      *&__srca[16] = *&v24[16];
      *&__srca[32] = *&v24[32];
      *&__srca[48] = *&v24[48];
      sub_214322E90(__srca);
LABEL_15:
      v8 = __srca;
LABEL_16:
      memcpy(v26, v8, sizeof(v26));
      memcpy(a2, v26, 0x261uLL);
      return;
    }

LABEL_22:
    if (qword_27C902F38 != -1)
    {
      swift_once();
    }

    v14 = sub_2146D9208();
    __swift_project_value_buffer(v14, qword_27C9046E0);
    sub_2146A51CC(__dst, __srca);
    v15 = sub_2146D91E8();
    v16 = sub_2146D9BA8();
    sub_2146A5204(__dst);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v24 = v18;
      *v17 = 136446210;
      if (v6)
      {
        *__srca = v5;
        *&__srca[8] = v6;

        v19 = sub_2146D9618();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_2144AEA38(v19, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_213FAF000, v15, v16, "Unknown NameAndPhoto type: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
    }

    sub_2146B7BDC();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    goto LABEL_30;
  }

  v9 = __dst[47];
  v10 = __dst[49];
  if (__dst[47] | __dst[49])
  {
    v12 = __dst[46];
    v13 = __dst[48];

    sub_2146A5204(__dst);
    *__srca = v12;
    *&__srca[8] = v9;
    *&__srca[16] = v13;
    *&__srca[24] = v10;
    *&__srca[32] = __dst[14];
    __srca[40] = __dst[15];
    sub_214322F68(__srca);
    goto LABEL_15;
  }

  sub_2146B7BDC();
  swift_allocError();
  *v11 = 0xD00000000000002ALL;
  v11[1] = 0x80000002147A7210;
LABEL_30:
  swift_willThrow();
  sub_2146A5204(__dst);
}

__n128 sub_2146B5778@<Q0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, 0x190uLL);
  v2 = __dst[21];
  if (__dst[21] >= 3uLL)
  {
    v2 = 3;
  }

  if (LOBYTE(__dst[22]))
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  v54 = BYTE1(__dst[22]);
  v55 = v3;
  v52 = BYTE3(__dst[22]);
  v53 = BYTE2(__dst[22]);
  if (__dst[13])
  {
    if (__dst[12] == 5457241 && __dst[13] == 0xE300000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2146DA6A8() & 1;
    }
  }

  else
  {
    v4 = 2;
  }

  v70 = v4;
  v5 = __dst[23];
  v110 = __dst[24];
  v6 = __dst[6];
  v7 = __dst[7];
  v8 = __dst[8];
  v9 = __dst[9];
  v10 = __dst[10];
  v11 = __dst[11];
  v12 = __dst[16];
  v13 = __dst[17];
  v97 = __dst[25];
  v99 = __dst[26];
  sub_213FDCA18(__dst[25], __dst[26]);
  v82 = v6;
  v84 = v7;
  sub_213FDCA18(v6, v7);
  v74 = v9;
  sub_213FDCA18(v8, v9);
  v61 = v11;
  sub_213FDCA18(v10, v11);
  sub_213FDCA18(v12, v13);
  sub_2146ABB50(v130);
  v14 = *&v130[8];
  v15 = *v130;
  v16 = *&v130[16];
  LOBYTE(v7) = v131;
  sub_2146ABCA4(v127);
  v103 = *v127;
  v59 = *&v127[8];
  v58 = *&v127[24];
  LODWORD(v157) = v128;
  sub_2146ABE0C(&v123);
  v108 = v123;
  v65 = v124;
  v62 = *(&v123 + 1);
  v63 = *(&v124 + 1);
  v105 = v125;
  sub_2146ABF7C(&v117);
  v93 = v117;
  v67 = v118;
  v86 = v120;
  v88 = v119;
  v90 = v121;
  sub_2146AC0EC(&v146);
  v17 = v146;
  v75 = v148;
  v77 = v147;
  v79 = v149;
  sub_2146AC25C(&v142);
  v72 = v142;
  v68 = v143;
  v73 = v144;
  v71 = v145;
  *v127 = v5;
  *&v127[8] = v110;
  v69 = v7;
  LOBYTE(v123) = v7;
  *v130 = 0xD000000000000052;
  *&v130[8] = 0x8000000214791A00;
  *&v130[16] = 0xD00000000000001CLL;
  *&v130[24] = 0x800000021478A360;

  sub_213FDC9D0(v16, *(&v16 + 1));
  v101 = v14;
  v18 = v15(v127, &v123, v130);
  if (v57)
  {
    sub_213FDC6BC(v12, v13);
    sub_213FDC6BC(v10, v11);
    sub_213FDC6BC(v8, v74);
    v19 = v99;
    v20 = v14;
  }

  else
  {
    if (v18)
    {
      sub_213FDC6D0(v16, *(&v16 + 1));

      sub_213FDC6D0(v16, *(&v16 + 1));
      *v130 = v103;
      *&v130[8] = v59;
      *&v130[24] = v58;
      LOBYTE(v131) = v157;

      sub_21404F7E0(*(&v59 + 1), v58);
      v157 = "meCloudKitRecordID";
      sub_214032118(v97, v99, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

      *v51 = *&v130[8];
      v104 = *v130;
      *&v51[8] = *&v130[16];
      LODWORD(v157) = v131;

      sub_214032564(*(&v59 + 1), v58);
      *v130 = v108;
      *&v130[8] = v62;
      *&v130[16] = v65;
      *&v130[24] = v63;
      LOBYTE(v131) = v105;

      sub_21404F7E0(v65, v63);
      sub_214032118(v82, v84, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

      v22 = *v130;
      v60 = *&v130[16];
      v106 = v131;

      sub_214032564(v65, v63);
      *v130 = v93;
      *&v130[8] = v67;
      *&v130[16] = v88;
      *&v130[24] = v86;
      LOBYTE(v131) = v90;

      sub_21404F7E0(v88, v86);
      sub_214032118(v8, v74, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

      v94 = *v130;
      v23 = *&v130[16];
      v64 = *&v130[8];
      v66 = *&v130[24];
      v91 = v131;

      sub_214032564(v88, v86);
      *v130 = v17;
      *&v130[16] = v77;
      *&v130[24] = v75;
      LOBYTE(v131) = v79;

      sub_21404F7E0(v77, v75);
      sub_214032118(v10, v61, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

      v24 = *v130;
      v25 = *&v130[16];
      v80 = v131;

      sub_214032564(v77, v75);
      v146 = v72;
      v147 = v68;
      v148 = v73;
      v149 = v71;

      sub_21404F7E0(v68, v73);
      sub_214032118(v12, v13, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(v12, v13);
      sub_213FDC6BC(v10, v61);
      sub_213FDC6BC(v8, v74);
      sub_213FDC6BC(v82, v84);
      sub_213FDC6BC(v97, v99);

      v26 = v147;
      v27 = v148;
      v28 = v149;

      sub_214032564(v68, v73);
      *v130 = __PAIR128__(v101, v15);
      *&v130[16] = v5;
      *&v130[24] = v110;
      LOBYTE(v131) = v69;
      *(&v131 + 1) = *v155;
      DWORD1(v131) = *&v155[3];
      *(&v131 + 1) = v104;
      v132 = *v51;
      *&v133 = *&v51[16];
      BYTE8(v133) = v157;
      *(&v133 + 9) = *v154;
      HIDWORD(v133) = *&v154[3];
      v134 = v22;
      v135 = v60;
      LOBYTE(v136) = v106;
      *(&v136 + 1) = *v153;
      DWORD1(v136) = *&v153[3];
      *(&v136 + 1) = v94;
      *&v137 = v64;
      *(&v137 + 1) = v23;
      *&v138 = v66;
      BYTE8(v138) = v91;
      *(&v138 + 9) = *v152;
      HIDWORD(v138) = *&v152[3];
      v139 = v24;
      v140 = v25;
      v141[0] = v80;
      v141[1] = v70;
      *&v141[6] = v151;
      *&v141[2] = v150;
      *&v141[8] = v146;
      *&v141[24] = v26;
      *&v141[32] = v27;
      v141[40] = v28;
      v29 = __dst[27];
      LOBYTE(v26) = __dst[28];
      v30 = __dst[29];

      sub_2142266C0(v29, v26, v30, v127);
      v157 = *v127;
      v31 = v127[8];
      v32 = *&v127[16];
      v33 = v128;
      LOBYTE(v26) = BYTE8(v128);
      v34 = __dst[30];
      LOBYTE(v30) = __dst[31];
      v35 = __dst[33];
      v36 = __dst[32];

      sub_214226FF8(v34, v30, v35, v36, v127);
      v107 = v31;
      v111 = v33;
      v109 = v26;
      v125 = v128;
      v126[0] = v129[0];
      *(v126 + 9) = *(v129 + 9);
      v123 = *v127;
      v124 = *&v127[16];
      LOBYTE(v34) = __dst[35];
      v37 = __dst[34];
      v38 = __dst[36];

      sub_214227EC0(v37, v34, v38, &v117);
      v39 = v117;
      LOBYTE(v26) = v118;
      v102 = v119;
      v40 = v120;
      v41 = v121;
      v100 = v122;
      v42 = __dst[38];
      v43 = __dst[37];
      v44 = __dst[39];

      sub_214228800(v43, v42, v44, &v117);
      LOBYTE(v44) = v118;
      v92 = v119;
      v95 = v117;
      v96 = v120;
      v98 = v121;
      v89 = v122;
      LOBYTE(v34) = __dst[41];
      v45 = __dst[40];
      v46 = __dst[42];

      sub_21422914C(v45, v34, v46, &v117);
      v81 = v118;
      v78 = v119;
      v83 = v117;
      v85 = v120;
      v87 = v121;
      v76 = v122;
      v47 = __dst[43];
      v48 = __dst[44];
      v49 = __dst[45];

      sub_214229A98(v47, v48, v49, v115);
      sub_2146A5204(__dst);
      *&v114[179] = v140;
      *&v114[195] = *v141;
      *&v114[211] = *&v141[16];
      *&v114[220] = *&v141[25];
      *&v114[115] = v136;
      *&v114[131] = v137;
      *&v114[147] = v138;
      *&v114[163] = v139;
      *&v114[51] = v132;
      *&v114[67] = v133;
      *&v113[23] = v124;
      *&v113[39] = v125;
      *&v113[55] = v126[0];
      *&v114[83] = v134;
      *&v114[99] = v135;
      *&v114[3] = *v130;
      *&v114[19] = *&v130[16];
      *&v114[35] = v131;
      *&v113[64] = *(v126 + 9);
      *&v113[7] = v123;
      *&v112[7] = v115[0];
      *&v112[23] = v115[1];
      *&v112[80] = *(v116 + 9);
      *&v112[71] = v116[0];
      *&v112[55] = v115[3];
      *&v112[39] = v115[2];
      *a1 = __dst[18];
      *(a1 + 1) = v55;
      *(a1 + 2) = v54;
      *(a1 + 3) = v53;
      *(a1 + 4) = v52;
      *(a1 + 181) = *&v114[176];
      *(a1 + 197) = *&v114[192];
      *(a1 + 213) = *&v114[208];
      *(a1 + 225) = *&v114[220];
      *(a1 + 117) = *&v114[112];
      *(a1 + 133) = *&v114[128];
      *(a1 + 149) = *&v114[144];
      *(a1 + 165) = *&v114[160];
      *(a1 + 53) = *&v114[48];
      *(a1 + 69) = *&v114[64];
      *(a1 + 85) = *&v114[80];
      *(a1 + 101) = *&v114[96];
      *(a1 + 5) = *v114;
      *(a1 + 21) = *&v114[16];
      *(a1 + 37) = *&v114[32];
      a1[31] = v157;
      *(a1 + 256) = v107;
      *(a1 + 33) = v32;
      a1[35] = v111;
      *(a1 + 288) = v109;
      *(a1 + 321) = *&v113[32];
      *(a1 + 337) = *&v113[48];
      *(a1 + 353) = *&v113[64];
      *(a1 + 289) = *v113;
      *(a1 + 305) = *&v113[16];
      a1[47] = v39;
      *(a1 + 384) = v26;
      a1[49] = v102;
      a1[50] = v40;
      a1[51] = v41;
      *(a1 + 416) = v100;
      a1[53] = v95;
      *(a1 + 432) = v44;
      a1[55] = v92;
      a1[56] = v96;
      a1[57] = v98;
      *(a1 + 464) = v89;
      a1[59] = v83;
      *(a1 + 480) = v81;
      a1[61] = v78;
      a1[62] = v85;
      a1[63] = v87;
      *(a1 + 512) = v76;
      *(a1 + 545) = *&v112[32];
      *(a1 + 561) = *&v112[48];
      *(a1 + 577) = *&v112[64];
      *(a1 + 593) = *&v112[80];
      result = *v112;
      *(a1 + 513) = *v112;
      *(a1 + 529) = *&v112[16];
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000052;
    v21[1] = 0x8000000214791A00;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v12, v13);
    sub_213FDC6BC(v10, v11);
    sub_213FDC6BC(v8, v74);
    v19 = v99;
    v20 = v14;
  }

  sub_213FDC6BC(v82, v84);
  sub_213FDC6BC(v97, v19);
  sub_2146A5204(__dst);

  sub_213FDC6D0(v16, *(&v16 + 1));
  *v130 = v15;
  *&v130[8] = v20;
  *&v130[16] = v16;
  LOBYTE(v131) = v69;
  *(&v131 + 1) = *v155;
  DWORD1(v131) = *&v155[3];
  *(&v131 + 1) = v103;
  v132 = v59;
  *&v133 = v58;
  BYTE8(v133) = v157;
  *(&v133 + 9) = *v154;
  HIDWORD(v133) = *&v154[3];
  *&v134 = v108;
  *(&v134 + 1) = v62;
  *&v135 = v65;
  *(&v135 + 1) = v63;
  LOBYTE(v136) = v105;
  DWORD1(v136) = *&v153[3];
  *(&v136 + 1) = *v153;
  *(&v136 + 1) = v93;
  *&v137 = v67;
  *(&v137 + 1) = v88;
  *&v138 = v86;
  BYTE8(v138) = v90;
  *(&v138 + 9) = *v152;
  HIDWORD(v138) = *&v152[3];
  v139 = v17;
  *&v140 = v77;
  *(&v140 + 1) = v75;
  v141[0] = v79;
  v141[1] = v70;
  *&v141[6] = v151;
  *&v141[2] = v150;
  *&v141[8] = v72;
  *&v141[24] = v68;
  *&v141[32] = v73;
  v141[40] = v71;
  sub_2142F9DF8(v130);
  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.init(from:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v11, __src, sizeof(v11));
  v3 = v11[47];
  v4 = v11[49];
  if (v11[47] | v11[49])
  {
    v7 = v11[46];
    v8 = v11[48];

    result = sub_2146A5204(v11);
    v9 = v11[14];
    v10 = v11[15];
    *a2 = v7;
    *(a2 + 8) = v3;
    *(a2 + 16) = v8;
    *(a2 + 24) = v4;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
  }

  else
  {
    sub_2146A5204(v11);
    sub_2146B7BDC();
    swift_allocError();
    *v5 = 0xD00000000000002ALL;
    v5[1] = 0x80000002147A7210;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_2146B6C60@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x190uLL);
  if (!__dst[3])
  {
    sub_2146A5204(__dst);
    v6 = 0x8000000214795240;
    sub_2146B7BDC();
    swift_allocError();
    v8 = 0xD000000000000016;
    goto LABEL_5;
  }

  v5 = __dst[5];
  if (__dst[5] >> 60 == 15)
  {
    sub_2146A5204(__dst);
    v6 = 0x8000000214795260;
    sub_2146B7BDC();
    swift_allocError();
    v8 = 0xD00000000000001DLL;
LABEL_5:
    *v7 = v8;
    v7[1] = v6;
    return swift_willThrow();
  }

  v50 = v3;
  v42 = a1;
  v10 = __dst[4];
  v84 = __dst[2];
  v86 = __dst[3];
  v77 = __dst[4];
  v78 = __dst[5];
  if (__dst[13])
  {

    sub_213FDCA18(v10, v5);

    v11 = sub_2146D9588();

    v62 = [v11 BOOLValue];
  }

  else
  {

    sub_213FDCA18(v10, v5);
    v62 = 0;
  }

  v12 = __dst[6];
  v13 = __dst[7];
  v14 = __dst[8];
  v15 = __dst[9];
  v85 = __dst[10];
  v16 = __dst[11];
  v61 = __dst[14];
  v150 = LOBYTE(__dst[15]);
  v17 = __dst[16];
  v18 = __dst[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059904;
  v21[3] = 0;
  v21[4] = 16;
  *(v20 + 16) = sub_214059804;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  v73 = v12;
  sub_213FDCA18(v12, v13);
  v68 = v15;
  sub_213FDCA18(v14, v15);
  v54 = v16;
  sub_213FDCA18(v85, v16);
  v22 = v17;
  sub_213FDCA18(v17, v18);
  sub_214042B80(v19, &v87);
  v23 = v87;
  v24 = v89;
  v43 = v88;
  v25 = v90;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059904;
  v28[3] = 0;
  v28[4] = 16;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_2143A571C;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, &v135);
  v29 = v135;
  v46 = v136;
  v48 = v137;
  v44 = v138;
  v80 = v139;
  sub_2146AAE04(v133);
  v82 = v133[0];
  v79 = v133[2];
  v51 = v133[1];
  v52 = v133[3];
  v149 = v134;
  sub_2146AAF74(v131);
  v76 = v131[0];
  v55 = v131[1];
  v56 = v131[2];
  v71 = v131[3];
  v74 = v132;
  sub_2146AB0E4(v129);
  v67 = v129[0];
  v60 = v129[2];
  v58 = v129[1];
  v59 = v129[3];
  v69 = v130;
  sub_2146AB254(&v125);
  v66 = v125;
  v63 = v126;
  v64 = v127;
  v65 = v128;
  v140 = v150;
  v135 = v84;
  v136 = v86;
  LOBYTE(v133[0]) = v25;
  *&v87 = 0xD00000000000002BLL;
  *(&v87 + 1) = 0x800000021478F110;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  v30 = (v23)(&v135, v133, &v87);
  if (v50)
  {
    sub_2146A5204(__dst);
    v31 = v22;
  }

  else
  {
    if (v30)
    {

      *&v87 = v29;
      *(&v87 + 1) = v46;
      v88 = v48;
      v89 = v44;
      v90 = v80;

      sub_213FDCA18(v48, v44);
      sub_214032024(v77, v78, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

      v33 = v87;
      v40 = v88;
      v41 = v89;
      v81 = v90;

      sub_213FDC6BC(v48, v44);
      *&v87 = v82;
      *(&v87 + 1) = v51;
      v88 = v79;
      v89 = v52;
      v90 = v149;

      sub_21404F7E0(v79, v52);
      sub_214032118(v73, v13, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

      v83 = v87;
      v45 = v88;
      v47 = *(&v87 + 1);
      v49 = v89;
      v149 = v90;

      sub_214032564(v79, v52);
      *&v87 = v76;
      *(&v87 + 1) = v55;
      v88 = v56;
      v89 = v71;
      v90 = v74;

      sub_21404F7E0(v56, v71);
      sub_214032118(v14, v68, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

      v34 = v87;
      v53 = v88;
      v39 = v89;
      v75 = v90;

      sub_214032564(v56, v71);
      *&v87 = v67;
      *(&v87 + 1) = v58;
      v88 = v60;
      v89 = v59;
      v90 = v69;

      sub_21404F7E0(v60, v59);
      sub_214032118(v85, v54, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

      v35 = v87;
      v57 = v88;
      v72 = v89;
      v70 = v90;

      sub_214032564(v60, v59);
      v87 = v66;
      v88 = v63;
      v89 = v64;
      v90 = v65;

      sub_21404F7E0(v63, v64);
      sub_214032118(v22, v18, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);
      sub_2146A5204(__dst);
      sub_213FDC6BC(v22, v18);
      sub_213FDC6BC(v85, v54);
      sub_213FDC6BC(v14, v68);
      sub_213FDC6BC(v73, v13);
      sub_213FDC6BC(v77, v78);

      v36 = v88;
      v37 = v89;
      v38 = v90;

      result = sub_214032564(v63, v64);
      *v42 = v23;
      v42[2] = v84;
      v42[3] = v86;
      *(v42 + 32) = v25;
      *(v42 + 33) = *v147;
      *(v42 + 9) = *&v147[3];
      *(v42 + 5) = v33;
      v42[7] = v40;
      v42[8] = v41;
      *(v42 + 72) = v81;
      *(v42 + 73) = *v146;
      *(v42 + 19) = *&v146[3];
      v42[10] = v83;
      v42[11] = v47;
      v42[12] = v45;
      v42[13] = v49;
      *(v42 + 112) = v149;
      *(v42 + 113) = *v145;
      *(v42 + 29) = *&v145[3];
      *(v42 + 15) = v34;
      v42[17] = v53;
      v42[18] = v39;
      *(v42 + 152) = v75;
      *(v42 + 153) = *v144;
      *(v42 + 39) = *&v144[3];
      *(v42 + 10) = v35;
      v42[22] = v57;
      v42[23] = v72;
      *(v42 + 192) = v70;
      *(v42 + 193) = v62;
      *(v42 + 99) = v143;
      *(v42 + 194) = v142;
      v42[25] = v61;
      *(v42 + 208) = v150;
      *(v42 + 53) = *(v141 + 3);
      *(v42 + 209) = v141[0];
      *(v42 + 27) = v87;
      v42[29] = v36;
      v42[30] = v37;
      *(v42 + 248) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000002BLL;
    v32[1] = 0x800000021478F110;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2146A5204(__dst);
    v31 = v22;
  }

  sub_213FDC6BC(v31, v18);
  sub_213FDC6BC(v85, v54);
  sub_213FDC6BC(v14, v68);
  sub_213FDC6BC(v73, v13);
  sub_213FDC6BC(v77, v78);

  v87 = v23;
  v88 = v43;
  v89 = v24;
  v90 = v25;
  *v91 = *v147;
  *&v91[3] = *&v147[3];
  v92 = v29;
  v93 = v46;
  v94 = v48;
  v95 = v44;
  v96 = v80;
  *v97 = *v146;
  *&v97[3] = *&v146[3];
  v98 = v82;
  v99 = v51;
  v100 = v79;
  v101 = v52;
  v102 = v149;
  *&v103[3] = *&v145[3];
  *v103 = *v145;
  v104 = v76;
  v105 = v55;
  v106 = v56;
  v107 = v71;
  v108 = v74;
  *v109 = *v144;
  *&v109[3] = *&v144[3];
  v110 = v67;
  v111 = v58;
  v112 = v60;
  v113 = v59;
  v114 = v69;
  v115 = v62;
  v117 = v143;
  v116 = v142;
  v118 = v61;
  v119 = v150;
  *&v120[3] = *(v141 + 3);
  *v120 = v141[0];
  v121 = v66;
  v122 = v63;
  v123 = v64;
  v124 = v65;
  return sub_2142FA450(&v87);
}

unint64_t sub_2146B7BDC()
{
  result = qword_27C918018;
  if (!qword_27C918018)
  {
    result = swift_getWitnessTable(aX_13, &type metadata for NameAndPhotoUnpackerError, v0, v1);
    atomic_store(result, &qword_27C918018);
  }

  return result;
}

void sub_2146B7C30(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_213FB2E54(a1 + 32, &v44, &qword_27C903FE0, &unk_2146EA760);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_213FDC730(v46, v41);
  v9 = *a3;
  v10 = sub_21408C300(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2140506C8(v15, a2 & 1);
    v10 = sub_21408C300(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2146DA8D8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_214482C24();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_213FDC730(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_213FB2E54(v25, &v44, &qword_27C903FE0, &unk_2146EA760);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_213FDC730(v46, v41);
      v29 = *a3;
      v30 = sub_21408C300(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_2140506C8(v34, 1);
        v30 = sub_21408C300(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_213FDC730(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A7110);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](39, 0xE100000000000000);
  sub_2146DA018();
  __break(1u);
}

unint64_t sub_2146B803C()
{
  result = qword_27C918020;
  if (!qword_27C918020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NameAndPhoto.NameAndPhotoKey, &type metadata for NameAndPhoto.NameAndPhotoKey, v0, v1);
    atomic_store(result, &qword_27C918020);
  }

  return result;
}

unint64_t sub_2146B8094()
{
  result = qword_27C918028;
  if (!qword_27C918028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NameAndPhoto.NameAndPhotoKey, &type metadata for NameAndPhoto.NameAndPhotoKey, v0, v1);
    atomic_store(result, &qword_27C918028);
  }

  return result;
}

unint64_t sub_2146B80EC()
{
  result = qword_27C918030;
  if (!qword_27C918030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NameAndPhoto.NameAndPhotoKey, &type metadata for NameAndPhoto.NameAndPhotoKey, v0, v1);
    atomic_store(result, &qword_27C918030);
  }

  return result;
}

unint64_t sub_2146B8170()
{
  result = qword_27C918038;
  if (!qword_27C918038)
  {
    result = swift_getWitnessTable(asc_2147815A0, &type metadata for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings.Audience, v0, v1);
    atomic_store(result, &qword_27C918038);
  }

  return result;
}

uint64_t sub_2146B83D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_51Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a3 = *(a1 + 16);
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;

  return a2(v4);
}

uint64_t get_enum_tag_for_layout_string_SaySSGSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146B84BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 609))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256) >> 1;
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

double sub_2146B850C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 600) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 608) = 0;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 609) = 1;
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
      result = 0.0;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 256) = 2 * -a2;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      *(a1 + 552) = 0u;
      *(a1 + 568) = 0u;
      *(a1 + 584) = 0u;
      *(a1 + 593) = 0u;
      return result;
    }

    *(a1 + 609) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8650(uint64_t result, uint64_t a2)
{
  v2 = *(result + 288);
  v3 = *(result + 336);
  v4 = *(result + 368);
  v5 = *(result + 416);
  v6 = *(result + 464);
  v7 = *(result + 512);
  v8 = *(result + 544);
  v9 = *(result + 304) & 1;
  v10 = *(result + 384) & 1;
  v11 = *(result + 432) & 1;
  v12 = *(result + 480) & 1;
  v13 = *(result + 576) | (a2 << 62);
  *(result + 256) &= 1uLL;
  *(result + 288) = v2;
  *(result + 304) = v9;
  *(result + 336) = v3;
  *(result + 368) = v4;
  *(result + 384) = v10;
  *(result + 416) = v5;
  *(result + 432) = v11;
  *(result + 464) = v6;
  *(result + 480) = v12;
  *(result + 512) = v7;
  *(result + 544) = v8;
  *(result + 576) = v13;
  return result;
}

uint64_t sub_2146B86F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 609))
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

uint64_t sub_2146B873C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 584) = 0u;
    *(result + 608) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 609) = 1;
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

    *(result + 609) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 4))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2146B893C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t sub_2146B8984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2146B8A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2146B8B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_2146B8BEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_2146B8C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2146B8D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor25NameAndPhotoUnpackerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2146B8DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2146B8DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2146B8E58(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2146B8E88()
{
  result = qword_27C918040;
  if (!qword_27C918040)
  {
    result = swift_getWitnessTable(byte_214781608, &type metadata for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings.Audience, v0, v1);
    atomic_store(result, &qword_27C918040);
  }

  return result;
}

uint64_t sub_2146B8F14(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = *a1;
  v7 = *a2;
  v4 = *(v3 + 16);
  v6 = a3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2146B8F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918048, &qword_214783CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2146B8FD0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  if (*a1)
  {
    v7 = *a3;
    v12 = *a1;
    MEMORY[0x28223BE20](a1);
    v10[2] = &v12;
    v11 = 2;

    v8 = (a5)(a4, v10, v7);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2146B912C(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = **(v1 + 16);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v6 = *(v5 + 16);
  v8 = v2;
  return v6(&v9, &v8) & 1;
}

uint64_t sub_2146B9190(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[2] = &v7;
  v6 = v3;
  return sub_2140425C0(sub_2146B912C, v5, v2) & 1;
}

uint64_t sub_2146B9290@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v52 - v6;
  MEMORY[0x28223BE20](v5);
  v61 = &v52 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v73 = *(v67 - 8);
  v8 = MEMORY[0x28223BE20](v67);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = sub_2146D8D48();
  v70 = v15;
  v74 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v72 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v66 = &v52 - v25;
  MEMORY[0x28223BE20](v24);
  v56 = &v52 - v26;
  v27 = sub_2146D8D88();
  v28 = *(v27 - 8);
  v54 = *(v28 + 56);
  v55 = v28 + 56;
  v54(v20, 1, 1, v27);
  sub_2146D8C38();
  v53 = v12;
  sub_2146B9A10(v12);
  v57 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v29 = MEMORY[0x277D83E40];
  v52 = v14;
  v30 = v67;
  sub_2146D8D28();
  v69 = *(v73 + 8);
  v73 += 8;
  v69(v12, v30);
  v31 = *(v74 + 8);
  v74 += 8;
  v71 = v31;
  v31(v17, v15);
  sub_214503110(v20);
  v32 = v66;
  MEMORY[0x216053B60](v14, v29);
  v33 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88, MEMORY[0x277D853F8]);
  MEMORY[0x216053AF0](v32, v21, v33);
  v68 = *(v72 + 8);
  v72 += 8;
  v68(v32, v21);
  v54(v20, 1, 1, v27);
  sub_2146D8C38();
  sub_2146D8D68();
  v34 = v60;
  sub_2146D8D78();
  v35 = sub_2145030B8();
  v36 = v61;
  v37 = v62;
  MEMORY[0x216053AF0](v34, v62, v35);
  v38 = *(v63 + 8);
  v38(v34, v37);
  v39 = v53;
  sub_2146D8C08();
  v38(v36, v37);
  v40 = v52;
  v41 = v39;
  v42 = MEMORY[0x277D83E40];
  v43 = v67;
  sub_2146D8D28();
  v69(v41, v43);
  v71(v17, v70);
  sub_214503110(v20);
  v44 = v58;
  MEMORY[0x216053B60](v40, v42);
  v45 = v66;
  MEMORY[0x216053AF0](v44, v21, v33);
  v68(v44, v21);
  v46 = v56;
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v47 = v64;
  sub_2146D8D08();
  sub_2146D8CD8();
  v48 = v47;
  v49 = v69;
  v69(v48, v43);
  v49(v41, v43);
  v71(v17, v70);
  v49(v40, v43);
  v50 = v68;
  v68(v45, v21);
  return v50(v46, v21);
}

uint64_t sub_2146B9A10@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v57 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - v14;
  v54 = sub_2146D8D48();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v55 = *(v48 - 8);
  v20 = MEMORY[0x28223BE20](v48);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v52 = &v44 - v23;
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v25 = sub_2145030B8();
  MEMORY[0x216053AF0](v6, v1, v25);
  v26 = *(v2 + 8);
  v26(v6, v1);
  sub_2146D8C08();
  v26(v8, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v27 = MEMORY[0x277D83E40];
  v28 = v49;
  v29 = v13;
  v45 = v13;
  v30 = v53;
  sub_2146D8D28();
  v31 = *(v57 + 8);
  v57 += 8;
  v31(v29, v30);
  v32 = *(v56 + 8);
  v56 += 8;
  v47 = v32;
  v32(v16, v54);
  sub_214503110(v19);
  v33 = v28;
  MEMORY[0x216053B60](v28, v27);
  v34 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88, MEMORY[0x277D853F8]);
  v35 = v48;
  MEMORY[0x216053AF0](v22, v48, v34);
  v36 = *(v55 + 8);
  v55 += 8;
  v46 = v36;
  v36(v22, v35);
  v58 = 46;
  v59 = 0xE100000000000000;
  v37 = sub_2145031D0();
  MEMORY[0x216053AF0](v60, &v58, MEMORY[0x277D837D0], v37);
  sub_2146D8C08();
  v39 = v60[0];
  v38 = v60[1];
  sub_2146D8C38();
  v58 = v39;
  v59 = v38;
  v40 = v45;
  v41 = v53;
  sub_2146D8D08();
  v42 = v50;
  sub_2146D8D08();

  sub_2146D8CD8();
  v31(v42, v41);
  v31(v40, v41);
  v47(v16, v54);
  v31(v33, v41);
  return v46(v52, v35);
}

uint64_t sub_2146BA09C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - v9;
  v10 = sub_2146D8D48();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v31 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v30 = &v30 - v20;
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_2146D8C38();
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v1, qword_27CA19E38);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v22, v1, v23);
  sub_2146D8C08();
  v24 = *(v2 + 8);
  v24(v5, v1);
  v25 = v34;
  sub_2146D8D28();
  v24(v8, v1);
  (*(v32 + 8))(v12, v33);
  sub_214503110(v15);
  MEMORY[0x216053B60](v25, MEMORY[0x277D83E40]);
  v26 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88, MEMORY[0x277D853F8]);
  v27 = v30;
  MEMORY[0x216053AF0](v19, v16, v26);
  v28 = *(v31 + 8);
  v28(v19, v16);
  sub_2146D8C08();
  return (v28)(v27, v16);
}

uint64_t sub_2146BA53C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v41 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v48 = v41 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v41 - v26;
  if (qword_27C903258 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v13, qword_27C918070);
  v29 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v47 = v27;
  MEMORY[0x216053AF0](v28, v13, v29);
  v30 = sub_2146D8D88();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_2146D8C38();
  v31 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v41[0] = v20;
  MEMORY[0x216053AF0](v17, v13, v29);
  v32 = *(v14 + 8);
  v41[1] = v14 + 8;
  v32(v17, v13);
  sub_2146D8C08();
  v32(v20, v13);
  v33 = v48;
  sub_2146D8CE8();
  v32(v23, v13);
  v34 = *(v51 + 8);
  v51 += 8;
  v42 = v34;
  v34(v4, v50);
  sub_214503110(v7);
  v35 = v43;
  MEMORY[0x216053B20](v33, v31);
  v36 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v37 = v44;
  MEMORY[0x216053AF0](v35, v44, v36);
  v45 = *(v45 + 8);
  (v45)(v35, v37);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v38 = v41[0];
  v39 = v49;
  sub_2146D8D08();
  sub_2146D8CD8();
  v32(v38, v13);
  v32(v23, v13);
  v42(v4, v50);
  v32(v48, v13);
  (v45)(v39, v37);
  return (v32)(v47, v13);
}

uint64_t sub_2146BAB64@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_2146D8D48();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v33 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v39 = *(v36 - 8);
  v2 = MEMORY[0x28223BE20](v36);
  v38 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v42 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_27C918088);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v35 = v17;
  MEMORY[0x216053AD0](v18, v5, v19);
  v20 = MEMORY[0x277D83E40];
  v21 = v12;
  sub_2146D8DA8();
  v32 = v15;
  MEMORY[0x216053AD0](v12, v5, v19);
  v22 = *(v6 + 8);
  v31[1] = v6 + 8;
  v43 = v21;
  v22(v21, v5);
  v34 = v22;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v9, v5, v19);
  v22(v9, v5);
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  v31[0] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = v36;
  sub_2146D8CF8();
  v25 = *(v37 + 8);
  v26 = v40;
  v25(v23, v40);
  v27 = v38;
  MEMORY[0x216053B70](v9, v20);
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v23, v26);
  MEMORY[0x216053B70](v9, v20);
  v28 = *(v39 + 8);
  v28(v27, v24);
  v28(v42, v24);
  v29 = v34;
  v34(v43, v5);
  v29(v32, v5);
  return (v29)(v35, v5);
}

uint64_t sub_2146BB094@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_2146D8D48();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v48 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v49 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v47 = &v40 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v52 = &v40 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v13, qword_27C918088);
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v25, v13, v26);
  v57 = 14906;
  v58 = 0xE200000000000000;
  v43 = sub_2145031D0();
  MEMORY[0x216053AF0](v59, &v57, MEMORY[0x277D837D0], v43);
  v27 = sub_2146D8D88();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  sub_2146D8C38();
  v28 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v44 = v24;
  v29 = *(v55 + 8);
  v55 += 8;
  v51 = v29;
  v29(v3, v56);
  sub_214503110(v6);
  v42 = v22;
  MEMORY[0x216053B10](v22, v28);
  v41 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v30 = v46;
  v31 = v53;
  MEMORY[0x216053AF0](v11, v53, v41);
  v32 = *(v54 + 8);
  v54 += 8;
  v45 = v32;
  v32(v11, v31);
  sub_2146D8C08();
  v34 = v59[0];
  v33 = v59[1];
  sub_2146D8C38();
  v57 = v34;
  v58 = v33;
  v35 = v47;
  sub_2146D8D08();
  v36 = v49;
  sub_2146D8D08();

  sub_2146D8CD8();
  v37 = *(v48 + 8);
  v37(v36, v13);
  v37(v35, v13);
  v51(v3, v56);
  sub_2146D8C38();
  sub_2146D8D08();
  v38 = v53;
  sub_2146D8D08();
  sub_2146D8CD8();
  v37(v36, v13);
  v37(v35, v13);
  v51(v3, v56);
  v37(v52, v13);
  v37(v42, v13);
  v45(v30, v38);
  return (v37)(v44, v13);
}

uint64_t sub_2146BB6F4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v38 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v36 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = v30 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v8 = sub_2146D8D48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v34 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v33 = v30 - v19;
  v39 = 14906;
  v40 = 0xE200000000000000;
  v32 = sub_2145031D0();
  MEMORY[0x216053AF0](v41, &v39, MEMORY[0x277D837D0]);
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27C918088);
  v20 = sub_2146D8D88();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v22 = *(v9 + 8);
  v30[1] = v9 + 8;
  v31 = v22;
  v22(v11, v8);
  sub_214503110(v14);
  v23 = v7;
  MEMORY[0x216053B10](v7, v21);
  v24 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v25 = v33;
  MEMORY[0x216053AF0](v18, v15, v24);
  v30[0] = v8;
  v34 = *(v34 + 8);
  (v34)(v18, v15);
  v39 = v41[0];
  v40 = v41[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v26 = v35;
  sub_2146D8D08();
  v27 = v36;
  sub_2146D8D08();
  sub_2146D8CD8();
  v28 = *(v38 + 8);
  v28(v27, v1);
  v28(v26, v1);
  v31(v11, v30[0]);
  v28(v23, v1);
  return (v34)(v25, v15);
}

uint64_t sub_2146BBC2C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v45 = v1;
  v46 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v42 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v37 - v20;
  MEMORY[0x28223BE20](v19);
  v44 = v37 - v22;
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v21, v12, v23);
  v24 = *(v13 + 8);
  v24(v21, v12);
  v37[1] = v13 + 8;
  v38 = v24;
  v25 = sub_2146D8D88();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_2146D8C38();
  sub_2146BC1BC(58, &qword_27C903250, qword_27C918058, sub_2146B9270, v18);
  v26 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v24(v18, v12);
  v27 = *(v46 + 8);
  v46 += 8;
  v39 = v27;
  v27(v4, v45);
  sub_214503110(v7);
  v28 = v40;
  MEMORY[0x216053B10](v21, v26);
  v29 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v30 = v41;
  v31 = v8;
  MEMORY[0x216053AF0](v28, v8, v29);
  v32 = *(v47 + 8);
  v47 += 8;
  v37[0] = v32;
  v32(v28, v8);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v33 = v42;
  v34 = v30;
  sub_2146D8D08();
  sub_2146D8CD8();
  v35 = v38;
  v38(v33, v12);
  v35(v18, v12);
  v39(v4, v45);
  v35(v21, v12);
  (v37[0])(v34, v31);
  return (v35)(v44, v12);
}

uint64_t sub_2146BC1BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[0] = a4;
  v29[1] = a5;
  v8 = sub_2146D8D48();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  v32 = a1;
  v33 = 0xE100000000000000;
  v24 = sub_2145031D0();
  MEMORY[0x216053AF0](v34, &v32, MEMORY[0x277D837D0], v24);
  if (*a2 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, a3);
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v25, v11, v26);
  v32 = v34[0];
  v33 = v34[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v27 = *(v12 + 8);
  v27(v15, v11);
  v27(v18, v11);
  (*(v30 + 8))(v10, v31);
  v27(v21, v11);
  return (v27)(v23, v11);
}

uint64_t sub_2146BC4F0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v30 = v28 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v31 = v28 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  MEMORY[0x28223BE20](v13);
  v34 = v28 - v16;
  v39 = 91;
  v40 = 0xE100000000000000;
  v17 = sub_2145031D0();
  v18 = MEMORY[0x277D837D0];
  MEMORY[0x216053AF0](v41, &v39, MEMORY[0x277D837D0], v17);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v15, v5, v19);
  v20 = *(v6 + 8);
  v20(v15, v5);
  v37 = 93;
  v38 = 0xE100000000000000;
  v28[1] = v17;
  MEMORY[0x216053AF0](&v39, &v37, v18, v17);
  v37 = v41[0];
  v38 = v41[1];
  v29 = v15;
  sub_2146D8C08();

  sub_2146D8C38();
  v21 = v30;
  sub_2146D8D08();
  v22 = v32;
  sub_2146D8D08();
  v23 = v31;
  sub_2146D8CD8();
  v20(v22, v5);
  v20(v21, v5);
  v24 = *(v36 + 8);
  v36 += 8;
  v28[0] = v24;
  v24(v4, v35);
  v26 = v39;
  v25 = v40;
  sub_2146D8C38();
  v37 = v26;
  v38 = v25;
  sub_2146D8D08();
  sub_2146D8D08();

  sub_2146D8CD8();
  v20(v22, v5);
  v20(v21, v5);
  (v28[0])(v4, v35);
  v20(v23, v5);
  v20(v29, v5);
  return (v20)(v34, v5);
}

uint64_t sub_2146BC99C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v5, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_2146D8C08();
  return (v9)(v7, v1);
}

uint64_t sub_2146BCB20@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_2146D8D48();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v40 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v42 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_27CA19DA8);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v20, v8, v21);
  if (qword_27C903250 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v8, qword_27C918058);
  MEMORY[0x216053AD0](v22, v8, v21);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v11, v8, v21);
  v33 = v17;
  v34 = *(v42 + 1);
  v34(v11, v8);
  v35 = v19;
  sub_2146D8BE8();
  sub_2146D8C38();
  v31 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v32 = v7;
  v42 = v14;
  v23 = v37;
  sub_2146D8CF8();
  v24 = v39;
  v25 = *(v38 + 8);
  v25(v3, v39);
  v26 = v36;
  v38 = v21;
  v27 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v11, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v3, v24);
  MEMORY[0x216053B70](v11, v27);
  v28 = *(v40 + 8);
  v28(v26, v23);
  v28(v32, v23);
  v29 = v34;
  v34(v42, v8);
  v29(v33, v8);
  return (v29)(v35, v8);
}

uint64_t sub_2146BD058@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_2146D8C48();
  v40 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v35 - v12;
  v41 = sub_2146D8D48();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v37 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v23 = sub_2146D8D88();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v24 = sub_2145030B8();
  v25 = v1;
  MEMORY[0x216053AF0](v5, v1, v24);
  v26 = *(v40 + 8);
  v26(v5, v1);
  v27 = v36;
  sub_2146D8C08();
  v26(v7, v25);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = MEMORY[0x277D83E40];
  v29 = v38;
  v30 = v42;
  v31 = v35;
  sub_2146D8D18();
  (*(v43 + 8))(v27, v30);
  (*(v39 + 8))(v31, v41);
  sub_214503110(v16);
  MEMORY[0x216053B90](v29, v28);
  v32 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v20, v17, v32);
  v33 = *(v37 + 8);
  v33(v20, v17);
  sub_2146D8C08();
  return (v33)(v22, v17);
}

uint64_t sub_2146BD598@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v47 = sub_2146D8D48();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v40 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v41 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v35 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v35 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v35 - v22;
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_27CA19F18);
  v35[1] = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v24, v12);
  v25 = sub_2146D8D88();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_2146D8C38();
  sub_2146BC1BC(58, &qword_27C903270, qword_27CA19F30, sub_2146BD038, v18);
  v45 = v21;
  v26 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v37 = *(v13 + 8);
  v37(v18, v12);
  v27 = *(v1 + 8);
  v38 = v1 + 8;
  v39 = v27;
  v27(v3, v47);
  sub_214503110(v6);
  v28 = v40;
  MEMORY[0x216053B10](v21, v26);
  v29 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v36 = v23;
  v30 = v42;
  MEMORY[0x216053AF0](v28, v42, v29);
  v43 = *(v43 + 8);
  (v43)(v28, v30);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v31 = v41;
  v32 = v46;
  sub_2146D8D08();
  sub_2146D8CD8();
  v33 = v37;
  v37(v31, v12);
  v33(v18, v12);
  v39(v3, v47);
  v33(v45, v12);
  (v43)(v32, v30);
  return (v33)(v36, v12);
}

uint64_t sub_2146BDB2C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_2146D8D48();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_2146D8C88();
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8CE8();
  (*(v26 + 8))(v6, v27);
  sub_214503110(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x216053B20](v3, MEMORY[0x277D83E40]);
  v22 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  MEMORY[0x216053AF0](v18, v14, v22);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_2146D8C08();
  return (v23)(v20, v14);
}

uint64_t sub_2146BDF38@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v60 = sub_2146D8D48();
  v49 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v52 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v44 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v44 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v44 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v50 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, qword_27CA19D60);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v23, v14, v24);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_27CA19E50);
  v47 = v20;
  MEMORY[0x216053AD0](v25, v14, v24);
  v69 = 38;
  v70 = 0xE100000000000000;
  v26 = sub_2145031D0();
  v27 = MEMORY[0x277D837D0];
  v59 = v26;
  MEMORY[0x216053AD0](v71, &v69, MEMORY[0x277D837D0], v26);
  v67 = 61;
  v68 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v69, &v67, v27, v26);
  v65 = 43;
  v66 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v67, &v65, v27, v26);
  v63 = 36;
  v64 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v65, &v63, v27, v26);
  v61 = 44;
  v62 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v63, &v61, v27, v26);
  v48 = v22;
  v46 = v14;
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v28 = MEMORY[0x277D83E40];
  v29 = v45;
  v30 = v17;
  sub_2146D8CF8();
  v31 = v29;
  v32 = *(v49 + 8);
  v33 = v60;
  v32(v2, v60);
  MEMORY[0x216053B70](v17, v28);
  v61 = v71[0];
  v62 = v71[1];
  sub_2146D8C38();
  sub_2146D8CF8();
  v32(v2, v33);
  v34 = v32;

  MEMORY[0x216053B70](v17, MEMORY[0x277D83E40]);
  v61 = v69;
  v62 = v70;
  sub_2146D8C38();
  sub_2146D8CF8();
  v35 = v60;
  v36 = v34;
  v34(v2, v60);

  MEMORY[0x216053B70](v30, MEMORY[0x277D83E40]);
  v61 = v67;
  v62 = v68;
  sub_2146D8C38();
  sub_2146D8CF8();
  v34(v2, v35);

  v37 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v30);
  v61 = v65;
  v62 = v66;
  sub_2146D8C38();
  sub_2146D8CF8();
  v38 = v60;
  v34(v2, v60);

  v39 = v51;
  MEMORY[0x216053B70](v30, v37);
  v61 = v63;
  v62 = v64;
  sub_2146D8C38();
  sub_2146D8CF8();
  v36(v2, v38);

  MEMORY[0x216053B70](v30, v37);
  v40 = *(v52 + 8);
  v40(v39, v31);
  v40(v58, v31);
  v40(v57, v31);
  v40(v56, v31);
  v40(v55, v31);
  v40(v54, v31);
  v41 = *(v50 + 8);
  v42 = v46;
  v41(v47, v46);
  return (v41)(v48, v42);
}

uint64_t sub_2146BE778@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_2146D8D48();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_2146D8C88();
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8D18();
  (*(v26 + 8))(v6, v27);
  sub_214503110(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x216053B90](v3, MEMORY[0x277D83E40]);
  v22 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v18, v14, v22);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_2146D8C08();
  return (v23)(v20, v14);
}

uint64_t sub_2146BEB84@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_2146D8D48();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v52 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = sub_2146D8C48();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v49 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v47 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, qword_27CA19D60);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v23, v15, v24);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_27CA19E50);
  v42 = v20;
  MEMORY[0x216053AD0](v25, v15, v24);
  v57 = 0x2F3F3B2C242B3D26;
  v58 = 0xE800000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v26 = sub_2145030B8();
  v43 = v14;
  v44 = v26;
  v27 = v55;
  MEMORY[0x216053AD0](v12, v55, v26);
  v45 = *(v56 + 8);
  v56 += 8;
  v45(v12, v27);
  v46 = v22;
  v41 = v15;
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v28 = MEMORY[0x277D83E40];
  v30 = v47;
  v29 = v48;
  sub_2146D8CF8();
  v31 = *(v50 + 1);
  v50 = v6;
  v32 = v29;
  v33 = v53;
  v31(v2, v53);
  v34 = v51;
  MEMORY[0x216053B70](v30, v28);
  sub_2146D8C38();
  v35 = v43;
  v36 = v55;
  sub_2146D8CF8();
  v31(v2, v33);
  MEMORY[0x216053B70](v30, MEMORY[0x277D83E40]);
  v37 = *(v52 + 8);
  v37(v34, v32);
  v37(v50, v32);
  v45(v35, v36);
  v38 = *(v49 + 8);
  v39 = v41;
  v38(v42, v41);
  return (v38)(v46, v39);
}

uint64_t sub_2146BF17C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v66 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v48 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v48 - v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v48 - v8;
  v9 = sub_2146D8D48();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v65 = *(v61 - 8);
  v16 = MEMORY[0x28223BE20](v61);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v64 = &v48 - v24;
  v25 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v51 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v63 = v19;
  MEMORY[0x216053AF0](v23, v19, v51);
  v26 = *(v20 + 8);
  v54 = v20 + 8;
  v55 = v26;
  v26(v23, v19);
  v27 = sub_2146D8D88();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  sub_2146D8C38();
  v28 = v60;
  sub_2146C1C3C(58, 0xE100000000000000, sub_2146BDB2C, v60);
  v29 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v30 = v62;
  v31 = v25;
  sub_2146D8D38();
  v32 = *(v66 + 8);
  v66 += 8;
  v49 = v32;
  v33 = v1;
  v32(v28, v1);
  v50 = *(v68 + 8);
  v68 += 8;
  v50(v12, v67);
  sub_214503110(v15);
  v34 = v53;
  MEMORY[0x216053B10](v30, v31);
  v35 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v36 = v61;
  MEMORY[0x216053AF0](v34, v61, v35);
  v37 = *(v65 + 8);
  v65 += 8;
  v52 = v37;
  v37(v34, v36);
  v69 = 64;
  v70 = 0xE100000000000000;
  v53 = sub_2145031D0();
  MEMORY[0x216053AF0](v71, &v69, MEMORY[0x277D837D0], v53);
  sub_2146D8C08();
  sub_2146D8C38();
  v38 = v56;
  v39 = v33;
  sub_2146D8D08();
  v40 = v57;
  sub_2146D8D08();
  v41 = v60;
  v48 = v29;
  sub_2146D8CD8();
  v42 = v40;
  v43 = v49;
  v49(v40, v39);
  v43(v38, v39);
  v44 = v50;
  v50(v12, v67);
  v46 = v71[0];
  v45 = v71[1];
  sub_2146D8C38();
  v69 = v46;
  v70 = v45;
  sub_2146D8D08();
  sub_2146D8D08();

  sub_2146D8CD8();
  v43(v42, v39);
  v43(v38, v39);
  v44(v12, v67);
  v43(v41, v39);
  v43(v62, v39);
  v52(v59, v61);
  return v55(v64, v63);
}

uint64_t sub_2146BF924@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v14, v7, v17);
  v23 = *(v8 + 8);
  v23(v14, v7);
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_27CA19DC0);
  MEMORY[0x216053AD0](v18, v7, v17);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v19 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v25 + 8))(v3, v26);
  MEMORY[0x216053B70](v11, v19);
  (*(v24 + 8))(v6, v4);
  v20 = v23;
  v23(v14, v7);
  return v20(v16, v7);
}

uint64_t sub_2146BFD30@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_2146D8D48();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = sub_2146D8C48();
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v32 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27CA19E08);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v29 = v12;
  MEMORY[0x216053AD0](v18, v12, v19);
  v39 = 0x602B5F2A25212E2DLL;
  v40 = 0xEA00000000007E27;
  sub_2146D8D58();
  sub_2146D8D78();
  v20 = sub_2145030B8();
  MEMORY[0x216053AD0](v9, v5, v20);
  v28 = v17;
  v21 = *(v30 + 8);
  v21(v9, v5);
  v22 = v31;
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = MEMORY[0x277D83E40];
  v25 = v35;
  sub_2146D8CF8();
  (*(v36 + 8))(v23, v37);
  MEMORY[0x216053B70](v15, v24);
  (*(v34 + 8))(v22, v25);
  v21(v11, v5);
  return (*(v32 + 8))(v28, v29);
}

uint64_t sub_2146C01DC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = sub_2146D8D48();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if (qword_27C903130 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19D78);
  v17 = sub_2146D8D88();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v18 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v23 + 8))(v6, v24);
  sub_214503110(v9);
  MEMORY[0x216053B90](v3, v18);
  v19 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v14, v10, v19);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_2146D8C08();
  return (v20)(v16, v10);
}

uint64_t sub_2146C057C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v52 = &v45 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v57 = &v45 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  v56 = v27;
  v29 = v25;
  MEMORY[0x216053AF0](v25, v15, v28);
  v30 = *(v16 + 8);
  v54 = v16 + 8;
  v51 = v30;
  v30(v25, v15);
  v62 = 61;
  v63 = 0xE100000000000000;
  v31 = sub_2145031D0();
  MEMORY[0x216053AF0](v64, &v62, MEMORY[0x277D837D0], v31);
  if (qword_27C903138 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v15, qword_27CA19D90);
  v32 = sub_2146D8D88();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  sub_2146D8C38();
  v33 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v49 = *(v61 + 8);
  v61 += 8;
  v49(v4, v60);
  sub_214503110(v7);
  MEMORY[0x216053B10](v25, v33);
  v47 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v34 = v58;
  MEMORY[0x216053AF0](v12, v58, v47);
  v46 = v14;
  v35 = *(v59 + 8);
  v59 += 8;
  v50 = v35;
  v35(v12, v34);
  v48 = v29;
  sub_2146D8C08();
  v37 = v64[0];
  v36 = v64[1];
  sub_2146D8C38();
  v62 = v37;
  v63 = v36;
  v38 = v52;
  sub_2146D8D08();
  v39 = v53;
  sub_2146D8D08();

  sub_2146D8CD8();
  v40 = v51;
  v51(v39, v15);
  v40(v38, v15);
  v41 = v49;
  v49(v4, v60);
  sub_2146D8C38();
  sub_2146D8D08();
  v42 = v46;
  v43 = v58;
  sub_2146D8D08();
  sub_2146D8CD8();
  v40(v39, v15);
  v40(v38, v15);
  v41(v4, v60);
  v40(v57, v15);
  v40(v48, v15);
  v50(v42, v43);
  return (v40)(v56, v15);
}

uint64_t sub_2146C0C24@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_2146D8D48();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v25 = 0x3D726464616DLL;
  v26 = 0xE600000000000000;
  v17 = sub_2145031D0();
  MEMORY[0x216053AF0](v27, &v25, MEMORY[0x277D837D0], v17);
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_27CA19F18);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v18, v4, v19);
  v25 = v27[0];
  v26 = v27[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v11, v4);
  (*(v23 + 8))(v3, v24);
  v20(v14, v4);
  return (v20)(v16, v4);
}

uint64_t sub_2146C0F70@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v52 = *(v45 - 8);
  v9 = MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v50 = &v39 - v14;
  v48 = sub_2146D8D48();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v49 = *(v44 - 8);
  v20 = MEMORY[0x28223BE20](v44);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v39 - v23;
  v53 = 1030517876;
  v54 = 0xE400000000000000;
  v43 = sub_2145031D0();
  MEMORY[0x216053AF0](v55, &v53, MEMORY[0x277D837D0], v43);
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v25 = sub_2145030B8();
  MEMORY[0x216053AF0](v6, v1, v25);
  v26 = *(v2 + 8);
  v26(v6, v1);
  sub_2146D8C08();
  v26(v8, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v27 = MEMORY[0x277D83E40];
  v28 = v50;
  v39 = v13;
  v29 = v45;
  sub_2146D8D28();
  v30 = *(v52 + 8);
  v52 += 8;
  v30(v13, v29);
  v31 = *(v51 + 8);
  v51 += 8;
  v41 = v31;
  v31(v16, v48);
  sub_214503110(v19);
  MEMORY[0x216053B60](v28, v27);
  v32 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88, MEMORY[0x277D853F8]);
  v33 = v42;
  v34 = v44;
  MEMORY[0x216053AF0](v22, v44, v32);
  v35 = *(v49 + 8);
  v49 += 8;
  v40 = v35;
  v35(v22, v34);
  v53 = v55[0];
  v54 = v55[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v36 = v39;
  sub_2146D8D08();
  v37 = v46;
  sub_2146D8D08();
  sub_2146D8CD8();
  v30(v37, v29);
  v30(v36, v29);
  v41(v16, v48);
  v30(v50, v29);
  return v40(v33, v34);
}

uint64_t sub_2146C15F4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - v2;
  v41 = sub_2146D8D48();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v37 = *(v33 - 8);
  v7 = MEMORY[0x28223BE20](v33);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v31 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v31 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v52 = 0x5245545349474552;
  v53 = 0xE800000000000000;
  v18 = sub_2145031D0();
  v19 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v54, &v52, MEMORY[0x277D837D0], v18);
  v50 = 0x455449564E49;
  v51 = 0xE600000000000000;
  MEMORY[0x216053AD0](&v52, &v50, v19, v18);
  v48 = 4932417;
  v49 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v50, &v48, v19, v18);
  v46 = 0x4C45434E4143;
  v47 = 0xE600000000000000;
  MEMORY[0x216053AD0](&v48, &v46, v19, v18);
  v44 = 4544834;
  v45 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v46, &v44, v19, v18);
  v42 = 0x534E4F4954504FLL;
  v43 = 0xE700000000000000;
  MEMORY[0x216053AD0](&v44, &v42, v19, v18);
  v42 = v54[0];
  v43 = v54[1];
  v35 = v17;
  sub_2146D8BE8();

  v42 = v52;
  v43 = v53;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8CF8();
  v20 = *(v4 + 8);
  v21 = v41;
  v20(v6, v41);
  v22 = v20;

  v34 = v15;
  v23 = v3;
  MEMORY[0x216053B70](v3, MEMORY[0x277D83E40]);
  v42 = v50;
  v43 = v51;
  sub_2146D8C38();
  v24 = v33;
  sub_2146D8CF8();
  v22(v6, v21);
  v32 = v22;

  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  v42 = v48;
  v43 = v49;
  sub_2146D8C38();
  sub_2146D8CF8();
  v25 = v41;
  v22(v6, v41);

  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  v42 = v46;
  v43 = v47;
  sub_2146D8C38();
  sub_2146D8CF8();
  v26 = v32;
  v32(v6, v25);

  v27 = v36;
  v28 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  v42 = v44;
  v43 = v45;
  sub_2146D8C38();
  sub_2146D8CF8();
  v26(v6, v41);

  MEMORY[0x216053B70](v23, v28);
  v29 = *(v37 + 8);
  v29(v27, v24);
  v29(v40, v24);
  v29(v39, v24);
  v29(v34, v24);
  return (v29)(v35, v24);
}

uint64_t sub_2146C1C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_2146D8D48();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  MEMORY[0x28223BE20](v17);
  v27 = &v26 - v20;
  v32 = a1;
  v33 = a2;
  v21 = sub_2145031D0();
  MEMORY[0x216053AF0](v34, &v32, MEMORY[0x277D837D0], v21);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v19, v9, v22);
  v23 = *(v10 + 8);
  v23(v19, v9);
  v32 = v34[0];
  v33 = v34[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v24 = v27;
  sub_2146D8D08();
  sub_2146D8CD8();
  v23(v13, v9);
  v23(v16, v9);
  (*(v30 + 8))(v8, v31);
  v23(v19, v9);
  return (v23)(v24, v9);
}

uint64_t sub_2146C1F78@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_2146D8D48();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v33 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v31 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v39 = 0x656E6F6870;
  v40 = 0xE500000000000000;
  v15 = sub_2145031D0();
  v16 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v41, &v39, MEMORY[0x277D837D0], v15);
  v37 = 28777;
  v38 = 0xE200000000000000;
  MEMORY[0x216053AD0](&v39, &v37, v16, v15);
  if (qword_27C903280 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_27C9180A0);
  v18 = v9;
  v29 = v9;
  v19 = v17;
  v30 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v19, v18, v30);
  v37 = v41[0];
  v38 = v41[1];
  v27 = v14;
  sub_2146D8BE8();

  v37 = v39;
  v38 = v40;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v28 = v8;
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v21 = v35;
  v22 = *(v34 + 8);
  v22(v3, v35);

  v23 = v32;
  MEMORY[0x216053B70](v12, v20);
  sub_2146D8C38();
  v24 = v29;
  sub_2146D8CF8();
  v22(v3, v21);
  MEMORY[0x216053B70](v12, v20);
  v25 = *(v33 + 8);
  v25(v23, v4);
  v25(v28, v4);
  return (*(v31 + 8))(v27, v24);
}

uint64_t sub_2146C23E8@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v32 = a1;
  v35 = a4;
  v5 = sub_2146D8D48();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v31 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v38 = v32;
  v39 = a2;
  v22 = sub_2145031D0();
  MEMORY[0x216053AF0](v40, &v38, MEMORY[0x277D837D0], v22);
  sub_2146D8C88();
  v23 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v19, v15, v23);
  v24 = *(v16 + 8);
  v30 = v16 + 8;
  v32 = v24;
  v24(v19, v15);
  v38 = v40[0];
  v39 = v40[1];
  v25 = v31;
  sub_2146D8C08();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v26 = v33;
  sub_2146D8D08();
  v27 = v34;
  sub_2146D8D08();
  sub_2146D8CD8();
  v28 = *(v9 + 8);
  v28(v27, v8);
  v28(v26, v8);
  (*(v36 + 8))(v7, v37);
  v28(v25, v8);
  return v32(v21, v15);
}

uint64_t sub_2146C2800@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_2146D8D48();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v39 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v31 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v50 = 7365749;
  v51 = 0xE300000000000000;
  v18 = sub_2145031D0();
  v19 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v52, &v50, MEMORY[0x277D837D0], v18);
  v48 = 7365492;
  v49 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v50, &v48, v19, v18);
  v46 = 1886675827;
  v47 = 0xE400000000000000;
  MEMORY[0x216053AD0](&v48, &v46, v19, v18);
  v44 = 7564404;
  v45 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v46, &v44, v19, v18);
  if (qword_27C903280 != -1)
  {
    swift_once();
  }

  v33 = v12;
  v20 = __swift_project_value_buffer(v12, qword_27C9180A0);
  v34 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v32 = v17;
  MEMORY[0x216053AD0](v20, v12, v34);
  v44 = v52[0];
  v45 = v52[1];
  sub_2146D8BE8();

  v31 = v11;
  v44 = v50;
  v45 = v51;
  sub_2146D8C38();
  v42 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v22 = *(v35 + 1);
  v23 = v40;
  v22(v2, v40);
  v35 = v22;

  MEMORY[0x216053B70](v15, v21);
  v44 = v48;
  v45 = v49;
  sub_2146D8C38();
  sub_2146D8CF8();
  v22(v2, v23);

  v24 = v37;
  MEMORY[0x216053B70](v15, MEMORY[0x277D83E40]);
  v44 = v46;
  v45 = v47;
  sub_2146D8C38();
  sub_2146D8CF8();
  v25 = v35;
  v35(v2, v23);

  v26 = v38;
  MEMORY[0x216053B70](v15, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v27 = v32;
  v28 = v33;
  sub_2146D8CF8();
  v25(v2, v23);
  MEMORY[0x216053B70](v15, MEMORY[0x277D83E40]);
  v29 = *(v39 + 8);
  v29(v26, v3);
  v29(v24, v3);
  v29(v43, v3);
  v29(v31, v3);
  return (*(v36 + 8))(v27, v28);
}

uint64_t sub_2146C2E34@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v60 = sub_2146D8D48();
  v64 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v2 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v62 = *(v59 - 8);
  v3 = MEMORY[0x28223BE20](v59);
  v61 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = v57 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v73 = v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v71 = v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v70 = v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = v57 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v76 = v57 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v77 = v57 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v78 = v57 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v57 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v57 - v31;
  MEMORY[0x28223BE20](v30);
  v74 = v57 - v33;
  v34 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v32, v16, v34);
  v36 = v17 + 8;
  v35 = *(v17 + 8);
  v68 = v32;
  v35(v32, v16);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v29, v16, v34);
  v72 = v29;
  v35(v29, v16);
  v37 = v78;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v37, v16, v34);
  v35(v37, v16);
  v38 = v77;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v38, v16, v34);
  v35(v38, v16);
  v39 = v76;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v39, v16, v34);
  v35(v39, v16);
  v58 = v35;
  v57[1] = v36;
  v81 = 29292;
  v82 = 0xE200000000000000;
  v40 = sub_2145031D0();
  v41 = MEMORY[0x277D837D0];
  v66 = v40;
  MEMORY[0x216053AD0](v83, &v81, MEMORY[0x277D837D0], v40);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v20, v16, v34);
  v42 = v20;
  v35(v20, v16);
  v79 = 25199;
  v80 = 0xE200000000000000;
  MEMORY[0x216053AD0](&v81, &v79, v41, v40);
  sub_2146D8BE8();
  sub_2146D8C38();
  v65 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v43 = v59;
  sub_2146D8CF8();
  v44 = *(v64 + 1);
  v45 = v60;
  v44(v2, v60);
  v64 = v44;
  MEMORY[0x216053B70](v20, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v44(v2, v45);
  MEMORY[0x216053B70](v20, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v46 = v43;
  v57[0] = v34;
  sub_2146D8CF8();
  v47 = v64;
  v64(v2, v45);
  MEMORY[0x216053B70](v20, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v48 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v49 = v45;
  v47(v2, v45);
  MEMORY[0x216053B70](v20, v48);
  v79 = v83[0];
  v80 = v83[1];
  sub_2146D8C38();
  v50 = v46;
  sub_2146D8CF8();
  v51 = v64;
  v64(v2, v49);

  MEMORY[0x216053B70](v42, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v51(v2, v49);
  v52 = v61;
  v53 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v42, MEMORY[0x277D83E40]);
  v79 = v81;
  v80 = v82;
  sub_2146D8C38();
  sub_2146D8CF8();
  v51(v2, v49);

  MEMORY[0x216053B70](v42, v53);
  v54 = *(v62 + 8);
  v54(v52, v50);
  v54(v75, v50);
  v54(v73, v50);
  v54(v71, v50);
  v54(v70, v50);
  v54(v69, v50);
  v54(v67, v50);
  v55 = v58;
  v58(v76, v16);
  v55(v77, v16);
  v55(v78, v16);
  v55(v72, v16);
  v55(v68, v16);
  return (v55)(v74, v16);
}

uint64_t sub_2146C38E8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v26 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = sub_2146D8D48();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = sub_2146D8D88();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_2146D8C38();
  sub_2146C1C3C(59, 0xE100000000000000, sub_2146C644C, v4);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8CE8();
  (*(v26 + 8))(v4, v1);
  (*(v24 + 8))(v9, v25);
  sub_214503110(v12);
  MEMORY[0x216053B20](v6, MEMORY[0x277D83E40]);
  v21 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  MEMORY[0x216053AF0](v17, v13, v21);
  v22 = *(v14 + 8);
  v22(v17, v13);
  sub_2146D8C08();
  return (v22)(v19, v13);
}

uint64_t sub_2146C3CDC()
{
  v0 = sub_2146D8C48();
  v1 = MEMORY[0x28223BE20](v0);
  __swift_allocate_value_buffer(v1, qword_27C9180B8);
  __swift_project_value_buffer(v0, qword_27C9180B8);
  sub_2146D8D58();
  return sub_2146D8D78();
}

uint64_t sub_2146C3DBC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v36 - v12;
  v13 = sub_2146D8D48();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v39 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_2146D8C38();
  sub_2146D8C88();
  v25 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v5, v1, v25);
  v26 = *(v2 + 8);
  v26(v5, v1);
  v27 = v38;
  sub_2146D8C08();
  v26(v7, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = v40;
  v29 = v27;
  v30 = MEMORY[0x277D83E40];
  v31 = v43;
  v32 = v37;
  sub_2146D8CE8();
  (*(v44 + 8))(v29, v31);
  (*(v41 + 8))(v32, v42);
  sub_214503110(v17);
  MEMORY[0x216053B20](v28, v30);
  v33 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  MEMORY[0x216053AF0](v21, v18, v33);
  v34 = *(v39 + 8);
  v34(v21, v18);
  sub_2146D8C08();
  return (v34)(v23, v18);
}

uint64_t sub_2146C42F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v36 - v13;
  v42 = sub_2146D8D48();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v38 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_2146D8C38();
  sub_2146D8C88();
  v25 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v6, v2, v25);
  v26 = *(v3 + 8);
  v26(v6, v2);
  v27 = v37;
  sub_2146D8C08();
  v26(v8, v2);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = v39;
  v29 = v27;
  v30 = MEMORY[0x277D83E40];
  v31 = v43;
  v32 = v36;
  sub_2146D8D18();
  (*(v44 + 8))(v29, v31);
  (*(v40 + 8))(v32, v42);
  sub_214503110(v17);
  MEMORY[0x216053B90](v28, v30);
  v33 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v21, v18, v33);
  v34 = *(v38 + 8);
  v34(v21, v18);
  sub_2146D8C08();
  return (v34)(v23, v18);
}

uint64_t sub_2146C4820@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v39 = sub_2146D8D48();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v2 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v41 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v40 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = v31 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v31 - v13;
  v15 = sub_2146D8C48();
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C903288 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v15, qword_27C9180B8);
  sub_2145030B8();
  MEMORY[0x216053AD0](v18);
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_27CA19D60);
  v20 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v19, v8, v20);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_27CA19E50);
  MEMORY[0x216053AD0](v21, v8, v20);
  v33 = v15;
  v34 = v17;
  sub_2146D8BE8();
  sub_2146D8C38();
  v31[1] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v32 = v7;
  v22 = MEMORY[0x277D83E40];
  v23 = v35;
  sub_2146D8CF8();
  v24 = *(v37 + 1);
  v37 = v14;
  v25 = v39;
  v24(v2, v39);
  v26 = v38;
  MEMORY[0x216053B70](v23, v22);
  sub_2146D8C38();
  v27 = v43;
  sub_2146D8CF8();
  v24(v2, v25);
  MEMORY[0x216053B70](v23, v22);
  v28 = *(v41 + 8);
  v28(v26, v3);
  v28(v32, v3);
  v29 = *(v40 + 8);
  v29(v27, v8);
  v29(v37, v8);
  return (*(v36 + 8))(v34, v33);
}

uint64_t sub_2146C4DB8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v35 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  v38 = v20;
  MEMORY[0x216053AF0](v18, v5, v21);
  v22 = *(v6 + 8);
  v36 = v18;
  v22(v18, v5);
  v45 = 61;
  v46 = 0xE100000000000000;
  v23 = sub_2145031D0();
  MEMORY[0x216053AF0](v47, &v45, MEMORY[0x277D837D0], v23);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v15, v5, v21);
  v22(v15, v5);
  v37 = v15;
  sub_2146D8C08();
  v25 = v47[0];
  v24 = v47[1];
  sub_2146D8C38();
  v45 = v25;
  v46 = v24;
  v26 = v39;
  sub_2146D8D08();
  v27 = v41;
  sub_2146D8D08();

  v28 = v40;
  v29 = v26;
  sub_2146D8CD8();
  v30 = v27;
  v22(v27, v5);
  v22(v29, v5);
  v31 = *(v44 + 8);
  v44 += 8;
  v31(v4, v43);
  sub_2146D8C38();
  v32 = v28;
  sub_2146D8D08();
  v33 = v36;
  sub_2146D8D08();
  sub_2146D8CD8();
  v22(v30, v5);
  v22(v29, v5);
  v31(v4, v43);
  v22(v32, v5);
  v22(v37, v5);
  v22(v33, v5);
  return (v22)(v38, v5);
}

uint64_t sub_2146C5290@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v53 = sub_2146D8D48();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v54 = *(v52 - 8);
  v6 = MEMORY[0x28223BE20](v52);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v56 = 63;
  v57 = 0xE100000000000000;
  v43 = sub_2145031D0();
  MEMORY[0x216053AF0](v58, &v56, MEMORY[0x277D837D0]);
  if (qword_27C903290 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_27C9180D0);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v51 = v21;
  MEMORY[0x216053AF0](v22, v9, v23);
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_2146D8C38();
  sub_2146BC1BC(38, &qword_27C903290, qword_27C9180D0, sub_2146C4D98, v17);
  v25 = MEMORY[0x277D83E40];
  v26 = v50;
  sub_2146D8CE8();
  v27 = *(v10 + 8);
  v27(v17, v9);
  v28 = *(v55 + 8);
  v48 = v17;
  v49 = v28;
  v55 += 8;
  v28(v2, v53);
  sub_214503110(v5);
  v29 = v42;
  MEMORY[0x216053B20](v26, v25);
  v40 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v30 = v45;
  v31 = v52;
  MEMORY[0x216053AF0](v29, v52, v40);
  v32 = *(v54 + 8);
  v54 += 8;
  v41 = v32;
  v32(v29, v31);
  v56 = v58[0];
  v57 = v58[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v33 = v44;
  sub_2146D8D08();
  v34 = v46;
  sub_2146D8D08();
  sub_2146D8CD8();
  v27(v34, v9);
  v27(v33, v9);
  v35 = v53;
  v49(v2, v53);
  sub_2146D8C38();
  sub_2146D8D08();
  v36 = v30;
  v37 = v52;
  sub_2146D8D08();
  sub_2146D8CD8();
  v27(v34, v9);
  v27(v33, v9);
  v49(v2, v35);
  v27(v48, v9);
  v27(v50, v9);
  v41(v36, v37);
  return (v27)(v51, v9);
}

uint64_t sub_2146C5974@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v85 = sub_2146D8D48();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v2 = v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v64 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v79 = v64 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v78 = v64 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v83 = v64 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v77 = v64 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v64 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v84 = *(v80 - 8);
  v25 = MEMORY[0x28223BE20](v80);
  v67 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v64 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v64 - v30;
  v88 = 980445555;
  v89 = 0xE400000000000000;
  v66 = sub_2145031D0();
  MEMORY[0x216053AF0](v90, &v88, MEMORY[0x277D837D0]);
  v32 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v33 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v34 = sub_2146D8D88();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v64[0] = v34;
  v65 = v36;
  v64[1] = v35 + 56;
  (v36)(v5, 1, 1);
  sub_2146D8C38();
  sub_2146D8D38();
  v86 = *(v87 + 8);
  v87 += 8;
  v86(v2, v85);
  v68 = v5;
  sub_214503110(v5);
  v37 = *(v7 + 8);
  v81 = v24;
  v38 = v24;
  v39 = v7 + 8;
  v37(v38, v6);
  v82 = v22;
  v40 = v22;
  v41 = v84;
  v42 = v80;
  MEMORY[0x216053B10](v40, v33);
  v43 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v76 = v31;
  v74 = v43;
  MEMORY[0x216053AF0](v29, v42);
  v44 = *(v41 + 8);
  v73 = v29;
  v75 = v44;
  v84 = v41 + 8;
  v44(v29, v42);
  if (qword_27C903278 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v6, qword_27CA19F48);
  MEMORY[0x216053AF0](v45, v6, v32);
  v46 = MEMORY[0x277D83E40];
  v47 = v77;
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v47, v6, v32);
  v48 = v39;
  v37(v47, v6);
  v49 = v47;
  v50 = v46;
  sub_2146D8DA8();
  v51 = v68;
  v65(v68, 1, 1, v64[0]);
  sub_2146D8C38();
  v52 = v83;
  sub_2146D8D38();
  v86(v2, v85);
  sub_214503110(v51);
  v37(v49, v6);
  v53 = v67;
  MEMORY[0x216053B10](v52, v50);
  MEMORY[0x216053AF0](v53, v42, v74);
  v75(v53, v42);
  v88 = v90[0];
  v89 = v90[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v54 = v78;
  sub_2146D8D08();
  v55 = v79;
  sub_2146D8D08();
  sub_2146D8CD8();
  v72 = v48;
  v37(v55, v6);
  v37(v54, v6);
  v56 = v85;
  v86(v2, v85);
  sub_2146D8C38();
  sub_2146D8D08();
  v57 = v69;
  sub_2146D8D08();
  sub_2146D8CD8();
  v37(v57, v6);
  v37(v55, v6);
  v86(v2, v56);
  sub_2146D8C38();
  sub_2146D8D08();
  v58 = v70;
  sub_2146D8D08();
  sub_2146D8CD8();
  v37(v58, v6);
  v37(v57, v6);
  v59 = v85;
  v86(v2, v85);
  sub_2146D8C38();
  sub_2146D8D08();
  v60 = v73;
  sub_2146D8D08();
  sub_2146D8CD8();
  v37(v58, v6);
  v37(v57, v6);
  v86(v2, v59);
  v37(v79, v6);
  v37(v78, v6);
  v37(v83, v6);
  v37(v77, v6);
  v61 = v80;
  v62 = v75;
  v75(v60, v80);
  v37(v82, v6);
  v37(v81, v6);
  return v62(v76, v61);
}

uint64_t sub_2146C659C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146C65E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146C6644()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2146C66C0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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

void (*sub_2146C6808(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146C68A4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

double sub_2146C693C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void sub_2146C6948(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t sub_2146C6994@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedPluginAttachment(0) + 20);

  return sub_2140641A4(v3, a1);
}

uint64_t type metadata accessor for CombinedPluginAttachment(uint64_t a1)
{
  result = qword_280B2ECA8;
  if (!qword_280B2ECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146C6A24(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedPluginAttachment(0) + 20);

  return sub_214064230(a1, v3);
}

unint64_t sub_2146C6AB0(uint64_t a1)
{
  *(a1 + 8) = sub_2146C6AE0();
  result = sub_2146C6B34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146C6AE0()
{
  result = qword_27C9180E8;
  if (!qword_27C9180E8)
  {
    result = swift_getWitnessTable(byte_2146FDD80, &type metadata for CombinedPluginAttachment.BalloonPluginIdentifier, v0, v1);
    atomic_store(result, &qword_27C9180E8);
  }

  return result;
}

unint64_t sub_2146C6B34()
{
  result = qword_27C9180F0;
  if (!qword_27C9180F0)
  {
    result = swift_getWitnessTable(a1_15, &type metadata for CombinedPluginAttachment.BalloonPluginIdentifier, v0, v1);
    atomic_store(result, &qword_27C9180F0);
  }

  return result;
}

uint64_t sub_2146C6B88(uint64_t a1)
{
  *(a1 + 8) = sub_2146C6C3C(&qword_27C9180F8, byte_2146F8D30);
  result = sub_2146C6C3C(&qword_27C918100, byte_2146F8D58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146C6BF8(uint64_t a1)
{
  result = sub_2146C6C3C(&unk_27C918108, aM_190);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2146C6C3C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CombinedPluginAttachment(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2146C6CA8(uint64_t a1)
{
  result = type metadata accessor for BalloonPlugin.Payload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146C6DAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146C6EC8(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = (*(*v2 + 112))(v13);
  v6 = v13[0];
  v7 = (*(*v2 + 136))(&v14, v5);
  v8 = v14;
  v9 = (*(*v2 + 160))(v7);
  v10 = type metadata accessor for _XPCDecoder();
  v11 = swift_allocObject();
  *(v11 + 32) = MEMORY[0x277D84F90];
  *(v11 + 40) = a1;
  *(v11 + 16) = v6;
  *(v11 + 17) = v8;
  *(v11 + 24) = v9;
  v13[3] = v10;
  v13[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder, byte_214756C60);
  v13[0] = v11;
  swift_unknownObjectRetain();
  return a2(v13);
}

uint64_t sub_2146C702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (*(*v2 + 112))(v18);
  v7 = v18[0];
  v8 = (*(*v2 + 136))(&v19, v6);
  v9 = v19;
  v10 = (*(*v2 + 160))(v8);
  v11 = type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  *(v12 + 32) = MEMORY[0x277D84F90];
  *(v12 + 40) = a1;
  *(v12 + 16) = v7;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  v18[3] = v11;
  v18[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder, byte_214756C60);
  v18[0] = v12;
  swift_unknownObjectRetain();

  sub_2144F2E7C(v18, &v19);
  if (v3)
  {
  }

  v13 = v20;
  if (v20 == 3)
  {
    sub_2146CB244(v19, *(&v19 + 1), 3);
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v16 = &type metadata for UnpackRequestMessage;
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84170], v14);
    swift_willThrow();
  }

  *a2 = v19;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_2146C7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (*(*v2 + 112))(v21);
  v7 = v21[0];
  v8 = (*(*v2 + 136))(&v22, v6);
  v9 = v22;
  v10 = (*(*v2 + 160))(v8);
  v11 = type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  *(v12 + 32) = MEMORY[0x277D84F90];
  *(v12 + 40) = a1;
  *(v12 + 16) = v7;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  v21[3] = v11;
  v21[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder, byte_214756C60);
  v21[0] = v12;
  swift_unknownObjectRetain();

  sub_2144F3244(v21, &v22);
  if (v3)
  {
  }

  v14 = v22;
  if (!v22)
  {
    sub_2146CB204(0, v23);
    v18 = sub_2146D9F58();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v20 = &type metadata for UnpackFileRequestMessage;
    sub_2146D9F28();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
    swift_willThrow();
  }

  v15 = v23;
  v16 = v24;
  v17 = HIBYTE(v24);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 17) = v17;
  return result;
}

uint64_t sub_2146C74F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v67 - v7;
  v10 = a3 + 16;
  v8 = *(a3 + 16);
  v9 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = v9;
  v72 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  v77 = &v67 - v14;
  v80 = sub_2146D9D38();
  v78 = *(v80 - 8);
  v15 = MEMORY[0x28223BE20](v80);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  type metadata accessor for XPCDecoder();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v21 + 16) = 1;
  v22 = *(*(AssociatedTypeWitness - 8) + 56);
  v75 = v20;
  v22(v20, 1, 1, AssociatedTypeWitness);
  v74 = v21;
  sub_2146C702C(a1, &v85);
  if (v3)
  {
    v72 = 0;
    v26 = v3;
    sub_214689A34(v3, 0, 0, &v85);
    v70 = *(&v85 + 1);
    v71 = v85;
    v69 = v86;
    v68 = v87;
    v90 = v88;
    v84 = v89;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v27 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v28 = swift_allocObject();
    v67 = xmmword_2146E6910;
    *(v28 + 16) = xmmword_2146E6910;
    *&v85 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v30 = sub_213FB17C8(&v85, MetatypeMetadata);
    v32 = v31;
    *(v28 + 56) = MEMORY[0x277D837D0];
    v33 = sub_213FB2DA0();
    *(v28 + 64) = v33;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    *&v85 = v3;
    v34 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v35 = sub_2146D9618();
    v36 = MEMORY[0x277D837D0];
    *(v28 + 96) = MEMORY[0x277D837D0];
    *(v28 + 104) = v33;
    *(v28 + 72) = v35;
    *(v28 + 80) = v37;
    v38 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ error: %{public}@", 42, 2, &dword_213FAF000, v27, v38, v28);

    v39 = swift_allocObject();
    *(v39 + 16) = v67;
    *&v85 = AssociatedTypeWitness;
    v40 = sub_213FB17C8(&v85, MetatypeMetadata);
    *(v39 + 56) = v36;
    *(v39 + 64) = v33;
    v41 = v36;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = v71;
    v44 = v70;
    *&v85 = v71;
    *(&v85 + 1) = v70;
    *&v67 = AssociatedTypeWitness;
    v45 = v69;
    v66 = v68;
    v86 = v69;
    v87 = v68;
    v88 = v90;
    v89 = v84;

    v46 = sub_2146D9618();
    *(v39 + 96) = v41;
    *(v39 + 104) = v33;
    *(v39 + 72) = v46;
    *(v39 + 80) = v47;
    v48 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ explosion: %{public}@", 46, 2, &dword_213FAF000, v27, v48, v39);

    v60 = v80;
    v58 = v78;
    v62 = v75;
    v63 = v43;
    v64 = v44;
    v65 = v45;
    AssociatedTypeWitness = v67;
  }

  else
  {
    v24 = *(&v85 + 1);
    v23 = v85;
    LOBYTE(v85) = v86;
    v25 = v84;
    v71 = *(v84 + 32);
    sub_21402D9F8(v23, *(&v85 + 1));
    v71(v23, v24, &v85, v72, v25);
    v72 = 0;
    sub_213FB54FC(v23, v24);
    sub_213FB54FC(v23, v24);
    v58 = v78;
    v59 = v75;
    v60 = v80;
    (*(v78 + 8))(v75, v80);
    v61 = v90;
    v22(v90, 0, 1, AssociatedTypeWitness);
    v62 = v59;
    (*(v58 + 32))(v59, v61, v60);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v90 = 0;
    v84 = 0;
  }

  v49 = v73;
  (*(v58 + 16))(v73, v62, v60);
  *&v85 = v63;
  *(&v85 + 1) = v64;
  v86 = v65;
  v87 = v66;
  v88 = v90;
  v89 = v84;
  v50 = sub_2146D8B88();
  v51 = v79;
  (*(*(v50 - 8) + 56))(v79, 1, 1, v50);
  v52 = v77;
  sub_214080BDC(v49, &v85, v51, 1, AssociatedTypeWitness, AssociatedConformanceWitness, v77);
  v53 = v82;
  v54 = *(*v83 + 200);
  WitnessTable = swift_getWitnessTable(byte_2146EFDD8, v82);
  v56 = v54(v52, v53, WitnessTable);

  (*(v81 + 8))(v52, v53);
  (*(v58 + 8))(v62, v60);
  return v56;
}

uint64_t sub_2146C7CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  swift_getDynamicType();
  (*(v2 + 8))(v4, v1);
  return sub_2146DAA78();
}

uint64_t sub_2146C7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v62 - v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = &v62 - v13;
  v75 = sub_2146D9D38();
  v73 = *(v75 - 8);
  v14 = MEMORY[0x28223BE20](v75);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  type metadata accessor for XPCDecoder();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v20 + 16) = 1;
  v21 = *(*(AssociatedTypeWitness - 8) + 56);
  v70 = v19;
  v21(v19, 1, 1, AssociatedTypeWitness);
  v69 = v20;
  sub_2146C7288(a1, &v81);
  if (v3)
  {
    v67 = 0;
    v23 = v3;
    sub_214689A34(v3, 0, 0, &v81);
    v65 = *(&v81 + 1);
    v66 = v81;
    v64 = v82;
    v86 = v83;
    v79 = v85;
    v80 = v84;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v63 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v24 = swift_allocObject();
    v62 = xmmword_2146E6910;
    *(v24 + 16) = xmmword_2146E6910;
    *&v81 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v26 = sub_213FB17C8(&v81, MetatypeMetadata);
    v27 = AssociatedTypeWitness;
    v29 = v28;
    *(v24 + 56) = MEMORY[0x277D837D0];
    v30 = sub_213FB2DA0();
    *(v24 + 64) = v30;
    *(v24 + 32) = v26;
    *(v24 + 40) = v29;
    *&v81 = v3;
    v31 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v32 = sub_2146D9618();
    v33 = MEMORY[0x277D837D0];
    *(v24 + 96) = MEMORY[0x277D837D0];
    *(v24 + 104) = v30;
    *(v24 + 72) = v32;
    *(v24 + 80) = v34;
    v35 = sub_2146D9BC8();
    v36 = v63;
    sub_2146D91C8("Message Type: %{public}@ error: %{public}@", 42, 2, &dword_213FAF000, v63, v35, v24);

    v37 = swift_allocObject();
    *(v37 + 16) = v62;
    *&v81 = v27;
    v38 = sub_213FB17C8(&v81, MetatypeMetadata);
    *(v37 + 56) = v33;
    *(v37 + 64) = v30;
    v39 = v33;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v58 = v66;
    v59 = v65;
    *&v81 = v66;
    *(&v81 + 1) = v65;
    v60 = v64;
    v82 = v64;
    v83 = v86;
    v84 = v80;
    v85 = v79;

    v41 = sub_2146D9618();
    *(v37 + 96) = v39;
    *(v37 + 104) = v30;
    *(v37 + 72) = v41;
    *(v37 + 80) = v42;
    v43 = sub_2146D9BC8();
    v44 = v36;
    v57 = v27;
    sub_2146D91C8("Message Type: %{public}@ explosion: %{public}@", 46, 2, &dword_213FAF000, v44, v43, v37);

    v55 = v75;
    v61 = v72;
    v53 = v73;
    v54 = v70;
  }

  else
  {
    v66 = AssociatedTypeWitness;
    v22 = *(v9 + 24);

    v22(&v81, v79, v9);
    v67 = 0;

    v53 = v73;
    v54 = v70;
    v55 = v75;
    (*(v73 + 8))(v70, v75);
    v56 = v86;
    v57 = v66;
    v21(v86, 0, 1, v66);
    (*(v53 + 32))(v54, v56, v55);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v86 = 0;
    v79 = 0;
    v80 = 0;
    v61 = v72;
  }

  v45 = v68;
  (*(v53 + 16))(v68, v54, v55);
  *&v81 = v58;
  *(&v81 + 1) = v59;
  v82 = v60;
  v83 = v86;
  v84 = v80;
  v85 = v79;
  v46 = sub_2146D8B88();
  v47 = v74;
  (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
  sub_214080BDC(v45, &v81, v47, 1, v57, AssociatedConformanceWitness, v61);
  v48 = v77;
  v49 = *(*v78 + 200);
  WitnessTable = swift_getWitnessTable(byte_2146EFDD8, v77);
  v51 = v49(v61, v48, WitnessTable);

  (*(v76 + 8))(v61, v48);
  (*(v53 + 8))(v54, v55);
  return v51;
}

uint64_t sub_2146C85BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v90 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v71 - v5;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = v6;
  v76 = v7;
  v83 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, v83, v9);
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v71 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for ContextualUnpackRequestMessage(0, v12, AssociatedConformanceWitness, v14);
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  v18 = sub_2146D9D38();
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  type metadata accessor for XPCDecoder();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v26 + 16) = 1;
  v27 = *(*(AssociatedTypeWitness - 8) + 56);
  v89 = v25;
  v27(v25, 1, 1, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable(asc_2147572E0, v15);
  v80 = v26;
  v29 = v96;
  sub_2144DFF68(v15, v90, v15, WitnessTable, v17);
  if (v29)
  {
    v78 = 0;
    v31 = v29;
    sub_214689A34(v29, 0, 0, &v91);
    v76 = *(&v91 + 1);
    v77 = v91;
    v75 = v92;
    v74 = v93;
    v96 = v94;
    v90 = v95;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v32 = qword_280B35410;
    v72 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v33 = swift_allocObject();
    v73 = xmmword_2146E6910;
    *(v33 + 16) = xmmword_2146E6910;
    *&v91 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v35 = sub_213FB17C8(&v91, MetatypeMetadata);
    v37 = v36;
    *(v33 + 56) = MEMORY[0x277D837D0];
    v38 = sub_213FB2DA0();
    *(v33 + 64) = v38;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    *&v91 = v29;
    v39 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v40 = sub_2146D9618();
    v41 = MEMORY[0x277D837D0];
    *(v33 + 96) = MEMORY[0x277D837D0];
    *(v33 + 104) = v38;
    *(v33 + 72) = v40;
    *(v33 + 80) = v42;
    v43 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ error: %{public}@", 42, 2, &dword_213FAF000, v32, v43, v33);

    v44 = swift_allocObject();
    *(v44 + 16) = v73;
    *&v91 = AssociatedTypeWitness;
    v45 = sub_213FB17C8(&v91, MetatypeMetadata);
    *(v44 + 56) = v41;
    *(v44 + 64) = v38;
    v46 = v41;
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    v48 = v77;
    v68 = v76;
    *&v91 = v77;
    *(&v91 + 1) = v76;
    v49 = v75;
    v70 = v74;
    v92 = v75;
    v93 = v74;
    v94 = v96;
    v95 = v90;

    v50 = sub_2146D9618();
    *(v44 + 96) = v46;
    *(v44 + 104) = v38;
    *(v44 + 72) = v50;
    *(v44 + 80) = v51;
    v52 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ explosion: %{public}@", 46, 2, &dword_213FAF000, v72, v52, v44);

    v65 = v81;
    v66 = v82;
    v67 = v48;
    v69 = v49;
  }

  else
  {
    v30 = v75;
    (*(v77 + 24))(*&v17[*(v15 + 48)], *&v17[*(v15 + 48) + 8], v17, v76);
    v78 = 0;
    v64 = v81;
    v63 = v82;
    (*(v81 + 8))(v89, v82);
    (*(v30 + 8))(v17, v15);
    v27(v23, 0, 1, AssociatedTypeWitness);
    v65 = v64;
    v66 = v63;
    (*(v64 + 32))(v89, v23, v63);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v96 = 0;
    v90 = 0;
  }

  v53 = v79;
  v54 = v89;
  (*(v65 + 16))(v79, v89, v66);
  *&v91 = v67;
  *(&v91 + 1) = v68;
  v92 = v69;
  v93 = v70;
  v94 = v96;
  v95 = v90;
  v55 = sub_2146D8B88();
  v56 = v85;
  (*(*(v55 - 8) + 56))(v85, 1, 1, v55);
  v57 = v84;
  sub_214080BDC(v53, &v91, v56, 1, AssociatedTypeWitness, v83, v84);
  v58 = v87;
  v59 = *(*v88 + 200);
  v60 = swift_getWitnessTable(byte_2146EFDD8, v87);
  v61 = v59(v57, v58, v60);

  (*(v86 + 8))(v57, v58);
  (*(v65 + 8))(v54, v66);
  return v61;
}

uint64_t sub_2146C8E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v77 - v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = v7;
  v81 = v8;
  v88 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, v88, v10);
  v91 = *(v11 - 8);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = &v77 - v12;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ContextualUnpackFileRequestMessage(0, v13, AssociatedConformanceWitness, v15);
  v80 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = sub_2146D9D38();
  v86 = *(v19 - 8);
  v87 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v83 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - v24;
  type metadata accessor for XPCDecoder();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v26 + 16) = 1;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v28(v25, 1, 1, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable(byte_214757330, v16);
  v84 = v26;
  v31 = v101;
  sub_2144DFF68(v16, a1, v16, WitnessTable, v18);
  v85 = v25;
  if (v31)
  {
    v82 = 0;
    v37 = v31;
    sub_214689A34(v31, 0, 0, &v96);
    v80 = *(&v96 + 1);
    v81 = v96;
    v79 = v97;
    v78 = v98;
    v101 = v99;
    v95 = v100;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v38 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v39 = swift_allocObject();
    v77 = xmmword_2146E6910;
    *(v39 + 16) = xmmword_2146E6910;
    *&v96 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v41 = sub_213FB17C8(&v96, MetatypeMetadata);
    v43 = v42;
    v44 = MEMORY[0x277D837D0];
    *(v39 + 56) = MEMORY[0x277D837D0];
    v45 = sub_213FB2DA0();
    v94 = AssociatedTypeWitness;
    v46 = v45;
    *(v39 + 64) = v45;
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
    *&v96 = v31;
    v47 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v48 = sub_2146D9618();
    *(v39 + 96) = v44;
    *(v39 + 104) = v46;
    *(v39 + 72) = v48;
    *(v39 + 80) = v49;
    v50 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ error: %{public}@", 42, 2, &dword_213FAF000, v38, v50, v39);

    v51 = swift_allocObject();
    *(v51 + 16) = v77;
    *&v96 = v94;
    v52 = sub_213FB17C8(&v96, MetatypeMetadata);
    *(v51 + 56) = v44;
    *(v51 + 64) = v46;
    v53 = v44;
    *(v51 + 32) = v52;
    *(v51 + 40) = v54;
    v55 = v81;
    v74 = v80;
    *&v96 = v81;
    *(&v96 + 1) = v80;
    v75 = v79;
    v76 = v78;
    v97 = v79;
    v98 = v78;
    v99 = v101;
    v100 = v95;

    v56 = sub_2146D9618();
    *(v51 + 96) = v53;
    *(v51 + 104) = v46;
    AssociatedTypeWitness = v94;
    *(v51 + 72) = v56;
    *(v51 + 80) = v57;
    v58 = sub_2146D9BC8();
    sub_2146D91C8("Message Type: %{public}@ explosion: %{public}@", 46, 2, &dword_213FAF000, v38, v58, v51);

    v72 = v86;
    v70 = v87;
    v69 = v85;
    v73 = v55;
  }

  else
  {
    v79 = v29;
    v101 = v28;
    v32 = &v18[*(v16 + 48)];
    v34 = *v32;
    v33 = *(v32 + 1);
    LOBYTE(v32) = v32[16];
    *&v96 = v34;
    *(&v96 + 1) = v33;
    LOBYTE(v97) = v32;
    v35 = v82;
    v36 = *(v82 + 24);

    v36(&v96, v18, v81, v35);
    v82 = 0;

    (*(v80 + 8))(v18, v16);
    v69 = v85;
    v68 = v86;
    v70 = v87;
    (*(v86 + 8))(v85, v87);
    v71 = v95;
    v101(v95, 0, 1, AssociatedTypeWitness);
    v72 = v68;
    (*(v68 + 32))(v69, v71, v70);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v101 = 0;
    v95 = 0;
  }

  v59 = v83;
  (*(v72 + 16))(v83, v69, v70);
  *&v96 = v73;
  *(&v96 + 1) = v74;
  v97 = v75;
  v98 = v76;
  v99 = v101;
  v100 = v95;
  v60 = sub_2146D8B88();
  v61 = v90;
  (*(*(v60 - 8) + 56))(v90, 1, 1, v60);
  v62 = v89;
  sub_214080BDC(v59, &v96, v61, 1, AssociatedTypeWitness, v88, v89);
  v63 = v92;
  v64 = *(*v93 + 200);
  v65 = swift_getWitnessTable(byte_2146EFDD8, v92);
  v66 = v64(v62, v63, v65);

  (*(v91 + 8))(v62, v63);
  (*(v72 + 8))(v69, v70);
  return v66;
}

uint64_t sub_2146C97AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4[11] = swift_task_alloc();
  v4[12] = *(a3 + 24);
  v4[13] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[14] = AssociatedTypeWitness;
  sub_2146D9D38();
  v4[15] = swift_task_alloc();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v4[16] = v7;
  v9 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, v7, v8);
  v4[17] = v9;
  v4[18] = *(v9 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = *(AssociatedTypeWitness - 8);
  v4[21] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ContextualUnpackFileRequestMessage(0, v10, AssociatedConformanceWitness, v12);
  v4[22] = v13;
  v4[23] = *(v13 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2146C9A74, 0, 0);
}

uint64_t sub_2146C9A74()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 64);
  type metadata accessor for XPCDecoder();
  v4 = swift_allocObject();
  *(v0 + 200) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v4 + 16) = 1;
  WitnessTable = swift_getWitnessTable(byte_214757330, v2);
  sub_2144DFF68(v2, v3, v2, WitnessTable, v1);
  v6 = *(v0 + 96);
  v7 = (*(v0 + 192) + *(*(v0 + 176) + 48));
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = v7;
  v10 = *(v6 + 24);

  v17 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = sub_2146C9CF4;
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);

  return v17(v13, v0 + 40, v12, v14, v15);
}

uint64_t sub_2146C9CF4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2146CA118;
  }

  else
  {
    v2 = sub_2146C9E1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2146C9E1C()
{
  v29 = v0;
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v9 = v0[9];
  (*(v2 + 16))(v6, v0[21], v7);
  (*(v2 + 56))(v6, 0, 1, v7);
  v10 = sub_2146D8B88();
  memset(v28, 0, sizeof(v28));
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_214080BDC(v6, v28, v8, 1, v7, v5, v3);
  v11 = *(*v9 + 200);
  WitnessTable = swift_getWitnessTable(byte_2146EFDD8, v4);
  v13 = v11(v3, v4, WitnessTable);
  v14 = v0[24];
  v15 = v0[23];
  v27 = v0[22];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[18];
  v19 = v0[19];
  v20 = v0[17];
  if (v1)
  {
    v21 = v0[14];

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v16, v21);
    (*(v15 + 8))(v14, v27);

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[14];
    v26 = v13;

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v16, v24);
    (*(v15 + 8))(v14, v27);

    v25 = v0[1];

    return v25(v26);
  }
}

uint64_t sub_2146CA118()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2146CA1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2146CA28C;

  return sub_2146C97AC(a1, a2, a3);
}

uint64_t sub_2146CA28C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2146CA38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a3;
  v78 = a5;
  v81 = a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = v7;
  v76 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SessionSchemaResult(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v11 = sub_2146D9AB8();
  MEMORY[0x28223BE20](v11);
  v80 = v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C918118, &qword_2147840B0);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D858E0], v11);
  v74 = v11;
  v71 = v13;
  v69 = WitnessTable;
  v15 = sub_2146DA468();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x28223BE20](v15);
  v70 = v63 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ContextualUnpackFileRequestMessage(0, v17, v18, v19);
  v67 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v63 - v21;
  v23 = sub_2146D8B88();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v64 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[2] = v26;
  MEMORY[0x28223BE20](v25);
  v28 = v63 - v27;
  v29 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v30 = qword_280B35410;
  v31 = *(v24 + 16);
  v63[1] = v24 + 16;
  v63[0] = v31;
  v31(v28, a2, v23);
  v32 = os_log_type_enabled(v30, v29);
  v68 = a2;
  v66 = v23;
  v65 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v79 = v22;
    v35 = v20;
    v36 = v34;
    v84[0] = v34;
    *v33 = 136315138;
    sub_2146CB1BC(&qword_27C918120, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v37 = sub_2146DA428();
    v38 = v23;
    v40 = v39;
    (*(v24 + 8))(v28, v38);
    v41 = sub_2144AEA38(v37, v40, v84);

    *(v33 + 4) = v41;
    _os_log_impl(&dword_213FAF000, v30, v29, "Task running for AsyncThrowingStream %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v42 = v36;
    v20 = v35;
    v22 = v79;
    MEMORY[0x216056AC0](v42, -1, -1);
    MEMORY[0x216056AC0](v33, -1, -1);
  }

  else
  {
    (*(v24 + 8))(v28, v23);
  }

  type metadata accessor for XPCDecoder();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v43 + 16) = 1;
  v44 = swift_getWitnessTable(byte_214757330, v20);
  v45 = v85;
  sub_2144DFF68(v20, v81, v20, v44, v22);
  if (v45)
  {
  }

  type metadata accessor for XPCEncoder();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  swift_beginAccess();
  *(v47 + 16) = 1;
  v48 = &v22[*(v20 + 48)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v48) = v48[16];
  v82[0] = v50;
  v82[1] = v49;
  v83 = v48;
  v81 = v20;
  v51 = v76;
  v52 = *(v76 + 24);

  v85 = 0;
  v53 = v68;
  v79 = v22;
  v54 = v75;
  v52(v82, v22, v68, v75, v51);

  v55 = v64;
  v56 = v53;
  v57 = v66;
  (v63[0])(v64, v56, v66);
  v58 = v65;
  v59 = (*(v65 + 80) + 48) & ~*(v65 + 80);
  v60 = swift_allocObject();
  *(v60 + 2) = v54;
  *(v60 + 3) = v51;
  *(v60 + 4) = v77;
  *(v60 + 5) = v47;
  (*(v58 + 32))(&v60[v59], v55, v57);

  v61 = v70;
  sub_2146D9A28();

  v62 = v73;
  sub_21409EFF8(v73);

  (*(v72 + 8))(v61, v62);
  return (*(v67 + 8))(v79, v81);
}

uint64_t sub_2146CAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7[7] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  sub_2146D9D38();
  v7[9] = swift_task_alloc();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v7[10] = v9;
  v11 = type metadata accessor for UnpackResponseMessage(0, AssociatedTypeWitness, v9, v10);
  v7[11] = v11;
  v7[12] = *(v11 - 8);
  v7[13] = swift_task_alloc();
  v13 = type metadata accessor for SessionSchemaResult(0, AssociatedTypeWitness, v9, v12);
  v7[14] = v13;
  v7[15] = *(v13 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2146CAD84, 0, 0);
}

uint64_t sub_2146CAD84()
{
  v26 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v23 = v0[13];
  v24 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  (*(v0[15] + 16))(v1, v0[3], v2);
  v10 = *(v1 + *(v2 + 36));
  if (v10)
  {
    v9 = v8;
  }

  v11 = *(v4 - 8);
  (*(v11 + 16))(v5, v1, v4);
  (*(v11 + 56))(v5, 0, 1, v4);
  v12 = sub_2146D8B88();
  memset(v25, 0, sizeof(v25));
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, v7, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  sub_214080BDC(v5, v25, v6, v10, v4, v24, v23);
  v14 = *(*v9 + 200);

  WitnessTable = swift_getWitnessTable(byte_2146EFDD8, v3);
  v16 = v14(v23, v3, WitnessTable);

  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  v20 = v0[2];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v18 + 8))(v17, v19);
  *v20 = v16;
  *(v20 + 8) = v10;

  v21 = v0[1];

  return v21();
}

uint64_t sub_2146CB0B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(sub_2146D8B88() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21409A9C0;

  return sub_2146CAB88(a1, a2, v10, v11, v2 + v9, v6, v7);
}

uint64_t sub_2146CB1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2146CB204(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2146CB244(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != 3)
  {
    return sub_213FB54FC(result, a2);
  }

  return result;
}

uint64_t sub_2146CB2A0(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 1)
  {
    if (*v1)
    {
      return sub_2146D107C();
    }

    else
    {
      return sub_2146D0DE4();
    }
  }

  else if (v2 == 2)
  {
    return sub_2146D080C();
  }

  else if (v2 == 3)
  {
    return sub_2146D0B24();
  }

  else
  {
    return sub_2146D1320();
  }
}

void sub_2146CB30C(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2146CB368()
{
  v1 = 0x5064696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x5564696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4964696C61766E69;
  }
}

uint64_t sub_2146CB3E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5064696C61766E69;
  v4 = 0xEF6675626F746F72;
  if (v2 != 1)
  {
    v3 = 0x5564696C61766E69;
    v4 = 0xEB00000000444955;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4964696C61766E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB000000006D6574;
  }

  v7 = 0x5064696C61766E69;
  v8 = 0xEF6675626F746F72;
  if (*a2 != 1)
  {
    v7 = 0x5564696C61766E69;
    v8 = 0xEB00000000444955;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4964696C61766E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB000000006D6574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2146CB510()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2146CB5D0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146CB67C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2146CB744(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006D6574;
  v4 = 0xEF6675626F746F72;
  v5 = 0x5064696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x5564696C61766E69;
    v4 = 0xEB00000000444955;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4964696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2146CB7C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a2;
  v105 = a3;
  v6 = type metadata accessor for IDSNearbySessionMessage(0);
  MEMORY[0x28223BE20](v6);
  v100 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = v79 - v12;
  sub_214535078(&v140);
  v13 = v147;
  *(a4 + 104) = v146;
  *(a4 + 120) = v13;
  *(a4 + 136) = v148[0];
  *(a4 + 145) = *(v148 + 9);
  v14 = v143;
  *(a4 + 40) = v142;
  *(a4 + 56) = v14;
  v15 = v145;
  *(a4 + 72) = v144;
  *(a4 + 88) = v15;
  v16 = v141;
  *(a4 + 8) = v140;
  *(a4 + 24) = v16;
  *(a4 + 168) = 0u;
  v17 = (a4 + 168);
  v103 = (a4 + 264);
  *(a4 + 376) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 344) = 0u;
  *(a4 + 360) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 0u;
  v99 = v6;
  v18 = *(v6 + 36);
  v19 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v20 = *(*(v19 - 8) + 56);
  v104 = v18;
  v20(a4 + v18, 1, 1, v19);
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v21 = v149;
      v20(v149, 1, 1, v19);
      v36 = v101;
      v26 = v102;
      v27 = v105;
      sub_2146CCFEC(v102, v105, &v115);
      if (!v36)
      {
        sub_213FB54FC(v26, v27);
        v95 = 0;
        v97 = 0;
        v98 = 0;
        v86 = v116;
        v87 = v115;
        v84 = v118;
        v85 = v117;
        v82 = v120;
        v83 = v119;
        v102 = *(&v121 + 1);
        v105 = v121;
        v137 = v146;
        v138 = v147;
        v139[0] = v148[0];
        *(v139 + 9) = *(v148 + 9);
        v133 = v142;
        v134 = v143;
        v96 = 0u;
        v135 = v144;
        v136 = v145;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v131 = v140;
        v132 = v141;
        v80 = 0u;
        v81 = 0u;
        LODWORD(v101) = v122;
        v28 = v103;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = v149;
      if (a1 != 2)
      {
        goto LABEL_17;
      }

      v20(v149, 1, 1, v19);
      v25 = v101;
      v26 = v102;
      v27 = v105;
      sub_2146CD998(v102, v105, &v115);
      if (!v25)
      {
        sub_213FB54FC(v26, v27);
        v105 = 0;
        v102 = 0;
        LODWORD(v101) = 0;
        v96 = v115;
        v92 = v118;
        v93 = v117;
        v94 = v116;
        v137 = v146;
        v138 = v147;
        v139[0] = v148[0];
        *(v139 + 9) = *(v148 + 9);
        v133 = v142;
        v134 = v143;
        v90 = 0u;
        v91 = 0u;
        v95 = 1;
        v135 = v144;
        v136 = v145;
        v88 = 0u;
        v89 = 0u;
        v80 = 0u;
        v81 = 0u;
        v86 = 0u;
        v87 = 0u;
        v131 = v140;
        v132 = v141;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v97 = *(&v119 + 1);
        v98 = v119;
        v28 = v103;
        goto LABEL_23;
      }
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    v29 = v149;
    v20(v149, 1, 1, v19);
    v30 = v101;
    v31 = v102;
    v32 = v105;
    sub_2146CC2FC(v102, v105, &v115);
    if (!v30)
    {
      sub_213FB54FC(v31, v32);
      v112 = v121;
      v113 = v122;
      v114[0] = v123[0];
      *(v114 + 9) = *(v123 + 9);
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v111 = v120;
      v106 = v115;
      v107 = v116;
      nullsub_1();
      v105 = 0;
      v102 = 0;
      LODWORD(v101) = 0;
      v97 = 0;
      v98 = 0;
      v137 = v112;
      v138 = v113;
      v139[0] = v114[0];
      *(v139 + 9) = *(v114 + 9);
      v96 = 0u;
      v95 = 2;
      v93 = 0u;
      v94 = 0u;
      v133 = v108;
      v134 = v109;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v135 = v110;
      v136 = v111;
      v80 = 0u;
      v81 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v131 = v106;
      v132 = v107;
      v82 = 0u;
      v28 = v103;
      goto LABEL_23;
    }

    sub_213FB2DF4(v29, &qword_27C908068, &qword_21476EEC0);
    v33 = v31;
    v34 = v32;
LABEL_18:
    sub_213FB54FC(v33, v34);
    v24 = v103;
    goto LABEL_19;
  }

  v21 = v149;
  if (a1 == 4)
  {
    v20(v149, 1, 1, v19);
    v35 = v101;
    v26 = v102;
    v27 = v105;
    sub_2146CC52C(v102, v105, &v115);
    if (!v35)
    {
      sub_213FB54FC(v26, v27);
      v105 = 0;
      v102 = 0;
      LODWORD(v101) = 0;
      v97 = 0;
      v98 = 0;
      v90 = v116;
      v91 = v115;
      v88 = v118;
      v89 = v117;
      v137 = v146;
      v138 = v147;
      v139[0] = v148[0];
      *(v139 + 9) = *(v148 + 9);
      v133 = v142;
      v134 = v143;
      v135 = v144;
      v136 = v145;
      v96 = 0u;
      v95 = 3;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v86 = 0u;
      v87 = 0u;
      v131 = v140;
      v132 = v141;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = v120;
      v81 = v119;
      v28 = v103;
      goto LABEL_23;
    }

LABEL_16:
    sub_213FB2DF4(v21, &qword_27C908068, &qword_21476EEC0);
    v33 = v26;
    v34 = v27;
    goto LABEL_18;
  }

  if (a1 != 5)
  {
LABEL_17:
    sub_21404A6EC();
    swift_allocError();
    *v37 = 0xD000000000000031;
    v37[1] = 0x80000002147A72A0;
    v37[2] = 0x4964696C61766E69;
    v37[3] = 0xEB000000006D6574;
    v37[4] = 0xD000000000000017;
    v37[5] = 0x80000002147A72E0;
    swift_willThrow();
    v33 = v102;
    v34 = v105;
    goto LABEL_18;
  }

  v20(v149, 1, 1, v19);
  v22 = v101;
  v23 = v102;
  sub_2146CE1A4(v102, v105, v11);
  v79[1] = v22;
  if (v22)
  {
    sub_213FB2DF4(v21, &qword_27C908068, &qword_21476EEC0);
    sub_213FB54FC(v23, v105);
    v24 = v103;
LABEL_19:
    v38 = *(a4 + 120);
    v137 = *(a4 + 104);
    v138 = v38;
    v139[0] = *(a4 + 136);
    *(v139 + 9) = *(a4 + 145);
    v39 = *(a4 + 56);
    v133 = *(a4 + 40);
    v134 = v39;
    v40 = *(a4 + 88);
    v135 = *(a4 + 72);
    v136 = v40;
    v41 = *(a4 + 24);
    v131 = *(a4 + 8);
    v132 = v41;
    sub_213FB2DF4(&v131, &qword_27C908088, &unk_21476EEA0);
    v42 = *(a4 + 216);
    v108 = *(a4 + 200);
    v109 = v42;
    v43 = *(a4 + 248);
    v110 = *(a4 + 232);
    v111 = v43;
    v44 = *(a4 + 184);
    v106 = *v17;
    v107 = v44;
    sub_213FB2DF4(&v106, &qword_27C9080A0, &unk_2146F4F10);
    v45 = v24[5];
    v119 = v24[4];
    v120 = v45;
    v121 = v24[6];
    LOWORD(v122) = *(v24 + 56);
    v46 = v24[1];
    v115 = *v24;
    v116 = v46;
    v47 = v24[3];
    v117 = v24[2];
    v118 = v47;
    sub_213FB2DF4(&v115, &qword_27C9080B8, &unk_21476EEB0);
    v48 = *(a4 + 432);
    v126 = *(a4 + 416);
    v127 = v48;
    v128 = *(a4 + 448);
    v49 = *(a4 + 400);
    v124 = *(a4 + 384);
    v125 = v49;
    sub_213FB2DF4(&v124, &qword_27C9080D0, &qword_2146F4F20);
    return sub_213FB2DF4(a4 + v104, &qword_27C908068, &qword_21476EEC0);
  }

  sub_213FB2DF4(v21, &qword_27C908068, &qword_21476EEC0);
  sub_213FB54FC(v23, v105);
  v20(v11, 0, 1, v19);
  sub_21408AC04(v11, v21, &qword_27C908068, &qword_21476EEC0);
  v105 = 0;
  v102 = 0;
  LODWORD(v101) = 0;
  v97 = 0;
  v98 = 0;
  v137 = v146;
  v138 = v147;
  v139[0] = v148[0];
  *(v139 + 9) = *(v148 + 9);
  v96 = 0u;
  v95 = 4;
  v93 = 0u;
  v94 = 0u;
  v133 = v142;
  v134 = v143;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v135 = v144;
  v136 = v145;
  v80 = 0u;
  v81 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v131 = v140;
  v132 = v141;
  v82 = 0u;
  v28 = v103;
LABEL_23:
  v51 = v100;
  v52 = v100 + 264;
  sub_21408AC04(v149, &v100[*(v99 + 36)], &qword_27C908068, &qword_21476EEC0);
  v53 = v138;
  *(v51 + 104) = v137;
  *(v51 + 120) = v53;
  *(v51 + 136) = v139[0];
  *(v51 + 145) = *(v139 + 9);
  v54 = v134;
  *(v51 + 40) = v133;
  *(v51 + 56) = v54;
  v55 = v136;
  *(v51 + 72) = v135;
  *(v51 + 88) = v55;
  v56 = v132;
  *(v51 + 8) = v131;
  *v51 = v95;
  *(v51 + 24) = v56;
  v57 = v91;
  *(v51 + 184) = v90;
  *(v51 + 168) = v57;
  v58 = v89;
  *(v51 + 216) = v88;
  *(v51 + 200) = v58;
  v59 = v81;
  *(v51 + 248) = v80;
  *(v51 + 232) = v59;
  v60 = v86;
  *v52 = v87;
  *(v51 + 280) = v60;
  v61 = v84;
  *(v51 + 296) = v85;
  *(v51 + 312) = v61;
  v62 = v82;
  *(v51 + 328) = v83;
  *(v51 + 344) = v62;
  v63 = v102;
  *(v51 + 360) = v105;
  *(v51 + 368) = v63;
  *(v51 + 376) = v101;
  v64 = v94;
  *(v51 + 384) = v96;
  *(v51 + 400) = v64;
  v65 = v92;
  *(v51 + 416) = v93;
  *(v51 + 432) = v65;
  v66 = v97;
  *(v51 + 448) = v98;
  *(v51 + 456) = v66;
  v67 = *(a4 + 120);
  v121 = *(a4 + 104);
  v122 = v67;
  v123[0] = *(a4 + 136);
  *(v123 + 9) = *(a4 + 145);
  v68 = *(a4 + 56);
  v117 = *(a4 + 40);
  v118 = v68;
  v69 = *(a4 + 88);
  v119 = *(a4 + 72);
  v120 = v69;
  v70 = *(a4 + 24);
  v115 = *(a4 + 8);
  v116 = v70;
  sub_213FB2DF4(&v115, &qword_27C908088, &unk_21476EEA0);
  v71 = *(a4 + 216);
  v126 = *(a4 + 200);
  v127 = v71;
  v72 = *(a4 + 248);
  v128 = *(a4 + 232);
  v129 = v72;
  v73 = *(a4 + 184);
  v124 = *v17;
  v125 = v73;
  sub_213FB2DF4(&v124, &qword_27C9080A0, &unk_2146F4F10);
  v74 = v28[5];
  v110 = v28[4];
  v111 = v74;
  v112 = v28[6];
  LOWORD(v113) = *(v28 + 56);
  v75 = v28[1];
  v106 = *v28;
  v107 = v75;
  v76 = v28[3];
  v108 = v28[2];
  v109 = v76;
  sub_213FB2DF4(&v106, &qword_27C9080B8, &unk_21476EEB0);
  v77 = *(a4 + 432);
  v130[2] = *(a4 + 416);
  v130[3] = v77;
  v130[4] = *(a4 + 448);
  v78 = *(a4 + 400);
  v130[0] = *(a4 + 384);
  v130[1] = v78;
  sub_213FB2DF4(v130, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2DF4(a4 + v104, &qword_27C908068, &qword_21476EEC0);
  return sub_2146D69E4(v51, a4, type metadata accessor for IDSNearbySessionMessage);
}

uint64_t sub_2146CC2FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for NearbyProtoConnectionRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest, byte_214758590);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v31 = a3;
    v12 = *v10;
    v13 = v10[1];
    v14 = v10[2];
    v15 = v10[3];
    v16 = *(v8 + 32);
    v17 = (v10 + *(v8 + 28));
    v18 = *v17;
    v19 = v17[1];
    v21 = *(v10 + v16);
    v20 = *(v10 + v16 + 8);
    if (v20 >> 60 != 15)
    {
      v22 = *(v10 + v16);
      v23 = *(v10 + v16 + 8);
      v25 = *v17;
      sub_213FDCA18(v22, v23);
      v18 = v25;
    }

    sub_21422AD24(v12, v13, v14, v15, v18, v19, v21, v20, v31);
    return sub_2146D6A68(v10, type metadata accessor for NearbyProtoConnectionRequest);
  }

  return result;
}

uint64_t sub_2146CC52C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v79 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = sub_2146D8E18();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  MEMORY[0x28223BE20](v18);
  v94 = a1;
  v95 = a2;
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v20 = a2;
  v21 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21402D9F8(a1, v20);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent, byte_2147586F8);
  v22 = v102;
  result = sub_2146D8FD8();
  if (v22)
  {
    return result;
  }

  v73 = v11;
  *&v78 = v14;
  v74 = v7;
  v102 = 0;
  v24 = v21[1];
  v76 = *v21;
  v75 = v24;
  v25 = v21[3];
  v66 = v21[2];
  v65 = v25;
  v26 = *(v18 + 24);
  v77 = v21;
  sub_213FB2E54(v21 + v26, v16, &qword_27C914EC0, qword_214758530);
  v27 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v16, 1, v27) == 1;
  v30 = v16;
  if (!v29)
  {
    v33 = v16;
    sub_213FB2E54(v16, v78, &qword_27C914EC0, qword_214758530);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v71 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload != 1)
    {
      v31 = 0;
      v32 = 0xF000000000000000;
      v36 = v78;
LABEL_14:
      sub_2146D6A68(v36, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      v30 = v33;
      goto LABEL_15;
    }

    v35 = v73;
    sub_213FB2E54(v77 + v26, v73, &qword_27C914EC0, qword_214758530);
    if (v28(v35, 1, v27) == 1)
    {
      sub_213FB2DF4(v35, &qword_27C914EC0, qword_214758530);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = v74;
        sub_2146D69E4(v35, v74, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
LABEL_13:
        v36 = v78;
        v31 = *v37;
        v32 = v37[1];
        sub_21402D9F8(*v37, v32);
        sub_2146D6A68(v37, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
        goto LABEL_14;
      }

      sub_2146D6A68(v35, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    }

    v37 = v74;
    *v74 = xmmword_2146ECC00;
    sub_2146D8DE8();
    goto LABEL_13;
  }

  v31 = 0;
  v71 = 0;
  v32 = 0xF000000000000000;
LABEL_15:
  sub_213FB2DF4(v30, &qword_27C914EC0, qword_214758530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v78 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_21405980C;
  *(v39 + 24) = 0;
  *(inited + 32) = v39;
  sub_213FDCA18(v31, v32);
  sub_214042B80(inited, &v80);
  v40 = v80;
  v41 = *(&v81 + 1);
  v68 = v81;
  v42 = v82;
  v43 = swift_initStackObject();
  *(v43 + 16) = v78;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_21430CE10;
  *(v44 + 24) = 0;
  *(v43 + 32) = v44;
  sub_214042B80(v43, &v94);
  v73 = v94;
  v72 = v95;
  v67 = v96;
  *&v78 = v97;
  LODWORD(v74) = v98;
  v94 = v76;
  v95 = v75;
  v69 = v42;
  v93 = v42;
  *&v80 = 0xD000000000000035;
  *(&v80 + 1) = 0x8000000214791F70;
  *&v81 = 0xD00000000000001CLL;
  *(&v81 + 1) = 0x800000021478A360;

  v45 = v102;
  v70 = v40;
  v46 = (v40)(&v94, &v93, &v80);
  if (v45)
  {
    v102 = v45;

    sub_213FDC6BC(v31, v32);
    v47 = v68;
  }

  else
  {
    v48 = v68;
    v63 = v32;
    v64 = v31;
    if (v46)
    {
      v102 = 0;

      v49 = v75;

      v50 = v66;
      v51 = v65;
      v94 = v66;
      v95 = v65;
      v93 = v74;
      *&v80 = 0xD000000000000031;
      *(&v80 + 1) = 0x8000000214791FB0;
      *&v81 = 0xD00000000000001CLL;
      *(&v81 + 1) = 0x800000021478A360;

      v52 = v72;

      v53 = v102;
      v54 = v73(&v94, &v93, &v80);
      if (v53)
      {
        v102 = v53;
      }

      else
      {
        if (v54)
        {
          v102 = 0;

          v57 = v64;
          v58 = v63;
          sub_213FDC6BC(v64, v63);
          sub_2146D6A68(v77, type metadata accessor for NearbyProtoConnectionResponseContent);

          v59 = v79;
          *v79 = v70;
          v59[1] = *(&v40 + 1);
          v59[2] = v76;
          v59[3] = v49;
          *(v59 + 32) = v69;
          v59[5] = v73;
          v59[6] = v52;
          v59[7] = v50;
          v59[8] = v51;
          *(v59 + 72) = v74;
          *(v59 + 73) = v71;
          v59[10] = v57;
          v59[11] = v58;
          return result;
        }

        sub_214031C4C();
        v60 = swift_allocError();
        *v61 = 0xD000000000000031;
        v61[1] = 0x8000000214791FB0;
        v61[2] = 0xD00000000000001CLL;
        v61[3] = 0x800000021478A360;
        v102 = v60;
        swift_willThrow();
      }

      sub_213FDC6BC(v64, v63);
      v41 = v49;
      v47 = v76;
      v31 = v64;
      v32 = v63;
    }

    else
    {
      sub_214031C4C();
      v55 = swift_allocError();
      *v56 = 0xD000000000000035;
      v56[1] = 0x8000000214791F70;
      v56[2] = 0xD00000000000001CLL;
      v56[3] = 0x800000021478A360;
      v102 = v55;
      swift_willThrow();
      v31 = v64;
      v32 = v63;
      sub_213FDC6BC(v64, v63);
      v47 = v48;
    }
  }

  sub_2146D6A68(v77, type metadata accessor for NearbyProtoConnectionResponseContent);

  *&v80 = v70;
  *(&v80 + 1) = *(&v40 + 1);
  *&v81 = v47;
  *(&v81 + 1) = v41;
  LOBYTE(v82) = v69;
  *(&v82 + 1) = v101[0];
  HIDWORD(v82) = *(v101 + 3);
  v83 = v73;
  v84 = v72;
  v85 = v67;
  v86 = v78;
  v87 = v74;
  v88 = v71;
  v89 = v99;
  v90 = v100;
  v91 = v31;
  v92 = v32;
  return sub_21430CE14(&v80);
}

uint64_t sub_2146CCFEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (**a3)(uint64_t *, __int128 *, __int128 *)@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = a1;
  v88 = a2;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent, aAo);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v50 = a3;
    v62 = 0;
    v12 = v10[1];
    v67 = *v10;
    v68 = v12;
    v13 = v8[7];
    v14 = (v10 + v8[6]);
    v15 = v14[1];
    v51 = *v14;
    v17 = *(v10 + v13);
    v16 = *(v10 + v13 + 8);
    if (v16 >> 60 != 15)
    {
      sub_213FDCA18(*(v10 + v13), *(v10 + v13 + 8));
    }

    v53 = v17;
    v54 = v16;
    v58 = *(v10 + v8[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_214059900;
    *(v19 + 24) = 0;
    *(v18 + 32) = v19;

    sub_214042B80(v18, &v69);
    v21 = *(&v69 + 1);
    v20 = v69;
    v22 = *(&v70 + 1);
    v52 = v70;
    LODWORD(v18) = v71;
    sub_214622C9C(&v87);
    v65 = v87;
    v63 = v88;
    v94 = v89;
    v64 = v90;
    v56 = v91;
    sub_214622DE8(&v83);
    v61 = v83;
    v55 = v84;
    v59 = v85;
    v60 = v86;
    v87 = v67;
    v88 = v68;
    v57 = v18;
    LOBYTE(v83) = v18;
    *&v69 = 0xD00000000000002ELL;
    *(&v69 + 1) = 0x8000000214791FF0;
    *&v70 = 0xD00000000000001CLL;
    *(&v70 + 1) = 0x800000021478A360;

    v66 = v21;
    v23 = v62;
    v24 = v20(&v87, &v83, &v69);
    if (v23)
    {
      sub_213FDC6BC(v53, v54);

      v25 = v56;
    }

    else
    {
      v49 = v20;
      if (v24)
      {

        v87 = v51;
        v88 = v15;
        v26 = v15;
        v25 = v56;
        LOBYTE(v83) = v56;
        *&v69 = 0xD00000000000002FLL;
        *(&v69 + 1) = 0x8000000214792020;
        *&v70 = 0xD00000000000001CLL;
        *(&v70 + 1) = 0x800000021478A360;
        v27 = v63;

        sub_213FDC9D0(v94, v64);
        v28 = v65(&v87, &v83, &v69);
        if (v28)
        {
          v34 = v94;
          v35 = v64;
          v62 = 0;
          sub_213FDC6D0(v94, v64);

          sub_213FDC6D0(v34, v35);
          v69 = v61;
          v36 = v55;
          *&v70 = v55;
          v37 = v59;
          *(&v70 + 1) = v59;
          LOBYTE(v71) = v60;
          v94 = *(&v61 + 1);

          sub_21404F7E0(v36, v37);
          v64 = "Message.JoinRequest.displayName";
          v38 = v53;
          v39 = v54;
          v40 = v62;
          sub_214032118(v53, v54, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
          if (!v40)
          {
            sub_213FDC6BC(v38, v39);

            v43 = v70;
            v44 = v71;

            sub_214032564(v36, v59);
            v45 = v50;
            v46 = v66;
            *v50 = v49;
            v45[1] = v46;
            v47 = v68;
            v45[2] = v67;
            v45[3] = v47;
            *(v45 + 32) = v57;
            v45[5] = v65;
            v45[6] = v27;
            v45[7] = v51;
            v45[8] = v26;
            *(v45 + 72) = v25;
            *(v45 + 5) = v69;
            *(v45 + 6) = v43;
            *(v45 + 112) = v44;
            *(v45 + 113) = v58;
            return sub_2146D6A68(v10, type metadata accessor for NearbyProtoJoinRequestContent);
          }

          sub_213FDC6BC(v38, v39);

          v61 = v69;
          v32 = *(&v70 + 1);
          v41 = v70;
          v60 = v71;

          sub_214032564(v36, v59);
          v22 = v68;
          v94 = v51;
          v33 = v41;
          v31 = v67;
          v20 = v49;
          v30 = v66;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v42 = 0xD00000000000002FLL;
          v42[1] = 0x8000000214792020;
          v42[2] = 0xD00000000000001CLL;
          v42[3] = 0x800000021478A360;
          swift_willThrow();

          sub_213FDC6BC(v53, v54);

          v31 = v67;
          v22 = v68;

          v26 = v64;
          sub_213FDC6D0(v94, v64);
          v20 = v49;
          v30 = v66;
          v32 = v59;
          v33 = v55;
        }

LABEL_10:
        *&v69 = v20;
        *(&v69 + 1) = v30;
        *&v70 = v31;
        *(&v70 + 1) = v22;
        LOBYTE(v71) = v57;
        *(&v71 + 1) = *v93;
        HIDWORD(v71) = *&v93[3];
        v72 = v65;
        v73 = v63;
        v74 = v94;
        v75 = v26;
        v76 = v25;
        *v77 = *v92;
        *&v77[3] = *&v92[3];
        v78 = v61;
        v79 = v33;
        v80 = v32;
        v81 = v60;
        v82 = v58;
        sub_21430D1C4(&v69);
        return sub_2146D6A68(v10, type metadata accessor for NearbyProtoJoinRequestContent);
      }

      sub_214031C4C();
      swift_allocError();
      *v29 = 0xD00000000000002ELL;
      v29[1] = 0x8000000214791FF0;
      v29[2] = 0xD00000000000001CLL;
      v29[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(v53, v54);

      v25 = v56;
      v20 = v49;
    }

    v30 = v66;

    v31 = v52;
    v32 = v59;
    v33 = v55;
    v26 = v64;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2146CD998@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v57 = a3;
  v58 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v58);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v59 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v10 = *(v59 - 8);
  v11 = MEMORY[0x28223BE20](v59);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = sub_2146D8E18();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  MEMORY[0x28223BE20](v17);
  v69 = a1;
  v70 = a2;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v19 = a1;
  v20 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21402D9F8(v19, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent, byte_214758C98);
  v21 = v60;
  result = sub_2146D8FD8();
  if (!v21)
  {
    v23 = v58;
    v56 = v15;
    v60 = 0;
    v24 = *v20;
    v25 = v20[1];
    sub_213FB2E54(v20 + *(v17 + 20), v9, &qword_27C914EC8, &unk_214784480);
    if ((*(v10 + 48))(v9, 1, v59) == 1)
    {
      sub_213FB2DF4(v9, &qword_27C914EC8, &unk_214784480);
      sub_21404A6EC();
      swift_allocError();
      *v26 = 0xD000000000000031;
      v26[1] = 0x80000002147A72A0;
      v26[2] = 0x5064696C61766E69;
      v26[3] = 0xEF6675626F746F72;
      v26[4] = 0xD000000000000012;
      v26[5] = 0x80000002147A7300;
      swift_willThrow();
      return sub_2146D6A68(v20, type metadata accessor for NearbyProtoJoinResponseContent);
    }

    v55 = v25;
    v54 = v24;
    v27 = v56;
    sub_2146D69E4(v9, v56, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_2146D6894(v27, v13, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v20;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2146D69E4(v13, v6, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v29 = *v6;
      v30 = v6[1];
      v31 = v6[2];
      v32 = (v6 + *(v23 + 28));
      v33 = *v32;
      v34 = v32[1];

      sub_213FDCA18(v33, v34);
      sub_2146D6A68(v6, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      if (v34 >> 60 == 15)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      if (v34 >> 60 == 15)
      {
        v36 = 0xC000000000000000;
      }

      else
      {
        v36 = v34;
      }

      v37 = v35;
    }

    else
    {
      sub_2146D6A68(v13, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v37 = 0;
      v36 = 0;
    }

    LODWORD(v59) = EnumCaseMultiPayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_214059900;
    *(v39 + 24) = 0;
    *(inited + 32) = v39;
    sub_21430D49C(v29, v30, v31, v37, v36);
    sub_214042B80(inited, &v61);
    v40 = v61;
    v41 = *(&v62 + 1);
    v50 = v62;
    v69 = v54;
    v70 = v55;
    LODWORD(v58) = v63;
    v71 = v63;
    *&v61 = 0xD00000000000002FLL;
    *(&v61 + 1) = 0x8000000214792080;
    *&v62 = 0xD00000000000001CLL;
    *(&v62 + 1) = 0x800000021478A360;
    v51 = v41;

    v42 = v60;
    v52 = v40;
    v43 = (v40)(&v69, &v71, &v61);
    if (v42)
    {
      v60 = v42;
    }

    else
    {
      if (v43)
      {
        v60 = 0;

        sub_21430D4FC(v29, v30, v31, v37, v36);
        sub_2146D6A68(v56, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
        sub_2146D6A68(v53, type metadata accessor for NearbyProtoJoinResponseContent);

        v44 = v57;
        *v57 = v52;
        v44[1] = *(&v40 + 1);
        v45 = v55;
        v44[2] = v54;
        v44[3] = v45;
        *(v44 + 32) = v58;
        *(v44 + 33) = v59;
        v44[5] = v29;
        v44[6] = v30;
        v44[7] = v31;
        v44[8] = v37;
        v44[9] = v36;
        return result;
      }

      sub_214031C4C();
      v46 = swift_allocError();
      *v47 = 0xD00000000000002FLL;
      v47[1] = 0x8000000214792080;
      v47[2] = 0xD00000000000001CLL;
      v47[3] = 0x800000021478A360;
      v60 = v46;
      swift_willThrow();
    }

    sub_21430D4FC(v29, v30, v31, v37, v36);
    sub_2146D6A68(v56, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_2146D6A68(v53, type metadata accessor for NearbyProtoJoinResponseContent);
    v48 = v51;

    *&v61 = v52;
    *(&v61 + 1) = *(&v40 + 1);
    *&v62 = v50;
    *(&v62 + 1) = v48;
    LOBYTE(v63) = v58;
    BYTE1(v63) = v59;
    v64 = v29;
    v65 = v30;
    v66 = v31;
    v67 = v37;
    v68 = v36;
    return sub_21430D2C8(&v61);
  }

  return result;
}

uint64_t sub_2146CE1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *(&v268 + 1) = a2;
  *&v268 = a1;
  v257 = a3;
  v3 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  MEMORY[0x28223BE20](v3 - 8);
  v254 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  MEMORY[0x28223BE20](v243);
  v258 = (&v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v236 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v248 = &v225 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v244 = &v225 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v235 = &v225 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v247 = &v225 - v16;
  MEMORY[0x28223BE20](v15);
  v242 = &v225 - v17;
  v239 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  MEMORY[0x28223BE20](v239);
  v259 = (&v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v264 = type metadata accessor for NearbyGroup_Member(0);
  v260 = *(v264 - 8);
  v19 = MEMORY[0x28223BE20](v264);
  v234 = (&v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v246 = (&v225 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v241 = (&v225 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v233 = (&v225 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v245 = (&v225 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v240 = (&v225 - v30);
  MEMORY[0x28223BE20](v29);
  v237 = (&v225 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v253 = &v225 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v252 = &v225 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v251 = &v225 - v38;
  MEMORY[0x28223BE20](v37);
  v250 = &v225 - v39;
  v261 = sub_2146D8B88();
  v262 = *(v261 - 8);
  v40 = MEMORY[0x28223BE20](v261);
  v238 = &v225 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v256 = &v225 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v255 = &v225 - v45;
  MEMORY[0x28223BE20](v44);
  v249 = &v225 - v46;
  v47 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v225 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v225 - v51;
  v265 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v263 = *(v265 - 8);
  v53 = MEMORY[0x28223BE20](v265);
  v55 = &v225 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v57 = &v225 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  MEMORY[0x28223BE20](v58 - 8);
  v267 = &v225 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v266 = &v225 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v64 = &v225 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  MEMORY[0x28223BE20](v65 - 8);
  v67 = (&v225 - v66);
  v68 = sub_2146D8E18();
  MEMORY[0x28223BE20](v68 - 8);
  v69 = type metadata accessor for NearbyGroup_Group(0);
  MEMORY[0x28223BE20](v69);
  v71 = &v225 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = v268;
  *&v276 = 0;
  v274 = 0u;
  v275 = 0u;
  sub_21402D9F8(v268, *(&v268 + 1));
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group, byte_214735590);
  v72 = v279;
  result = sub_2146D8FD8();
  if (!v72)
  {
    *&v268 = v49;
    *(&v268 + 1) = v57;
    v279 = 0;
    v74 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
    v75 = *(v74 - 8);
    v229 = *(v75 + 56);
    v228 = v75 + 56;
    v229(v67, 1, 1, v74);
    v76 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
    v77 = *(v76 - 8);
    v78 = *(v77 + 56);
    v79 = v77 + 56;
    v78(v64, 1, 1, v76);
    v231 = v78;
    v230 = v79;
    v78(v266, 1, 1, v76);
    v80 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
    v232 = *(*(v80 - 8) + 56);
    v232(v267, 1, 1, v80);
    sub_213FB2E54(v71, v52, &qword_27C9122F8, &qword_214735780);
    if (v263[6](v52, 1, v265) == 1)
    {
      sub_213FB2DF4(v52, &qword_27C9122F8, &qword_214735780);
      sub_21404A6EC();
      swift_allocError();
      *v81 = 0xD000000000000031;
      v81[1] = 0x80000002147A72A0;
      v81[2] = 0x5064696C61766E69;
      v81[3] = 0xEF6675626F746F72;
      v81[4] = 0xD000000000000012;
      v81[5] = 0x80000002147A7300;
      swift_willThrow();
      sub_213FB2DF4(v267, &qword_27C90A498, &qword_2146F5E50);
      sub_213FB2DF4(v266, &qword_27C90A490, &qword_2146F5E48);
      sub_213FB2DF4(v64, &qword_27C90A490, &qword_2146F5E48);
      sub_213FB2DF4(v67, &qword_27C90A488, &qword_2146F5E40);
      return sub_2146D6A68(v71, type metadata accessor for NearbyGroup_Group);
    }

    v225 = v76;
    v226 = v71;
    v227 = v64;
    v263 = v67;
    v82 = *(&v268 + 1);
    sub_2146D69E4(v52, *(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v83 = v55;
    sub_2146D6894(v82, v55, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v85 = v262;
    v86 = (v262 + 48);
    if (EnumCaseMultiPayload > 1)
    {
      v99 = v267;
      v100 = v261;
      if (EnumCaseMultiPayload != 2)
      {
        v115 = v254;
        sub_2146D69E4(v83, v254, type metadata accessor for NearbyGroup_Group.MemberLeft);
        v116 = *v115;
        v117 = *(v115 + 8);
        sub_21402D9F8(*v115, v117);
        v118 = v116;
        v119 = v253;
        sub_2146D05BC(v118, v117, v253);
        v120 = (*v86)(v119, 1, v100);
        v121 = v100;
        v122 = v227;
        if (v120 != 1)
        {
          sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v168 = v267;
          sub_213FB2DF4(v267, &qword_27C90A498, &qword_2146F5E50);
          sub_2146D6A68(v226, type metadata accessor for NearbyGroup_Group);
          v169 = v119;
          v170 = *(v85 + 32);
          v171 = v238;
          v170(v238, v169, v121);
          v170(v168, v171, v121);
          LOBYTE(v170) = *(v115 + 16);
          v172 = v115;
          v87 = v168;
          sub_2146D6A68(v172, type metadata accessor for NearbyGroup_Group.MemberLeft);
          *(v168 + *(v80 + 20)) = v170;
          v232(v168, 0, 1, v80);
          v173 = 3;
          v174 = v263;
          v175 = v257;
          v95 = v266;
LABEL_74:
          v224 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
          sub_21408AC04(v174, &v175[v224[5]], &qword_27C90A488, &qword_2146F5E40);
          sub_21408AC04(v122, &v175[v224[6]], &qword_27C90A490, &qword_2146F5E48);
          sub_21408AC04(v95, &v175[v224[7]], &qword_27C90A490, &qword_2146F5E48);
          result = sub_21408AC04(v87, &v175[v224[8]], &qword_27C90A498, &qword_2146F5E50);
          *v175 = v173;
          return result;
        }

        sub_213FB2DF4(v119, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v123 = 2;
        swift_willThrow();
        sub_2146D6A68(v115, type metadata accessor for NearbyGroup_Group.MemberLeft);
        sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v267, &qword_27C90A498, &qword_2146F5E50);
        sub_213FB2DF4(v266, &qword_27C90A490, &qword_2146F5E48);
        v114 = v122;
LABEL_16:
        sub_213FB2DF4(v114, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
        v97 = type metadata accessor for NearbyGroup_Group;
        v98 = v226;
        return sub_2146D6A68(v98, v97);
      }

      v101 = v258;
      sub_2146D69E4(v83, v258, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v102 = *v101;
      v103 = v101[1];
      sub_21402D9F8(*v101, v103);
      v104 = v252;
      sub_2146D05BC(v102, v103, v252);
      if ((*v86)(v104, 1, v100) == 1)
      {
        sub_213FB2DF4(v104, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v105 = 2;
        swift_willThrow();
        sub_2146D6A68(v101, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v99, &qword_27C90A498, &qword_2146F5E50);
        v106 = v266;
LABEL_13:
        sub_213FB2DF4(v106, &qword_27C90A490, &qword_2146F5E48);
        v114 = v227;
        goto LABEL_16;
      }

      v146 = *(v85 + 32);
      v265 = v85 + 32;
      v259 = v146;
      (v146)(v256, v104, v100);
      v147 = *(v243 + 24);
      v148 = v244;
      sub_213FB2E54(v101 + v147, v244, &qword_27C912330, &qword_2147357B8);
      v149 = *(v260 + 48);
      v150 = v264;
      if (v149(v148, 1, v264) == 1)
      {
        v151 = v241;
        *v241 = 0;
        v151[1] = 0xE000000000000000;
        sub_2146D8DE8();
        v152 = (v151 + *(v150 + 24));
        *v152 = 0;
        v152[1] = 0;
        v153 = v150;
        v154 = v151;
        v155 = v149(v148, 1, v153);
        v156 = v248;
        if (v155 != 1)
        {
          sub_213FB2DF4(v148, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v154 = v241;
        sub_2146D69E4(v148, v241, type metadata accessor for NearbyGroup_Member);
        v156 = v248;
      }

      v176 = v154[1];
      *&v268 = *v154;

      sub_2146D6A68(v154, type metadata accessor for NearbyGroup_Member);
      sub_213FB2E54(v101 + v147, v156, &qword_27C912330, &qword_2147357B8);
      v177 = v264;
      if (v149(v156, 1, v264) == 1)
      {
        v178 = v246;
        *v246 = 0;
        v178[1] = 0xE000000000000000;
        sub_2146D8DE8();
        v179 = (v178 + *(v177 + 24));
        *v179 = 0;
        v179[1] = 0;
        if (v149(v156, 1, v177) != 1)
        {
          sub_213FB2DF4(v156, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v178 = v246;
        sub_2146D69E4(v156, v246, type metadata accessor for NearbyGroup_Member);
      }

      v184 = v264;
      v185 = (v178 + *(v264 + 24));
      v95 = v266;
      if (v185[1])
      {
        sub_2146D6A68(v178, type metadata accessor for NearbyGroup_Member);
        v186 = v258 + v147;
        v187 = v236;
        sub_213FB2E54(v186, v236, &qword_27C912330, &qword_2147357B8);
        if (v149(v187, 1, v184) == 1)
        {
          v188 = v234;
          *v234 = 0;
          v188[1] = 0xE000000000000000;
          sub_2146D8DE8();
          v189 = (v188 + *(v184 + 24));
          *v189 = 0;
          v189[1] = 0;
          v190 = v149(v187, 1, v184);
          v191 = v225;
          v87 = v267;
          if (v190 != 1)
          {
            sub_213FB2DF4(v187, &qword_27C912330, &qword_2147357B8);
          }
        }

        else
        {
          v188 = v234;
          sub_2146D69E4(v187, v234, type metadata accessor for NearbyGroup_Member);
          v191 = v225;
          v87 = v267;
        }

        v205 = (v188 + *(v184 + 24));
        v206 = v188;
        v201 = *v205;
        v207 = v205[1];

        sub_2146D6A68(v206, type metadata accessor for NearbyGroup_Member);
        if (v207)
        {
          v202 = v207;
        }

        else
        {
          v201 = 0;
          v202 = 0xE000000000000000;
        }
      }

      else
      {
        v201 = *v185;
        sub_2146D6A68(v178, type metadata accessor for NearbyGroup_Member);
        v202 = 0;
        v191 = v225;
        v87 = v267;
      }

      v208 = v279;
      sub_214231E78(v268, v176, v201, v202, &v274);
      v279 = v208;
      v209 = v226;
      if (v208)
      {
        (*(v262 + 8))(v256, v100);
        v210 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
        v211 = &v277[24];
LABEL_69:
        sub_2146D6A68(*(v211 - 32), v210);
        sub_2146D6A68(*(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v87, &qword_27C90A498, &qword_2146F5E50);
        sub_213FB2DF4(v95, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v227, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
        return sub_2146D6A68(v209, type metadata accessor for NearbyGroup_Group);
      }

      sub_2146D6A68(v258, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      sub_2146D6A68(*(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
      sub_213FB2DF4(v95, &qword_27C90A490, &qword_2146F5E48);
      sub_2146D6A68(v209, type metadata accessor for NearbyGroup_Group);
      v272 = v276;
      *v273 = *v277;
      *&v273[9] = *&v277[9];
      v270 = v274;
      v271 = v275;
      (v259)(v95, v256, v100);
      v212 = (v95 + *(v191 + 20));
      v213 = *v273;
      v212[2] = v272;
      v212[3] = v213;
      *(v212 + 57) = *&v273[9];
      v214 = v271;
      *v212 = v270;
      v212[1] = v214;
      v231(v95, 0, 1, v191);
      v173 = 2;
      v174 = v263;
      v122 = v227;
    }

    else
    {
      v87 = v267;
      v88 = v261;
      if (!EnumCaseMultiPayload)
      {
        v259 = v74;
        v89 = v268;
        sub_2146D69E4(v83, v268, type metadata accessor for NearbyGroup_Group.Initialization);
        v90 = *v89;
        v91 = v89[1];
        sub_21402D9F8(*v89, v91);
        v92 = v90;
        v93 = v250;
        sub_2146D05BC(v92, v91, v250);
        v94 = (*v86)(v93, 1, v88);
        v95 = v266;
        if (v94 == 1)
        {
          sub_213FB2DF4(v93, &unk_27C904F30, &unk_2146EFA20);
          sub_2146D6840();
          swift_allocError();
          *v96 = 2;
          swift_willThrow();
          sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          sub_213FB2DF4(v87, &qword_27C90A498, &qword_2146F5E50);
          sub_213FB2DF4(v95, &qword_27C90A490, &qword_2146F5E48);
          sub_213FB2DF4(v227, &qword_27C90A490, &qword_2146F5E48);
          sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v226, type metadata accessor for NearbyGroup_Group);
          v97 = type metadata accessor for NearbyGroup_Group.Initialization;
          v98 = v89;
          return sub_2146D6A68(v98, v97);
        }

        v124 = *(v262 + 32);
        v125 = v249;
        v258 = (v262 + 32);
        v256 = v124;
        (v124)(v249, v93, v88);
        v126 = v89[2];
        v127 = *(v126 + 16);
        if (v127)
        {
          v269 = MEMORY[0x277D84F90];
          result = sub_2140A02B4(0, v127, 0);
          v128 = v237;
          if (!*(v126 + 16))
          {
LABEL_76:
            __break(1u);
            return result;
          }

          v129 = 0;
          v130 = v269;
          v131 = v126 + ((*(v260 + 80) + 32) & ~*(v260 + 80));
          v265 = *(v260 + 72);
          v132 = v127 - 1;
          while (1)
          {
            sub_2146D6894(v131, v128, type metadata accessor for NearbyGroup_Member);
            v134 = *v128;
            v133 = v128[1];
            v135 = (v128 + *(v264 + 24));
            v136 = *v135;
            v137 = v135[1];

            v138 = v134;
            v139 = v279;
            sub_214231E78(v138, v133, v136, v137, &v274);
            v279 = v139;
            if (v139)
            {
              (*(v262 + 8))(v249, v261);
              sub_2146D6A68(*(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
              sub_213FB2DF4(v267, &qword_27C90A498, &qword_2146F5E50);
              sub_213FB2DF4(v266, &qword_27C90A490, &qword_2146F5E48);
              sub_213FB2DF4(v227, &qword_27C90A490, &qword_2146F5E48);
              sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
              sub_2146D6A68(v226, type metadata accessor for NearbyGroup_Group);
              sub_2146D6A68(v128, type metadata accessor for NearbyGroup_Member);
              sub_2146D6A68(v268, type metadata accessor for NearbyGroup_Group.Initialization);
            }

            result = sub_2146D6A68(v128, type metadata accessor for NearbyGroup_Member);
            *&v273[9] = *&v277[9];
            v272 = v276;
            *v273 = *v277;
            v270 = v274;
            v271 = v275;
            v269 = v130;
            v141 = *(v130 + 16);
            v140 = *(v130 + 24);
            if (v141 >= v140 >> 1)
            {
              result = sub_2140A02B4((v140 > 1), v141 + 1, 1);
              v128 = v237;
              v130 = v269;
            }

            *(v130 + 16) = v141 + 1;
            v142 = (v130 + 80 * v141);
            v142[2] = v270;
            v143 = v271;
            v144 = v272;
            v145 = *v273;
            *(v142 + 89) = *&v273[9];
            v142[4] = v144;
            v142[5] = v145;
            v142[3] = v143;
            if (v132 == v129)
            {
              break;
            }

            v131 += v265;
            if (++v129 >= *(v126 + 16))
            {
              goto LABEL_76;
            }
          }

          sub_2146D6A68(*(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v174 = v263;
          sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v226, type metadata accessor for NearbyGroup_Group);
          sub_2146D6A68(v268, type metadata accessor for NearbyGroup_Group.Initialization);
          v95 = v266;
          v88 = v261;
          v125 = v249;
        }

        else
        {
          sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v174 = v263;
          sub_213FB2DF4(v263, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v226, type metadata accessor for NearbyGroup_Group);
          sub_2146D6A68(v89, type metadata accessor for NearbyGroup_Group.Initialization);
          v130 = MEMORY[0x277D84F90];
        }

        (v256)(v174, v125, v88);
        *(v174 + *(v259 + 5)) = v130;
        (v229)(v174, 0, 1);
        v173 = 0;
        v122 = v227;
        v87 = v267;
        goto LABEL_73;
      }

      v107 = v259;
      sub_2146D69E4(v83, v259, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v108 = *v107;
      v109 = v107[1];
      sub_21402D9F8(*v107, v109);
      v110 = v251;
      sub_2146D05BC(v108, v109, v251);
      v111 = (*v86)(v110, 1, v88);
      v112 = v266;
      if (v111 == 1)
      {
        sub_213FB2DF4(v110, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v113 = 2;
        swift_willThrow();
        sub_2146D6A68(v107, type metadata accessor for NearbyGroup_Group.MemberAdded);
        sub_2146D6A68(v82, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v87, &qword_27C90A498, &qword_2146F5E50);
        v106 = v112;
        goto LABEL_13;
      }

      v157 = *(v85 + 32);
      v265 = v85 + 32;
      v258 = v157;
      (v157)(v255, v110, v88);
      v158 = *(v239 + 24);
      v159 = v242;
      sub_213FB2E54(v107 + v158, v242, &qword_27C912330, &qword_2147357B8);
      v161 = v260 + 48;
      v160 = *(v260 + 48);
      v162 = v264;
      v163 = v160(v159, 1, v264);
      v260 = v161;
      if (v163 == 1)
      {
        v164 = v240;
        *v240 = 0;
        v164[1] = 0xE000000000000000;
        sub_2146D8DE8();
        v165 = (v164 + *(v162 + 24));
        *v165 = 0;
        v165[1] = 0;
        v166 = v160(v159, 1, v162);
        v167 = v247;
        if (v166 != 1)
        {
          sub_213FB2DF4(v159, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v164 = v240;
        sub_2146D69E4(v159, v240, type metadata accessor for NearbyGroup_Member);
        v167 = v247;
      }

      v180 = v164[1];
      *&v268 = *v164;

      sub_2146D6A68(v164, type metadata accessor for NearbyGroup_Member);
      sub_213FB2E54(v259 + v158, v167, &qword_27C912330, &qword_2147357B8);
      v181 = v264;
      if (v160(v167, 1, v264) == 1)
      {
        v182 = v245;
        *v245 = 0;
        v182[1] = 0xE000000000000000;
        sub_2146D8DE8();
        v183 = (v182 + *(v181 + 24));
        *v183 = 0;
        v183[1] = 0;
        if (v160(v167, 1, v181) != 1)
        {
          sub_213FB2DF4(v167, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v182 = v245;
        sub_2146D69E4(v167, v245, type metadata accessor for NearbyGroup_Member);
      }

      v192 = v264;
      v193 = (v182 + *(v264 + 24));
      if (v193[1])
      {
        sub_2146D6A68(v182, type metadata accessor for NearbyGroup_Member);
        v194 = v259 + v158;
        v195 = v235;
        sub_213FB2E54(v194, v235, &qword_27C912330, &qword_2147357B8);
        if (v160(v195, 1, v192) == 1)
        {
          v196 = v233;
          *v233 = 0;
          v196[1] = 0xE000000000000000;
          sub_2146D8DE8();
          v197 = (v196 + *(v192 + 24));
          *v197 = 0;
          v197[1] = 0;
          v198 = v160(v195, 1, v192);
          v199 = v196;
          v95 = v266;
          v200 = v225;
          if (v198 != 1)
          {
            sub_213FB2DF4(v195, &qword_27C912330, &qword_2147357B8);
          }
        }

        else
        {
          v199 = v233;
          sub_2146D69E4(v195, v233, type metadata accessor for NearbyGroup_Member);
          v95 = v266;
          v200 = v225;
        }

        v215 = (v199 + *(v192 + 24));
        v216 = v199;
        v203 = *v215;
        v217 = v215[1];

        sub_2146D6A68(v216, type metadata accessor for NearbyGroup_Member);
        if (v217)
        {
          v204 = v217;
        }

        else
        {
          v203 = 0;
          v204 = 0xE000000000000000;
        }
      }

      else
      {
        v203 = *v193;
        sub_2146D6A68(v182, type metadata accessor for NearbyGroup_Member);
        v204 = 0;
        v95 = v266;
        v200 = v225;
      }

      v218 = v279;
      sub_214231E78(v268, v180, v203, v204, &v274);
      v279 = v218;
      v209 = v226;
      v219 = v255;
      if (v218)
      {
        (*(v262 + 8))(v255, v88);
        v210 = type metadata accessor for NearbyGroup_Group.MemberAdded;
        v211 = &v278;
        goto LABEL_69;
      }

      sub_2146D6A68(v259, type metadata accessor for NearbyGroup_Group.MemberAdded);
      sub_2146D6A68(*(&v268 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v220 = v88;
      v122 = v227;
      sub_213FB2DF4(v227, &qword_27C90A490, &qword_2146F5E48);
      sub_2146D6A68(v209, type metadata accessor for NearbyGroup_Group);
      v272 = v276;
      *v273 = *v277;
      *&v273[9] = *&v277[9];
      v270 = v274;
      v271 = v275;
      (v258)(v122, v219, v220);
      v221 = (v122 + *(v200 + 20));
      v222 = *v273;
      v221[2] = v272;
      v221[3] = v222;
      *(v221 + 57) = *&v273[9];
      v223 = v271;
      *v221 = v270;
      v221[1] = v223;
      v173 = 1;
      v231(v122, 0, 1, v200);
      v174 = v263;
    }

LABEL_73:
    v175 = v257;
    goto LABEL_74;
  }

  return result;
}

uint64_t sub_2146D05BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
LABEL_23:
        sub_2146D8B58();
        v16 = 0;
        a1 = v11;
        goto LABEL_24;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = sub_2146D8728();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = sub_2146D8758();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = v10 - v14 + v13;
      a1 = sub_2146D8748();
      if (v15)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = sub_2146D8728();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = sub_2146D8758();
    if (!__OFSUB__(v17, v20))
    {
      v21 = v17 - v20 + v19;
      sub_2146D8748();
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_2146D8748();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_2146D8748();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_213FB54FC(a1, a2);
  v22 = sub_2146D8B88();
  v23 = *(*(v22 - 8) + 56);

  return v23(a3, v16, 1, v22);
}

uint64_t sub_2146D080C()
{
  v1 = type metadata accessor for NearbyProtoConnectionRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + 120);
  v27 = *(v0 + 104);
  v28 = v4;
  v29[0] = *(v0 + 136);
  *(v29 + 9) = *(v0 + 145);
  v5 = *(v0 + 56);
  v23 = *(v0 + 40);
  v24 = v5;
  v6 = *(v0 + 88);
  v25 = *(v0 + 72);
  v26 = v6;
  v7 = *(v0 + 24);
  v21 = *(v0 + 8);
  v22 = v7;
  v8 = *(v0 + 120);
  v36 = *(v0 + 104);
  v37 = v8;
  v38[0] = *(v0 + 136);
  *(v38 + 9) = *(v0 + 145);
  v9 = *(v0 + 56);
  v32 = *(v0 + 40);
  v33 = v9;
  v10 = *(v0 + 88);
  v34 = *(v0 + 72);
  v35 = v10;
  v11 = *(v0 + 24);
  v30 = *(v0 + 8);
  v31 = v11;
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v30);
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 == 1)
  {
    v13 = 0x80000002147A7320;
    sub_21404A6EC();
    swift_allocError();
    *v14 = 0xD000000000000031;
    v14[1] = 0x80000002147A72A0;
    v14[2] = 0xD00000000000001ALL;
    v14[3] = 0x80000002147A7320;
    v14[4] = 0xD000000000000017;
    v14[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  else
  {
    v19[6] = v36;
    v19[7] = v37;
    v20[0] = v38[0];
    *(v20 + 9) = *(v38 + 9);
    v19[2] = v32;
    v19[3] = v33;
    v19[4] = v34;
    v19[5] = v35;
    v19[0] = v30;
    v19[1] = v31;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
    *&v16[-16] = v19;
    v17[6] = v27;
    v17[7] = v28;
    v18[0] = v29[0];
    *(v18 + 9) = *(v29 + 9);
    v17[2] = v23;
    v17[3] = v24;
    v17[4] = v25;
    v17[5] = v26;
    v17[0] = v21;
    v17[1] = v22;
    sub_21430CDB4(v17, v16);
    sub_2146D6B54(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest, byte_214758590);
    sub_2146D9018();
    v13 = sub_2146D8FC8();
    sub_2146D6A68(v3, type metadata accessor for NearbyProtoConnectionRequest);
    sub_213FB2DF4(&v21, &qword_27C908088, &unk_21476EEA0);
  }

  return v13;
}

uint64_t sub_2146D0B24()
{
  v2 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 168);
  v7 = *(v0 + 216);
  v29[2] = *(v0 + 200);
  v29[3] = v7;
  v8 = *(v0 + 248);
  v29[4] = *(v0 + 232);
  v29[5] = v8;
  v9 = *(v0 + 184);
  v29[0] = v6;
  v29[1] = v9;
  if (v6)
  {
    v10 = *(v0 + 224);
    v25 = *(v0 + 208);
    v26 = v10;
    v27 = *(v0 + 240);
    v11 = *(v0 + 192);
    v23 = *(v0 + 176);
    v12 = *(v0 + 256);
    v22 = v6;
    v28 = v12;
    v24 = v11;
    MEMORY[0x28223BE20](v3);
    *&v20[-16] = v13;
    v14 = *(v0 + 216);
    v21[2] = *(v0 + 200);
    v21[3] = v14;
    v15 = *(v0 + 248);
    v21[4] = *(v0 + 232);
    v21[5] = v15;
    v16 = *(v0 + 184);
    v21[0] = *(v0 + 168);
    v21[1] = v16;
    sub_21430CFE8(v21, v20);
    sub_2146D6B54(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent, byte_2147586F8);
    v17 = v2;
    sub_2146D9018();
    if (!v1)
    {
      v17 = sub_2146D8FC8();
      sub_2146D6A68(v5, type metadata accessor for NearbyProtoConnectionResponseContent);
    }

    sub_213FB2DF4(v29, &qword_27C9080A0, &unk_2146F4F10);
  }

  else
  {
    v17 = 0x80000002147A72A0;
    sub_21404A6EC();
    swift_allocError();
    *v18 = 0xD000000000000031;
    v18[1] = 0x80000002147A72A0;
    v18[2] = 0xD00000000000001BLL;
    v18[3] = 0x80000002147A7340;
    v18[4] = 0xD000000000000017;
    v18[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_2146D0DE4()
{
  v1 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 344);
  v31[4] = *(v0 + 328);
  v31[5] = v5;
  v31[6] = *(v0 + 360);
  v32 = *(v0 + 376);
  v6 = *(v0 + 280);
  v31[0] = *(v0 + 264);
  v31[1] = v6;
  v7 = *(v0 + 312);
  v31[2] = *(v0 + 296);
  v31[3] = v7;
  if (*&v31[0])
  {
    v24 = *&v31[0];
    v8 = *(v0 + 352);
    v29 = *(v0 + 336);
    v30[0] = v8;
    v9 = *(v0 + 288);
    v25 = *(v0 + 272);
    v26 = v9;
    v10 = *(v0 + 320);
    v27 = *(v0 + 304);
    v28 = v10;
    *(v30 + 10) = *(v0 + 362);
    MEMORY[0x28223BE20](v2);
    v12 = *(v11 + 64);
    v13 = *(v11 + 96);
    v22[5] = *(v11 + 80);
    v22[6] = v13;
    v14 = *(v11 + 16);
    v22[0] = *v11;
    v15 = *(v11 + 32);
    v16 = *(v11 + 48);
    v22[1] = v14;
    v22[2] = v15;
    *(&v20 - 2) = &v24;
    v23 = *(v11 + 112);
    v22[3] = v16;
    v22[4] = v12;
    sub_21430D26C(v22, &v21);
    sub_2146D6B54(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent, aAo);
    sub_2146D9018();
    v17 = sub_2146D8FC8();
    sub_2146D6A68(v4, type metadata accessor for NearbyProtoJoinRequestContent);
    sub_213FB2DF4(v31, &qword_27C9080B8, &unk_21476EEB0);
  }

  else
  {
    v17 = 0x80000002147A7390;
    sub_21404A6EC();
    swift_allocError();
    *v18 = 0xD000000000000031;
    v18[1] = 0x80000002147A72A0;
    v18[2] = 0xD000000000000014;
    v18[3] = 0x80000002147A7390;
    v18[4] = 0xD000000000000017;
    v18[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_2146D107C()
{
  v2 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 400);
  v25[0] = *(v0 + 384);
  v25[1] = v6;
  v7 = *(v0 + 432);
  v25[2] = *(v0 + 416);
  v25[3] = v7;
  v25[4] = *(v0 + 448);
  if (*&v25[0])
  {
    v8 = *(v0 + 456);
    v19 = *&v25[0];
    v24 = v8;
    v9 = *(v0 + 392);
    v21 = *(v0 + 408);
    v10 = *(v0 + 440);
    v22 = *(v0 + 424);
    v23 = v10;
    v20 = v9;
    MEMORY[0x28223BE20](v3);
    *&v17[-16] = v11;
    v12 = *(v0 + 432);
    v18[2] = *(v0 + 416);
    v18[3] = v12;
    v18[4] = *(v0 + 448);
    v13 = *(v0 + 400);
    v18[0] = *(v0 + 384);
    v18[1] = v13;
    sub_21430D55C(v18, v17);
    sub_2146D6B54(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent, byte_214758C98);
    v14 = v2;
    sub_2146D9018();
    if (!v1)
    {
      v14 = sub_2146D8FC8();
      sub_2146D6A68(v5, type metadata accessor for NearbyProtoJoinResponseContent);
    }

    sub_213FB2DF4(v25, &qword_27C9080D0, &qword_2146F4F20);
  }

  else
  {
    v14 = 0x80000002147A72A0;
    sub_21404A6EC();
    swift_allocError();
    *v15 = 0xD000000000000031;
    v15[1] = 0x80000002147A72A0;
    v15[2] = 0xD000000000000015;
    v15[3] = 0x80000002147A73B0;
    v15[4] = 0xD000000000000017;
    v15[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_2146D1320()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyGroup_Group(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C902F48 != -1)
  {
    swift_once();
  }

  v12 = sub_2146D9208();
  __swift_project_value_buffer(v12, qword_27C9046F8);
  v13 = sub_2146D91E8();
  v14 = sub_2146D9B88();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v8;
    v16 = v4;
    v17 = v1;
    v18 = v15;
    *v15 = 0;
    _os_log_impl(&dword_213FAF000, v13, v14, "IDSNearbySessionMessage.encodeGroupMessage", v15, 2u);
    v19 = v18;
    v1 = v17;
    v4 = v16;
    v8 = v26;
    MEMORY[0x216056AC0](v19, -1, -1);
  }

  v20 = type metadata accessor for IDSNearbySessionMessage(0);
  sub_213FB2E54(v1 + *(v20 + 36), v7, &qword_27C908068, &qword_21476EEC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C908068, &qword_21476EEC0);
    v21 = 0x80000002147A73D0;
    sub_21404A6EC();
    swift_allocError();
    *v22 = 0xD000000000000031;
    v22[1] = 0x80000002147A72A0;
    v22[2] = 0xD000000000000015;
    v22[3] = 0x80000002147A73D0;
    v22[4] = 0xD000000000000017;
    v22[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  else
  {
    v23 = sub_2146D69E4(v7, v11, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
    MEMORY[0x28223BE20](v23);
    *(&v25 - 2) = v11;
    sub_2146D6B54(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group, byte_214735590);
    sub_2146D9018();
    v21 = sub_2146D8FC8();
    sub_2146D6A68(v4, type metadata accessor for NearbyGroup_Group);
    sub_2146D6A68(v11, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
  }

  return v21;
}

void sub_2146D1750(void *a1, void *a2)
{
  v3 = a2[3];
  if (!v3)
  {
    goto LABEL_10;
  }

  *a1 = a2[2];
  a1[1] = v3;

  v5 = a2[8];
  if (!v5)
  {
    goto LABEL_10;
  }

  a1[2] = a2[7];
  a1[3] = v5;

  v6 = a2[13];
  if (v6)
  {
    if (v6 == 1)
    {
LABEL_10:
      sub_2146DA018();
      __break(1u);
      return;
    }

    v7 = a2[12];
    v8 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

    *v8 = v7;
    v8[1] = v6;
  }

  v9 = a2[18];
  if (v9 >> 60 == 11)
  {
    goto LABEL_10;
  }

  if (v9 >> 60 != 15)
  {
    v10 = a2[17];
    v11 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
    v12 = *v11;
    v13 = v11[1];
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v12, v13);
    *v11 = v10;
    v11[1] = v9;
  }
}

uint64_t sub_2146D1898(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 24);
  if (v10 && (*a1 = *(a2 + 16), *(a1 + 1) = v10, , , (v11 = *(a2 + 64)) != 0))
  {
    *(a1 + 2) = *(a2 + 56);
    *(a1 + 3) = v11;

    if (*(a2 + 73))
    {
      v13 = *(a2 + 88);
      if (v13 >> 60 == 15)
      {
        sub_21404A6EC();
        swift_allocError();
        *v14 = 0xD000000000000031;
        v14[1] = 0x80000002147A72A0;
        v14[2] = 0xD00000000000002FLL;
        v14[3] = 0x80000002147A7360;
        v14[4] = 0xD000000000000017;
        v14[5] = 0x80000002147A72E0;
        return swift_willThrow();
      }

      else
      {
        v18 = *(a2 + 80);
        MEMORY[0x28223BE20](v12);
        sub_21402D9F8(v18, v13);
        sub_2146D6B54(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, a1r);
        sub_2146D9018();
        sub_213FDC6BC(v18, v13);
        v19 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
        sub_213FB2DF4(&a1[v19], &qword_27C914EC0, qword_214758530);
        sub_2146D69E4(v9, &a1[v19], type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
        v20 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v20 - 8) + 56))(&a1[v19], 0, 1, v20);
      }
    }

    else
    {
      sub_2146D8DE8();
      v16 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
      v17 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
      return sub_21402EDB8(v6, &a1[*(v17 + 24)], &qword_27C914EC0, qword_214758530);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2146D1C58(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  *a1 = *(a2 + 16);
  a1[1] = v3;

  v5 = *(a2 + 64);
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_11:
      sub_2146DA018();
      __break(1u);
      return;
    }

    v6 = *(a2 + 56);
    v7 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));

    *v7 = v6;
    v7[1] = v5;
  }

  v8 = *(a2 + 104);
  if (v8 >> 60 == 11)
  {
    goto LABEL_11;
  }

  if (v8 >> 60 != 15)
  {
    v9 = *(a2 + 96);
    v10 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 28));
    v11 = *v10;
    v12 = v10[1];
    sub_213FDCA18(v9, v8);
    sub_213FDC6BC(v11, v12);
    *v10 = v9;
    v10[1] = v8;
  }

  v13 = *(a2 + 113);
  if (v13 != 2)
  {
    *(a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 32)) = v13;
  }
}

uint64_t sub_2146D1DA4(char *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 24);
  if (v11)
  {
    *a1 = *(a2 + 16);
    *(a1 + 1) = v11;

    if (*(a2 + 33))
    {
      v13 = *(a2 + 48);
      if (v13)
      {
        v24[7] = v24;
        v24[0] = v2;
        v15 = *(a2 + 64);
        v14 = *(a2 + 72);
        v16 = *(a2 + 56);
        v17 = *(a2 + 40);
        v24[1] = v17;
        v24[2] = v13;
        v24[3] = v16;
        v24[4] = v15;
        v24[5] = v14;
        MEMORY[0x28223BE20](v12);

        sub_213FDCA18(v15, v14);
        sub_2146D6B54(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E00);
        sub_2146D9018();
        sub_21430D4FC(v17, v13, v16, v15, v14);
        v18 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
        sub_213FB2DF4(&a1[v18], &qword_27C914EC8, &unk_214784480);
        sub_2146D69E4(v10, &a1[v18], type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
        v19 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v19 - 8) + 56))(&a1[v18], 0, 1, v19);
      }

      else
      {
        sub_21404A6EC();
        swift_allocError();
        *v23 = 0xD000000000000031;
        v23[1] = 0x80000002147A72A0;
        v23[2] = 0xD00000000000002FLL;
        v23[3] = 0x80000002147A7360;
        v23[4] = 0xD000000000000017;
        v23[5] = 0x80000002147A72E0;
        return swift_willThrow();
      }
    }

    else
    {
      sub_2146D8DE8();
      v21 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
      v22 = type metadata accessor for NearbyProtoJoinResponseContent(0);
      return sub_21402EDB8(v7, &a1[*(v22 + 20)], &qword_27C914EC8, &unk_214784480);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2146D2188(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v6 = a2[2];

  a1[2] = v6;
  v7 = a2[4];
  if (v7 >> 60 != 15)
  {
    v8 = a2[3];
    v9 = (a1 + *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28));
    v10 = *v9;
    v11 = v9[1];
    sub_21402D9F8(v8, v7);
    sub_213FDC6BC(v10, v11);
    *v9 = v8;
    v9[1] = v7;
  }
}

uint64_t sub_2146D2240(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v8 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
      MEMORY[0x28223BE20](v8);
      v13[-2] = a2;
      sub_2146D6B54(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved, a9_1);
    }

    else
    {
      v10 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
      MEMORY[0x28223BE20](v10);
      v13[-2] = a2;
      sub_2146D6B54(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FF0);
    }
  }

  else if (*a2)
  {
    v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
    MEMORY[0x28223BE20](v9);
    v13[-2] = a2;
    sub_2146D6B54(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded, aE_77);
  }

  else
  {
    v7 = type metadata accessor for NearbyGroup_Group.Initialization(0);
    MEMORY[0x28223BE20](v7);
    v13[-2] = a2;
    sub_2146D6B54(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization, aI_10);
  }

  sub_2146D9018();
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  return sub_21402EDB8(v6, a1, &qword_27C9122F8, &qword_214735780);
}

void sub_2146D25E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v38 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v40 = type metadata accessor for NearbyGroup_Member(0);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(v38 + *(v14 + 20), v9, &qword_27C90A488, &qword_2146F5E40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v9, v13, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  *&v43[0] = sub_2146D8B68();
  WORD4(v43[0]) = v15;
  BYTE10(v43[0]) = v16;
  BYTE11(v43[0]) = v17;
  BYTE12(v43[0]) = v18;
  BYTE13(v43[0]) = v19;
  BYTE14(v43[0]) = v20;
  HIBYTE(v43[0]) = v21;
  v22 = sub_2144668E8(v43, 0x10uLL);
  v24 = v23;
  sub_213FB54FC(*a1, a1[1]);
  *a1 = v22;
  a1[1] = v24;
  v25 = *&v13[*(v10 + 20)];
  v26 = *(v25 + 16);
  if (v26)
  {
    v37 = v13;
    v38 = a1;
    v41 = MEMORY[0x277D84F90];
    v27 = sub_2140A02D4(0, v26, 0);
    v28 = v41;
    v29 = (v25 + 32);
    do
    {
      v43[0] = *v29;
      v30 = v29[1];
      v31 = v29[2];
      v32 = v29[3];
      *(v44 + 9) = *(v29 + 57);
      v44[0] = v32;
      v43[1] = v30;
      v43[2] = v31;
      MEMORY[0x28223BE20](v27);
      *(&v36 - 2) = v43;
      sub_21430DEC4(v43, v42);
      sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
      v33 = v3;
      sub_2146D9018();
      sub_21430DF20(v43);
      v41 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2140A02D4((v34 > 1), v35 + 1, 1);
        v28 = v41;
      }

      *(v28 + 16) = v35 + 1;
      v27 = sub_2146D69E4(v6, v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35, type metadata accessor for NearbyGroup_Member);
      v29 += 5;
      --v26;
      v3 = v33;
    }

    while (v26);
    sub_2146D6A68(v37, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    a1 = v38;
  }

  else
  {
    sub_2146D6A68(v13, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    v28 = MEMORY[0x277D84F90];
  }

  a1[2] = v28;
}

unint64_t UUID.data.getter(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_2146D8B68();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  return sub_2144668E8(&v10, 0x10uLL);
}

void sub_2146D2BA8(void *a1, void *a2)
{
  v3 = a2[3];
  if (!v3)
  {
    goto LABEL_6;
  }

  *a1 = a2[2];
  a1[1] = v3;

  v5 = a2[8];
  if (!v5)
  {
    return;
  }

  if (v5 == 1)
  {
LABEL_6:
    sub_2146DA018();
    __break(1u);
    return;
  }

  v6 = a2[7];
  v7 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));

  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2146D2C7C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v13 + 24), v8, &qword_27C90A490, &qword_2146F5E48);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v8, v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v32 = sub_2146D8B68();
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v22 = sub_2144668E8(&v32, 0x10uLL);
  v24 = v23;
  v25 = sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v22;
  *(a1 + 8) = v24;
  MEMORY[0x28223BE20](v25);
  *(&v29 - 2) = v12;
  sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
  v26 = v30;
  sub_2146D9018();
  v27 = *(type metadata accessor for NearbyGroup_Group.MemberAdded(0) + 24);
  sub_213FB2DF4(a1 + v27, &qword_27C912330, &qword_2147357B8);
  sub_2146D69E4(v26, a1 + v27, type metadata accessor for NearbyGroup_Member);
  (*(v31 + 56))(a1 + v27, 0, 1, v4);
  return sub_2146D6A68(v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
}

uint64_t sub_2146D3064(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v13 + 28), v8, &qword_27C90A490, &qword_2146F5E48);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v8, v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v32 = sub_2146D8B68();
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v22 = sub_2144668E8(&v32, 0x10uLL);
  v24 = v23;
  v25 = sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v22;
  *(a1 + 8) = v24;
  MEMORY[0x28223BE20](v25);
  *(&v29 - 2) = v12;
  sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
  v26 = v30;
  sub_2146D9018();
  v27 = *(type metadata accessor for NearbyGroup_Group.MemberRemoved(0) + 24);
  sub_213FB2DF4(a1 + v27, &qword_27C912330, &qword_2147357B8);
  sub_2146D69E4(v26, a1 + v27, type metadata accessor for NearbyGroup_Member);
  (*(v31 + 56))(a1 + v27, 0, 1, v4);
  return sub_2146D6A68(v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
}

void sub_2146D344C(void *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = v3[7];
  v5 = v3[8];
  *a1 = v3[2];
  a1[1] = v4;

  if (!v5)
  {
    return;
  }

  if (v5 == 1)
  {
LABEL_6:
    sub_2146DA018();
    __break(1u);
    return;
  }

  v7 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));

  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2146D352C(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v11 + 32), v6, &qword_27C90A498, &qword_2146F5E50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v6, v10, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  v26 = sub_2146D8B68();
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v20 = sub_2144668E8(&v26, 0x10uLL);
  v22 = v21;
  sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v20;
  *(a1 + 8) = v22;
  v23 = v10[*(v7 + 20)];
  result = sub_2146D6A68(v10, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  *(a1 + 16) = v23;
  return result;
}

uint64_t sub_2146D3804(uint64_t a1, uint64_t a2)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2143D6790(v5, v6);
}

uint64_t sub_2146D3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2143D6790(v7, v8);
}

uint64_t sub_2146D38CC(uint64_t a1, uint64_t a2)
{
  if (sub_2146D8B48())
  {
    v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
    v5 = (a1 + *(v4 + 20));
    v6 = v5[1];
    v7 = v5[3];
    v26 = v5[2];
    v27[0] = v7;
    *(v27 + 9) = *(v5 + 57);
    v8 = v5[1];
    v25[0] = *v5;
    v25[1] = v8;
    v9 = v5[3];
    v23 = v26;
    v24[0] = v9;
    *(v24 + 9) = *(v5 + 57);
    v21 = v25[0];
    v22 = v6;
    v10 = (a2 + *(v4 + 20));
    *(v30 + 9) = *(v10 + 57);
    v11 = v10[1];
    v12 = v10[3];
    v29 = v10[2];
    v30[0] = v12;
    v13 = v10[1];
    v28[0] = *v10;
    v28[1] = v13;
    v14 = v10[3];
    v19 = v29;
    v20[0] = v14;
    *(v20 + 9) = *(v10 + 57);
    v17 = v28[0];
    v18 = v11;
    v15 = sub_2146D3BA0(&v21, &v17);
    v31[2] = v19;
    v32[0] = v20[0];
    *(v32 + 9) = *(v20 + 9);
    v31[0] = v17;
    v31[1] = v18;
    sub_21430DEC4(v25, v33);
    sub_21430DEC4(v28, v33);
    sub_21430DF20(v31);
    v33[2] = v23;
    v34[0] = v24[0];
    *(v34 + 9) = *(v24 + 9);
    v33[0] = v21;
    v33[1] = v22;
    sub_21430DF20(v33);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2146D3A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2146D8B48())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 16);
    v8 = *(a1 + v6 + 48);
    v30 = *(a1 + v6 + 32);
    v31[0] = v8;
    *(v31 + 9) = *(a1 + v6 + 57);
    v9 = *(a1 + v6 + 16);
    v29[0] = *(a1 + v6);
    v29[1] = v9;
    v10 = *(a1 + v6 + 48);
    v27 = v30;
    v28[0] = v10;
    *(v28 + 9) = *(a1 + v6 + 57);
    v25 = v29[0];
    v26 = v7;
    v11 = (a2 + v6);
    v12 = *v11;
    v13 = v11[1];
    *(v33 + 9) = *(v11 + 57);
    v14 = v11[3];
    v32[2] = v11[2];
    v33[0] = v14;
    v15 = v11[1];
    v16 = v11[2];
    v17 = *v11;
    v32[0] = v12;
    v32[1] = v15;
    v18 = v11[3];
    v23 = v16;
    v24[0] = v18;
    *(v24 + 9) = *(v11 + 57);
    v21 = v17;
    v22 = v13;
    v19 = sub_2146D3BA0(&v25, &v21);
    v34[2] = v23;
    v35[0] = v24[0];
    *(v35 + 9) = *(v24 + 9);
    v34[0] = v21;
    v34[1] = v22;
    sub_21430DEC4(v29, v36);
    sub_21430DEC4(v32, v36);
    sub_21430DF20(v34);
    v36[2] = v27;
    v37[0] = v28[0];
    *(v37 + 9) = *(v28 + 9);
    v36[0] = v25;
    v36[1] = v26;
    sub_21430DF20(v36);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_2146D3B48(uint64_t a1, uint64_t a2)
{
  if (sub_2146D8B48())
  {
    v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2146D3BA0(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a1[2] == a2[2] && v3 == v4;
  if (!v9 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 1 || v8 == 1)
  {
LABEL_21:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v6)
  {
    if (!v8)
    {
      sub_213FDC9D0(v7, 0);
      sub_213FDC9D0(v5, 0);
      return 1;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  if (v5 == v7 && v6 == v8)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2146D3CF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v97 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v93 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918130, &unk_214784430);
  MEMORY[0x28223BE20](v100);
  v9 = &v93 - v8;
  v111 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v109 = *(v111 - 8);
  v10 = MEMORY[0x28223BE20](v111);
  v99 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v103 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v93 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918138, &unk_214784440);
  v17 = MEMORY[0x28223BE20](v110);
  v105 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v93 - v19;
  v20 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v107 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  MEMORY[0x28223BE20](v23 - 8);
  v112 = &v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918140, &qword_214784450);
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  if (*a1 != *a2)
  {
    goto LABEL_19;
  }

  v28 = a2;
  v94 = v9;
  v29 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v95 = a1;
  v96 = v29;
  v30 = *(v29 + 20);
  v31 = *(v25 + 48);
  sub_213FB2E54(&a1[v30], v27, &qword_27C90A488, &qword_2146F5E40);
  sub_213FB2E54(&v28[v30], &v27[v31], &qword_27C90A488, &qword_2146F5E40);
  v32 = *(v21 + 48);
  v33 = v28;
  if (v32(v27, 1, v20) == 1)
  {
    if (v32(&v27[v31], 1, v20) == 1)
    {
      sub_213FB2DF4(v27, &qword_27C90A488, &qword_2146F5E40);
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v55 = v112;
  sub_213FB2E54(v27, v112, &qword_27C90A488, &qword_2146F5E40);
  if (v32(&v27[v31], 1, v20) == 1)
  {
    sub_2146D6A68(v55, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
LABEL_16:
    v56 = &qword_27C918140;
    v57 = &qword_214784450;
LABEL_17:
    v58 = v27;
LABEL_18:
    sub_213FB2DF4(v58, v56, v57);
LABEL_19:
    v54 = 0;
    return v54 & 1;
  }

  v60 = v107;
  sub_2146D69E4(&v27[v31], v107, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v60, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    sub_2146D6A68(v55, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    v56 = &qword_27C90A488;
    v57 = &qword_2146F5E40;
    goto LABEL_17;
  }

  v61 = sub_2143D6790(*(v55 + *(v20 + 20)), *(v60 + *(v20 + 20)));
  sub_2146D6A68(v60, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  sub_2146D6A68(v55, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  sub_213FB2DF4(v27, &qword_27C90A488, &qword_2146F5E40);
  if ((v61 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v34 = v33;
  v35 = v95;
  v36 = v96[6];
  v37 = *(v110 + 48);
  v38 = v108;
  sub_213FB2E54(&v95[v36], v108, &qword_27C90A490, &qword_2146F5E48);
  v39 = v34 + v36;
  v40 = v34;
  sub_213FB2E54(v39, v38 + v37, &qword_27C90A490, &qword_2146F5E48);
  v41 = *(v109 + 48);
  v42 = v111;
  if (v41(v38, 1, v111) == 1)
  {
    if (v41(v38 + v37, 1, v42) == 1)
    {
      sub_213FB2DF4(v38, &qword_27C90A490, &qword_2146F5E48);
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v112 = v34;
  v62 = v106;
  sub_213FB2E54(v38, v106, &qword_27C90A490, &qword_2146F5E48);
  if (v41(v38 + v37, 1, v42) == 1)
  {
    sub_2146D6A68(v62, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
LABEL_26:
    v56 = &qword_27C918138;
    v57 = &unk_214784440;
    v58 = v38;
    goto LABEL_18;
  }

  v63 = v38 + v37;
  v64 = v104;
  sub_2146D69E4(v63, v104, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v64, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    sub_2146D6A68(v62, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    v56 = &qword_27C90A490;
    v57 = &qword_2146F5E48;
    v58 = v38;
    goto LABEL_18;
  }

  v65 = (v62 + *(v42 + 20));
  v66 = v65[1];
  v67 = v65[3];
  v123 = v65[2];
  v124[0] = v67;
  *(v124 + 9) = *(v65 + 57);
  v68 = v65[1];
  v121 = *v65;
  v122 = v68;
  v69 = v65[3];
  v119 = v123;
  v120[0] = v69;
  *(v120 + 9) = *(v65 + 57);
  v117 = v121;
  v118 = v66;
  v70 = (v64 + *(v42 + 20));
  *(v128 + 9) = *(v70 + 57);
  v71 = v70[1];
  v72 = v70[3];
  v127 = v70[2];
  v128[0] = v72;
  v73 = v70[1];
  v125 = *v70;
  v126 = v73;
  v74 = v70[3];
  v115 = v127;
  v116[0] = v74;
  *(v116 + 9) = *(v70 + 57);
  v113 = v125;
  v114 = v71;
  v75 = sub_2146D3BA0(&v117, &v113);
  sub_21430DEC4(&v121, &v133);
  sub_21430DEC4(&v125, &v133);
  sub_2146D6A68(v64, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v131 = v115;
  v132[0] = v116[0];
  *(v132 + 9) = *(v116 + 9);
  v129 = v113;
  v130 = v114;
  sub_21430DF20(&v129);
  v135 = v119;
  v136[0] = v120[0];
  *(v136 + 9) = *(v120 + 9);
  v133 = v117;
  v134 = v118;
  sub_21430DF20(&v133);
  sub_2146D6A68(v62, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  sub_213FB2DF4(v38, &qword_27C90A490, &qword_2146F5E48);
  v40 = v112;
  if ((v75 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v43 = v96[7];
  v44 = v40;
  v45 = v35;
  v46 = *(v110 + 48);
  v47 = v105;
  sub_213FB2E54(&v45[v43], v105, &qword_27C90A490, &qword_2146F5E48);
  sub_213FB2E54(v44 + v43, v47 + v46, &qword_27C90A490, &qword_2146F5E48);
  v48 = v111;
  if (v41(v47, 1, v111) == 1)
  {
    if (v41(v47 + v46, 1, v48) == 1)
    {
      sub_213FB2DF4(v47, &qword_27C90A490, &qword_2146F5E48);
      goto LABEL_11;
    }

    goto LABEL_33;
  }

  v76 = v103;
  sub_213FB2E54(v47, v103, &qword_27C90A490, &qword_2146F5E48);
  if (v41(v47 + v46, 1, v48) == 1)
  {
    sub_2146D6A68(v76, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
LABEL_33:
    v56 = &qword_27C918138;
    v57 = &unk_214784440;
    v58 = v47;
    goto LABEL_18;
  }

  v77 = v47 + v46;
  v78 = v99;
  sub_2146D69E4(v77, v99, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v78, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    sub_2146D6A68(v76, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    v56 = &qword_27C90A490;
    v57 = &qword_2146F5E48;
    v58 = v47;
    goto LABEL_18;
  }

  v79 = (v76 + *(v48 + 20));
  v80 = v79[1];
  v81 = v79[3];
  v123 = v79[2];
  v124[0] = v81;
  *(v124 + 9) = *(v79 + 57);
  v82 = v79[1];
  v121 = *v79;
  v122 = v82;
  v83 = v79[3];
  v119 = v123;
  v120[0] = v83;
  *(v120 + 9) = *(v79 + 57);
  v117 = v121;
  v118 = v80;
  v84 = (v78 + *(v48 + 20));
  *(v128 + 9) = *(v84 + 57);
  v85 = v84[1];
  v86 = v84[3];
  v127 = v84[2];
  v128[0] = v86;
  v87 = v84[1];
  v125 = *v84;
  v126 = v87;
  v88 = v84[3];
  v115 = v127;
  v116[0] = v88;
  *(v116 + 9) = *(v84 + 57);
  v113 = v125;
  v114 = v85;
  v89 = sub_2146D3BA0(&v117, &v113);
  sub_21430DEC4(&v121, &v133);
  sub_21430DEC4(&v125, &v133);
  sub_2146D6A68(v78, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v131 = v115;
  v132[0] = v116[0];
  *(v132 + 9) = *(v116 + 9);
  v129 = v113;
  v130 = v114;
  sub_21430DF20(&v129);
  v135 = v119;
  v136[0] = v120[0];
  *(v136 + 9) = *(v120 + 9);
  v133 = v117;
  v134 = v118;
  sub_21430DF20(&v133);
  sub_2146D6A68(v76, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  sub_213FB2DF4(v47, &qword_27C90A490, &qword_2146F5E48);
  if ((v89 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v49 = v96[8];
  v50 = *(v100 + 48);
  v51 = v94;
  sub_213FB2E54(&v95[v49], v94, &qword_27C90A498, &qword_2146F5E50);
  sub_213FB2E54(v34 + v49, v51 + v50, &qword_27C90A498, &qword_2146F5E50);
  v52 = v102;
  v53 = *(v101 + 48);
  if (v53(v51, 1, v102) == 1)
  {
    if (v53(v51 + v50, 1, v52) == 1)
    {
      sub_213FB2DF4(v51, &qword_27C90A498, &qword_2146F5E50);
      v54 = 1;
      return v54 & 1;
    }

    goto LABEL_40;
  }

  v90 = v98;
  sub_213FB2E54(v51, v98, &qword_27C90A498, &qword_2146F5E50);
  if (v53(v51 + v50, 1, v52) == 1)
  {
    sub_2146D6A68(v90, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
LABEL_40:
    v56 = &qword_27C918130;
    v57 = &unk_214784430;
    v58 = v51;
    goto LABEL_18;
  }

  v91 = v51 + v50;
  v92 = v97;
  sub_2146D69E4(v91, v97, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  if (sub_2146D8B48())
  {
    v54 = *(v90 + *(v52 + 20)) ^ *(v92 + *(v52 + 20)) ^ 1;
  }

  else
  {
    v54 = 0;
  }

  sub_2146D6A68(v92, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  sub_2146D6A68(v90, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  sub_213FB2DF4(v94, &qword_27C90A498, &qword_2146F5E50);
  return v54 & 1;
}

uint64_t sub_2146D4AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v8 = *(a1 + 96);
      v7 = *(a1 + 104);
      v9 = *(a1 + 113);
      v10 = *(a2 + 56);
      v11 = *(a2 + 64);
      v13 = *(a2 + 96);
      v12 = *(a2 + 104);
      v14 = *(a2 + 113);
      if ((*(a1 + 16) != *(a2 + 16) || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != 1 && v11 != 1)
      {
        if (v6)
        {
          if (!v11 || (v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_23;
          }

          sub_213FDC9D0(v10, 0);
          sub_213FDC9D0(v5, 0);
        }

        if (v7 >> 60 != 11 && v12 >> 60 != 11)
        {
          if (v7 >> 60 == 15)
          {
            if (v12 >> 60 == 15)
            {
              sub_21404F7E0(v8, v7);
              sub_21404F7E0(v13, v12);
              sub_213FDC6BC(v8, v7);
LABEL_26:
              v15 = v9 == 2;
              if (v14 != 2)
              {
                v15 = 0;
              }

              if (v9 != 2 && v14 != 2)
              {
                v15 = v14 ^ v9 ^ 1;
              }

              return v15 & 1;
            }

            goto LABEL_22;
          }

          if (v12 >> 60 == 15)
          {
LABEL_22:
            sub_21404F7E0(v8, v7);
            sub_21404F7E0(v13, v12);
            sub_213FDC6BC(v8, v7);
            sub_213FDC6BC(v13, v12);
            goto LABEL_23;
          }

          sub_21404F7E0(v8, v7);
          sub_21404F7E0(v13, v12);
          sub_21404F7E0(v8, v7);
          sub_21404F7E0(v13, v12);
          v17 = sub_214466780(v8, v7, v13, v12);
          sub_213FDC6BC(v13, v12);
          sub_214032564(v13, v12);
          sub_214032564(v8, v7);
          sub_213FDC6BC(v8, v7);
          if (v17)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          return v15 & 1;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

BOOL sub_2146D4D4C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2146DA6A8() & 1) == 0 || (sub_2143D53BC(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_213FDCA18(v4, v3);
      sub_213FDCA18(v5, v7);
      sub_213FDC6BC(v4, v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (v7 >> 60 == 15)
  {
LABEL_12:
    sub_213FDCA18(v4, v3);
    sub_213FDCA18(v5, v7);
    sub_213FDC6BC(v4, v3);
    sub_213FDC6BC(v5, v7);
    return 0;
  }

  sub_213FDCA18(v4, v3);
  sub_213FDCA18(v5, v7);
  sub_213FDCA18(v4, v3);
  sub_213FDCA18(v5, v7);
  v10 = sub_214466780(v4, v3, v5, v7);
  sub_213FDC6BC(v5, v7);
  sub_213FDC6BC(v5, v7);
  sub_213FDC6BC(v4, v3);
  sub_213FDC6BC(v4, v3);
  return v10;
}

uint64_t sub_2146D4ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a1 + 33);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(a1 + 72);
      v9 = *(a2 + 33);
      v10 = *(a2 + 40);
      v33 = *(a2 + 48);
      v12 = *(a2 + 56);
      v11 = *(a2 + 64);
      v13 = *(a2 + 72);
      if (*(a1 + 16) == *(a2 + 16) && v3 == v4)
      {
        if (v5 != v9)
        {
          return 0;
        }
      }

      else
      {
        v15 = *(a2 + 40);
        v16 = *(a2 + 56);
        v17 = *(a1 + 48);
        v18 = *(a2 + 64);
        v19 = *(a1 + 56);
        v14 = 0;
        if ((sub_2146DA6A8() & 1) == 0)
        {
          return v14;
        }

        v8 = v19;
        v11 = v18;
        v7 = v17;
        v12 = v16;
        v10 = v15;
        if ((v5 ^ v9))
        {
          return v14;
        }
      }

      v20 = v6;
      if (v7)
      {
        v39[0] = v6;
        v39[1] = v7;
        v22 = v34;
        v21 = v35;
        v39[2] = v8;
        v40 = v34;
        v41 = v35;
        v23 = v13;
        v24 = v33;
        if (v33)
        {
          v36[0] = v10;
          v36[1] = v33;
          v36[2] = v12;
          v37 = v11;
          v38 = v23;
          v25 = v8;
          sub_21430D49C(v20, v7, v8, v34, v35);
          sub_21430D49C(v10, v33, v12, v11, v23);
          sub_21430D49C(v20, v7, v25, v34, v35);
          v14 = sub_2146D4D4C(v39, v36);
          v26 = v37;
          v27 = v38;

          sub_213FDC6BC(v26, v27);
          v28 = v40;
          v29 = v41;

          sub_213FDC6BC(v28, v29);
          sub_21430D4FC(v20, v7, v25, v34, v35);
          return v14;
        }

        v31 = v8;
        sub_21430D49C(v20, v7, v8, v34, v35);
        sub_21430D49C(v10, 0, v12, v11, v23);
        sub_21430D49C(v20, v7, v31, v34, v35);

        sub_213FDC6BC(v34, v35);
      }

      else
      {
        v30 = v6;
        v22 = v34;
        v21 = v35;
        v31 = v8;
        sub_21430D49C(v30, 0, v8, v34, v35);
        v23 = v13;
        v24 = v33;
        if (!v33)
        {
          sub_21430D49C(v10, 0, v12, v11, v23);
          sub_21430D4FC(v20, 0, v31, v34, v35);
          return 1;
        }

        sub_21430D49C(v10, v33, v12, v11, v23);
      }

      sub_21430D4FC(v20, v7, v31, v22, v21);
      sub_21430D4FC(v10, v24, v12, v11, v23);
      return 0;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

BOOL sub_2146D5228(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[18];
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[18];
  v17 = a2[17];
  v18 = a1[17];
  if ((a1[2] != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
    goto LABEL_30;
  }

  if ((v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v8 == 1 || v13 == 1)
  {
    goto LABEL_30;
  }

  if (v8)
  {
    if (!v13 || (v7 != v12 || v8 != v13) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v13)
    {
      return 0;
    }

    sub_213FDC9D0(v12, 0);
    sub_213FDC9D0(v7, 0);
  }

  if (v9 >> 60 == 11 || v14 >> 60 == 11)
  {
LABEL_30:
    while (1)
    {
      sub_2146DA018();
      __break(1u);
    }
  }

  if (v9 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_21404F7E0(v18, v9);
      sub_21404F7E0(v17, v14);
      sub_213FDC6BC(v18, v9);
      return 1;
    }

    goto LABEL_28;
  }

  if (v14 >> 60 == 15)
  {
LABEL_28:
    sub_21404F7E0(v18, v9);
    sub_21404F7E0(v17, v14);
    sub_213FDC6BC(v18, v9);
    sub_213FDC6BC(v17, v14);
    return 0;
  }

  sub_21404F7E0(v18, v9);
  sub_21404F7E0(v17, v14);
  sub_21404F7E0(v18, v9);
  sub_21404F7E0(v17, v14);
  v16 = sub_214466780(v18, v9, v17, v14);
  sub_213FDC6BC(v17, v14);
  sub_214032564(v17, v14);
  sub_214032564(v18, v9);
  sub_213FDC6BC(v18, v9);
  return v16;
}

uint64_t sub_2146D54EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 73);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 73);
  v14 = *(a2 + 80);
  v13 = *(a2 + 88);
  if ((*(a1 + 16) != *(a2 + 16) || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
LABEL_22:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v7 != v12)
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_2146DA6A8();
    result = 0;
    if (v16 & 1) == 0 || ((v7 ^ v12))
    {
      return result;
    }
  }

  sub_213FDCA18(v9, v8);
  sub_213FDCA18(v14, v13);
  if (v8 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_213FDC6BC(v9, v8);
      return 1;
    }

    goto LABEL_19;
  }

  sub_213FDCA18(v9, v8);
  if (v13 >> 60 == 15)
  {
    sub_213FB54FC(v9, v8);
LABEL_19:
    sub_213FDC6BC(v9, v8);
    sub_213FDC6BC(v14, v13);
    return 0;
  }

  sub_213FDCA18(v14, v13);
  sub_213FDCA18(v9, v8);
  v17 = sub_214466780(v9, v8, v14, v13);
  sub_213FDC6BC(v14, v13);
  sub_213FDC6BC(v9, v8);
  sub_213FDC6BC(v14, v13);
  sub_213FB54FC(v9, v8);
  sub_213FDC6BC(v9, v8);
  return v17;
}

uint64_t sub_2146D5734(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_37;
  }

  v4 = *(a1 + 120);
  v186[6] = *(a1 + 104);
  v186[7] = v4;
  v187[0] = *(a1 + 136);
  *(v187 + 9) = *(a1 + 145);
  v5 = *(a1 + 56);
  v186[2] = *(a1 + 40);
  v186[3] = v5;
  v6 = *(a1 + 88);
  v186[4] = *(a1 + 72);
  v186[5] = v6;
  v7 = *(a1 + 24);
  v186[0] = *(a1 + 8);
  v186[1] = v7;
  v8 = *(a2 + 120);
  v188[6] = *(a2 + 104);
  v188[7] = v8;
  v189[0] = *(a2 + 136);
  *(v189 + 9) = *(a2 + 145);
  v9 = *(a2 + 56);
  v188[2] = *(a2 + 40);
  v188[3] = v9;
  v10 = *(a2 + 88);
  v188[4] = *(a2 + 72);
  v188[5] = v10;
  v11 = *(a2 + 24);
  v188[0] = *(a2 + 8);
  v188[1] = v11;
  v12 = *(a1 + 120);
  __src[6] = *(a1 + 104);
  __src[7] = v12;
  v13 = *(a2 + 8);
  __src[8] = *(a1 + 136);
  *(&__src[8] + 9) = *(a1 + 145);
  v14 = *(a1 + 56);
  __src[2] = *(a1 + 40);
  __src[3] = v14;
  v15 = *(a1 + 88);
  __src[4] = *(a1 + 72);
  __src[5] = v15;
  v16 = *(a1 + 24);
  __src[0] = *(a1 + 8);
  __src[1] = v16;
  *(&__src[18] + 9) = *(a2 + 145);
  v17 = *(a2 + 104);
  v18 = *(a2 + 136);
  __src[17] = *(a2 + 120);
  __src[18] = v18;
  v19 = *(a2 + 72);
  __src[13] = *(a2 + 56);
  __src[14] = v19;
  v20 = *(a2 + 88);
  __src[16] = v17;
  __src[15] = v20;
  v21 = *(a2 + 40);
  __src[10] = v13;
  v22 = *(a2 + 24);
  __src[12] = v21;
  __src[11] = v22;
  v23 = *(a1 + 120);
  v190[6] = *(a1 + 104);
  v190[7] = v23;
  v191[0] = *(a1 + 136);
  *(v191 + 9) = *(a1 + 145);
  v24 = *(a1 + 56);
  v190[2] = *(a1 + 40);
  v190[3] = v24;
  v25 = *(a1 + 88);
  v190[4] = *(a1 + 72);
  v190[5] = v25;
  v26 = *(a1 + 24);
  v190[0] = *(a1 + 8);
  v190[1] = v26;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v190) == 1)
  {
    v27 = *(a2 + 120);
    __dst[6] = *(a2 + 104);
    __dst[7] = v27;
    __dst[8] = *(a2 + 136);
    *(&__dst[8] + 9) = *(a2 + 145);
    v28 = *(a2 + 40);
    __dst[3] = *(a2 + 56);
    v29 = *(a2 + 88);
    __dst[4] = *(a2 + 72);
    __dst[5] = v29;
    v30 = *(a2 + 24);
    __dst[0] = *(a2 + 8);
    __dst[1] = v30;
    __dst[2] = v28;
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
    {
      v31 = *(a1 + 120);
      v182 = *(a1 + 104);
      v183 = v31;
      v184[0] = *(a1 + 136);
      *(v184 + 9) = *(a1 + 145);
      v32 = *(a1 + 56);
      *&v181[32] = *(a1 + 40);
      *&v181[48] = v32;
      v33 = *(a1 + 88);
      *&v181[64] = *(a1 + 72);
      *&v181[80] = v33;
      v34 = *(a1 + 24);
      *v181 = *(a1 + 8);
      *&v181[16] = v34;
      sub_213FB2E54(v186, &v171, &qword_27C908088, &unk_21476EEA0);
      sub_213FB2E54(v188, &v171, &qword_27C908088, &unk_21476EEA0);
      sub_213FB2DF4(v181, &qword_27C908088, &unk_21476EEA0);
      goto LABEL_10;
    }

    sub_213FB2E54(v186, v181, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v188, v181, &qword_27C908088, &unk_21476EEA0);
LABEL_8:
    memcpy(__dst, __src, 0x139uLL);
    v51 = &unk_27C918148;
    v52 = &unk_214784458;
    v53 = __dst;
LABEL_36:
    sub_213FB2DF4(v53, v51, v52);
    goto LABEL_37;
  }

  v35 = *(a1 + 120);
  v182 = *(a1 + 104);
  v183 = v35;
  v184[0] = *(a1 + 136);
  *(v184 + 9) = *(a1 + 145);
  v36 = *(a1 + 56);
  *&v181[32] = *(a1 + 40);
  *&v181[48] = v36;
  v37 = *(a1 + 88);
  *&v181[64] = *(a1 + 72);
  *&v181[80] = v37;
  v38 = *(a1 + 24);
  *v181 = *(a1 + 8);
  *&v181[16] = v38;
  v39 = *(a1 + 120);
  v177 = *(a1 + 104);
  v178 = v39;
  v179[0] = *(a1 + 136);
  *(v179 + 9) = *(a1 + 145);
  v40 = *(a1 + 56);
  v173 = *(a1 + 40);
  v174 = v40;
  v41 = *(a1 + 88);
  v175 = *(a1 + 72);
  v176 = v41;
  v42 = *(a1 + 24);
  v171 = *(a1 + 8);
  v172 = v42;
  v43 = *(a2 + 120);
  __dst[6] = *(a2 + 104);
  __dst[7] = v43;
  __dst[8] = *(a2 + 136);
  *(&__dst[8] + 9) = *(a2 + 145);
  v44 = *(a2 + 40);
  __dst[3] = *(a2 + 56);
  v45 = *(a2 + 88);
  __dst[4] = *(a2 + 72);
  __dst[5] = v45;
  v46 = *(a2 + 24);
  __dst[0] = *(a2 + 8);
  __dst[1] = v46;
  __dst[2] = v44;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
  {
    v47 = *(a1 + 120);
    *&v165[96] = *(a1 + 104);
    *&v165[112] = v47;
    v166[0] = *(a1 + 136);
    *(v166 + 9) = *(a1 + 145);
    v48 = *(a1 + 56);
    *&v165[32] = *(a1 + 40);
    *&v165[48] = v48;
    v49 = *(a1 + 88);
    *&v165[64] = *(a1 + 72);
    *&v165[80] = v49;
    v50 = *(a1 + 24);
    *v165 = *(a1 + 8);
    *&v165[16] = v50;
    sub_213FB2E54(v186, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v188, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v181, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_21430CD0C(v165);
    goto LABEL_8;
  }

  v54 = *(a2 + 120);
  *&v165[96] = *(a2 + 104);
  *&v165[112] = v54;
  v166[0] = *(a2 + 136);
  *(v166 + 9) = *(a2 + 145);
  v55 = *(a2 + 56);
  *&v165[32] = *(a2 + 40);
  *&v165[48] = v55;
  v56 = *(a2 + 88);
  *&v165[64] = *(a2 + 72);
  *&v165[80] = v56;
  v57 = *(a2 + 24);
  *v165 = *(a2 + 8);
  *&v165[16] = v57;
  sub_213FB2E54(v186, &v156, &qword_27C908088, &unk_21476EEA0);
  sub_213FB2E54(v188, &v156, &qword_27C908088, &unk_21476EEA0);
  sub_213FB2E54(v181, &v156, &qword_27C908088, &unk_21476EEA0);
  v58 = sub_2146D5228(&v171, v165);
  v153 = *&v165[96];
  v154 = *&v165[112];
  v155[0] = v166[0];
  *(v155 + 9) = *(v166 + 9);
  *&v151[32] = *&v165[32];
  *&v151[48] = *&v165[48];
  *&v151[64] = *&v165[64];
  v152 = *&v165[80];
  *v151 = *v165;
  *&v151[16] = *&v165[16];
  sub_21430CD0C(v151);
  v162 = v177;
  v163 = v178;
  v164[0] = v179[0];
  *(v164 + 9) = *(v179 + 9);
  v158 = v173;
  v159 = v174;
  v160 = v175;
  v161 = v176;
  v156 = v171;
  v157 = v172;
  sub_21430CD0C(&v156);
  v59 = *(a1 + 120);
  *&v165[96] = *(a1 + 104);
  *&v165[112] = v59;
  v166[0] = *(a1 + 136);
  *(v166 + 9) = *(a1 + 145);
  v60 = *(a1 + 56);
  *&v165[32] = *(a1 + 40);
  *&v165[48] = v60;
  v61 = *(a1 + 88);
  *&v165[64] = *(a1 + 72);
  *&v165[80] = v61;
  v62 = *(a1 + 24);
  *v165 = *(a1 + 8);
  *&v165[16] = v62;
  sub_213FB2DF4(v165, &qword_27C908088, &unk_21476EEA0);
  if (!v58)
  {
LABEL_37:
    v138 = 0;
    return v138 & 1;
  }

LABEL_10:
  v63 = *(a1 + 216);
  v169[2] = *(a1 + 200);
  v169[3] = v63;
  v64 = *(a1 + 248);
  v169[4] = *(a1 + 232);
  v169[5] = v64;
  v65 = *(a1 + 184);
  v169[0] = *(a1 + 168);
  v169[1] = v65;
  v66 = *(a2 + 216);
  v170[2] = *(a2 + 200);
  v170[3] = v66;
  v67 = *(a2 + 248);
  v170[4] = *(a2 + 232);
  v170[5] = v67;
  v68 = *(a2 + 184);
  v170[0] = *(a2 + 168);
  v170[1] = v68;
  v69 = *&v169[0];
  v70 = *&v170[0];
  if (!*&v169[0])
  {
    if (!*&v170[0])
    {
      v89 = *(a1 + 14);
      *(&__src[2] + 8) = *(a1 + 13);
      *(&__src[3] + 8) = v89;
      *(&__src[4] + 8) = *(a1 + 15);
      v90 = *(a1 + 32);
      *&__src[0] = 0;
      *(&__src[5] + 1) = v90;
      v91 = *(a1 + 12);
      *(__src + 8) = *(a1 + 11);
      *(&__src[1] + 8) = v91;
      sub_213FB2E54(v169, __dst, &qword_27C9080A0, &unk_2146F4F10);
      sub_213FB2E54(v170, __dst, &qword_27C9080A0, &unk_2146F4F10);
      sub_213FB2DF4(__src, &qword_27C9080A0, &unk_2146F4F10);
      goto LABEL_19;
    }

    sub_213FB2E54(v169, __src, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(v170, __src, &qword_27C9080A0, &unk_2146F4F10);
LABEL_17:
    v81 = *(a1 + 14);
    *(&__src[2] + 8) = *(a1 + 13);
    *(&__src[3] + 8) = v81;
    *(&__src[4] + 8) = *(a1 + 15);
    v82 = *(a1 + 32);
    *&__src[0] = v69;
    *(&__src[5] + 1) = v82;
    v83 = *(a1 + 12);
    *(__src + 8) = *(a1 + 11);
    *(&__src[1] + 8) = v83;
    v84 = *(a2 + 11);
    *(&__src[7] + 8) = *(a2 + 12);
    *(&__src[6] + 8) = v84;
    v85 = *(a2 + 13);
    v86 = *(a2 + 14);
    v87 = *(a2 + 15);
    v88 = *(a2 + 32);
    *&__src[6] = v70;
    *(&__src[11] + 1) = v88;
    *(&__src[10] + 8) = v87;
    *(&__src[9] + 8) = v86;
    *(&__src[8] + 8) = v85;
    v51 = &unk_27C918150;
    v52 = &unk_214784460;
LABEL_35:
    v53 = __src;
    goto LABEL_36;
  }

  v71 = *(a1 + 12);
  *(__src + 8) = *(a1 + 11);
  *(&__src[1] + 8) = v71;
  v72 = *(a1 + 14);
  *(&__src[2] + 8) = *(a1 + 13);
  *(&__src[3] + 8) = v72;
  *(&__src[4] + 8) = *(a1 + 15);
  v73 = *(a1 + 32);
  *&__src[0] = *&v169[0];
  *(&__src[5] + 1) = v73;
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[5] = __src[5];
  __dst[4] = __src[4];
  __dst[3] = __src[3];
  __dst[2] = __src[2];
  if (!*&v170[0])
  {
    *&v181[32] = __src[2];
    *&v181[48] = __src[3];
    *&v181[64] = __src[4];
    *&v181[80] = __src[5];
    *v181 = __src[0];
    *&v181[16] = __src[1];
    sub_213FB2E54(v169, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(v170, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(__src, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_21430CE14(v181);
    goto LABEL_17;
  }

  v74 = *(a2 + 14);
  *&v181[40] = *(a2 + 13);
  *&v181[56] = v74;
  *&v181[72] = *(a2 + 15);
  v75 = *(a2 + 32);
  v76 = *(a2 + 12);
  *&v181[8] = *(a2 + 11);
  *&v181[24] = v76;
  *&v181[88] = v75;
  *v181 = *&v170[0];
  sub_213FB2E54(v169, &v171, &qword_27C9080A0, &unk_2146F4F10);
  sub_213FB2E54(v170, &v171, &qword_27C9080A0, &unk_2146F4F10);
  sub_213FB2E54(__src, &v171, &qword_27C9080A0, &unk_2146F4F10);
  v77 = sub_2146D54EC(__dst, v181);
  *&v165[32] = *&v181[32];
  *&v165[48] = *&v181[48];
  *&v165[64] = *&v181[64];
  *&v165[80] = *&v181[80];
  *v165 = *v181;
  *&v165[16] = *&v181[16];
  sub_21430CE14(v165);
  v173 = __dst[2];
  v174 = __dst[3];
  v175 = __dst[4];
  v176 = __dst[5];
  v171 = __dst[0];
  v172 = __dst[1];
  sub_21430CE14(&v171);
  v78 = *(a1 + 14);
  *&v181[40] = *(a1 + 13);
  *&v181[56] = v78;
  *&v181[72] = *(a1 + 15);
  v79 = *(a1 + 32);
  *v181 = v69;
  *&v181[88] = v79;
  v80 = *(a1 + 12);
  *&v181[8] = *(a1 + 11);
  *&v181[24] = v80;
  sub_213FB2DF4(v181, &qword_27C9080A0, &unk_2146F4F10);
  if ((v77 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  v92 = *(a1 + 344);
  *&v181[64] = *(a1 + 328);
  *&v181[80] = v92;
  v182 = *(a1 + 360);
  LOWORD(v183) = *(a1 + 188);
  v93 = *(a1 + 280);
  *v181 = *(a1 + 264);
  *&v181[16] = v93;
  v94 = *(a1 + 312);
  *&v181[32] = *(a1 + 296);
  *&v181[48] = v94;
  v95 = *(a2 + 264);
  v96 = *(a2 + 280);
  v97 = *(a2 + 296);
  __dst[3] = *(a2 + 312);
  __dst[1] = v96;
  __dst[2] = v97;
  __dst[0] = v95;
  v98 = *(a2 + 328);
  v99 = *(a2 + 344);
  v100 = *(a2 + 360);
  LOWORD(__dst[7]) = *(a2 + 188);
  __dst[6] = v100;
  __dst[5] = v99;
  __dst[4] = v98;
  v101 = *v181;
  v102 = a1 + 272;
  v103 = a2 + 272;
  v104 = *&__dst[0];
  if (!*v181)
  {
    if (!*&__dst[0])
    {
      v122 = *(a1 + 19);
      *(&__src[3] + 8) = *(a1 + 20);
      v123 = *(a1 + 22);
      *(&__src[4] + 8) = *(a1 + 21);
      *(&__src[5] + 8) = v123;
      *(&__src[6] + 2) = *(a1 + 362);
      v124 = *(a1 + 18);
      *(__src + 8) = *v102;
      *(&__src[1] + 8) = v124;
      *&__src[0] = 0;
      *(&__src[2] + 8) = v122;
      sub_213FB2E54(v181, &v171, &qword_27C9080B8, &unk_21476EEB0);
      sub_213FB2E54(__dst, &v171, &qword_27C9080B8, &unk_21476EEB0);
      sub_213FB2DF4(__src, &qword_27C9080B8, &unk_21476EEB0);
      goto LABEL_28;
    }

    sub_213FB2E54(v181, __src, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__dst, __src, &qword_27C9080B8, &unk_21476EEB0);
    goto LABEL_26;
  }

  *&__src[0] = *v181;
  v105 = *(a1 + 18);
  *(__src + 8) = *v102;
  *(&__src[1] + 8) = v105;
  v106 = *(a1 + 20);
  *(&__src[2] + 8) = *(a1 + 19);
  *(&__src[3] + 8) = v106;
  *(&__src[6] + 2) = *(a1 + 362);
  v107 = *(a1 + 21);
  *(&__src[5] + 8) = *(a1 + 22);
  *(&__src[4] + 8) = v107;
  v173 = __src[2];
  v174 = __src[3];
  v171 = __src[0];
  v172 = __src[1];
  LOWORD(v178) = __src[7];
  v176 = __src[5];
  v177 = __src[6];
  v175 = __src[4];
  if (!*&__dst[0])
  {
    *&v165[64] = __src[4];
    *&v165[80] = __src[5];
    *&v165[96] = __src[6];
    *&v165[112] = __src[7];
    *v165 = __src[0];
    *&v165[16] = __src[1];
    *&v165[32] = __src[2];
    *&v165[48] = __src[3];
    sub_213FB2E54(v181, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__dst, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__src, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_21430D1C4(v165);
LABEL_26:
    v115 = *(a1 + 19);
    *(&__src[3] + 8) = *(a1 + 20);
    v116 = *(a1 + 22);
    *(&__src[4] + 8) = *(a1 + 21);
    *(&__src[5] + 8) = v116;
    *(&__src[6] + 2) = *(a1 + 362);
    v117 = *(a1 + 18);
    *(__src + 8) = *v102;
    *(&__src[1] + 8) = v117;
    *(&__src[2] + 8) = v115;
    *&__src[0] = v101;
    *(&__src[7] + 1) = v104;
    v118 = *v103;
    __src[9] = *(a2 + 18);
    __src[8] = v118;
    v119 = *(a2 + 19);
    v120 = *(a2 + 20);
    *(&__src[13] + 10) = *(a2 + 362);
    v121 = *(a2 + 21);
    __src[13] = *(a2 + 22);
    __src[12] = v121;
    __src[10] = v119;
    __src[11] = v120;
    v51 = &unk_27C918158;
    v52 = &unk_214784468;
    goto LABEL_35;
  }

  v108 = *(a2 + 19);
  *&v165[56] = *(a2 + 20);
  v109 = *(a2 + 22);
  *&v165[72] = *(a2 + 21);
  *&v165[88] = v109;
  *&v165[98] = *(a2 + 362);
  v110 = *(a2 + 18);
  *&v165[8] = *v103;
  *&v165[24] = v110;
  *&v165[40] = v108;
  *v165 = *&__dst[0];
  sub_213FB2E54(v181, &v156, &qword_27C9080B8, &unk_21476EEB0);
  sub_213FB2E54(__dst, &v156, &qword_27C9080B8, &unk_21476EEB0);
  sub_213FB2E54(__src, &v156, &qword_27C9080B8, &unk_21476EEB0);
  v111 = sub_2146D4AB0(&v171, v165);
  *&v151[64] = *&v165[64];
  v152 = *&v165[80];
  v153 = *&v165[96];
  LOWORD(v154) = *&v165[112];
  *v151 = *v165;
  *&v151[16] = *&v165[16];
  *&v151[32] = *&v165[32];
  *&v151[48] = *&v165[48];
  sub_21430D1C4(v151);
  v160 = v175;
  v161 = v176;
  v162 = v177;
  LOWORD(v163) = v178;
  v156 = v171;
  v157 = v172;
  v158 = v173;
  v159 = v174;
  sub_21430D1C4(&v156);
  v112 = *(a1 + 19);
  *&v165[56] = *(a1 + 20);
  v113 = *(a1 + 22);
  *&v165[72] = *(a1 + 21);
  *&v165[88] = v113;
  *&v165[98] = *(a1 + 362);
  v114 = *(a1 + 18);
  *&v165[8] = *v102;
  *&v165[24] = v114;
  *v165 = v101;
  *&v165[40] = v112;
  sub_213FB2DF4(v165, &qword_27C9080B8, &unk_21476EEB0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v125 = *(a1 + 27);
  *&v165[32] = *(a1 + 26);
  *&v165[48] = v125;
  *&v165[64] = *(a1 + 28);
  v126 = *(a1 + 25);
  *v165 = *(a1 + 24);
  *&v165[16] = v126;
  v127 = *(a2 + 27);
  v173 = *(a2 + 26);
  v174 = v127;
  v175 = *(a2 + 28);
  v128 = *(a2 + 25);
  v171 = *(a2 + 24);
  v172 = v128;
  v129 = *v165;
  v130 = a1 + 392;
  v131 = a2 + 392;
  v132 = v171;
  if (!*v165)
  {
    if (!v171)
    {
      v148 = *v130;
      *(&__src[1] + 8) = *(a1 + 408);
      v149 = *(a1 + 440);
      *(&__src[2] + 8) = *(a1 + 424);
      *(&__src[3] + 8) = v149;
      v150 = *(a1 + 57);
      *&__src[0] = 0;
      *(&__src[4] + 1) = v150;
      *(__src + 8) = v148;
      sub_213FB2E54(v165, &v156, &qword_27C9080D0, &qword_2146F4F20);
      sub_213FB2E54(&v171, &v156, &qword_27C9080D0, &qword_2146F4F20);
      sub_213FB2DF4(__src, &qword_27C9080D0, &qword_2146F4F20);
      v138 = 1;
      return v138 & 1;
    }

    sub_213FB2E54(v165, __src, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(&v171, __src, &qword_27C9080D0, &qword_2146F4F20);
    goto LABEL_34;
  }

  v133 = *(a1 + 408);
  *(__src + 8) = *v130;
  *(&__src[1] + 8) = v133;
  v134 = *(a1 + 440);
  *(&__src[2] + 8) = *(a1 + 424);
  *(&__src[3] + 8) = v134;
  v135 = *(a1 + 57);
  *&__src[0] = *v165;
  *(&__src[4] + 1) = v135;
  v158 = __src[2];
  v159 = __src[3];
  v160 = __src[4];
  v156 = __src[0];
  v157 = __src[1];
  if (!v171)
  {
    *&v151[32] = __src[2];
    *&v151[48] = __src[3];
    *&v151[64] = __src[4];
    *v151 = __src[0];
    *&v151[16] = __src[1];
    sub_213FB2E54(v165, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(&v171, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(__src, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_21430D2C8(v151);
LABEL_34:
    v141 = *v130;
    *(&__src[1] + 8) = *(a1 + 408);
    v142 = *(a1 + 440);
    *(&__src[2] + 8) = *(a1 + 424);
    *(&__src[3] + 8) = v142;
    *(__src + 8) = v141;
    v143 = *v131;
    *(&__src[6] + 8) = *(a2 + 408);
    v144 = *(a2 + 440);
    *(&__src[7] + 8) = *(a2 + 424);
    *(&__src[8] + 8) = v144;
    v145 = *(a1 + 57);
    *&__src[0] = v129;
    *(&__src[4] + 1) = v145;
    v146 = *(a2 + 57);
    *&__src[5] = v132;
    *(&__src[9] + 1) = v146;
    *(&__src[5] + 8) = v143;
    v51 = &unk_27C918160;
    v52 = &unk_214784470;
    goto LABEL_35;
  }

  v136 = *v131;
  *&v151[24] = *(a2 + 408);
  v137 = *(a2 + 440);
  *&v151[40] = *(a2 + 424);
  *&v151[56] = v137;
  *&v151[72] = *(a2 + 57);
  *&v151[8] = v136;
  *v151 = v171;
  sub_213FB2E54(v165, v168, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2E54(&v171, v168, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2E54(__src, v168, &qword_27C9080D0, &qword_2146F4F20);
  v138 = sub_2146D4ECC(&v156, v151);
  v167[2] = *&v151[32];
  v167[3] = *&v151[48];
  v167[4] = *&v151[64];
  v167[0] = *v151;
  v167[1] = *&v151[16];
  sub_21430D2C8(v167);
  v168[2] = v158;
  v168[3] = v159;
  v168[4] = v160;
  v168[0] = v156;
  v168[1] = v157;
  sub_21430D2C8(v168);
  *v151 = v129;
  v139 = *v130;
  *&v151[24] = *(a1 + 408);
  v140 = *(a1 + 440);
  *&v151[40] = *(a1 + 424);
  *&v151[56] = v140;
  *&v151[72] = *(a1 + 57);
  *&v151[8] = v139;
  sub_213FB2DF4(v151, &qword_27C9080D0, &qword_2146F4F20);
  return v138 & 1;
}

unint64_t sub_2146D67DC()
{
  result = qword_27C918128;
  if (!qword_27C918128)
  {
    result = swift_getWitnessTable(byte_214784138, &type metadata for NearbySessionMessageError, v0, v1);
    atomic_store(result, &qword_27C918128);
  }

  return result;
}

unint64_t sub_2146D6840()
{
  result = qword_27C918168;
  if (!qword_27C918168)
  {
    result = swift_getWitnessTable(byte_2147841D8, &type metadata for NearbySessionMessageError, v0, v1);
    atomic_store(result, &qword_27C918168);
  }

  return result;
}

uint64_t sub_2146D6894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146D6934(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_21402D9F8(v4, v3);
  result = sub_213FB54FC(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_2146D69E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146D6A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2146D6B54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_2146D6BD0(uint64_t a1)
{
  *(a1 + 8) = sub_21431E738();
  result = sub_21431DBCC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146D6C10@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = sub_214069764(&unk_282653AD8);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059810;
  *(v7 + 24) = v8;
  *(v5 + 32) = v7;
  v9 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21403254C;
  *(v10 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_214042A28(v4, a1 + 40);
}

unint64_t sub_2146D6DB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2146D6F18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146D6F64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

void sub_2146D6FBC()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_2146D702C()
{
  if (*v0)
  {
    return 4000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2146D7050@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 4000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146D706C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 4000;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2146D70BC()
{
  if (*v0)
  {
    v1 = 4000;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2146D70F4(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  if (v2)
  {
    v3 = 4000;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

void *sub_2146D7140@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 4000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_2146D7160(uint64_t *a1@<X8>)
{
  v2 = 4000;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_2146D7260()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_2146D7290(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_2146D72E8()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_2146D7318(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2146D7378(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

void sub_2146D73A0(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 56);
  v6 = *(v1 + 80);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 72) = a1;
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

uint64_t (*sub_2146D74DC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146D7574(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

uint64_t sub_2146D760C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v9 = *(v1 + 120);
  v10 = v3;
  v11 = *(v1 + 152);
  v4 = v11;
  v8[0] = *(v1 + 88);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2140915E8(v8, &v7);
}

__n128 sub_2146D7660(__int128 *a1)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  v8[4] = *(v1 + 152);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  sub_214091658(v8);
  v5 = *a1;
  *(v1 + 104) = a1[1];
  v6 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v6;
  result = a1[4];
  *(v1 + 152) = result;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2146D76F0()
{
  v1 = *(v0 + 168);

  return v1;
}

void sub_2146D7720(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t sub_2146D7778@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomAcknowledgement(0) + 44);

  return sub_2140641A4(v3, a1);
}

uint64_t type metadata accessor for CustomAcknowledgement(uint64_t a1)
{
  result = qword_280B2F0A8;
  if (!qword_280B2F0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146D7808(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CustomAcknowledgement(0) + 44);

  return sub_214064230(a1, v3);
}

double sub_2146D7894()
{
  type metadata accessor for CustomAcknowledgement(0);

  return result;
}

void sub_2146D78C8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomAcknowledgement(0) + 48);

  *(v1 + v3) = a1;
}

uint64_t sub_2146D7950@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomAcknowledgement(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_214031CA0(v4, v5, v6);
}

__n128 sub_2146D79A0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for CustomAcknowledgement(0) + 52));
  sub_214031CE0(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t sub_2146D7A40()
{
  BYTE8(v2) = 0;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000015, 0x8000000214784510);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  *&v2 = *v0;
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](*(v0 + 1), *(v0 + 2));
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return *(&v2 + 1);
}

unint64_t sub_2146D7B48()
{
  result = qword_27C918170;
  if (!qword_27C918170)
  {
    result = swift_getWitnessTable(byte_214784548, &type metadata for CustomAcknowledgement.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C918170);
  }

  return result;
}

unint64_t sub_2146D7B9C(uint64_t a1)
{
  *(a1 + 8) = sub_2142ECF50();
  result = sub_2142ED07C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146D7BCC(uint64_t a1)
{
  *(a1 + 8) = sub_2146D7C34(&qword_27C90D738, aI_122);
  result = sub_2146D7C34(&qword_27C90D708, byte_2146F8EE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146D7C34(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CustomAcknowledgement(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146D7CA4(uint64_t a1)
{
  sub_2146D7E44(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21447A994();
    if (v2 <= 0x3F)
    {
      sub_214494944(319);
      if (v3 <= 0x3F)
      {
        sub_2146D7E44(319, &qword_280B2E670, &type metadata for TapBack.MessageSummaryInfo, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for BalloonPlugin.Payload(319);
          if (v5 <= 0x3F)
          {
            sub_2146D7E44(319, &qword_280B2E470, &type metadata for AttributionInfo, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_2146D7E44(319, &qword_280B2F2E8, &type metadata for _AttributedString, MEMORY[0x277D83D88]);
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

void sub_2146D7E44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2146D7EA4()
{
  result = qword_27C918178;
  if (!qword_27C918178)
  {
    result = swift_getWitnessTable(byte_2147845B0, &type metadata for CustomAcknowledgement.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C918178);
  }

  return result;
}

void BD_IOSurfaceDisallowForever_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  *v1 = 0;
  _os_log_error_impl(&dword_213FAF000, log, OS_LOG_TYPE_ERROR, "Unable soft link IOSurfaceDisallowForever", v1, 2u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}