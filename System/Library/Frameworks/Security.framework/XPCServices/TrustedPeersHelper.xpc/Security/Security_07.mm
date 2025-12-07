uint64_t sub_1000DE2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for AccountInfo(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for Metrics(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000DE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DE434(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000DE4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE578(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DE5E4(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);

  return sub_100216644();
}

uint64_t sub_1000DE724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBA0, type metadata accessor for ResetAccountCDPContentsResponse, &protocol conformance descriptor for ResetAccountCDPContentsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE7C4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FC0, type metadata accessor for ResetAccountCDPContentsResponse, &protocol conformance descriptor for ResetAccountCDPContentsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DE830(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298FC0, type metadata accessor for ResetAccountCDPContentsResponse, &protocol conformance descriptor for ResetAccountCDPContentsResponse);

  return sub_100216644();
}

uint64_t sub_1000DE8EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100216744();
  sub_1000025E4(v7, a2);
  sub_100002648(v7, a2);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v8 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D600;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = sub_100216714();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_100216724();
}

uint64_t PasscodeGeneration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1002165D4();
    }
  }

  return result;
}

uint64_t PasscodeGeneration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1002166E4(), !v4))
  {
    type metadata accessor for PasscodeGeneration(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t static PasscodeGeneration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PasscodeGeneration(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000DECDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB98, type metadata accessor for PasscodeGeneration, &protocol conformance descriptor for PasscodeGeneration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DED7C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration, &protocol conformance descriptor for PasscodeGeneration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DEDE8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration, &protocol conformance descriptor for PasscodeGeneration);

  return sub_100216644();
}

uint64_t sub_1000DEE64(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000DEF30()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "creation_date";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "remaining_attempts";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "escrow_information_metadata";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "label";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 9;
  *v15 = "silent_attempt_allowed";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 10;
  *v17 = "record_status";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "viability_status";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 12;
  *v21 = "federation_id";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "expected_federation_id";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t EscrowInformation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 8)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1000DBB68(a1, v5, a2, a3, type metadata accessor for EscrowInformation);
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_26:
          sub_1002165D4();
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1000DF4B4(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result <= 10)
        {
          if (result != 9)
          {
            v11 = v4;
            sub_1000FA1FC();
LABEL_25:
            v4 = v11;
            sub_100216564();
            goto LABEL_5;
          }

          goto LABEL_26;
        }

        if (result == 11)
        {
          v11 = v4;
          sub_1000FA250();
          goto LABEL_25;
        }

        if (result == 12 || result == 13)
        {
LABEL_4:
          sub_1002165B4();
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DF4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EscrowInformation(0);
  type metadata accessor for EscrowInformation.Metadata(0);
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata, &protocol conformance descriptor for EscrowInformation.Metadata);
  return sub_1002165F4();
}

uint64_t EscrowInformation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000DF788(v3, a1, a2, a3, type metadata accessor for EscrowInformation, 1);
  if (!v4)
  {
    if (*v3)
    {
      sub_1002166E4();
    }

    sub_1000DF9AC(v3, a1, a2, a3);
    v9 = v3[2];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1002166C4();
    }

    if (v3[3])
    {
      sub_1002166E4();
    }

    if (v3[4])
    {
      sub_1000FA1FC();
      sub_100216674();
    }

    if (v3[6])
    {
      sub_1000FA250();
      sub_100216674();
    }

    v11 = v3[9];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[8] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1002166C4();
    }

    v13 = v3[11];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[10] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1002166C4();
    }

    type metadata accessor for EscrowInformation(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000DF788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1002164A4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_100019C6C(a1 + *(v17 + 48), v11, &qword_10029D780, &qword_1002265D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000114D4(v11, &qword_10029D780, &qword_1002265D0);
  }

  (*(v13 + 32))(v16, v11, v12);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1000DF9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for EscrowInformation.Metadata(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(a1 + *(v14 + 52), v8, &unk_10029DAA0, &qword_10021E870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029DAA0, &qword_10021E870);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for EscrowInformation.Metadata);
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata, &protocol conformance descriptor for EscrowInformation.Metadata);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for EscrowInformation.Metadata);
}

uint64_t sub_1000DFC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 48);
  v5 = sub_1002164A4();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 52);
  v7 = type metadata accessor for EscrowInformation.Metadata(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000DFD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DFD7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000DFE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB90, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DFEC0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DFF2C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);

  return sub_100216644();
}

uint64_t sub_1000DFFD0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation.Metadata._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation.Metadata._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10021E010;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "backup_keybag_digest";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client_metadata";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "secure_backup_uses_multiple_icscs";
  *(v11 + 1) = 33;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bottle_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "secure_backup_timestamp";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "escrowed_spki";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "peer_info";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "serial";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "build";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "passcodeGeneration";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000E03E4()
{
  type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
  swift_allocObject();
  result = sub_1000E0424();
  qword_100298568 = result;
  return result;
}

uint64_t sub_1000E0424()
{
  *(v0 + 16) = xmmword_10021D470;
  v1 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v2 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs) = 0;
  v3 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v5 = sub_1002164A4();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki) = xmmword_10021D470;
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo) = xmmword_10021D470;
  v6 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  v9 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  return v0;
}

uint64_t sub_1000E0598(_TtC18TrustedPeersHelper6Client *a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v4 - 8, v5);
  v122 = &v113 - v6;
  v7 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v7 - 8, v8);
  v118 = &v113 - v9;
  v10 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v10 - 8, v11);
  v114 = &v113 - v12;
  v121 = xmmword_10021D470;
  *(v1 + 16) = xmmword_10021D470;
  v13 = (v1 + 16);
  v14 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v113 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v15 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  v115 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs) = 0;
  v16 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v116 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v18 = sub_1002164A4();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v19 = v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki;
  v20 = v121;
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki) = v121;
  v117 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo) = v20;
  v21 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  v119 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  v120 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  *&v121 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  v24 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  swift_beginAccess();
  v25 = *a1->endpoint;
  v26 = *a1->containerMap;
  swift_beginAccess();
  v27 = *v13;
  v28 = *(v2 + 24);
  *v13 = v25;
  *(v2 + 24) = v26;
  sub_100012558(v25, v26);
  sub_100002BF0(v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v36 = v114;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v35], v114, &qword_100298660, &qword_10021E878);
  v37 = v113;
  swift_beginAccess();
  sub_1000F9E80(v36, v37 + v2, &qword_100298660, &qword_10021E878);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v39 = *&a1->_TtCs12_SwiftObject_opaque[v38];
  v40 = v115;
  swift_beginAccess();
  *&v40[v2] = v39;
  v41 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID];
  swift_beginAccess();
  v43 = *v41;
  v42 = *(v41 + 1);
  swift_beginAccess();
  v44 = v16[1];
  *v16 = v43;
  v16[1] = v42;

  v44, v45, v46, v47, v48, v49, v50, v51, v113, v114, v115, v116, v117, v118, v119, v120, v121, *(&v121 + 1);
  v52 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v53 = v118;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v52], v118, &qword_10029D780, &qword_1002265D0);
  v54 = v116;
  swift_beginAccess();
  sub_1000F9E80(v53, v54 + v2, &qword_10029D780, &qword_1002265D0);
  swift_endAccess();
  v55 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki];
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  swift_beginAccess();
  v58 = *v19;
  v59 = *(v19 + 8);
  *v19 = v57;
  *(v19 + 8) = v56;
  sub_100012558(v57, v56);
  sub_100002BF0(v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo];
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = v117;
  swift_beginAccess();
  v70 = *v69;
  v71 = *(v69 + 1);
  *v69 = v68;
  *(v69 + 1) = v67;
  sub_100012558(v68, v67);
  sub_100002BF0(v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial];
  swift_beginAccess();
  v80 = *v78;
  v79 = *(v78 + 1);
  v81 = v119;
  swift_beginAccess();
  v82 = v81[1];
  *v81 = v80;
  v81[1] = v79;

  v82, v83, v84, v85, v86, v87, v88, v89, v113, v114, v115, v116, v117, v118, v119, v120, v121, *(&v121 + 1);
  v90 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build];
  swift_beginAccess();
  v92 = *v90;
  v91 = *(v90 + 1);
  v93 = v120;
  swift_beginAccess();
  v94 = v93[1];
  *v93 = v92;
  v93[1] = v91;

  v94, v95, v96, v97, v98, v99, v100, v101, v113, v114, v115, v116, v117, v118, v119, v120, v121, *(&v121 + 1);
  v102 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v103 = v122;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v102], v122, &qword_1002986A8, &qword_10021E880);
  a1, v104, v105, v106, v107, v108, v109, v110;
  v111 = v121;
  swift_beginAccess();
  sub_1000F9E80(v103, v2 + v111, &qword_1002986A8, &qword_10021E880);
  swift_endAccess();
  return v2;
}

uint64_t sub_1000E0CEC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v16 = &dispatch thunk of Decoder.decodeSingularBytesField(value:);
          if (result == 6)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial;
LABEL_5:
            sub_1000E1300(v11, v12, v13, v14, v15, v16);
            break;
          case 9:
            v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build;
            goto LABEL_5;
          case 10:
            sub_1000E1398(a2, a1, a3, a4);
            break;
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularBytesField(value:));
        }

        else if (result == 2)
        {
          sub_1000E10BC(a2, a1, a3, a4);
        }
      }

      else if (result == 3)
      {
        sub_1000E1198(a2, a1, a3, a4);
      }

      else
      {
        if (result == 4)
        {
          v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID;
          goto LABEL_5;
        }

        sub_1000E1224(a2, a1, a3, a4);
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1000E10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &protocol conformance descriptor for EscrowInformation.Metadata.ClientMetadata);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000E1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000E1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000E1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1000E1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PasscodeGeneration(0);
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration, &protocol conformance descriptor for PasscodeGeneration);
  sub_1002165F4();
  return swift_endAccess();
}

void sub_1000E14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *v9->endpoint == *v9->containerMap)
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    if (v9 == v9 >> 32)
    {
      goto LABEL_10;
    }
  }

  else if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  sub_100012558(*(a1 + 16), *(a1 + 24));
  sub_100216684();
  sub_100002BF0(v9, v10, v12, v13, v14, v15, v16, v17);
  if (v4)
  {
    return;
  }

LABEL_10:
  sub_1000E18E0(a1, a2, a3, a4);
  if (v4)
  {
    return;
  }

  v18 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  if (*(a1 + v18))
  {
    sub_1002166E4();
  }

  v19 = a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID;
  swift_beginAccess();
  v20 = *(v19 + 8);

  sub_1002166C4();
  v20, v21, v22, v23, v24, v25, v26, v27, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90;
  sub_1000E1B08(a1, a2, a3, a4);
  v28 = a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki;
  swift_beginAccess();
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_23;
    }

    v32 = *v29->endpoint;
    v33 = *v29->containerMap;
LABEL_21:
    if (v32 == v33)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v31)
  {
    v32 = v29;
    v33 = v29 >> 32;
    goto LABEL_21;
  }

  if ((v30 & 0xFF000000000000) != 0)
  {
LABEL_22:
    sub_100012558(v29, v30);
    sub_100216684();
    sub_100002BF0(v29, v30, v34, v35, v36, v37, v38, v39);
  }

LABEL_23:
  v40 = a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo;
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_32;
    }

    v44 = *v41->endpoint;
    v45 = *v41->containerMap;
  }

  else
  {
    if (!v43)
    {
      if ((v42 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v44 = v41;
    v45 = v41 >> 32;
  }

  if (v44 != v45)
  {
LABEL_31:
    sub_100012558(v41, v42);
    sub_100216684();
    sub_100002BF0(v41, v42, v46, v47, v48, v49, v50, v51);
  }

LABEL_32:
  v52 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {

    sub_1002166C4();
    v54, v56, v57, v58, v59, v60, v61, v62, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91;
  }

  v63 = a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build;
  swift_beginAccess();
  v64 = *(v63 + 8);

  sub_1002166C4();
  v64, v65, v66, v67, v68, v69, v70, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91;
  sub_1000E1D30(a1, a2, a3, a4);
}

uint64_t sub_1000E18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100298660, &qword_10021E878);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100298660, &qword_10021E878);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &protocol conformance descriptor for EscrowInformation.Metadata.ClientMetadata);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
}

uint64_t sub_1000E1B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_10029D780, &qword_1002265D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D780, &qword_1002265D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000E1D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PasscodeGeneration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_1002986A8, &qword_10021E880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002986A8, &qword_10021E880);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for PasscodeGeneration);
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration, &protocol conformance descriptor for PasscodeGeneration);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for PasscodeGeneration);
}

BOOL sub_1000E1F9C(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2)
{
  v4 = type metadata accessor for PasscodeGeneration(0);
  v227 = *(v4 - 8);
  v228 = v4;
  __chkstk_darwin(v4, v5);
  v224 = (&v224 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v226 = sub_10001148C(&qword_10029CDA0, &qword_100225D20);
  __chkstk_darwin(v226, v7);
  v229 = &v224 - v8;
  v9 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v225 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11, v13);
  v230 = &v224 - v14;
  v236 = sub_1002164A4();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236, v15);
  v231 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  __chkstk_darwin(v233, v17);
  v235 = &v224 - v18;
  v19 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v232 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v237 = &v224 - v24;
  v25 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v241 = *(v25 - 8);
  v242 = v25;
  __chkstk_darwin(v25, v26);
  v238 = (&v224 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = sub_10001148C(&qword_10029CDA8, &qword_100225D28);
  __chkstk_darwin(v240, v28);
  v30 = &v224 - v29;
  v31 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v33 = __chkstk_darwin(v31 - 8, v32);
  v239 = (&v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33, v35);
  v37 = &v224 - v36;
  swift_beginAccess();
  v39 = *a1->endpoint;
  v38 = *a1->containerMap;
  swift_beginAccess();
  v40 = *(a2 + 16);
  v41 = *(a2 + 24);

  sub_100012558(v39, v38);
  sub_100012558(v40, v41);
  v42 = sub_100052F18(v39, v38, v40, v41);
  sub_100002BF0(v40, v41, v43, v44, v45, v46, v47, v48);
  sub_100002BF0(v39, v38, v49, v50, v51, v52, v53, v54);
  if (!v42)
  {
    a1, v55, v56, v57, v58, v59, v60, v61;
    v75 = a2;
LABEL_35:
    v75, v68, v69, v70, v71, v72, v73, v74;
    return 0;
  }

  v62 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v62], v37, &qword_100298660, &qword_10021E878);
  v63 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v64 = *(v240 + 48);
  sub_100019C6C(v37, v30, &qword_100298660, &qword_10021E878);
  sub_100019C6C(a2 + v63, &v30[v64], &qword_100298660, &qword_10021E878);
  v65 = v242;
  v66 = *(v241 + 48);
  v67 = a2;
  if (v66(v30, 1, v242) == 1)
  {
    sub_1000114D4(v37, &qword_100298660, &qword_10021E878);
    if (v66(&v30[v64], 1, v65) == 1)
    {
      sub_1000114D4(v30, &qword_100298660, &qword_10021E878);
      goto LABEL_11;
    }

LABEL_8:
    v77 = &qword_10029CDA8;
    v78 = &qword_100225D28;
LABEL_9:
    sub_1000114D4(v30, v77, v78);
    goto LABEL_34;
  }

  v76 = v239;
  sub_100019C6C(v30, v239, &qword_100298660, &qword_10021E878);
  if (v66(&v30[v64], 1, v65) == 1)
  {
    sub_1000114D4(v37, &qword_100298660, &qword_10021E878);
    sub_1000F9228(v76, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    goto LABEL_8;
  }

  v86 = v238;
  sub_1000F89AC(&v30[v64], v238, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v87 = _s18TrustedPeersHelper17EscrowInformationV8MetadataV06ClientF0V2eeoiySbAG_AGtFZ_0(v76, v86);
  sub_1000F9228(v86, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000114D4(v37, &qword_100298660, &qword_10021E878);
  sub_1000F9228(v76, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000114D4(v30, &qword_100298660, &qword_10021E878);
  if ((v87 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_11:
  v88 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v89 = *&a1->_TtCs12_SwiftObject_opaque[v88];
  v90 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  if (v89 != *&v67->_TtCs12_SwiftObject_opaque[v90])
  {
    goto LABEL_34;
  }

  v91 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID];
  swift_beginAccess();
  v92 = *v91;
  v93 = *(v91 + 1);
  v94 = &v67->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID];
  swift_beginAccess();
  if ((v92 != *v94 || v93 != *(v94 + 1)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v95 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v96 = v67;
  v97 = v237;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v95], v237, &qword_10029D780, &qword_1002265D0);
  v98 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v99 = *(v233 + 48);
  v30 = v235;
  sub_100019C6C(v97, v235, &qword_10029D780, &qword_1002265D0);
  v242 = v96;
  sub_100019C6C(&v96->_TtCs12_SwiftObject_opaque[v98], &v30[v99], &qword_10029D780, &qword_1002265D0);
  v100 = v234;
  v101 = *(v234 + 48);
  v102 = v236;
  if (v101(v30, 1, v236) != 1)
  {
    v104 = v232;
    sub_100019C6C(v30, v232, &qword_10029D780, &qword_1002265D0);
    if (v101(&v30[v99], 1, v102) != 1)
    {
      v105 = v231;
      (*(v100 + 32))(v231, &v30[v99], v102);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      LODWORD(v241) = sub_100216954();
      v106 = *(v100 + 8);
      v106(v105, v102);
      sub_1000114D4(v237, &qword_10029D780, &qword_1002265D0);
      v106(v104, v102);
      sub_1000114D4(v30, &qword_10029D780, &qword_1002265D0);
      v67 = v242;
      if (v241)
      {
        goto LABEL_22;
      }

LABEL_34:
      a1, v79, v80, v81, v82, v83, v84, v85;
      v75 = v67;
      goto LABEL_35;
    }

    sub_1000114D4(v237, &qword_10029D780, &qword_1002265D0);
    (*(v100 + 8))(v104, v102);
    v67 = v242;
    goto LABEL_20;
  }

  sub_1000114D4(v97, &qword_10029D780, &qword_1002265D0);
  v103 = v101(&v30[v99], 1, v102);
  v67 = v242;
  if (v103 != 1)
  {
LABEL_20:
    v77 = &qword_100297E30;
    v78 = &qword_10021DA38;
    goto LABEL_9;
  }

  sub_1000114D4(v30, &qword_10029D780, &qword_1002265D0);
LABEL_22:
  v107 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki];
  swift_beginAccess();
  v109 = *v107;
  v108 = *(v107 + 1);
  v110 = &v67->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki];
  swift_beginAccess();
  v112 = *v110;
  v111 = *(v110 + 1);
  sub_100012558(v109, v108);
  sub_100012558(v112, v111);
  v113 = sub_100052F18(v109, v108, v112, v111);
  sub_100002BF0(v112, v111, v114, v115, v116, v117, v118, v119);
  sub_100002BF0(v109, v108, v120, v121, v122, v123, v124, v125);
  if (!v113)
  {
    goto LABEL_34;
  }

  v126 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo];
  swift_beginAccess();
  v128 = *v126;
  v127 = *(v126 + 1);
  v129 = &v67->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo];
  swift_beginAccess();
  v131 = *v129;
  v130 = *(v129 + 1);
  sub_100012558(v128, v127);
  sub_100012558(v131, v130);
  v132 = sub_100052F18(v128, v127, v131, v130);
  sub_100002BF0(v131, v130, v133, v134, v135, v136, v137, v138);
  sub_100002BF0(v128, v127, v139, v140, v141, v142, v143, v144);
  if (!v132)
  {
    goto LABEL_34;
  }

  v145 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial];
  swift_beginAccess();
  v146 = *v145;
  v147 = *(v145 + 1);
  v148 = &v67->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial];
  swift_beginAccess();
  if ((v146 != *v148 || v147 != *(v148 + 1)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v149 = &a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build];
  swift_beginAccess();
  v150 = *v149;
  v151 = *(v149 + 1);
  v152 = &v67->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build];
  swift_beginAccess();
  if ((v150 != *v152 || v151 != *(v152 + 1)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v153 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v154 = v230;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v153], v230, &qword_1002986A8, &qword_10021E880);
  v155 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v156 = *(v226 + 48);
  v157 = v229;
  sub_100019C6C(v154, v229, &qword_1002986A8, &qword_10021E880);
  sub_100019C6C(&v67->_TtCs12_SwiftObject_opaque[v155], v157 + v156, &qword_1002986A8, &qword_10021E880);
  v158 = v228;
  v159 = *(v227 + 48);
  if (v159(v157, 1, v228) == 1)
  {
    a1, v160, v161, v162, v163, v164, v165, v166;
    v67, v167, v168, v169, v170, v171, v172, v173;
    sub_1000114D4(v154, &qword_1002986A8, &qword_10021E880);
    if (v159(v157 + v156, 1, v158) == 1)
    {
      sub_1000114D4(v157, &qword_1002986A8, &qword_10021E880);
      return 1;
    }

    goto LABEL_40;
  }

  v175 = v225;
  sub_100019C6C(v157, v225, &qword_1002986A8, &qword_10021E880);
  if (v159(v157 + v156, 1, v158) == 1)
  {
    a1, v176, v177, v178, v179, v180, v181, v182;
    v67, v183, v184, v185, v186, v187, v188, v189;
    sub_1000114D4(v230, &qword_1002986A8, &qword_10021E880);
    sub_1000F9228(v175, type metadata accessor for PasscodeGeneration);
LABEL_40:
    v190 = &qword_10029CDA0;
    v191 = &qword_100225D20;
    v192 = v157;
LABEL_41:
    sub_1000114D4(v192, v190, v191);
    return 0;
  }

  v193 = v157 + v156;
  v194 = v224;
  sub_1000F89AC(v193, v224, type metadata accessor for PasscodeGeneration);
  if (*v175 != *v194)
  {
    a1, v195, v196, v197, v198, v199, v200, v201;
    v67, v217, v218, v219, v220, v221, v222, v223;
    sub_1000F9228(v194, type metadata accessor for PasscodeGeneration);
    sub_1000114D4(v230, &qword_1002986A8, &qword_10021E880);
    sub_1000F9228(v175, type metadata accessor for PasscodeGeneration);
    v192 = v157;
    v190 = &qword_1002986A8;
    v191 = &qword_10021E880;
    goto LABEL_41;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v202 = sub_100216954();
  a1, v203, v204, v205, v206, v207, v208, v209;
  v67, v210, v211, v212, v213, v214, v215, v216;
  sub_1000F9228(v194, type metadata accessor for PasscodeGeneration);
  sub_1000114D4(v230, &qword_1002986A8, &qword_10021E880);
  sub_1000F9228(v175, type metadata accessor for PasscodeGeneration);
  sub_1000114D4(v157, &qword_1002986A8, &qword_10021E880);
  return (v202 & 1) != 0;
}

uint64_t sub_1000E2F60@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_1000E300C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB88, type metadata accessor for EscrowInformation.Metadata, &protocol conformance descriptor for EscrowInformation.Metadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E30AC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata, &protocol conformance descriptor for EscrowInformation.Metadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E3118(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata, &protocol conformance descriptor for EscrowInformation.Metadata);

  return sub_100216644();
}

void sub_1000E3194()
{
  v0._countAndFlagsBits = 0x4D746E65696C432ELL;
  v0._object = 0xEF61746164617465;
  sub_100216A14(v0);
  static EscrowInformation.Metadata.ClientMetadata.protoMessageName = 0xD00000000000001ALL;
  unk_1002B09C0 = 0x80000001002393B0;
}

uint64_t *EscrowInformation.Metadata.ClientMetadata.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002974C0 != -1)
  {
    swift_once();
  }

  return &static EscrowInformation.Metadata.ClientMetadata.protoMessageName;
}

uint64_t static EscrowInformation.Metadata.ClientMetadata.protoMessageName.getter()
{
  if (qword_1002974C0 != -1)
  {
    swift_once();
  }

  v0 = static EscrowInformation.Metadata.ClientMetadata.protoMessageName;

  return v0;
}

uint64_t sub_1000E32C4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation.Metadata.ClientMetadata._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation.Metadata.ClientMetadata._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021E020;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "secure_backup_metadata_timestamp";
  *(v5 + 8) = 32;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "secure_backup_numeric_passphrase_length";
  *(v9 + 8) = 39;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "secure_backup_uses_complex_passphrase";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "secure_backup_uses_numeric_passphrase";
  *(v13 + 1) = 37;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "device_color";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "device_enclosure_color";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "device_mid";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "device_model";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "device_model_class";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "device_model_version";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "device_name";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "device_platform";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result < 12)
      {
        goto LABEL_2;
      }

      if (result == 12)
      {
        goto LABEL_18;
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_18;
      }

LABEL_2:
      sub_1002165B4();
    }

    else if (result == 1)
    {
      sub_1000E3898(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 3)
    {
LABEL_18:
      sub_1002165D4();
    }
  }
}

uint64_t sub_1000E3898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E3B9C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1002166E4();
    }

    if (v3[1])
    {
      sub_1002166E4();
    }

    if (v3[2])
    {
      sub_1002166E4();
    }

    v6 = v3[4];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[3] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1002166C4();
    }

    v8 = v3[6];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[5] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_1002166C4();
    }

    v10 = v3[8];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v3[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1002166C4();
    }

    v12 = v3[10];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[9] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1002166C4();
    }

    v14 = v3[12];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[11] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1002166C4();
    }

    v16 = v3[14];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v3[13] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_1002166C4();
    }

    v18 = v3[16];
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v3[15] & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_1002166C4();
    }

    if (v3[17])
    {
      sub_1002166E4();
    }

    type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E3B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(a1 + *(v14 + 64), v8, &qword_10029D780, &qword_1002265D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D780, &qword_1002265D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000E3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0xE000000000000000;
  *(a2 + 136) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 64);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000E3EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E3F20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E3FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB80, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &protocol conformance descriptor for EscrowInformation.Metadata.ClientMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4064(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &protocol conformance descriptor for EscrowInformation.Metadata.ClientMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E40D0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &protocol conformance descriptor for EscrowInformation.Metadata.ClientMetadata);

  return sub_100216644();
}

uint64_t sub_1000E4174()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PCSService._protobuf_nameMap);
  sub_100002648(v0, static PCSService._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "service_identifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "public_key";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zone";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t PCSService.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1002165B4();
        break;
      case 2:
        sub_100216574();
        break;
      case 1:
        sub_100216584();
        break;
    }
  }

  return result;
}

uint64_t PCSService.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_100216694();
    if (v4)
    {
      return result;
    }
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_100216684();
      if (v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = *(v3 + 32);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = sub_1002166C4(), !v4))
  {
    type metadata accessor for PCSService(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E45DC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_10021D470;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000E4614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E4688(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E472C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB78, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E47CC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E4838(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);

  return sub_100216644();
}

uint64_t sub_1000E48DC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentityFetchRequest._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentityFetchRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pcs_services";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "account_info";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t DirectPCSIdentityFetchRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000E4D18(a1, v5, a2, a3);
          break;
        case 2:
          sub_1000E4C64(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for PCSService(0);
          sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E4C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DirectPCSIdentityFetchRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DirectPCSIdentityFetchRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t DirectPCSIdentityFetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PCSService(0), sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService), result = sub_1002166F4(), !v4))
  {
    result = sub_1000E4EE0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000E50FC(v3, a1, a2, a3);
      type metadata accessor for DirectPCSIdentityFetchRequest(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E4EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000E50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E53D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB70, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5474(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E54E0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);

  return sub_100216644();
}

uint64_t sub_1000E5584()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentity._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentity._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pcs_service";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DirectPCSIdentity(0);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000E5890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DirectPCSIdentity(0);
  type metadata accessor for PCSService(0);
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);
  return sub_1002165F4();
}

uint64_t sub_1000E5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1000E7D20(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E5A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PCSService(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectPCSIdentity(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &qword_100297E18, &qword_10021DA28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297E18, &qword_10021DA28);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for PCSService);
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for PCSService);
}

uint64_t sub_1000E5C94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_1000E5DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB68, type metadata accessor for DirectPCSIdentity, &protocol conformance descriptor for DirectPCSIdentity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5E40(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity, &protocol conformance descriptor for DirectPCSIdentity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E5EAC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity, &protocol conformance descriptor for DirectPCSIdentity);

  return sub_100216644();
}

uint64_t sub_1000E5F50()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentityFetchResponse._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentityFetchResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "synckeys";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t DirectPCSIdentityFetchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for DirectPCSIdentity(0), sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity, &protocol conformance descriptor for DirectPCSIdentity), result = sub_1002166F4(), !v4))
  {
    if (!*(v3[1] + 16) || (sub_100216424(), sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport), result = sub_1002166F4(), !v4))
    {
      type metadata accessor for DirectPCSIdentityFetchResponse(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E63BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB60, type metadata accessor for DirectPCSIdentityFetchResponse, &protocol conformance descriptor for DirectPCSIdentityFetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E645C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299068, type metadata accessor for DirectPCSIdentityFetchResponse, &protocol conformance descriptor for DirectPCSIdentityFetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E64C8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100299068, type metadata accessor for DirectPCSIdentityFetchResponse, &protocol conformance descriptor for DirectPCSIdentityFetchResponse);

  return sub_100216644();
}

uint64_t sub_1000E6584()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentCKKSItemSpecifier._protobuf_nameMap);
  sub_100002648(v0, static CurrentCKKSItemSpecifier._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "item_pointer_name";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E67C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_100216534();
    if (v5 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v9 = v4;
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = v4 + 16;
LABEL_3:
      a4(v9, a2, a3);
    }
  }
}

uint64_t sub_1000E6884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_1002166C4(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_1002166C4(), !v5))
    {
      a4(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E69D0@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000E6A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB58, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E6AB4(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6B20(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);

  return sub_100216644();
}

uint64_t sub_1000E6BC4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentItemFetchRequest._protobuf_nameMap);
  sub_100002648(v0, static CurrentItemFetchRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "current_items";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "account_info";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t CurrentItemFetchRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000E7000(a1, v5, a2, a3);
          break;
        case 2:
          sub_1000E6F4C(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for CurrentCKKSItemSpecifier(0);
          sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E6F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CurrentItemFetchRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E7000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CurrentItemFetchRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t CurrentItemFetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CurrentCKKSItemSpecifier(0), sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier), result = sub_1002166F4(), !v4))
  {
    result = sub_1000E71C8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000E73E4(v3, a1, a2, a3);
      type metadata accessor for CurrentItemFetchRequest(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E71C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000E73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E76BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB50, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E775C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299090, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E77C8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100299090, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);

  return sub_100216644();
}

uint64_t sub_1000E7874()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentCKKSItem._protobuf_nameMap);
  sub_100002648(v0, static CurrentCKKSItem._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "item_specifier";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E7ACC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_100216534();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000E7B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CurrentCKKSItem(0);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000E7C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CurrentCKKSItem(0);
  type metadata accessor for CurrentCKKSItemSpecifier(0);
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);
  return sub_1002165F4();
}

uint64_t sub_1000E7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v18 - v9;
  v11 = sub_100216424();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_100019C6C(a1 + *(v16 + 20), v10, &qword_10029D9C0, &qword_100226740);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000114D4(v10, &qword_10029D9C0, &qword_100226740);
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000E7F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CurrentCKKSItem(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &qword_100298588, &unk_10021E7E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100298588, &unk_10021E7E0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for CurrentCKKSItemSpecifier);
}

uint64_t sub_1000E8204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB48, type metadata accessor for CurrentCKKSItem, &protocol conformance descriptor for CurrentCKKSItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E82A4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem, &protocol conformance descriptor for CurrentCKKSItem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8310(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem, &protocol conformance descriptor for CurrentCKKSItem);

  return sub_100216644();
}

uint64_t sub_1000E83B4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentItemFetchResponse._protobuf_nameMap);
  sub_100002648(v0, static CurrentItemFetchResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "synckeys";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E8620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  result = sub_100216534();
  if (!v7)
  {
    v15 = a6;
    v14 = a7;
    while (1)
    {
      if (v13)
      {
        return result;
      }

      if (result == 1)
      {
        a4(0);
        sub_1000F9F28(a5, v15, a7);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_4;
        }

        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
      }

      sub_1002165E4();
      a7 = v14;
LABEL_4:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t CurrentItemFetchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CurrentCKKSItem(0), sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem, &protocol conformance descriptor for CurrentCKKSItem), result = sub_1002166F4(), !v4))
  {
    if (!*(v3[1] + 16) || (sub_100216424(), sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport), result = sub_1002166F4(), !v4))
    {
      type metadata accessor for CurrentItemFetchResponse(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E88E8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (sub_10004E39C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000E89F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E8A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E8B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB40, type metadata accessor for CurrentItemFetchResponse, &protocol conformance descriptor for CurrentItemFetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E8BB0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990B8, type metadata accessor for CurrentItemFetchResponse, &protocol conformance descriptor for CurrentItemFetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8C1C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002990B8, type metadata accessor for CurrentItemFetchResponse, &protocol conformance descriptor for CurrentItemFetchResponse);

  return sub_100216644();
}

uint64_t sub_1000E8CB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || (sub_10004E39C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000E8D94()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RemoveUnreadableCKServerDataRequest._protobuf_nameMap);
  sub_100002648(v0, static RemoveUnreadableCKServerDataRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "metrics";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "account_info";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "isDBRv2";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t RemoveUnreadableCKServerDataRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_100216554();
        break;
      case 3:
        sub_1000E915C(a1, v5, a2, a3);
        break;
      case 2:
        sub_1000E90A8(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000E90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t RemoveUnreadableCKServerDataRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E92CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000E94E8(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_100216664();
    }

    type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E92CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000E94E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  sub_100019C6C(a1 + *(v14 + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E9750@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1000E9820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E9894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E9938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB38, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E99D8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E9A44(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);

  return sub_100216644();
}

uint64_t sub_1000E9AF4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100216744();
  sub_1000025E4(v3, a2);
  sub_100002648(v3, a2);
  return sub_100216734();
}

uint64_t sub_1000E9B60(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_100216744();

  return sub_100002648(v4, a2);
}

uint64_t sub_1000E9BD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100216744();
  v7 = sub_100002648(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t _s18TrustedPeersHelper28PerformATOPRVActionsResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

Swift::Int sub_1000E9D40(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_100217264();
  a1(0);
  sub_1000F9F28(a2, a3, a4);
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_1000E9DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB30, type metadata accessor for RemoveUnreadableCKServerDataResponse, &protocol conformance descriptor for RemoveUnreadableCKServerDataResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E9E68@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100216744();
  v7 = sub_100002648(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000E9F04(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990E8, type metadata accessor for RemoveUnreadableCKServerDataResponse, &protocol conformance descriptor for RemoveUnreadableCKServerDataResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E9F70(uint64_t a1, uint64_t a2)
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_1000E9FC8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002990E8, type metadata accessor for RemoveUnreadableCKServerDataResponse, &protocol conformance descriptor for RemoveUnreadableCKServerDataResponse);

  return sub_100216644();
}

Swift::Int sub_1000EA044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (sub_1002171A4()) && (a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72) || (sub_1002171A4()))
  {
    type metadata accessor for ViewKey(0);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_100216954() & 1;
  }

  return 0;
}

uint64_t _s18TrustedPeersHelper35RemoveUnreadableCKServerDataRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4, v5);
  v46 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v47 = (&v45 - v9);
  v49 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v49, v10);
  v53 = &v45 - v11;
  v12 = type metadata accessor for Metrics(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v48 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = (&v45 - v18);
  v20 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v45 - v23;
  v50 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v25 = *(v50 + 24);
  v26 = *(v21 + 56);
  v54 = a1;
  sub_100019C6C(&a1[v25], v24, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(&a2[v25], &v24[v26], &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v24, v19, &qword_100297FE0, &unk_10021E7F0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1000F9228(v19, type metadata accessor for Metrics);
LABEL_6:
    v28 = &qword_10029CD78;
    v29 = &qword_100225CE8;
LABEL_7:
    v30 = v24;
LABEL_24:
    sub_1000114D4(v30, v28, v29);
    goto LABEL_25;
  }

  v31 = v48;
  sub_1000F89AC(&v24[v26], v48, type metadata accessor for Metrics);
  if ((*v19 != *v31 || v19[1] != v31[1]) && (sub_1002171A4() & 1) == 0 || (v19[2] != v31[2] || v19[3] != v31[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v31, type metadata accessor for Metrics);
    sub_1000F9228(v19, type metadata accessor for Metrics);
    v28 = &qword_100297FE0;
    v29 = &unk_10021E7F0;
    goto LABEL_7;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = sub_100216954();
  sub_1000F9228(v31, type metadata accessor for Metrics);
  sub_1000F9228(v19, type metadata accessor for Metrics);
  sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
  if ((v32 & 1) == 0)
  {
LABEL_25:
    v39 = 0;
    return v39 & 1;
  }

LABEL_15:
  v33 = *(v50 + 28);
  v34 = *(v49 + 48);
  v36 = v53;
  v35 = v54;
  sub_100019C6C(&v54[v33], v53, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(&a2[v33], v36 + v34, &unk_10029D6F0, &qword_100226B40);
  v37 = v52;
  v38 = *(v51 + 48);
  if (v38(v36, 1, v52) == 1)
  {
    if (v38(v36 + v34, 1, v37) == 1)
    {
      sub_1000114D4(v36, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v40 = v47;
  sub_100019C6C(v36, v47, &unk_10029D6F0, &qword_100226B40);
  if (v38(v36 + v34, 1, v37) == 1)
  {
    sub_1000F9228(v40, type metadata accessor for AccountInfo);
LABEL_22:
    v28 = &qword_10029CD70;
    v29 = &qword_100225CE0;
LABEL_23:
    v30 = v36;
    goto LABEL_24;
  }

  v42 = v36 + v34;
  v43 = v46;
  sub_1000F89AC(v42, v46, type metadata accessor for AccountInfo);
  if (*v40 != *v43)
  {
    sub_1000F9228(v43, type metadata accessor for AccountInfo);
    sub_1000F9228(v40, type metadata accessor for AccountInfo);
    v28 = &unk_10029D6F0;
    v29 = &qword_100226B40;
    goto LABEL_23;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v44 = sub_100216954();
  sub_1000F9228(v43, type metadata accessor for AccountInfo);
  sub_1000F9228(v40, type metadata accessor for AccountInfo);
  sub_1000114D4(v36, &unk_10029D6F0, &qword_100226B40);
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (*v35 != *a2)
  {
    goto LABEL_25;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v39 = sub_100216954();
  return v39 & 1;
}

uint64_t _s18TrustedPeersHelper33FetchRecoverableTLKSharesResponseV4ViewV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ViewKeysRecords(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &RecoverableTLKShares - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &RecoverableTLKShares - v11;
  v13 = sub_10001148C(&qword_100297E48, &unk_100225D40);
  __chkstk_darwin(v13, v14);
  v16 = &RecoverableTLKShares - v15;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = v8;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v17 = *(RecoverableTLKShares + 28);
  v18 = *(v13 + 48);
  sub_100019C6C(a1 + v17, v16, &qword_100297E40, &unk_10021E7D0);
  sub_100019C6C(a2 + v17, &v16[v18], &qword_100297E40, &unk_10021E7D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000114D4(v16, &qword_100297E40, &unk_10021E7D0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_100019C6C(v16, v12, &qword_100297E40, &unk_10021E7D0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1000F9228(v12, type metadata accessor for ViewKeysRecords);
LABEL_8:
    sub_1000114D4(v16, &qword_100297E48, &unk_100225D40);
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v25;
  sub_1000F89AC(&v16[v18], v25, type metadata accessor for ViewKeysRecords);
  v21 = _s18TrustedPeersHelper15ViewKeysRecordsV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_1000F9228(v20, type metadata accessor for ViewKeysRecords);
  sub_1000F9228(v12, type metadata accessor for ViewKeysRecords);
  sub_1000114D4(v16, &qword_100297E40, &unk_10021E7D0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((sub_10004E39C(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v22 = sub_100216954();
  return v22 & 1;
}

uint64_t _s18TrustedPeersHelper32FetchRecoverableTLKSharesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v52 = (&v49 - v10);
  v53 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v53, v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = (&v49 - v21);
  v23 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v23, v24);
  v26 = &v49 - v25;
  v27 = *a1;
  v28 = a1[1];
  v29 = *a2;
  v30 = a2[1];
  v56 = a2;
  if ((v27 != v29 || v28 != v30) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = v7;
  v51 = v13;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v31 = *(RecoverableTLKSharesRequest + 24);
  v32 = *(v23 + 48);
  sub_100019C6C(a1 + v31, v26, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v56 + v31, &v26[v32], &qword_100297FE0, &unk_10021E7F0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v32], 1, v14) == 1)
    {
      sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v26, v22, &qword_100297FE0, &unk_10021E7F0);
  if (v33(&v26[v32], 1, v14) == 1)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
LABEL_9:
    v34 = &qword_10029CD78;
    v35 = &qword_100225CE8;
LABEL_10:
    v36 = v26;
LABEL_26:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_27;
  }

  sub_1000F89AC(&v26[v32], v18, type metadata accessor for Metrics);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_1002171A4() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v18, type metadata accessor for Metrics);
    sub_1000F9228(v22, type metadata accessor for Metrics);
    v34 = &qword_100297FE0;
    v35 = &unk_10021E7F0;
    goto LABEL_10;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v37 = sub_100216954();
  sub_1000F9228(v18, type metadata accessor for Metrics);
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v38 = v51;
  v39 = *(RecoverableTLKSharesRequest + 28);
  v40 = *(v53 + 48);
  sub_100019C6C(a1 + v39, v51, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v56 + v39, v38 + v40, &unk_10029D6F0, &qword_100226B40);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v38, 1, v55) != 1)
  {
    v44 = v52;
    sub_100019C6C(v38, v52, &unk_10029D6F0, &qword_100226B40);
    if (v42(v38 + v40, 1, v41) == 1)
    {
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      goto LABEL_24;
    }

    v46 = v38 + v40;
    v47 = v49;
    sub_1000F89AC(v46, v49, type metadata accessor for AccountInfo);
    if (*v44 != *v47)
    {
      sub_1000F9228(v47, type metadata accessor for AccountInfo);
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      v34 = &unk_10029D6F0;
      v35 = &qword_100226B40;
      goto LABEL_25;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v48 = sub_100216954();
    sub_1000F9228(v47, type metadata accessor for AccountInfo);
    sub_1000F9228(v44, type metadata accessor for AccountInfo);
    sub_1000114D4(v38, &unk_10029D6F0, &qword_100226B40);
    if (v48)
    {
      goto LABEL_21;
    }

LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (v42(v38 + v40, 1, v41) != 1)
  {
LABEL_24:
    v34 = &qword_10029CD70;
    v35 = &qword_100225CE0;
LABEL_25:
    v36 = v38;
    goto LABEL_26;
  }

  sub_1000114D4(v38, &unk_10029D6F0, &qword_100226B40);
LABEL_21:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = sub_100216954();
  return v43 & 1;
}

uint64_t _s18TrustedPeersHelper27PerformATOPRVActionsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4, v5);
  v44 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v45 = (&v44 - v9);
  v48 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v48, v10);
  v51 = &v44 - v11;
  v12 = type metadata accessor for Metrics(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v46 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = (&v44 - v18);
  v20 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v44 - v23;
  v47 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v25 = *(v47 + 20);
  v26 = *(v21 + 56);
  v52 = a1;
  sub_100019C6C(a1 + v25, v24, &qword_100297FE0, &unk_10021E7F0);
  v53 = a2;
  sub_100019C6C(a2 + v25, &v24[v26], &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v24, v19, &qword_100297FE0, &unk_10021E7F0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1000F9228(v19, type metadata accessor for Metrics);
LABEL_6:
    v28 = &qword_10029CD78;
    v29 = &qword_100225CE8;
LABEL_7:
    v30 = v24;
LABEL_23:
    sub_1000114D4(v30, v28, v29);
    goto LABEL_24;
  }

  v31 = v46;
  sub_1000F89AC(&v24[v26], v46, type metadata accessor for Metrics);
  if ((*v19 != *v31 || v19[1] != v31[1]) && (sub_1002171A4() & 1) == 0 || (v19[2] != v31[2] || v19[3] != v31[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v31, type metadata accessor for Metrics);
    sub_1000F9228(v19, type metadata accessor for Metrics);
    v28 = &qword_100297FE0;
    v29 = &unk_10021E7F0;
    goto LABEL_7;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = sub_100216954();
  sub_1000F9228(v31, type metadata accessor for Metrics);
  sub_1000F9228(v19, type metadata accessor for Metrics);
  sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v33 = *(v47 + 24);
  v34 = *(v48 + 48);
  v35 = v51;
  sub_100019C6C(v52 + v33, v51, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v53 + v33, v35 + v34, &unk_10029D6F0, &qword_100226B40);
  v36 = v50;
  v37 = *(v49 + 48);
  if (v37(v35, 1, v50) != 1)
  {
    v39 = v45;
    sub_100019C6C(v35, v45, &unk_10029D6F0, &qword_100226B40);
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_1000F9228(v39, type metadata accessor for AccountInfo);
      goto LABEL_21;
    }

    v41 = v35 + v34;
    v42 = v44;
    sub_1000F89AC(v41, v44, type metadata accessor for AccountInfo);
    if (*v39 != *v42)
    {
      sub_1000F9228(v42, type metadata accessor for AccountInfo);
      sub_1000F9228(v39, type metadata accessor for AccountInfo);
      v28 = &unk_10029D6F0;
      v29 = &qword_100226B40;
      goto LABEL_22;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v43 = sub_100216954();
    sub_1000F9228(v42, type metadata accessor for AccountInfo);
    sub_1000F9228(v39, type metadata accessor for AccountInfo);
    sub_1000114D4(v35, &unk_10029D6F0, &qword_100226B40);
    if (v43)
    {
      goto LABEL_18;
    }

LABEL_24:
    v38 = 0;
    return v38 & 1;
  }

  if (v37(v35 + v34, 1, v36) != 1)
  {
LABEL_21:
    v28 = &qword_10029CD70;
    v29 = &qword_100225CE0;
LABEL_22:
    v30 = v35;
    goto LABEL_23;
  }

  sub_1000114D4(v35, &unk_10029D6F0, &qword_100226B40);
LABEL_18:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v38 = sub_100216954();
  return v38 & 1;
}

uint64_t _s18TrustedPeersHelper26FetchViableBottlesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000503CC(*a1, *a2) & 1) == 0 || (sub_1000503CC(a1[1], a2[1]) & 1) == 0 || (sub_10005063C(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for FetchViableBottlesResponse(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper25GetSupportAppInfoResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_100050690(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1002171A4() & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for GetSupportAppInfoResponse(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper25FetchViableBottlesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v51 = (&v48 - v10);
  v52 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v52, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = (&v48 - v21);
  v23 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v23, v24);
  v26 = &v48 - v25;
  v27 = *a1;
  v28 = *a2;
  if (*(a1 + 8))
  {
    v27 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v28)
    {
      if (v27 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v27)
    {
      goto LABEL_33;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_33;
  }

  v48 = v7;
  v50 = v13;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v55 = a2;
  v49 = ViableBottlesRequest;
  v30 = *(ViableBottlesRequest + 24);
  v31 = *(v23 + 48);
  sub_100019C6C(a1 + v30, v26, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v55 + v30, &v26[v31], &qword_100297FE0, &unk_10021E7F0);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v31], 1, v14) == 1)
    {
      sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  sub_100019C6C(v26, v22, &qword_100297FE0, &unk_10021E7F0);
  if (v32(&v26[v31], 1, v14) == 1)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
LABEL_15:
    v33 = &qword_10029CD78;
    v34 = &qword_100225CE8;
LABEL_16:
    v35 = v26;
LABEL_32:
    sub_1000114D4(v35, v33, v34);
    goto LABEL_33;
  }

  sub_1000F89AC(&v26[v31], v18, type metadata accessor for Metrics);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_1002171A4() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v18, type metadata accessor for Metrics);
    sub_1000F9228(v22, type metadata accessor for Metrics);
    v33 = &qword_100297FE0;
    v34 = &unk_10021E7F0;
    goto LABEL_16;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v36 = sub_100216954();
  sub_1000F9228(v18, type metadata accessor for Metrics);
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
  if ((v36 & 1) == 0)
  {
LABEL_33:
    v42 = 0;
    return v42 & 1;
  }

LABEL_24:
  v37 = v50;
  v38 = *(v49 + 28);
  v39 = *(v52 + 48);
  sub_100019C6C(a1 + v38, v50, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v55 + v38, v37 + v39, &unk_10029D6F0, &qword_100226B40);
  v40 = v54;
  v41 = *(v53 + 48);
  if (v41(v37, 1, v54) == 1)
  {
    if (v41(v37 + v39, 1, v40) == 1)
    {
      sub_1000114D4(v37, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v43 = v51;
  sub_100019C6C(v37, v51, &unk_10029D6F0, &qword_100226B40);
  if (v41(v37 + v39, 1, v40) == 1)
  {
    sub_1000F9228(v43, type metadata accessor for AccountInfo);
LABEL_30:
    v33 = &qword_10029CD70;
    v34 = &qword_100225CE0;
LABEL_31:
    v35 = v37;
    goto LABEL_32;
  }

  v45 = v37 + v39;
  v46 = v48;
  sub_1000F89AC(v45, v48, type metadata accessor for AccountInfo);
  if (*v43 != *v46)
  {
    sub_1000F9228(v46, type metadata accessor for AccountInfo);
    sub_1000F9228(v43, type metadata accessor for AccountInfo);
    v33 = &unk_10029D6F0;
    v34 = &qword_100226B40;
    goto LABEL_31;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v47 = sub_100216954();
  sub_1000F9228(v46, type metadata accessor for AccountInfo);
  sub_1000F9228(v43, type metadata accessor for AccountInfo);
  sub_1000114D4(v37, &unk_10029D6F0, &qword_100226B40);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v42 = sub_100216954();
  return v42 & 1;
}

uint64_t _s18TrustedPeersHelper24RemoveRecoveryKeyRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v88 = (&v83 - v10);
  v90 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v90, v11);
  v13 = &v83 - v12;
  v98 = type metadata accessor for Metrics(0);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98, v14);
  v89 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v93 = (&v83 - v18);
  v95 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v95, v19);
  v97 = &v83 - v20;
  v21 = type metadata accessor for SignedPeerDynamicInfo(0);
  v101 = *(v21 - 8);
  v102 = v21;
  __chkstk_darwin(v21, v22);
  v94 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v24 - 8, v25);
  v99 = &v83 - v26;
  v100 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  __chkstk_darwin(v100, v27);
  v103 = &v83 - v28;
  v29 = type metadata accessor for SignedPeerStableInfo(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v34 - 8, v35);
  v37 = &v83 - v36;
  v38 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  __chkstk_darwin(v38, v39);
  v41 = &v83 - v40;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v84 = v7;
  v85 = v13;
  v42 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v43 = *(v42 + 28);
  v44 = *(v38 + 48);
  v86 = v42;
  v87 = a1;
  sub_100019C6C(a1 + v43, v41, &qword_1002985A8, &unk_100226650);
  v45 = a2 + v43;
  v46 = a2;
  sub_100019C6C(v45, &v41[v44], &qword_1002985A8, &unk_100226650);
  v47 = *(v30 + 48);
  if (v47(v41, 1, v29) == 1)
  {
    if (v47(&v41[v44], 1, v29) == 1)
    {
      sub_1000114D4(v41, &qword_1002985A8, &unk_100226650);
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  sub_100019C6C(v41, v37, &qword_1002985A8, &unk_100226650);
  if (v47(&v41[v44], 1, v29) == 1)
  {
    sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
LABEL_17:
    v63 = &qword_10029CDC8;
    v64 = &qword_100225D58;
LABEL_23:
    v66 = v41;
LABEL_24:
    sub_1000114D4(v66, v63, v64);
    goto LABEL_25;
  }

  sub_1000F89AC(&v41[v44], v33, type metadata accessor for SignedPeerStableInfo);
  if (!sub_100052F18(*v37, *(v37 + 1), *v33, *(v33 + 1)) || !sub_100052F18(*(v37 + 2), *(v37 + 3), *(v33 + 2), *(v33 + 3)))
  {
    sub_1000F9228(v33, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
    v63 = &qword_1002985A8;
    v64 = &unk_100226650;
    goto LABEL_23;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v65 = sub_100216954();
  sub_1000F9228(v33, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v41, &qword_1002985A8, &unk_100226650);
  if ((v65 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v49 = v86;
  v48 = v87;
  v50 = *(v86 + 32);
  v51 = *(v100 + 48);
  v52 = v103;
  sub_100019C6C(v87 + v50, v103, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v46 + v50, v52 + v51, &unk_10029D760, &qword_10021E810);
  v53 = v102;
  v54 = *(v101 + 48);
  if (v54(v52, 1, v102) == 1)
  {
    if (v54(v52 + v51, 1, v53) == 1)
    {
      sub_1000114D4(v52, &unk_10029D760, &qword_10021E810);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v69 = v99;
  sub_100019C6C(v52, v99, &unk_10029D760, &qword_10021E810);
  if (v54(v52 + v51, 1, v53) == 1)
  {
    sub_1000F9228(v69, type metadata accessor for SignedPeerDynamicInfo);
LABEL_29:
    v63 = &qword_10029CDC0;
    v64 = &qword_100225D50;
    v66 = v52;
    goto LABEL_24;
  }

  v70 = v94;
  sub_1000F89AC(v52 + v51, v94, type metadata accessor for SignedPeerDynamicInfo);
  if (!sub_100052F18(*v69, *(v69 + 8), *v70, *(v70 + 8)) || !sub_100052F18(*(v69 + 16), *(v69 + 24), *(v70 + 16), *(v70 + 24)))
  {
    sub_1000F9228(v70, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v69, type metadata accessor for SignedPeerDynamicInfo);
    v63 = &unk_10029D760;
    v64 = &qword_10021E810;
    v66 = v52;
    goto LABEL_24;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v71 = sub_100216954();
  sub_1000F9228(v70, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v69, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v52, &unk_10029D760, &qword_10021E810);
  if ((v71 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v55 = *(v49 + 36);
  v56 = *(v95 + 48);
  v57 = v97;
  sub_100019C6C(v48 + v55, v97, &qword_100297FE0, &unk_10021E7F0);
  v58 = v46 + v55;
  v59 = v57;
  sub_100019C6C(v58, v57 + v56, &qword_100297FE0, &unk_10021E7F0);
  v60 = *(v96 + 48);
  v61 = v57;
  v62 = v98;
  if (v60(v61, 1, v98) == 1)
  {
    if (v60(v59 + v56, 1, v62) == 1)
    {
      sub_1000114D4(v59, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  v72 = v93;
  sub_100019C6C(v59, v93, &qword_100297FE0, &unk_10021E7F0);
  if (v60(v59 + v56, 1, v62) == 1)
  {
    sub_1000F9228(v72, type metadata accessor for Metrics);
LABEL_37:
    v63 = &qword_10029CD78;
    v64 = &qword_100225CE8;
    v66 = v59;
    goto LABEL_24;
  }

  v73 = v89;
  sub_1000F89AC(v59 + v56, v89, type metadata accessor for Metrics);
  if ((*v72 != *v73 || v72[1] != v73[1]) && (sub_1002171A4() & 1) == 0 || (v72[2] != v73[2] || v72[3] != v73[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v73, type metadata accessor for Metrics);
    sub_1000F9228(v72, type metadata accessor for Metrics);
    v63 = &qword_100297FE0;
    v64 = &unk_10021E7F0;
    v66 = v59;
    goto LABEL_24;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v74 = sub_100216954();
  sub_1000F9228(v73, type metadata accessor for Metrics);
  sub_1000F9228(v72, type metadata accessor for Metrics);
  sub_1000114D4(v59, &qword_100297FE0, &unk_10021E7F0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_45:
  v75 = *(v49 + 40);
  v76 = *(v90 + 48);
  v77 = v85;
  sub_100019C6C(v48 + v75, v85, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v46 + v75, v77 + v76, &unk_10029D6F0, &qword_100226B40);
  v78 = v92;
  v79 = *(v91 + 48);
  if (v79(v77, 1, v92) == 1)
  {
    if (v79(v77 + v76, 1, v78) == 1)
    {
      sub_1000114D4(v77, &unk_10029D6F0, &qword_100226B40);
LABEL_48:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v67 = sub_100216954();
      return v67 & 1;
    }

    goto LABEL_51;
  }

  v80 = v88;
  sub_100019C6C(v77, v88, &unk_10029D6F0, &qword_100226B40);
  if (v79(v77 + v76, 1, v78) == 1)
  {
    sub_1000F9228(v80, type metadata accessor for AccountInfo);
LABEL_51:
    v63 = &qword_10029CD70;
    v64 = &qword_100225CE0;
    v66 = v77;
    goto LABEL_24;
  }

  v81 = v84;
  sub_1000F89AC(v77 + v76, v84, type metadata accessor for AccountInfo);
  if (*v80 != *v81)
  {
    sub_1000F9228(v81, type metadata accessor for AccountInfo);
    sub_1000F9228(v80, type metadata accessor for AccountInfo);
    v63 = &unk_10029D6F0;
    v64 = &qword_100226B40;
    v66 = v77;
    goto LABEL_24;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v82 = sub_100216954();
  sub_1000F9228(v81, type metadata accessor for AccountInfo);
  sub_1000F9228(v80, type metadata accessor for AccountInfo);
  sub_1000114D4(v77, &unk_10029D6F0, &qword_100226B40);
  if (v82)
  {
    goto LABEL_48;
  }

LABEL_25:
  v67 = 0;
  return v67 & 1;
}

uint64_t _s18TrustedPeersHelper24GetSupportAppInfoRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4, v5);
  v46 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v47 = (&v45 - v9);
  v49 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v49, v10);
  v53 = &v45 - v11;
  v12 = type metadata accessor for Metrics(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v48 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = (&v45 - v18);
  v20 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v45 - v23;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v25 = *(SupportAppInfoRequest + 24);
  v26 = *(v21 + 56);
  v54 = a1;
  sub_100019C6C(a1 + v25, v24, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v25, &v24[v26], &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v24, v19, &qword_100297FE0, &unk_10021E7F0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1000F9228(v19, type metadata accessor for Metrics);
LABEL_6:
    v28 = &qword_10029CD78;
    v29 = &qword_100225CE8;
LABEL_7:
    v30 = v24;
LABEL_24:
    sub_1000114D4(v30, v28, v29);
    goto LABEL_25;
  }

  v31 = v48;
  sub_1000F89AC(&v24[v26], v48, type metadata accessor for Metrics);
  if ((*v19 != *v31 || v19[1] != v31[1]) && (sub_1002171A4() & 1) == 0 || (v19[2] != v31[2] || v19[3] != v31[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v31, type metadata accessor for Metrics);
    sub_1000F9228(v19, type metadata accessor for Metrics);
    v28 = &qword_100297FE0;
    v29 = &unk_10021E7F0;
    goto LABEL_7;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = sub_100216954();
  sub_1000F9228(v31, type metadata accessor for Metrics);
  sub_1000F9228(v19, type metadata accessor for Metrics);
  sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
  if ((v32 & 1) == 0)
  {
LABEL_25:
    v39 = 0;
    return v39 & 1;
  }

LABEL_15:
  v33 = *(SupportAppInfoRequest + 28);
  v34 = *(v49 + 48);
  v36 = v53;
  v35 = v54;
  sub_100019C6C(v54 + v33, v53, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v33, v36 + v34, &unk_10029D6F0, &qword_100226B40);
  v37 = v52;
  v38 = *(v51 + 48);
  if (v38(v36, 1, v52) == 1)
  {
    if (v38(v36 + v34, 1, v37) == 1)
    {
      sub_1000114D4(v36, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v40 = v47;
  sub_100019C6C(v36, v47, &unk_10029D6F0, &qword_100226B40);
  if (v38(v36 + v34, 1, v37) == 1)
  {
    sub_1000F9228(v40, type metadata accessor for AccountInfo);
LABEL_22:
    v28 = &qword_10029CD70;
    v29 = &qword_100225CE0;
LABEL_23:
    v30 = v36;
    goto LABEL_24;
  }

  v42 = v36 + v34;
  v43 = v46;
  sub_1000F89AC(v42, v46, type metadata accessor for AccountInfo);
  if (*v40 != *v43)
  {
    sub_1000F9228(v43, type metadata accessor for AccountInfo);
    sub_1000F9228(v40, type metadata accessor for AccountInfo);
    v28 = &unk_10029D6F0;
    v29 = &qword_100226B40;
    goto LABEL_23;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v44 = sub_100216954();
  sub_1000F9228(v43, type metadata accessor for AccountInfo);
  sub_1000F9228(v40, type metadata accessor for AccountInfo);
  sub_1000114D4(v36, &unk_10029D6F0, &qword_100226B40);
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (*v35 != *a2)
  {
    goto LABEL_25;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v39 = sub_100216954();
  return v39 & 1;
}

uint64_t sub_1000EDD34(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000EDE34(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for AccountInfo(0);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8, v9);
  v51 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v11 - 8, v12);
  v52 = (&v48 - v13);
  v53 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v53, v14);
  v56 = &v48 - v15;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v21 - 8, v22);
  v24 = (&v48 - v23);
  v25 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v25, v26);
  v28 = &v48 - v27;
  if ((a3(*a1, *a2) & 1) == 0)
  {
    goto LABEL_25;
  }

  v29 = a4(0);
  v57 = a2;
  v49 = v29;
  v50 = a1;
  v30 = *(v29 + 24);
  v31 = *(v25 + 48);
  sub_100019C6C(a1 + v30, v28, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v57 + v30, &v28[v31], &qword_100297FE0, &unk_10021E7F0);
  v32 = *(v17 + 48);
  if (v32(v28, 1, v16) == 1)
  {
    if (v32(&v28[v31], 1, v16) == 1)
    {
      sub_1000114D4(v28, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  sub_100019C6C(v28, v24, &qword_100297FE0, &unk_10021E7F0);
  if (v32(&v28[v31], 1, v16) == 1)
  {
    sub_1000F9228(v24, type metadata accessor for Metrics);
LABEL_7:
    v33 = &qword_10029CD78;
    v34 = &qword_100225CE8;
LABEL_8:
    v35 = v28;
LABEL_24:
    sub_1000114D4(v35, v33, v34);
    goto LABEL_25;
  }

  sub_1000F89AC(&v28[v31], v20, type metadata accessor for Metrics);
  if ((*v24 != *v20 || v24[1] != v20[1]) && (sub_1002171A4() & 1) == 0 || (v24[2] != v20[2] || v24[3] != v20[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v20, type metadata accessor for Metrics);
    sub_1000F9228(v24, type metadata accessor for Metrics);
    v33 = &qword_100297FE0;
    v34 = &unk_10021E7F0;
    goto LABEL_8;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v36 = sub_100216954();
  sub_1000F9228(v20, type metadata accessor for Metrics);
  sub_1000F9228(v24, type metadata accessor for Metrics);
  sub_1000114D4(v28, &qword_100297FE0, &unk_10021E7F0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v37 = *(v49 + 28);
  v38 = *(v53 + 48);
  v39 = v56;
  sub_100019C6C(v50 + v37, v56, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v57 + v37, v39 + v38, &unk_10029D6F0, &qword_100226B40);
  v40 = v55;
  v41 = *(v54 + 48);
  if (v41(v39, 1, v55) != 1)
  {
    v43 = v52;
    sub_100019C6C(v39, v52, &unk_10029D6F0, &qword_100226B40);
    if (v41(v39 + v38, 1, v40) == 1)
    {
      sub_1000F9228(v43, type metadata accessor for AccountInfo);
      goto LABEL_22;
    }

    v45 = v39 + v38;
    v46 = v51;
    sub_1000F89AC(v45, v51, type metadata accessor for AccountInfo);
    if (*v43 != *v46)
    {
      sub_1000F9228(v46, type metadata accessor for AccountInfo);
      sub_1000F9228(v43, type metadata accessor for AccountInfo);
      v33 = &unk_10029D6F0;
      v34 = &qword_100226B40;
      goto LABEL_23;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v47 = sub_100216954();
    sub_1000F9228(v46, type metadata accessor for AccountInfo);
    sub_1000F9228(v43, type metadata accessor for AccountInfo);
    sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
    if (v47)
    {
      goto LABEL_19;
    }

LABEL_25:
    v42 = 0;
    return v42 & 1;
  }

  if (v41(v39 + v38, 1, v40) != 1)
  {
LABEL_22:
    v33 = &qword_10029CD70;
    v34 = &qword_100225CE0;
LABEL_23:
    v35 = v39;
    goto LABEL_24;
  }

  sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
LABEL_19:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v42 = sub_100216954();
  return v42 & 1;
}

uint64_t _s18TrustedPeersHelper22PolicyDocumentMapEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyDocumentKey(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v29 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  __chkstk_darwin(v8 - 8, v9);
  v11 = (&v27 - v10);
  v12 = sub_10001148C(&qword_100297E50, &qword_10021DA40);
  v13 = v12 - 8;
  __chkstk_darwin(v12, v14);
  v16 = &v27 - v15;
  v28 = type metadata accessor for PolicyDocumentMapEntry(0);
  v17 = *(v28 + 24);
  v18 = *(v13 + 56);
  v30 = a1;
  sub_100019C6C(a1 + v17, v16, &unk_10029D820, &unk_10021E840);
  sub_100019C6C(a2 + v17, &v16[v18], &unk_10029D820, &unk_10021E840);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000114D4(v16, &unk_10029D820, &unk_10021E840);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100019C6C(v16, v11, &unk_10029D820, &unk_10021E840);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1000F9228(v11, type metadata accessor for PolicyDocumentKey);
LABEL_8:
    v21 = &qword_100297E50;
    v22 = &qword_10021DA40;
LABEL_18:
    sub_1000114D4(v16, v21, v22);
    goto LABEL_19;
  }

  v23 = v29;
  sub_1000F89AC(&v16[v18], v29, type metadata accessor for PolicyDocumentKey);
  if (*v11 != *v23 || (v11[1] == v23[1] ? (v24 = v11[2] == v23[2]) : (v24 = 0), !v24 && (sub_1002171A4() & 1) == 0))
  {
    sub_1000F9228(v23, type metadata accessor for PolicyDocumentKey);
    sub_1000F9228(v11, type metadata accessor for PolicyDocumentKey);
    v21 = &unk_10029D820;
    v22 = &unk_10021E840;
    goto LABEL_18;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v25 = sub_100216954();
  sub_1000F9228(v23, type metadata accessor for PolicyDocumentKey);
  sub_1000F9228(v11, type metadata accessor for PolicyDocumentKey);
  sub_1000114D4(v16, &unk_10029D820, &unk_10021E840);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!sub_100052F18(*v30, *(v30 + 8), *a2, *(a2 + 8)))
  {
LABEL_19:
    v20 = 0;
    return v20 & 1;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_100216954();
  return v20 & 1;
}

uint64_t _s18TrustedPeersHelper8TLKShareV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1002171A4() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3] || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1002171A4() & 1) == 0 || a1[6] != a2[6] || (a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1002171A4() & 1) == 0 || (a1[9] != a2[9] || a1[10] != a2[10]) && (sub_1002171A4() & 1) == 0 || (a1[11] != a2[11] || a1[12] != a2[12]) && (sub_1002171A4() & 1) == 0 || (a1[13] != a2[13] || a1[14] != a2[14]) && (sub_1002171A4() & 1) == 0 || a1[15] != a2[15] || (a1[16] != a2[16] || a1[17] != a2[17]) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TLKShare(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper22GetRepairActionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4, v5);
  v52 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v53 = (&v48 - v9);
  v10 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v10, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = (&v48 - v21);
  v23 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v23, v24);
  v26 = &v48 - v25;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_100051664(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_32;
  }

  v51 = v13;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v27 = *(RepairActionRequest + 48);
  v28 = *(v23 + 48);
  sub_100019C6C(a1 + v27, v26, &qword_100297FE0, &unk_10021E7F0);
  v29 = a2 + v27;
  v30 = v28;
  sub_100019C6C(v29, &v26[v28], &qword_100297FE0, &unk_10021E7F0);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) == 1)
  {
    v32 = v31(&v26[v30], 1, v14);
    v33 = v51;
    if (v32 == 1)
    {
      sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  sub_100019C6C(v26, v22, &qword_100297FE0, &unk_10021E7F0);
  v49 = v30;
  v34 = v31(&v26[v30], 1, v14);
  v33 = v51;
  if (v34 == 1)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
LABEL_11:
    v35 = &qword_10029CD78;
    v36 = &qword_100225CE8;
LABEL_12:
    v37 = v26;
LABEL_31:
    sub_1000114D4(v37, v35, v36);
    goto LABEL_32;
  }

  sub_1000F89AC(&v26[v49], v18, type metadata accessor for Metrics);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_1002171A4() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v18, type metadata accessor for Metrics);
    sub_1000F9228(v22, type metadata accessor for Metrics);
    v35 = &qword_100297FE0;
    v36 = &unk_10021E7F0;
    goto LABEL_12;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v38 = sub_100216954();
  sub_1000F9228(v18, type metadata accessor for Metrics);
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v39 = *(RepairActionRequest + 52);
  v40 = *(v10 + 48);
  sub_100019C6C(a1 + v39, v33, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v39, v33 + v40, &unk_10029D6F0, &qword_100226B40);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v33, 1, v55) != 1)
  {
    v44 = v53;
    sub_100019C6C(v33, v53, &unk_10029D6F0, &qword_100226B40);
    if (v42(v33 + v40, 1, v41) == 1)
    {
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      goto LABEL_29;
    }

    v46 = v52;
    sub_1000F89AC(v33 + v40, v52, type metadata accessor for AccountInfo);
    if (*v44 != *v46)
    {
      sub_1000F9228(v46, type metadata accessor for AccountInfo);
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      v35 = &unk_10029D6F0;
      v36 = &qword_100226B40;
      goto LABEL_30;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v47 = sub_100216954();
    sub_1000F9228(v46, type metadata accessor for AccountInfo);
    sub_1000F9228(v44, type metadata accessor for AccountInfo);
    sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_32:
    v43 = 0;
    return v43 & 1;
  }

  if (v42(v33 + v40, 1, v41) != 1)
  {
LABEL_29:
    v35 = &qword_10029CD70;
    v36 = &qword_100225CE0;
LABEL_30:
    v37 = v33;
    goto LABEL_31;
  }

  sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
LABEL_23:
  if (*(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34) || *(a1 + 35) != *(a2 + 35))
  {
    goto LABEL_32;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = sub_100216954();
  return v43 & 1;
}

uint64_t _s18TrustedPeersHelper38EscrowProxyFederationMoveRecordRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Metrics(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = (&v28 - v11);
  v13 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v13, v14);
  v16 = &v28 - v15;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = v8;
  v29 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v17 = *(v29 + 32);
  v18 = *(v13 + 48);
  sub_100019C6C(a1 + v17, v16, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v17, &v16[v18], &qword_100297FE0, &unk_10021E7F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000114D4(v16, &qword_100297FE0, &unk_10021E7F0);
LABEL_27:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v22 = sub_100216954();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_100019C6C(v16, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1000F9228(v12, type metadata accessor for Metrics);
LABEL_14:
    v20 = &qword_10029CD78;
    v21 = &qword_100225CE8;
LABEL_15:
    sub_1000114D4(v16, v20, v21);
    goto LABEL_16;
  }

  v24 = &v16[v18];
  v25 = v28;
  sub_1000F89AC(v24, v28, type metadata accessor for Metrics);
  v26 = *v12 == *v25 && v12[1] == v25[1];
  if (!v26 && (sub_1002171A4() & 1) == 0 || (v12[2] != v25[2] || v12[3] != v25[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v25, type metadata accessor for Metrics);
    sub_1000F9228(v12, type metadata accessor for Metrics);
    v20 = &qword_100297FE0;
    v21 = &unk_10021E7F0;
    goto LABEL_15;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v27 = sub_100216954();
  sub_1000F9228(v25, type metadata accessor for Metrics);
  sub_1000F9228(v12, type metadata accessor for Metrics);
  sub_1000114D4(v16, &qword_100297FE0, &unk_10021E7F0);
  if (v27)
  {
    goto LABEL_27;
  }

LABEL_16:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s18TrustedPeersHelper22GetEscrowCheckResponseV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  __chkstk_darwin(v9 - 8, v10);
  v12 = (&v30 - v11);
  v13 = sub_10001148C(&qword_10029CDB8, &qword_100225D38);
  __chkstk_darwin(v13, v14);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v17 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v17)
    {
      goto LABEL_22;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_22;
  }

  v19 = type metadata accessor for GetEscrowCheckResponse(0);
  v20 = *(v19 + 40);
  v21 = *(v13 + 48);
  v30 = v19;
  v31 = a1;
  sub_100019C6C(a1 + v20, v16, &unk_10029D720, &qword_10021E868);
  sub_100019C6C(a2 + v20, &v16[v21], &unk_10029D720, &qword_10021E868);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) != 1)
  {
    sub_100019C6C(v16, v12, &unk_10029D720, &qword_10021E868);
    if (v22(&v16[v21], 1, v4) != 1)
    {
      sub_1000F89AC(&v16[v21], v8, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      v23 = _s18TrustedPeersHelper38EscrowProxyFederationMoveRecordRequestV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_1000F9228(v8, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      sub_1000F9228(v12, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      sub_1000114D4(v16, &unk_10029D720, &qword_10021E868);
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    sub_1000F9228(v12, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
LABEL_15:
    sub_1000114D4(v16, &qword_10029CDB8, &qword_100225D38);
    goto LABEL_22;
  }

  if (v22(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1000114D4(v16, &unk_10029D720, &qword_10021E868);
LABEL_21:
  if (*(v31 + 9) == *(a2 + 9))
  {
    v26 = v31[2];
    v27 = *(a2 + 16);
    if (*(a2 + 24) == 1)
    {
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          if (v26 != 3)
          {
            goto LABEL_22;
          }
        }

        else if (v27 == 4)
        {
          if (v26 != 4)
          {
            goto LABEL_22;
          }
        }

        else if (v26 != 5)
        {
          goto LABEL_22;
        }
      }

      else if (v27)
      {
        if (v27 == 1)
        {
          if (v26 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v26 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v26)
      {
        goto LABEL_22;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_22;
    }

    v28 = v31[4];
    v29 = *(a2 + 32);
    if (*(a2 + 40) == 1)
    {
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          if (v28 != 2)
          {
            goto LABEL_22;
          }
        }

        else if (v28 != 3)
        {
          goto LABEL_22;
        }
      }

      else if (v29)
      {
        if (v28 != 1)
        {
          goto LABEL_22;
        }
      }

      else if (v28)
      {
        goto LABEL_22;
      }
    }

    else if (v28 != v29)
    {
      goto LABEL_22;
    }

    if (*(v31 + 41) == *(a2 + 41))
    {
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = sub_100216954();
      return v24 & 1;
    }
  }

LABEL_22:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s18TrustedPeersHelper21SetRecoveryKeyRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v69 = (&v65 - v10);
  v71 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v71, v11);
  v13 = &v65 - v12;
  v78 = type metadata accessor for Metrics(0);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78, v14);
  v70 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v74 = (&v65 - v18);
  v75 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v75, v19);
  v77 = &v65 - v20;
  v21 = type metadata accessor for SignedPeerStableInfo(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v26 - 8, v27);
  v29 = &v65 - v28;
  v30 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  __chkstk_darwin(v30, v31);
  v33 = &v65 - v32;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0 || !sub_100052F18(a1[4], a1[5], a2[4], a2[5]) || !sub_100052F18(a1[6], a1[7], a2[6], a2[7]))
  {
    goto LABEL_28;
  }

  v68 = v7;
  v66 = v13;
  v67 = type metadata accessor for SetRecoveryKeyRequest(0);
  v34 = *(v67 + 44);
  v35 = *(v30 + 48);
  sub_100019C6C(a1 + v34, v33, &qword_1002985A8, &unk_100226650);
  v36 = a2 + v34;
  v37 = v35;
  sub_100019C6C(v36, &v33[v35], &qword_1002985A8, &unk_100226650);
  v38 = *(v22 + 48);
  if (v38(v33, 1, v21) == 1)
  {
    if (v38(&v33[v37], 1, v21) == 1)
    {
      sub_1000114D4(v33, &qword_1002985A8, &unk_100226650);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  sub_100019C6C(v33, v29, &qword_1002985A8, &unk_100226650);
  if (v38(&v33[v37], 1, v21) == 1)
  {
    sub_1000F9228(v29, type metadata accessor for SignedPeerStableInfo);
LABEL_17:
    v46 = &qword_10029CDC8;
    v47 = &qword_100225D58;
LABEL_26:
    v51 = v33;
    goto LABEL_27;
  }

  sub_1000F89AC(&v33[v37], v25, type metadata accessor for SignedPeerStableInfo);
  if (!sub_100052F18(*v29, *(v29 + 1), *v25, *(v25 + 1)) || !sub_100052F18(*(v29 + 2), *(v29 + 3), *(v25 + 2), *(v25 + 3)))
  {
    sub_1000F9228(v25, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v29, type metadata accessor for SignedPeerStableInfo);
    v46 = &qword_1002985A8;
    v47 = &unk_100226650;
    goto LABEL_26;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v48 = sub_100216954();
  sub_1000F9228(v25, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v29, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v33, &qword_1002985A8, &unk_100226650);
  if ((v48 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((sub_1000516F4(a1[8], a2[8]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v39 = v67;
  v40 = *(v67 + 48);
  v41 = *(v75 + 48);
  v33 = v77;
  sub_100019C6C(a1 + v40, v77, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v40, &v33[v41], &qword_100297FE0, &unk_10021E7F0);
  v42 = *(v76 + 48);
  v43 = v78;
  if (v42(v33, 1, v78) == 1)
  {
    v44 = v42(&v33[v41], 1, v43);
    v45 = v68;
    if (v44 == 1)
    {
      sub_1000114D4(v33, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v49 = v74;
  sub_100019C6C(v33, v74, &qword_100297FE0, &unk_10021E7F0);
  v50 = v42(&v33[v41], 1, v43);
  v45 = v68;
  if (v50 == 1)
  {
    sub_1000F9228(v49, type metadata accessor for Metrics);
LABEL_25:
    v46 = &qword_10029CD78;
    v47 = &qword_100225CE8;
    goto LABEL_26;
  }

  v54 = v70;
  sub_1000F89AC(&v33[v41], v70, type metadata accessor for Metrics);
  if ((*v49 != *v54 || v49[1] != v54[1]) && (sub_1002171A4() & 1) == 0 || (v49[2] != v54[2] || v49[3] != v54[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v54, type metadata accessor for Metrics);
    sub_1000F9228(v49, type metadata accessor for Metrics);
    v46 = &qword_100297FE0;
    v47 = &unk_10021E7F0;
    goto LABEL_26;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v55 = sub_100216954();
  sub_1000F9228(v54, type metadata accessor for Metrics);
  sub_1000F9228(v49, type metadata accessor for Metrics);
  sub_1000114D4(v33, &qword_100297FE0, &unk_10021E7F0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_37:
  v56 = *(v39 + 52);
  v57 = *(v71 + 48);
  v58 = v66;
  sub_100019C6C(a1 + v56, v66, &unk_10029D6F0, &qword_100226B40);
  v59 = a2 + v56;
  v60 = v58;
  sub_100019C6C(v59, v58 + v57, &unk_10029D6F0, &qword_100226B40);
  v61 = v73;
  v62 = *(v72 + 48);
  if (v62(v58, 1, v73) != 1)
  {
    v63 = v69;
    sub_100019C6C(v60, v69, &unk_10029D6F0, &qword_100226B40);
    if (v62(v60 + v57, 1, v61) == 1)
    {
      sub_1000F9228(v63, type metadata accessor for AccountInfo);
      goto LABEL_44;
    }

    sub_1000F89AC(v60 + v57, v45, type metadata accessor for AccountInfo);
    if (*v63 == *v45)
    {
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v64 = sub_100216954();
      sub_1000F9228(v45, type metadata accessor for AccountInfo);
      sub_1000F9228(v63, type metadata accessor for AccountInfo);
      sub_1000114D4(v60, &unk_10029D6F0, &qword_100226B40);
      if ((v64 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }

    sub_1000F9228(v45, type metadata accessor for AccountInfo);
    sub_1000F9228(v63, type metadata accessor for AccountInfo);
    v46 = &unk_10029D6F0;
    v47 = &qword_100226B40;
    v51 = v60;
LABEL_27:
    sub_1000114D4(v51, v46, v47);
    goto LABEL_28;
  }

  if (v62(v58 + v57, 1, v61) != 1)
  {
LABEL_44:
    v46 = &qword_10029CD70;
    v47 = &qword_100225CE0;
    v51 = v60;
    goto LABEL_27;
  }

  sub_1000114D4(v58, &unk_10029D6F0, &qword_100226B40);
LABEL_40:
  if (sub_100051748(a1[9], a2[9]))
  {
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v52 = sub_100216954();
    return v52 & 1;
  }

LABEL_28:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s18TrustedPeersHelper21GetEscrowCheckRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4, v5);
  v52 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v53 = (&v48 - v9);
  v10 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v10, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = (&v48 - v21);
  v23 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v23, v24);
  v26 = &v48 - v25;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || (sub_100051664(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v51 = v13;
  v50 = type metadata accessor for GetEscrowCheckRequest(0);
  v27 = *(v50 + 48);
  v28 = *(v23 + 48);
  sub_100019C6C(a1 + v27, v26, &qword_100297FE0, &unk_10021E7F0);
  v29 = a2 + v27;
  v30 = v28;
  sub_100019C6C(v29, &v26[v28], &qword_100297FE0, &unk_10021E7F0);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) == 1)
  {
    v32 = v31(&v26[v30], 1, v14);
    v33 = v51;
    if (v32 == 1)
    {
      sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  sub_100019C6C(v26, v22, &qword_100297FE0, &unk_10021E7F0);
  v49 = v30;
  v34 = v31(&v26[v30], 1, v14);
  v33 = v51;
  if (v34 == 1)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
LABEL_11:
    v35 = &qword_10029CD78;
    v36 = &qword_100225CE8;
LABEL_12:
    v37 = v26;
LABEL_31:
    sub_1000114D4(v37, v35, v36);
    goto LABEL_32;
  }

  sub_1000F89AC(&v26[v49], v18, type metadata accessor for Metrics);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_1002171A4() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v18, type metadata accessor for Metrics);
    sub_1000F9228(v22, type metadata accessor for Metrics);
    v35 = &qword_100297FE0;
    v36 = &unk_10021E7F0;
    goto LABEL_12;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v38 = sub_100216954();
  sub_1000F9228(v18, type metadata accessor for Metrics);
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v39 = *(v50 + 52);
  v40 = *(v10 + 48);
  sub_100019C6C(a1 + v39, v33, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v39, v33 + v40, &unk_10029D6F0, &qword_100226B40);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v33, 1, v55) != 1)
  {
    v44 = v53;
    sub_100019C6C(v33, v53, &unk_10029D6F0, &qword_100226B40);
    if (v42(v33 + v40, 1, v41) == 1)
    {
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      goto LABEL_29;
    }

    v46 = v52;
    sub_1000F89AC(v33 + v40, v52, type metadata accessor for AccountInfo);
    if (*v44 != *v46)
    {
      sub_1000F9228(v46, type metadata accessor for AccountInfo);
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      v35 = &unk_10029D6F0;
      v36 = &qword_100226B40;
      goto LABEL_30;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v47 = sub_100216954();
    sub_1000F9228(v46, type metadata accessor for AccountInfo);
    sub_1000F9228(v44, type metadata accessor for AccountInfo);
    sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_32:
    v43 = 0;
    return v43 & 1;
  }

  if (v42(v33 + v40, 1, v41) != 1)
  {
LABEL_29:
    v35 = &qword_10029CD70;
    v36 = &qword_100225CE0;
LABEL_30:
    v37 = v33;
    goto LABEL_31;
  }

  sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
LABEL_23:
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41) || *(a1 + 42) != *(a2 + 42))
  {
    goto LABEL_32;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = sub_100216954();
  return v43 & 1;
}

uint64_t sub_1000F1150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v26 = a1;
  v5 = type metadata accessor for Changes(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v9 - 8, v10);
  v12 = (&v25 - v11);
  v13 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v14 = v13 - 8;
  __chkstk_darwin(v13, v15);
  v17 = &v25 - v16;
  v18 = *(a3(0) + 20);
  v19 = *(v14 + 56);
  sub_100019C6C(v26 + v18, v17, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v18, &v17[v19], &unk_10029D750, &qword_10021E850);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_1000114D4(v17, &unk_10029D750, &qword_10021E850);
LABEL_9:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v21 = sub_100216954();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v17, v12, &unk_10029D750, &qword_10021E850);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    sub_1000F9228(v12, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v17, &qword_100297DF8, &qword_10021DA10);
    goto LABEL_7;
  }

  v22 = v25;
  sub_1000F89AC(&v17[v19], v25, type metadata accessor for Changes);
  v23 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v12, v22);
  sub_1000F9228(v22, type metadata accessor for Changes);
  sub_1000F9228(v12, type metadata accessor for Changes);
  sub_1000114D4(v17, &unk_10029D750, &qword_10021E850);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s18TrustedPeersHelper19FetchChangesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v52 = (&v49 - v10);
  v53 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v53, v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = (&v49 - v21);
  v23 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v23, v24);
  v26 = &v49 - v25;
  v27 = *a1;
  v28 = a1[1];
  v29 = *a2;
  v30 = a2[1];
  v56 = a2;
  if ((v27 != v29 || v28 != v30) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = v7;
  v51 = v13;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v31 = *(ChangesRequest + 24);
  v32 = *(v23 + 48);
  sub_100019C6C(a1 + v31, v26, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v56 + v31, &v26[v32], &qword_100297FE0, &unk_10021E7F0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v32], 1, v14) == 1)
    {
      sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v26, v22, &qword_100297FE0, &unk_10021E7F0);
  if (v33(&v26[v32], 1, v14) == 1)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
LABEL_9:
    v34 = &qword_10029CD78;
    v35 = &qword_100225CE8;
LABEL_10:
    v36 = v26;
LABEL_26:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_27;
  }

  sub_1000F89AC(&v26[v32], v18, type metadata accessor for Metrics);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_1002171A4() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v18, type metadata accessor for Metrics);
    sub_1000F9228(v22, type metadata accessor for Metrics);
    v34 = &qword_100297FE0;
    v35 = &unk_10021E7F0;
    goto LABEL_10;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v37 = sub_100216954();
  sub_1000F9228(v18, type metadata accessor for Metrics);
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000114D4(v26, &qword_100297FE0, &unk_10021E7F0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v38 = v51;
  v39 = *(ChangesRequest + 28);
  v40 = *(v53 + 48);
  sub_100019C6C(a1 + v39, v51, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v56 + v39, v38 + v40, &unk_10029D6F0, &qword_100226B40);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v38, 1, v55) != 1)
  {
    v44 = v52;
    sub_100019C6C(v38, v52, &unk_10029D6F0, &qword_100226B40);
    if (v42(v38 + v40, 1, v41) == 1)
    {
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      goto LABEL_24;
    }

    v46 = v38 + v40;
    v47 = v49;
    sub_1000F89AC(v46, v49, type metadata accessor for AccountInfo);
    if (*v44 != *v47)
    {
      sub_1000F9228(v47, type metadata accessor for AccountInfo);
      sub_1000F9228(v44, type metadata accessor for AccountInfo);
      v34 = &unk_10029D6F0;
      v35 = &qword_100226B40;
      goto LABEL_25;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v48 = sub_100216954();
    sub_1000F9228(v47, type metadata accessor for AccountInfo);
    sub_1000F9228(v44, type metadata accessor for AccountInfo);
    sub_1000114D4(v38, &unk_10029D6F0, &qword_100226B40);
    if (v48)
    {
      goto LABEL_21;
    }

LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (v42(v38 + v40, 1, v41) != 1)
  {
LABEL_24:
    v34 = &qword_10029CD70;
    v35 = &qword_100225CE0;
LABEL_25:
    v36 = v38;
    goto LABEL_26;
  }

  sub_1000114D4(v38, &unk_10029D6F0, &qword_100226B40);
LABEL_21:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = sub_100216954();
  return v43 & 1;
}

uint64_t _s18TrustedPeersHelper18UpdateTrustRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v112 = *(v4 - 8);
  v113 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v109 = (&v104 - v10);
  v111 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v111, v11);
  v13 = &v104 - v12;
  v14 = type metadata accessor for Metrics(0);
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14, v15);
  v110 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v17 - 8, v18);
  v114 = (&v104 - v19);
  v116 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v116, v20);
  v119 = &v104 - v21;
  v22 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v122 = *(v22 - 8);
  v123 = v22;
  __chkstk_darwin(v22, v23);
  v115 = (&v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v25 - 8, v26);
  v120 = (&v104 - v27);
  v121 = sub_10001148C(&qword_10029CE08, &qword_100225DA8);
  __chkstk_darwin(v121, v28);
  v124 = &v104 - v29;
  v30 = type metadata accessor for SignedPeerDynamicInfo(0);
  v128 = *(v30 - 8);
  v129 = v30;
  __chkstk_darwin(v30, v31);
  v125 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v33 - 8, v34);
  v126 = &v104 - v35;
  v127 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  __chkstk_darwin(v127, v36);
  v130 = &v104 - v37;
  v38 = type metadata accessor for SignedPeerStableInfo(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38, v40);
  v42 = &v104 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v43 - 8, v44);
  v46 = &v104 - v45;
  v47 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  __chkstk_darwin(v47, v48);
  v50 = &v104 - v49;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v105 = v7;
  v108 = v13;
  v51 = a2;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v52 = *(updated + 36);
  v53 = *(v47 + 48);
  v106 = a1;
  sub_100019C6C(a1 + v52, v50, &qword_1002985A8, &unk_100226650);
  v54 = v51 + v52;
  v55 = v51;
  sub_100019C6C(v54, &v50[v53], &qword_1002985A8, &unk_100226650);
  v56 = *(v39 + 48);
  if (v56(v50, 1, v38) == 1)
  {
    if (v56(&v50[v53], 1, v38) == 1)
    {
      sub_1000114D4(v50, &qword_1002985A8, &unk_100226650);
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  sub_100019C6C(v50, v46, &qword_1002985A8, &unk_100226650);
  if (v56(&v50[v53], 1, v38) == 1)
  {
    sub_1000F9228(v46, type metadata accessor for SignedPeerStableInfo);
LABEL_19:
    v72 = &qword_10029CDC8;
    v73 = &qword_100225D58;
LABEL_25:
    v75 = v50;
LABEL_26:
    sub_1000114D4(v75, v72, v73);
    goto LABEL_27;
  }

  sub_1000F89AC(&v50[v53], v42, type metadata accessor for SignedPeerStableInfo);
  if (!sub_100052F18(*v46, *(v46 + 1), *v42, *(v42 + 1)) || !sub_100052F18(*(v46 + 2), *(v46 + 3), *(v42 + 2), *(v42 + 3)))
  {
    sub_1000F9228(v42, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v46, type metadata accessor for SignedPeerStableInfo);
    v72 = &qword_1002985A8;
    v73 = &unk_100226650;
    goto LABEL_25;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v74 = sub_100216954();
  sub_1000F9228(v42, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v46, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v50, &qword_1002985A8, &unk_100226650);
  if ((v74 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v57 = updated;
  v58 = *(updated + 40);
  v59 = *(v127 + 48);
  v60 = v106;
  v61 = v130;
  sub_100019C6C(v106 + v58, v130, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v55 + v58, v61 + v59, &unk_10029D760, &qword_10021E810);
  v62 = v129;
  v63 = *(v128 + 48);
  if (v63(v61, 1, v129) == 1)
  {
    v64 = v63(v61 + v59, 1, v62);
    v65 = v108;
    v66 = v105;
    if (v64 == 1)
    {
      sub_1000114D4(v61, &unk_10029D760, &qword_10021E810);
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  v78 = v126;
  sub_100019C6C(v61, v126, &unk_10029D760, &qword_10021E810);
  v79 = v63(v61 + v59, 1, v62);
  v65 = v108;
  v66 = v105;
  if (v79 == 1)
  {
    sub_1000F9228(v78, type metadata accessor for SignedPeerDynamicInfo);
LABEL_31:
    v72 = &qword_10029CDC0;
    v73 = &qword_100225D50;
    v75 = v61;
    goto LABEL_26;
  }

  v80 = v61 + v59;
  v81 = v125;
  sub_1000F89AC(v80, v125, type metadata accessor for SignedPeerDynamicInfo);
  if (!sub_100052F18(*v78, *(v78 + 8), *v81, *(v81 + 8)) || !sub_100052F18(*(v78 + 16), *(v78 + 24), *(v81 + 16), *(v81 + 24)))
  {
    sub_1000F9228(v81, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v78, type metadata accessor for SignedPeerDynamicInfo);
    v72 = &unk_10029D760;
    v73 = &qword_10021E810;
    v75 = v61;
    goto LABEL_26;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v82 = sub_100216954();
  sub_1000F9228(v81, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v78, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v61, &unk_10029D760, &qword_10021E810);
  if ((v82 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  if ((sub_1000516F4(v60[4], v55[4]) & 1) == 0 || (sub_100051748(v60[5], v55[5]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v67 = v57[11];
  v68 = *(v121 + 48);
  v69 = v124;
  sub_100019C6C(v60 + v67, v124, &qword_10029D770, &qword_10021E860);
  sub_100019C6C(v55 + v67, v69 + v68, &qword_10029D770, &qword_10021E860);
  v70 = v123;
  v71 = *(v122 + 48);
  if (v71(v69, 1, v123) == 1)
  {
    if (v71(v69 + v68, 1, v70) == 1)
    {
      sub_1000114D4(v69, &qword_10029D770, &qword_10021E860);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v83 = v120;
  sub_100019C6C(v69, v120, &qword_10029D770, &qword_10021E860);
  if (v71(v69 + v68, 1, v70) == 1)
  {
    sub_1000F9228(v83, type metadata accessor for IdmsTrustedDevicesVersion);
LABEL_39:
    v72 = &qword_10029CE08;
    v73 = &qword_100225DA8;
    v75 = v69;
    goto LABEL_26;
  }

  v84 = v69 + v68;
  v85 = v115;
  sub_1000F89AC(v84, v115, type metadata accessor for IdmsTrustedDevicesVersion);
  v86 = _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(v83, v85);
  sub_1000F9228(v85, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9228(v83, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v69, &qword_10029D770, &qword_10021E860);
  v65 = v108;
  if ((v86 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_41:
  v87 = v57[12];
  v88 = *(v116 + 48);
  v89 = v119;
  sub_100019C6C(v60 + v87, v119, &qword_100297FE0, &unk_10021E7F0);
  v90 = v55 + v87;
  v91 = v89;
  sub_100019C6C(v90, v89 + v88, &qword_100297FE0, &unk_10021E7F0);
  v92 = v118;
  v93 = *(v117 + 48);
  if (v93(v89, 1, v118) == 1)
  {
    if (v93(v89 + v88, 1, v92) == 1)
    {
      sub_1000114D4(v89, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  v94 = v114;
  sub_100019C6C(v91, v114, &qword_100297FE0, &unk_10021E7F0);
  if (v93(v91 + v88, 1, v92) == 1)
  {
    sub_1000F9228(v94, type metadata accessor for Metrics);
LABEL_46:
    v72 = &qword_10029CD78;
    v73 = &qword_100225CE8;
    v75 = v91;
    goto LABEL_26;
  }

  v95 = v91 + v88;
  v96 = v110;
  sub_1000F89AC(v95, v110, type metadata accessor for Metrics);
  if ((*v94 != *v96 || v94[1] != v96[1]) && (sub_1002171A4() & 1) == 0 || (v94[2] != v96[2] || v94[3] != v96[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v96, type metadata accessor for Metrics);
    sub_1000F9228(v94, type metadata accessor for Metrics);
    v72 = &qword_100297FE0;
    v73 = &unk_10021E7F0;
    v75 = v91;
    goto LABEL_26;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v97 = sub_100216954();
  sub_1000F9228(v96, type metadata accessor for Metrics);
  sub_1000F9228(v94, type metadata accessor for Metrics);
  sub_1000114D4(v91, &qword_100297FE0, &unk_10021E7F0);
  v57 = updated;
  if ((v97 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_54:
  v98 = v57[13];
  v99 = *(v111 + 48);
  sub_100019C6C(v60 + v98, v65, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v55 + v98, v65 + v99, &unk_10029D6F0, &qword_100226B40);
  v100 = v113;
  v101 = *(v112 + 48);
  if (v101(v65, 1, v113) == 1)
  {
    if (v101(v65 + v99, 1, v100) == 1)
    {
      sub_1000114D4(v65, &unk_10029D6F0, &qword_100226B40);
LABEL_57:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v76 = sub_100216954();
      return v76 & 1;
    }

    goto LABEL_60;
  }

  v102 = v109;
  sub_100019C6C(v65, v109, &unk_10029D6F0, &qword_100226B40);
  if (v101(v65 + v99, 1, v100) == 1)
  {
    sub_1000F9228(v102, type metadata accessor for AccountInfo);
LABEL_60:
    v72 = &qword_10029CD70;
    v73 = &qword_100225CE0;
    v75 = v65;
    goto LABEL_26;
  }

  sub_1000F89AC(v65 + v99, v66, type metadata accessor for AccountInfo);
  if (*v102 != *v66)
  {
    sub_1000F9228(v66, type metadata accessor for AccountInfo);
    sub_1000F9228(v102, type metadata accessor for AccountInfo);
    v72 = &unk_10029D6F0;
    v73 = &qword_100226B40;
    v75 = v65;
    goto LABEL_26;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v103 = sub_100216954();
  sub_1000F9228(v66, type metadata accessor for AccountInfo);
  sub_1000F9228(v102, type metadata accessor for AccountInfo);
  sub_1000114D4(v65, &unk_10029D6F0, &qword_100226B40);
  if (v103)
  {
    goto LABEL_57;
  }

LABEL_27:
  v76 = 0;
  return v76 & 1;
}

uint64_t _s18TrustedPeersHelper17PolicyDocumentKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PolicyDocumentKey(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F2F68(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Changes(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v10 - 8, v11);
  v13 = (&v26 - v12);
  v14 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v15 = v14 - 8;
  __chkstk_darwin(v14, v16);
  v18 = &v26 - v17;
  v27 = a3(0);
  v19 = *(v27 + 24);
  v20 = *(v15 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v19, v18, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v19, &v18[v20], &unk_10029D750, &qword_10021E850);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_1000114D4(v18, &unk_10029D750, &qword_10021E850);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v18, v13, &unk_10029D750, &qword_10021E850);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_1000F9228(v13, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v18, &qword_100297DF8, &qword_10021DA10);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v22 = v28;
  sub_1000F89AC(&v18[v20], v28, type metadata accessor for Changes);
  v23 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v13, v22);
  sub_1000F9228(v22, type metadata accessor for Changes);
  sub_1000F9228(v13, type metadata accessor for Changes);
  sub_1000114D4(v18, &unk_10029D750, &qword_10021E850);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_10004E39C(*v29, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v24 = sub_100216954();
  return v24 & 1;
}

uint64_t _s18TrustedPeersHelper17EscrowInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for EscrowInformation.Metadata(0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4, v5);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  __chkstk_darwin(v7 - 8, v8);
  v69 = &v68 - v9;
  v70 = sub_10001148C(&qword_10029CDB0, &qword_100225D30);
  __chkstk_darwin(v70, v10);
  v73 = &v68 - v11;
  v12 = sub_1002164A4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v68 - v18;
  v20 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v68 - v23;
  v74 = type metadata accessor for EscrowInformation(0);
  v25 = *(v74 + 48);
  v26 = *(v21 + 56);
  v76 = a1;
  sub_100019C6C(a1 + v25, v24, &qword_10029D780, &qword_1002265D0);
  v77 = a2;
  sub_100019C6C(a2 + v25, &v24[v26], &qword_10029D780, &qword_1002265D0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1000114D4(v24, &qword_10029D780, &qword_1002265D0);
      goto LABEL_9;
    }

LABEL_6:
    v28 = &qword_100297E30;
    v29 = &qword_10021DA38;
    v30 = v24;
LABEL_7:
    sub_1000114D4(v30, v28, v29);
    goto LABEL_51;
  }

  sub_100019C6C(v24, v19, &qword_10029D780, &qword_1002265D0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_6;
  }

  v31 = v75;
  (*(v13 + 32))(v75, &v24[v26], v12);
  sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  v32 = sub_100216954();
  v33 = *(v13 + 8);
  v33(v31, v12);
  v33(v19, v12);
  sub_1000114D4(v24, &qword_10029D780, &qword_1002265D0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_9:
  v35 = v76;
  v34 = v77;
  if (*v76 != *v77)
  {
    goto LABEL_51;
  }

  v36 = v73;
  v37 = *(v74 + 52);
  v38 = *(v70 + 48);
  sub_100019C6C(v76 + v37, v73, &unk_10029DAA0, &qword_10021E870);
  sub_100019C6C(v34 + v37, v36 + v38, &unk_10029DAA0, &qword_10021E870);
  v39 = v72;
  v40 = *(v71 + 48);
  if (v40(v36, 1, v72) == 1)
  {
    if (v40(v36 + v38, 1, v39) == 1)
    {
      sub_1000114D4(v36, &unk_10029DAA0, &qword_10021E870);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v41 = v69;
  sub_100019C6C(v36, v69, &unk_10029DAA0, &qword_10021E870);
  if (v40(v36 + v38, 1, v39) == 1)
  {
    sub_1000F9228(v41, type metadata accessor for EscrowInformation.Metadata);
LABEL_15:
    v28 = &qword_10029CDB0;
    v29 = &qword_100225D30;
LABEL_16:
    v30 = v36;
    goto LABEL_7;
  }

  v42 = v68;
  sub_1000F89AC(v36 + v38, v68, type metadata accessor for EscrowInformation.Metadata);
  v43 = *(v39 + 20);
  v44 = *(v41 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {

    v46 = sub_1000E1F9C(v44, v45);
    v45, v47, v48, v49, v50, v51, v52, v53;
    v44, v54, v55, v56, v57, v58, v59, v60;
    if (!v46)
    {
      sub_1000F9228(v42, type metadata accessor for EscrowInformation.Metadata);
      sub_1000F9228(v41, type metadata accessor for EscrowInformation.Metadata);
      v28 = &unk_10029DAA0;
      v29 = &qword_10021E870;
      goto LABEL_16;
    }
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v61 = sub_100216954();
  sub_1000F9228(v42, type metadata accessor for EscrowInformation.Metadata);
  sub_1000F9228(v41, type metadata accessor for EscrowInformation.Metadata);
  sub_1000114D4(v36, &unk_10029DAA0, &qword_10021E870);
  if ((v61 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  if ((v35[1] != v34[1] || v35[2] != v34[2]) && (sub_1002171A4() & 1) == 0 || v35[3] != v34[3])
  {
    goto LABEL_51;
  }

  v62 = v35[4];
  v63 = v34[4];
  if (*(v35 + 40))
  {
    v62 = v62 != 0;
  }

  if (*(v34 + 40) == 1)
  {
    if (v63)
    {
      if (v62 != 1)
      {
        goto LABEL_51;
      }
    }

    else if (v62)
    {
      goto LABEL_51;
    }
  }

  else if (v62 != v63)
  {
    goto LABEL_51;
  }

  v64 = v35[6];
  v65 = v34[6];
  if (*(v34 + 56) != 1)
  {
    if (v64 == v65)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (!v65)
  {
    if (!v64)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (v65 == 1)
  {
    if (v64 == 1)
    {
      goto LABEL_44;
    }

LABEL_51:
    v66 = 0;
    return v66 & 1;
  }

  if (v64 != 2)
  {
    goto LABEL_51;
  }

LABEL_44:
  if ((v35[8] != v34[8] || v35[9] != v34[9]) && (sub_1002171A4() & 1) == 0 || (v35[10] != v34[10] || v35[11] != v34[11]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v66 = sub_100216954();
  return v66 & 1;
}

uint64_t _s18TrustedPeersHelper17EscrowInformationV8MetadataV06ClientF0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v13 = v12 - 8;
  __chkstk_darwin(v12, v14);
  v16 = &v27 - v15;
  v27 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v17 = *(v27 + 64);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v17, v16, &qword_10029D780, &qword_1002265D0);
  v30 = a2;
  sub_100019C6C(a2 + v17, &v16[v18], &qword_10029D780, &qword_1002265D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100019C6C(v16, v11, &qword_10029D780, &qword_1002265D0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      (*(v5 + 32))(v28, &v16[v18], v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v21 = sub_100216954();
      v22 = *(v5 + 8);
      v22(v20, v4);
      v22(v11, v4);
      sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_34:
      v25 = 0;
      return v25 & 1;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1000114D4(v16, &qword_100297E30, &qword_10021DA38);
    goto LABEL_34;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
LABEL_8:
  v24 = v29;
  v23 = v30;
  if (*v29 != *v30 || v29[1] != v30[1] || v29[2] != v30[2] || (v29[3] != v30[3] || v29[4] != v30[4]) && (sub_1002171A4() & 1) == 0 || (v24[5] != v23[5] || v24[6] != v23[6]) && (sub_1002171A4() & 1) == 0 || (v24[7] != v23[7] || v24[8] != v23[8]) && (sub_1002171A4() & 1) == 0 || (v24[9] != v23[9] || v24[10] != v23[10]) && (sub_1002171A4() & 1) == 0 || (v24[11] != v23[11] || v24[12] != v23[12]) && (sub_1002171A4() & 1) == 0 || (v24[13] != v23[13] || v24[14] != v23[14]) && (sub_1002171A4() & 1) == 0 || (v24[15] != v23[15] || v24[16] != v23[16]) && (sub_1002171A4() & 1) == 0 || v24[17] != v23[17])
  {
    goto LABEL_34;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v25 = sub_100216954();
  return v25 & 1;
}

uint64_t _s18TrustedPeersHelper17DirectPCSIdentityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCSService(0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4, v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  __chkstk_darwin(v7 - 8, v8);
  v49 = &v47 - v9;
  v52 = sub_10001148C(&qword_100297E20, &unk_100225D10);
  __chkstk_darwin(v52, v10);
  v55 = &v47 - v11;
  v12 = sub_100216424();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v47 - v18;
  v20 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v47 - v23;
  v51 = type metadata accessor for DirectPCSIdentity(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_100019C6C(a1 + v25, v24, &qword_10029D9C0, &qword_100226740);
  v27 = a2 + v25;
  v28 = a2;
  sub_100019C6C(v27, &v24[v26], &qword_10029D9C0, &qword_100226740);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      sub_1000114D4(v24, &qword_10029D9C0, &qword_100226740);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &qword_100297E28;
    v31 = &qword_10021DA30;
    v32 = v24;
LABEL_24:
    sub_1000114D4(v32, v30, v31);
    goto LABEL_25;
  }

  sub_100019C6C(v24, v19, &qword_10029D9C0, &qword_100226740);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_6;
  }

  v33 = v50;
  (*(v13 + 32))(v50, &v24[v26], v12);
  sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  v34 = sub_100216954();
  v35 = *(v13 + 8);
  v35(v33, v12);
  v35(v19, v12);
  sub_1000114D4(v24, &qword_10029D9C0, &qword_100226740);
  if ((v34 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v36 = *(v51 + 24);
  v37 = *(v52 + 48);
  v38 = v55;
  sub_100019C6C(v56 + v36, v55, &qword_100297E18, &qword_10021DA28);
  sub_100019C6C(v28 + v36, v38 + v37, &qword_100297E18, &qword_10021DA28);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) != 1)
  {
    v42 = v49;
    sub_100019C6C(v38, v49, &qword_100297E18, &qword_10021DA28);
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1000F9228(v42, type metadata accessor for PCSService);
      goto LABEL_14;
    }

    v43 = v38 + v37;
    v44 = v48;
    sub_1000F89AC(v43, v48, type metadata accessor for PCSService);
    if (*v42 != *v44 || !sub_100052F18(*(v42 + 8), *(v42 + 16), *(v44 + 8), *(v44 + 16)) || (*(v42 + 24) != *(v44 + 24) || *(v42 + 32) != *(v44 + 32)) && (sub_1002171A4() & 1) == 0)
    {
      sub_1000F9228(v44, type metadata accessor for PCSService);
      sub_1000F9228(v42, type metadata accessor for PCSService);
      v30 = &qword_100297E18;
      v31 = &qword_10021DA28;
      goto LABEL_23;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v45 = sub_100216954();
    sub_1000F9228(v44, type metadata accessor for PCSService);
    sub_1000F9228(v42, type metadata accessor for PCSService);
    sub_1000114D4(v38, &qword_100297E18, &qword_10021DA28);
    if (v45)
    {
      goto LABEL_11;
    }

LABEL_25:
    v41 = 0;
    return v41 & 1;
  }

  if (v40(v38 + v37, 1, v39) != 1)
  {
LABEL_14:
    v30 = &qword_100297E20;
    v31 = &unk_100225D10;
LABEL_23:
    v32 = v38;
    goto LABEL_24;
  }

  sub_1000114D4(v38, &qword_100297E18, &qword_10021DA28);
LABEL_11:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v41 = sub_100216954();
  return v41 & 1;
}

uint64_t _s18TrustedPeersHelper16SupportAppDeviceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v29 - v11;
  v13 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v29 - v16;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2])
  {
    goto LABEL_13;
  }

  v18 = v15;
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1000519D4(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = type metadata accessor for SupportAppDevice(0);
  v19 = *(v29 + 48);
  v20 = *(v18 + 48);
  sub_100019C6C(&a1[v19], v17, &qword_10029D780, &qword_1002265D0);
  v30 = v20;
  sub_100019C6C(&a2[v19], &v17[v20], &qword_10029D780, &qword_1002265D0);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_100019C6C(v17, v12, &qword_10029D780, &qword_1002265D0);
    v22 = v30;
    if (v21(&v17[v30], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v22], v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v25 = sub_100216954();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_1000114D4(v17, &qword_10029D780, &qword_1002265D0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_1000114D4(v17, &qword_100297E30, &qword_10021DA38);
    goto LABEL_13;
  }

  if (v21(&v17[v30], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000114D4(v17, &qword_10029D780, &qword_1002265D0);
LABEL_16:
  v27 = *(a1 + 4);
  v28 = *(a2 + 4);
  if (a1[40])
  {
    v27 = v27 != 0;
  }

  if (a2[40] == 1)
  {
    if (v28)
    {
      if (v27 != 1)
      {
        goto LABEL_13;
      }
    }

    else if (v27)
    {
      goto LABEL_13;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_13;
  }

  if (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) || (sub_1002171A4() & 1) != 0)
  {
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v23 = sub_100216954();
    return v23 & 1;
  }

LABEL_13:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s18TrustedPeersHelper15ViewKeysRecordsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100216424();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v60 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v55 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10, v12);
  v57 = &v53[-v14];
  __chkstk_darwin(v13, v15);
  v17 = &v53[-v16];
  v18 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v20 = __chkstk_darwin(v18, v19);
  v56 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20, v22);
  v58 = &v53[-v24];
  __chkstk_darwin(v23, v25);
  v27 = &v53[-v26];
  v61 = type metadata accessor for ViewKeysRecords(0);
  v28 = v61[5];
  v59 = v18;
  v29 = *(v18 + 48);
  v63 = a1;
  sub_100019C6C(a1 + v28, v27, &qword_10029D9C0, &qword_100226740);
  v62 = a2;
  v30 = a2 + v28;
  v31 = v5;
  sub_100019C6C(v30, &v27[v29], &qword_10029D9C0, &qword_100226740);
  v32 = *(v5 + 48);
  if (v32(v27, 1, v4) == 1)
  {
    if (v32(&v27[v29], 1, v4) != 1)
    {
LABEL_11:
      v40 = v27;
LABEL_12:
      sub_1000114D4(v40, &qword_100297E28, &qword_10021DA30);
      goto LABEL_13;
    }

    sub_1000114D4(v27, &qword_10029D9C0, &qword_100226740);
  }

  else
  {
    sub_100019C6C(v27, v17, &qword_10029D9C0, &qword_100226740);
    if (v32(&v27[v29], 1, v4) == 1)
    {
LABEL_10:
      (*(v31 + 8))(v17, v4);
      goto LABEL_11;
    }

    v33 = *(v5 + 32);
    v34 = v60;
    v33(v60, &v27[v29], v4);
    sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
    v35 = sub_100216954();
    v36 = *(v31 + 8);
    v36(v34, v4);
    v36(v17, v4);
    sub_1000114D4(v27, &qword_10029D9C0, &qword_100226740);
    if ((v35 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v37 = v61[6];
  v27 = v58;
  v38 = v59;
  v39 = *(v59 + 48);
  sub_100019C6C(v63 + v37, v58, &qword_10029D9C0, &qword_100226740);
  sub_100019C6C(v62 + v37, &v27[v39], &qword_10029D9C0, &qword_100226740);
  if (v32(v27, 1, v4) != 1)
  {
    v17 = v57;
    sub_100019C6C(v27, v57, &qword_10029D9C0, &qword_100226740);
    if (v32(&v27[v39], 1, v4) != 1)
    {
      v43 = v60;
      (*(v31 + 32))(v60, &v27[v39], v4);
      sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
      v54 = sub_100216954();
      v44 = *(v31 + 8);
      v44(v43, v4);
      v44(v17, v4);
      sub_1000114D4(v27, &qword_10029D9C0, &qword_100226740);
      if ((v54 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v32(&v27[v39], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1000114D4(v27, &qword_10029D9C0, &qword_100226740);
LABEL_16:
  v45 = v61[7];
  v46 = *(v38 + 48);
  v47 = v56;
  sub_100019C6C(v63 + v45, v56, &qword_10029D9C0, &qword_100226740);
  sub_100019C6C(v62 + v45, &v47[v46], &qword_10029D9C0, &qword_100226740);
  if (v32(v47, 1, v4) == 1)
  {
    if (v32(&v47[v46], 1, v4) == 1)
    {
      sub_1000114D4(v47, &qword_10029D9C0, &qword_100226740);
LABEL_23:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v41 = sub_100216954();
      return v41 & 1;
    }

    goto LABEL_21;
  }

  v48 = v55;
  sub_100019C6C(v47, v55, &qword_10029D9C0, &qword_100226740);
  if (v32(&v47[v46], 1, v4) == 1)
  {
    (*(v31 + 8))(v48, v4);
LABEL_21:
    v40 = v47;
    goto LABEL_12;
  }

  v49 = &v47[v46];
  v50 = v60;
  (*(v31 + 32))(v60, v49, v4);
  sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  v51 = sub_100216954();
  v52 = *(v31 + 8);
  v52(v50, v4);
  v52(v48, v4);
  sub_1000114D4(v47, &qword_10029D9C0, &qword_100226740);
  if (v51)
  {
    goto LABEL_23;
  }

LABEL_13:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s18TrustedPeersHelper15CurrentCKKSItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4, v5);
  v48 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  __chkstk_darwin(v7 - 8, v8);
  v49 = (&v47 - v9);
  v52 = sub_10001148C(&qword_10029CD90, &unk_100225D00);
  __chkstk_darwin(v52, v10);
  v55 = &v47 - v11;
  v12 = sub_100216424();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v47 - v18;
  v20 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v47 - v23;
  v51 = type metadata accessor for CurrentCKKSItem(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_100019C6C(a1 + v25, v24, &qword_10029D9C0, &qword_100226740);
  v27 = a2 + v25;
  v28 = a2;
  sub_100019C6C(v27, &v24[v26], &qword_10029D9C0, &qword_100226740);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) != 1)
  {
    sub_100019C6C(v24, v19, &qword_10029D9C0, &qword_100226740);
    if (v29(&v24[v26], 1, v12) != 1)
    {
      v33 = v50;
      (*(v13 + 32))(v50, &v24[v26], v12);
      sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
      v34 = sub_100216954();
      v35 = *(v13 + 8);
      v35(v33, v12);
      v35(v19, v12);
      sub_1000114D4(v24, &qword_10029D9C0, &qword_100226740);
      if ((v34 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v19, v12);
LABEL_6:
    v30 = &qword_100297E28;
    v31 = &qword_10021DA30;
    v32 = v24;
LABEL_15:
    sub_1000114D4(v32, v30, v31);
    goto LABEL_16;
  }

  if (v29(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1000114D4(v24, &qword_10029D9C0, &qword_100226740);
LABEL_8:
  v36 = *(v51 + 24);
  v37 = *(v52 + 48);
  v38 = v55;
  sub_100019C6C(v56 + v36, v55, &qword_100298588, &unk_10021E7E0);
  sub_100019C6C(v28 + v36, v38 + v37, &qword_100298588, &unk_10021E7E0);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1000114D4(v38, &qword_100298588, &unk_10021E7E0);
LABEL_25:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v42 = sub_100216954();
      return v42 & 1;
    }

    goto LABEL_13;
  }

  v41 = v49;
  sub_100019C6C(v38, v49, &qword_100298588, &unk_10021E7E0);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    sub_1000F9228(v41, type metadata accessor for CurrentCKKSItemSpecifier);
LABEL_13:
    v30 = &qword_10029CD90;
    v31 = &unk_100225D00;
LABEL_14:
    v32 = v38;
    goto LABEL_15;
  }

  v44 = v38 + v37;
  v45 = v48;
  sub_1000F89AC(v44, v48, type metadata accessor for CurrentCKKSItemSpecifier);
  if ((*v41 != *v45 || v41[1] != v45[1]) && (sub_1002171A4() & 1) == 0 || (v41[2] != v45[2] || v41[3] != v45[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v45, type metadata accessor for CurrentCKKSItemSpecifier);
    sub_1000F9228(v41, type metadata accessor for CurrentCKKSItemSpecifier);
    v30 = &qword_100298588;
    v31 = &unk_10021E7E0;
    goto LABEL_14;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v46 = sub_100216954();
  sub_1000F9228(v45, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000F9228(v41, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000114D4(v38, &qword_100298588, &unk_10021E7E0);
  if (v46)
  {
    goto LABEL_25;
  }

LABEL_16:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s18TrustedPeersHelper14SupportAppViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  __chkstk_darwin(v13, v14);
  v16 = &v26 - v15;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v8;
  v26 = type metadata accessor for SupportAppView(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 48);
  sub_100019C6C(a1 + v17, v16, &qword_10029D780, &qword_1002265D0);
  sub_100019C6C(a2 + v17, &v16[v18], &qword_10029D780, &qword_1002265D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100019C6C(v16, v12, &qword_10029D780, &qword_1002265D0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = &v16[v18];
      v21 = v27;
      (*(v5 + 32))(v27, v20, v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v22 = sub_100216954();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v12, v4);
      sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1000114D4(v16, &qword_100297E30, &qword_10021DA38);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
LABEL_10:
  if (*(a1 + 16) == *(a2 + 16))
  {
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v24 = sub_100216954();
    return v24 & 1;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s18TrustedPeersHelper14PeerDifferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_10001148C(&qword_100297E08, &qword_10021DA20);
  v15 = __chkstk_darwin(v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_100019C6C(a1, &v23 - v16, &qword_100297E00, &qword_10021DA18);
  sub_100019C6C(a2, &v17[v18], &qword_100297E00, &qword_10021DA18);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1000114D4(v17, &qword_100297E00, &qword_10021DA18);
LABEL_9:
      type metadata accessor for PeerDifference(0);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v20 = sub_100216954();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v17, v12, &qword_100297E00, &qword_10021DA18);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_1000F9228(v12, type metadata accessor for PeerDifference.OneOf_Operation);
LABEL_6:
    sub_1000114D4(v17, &qword_100297E08, &qword_10021DA20);
    goto LABEL_7;
  }

  sub_1000F89AC(&v17[v18], v8, type metadata accessor for PeerDifference.OneOf_Operation);
  v21 = _s18TrustedPeersHelper14PeerDifferenceV15OneOf_OperationO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
  sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000F9228(v12, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000114D4(v17, &qword_100297E00, &qword_10021DA18);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v114 = *(v4 - 8);
  v115 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  __chkstk_darwin(v8 - 8, v9);
  v111 = &v106 - v10;
  v113 = sub_10001148C(&qword_10029CDE0, &qword_100225D70);
  __chkstk_darwin(v113, v11);
  v13 = &v106 - v12;
  v14 = type metadata accessor for SignedRecoveryVoucher(0);
  v118 = *(v14 - 8);
  v119 = v14;
  __chkstk_darwin(v14, v15);
  v112 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  __chkstk_darwin(v17 - 8, v18);
  v116 = &v106 - v19;
  v117 = sub_10001148C(&qword_10029CDE8, &qword_100225D78);
  __chkstk_darwin(v117, v20);
  v120 = &v106 - v21;
  v22 = type metadata accessor for SignedPeerDynamicInfo(0);
  v125 = *(v22 - 8);
  v126 = v22;
  __chkstk_darwin(v22, v23);
  v121 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v25 - 8, v26);
  v122 = &v106 - v27;
  v124 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  __chkstk_darwin(v124, v28);
  v127 = &v106 - v29;
  v132 = type metadata accessor for SignedPeerStableInfo(0);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132, v30);
  v123 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v32 - 8, v33);
  v128 = &v106 - v34;
  v129 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  __chkstk_darwin(v129, v35);
  v131 = &v106 - v36;
  v37 = type metadata accessor for SignedPeerPermanentInfo(0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37, v39);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  __chkstk_darwin(v42 - 8, v43);
  v45 = &v106 - v44;
  v46 = sub_10001148C(&qword_10029CDF0, &unk_100225D80);
  __chkstk_darwin(v46, v47);
  v49 = &v106 - v48;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_30;
  }

  v107 = v7;
  v110 = v13;
  v50 = a2;
  v109 = type metadata accessor for Peer(0);
  v51 = *(v109 + 28);
  v52 = *(v46 + 48);
  v108 = a1;
  sub_100019C6C(a1 + v51, v49, &qword_10029DA00, &unk_10021E800);
  v53 = v50 + v51;
  v54 = v50;
  sub_100019C6C(v53, &v49[v52], &qword_10029DA00, &unk_10021E800);
  v55 = *(v38 + 48);
  if (v55(v49, 1, v37) == 1)
  {
    if (v55(&v49[v52], 1, v37) == 1)
    {
      sub_1000114D4(v49, &qword_10029DA00, &unk_10021E800);
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  sub_100019C6C(v49, v45, &qword_10029DA00, &unk_10021E800);
  if (v55(&v49[v52], 1, v37) == 1)
  {
    sub_1000F9228(v45, type metadata accessor for SignedPeerPermanentInfo);
LABEL_22:
    v86 = &qword_10029CDF0;
    v87 = &unk_100225D80;
LABEL_28:
    v89 = v49;
LABEL_29:
    sub_1000114D4(v89, v86, v87);
    goto LABEL_30;
  }

  sub_1000F89AC(&v49[v52], v41, type metadata accessor for SignedPeerPermanentInfo);
  if (!sub_100052F18(*v45, *(v45 + 1), *v41, *(v41 + 1)) || !sub_100052F18(*(v45 + 2), *(v45 + 3), *(v41 + 2), *(v41 + 3)))
  {
    sub_1000F9228(v41, type metadata accessor for SignedPeerPermanentInfo);
    sub_1000F9228(v45, type metadata accessor for SignedPeerPermanentInfo);
    v86 = &qword_10029DA00;
    v87 = &unk_10021E800;
    goto LABEL_28;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v88 = sub_100216954();
  sub_1000F9228(v41, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000F9228(v45, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000114D4(v49, &qword_10029DA00, &unk_10021E800);
  if ((v88 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  v56 = v109;
  v57 = *(v109 + 32);
  v58 = *(v129 + 48);
  v59 = v108;
  v60 = v131;
  sub_100019C6C(v108 + v57, v131, &qword_1002985A8, &unk_100226650);
  v61 = v50 + v57;
  v62 = v60;
  sub_100019C6C(v61, v60 + v58, &qword_1002985A8, &unk_100226650);
  v63 = *(v130 + 48);
  v64 = v60;
  v65 = v132;
  if (v63(v64, 1, v132) == 1)
  {
    v66 = v63(v62 + v58, 1, v65);
    v67 = v110;
    v68 = v107;
    if (v66 == 1)
    {
      sub_1000114D4(v62, &qword_1002985A8, &unk_100226650);
      goto LABEL_9;
    }

    goto LABEL_34;
  }

  v91 = v128;
  sub_100019C6C(v62, v128, &qword_1002985A8, &unk_100226650);
  v92 = v63(v62 + v58, 1, v65);
  v67 = v110;
  v68 = v107;
  if (v92 == 1)
  {
    sub_1000F9228(v91, type metadata accessor for SignedPeerStableInfo);
LABEL_34:
    v86 = &qword_10029CDC8;
    v87 = &qword_100225D58;
    v89 = v62;
    goto LABEL_29;
  }

  v93 = v62 + v58;
  v94 = v123;
  sub_1000F89AC(v93, v123, type metadata accessor for SignedPeerStableInfo);
  if (!sub_100052F18(*v91, *(v91 + 8), *v94, *(v94 + 8)) || !sub_100052F18(*(v91 + 16), *(v91 + 24), *(v94 + 16), *(v94 + 24)))
  {
    sub_1000F9228(v94, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v91, type metadata accessor for SignedPeerStableInfo);
    v86 = &qword_1002985A8;
    v87 = &unk_100226650;
    v89 = v62;
    goto LABEL_29;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v95 = sub_100216954();
  sub_1000F9228(v94, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v91, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v62, &qword_1002985A8, &unk_100226650);
  if ((v95 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v69 = v56[9];
  v70 = *(v124 + 48);
  v71 = v127;
  sub_100019C6C(v59 + v69, v127, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v54 + v69, v71 + v70, &unk_10029D760, &qword_10021E810);
  v72 = v126;
  v73 = *(v125 + 48);
  if (v73(v71, 1, v126) == 1)
  {
    if (v73(v71 + v70, 1, v72) == 1)
    {
      sub_1000114D4(v71, &unk_10029D760, &qword_10021E810);
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  v96 = v122;
  sub_100019C6C(v71, v122, &unk_10029D760, &qword_10021E810);
  if (v73(v71 + v70, 1, v72) == 1)
  {
    sub_1000F9228(v96, type metadata accessor for SignedPeerDynamicInfo);
LABEL_42:
    v86 = &qword_10029CDC0;
    v87 = &qword_100225D50;
    v89 = v71;
    goto LABEL_29;
  }

  v97 = v71 + v70;
  v98 = v121;
  sub_1000F89AC(v97, v121, type metadata accessor for SignedPeerDynamicInfo);
  if (!sub_100052F18(*v96, *(v96 + 8), *v98, *(v98 + 8)) || !sub_100052F18(*(v96 + 16), *(v96 + 24), *(v98 + 16), *(v98 + 24)))
  {
    sub_1000F9228(v98, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v96, type metadata accessor for SignedPeerDynamicInfo);
    v86 = &unk_10029D760;
    v87 = &qword_10021E810;
    v89 = v71;
    goto LABEL_29;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v99 = sub_100216954();
  sub_1000F9228(v98, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v96, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v71, &unk_10029D760, &qword_10021E810);
  v67 = v110;
  if ((v99 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((sub_100051F9C(v59[2], v54[2]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v74 = v56[10];
  v75 = *(v117 + 48);
  v76 = v120;
  sub_100019C6C(v59 + v74, v120, &qword_1002985B0, &qword_10021E818);
  v77 = v54 + v74;
  v78 = v76;
  sub_100019C6C(v77, v76 + v75, &qword_1002985B0, &qword_10021E818);
  v79 = v119;
  v80 = *(v118 + 48);
  if (v80(v76, 1, v119) == 1)
  {
    if (v80(v76 + v75, 1, v79) == 1)
    {
      sub_1000114D4(v76, &qword_1002985B0, &qword_10021E818);
      goto LABEL_16;
    }

    goto LABEL_50;
  }

  v100 = v116;
  sub_100019C6C(v78, v116, &qword_1002985B0, &qword_10021E818);
  if (v80(v78 + v75, 1, v79) == 1)
  {
    sub_1000F9228(v100, type metadata accessor for SignedRecoveryVoucher);
LABEL_50:
    v86 = &qword_10029CDE8;
    v87 = &qword_100225D78;
    v89 = v78;
    goto LABEL_29;
  }

  v101 = v78 + v75;
  v102 = v112;
  sub_1000F89AC(v101, v112, type metadata accessor for SignedRecoveryVoucher);
  if (!sub_100052F18(*v100, *(v100 + 8), *v102, *(v102 + 8)) || !sub_100052F18(*(v100 + 16), *(v100 + 24), *(v102 + 16), *(v102 + 24)))
  {
    sub_1000F9228(v102, type metadata accessor for SignedRecoveryVoucher);
    sub_1000F9228(v100, type metadata accessor for SignedRecoveryVoucher);
    v86 = &qword_1002985B0;
    v87 = &qword_10021E818;
    v89 = v78;
    goto LABEL_29;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v103 = sub_100216954();
  sub_1000F9228(v102, type metadata accessor for SignedRecoveryVoucher);
  sub_1000F9228(v100, type metadata accessor for SignedRecoveryVoucher);
  sub_1000114D4(v78, &qword_1002985B0, &qword_10021E818);
  v56 = v109;
  if ((v103 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v81 = v56[11];
  v82 = *(v113 + 48);
  sub_100019C6C(v59 + v81, v67, &unk_10029D7B0, &unk_10021E820);
  sub_100019C6C(v54 + v81, v67 + v82, &unk_10029D7B0, &unk_10021E820);
  v83 = v115;
  v84 = *(v114 + 48);
  if (v84(v67, 1, v115) != 1)
  {
    v104 = v111;
    sub_100019C6C(v67, v111, &unk_10029D7B0, &unk_10021E820);
    if (v84(v67 + v82, 1, v83) == 1)
    {
      sub_1000F9228(v104, type metadata accessor for SignedCustodianRecoveryKey);
      goto LABEL_58;
    }

    sub_1000F89AC(v67 + v82, v68, type metadata accessor for SignedCustodianRecoveryKey);
    if (!sub_100052F18(*v104, *(v104 + 8), *v68, *(v68 + 8)) || !sub_100052F18(*(v104 + 16), *(v104 + 24), *(v68 + 16), *(v68 + 24)))
    {
      sub_1000F9228(v68, type metadata accessor for SignedCustodianRecoveryKey);
      sub_1000F9228(v104, type metadata accessor for SignedCustodianRecoveryKey);
      v86 = &unk_10029D7B0;
      v87 = &unk_10021E820;
      v89 = v67;
      goto LABEL_29;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v105 = sub_100216954();
    sub_1000F9228(v68, type metadata accessor for SignedCustodianRecoveryKey);
    sub_1000F9228(v104, type metadata accessor for SignedCustodianRecoveryKey);
    sub_1000114D4(v67, &unk_10029D7B0, &unk_10021E820);
    if (v105)
    {
      goto LABEL_19;
    }

LABEL_30:
    v85 = 0;
    return v85 & 1;
  }

  if (v84(v67 + v82, 1, v83) != 1)
  {
LABEL_58:
    v86 = &qword_10029CDE0;
    v87 = &qword_100225D70;
    v89 = v67;
    goto LABEL_29;
  }

  sub_1000114D4(v67, &unk_10029D7B0, &unk_10021E820);
LABEL_19:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v85 = sub_100216954();
  return v85 & 1;
}

uint64_t _s18TrustedPeersHelper14PeerDifferenceV15OneOf_OperationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Peer(0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v41 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6, v8);
  v40 = (&v40 - v10);
  __chkstk_darwin(v9, v11);
  v13 = (&v40 - v12);
  v14 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v16 = __chkstk_darwin(v14, v15);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v16, v19);
  v22 = (&v40 - v21);
  __chkstk_darwin(v20, v23);
  v25 = (&v40 - v24);
  v26 = sub_10001148C(&qword_10029CDF8, &unk_100225D90);
  v28 = __chkstk_darwin(v26 - 8, v27);
  v30 = &v40 - v29;
  v31 = *(v28 + 56);
  sub_1000F91C0(a1, &v40 - v29, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000F91C0(a2, &v30[v31], type metadata accessor for PeerDifference.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000F91C0(v30, v22, type metadata accessor for PeerDifference.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = &v30[v31];
        v34 = v40;
        sub_1000F89AC(v33, v40, type metadata accessor for Peer);
        v35 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v22, v34);
        sub_1000F9228(v34, type metadata accessor for Peer);
        v36 = v22;
LABEL_12:
        sub_1000F9228(v36, type metadata accessor for Peer);
        sub_1000F9228(v30, type metadata accessor for PeerDifference.OneOf_Operation);
        return v35 & 1;
      }

      v18 = v22;
    }

    else
    {
      sub_1000F91C0(v30, v18, type metadata accessor for PeerDifference.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = &v30[v31];
        v38 = v41;
        sub_1000F89AC(v37, v41, type metadata accessor for Peer);
        v35 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v18, v38);
        sub_1000F9228(v38, type metadata accessor for Peer);
        v36 = v18;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1000F91C0(v30, v25, type metadata accessor for PeerDifference.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000F89AC(&v30[v31], v13, type metadata accessor for Peer);
      v35 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v25, v13);
      sub_1000F9228(v13, type metadata accessor for Peer);
      v36 = v25;
      goto LABEL_12;
    }

    v18 = v25;
  }

  sub_1000F9228(v18, type metadata accessor for Peer);
  sub_1000114D4(v30, &qword_10029CDF8, &unk_100225D90);
  v35 = 0;
  return v35 & 1;
}

uint64_t _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1002171A4() & 1) == 0 || (sub_10005274C(a1[2], *(a2 + 16)) & 1) == 0 || !sub_100052F18(a1[3], a1[4], *(a2 + 24), *(a2 + 32)) || !sub_100052F18(a1[5], a1[6], *(a2 + 40), *(a2 + 48)) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  type metadata accessor for Changes(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper13ResetResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Changes(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v8 - 8, v9);
  v11 = (v24 - v10);
  v12 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v13 = v12 - 8;
  __chkstk_darwin(v12, v14);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for ResetResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_100019C6C(a1 + v17, v16, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v17, &v16[v18], &unk_10029D750, &qword_10021E850);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000114D4(v16, &unk_10029D750, &qword_10021E850);
LABEL_9:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v20 = sub_100216954();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v16, v11, &unk_10029D750, &qword_10021E850);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1000F9228(v11, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v16, &qword_100297DF8, &qword_10021DA10);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1000F89AC(&v16[v18], v24[0], type metadata accessor for Changes);
  v22 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v11, v21);
  sub_1000F9228(v21, type metadata accessor for Changes);
  sub_1000F9228(v11, type metadata accessor for Changes);
  sub_1000114D4(v16, &unk_10029D750, &qword_10021E850);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000F7CB8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Metrics(0);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6, v7);
  v54 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v9 - 8, v10);
  v55 = (&v51 - v11);
  v56 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v56, v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AccountInfo(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v20 - 8, v21);
  v23 = (&v51 - v22);
  v24 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v24, v25);
  v27 = &v51 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v29 > 3)
    {
      if (v29 > 5)
      {
        if (v29 == 6)
        {
          if (v28 != 6)
          {
            goto LABEL_59;
          }
        }

        else if (v28 != 7)
        {
          goto LABEL_59;
        }
      }

      else if (v29 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_59;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_59;
      }
    }

    else if (v29 > 1)
    {
      if (v29 == 2)
      {
        if (v28 != 2)
        {
          goto LABEL_59;
        }
      }

      else if (v28 != 3)
      {
        goto LABEL_59;
      }
    }

    else if (v29)
    {
      if (v28 != 1)
      {
        goto LABEL_59;
      }
    }

    else if (v28)
    {
      goto LABEL_59;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_59;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_1002171A4() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_1002171A4() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_59;
  }

  v53 = v14;
  v52 = a3(0);
  v30 = *(v52 + 40);
  v31 = *(v24 + 48);
  sub_100019C6C(a1 + v30, v27, &unk_10029D6F0, &qword_100226B40);
  v32 = a2 + v30;
  v33 = v31;
  sub_100019C6C(v32, &v27[v31], &unk_10029D6F0, &qword_100226B40);
  v34 = *(v16 + 48);
  if (v34(v27, 1, v15) == 1)
  {
    v35 = v34(&v27[v33], 1, v15);
    v36 = v53;
    if (v35 == 1)
    {
      sub_1000114D4(v27, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  sub_100019C6C(v27, v23, &unk_10029D6F0, &qword_100226B40);
  v41 = v34(&v27[v33], 1, v15);
  v36 = v53;
  if (v41 == 1)
  {
    sub_1000F9228(v23, type metadata accessor for AccountInfo);
LABEL_33:
    v42 = &qword_10029CD70;
    v43 = &qword_100225CE0;
LABEL_34:
    v44 = v27;
    goto LABEL_35;
  }

  sub_1000F89AC(&v27[v33], v19, type metadata accessor for AccountInfo);
  if (*v23 != *v19)
  {
    sub_1000F9228(v19, type metadata accessor for AccountInfo);
    sub_1000F9228(v23, type metadata accessor for AccountInfo);
    v42 = &unk_10029D6F0;
    v43 = &qword_100226B40;
    goto LABEL_34;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v45 = sub_100216954();
  sub_1000F9228(v19, type metadata accessor for AccountInfo);
  sub_1000F9228(v23, type metadata accessor for AccountInfo);
  sub_1000114D4(v27, &unk_10029D6F0, &qword_100226B40);
  if ((v45 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_18:
  v37 = *(v52 + 44);
  v38 = *(v56 + 48);
  sub_100019C6C(a1 + v37, v36, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v37, v36 + v38, &qword_100297FE0, &unk_10021E7F0);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v36, 1, v58) != 1)
  {
    v46 = v55;
    sub_100019C6C(v36, v55, &qword_100297FE0, &unk_10021E7F0);
    if (v40(v36 + v38, 1, v39) == 1)
    {
      sub_1000F9228(v46, type metadata accessor for Metrics);
      goto LABEL_49;
    }

    v47 = v54;
    sub_1000F89AC(v36 + v38, v54, type metadata accessor for Metrics);
    if (*v46 == *v47 && v46[1] == v47[1] || (sub_1002171A4()) && (v46[2] == v47[2] && v46[3] == v47[3] || (sub_1002171A4()))
    {
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v48 = sub_100216954();
      sub_1000F9228(v47, type metadata accessor for Metrics);
      sub_1000F9228(v46, type metadata accessor for Metrics);
      sub_1000114D4(v36, &qword_100297FE0, &unk_10021E7F0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    sub_1000F9228(v47, type metadata accessor for Metrics);
    sub_1000F9228(v46, type metadata accessor for Metrics);
    v42 = &qword_100297FE0;
    v43 = &unk_10021E7F0;
    v44 = v36;
LABEL_35:
    sub_1000114D4(v44, v42, v43);
    goto LABEL_59;
  }

  if (v40(v36 + v38, 1, v39) != 1)
  {
LABEL_49:
    v42 = &qword_10029CD78;
    v43 = &qword_100225CE8;
    v44 = v36;
    goto LABEL_35;
  }

  sub_1000114D4(v36, &qword_100297FE0, &unk_10021E7F0);
LABEL_58:
  if (*(a1 + 49) == *(a2 + 49))
  {
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v49 = sub_100216954();
    return v49 & 1;
  }

LABEL_59:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s18TrustedPeersHelper10PCSServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || !sub_100052F18(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v4 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PCSService(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, _TtC18TrustedPeersHelper6Client **a2)
{
  if (!sub_100052F18(*a1, a1[1], *a2, a2[1]) || !sub_100052F18(a1[2], a1[3], a2[2], a2[3]) || !sub_100052F18(a1[4], a1[5], a2[4], a2[5]) || !sub_100052F18(a1[6], a1[7], a2[6], a2[7]) || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1002171A4() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Bottle(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F8778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);
    v9, v11, v12, v13, v14, v15, v16, v17;
    v8, v18, v19, v20, v21, v22, v23, v24;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F89AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  __chkstk_darwin(v13, v14);
  v16 = &v26 - v15;
  if (*a1 != *a2 && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = v8;
  v27 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v17 = *(v27 + 24);
  v18 = *(v13 + 48);
  sub_100019C6C(a1 + v17, v16, &qword_10029D780, &qword_1002265D0);
  sub_100019C6C(a2 + v17, &v16[v18], &qword_10029D780, &qword_1002265D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
LABEL_11:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v20 = sub_100216954();
      return v20 & 1;
    }

    goto LABEL_8;
  }

  sub_100019C6C(v16, v12, &qword_10029D780, &qword_1002265D0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1000114D4(v16, &qword_100297E30, &qword_10021DA38);
    goto LABEL_9;
  }

  v21 = &v16[v18];
  v22 = v26;
  (*(v5 + 32))(v26, v21, v4);
  sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  v23 = sub_100216954();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v12, v4);
  sub_1000114D4(v16, &qword_10029D780, &qword_1002265D0);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000F90F0(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 16:
        return 5;
      case 8:
        return 4;
      case 4:
        return 3;
    }
  }

  return result;
}

uint64_t sub_1000F91C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F9228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F960C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  *(v1 + 24) = 1;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 248) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v7;
  swift_beginAccess();
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v9;
  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v10;
  swift_beginAccess();
  v11 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v11;
  swift_beginAccess();
  v12 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v12;
  swift_beginAccess();
  v13 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v13;
  swift_beginAccess();
  v14 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v14;
  swift_beginAccess();
  v15 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v15;
  swift_beginAccess();
  LOBYTE(v15) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v15;
  swift_beginAccess();
  v16 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v16;
  swift_beginAccess();
  v17 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v17;
  swift_beginAccess();
  v18 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v18;
  swift_beginAccess();
  v19 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v19;
  swift_beginAccess();
  v20 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v20;
  swift_beginAccess();
  v21 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 184) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 185);
  swift_beginAccess();
  *(v1 + 185) = v21;
  swift_beginAccess();
  v22 = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 192) = v22;
  swift_beginAccess();
  v23 = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v23;
  swift_beginAccess();
  v24 = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 208) = v24;
  swift_beginAccess();
  v25 = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 225);
  swift_beginAccess();
  *(v1 + 225) = v25;
  swift_beginAccess();
  v26 = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v26;
  swift_beginAccess();
  v27 = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v27;
  swift_beginAccess();
  v28 = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v28;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = a1;
  return v1;
}

uint64_t sub_1000F9E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001148C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000F9F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F9F70()
{
  result = qword_100298708;
  if (!qword_100298708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298708);
  }

  return result;
}

unint64_t sub_1000F9FC4()
{
  result = qword_100298768;
  if (!qword_100298768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298768);
  }

  return result;
}

unint64_t sub_1000FA038()
{
  result = qword_100298810;
  if (!qword_100298810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298810);
  }

  return result;
}

unint64_t sub_1000FA08C()
{
  result = qword_100298890;
  if (!qword_100298890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298890);
  }

  return result;
}

unint64_t sub_1000FA0E0()
{
  result = qword_100298898;
  if (!qword_100298898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298898);
  }

  return result;
}

unint64_t sub_1000FA134()
{
  result = qword_1002988A0;
  if (!qword_1002988A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002988A0);
  }

  return result;
}

unint64_t sub_1000FA188()
{
  result = qword_1002988C0;
  if (!qword_1002988C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002988C0);
  }

  return result;
}

unint64_t sub_1000FA1FC()
{
  result = qword_100298900;
  if (!qword_100298900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298900);
  }

  return result;
}

unint64_t sub_1000FA250()
{
  result = qword_100298908;
  if (!qword_100298908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298908);
  }

  return result;
}

uint64_t sub_1000FA2C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000FA300()
{
  result = qword_100298988;
  if (!qword_100298988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298988);
  }

  return result;
}

unint64_t sub_1000FA358()
{
  result = qword_100298990;
  if (!qword_100298990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298990);
  }

  return result;
}

unint64_t sub_1000FA3E0()
{
  result = qword_1002989A8;
  if (!qword_1002989A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989A8);
  }

  return result;
}

unint64_t sub_1000FA438()
{
  result = qword_1002989B0;
  if (!qword_1002989B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989B0);
  }

  return result;
}

unint64_t sub_1000FA490()
{
  result = qword_1002989B8;
  if (!qword_1002989B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989B8);
  }

  return result;
}

unint64_t sub_1000FA518()
{
  result = qword_1002989D0;
  if (!qword_1002989D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989D0);
  }

  return result;
}

unint64_t sub_1000FA570()
{
  result = qword_1002989D8;
  if (!qword_1002989D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989D8);
  }

  return result;
}

unint64_t sub_1000FA5C8()
{
  result = qword_1002989E0;
  if (!qword_1002989E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989E0);
  }

  return result;
}

unint64_t sub_1000FA650()
{
  result = qword_1002989F8;
  if (!qword_1002989F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989F8);
  }

  return result;
}

unint64_t sub_1000FA6A8()
{
  result = qword_100298A00;
  if (!qword_100298A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A00);
  }

  return result;
}

unint64_t sub_1000FA700()
{
  result = qword_100298A08;
  if (!qword_100298A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A08);
  }

  return result;
}

unint64_t sub_1000FA788()
{
  result = qword_100298A20;
  if (!qword_100298A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A20);
  }

  return result;
}

unint64_t sub_1000FA7E0()
{
  result = qword_100298A28;
  if (!qword_100298A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A28);
  }

  return result;
}

unint64_t sub_1000FA838()
{
  result = qword_100298A30;
  if (!qword_100298A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A30);
  }

  return result;
}

unint64_t sub_1000FA8C0()
{
  result = qword_100298A48;
  if (!qword_100298A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A48);
  }

  return result;
}

unint64_t sub_1000FA918()
{
  result = qword_100298A50;
  if (!qword_100298A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A50);
  }

  return result;
}

unint64_t sub_1000FA970()
{
  result = qword_100298A58;
  if (!qword_100298A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A58);
  }

  return result;
}

unint64_t sub_1000FA9F8()
{
  result = qword_100298A70;
  if (!qword_100298A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A70);
  }

  return result;
}

unint64_t sub_1000FAA50()
{
  result = qword_100298A78;
  if (!qword_100298A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A78);
  }

  return result;
}

unint64_t sub_1000FAAA8()
{
  result = qword_100298A80;
  if (!qword_100298A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A80);
  }

  return result;
}

unint64_t sub_1000FAB30()
{
  result = qword_100298A98;
  if (!qword_100298A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A98);
  }

  return result;
}

unint64_t sub_1000FAB88()
{
  result = qword_100298AA0;
  if (!qword_100298AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AA0);
  }

  return result;
}

unint64_t sub_1000FABE0()
{
  result = qword_100298AA8;
  if (!qword_100298AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AA8);
  }

  return result;
}

unint64_t sub_1000FAC68()
{
  result = qword_100298AC0;
  if (!qword_100298AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AC0);
  }

  return result;
}

unint64_t sub_1000FACC0()
{
  result = qword_100298AC8;
  if (!qword_100298AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AC8);
  }

  return result;
}

unint64_t sub_1000FAD18()
{
  result = qword_100298AD0;
  if (!qword_100298AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AD0);
  }

  return result;
}

unint64_t sub_1000FADA0()
{
  result = qword_100298AE8;
  if (!qword_100298AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AE8);
  }

  return result;
}

unint64_t sub_1000FADF8()
{
  result = qword_100298AF0;
  if (!qword_100298AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AF0);
  }

  return result;
}

unint64_t sub_1000FAE50()
{
  result = qword_100298AF8;
  if (!qword_100298AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AF8);
  }

  return result;
}

unint64_t sub_1000FAED8()
{
  result = qword_100298B10;
  if (!qword_100298B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B10);
  }

  return result;
}

unint64_t sub_1000FAF30()
{
  result = qword_100298B18;
  if (!qword_100298B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B18);
  }

  return result;
}

unint64_t sub_1000FAF88()
{
  result = qword_100298B20;
  if (!qword_100298B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B20);
  }

  return result;
}

uint64_t sub_1000FB00C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011534(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FB064()
{
  result = qword_100298B38;
  if (!qword_100298B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B38);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ViewKeyClass(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100100118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1001001E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100308(uint64_t a1)
{
  sub_100100534(319, &qword_100299590, type metadata accessor for SignedVoucher, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &qword_100299598, type metadata accessor for SignedPeerPermanentInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100100534(319, &qword_1002995B0, type metadata accessor for SignedRecoveryVoucher, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100100534(319, &unk_1002995B8, type metadata accessor for SignedCustodianRecoveryKey, &type metadata accessor for Optional);
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

void sub_100100534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100100644(uint64_t a1)
{
  result = type metadata accessor for Peer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001006D0(uint64_t a1)
{
  result = sub_1002164D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010079C(uint64_t a1)
{
  result = sub_1002164D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100100894(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_100299990, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100100978(uint64_t a1)
{
  result = sub_1002164D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100100A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100100B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100BC0(uint64_t a1)
{
  sub_100100534(319, &unk_100299B68, type metadata accessor for PeerDifference, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100100D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1002164D4();
  if (v8 <= 0x3F)
  {
    sub_100100534(319, a5, a6, &type metadata accessor for Optional);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100100F80(uint64_t a1)
{
  sub_100100534(319, &qword_10029A218, type metadata accessor for TLKShare, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_10029A220, type metadata accessor for ViewKeys, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1002164D4();
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100100534(319, &unk_10029A228, type metadata accessor for IdmsTrustedDevicesVersion, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
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

void sub_100101244(uint64_t a1)
{
  sub_100100534(319, &qword_10029A218, type metadata accessor for TLKShare, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_10029A220, type metadata accessor for ViewKeys, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1002164D4();
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
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

void sub_100101484(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100101728(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D750, &qword_10021E850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10010186C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D750, &qword_10021E850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10010199C(uint64_t a1)
{
  sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_100299F28, type metadata accessor for Changes, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100101AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1002164D4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_10001148C(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100101BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1002164D4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_10001148C(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_100101D04(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_100299F28, type metadata accessor for Changes, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100101E14(uint64_t a1)
{
  sub_100100534(319, &qword_10029AA08, type metadata accessor for EscrowPair, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_10029AA10, type metadata accessor for EscrowInformation, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1002164D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100101F38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1001020D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_1001022D8(uint64_t a1)
{
  sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_10029ABF0, type metadata accessor for ViewKeysRecords, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100102440(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100102500(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001025D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_100100534(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1002164D4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100102690(uint64_t a1)
{
  sub_1001027C8();
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001027C8()
{
  if (!qword_10029ADC8)
  {
    v0 = sub_100216B74();
    if (!v1)
    {
      atomic_store(v0, &qword_10029ADC8);
    }
  }
}

uint64_t sub_10010282C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_1001029C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void sub_100102B48(uint64_t a1)
{
  sub_1001027C8();
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100102CB0(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100102DE4(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_10029B060, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100102EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = sub_10001148C(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t sub_100103034(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = sub_10001148C(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_100103174(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100103268(uint64_t a1)
{
  sub_100100534(319, &unk_10029B1A8, type metadata accessor for SupportAppView, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001033A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1002164D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_10010350C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_1001036A0(uint64_t a1)
{
  sub_100100534(319, &unk_10029B2F8, type metadata accessor for SupportAppDevice, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1002164D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10010378C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_100103924(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}