void sub_100103AA8(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100103C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1002164D4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100103C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100103D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002164D4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100103DBC(uint64_t a1)
{
  sub_1002164D4();
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_10029B568, type metadata accessor for EscrowInformation.Metadata, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100103F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002164D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100103FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1002164D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001040A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1002164D4();
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

void sub_10010415C(uint64_t a1)
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

uint64_t sub_100104270(uint64_t a1)
{
  result = sub_1002164D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010440C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001044CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100104570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1002164D4();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001045F8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

    return v13(&a1[v11], a2, v9);
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
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_100104790(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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

    return v13(&v5[v11], a2, a2, v9);
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
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_100104934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_100100534(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_1002164D4();
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

uint64_t sub_100104A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1002164D4();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = sub_10001148C(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = sub_10001148C(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t sub_100104BFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1002164D4();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = sub_10001148C(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = sub_10001148C(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void sub_100104DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1002164D4();
  if (v11 <= 0x3F)
  {
    sub_100100534(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_100100534(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100104EBC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100104F7C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100105040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_100100534(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
    if (v6 <= 0x3F)
    {
      sub_1002164D4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002164D4();
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

uint64_t sub_100105274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001052F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100105364(uint64_t a1)
{
  result = sub_1002164D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001053D8(uint64_t a1)
{
  sub_100100534(319, &unk_10029BD58, type metadata accessor for ViewKey, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001054B0(uint64_t a1)
{
  sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_10029BEB8, type metadata accessor for EscrowInformation, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001055EC(uint64_t a1)
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100105804(uint64_t a1)
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_10029A228, type metadata accessor for IdmsTrustedDevicesVersion, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100105A94(uint64_t a1)
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
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
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100105D24(uint64_t a1)
{
  sub_100100534(319, &qword_10029C968, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100100534(319, &unk_10029C970, type metadata accessor for PasscodeGeneration, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100105EEC()
{
  result = qword_10029CD60;
  if (!qword_10029CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CD60);
  }

  return result;
}

unint64_t sub_100105F40()
{
  result = qword_10029CD68;
  if (!qword_10029CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CD68);
  }

  return result;
}

Swift::Int StreamingEncoderError.hashValue.getter(char a1)
{
  sub_100217264();
  sub_100217274(a1 & 1);
  return sub_100217284();
}

Swift::Int sub_1001062A0()
{
  v1 = *v0;
  sub_100217264();
  sub_100217274(v1);
  return sub_100217284();
}

Swift::Int sub_100106314()
{
  v1 = *v0;
  sub_100217264();
  sub_100217274(v1);
  return sub_100217284();
}

unint64_t sub_10010635C()
{
  result = qword_10029CE18;
  if (!qword_10029CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CE18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamingEncoderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamingEncoderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100106528(uint64_t a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5)
{
  v6 = v5;
  v11 = a1;
  v12 = sub_100216774();
  __chkstk_darwin(v12, v13);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  if (v11 < 0)
  {
    a3, v14, v15, v16, v17, v18, v19, v20, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
    a5, v52, v53, v54, v55, v56, v57, v58, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
    sub_100107D3C();
    swift_allocError();
    *v59 = 0;
    swift_willThrow();
    *(v6 + 32), v60, v61, v62, v63, v64, v65, v66, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
    type metadata accessor for StreamingEncoderBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v77 = v21;
    v78 = a2;
    *(v6 + 16) = v11;
    *(v6 + 20) = 0;
    v79 = a3;
    sub_100107C94();
    v24 = sub_1002167C4();
    if (v25)
    {
      v32 = v24;
      a5, v25, v26, v27, v28, v29, v30, v31, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
      v82 = v32;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v33 = v32;
      a3, v33, v34, v35, v36, v37, v38, v39, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
      sub_100216764();
      swift_errorRetain();
      v40 = sub_100216754();
      v41 = sub_100216C74();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "StreamingEncoder could not write initial byte: %@", v42, 0xCu);
        sub_1000114D4(v43, &qword_10029D580, &unk_10021CCC0);
      }

      (*(v77 + 1))(v23, v12);
      swift_willThrow();
      v6, v45, v46, v47, v48, v49, v50, v51;
    }

    else
    {
      a3, v25, v26, v27, v28, v29, v30, v31, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
      v67 = *(v6 + 32);
      *(v6 + 24) = a4;
      *(v6 + 32) = a5;
      v67, v68, v69, v70, v71, v72, v73, v74, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86;
    }
  }

  return v6;
}

uint64_t sub_100106838()
{
  v1 = sub_100216774();
  v3 = __chkstk_darwin(v1, v2);
  if (*(v0 + 32))
  {
    sub_100106AA8(v3);
  }

  *(v0 + 32), v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t sub_100106A50()
{
  sub_100106838();

  return swift_deallocClassInstance();
}

void sub_100106AA8(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    sub_100107C94();

    v3 = sub_1002167C4();
    if (v4)
    {
      HIDWORD(v22) = v3;
      v11 = v3;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v12 = v11;
      v19 = v2;
    }

    else
    {
      v2, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v2, v25, v26, v27, v28, vars0, vars8;
      v19 = *(v1 + 32);
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
    }

    v19, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23, v24, v25, v26, v27, v28, vars0, vars8;
  }

  else
  {
    sub_100107D3C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }
}

void sub_100106BB0(void *a1@<X0>, void *a2@<X8>)
{
  v161 = a2;
  v156 = sub_100216254();
  v3 = *(v156 - 1);
  __chkstk_darwin(v156, v4);
  v159 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_100216274();
  v154 = *(v155 - 1);
  __chkstk_darwin(v155, v6);
  v153 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1002162D4();
  v157 = *(v158 - 1);
  v9 = __chkstk_darwin(v158, v8);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v149 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v149 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v149 - v22;
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v149 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v150 = &v149 - v30;
  __chkstk_darwin(v29, v31);
  v151 = &v149 - v32;
  v33 = sub_100216384();
  v162 = *(v33 - 8);
  v35 = __chkstk_darwin(v33, v34);
  v37 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v38);
  v40 = &v149 - v39;
  v152 = a1;
  sub_1000060A0(a1, v169);
  v160 = sub_10001148C(&unk_10029DB10, &unk_1002267B0);
  if (swift_dynamicCast())
  {
    v41 = v168;
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v42 = sub_100217114();
    v50 = v42;
    v51 = 0;
    v52 = 1 << v41[1]._TtCs12_SwiftObject_opaque[0];
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *v41[2]._TtCs12_SwiftObject_opaque;
    v55 = (v52 + 63) >> 6;
    v162 = v42 + 64;
    if (v54)
    {
      while (1)
      {
        v56 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
LABEL_11:
        v59 = v56 | (v51 << 6);
        sub_100019390(*v41[1].endpoint + 40 * v59, v165);
        sub_1000060A0(*v41[1].containerMap + 32 * v59, v167);
        sub_100106BB0(v167, v164);
        sub_100006128(v167, v60, v61, v62, v63, v64, v65, v66);
        *(v162 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        v67 = v50[6] + 40 * v59;
        v68 = v165[0];
        v69 = v165[1];
        *(v67 + 32) = v166;
        *v67 = v68;
        *(v67 + 16) = v69;
        sub_1000125AC(v164, (v50[7] + 32 * v59));
        v70 = v50[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          break;
        }

        v50[2] = v72;
        if (!v54)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v57 = v51;
      while (1)
      {
        v51 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v51 >= v55)
        {
          v41, v43, v44, v45, v46, v47, v48, v49, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
          v106 = v161;
          v161[3] = v160;
          *v106 = v50;
          goto LABEL_28;
        }

        v58 = *&v41[2]._TtCs12_SwiftObject_opaque[8 * v51];
        ++v57;
        if (v58)
        {
          v56 = __clz(__rbit64(v58));
          v54 = (v58 - 1) & v58;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v160 = v3;
    v73 = sub_10001148C(&qword_10029D148, &qword_100225F40);
    if (swift_dynamicCast())
    {
      v81 = *&v164[0];
      v82 = *(*&v164[0] + 16);
      if (v82)
      {
        v168 = _swiftEmptyArrayStorage;
        sub_100187764(0, v82, 0, v76, v77, v78, v79, v80);
        v83 = v168;
        v84 = &v81[1];
        do
        {
          sub_1000060A0(v84, v167);
          sub_100106BB0(v167, v165);
          sub_100006128(v167, v85, v86, v87, v88, v89, v90, v91);
          v168 = v83;
          v98 = *v83->endpoint;
          v97 = *v83->containerMap;
          if (v98 >= v97 >> 1)
          {
            sub_100187764((v97 > 1), v98 + 1, 1, v92, v93, v94, v95, v96);
            v83 = v168;
          }

          *v83->endpoint = v98 + 1;
          sub_1000125AC(v165, v83[v98 + 1]._TtCs12_SwiftObject_opaque);
          v84 += 32;
          --v82;
        }

        while (v82);
        v81, v99, v100, v101, v102, v103, v104, v105, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
      }

      else
      {
        *&v164[0], v74, v75, v76, v77, v78, v79, v80, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
        v83 = _swiftEmptyArrayStorage;
      }

      v135 = v161;
      v161[3] = v73;
      *v135 = v83;
    }

    else if (swift_dynamicCast())
    {
      v107 = v165[0];
      v108 = sub_100216214(0);
      v110 = v109;
      v111 = v161;
      v161[3] = &type metadata for String;
      sub_100002BF0(v107, *(&v107 + 1), v112, v113, v114, v115, v116, v117);
      *v111 = v108;
      v111[1] = v110;
    }

    else if (swift_dynamicCast())
    {
      (*(v162 + 32))(v37, v40, v33);
      sub_100216004();
      sub_1002162A4();
      v163 = v33;
      v125 = *(v157 + 1);
      v126 = v158;
      v125(v11, v158);
      sub_1002162B4();
      v125(v15, v126);
      sub_100216284();
      v125(v19, v126);
      v127 = v154;
      v128 = v153;
      v129 = v155;
      (*(v154 + 104))(v153, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v155);
      sub_1002162C4();
      (*(v127 + 8))(v128, v129);
      v125(v23, v126);
      v130 = v150;
      sub_100216294();
      v125(v27, v126);
      v131 = v160;
      v132 = v159;
      v133 = v156;
      (*(v160 + 104))(v159, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v156);
      v134 = v151;
      sub_100216264();
      (*(v131 + 8))(v132, v133);
      v125(v130, v126);
      v161[3] = &type metadata for String;
      sub_100107DE4();
      sub_100216364();
      v125(v134, v126);
      (*(v162 + 8))(v37, v163);
    }

    else
    {
      v136 = objc_opt_self();
      sub_10001148C(&qword_10029D150, &qword_100226560);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_10021D600;
      v138 = v152;
      sub_1000060A0(v152, v137 + 32);
      isa = sub_100216B14().super.isa;
      v137, v140, v141, v142, v143, v144, v145, v146, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
      LODWORD(v137) = [v136 isValidJSONObject:isa];

      if (v137)
      {
        sub_1000060A0(v138, v161);
      }

      else
      {
        sub_1000060A0(v138, v165);
        v147 = sub_100216994();
        v148 = v161;
        v161[3] = &type metadata for String;
        *v148 = v147;
        v148[1] = v118;
      }
    }

LABEL_28:
    sub_100006128(v169, v118, v119, v120, v121, v122, v123, v124);
  }
}

void sub_10010755C(uint64_t a1, void *a2)
{
  sub_100106BB0(a2, v28);
  v2 = objc_opt_self();
  sub_100006484(v28, v28[3]);
  v26 = 0;
  v3 = [v2 dataWithJSONObject:sub_100217194() options:6 error:&v26];
  swift_unknownObjectRelease();
  v4 = v26;
  if (v3)
  {
    v5 = sub_100216224();
    v7 = v6;

    v26 = v5;
    v27 = v7;
    sub_100107D90();
    v8 = sub_1002167C4();
    if (v15)
    {
      v16 = v8;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v17 = v16;
    }

    sub_100002BF0(v5, v7, v9, v10, v11, v12, v13, v14);
    sub_100006128(v28, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = v4;
    sub_100216154();

    swift_willThrow();
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_100216FD4(70);
    v29._object = 0x800000010023B250;
    v29._countAndFlagsBits = 0xD000000000000044;
    sub_100216A14(v29);
    sub_10001148C(&unk_10029D560, qword_10021D450);
    sub_100217094();
    sub_1002170E4();
    __break(1u);
  }
}

void sub_100107794(void *a1)
{
  if (*(v1 + 20) == 1 && (sub_100107C94(), v3 = sub_1002167C4(), (v4 & 1) != 0))
  {
    v5 = v3;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v5;
  }

  else
  {
    *(v1 + 20) = 1;
    sub_10010755C(*(v1 + 16), a1);
  }
}

void sub_1001078BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000124E8(a3, &v27);
  if (!v28)
  {
    sub_1000114D4(&v27, &unk_100297770, &unk_10021DF90);
    return;
  }

  sub_1000125AC(&v27, v29);
  if (*(v3 + 20) == 1)
  {
    *&v27 = 44;
    *(&v27 + 1) = 0xE100000000000000;
    sub_100107C94();
    v7 = sub_1002167C4();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  *(v3 + 20) = 1;
  v9 = *(v3 + 16);
  v28 = &type metadata for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;

  sub_10010755C(v9, &v27);
  if (!v4)
  {
    sub_100006128(&v27, v10, v11, v12, v13, v14, v15, v16);
    *&v27 = 58;
    *(&v27 + 1) = 0xE100000000000000;
    sub_100107C94();
    v7 = sub_1002167C4();
    if ((v25 & 1) == 0)
    {
      sub_10010755C(v9, v29);
      goto LABEL_10;
    }

LABEL_8:
    v26 = v7;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v17 = v26;
LABEL_10:
    v24 = v29;
    goto LABEL_11;
  }

  sub_100006128(v29, v10, v11, v12, v13, v14, v15, v16);
  v24 = &v27;
LABEL_11:
  sub_100006128(v24, v17, v18, v19, v20, v21, v22, v23);
}

void sub_100107A88(_TtC18TrustedPeersHelper6Client *a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (*(v3 + 20) == 1)
  {
    v30 = 44;
    v31 = 0xE100000000000000;
    sub_100107C94();
    v8 = sub_1002167C4();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  *(v3 + 20) = 1;
  v10 = *(v3 + 16);
  v32 = &type metadata for String;
  v30 = a1;
  v31 = a2;

  sub_10010755C(v10, &v30);
  if (v4)
  {
    sub_100006128(&v30, v11, v12, v13, v14, v15, v16, v17);
    return;
  }

  sub_100006128(&v30, v11, v12, v13, v14, v15, v16, v17);
  v30 = 58;
  v31 = 0xE100000000000000;
  sub_100107C94();
  v8 = sub_1002167C4();
  if (v18)
  {
LABEL_6:
    v19 = v8;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v20 = v19;
  }

  else
  {
    type metadata accessor for StreamingEncoderArray();
    swift_allocObject();
    v21 = sub_100106528(v10, 0x5B, 0xE100000000000000, 93, 0xE100000000000000);
    v22 = a3();
    sub_100106AA8(v22);
    v21, v23, v24, v25, v26, v27, v28, v29;
  }
}

unint64_t sub_100107C94()
{
  result = qword_10029D130;
  if (!qword_10029D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D130);
  }

  return result;
}

unint64_t sub_100107CE8()
{
  result = qword_10029DB30;
  if (!qword_10029DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DB30);
  }

  return result;
}

unint64_t sub_100107D3C()
{
  result = qword_10029D138;
  if (!qword_10029D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D138);
  }

  return result;
}

unint64_t sub_100107D90()
{
  result = qword_10029D140;
  if (!qword_10029D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D140);
  }

  return result;
}

unint64_t sub_100107DE4()
{
  result = qword_10029D158;
  if (!qword_10029D158)
  {
    sub_1002162D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D158);
  }

  return result;
}

uint64_t sub_100107E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100185DC4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_100216194();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100015B28(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100186CCC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_100216194();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1001850D4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_100216194();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100108000(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185F90(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native, v11, v12, v13, v46, *v4, v55, v59, v63, v67, v71, v75, vars0, vars8);
    a4, v14, v15, v16, v17, v18, v19, v20, v47, v51, v56, v60, v64, v68, v72, v76, vars0b, vars8b;
    *v4 = v52;
  }

  else
  {
    v21 = sub_100015A28(a3, a4);
    v23 = v22;
    a4, v22, v24, v25, v26, v27, v28, v29, v46, v50, v55, v59, v63, v67, v71, v75, vars0, vars8;
    if (v23)
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v5;
      v53 = *v5;
      if (!v30)
      {
        sub_100186F40();
        v38 = v53;
      }

      *(*(v38 + 48) + 16 * v21 + 8), v31, v32, v33, v34, v35, v36, v37, v48, v53, v57, v61, v65, v69, v73, v77, vars0a, vars8a;
      *(*(v38 + 56) + 16 * v21 + 8), v39, v40, v41, v42, v43, v44, v45, v49, v54, v58, v62, v66, v70, v74, v78, vars0c, vars8c;
      sub_1001853F4(v21, v38);
      *v5 = v38;
    }
  }
}

void sub_100108108(uint64_t a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v3;
    sub_100186290(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_100297D60, &qword_10021D770);
    a3, v9, v10, v11, v12, v13, v14, v15, v34, v37, v40, v42, v44, v46, v48, v50, vars0, vars8;
    *v3 = v38;
  }

  else
  {
    v16 = sub_100015A28(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24, v34, v36, v40, v42, v44, v46, v48, v50, vars0, vars8;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v39 = *v4;
      if (!v25)
      {
        sub_100187218(&qword_100297D60, &qword_10021D770);
        v33 = v39;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32, v35, v39, v41, v43, v45, v47, v49, v51, vars0a, vars8a;

      sub_1001855A4(v16, v33);
      *v4 = v33;
    }
  }
}

void *sub_100108220(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1002170C4();

    if (v4)
    {
      sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100015AE4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1001082E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a1;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_100216ED4();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  if (v10)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_1001877C4(0, (v10 & ~(v10 >> 63)), 0, a4, a5, a6, a7, a8);
    v48 = _swiftEmptyArrayStorage;
    if (v47)
    {
      v11 = sub_100216E74();
    }

    else
    {
      v11 = sub_100216E44();
      v12 = *(v9 + 36);
    }

    v52 = v11;
    v53 = v12;
    v54 = v47 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 < 0)
      {
        v14 = v9;
      }

      v44 = (v9 + 56);
      v45 = v14;
      v42 = v8;
      v43 = (v9 + 64);
      v46 = v10;
      while (v13 < v10)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_37;
        }

        v23 = v52;
        v22 = v53;
        v24 = v54;
        v25 = v9;
        sub_10018F7B0(v52, v53, v54, v9, type metadata accessor for BottleMO);
        v27 = v26;
        v28 = sub_1001906BC(v26);

        v29 = v48;
        v55 = v48;
        v31 = v48[2];
        v30 = v48[3];
        if (v31 >= v30 >> 1)
        {
          sub_1001877C4((v30 > 1), (v31 + 1), 1, v16, v17, v18, v19, v20);
          v29 = v55;
        }

        v29[2] = v31 + 1;
        v29[v31 + 4] = v28;
        v48 = v29;
        if (v47)
        {
          if (!v24)
          {
            goto LABEL_42;
          }

          v9 = v25;
          if (sub_100216E94())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v10 = v46;
          sub_10001148C(&qword_10029DB78, &qword_100226808);
          v15 = sub_100216BF4();
          sub_100216F44();
          v15(&v49, 0);
          if (v13 == v46)
          {
LABEL_34:
            sub_1001A9594(v52, v53, v54, v16, v17, v18, v19, v20, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
            return;
          }
        }

        else
        {
          if (v24)
          {
            goto LABEL_43;
          }

          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v9 = v25;
          v32 = (1 << *(v25 + 32));
          if (v23 >= v32)
          {
            goto LABEL_38;
          }

          v33 = v23 >> 6;
          v34 = *(v44 + (v23 >> 6));
          if (((v34 >> v23) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v25 + 36) != v22)
          {
            goto LABEL_40;
          }

          v35 = v34 & (-2 << (v23 & 0x3F));
          if (v35)
          {
            v32 = (__clz(__rbit64(v35)) | v23 & 0x7FFFFFFFFFFFFFC0);
            v10 = v46;
          }

          else
          {
            v36 = v33 << 6;
            v37 = v33 + 1;
            v38 = &v43[8 * v33];
            v10 = v46;
            while (v37 < &v32[1].containerMap[7] >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                sub_1001A9594(v23, v22, 0, v16, v17, v18, v19, v20, v42, v43, v44, v45, v46, 0, v48, v49, v50, v51);
                v32 = (__clz(__rbit64(v39)) + v36);
                goto LABEL_33;
              }
            }

            sub_1001A9594(v23, v22, 0, v16, v17, v18, v19, v20, v42, v43, v44, v45, v46, 0, v48, v49, v50, v51);
          }

LABEL_33:
          v41 = *(v9 + 36);
          v52 = v32;
          v53 = v41;
          v54 = 0;
          if (v13 == v10)
          {
            goto LABEL_34;
          }
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
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_100108644(uint64_t a1)
{
  v34 = (a1 & 0xC000000000000001);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100216ED4();
    if (!v3)
    {
      return;
    }

    v42 = _swiftEmptyArrayStorage;
    sub_100217064();
    v39 = sub_100216E74();
    v40 = v4;
    v41 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v42 = _swiftEmptyArrayStorage;
  sub_100217064();
  v5 = sub_100216E44();
  v6 = *(a1 + 36);
  v39 = v5;
  v40 = v6;
  v41 = 0;
LABEL_7:
  v30 = v1;
  v7 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v8 = a1;
  }

  v32 = (a1 + 56);
  v33 = v8;
  v31 = (a1 + 64);
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_33;
    }

    v17 = v39;
    v16 = v40;
    v18 = v41;
    sub_10018F7B0(v39, v40, v41, a1, type metadata accessor for MachineMO);
    v20 = v19;
    sub_1001E6DA8();

    sub_100217044();
    sub_100217074();
    sub_100217084();
    sub_100217054();
    if (v34)
    {
      if (!v18)
      {
        goto LABEL_37;
      }

      if (sub_100216E94())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10001148C(&qword_10029D788, &unk_1002265D8);
      v9 = sub_100216BF4();
      sub_100216F44();
      v9(&v35, 0);
      if (v7 == v3)
      {
LABEL_30:
        sub_1001A9594(v39, v40, v41, v10, v11, v12, v13, v14, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        return;
      }
    }

    else
    {
      if (v18)
      {
        goto LABEL_38;
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v21 = (1 << *(a1 + 32));
      if (v17 >= v21)
      {
        goto LABEL_34;
      }

      v22 = v17 >> 6;
      v23 = *(v32 + (v17 >> 6));
      if (((v23 >> v17) & 1) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v16)
      {
        goto LABEL_36;
      }

      v24 = v23 & (-2 << (v17 & 0x3F));
      if (v24)
      {
        v21 = (__clz(__rbit64(v24)) | v17 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v25 = v22 << 6;
        v26 = v22 + 1;
        v27 = &v31[8 * v22];
        while (v26 < &v21[1].containerMap[7] >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1001A9594(v17, v16, 0, v10, v11, v12, v13, v14, v30, v31, v32, v33, 0, v35, v36, v37, v38, v39);
            v21 = (__clz(__rbit64(v28)) + v25);
            goto LABEL_29;
          }
        }

        sub_1001A9594(v17, v16, 0, v10, v11, v12, v13, v14, v30, v31, v32, v33, 0, v35, v36, v37, v38, v39);
      }

LABEL_29:
      v39 = v21;
      v40 = v16;
      v41 = 0;
      if (v7 == v3)
      {
        goto LABEL_30;
      }
    }
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
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_100108960(uint64_t a1)
{
  v3 = type metadata accessor for PolicyDocumentKey(0);
  v48 = *(v3 - 1);
  v49 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = (a1 & 0xC000000000000001);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_100216ED4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    v57 = _swiftEmptyArrayStorage;
    sub_10018788C(0, v7 & ~(v7 >> 63), 0);
    v52 = v57;
    if (v50)
    {
      v8 = sub_100216E74();
    }

    else
    {
      v8 = sub_100216E44();
      v9 = *(a1 + 36);
    }

    v54 = v8;
    v55 = v9;
    v56 = v50 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v46 = v7;
      v47 = v6;
      v51 = v1;
      v10 = 0;
      v11 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (a1 < 0)
      {
        v11 = a1;
      }

      v44 = (a1 + 56);
      v45 = v11;
      v43 = (a1 + 64);
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v20 = v54;
        v19 = v55;
        v21 = v56;
        v22 = a1;
        sub_10018F9BC(v54, v55, v56, a1);
        v24 = v23;
        *(&v42 - 2) = __chkstk_darwin(v23, v25);
        sub_1001A13C4(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);
        v26 = v47;
        v27 = v51;
        sub_100216654();
        v51 = v27;

        v28 = v52;
        v57 = v52;
        v30 = v52[2];
        v29 = v52[3];
        if (v30 >= v29 >> 1)
        {
          sub_10018788C((v29 > 1), v30 + 1, 1);
          v28 = v57;
        }

        v28[2] = v30 + 1;
        v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = v28;
        sub_1001AC038(v26, v28 + v31 + v48[9] * v30, type metadata accessor for PolicyDocumentKey);
        if (v50)
        {
          if (!v21)
          {
            goto LABEL_42;
          }

          a1 = v22;
          if (sub_100216E94())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v46;
          sub_10001148C(&qword_10029D848, &qword_100226638);
          v12 = sub_100216BF4();
          sub_100216F44();
          v12(v53, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1001A9594(v54, v55, v56, v13, v14, v15, v16, v17, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
            return;
          }
        }

        else
        {
          if (v21)
          {
            goto LABEL_43;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v22;
          v32 = (1 << *(v22 + 32));
          if (v20 >= v32)
          {
            goto LABEL_38;
          }

          v33 = v20 >> 6;
          v34 = *(v44 + (v20 >> 6));
          if (((v34 >> v20) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v22 + 36) != v19)
          {
            goto LABEL_40;
          }

          v35 = v34 & (-2 << (v20 & 0x3F));
          if (v35)
          {
            v32 = (__clz(__rbit64(v35)) | v20 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v36 = v33 << 6;
            v37 = v33 + 1;
            v38 = &v43[8 * v33];
            while (v37 < &v32[1].containerMap[7] >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                sub_1001A9594(v20, v19, 0, v13, v14, v15, v16, v17, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
                v32 = (__clz(__rbit64(v39)) + v36);
                goto LABEL_33;
              }
            }

            sub_1001A9594(v20, v19, 0, v13, v14, v15, v16, v17, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          }

LABEL_33:
          v41 = *(v22 + 36);
          v54 = v32;
          v55 = v41;
          v56 = 0;
          v7 = v46;
          if (v10 == v46)
          {
            goto LABEL_34;
          }
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
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_100108DDC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100216E74();
    v5 = v4;
    v6 = sub_100216F34();
    v8 = v7;
    v9 = sub_100216EA4();
    sub_1001A9594(v6, v8, 1, v10, v11, v12, v13, v14, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
    if (v9)
    {
LABEL_3:
      sub_1001A9594(v3, v5, (v2 != 0), v15, v16, v17, v18, v19, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
      return 0;
    }
  }

  else
  {
    v3 = sub_100216E44();
    v5 = *(a1 + 36);
    if (v3 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_10018F7B0(v3, v5, v2 != 0, a1, type metadata accessor for BottleMO);
  v22 = v21;
  sub_1001A9594(v3, v5, (v2 != 0), v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
  return v22;
}

uint64_t sub_100108F0C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100216E74();
    v5 = v4;
    v6 = sub_100216F34();
    v8 = v7;
    v9 = sub_100216EA4();
    sub_1001A9594(v6, v8, 1, v10, v11, v12, v13, v14, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
    if (v9)
    {
LABEL_3:
      sub_1001A9594(v3, v5, (v2 != 0), v15, v16, v17, v18, v19, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
      return 0;
    }
  }

  else
  {
    v3 = sub_100216E44();
    v5 = *(a1 + 36);
    if (v3 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_10018F9BC(v3, v5, v2 != 0, a1);
  v22 = v21;
  sub_1001A9594(v3, v5, (v2 != 0), v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
  return v22;
}

void sub_100109078(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v1 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v25 = v6;
  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v7;
    v13 = v8;
    if ((v1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), (v16 = v32) == 0))
    {
LABEL_25:
      sub_10000D778(v1, v5, v25, v12, v13, v2, v3, v4);
      return;
    }

LABEL_17:
    v17 = [v16 machineID];
    if (v17)
    {
      v18 = v17;
      v24 = sub_100216974();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_100182D90(0, *(v26 + 2) + 1, 1, v26);
      }

      v22 = *(v26 + 2);
      v21 = *(v26 + 3);
      if (v22 >= v21 >> 1)
      {
        v26 = sub_100182D90((v21 > 1), v22 + 1, 1, v26);
      }

      *(v26 + 2) = v22 + 1;
      v23 = &v26[16 * v22];
      *(v23 + 4) = v24;
      *(v23 + 5) = v20;
    }

    else
    {
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      v13 = 0;
      goto LABEL_25;
    }

    v15 = *&v5[8 * v7];
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_100109320(void *a1, void (*a2)(void *, char *), uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v11 = type metadata accessor for CustodianRecoveryKeyMO();
  v12 = sub_100216D44();
  if (v6)
  {
    if (qword_100297520 != -1)
    {
LABEL_41:
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch count for chunkwise enumeration: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
  }

  else
  {
    v19 = v12;
    v20 = [a1 fetchBatchSize];
    if (v20)
    {
      v21 = v19 >= 0;
      if (v20 > 0)
      {
        v21 = v19 < 1;
      }

      if (!v21)
      {
        v22 = v19;
        v67 = a2;
        v66 = 0;
        v23 = &selRef_hasPeerWithID_error_;
        v24 = a5;
        v25 = &type metadata for Any;
        v59 = a4;
        v60 = v24;
        v57 = v11;
        LODWORD(v58) = a1;
        v65 = v22;
        v56 = v20;
        while (1)
        {
          v26 = v20 + v66;
          if (__OFADD__(v66, v20))
          {
            v26 = ((v20 + v66) >> 63) ^ 0x8000000000000000;
          }

          v61 = v26;
          v69 = 0;
          v63 = objc_autoreleasePoolPush();
          [a1 v23[303]];
          sub_100216E24();
          swift_unknownObjectRelease();
          sub_10001148C(&qword_10029D5F0, &qword_100226530);
          if (!swift_dynamicCast())
          {
            break;
          }

          v27 = v25;
          v19 = v68;
          [v68 setFetchBatchSize:0];
          [v68 setFetchOffset:v66];
          if (__OFSUB__(v65, v66))
          {
            __break(1u);
            goto LABEL_43;
          }

          v28 = [a1 fetchBatchSize];
          if (v28 >= v65 - v66)
          {
            v29 = (v65 - v66);
          }

          else
          {
            v29 = v28;
          }

          [v68 setFetchLimit:v29];
          v30 = sub_100216D54();
          v31 = v30;
          v32 = v30 & 0xFFFFFFFFFFFFFF8;
          if (v30 >> 62)
          {
            v33 = sub_1002170F4();
          }

          else
          {
            v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = 0;
          do
          {
            v35 = v34;
            if (v33 == v34)
            {
              break;
            }

            if ((v31 & 0xC000000000000001) != 0)
            {
              v36 = sub_100217014();
            }

            else
            {
              if (v34 >= *(v32 + 16))
              {
                goto LABEL_40;
              }

              v36 = *(v31 + 8 * v34 + 32);
            }

            v37 = v36;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v38 = objc_autoreleasePoolPush();
            v67(v37, &v69);
            objc_autoreleasePoolPop(v38);

            v34 = v35 + 1;
            v27 = &type metadata for Any;
          }

          while ((v69 & 1) == 0);
          v59(v31);
          v31, v39, v40, v41, v42, v43, v44, v45, v53, v54, v55, v56, v57, v58, v59, v60, v61, v63;
          [v5 refreshAllObjects];

          objc_autoreleasePoolPop(v64);
          if (v33 == v35)
          {
            v46 = v65 >= v62;
            v20 = v56;
            if (v56 > 0)
            {
              v46 = v62 >= v65;
            }

            v66 = v62;
            a1 = v58;
            v23 = &selRef_hasPeerWithID_error_;
            v25 = v27;
            if (!v46)
            {
              continue;
            }
          }

          return;
        }

        sub_1002170E4();
        __break(1u);
      }
    }

    else
    {
LABEL_43:
      __break(1u);
      swift_once();
      v47 = sub_100216774();
      sub_100002648(v47, qword_10029D160);
      swift_errorRetain();
      v48 = sub_100216754();
      v49 = sub_100216C74();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        swift_errorRetain();
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v52;
        *v51 = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to fetch for chunkwise enumeration: %{public}@", v50, 0xCu);
        sub_1000114D4(v51, &qword_10029D580, &unk_10021CCC0);
      }

      swift_willThrow();
      objc_autoreleasePoolPop(v63);
    }
  }
}

const char *sub_1001099A0()
{
  v1 = "EscrowCheckMigration";
  v2 = "TestDisableEscrowCheck";
  if (*v0 != 2)
  {
    v2 = "TestDisableEscrowRepair";
  }

  if (*v0)
  {
    v1 = "SEPBasedICSCHealingEnabled";
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

uint64_t sub_100109A00()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029D160);
  sub_100002648(v0, qword_10029D160);
  return sub_100216764();
}

uint64_t sub_100109A7C(uint64_t a1)
{
  v2 = sub_1001AC548();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100109AB8(uint64_t a1)
{
  v2 = sub_1001AC548();

  return Error<>._code.getter(a1, v2);
}

unint64_t ContainerError.errorDescription.getter(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_100216FD4(26);
      0xE000000000000000, v50, v51, v52, v53, v54, v55, v56, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v85 = 0xD000000000000018;
      v86 = 0x800000010023BAA0;
      v83 = a1;
      goto LABEL_12;
    case 2:
      v84 = 0;
      sub_100216FD4(52);
      v101._countAndFlagsBits = 0xD000000000000013;
      v101._object = 0x800000010023BA60;
      sub_100216A14(v101);
      v102._countAndFlagsBits = a1;
      v102._object = a2;
      sub_100216A14(v102);
      v42 = "prepared identity (";
      v12._countAndFlagsBits = 0xD00000000000001FLL;
      goto LABEL_18;
    case 3:
    case 6:
      return 0xD00000000000001ELL;
    case 4:
      sub_100216FD4(25);
      0xE000000000000000, v14, v15, v16, v17, v18, v19, v20, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v21 = 0x800000010023B6E0;
      v22 = 0xD000000000000017;
      goto LABEL_11;
    case 5:
      sub_100216FD4(45);
      0xE000000000000000, v57, v58, v59, v60, v61, v62, v63, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v21 = 0x800000010023B660;
      v22 = 0xD00000000000002BLL;
      goto LABEL_11;
    case 7:
      sub_100216FD4(44);
      0xE000000000000000, v43, v44, v45, v46, v47, v48, v49, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v85 = 0xD00000000000002ALL;
      v86 = 0x800000010023B560;
      LODWORD(v83) = a1;
      goto LABEL_12;
    case 8:
      sub_100216FD4(29);
      0xE000000000000000, v73, v74, v75, v76, v77, v78, v79, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v84 = 0x2072656550;
      v104._countAndFlagsBits = a1;
      v104._object = a2;
      sub_100216A14(v104);
      v42 = " does not match user ";
      v12._countAndFlagsBits = 0xD000000000000016;
LABEL_18:
      v12._object = (v42 | 0x8000000000000000);
      goto LABEL_19;
    case 9:
      sub_100216FD4(55);
      v99._countAndFlagsBits = 0xD000000000000035;
      v99._object = 0x800000010023B4D0;
      sub_100216A14(v99);
      v30 = [a1 description];
      v31 = sub_100216974();
      v33 = v32;

      v100._countAndFlagsBits = v31;
      v100._object = v33;
      sub_100216A14(v100);
      v33, v34, v35, v36, v37, v38, v39, v40, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      return v84;
    case 10:
      return 0xD000000000000018;
    case 11:
      return 0xD000000000000022;
    case 12:
      sub_100216FD4(28);
      0xE000000000000000, v23, v24, v25, v26, v27, v28, v29, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v21 = 0x800000010023B340;
      v22 = 0xD00000000000001ALL;
LABEL_11:
      v85 = v22;
      v86 = v21;
      v83 = a1;
LABEL_12:
      v103._countAndFlagsBits = sub_100217174();
      object = v103._object;
      sub_100216A14(v103);
      object, v65, v66, v67, v68, v69, v70, v71, v81, v83, v85, v86, v88, v90, v92, v94, vars0a, vars8a;
      return v84;
    case 13:
      result = 0x626D656D206E6F6ELL;
      switch(a1)
      {
        case 1uLL:
        case 3uLL:
        case 5uLL:
          result = 0xD000000000000014;
          break;
        case 4uLL:
          result = 0xD000000000000013;
          break;
        case 6uLL:
          return result;
        case 7uLL:
        case 0x28uLL:
          result = 0xD000000000000023;
          break;
        case 8uLL:
          result = 0xD00000000000001CLL;
          break;
        case 9uLL:
          result = 0xD000000000000020;
          break;
        case 0xAuLL:
        case 0x18uLL:
          result = 0xD000000000000025;
          break;
        case 0xBuLL:
          result = 0xD00000000000002CLL;
          break;
        case 0xCuLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x17uLL:
          result = 0xD00000000000001FLL;
          break;
        case 0xEuLL:
          result = 0xD000000000000018;
          break;
        case 0xFuLL:
          result = 0xD000000000000024;
          break;
        case 0x10uLL:
        case 0x2BuLL:
          result = 0xD00000000000002ALL;
          break;
        case 0x11uLL:
          result = 0xD000000000000028;
          break;
        case 0x12uLL:
        case 0x24uLL:
          result = 0xD000000000000026;
          break;
        case 0x15uLL:
        case 0x2CuLL:
        case 0x2DuLL:
          result = 0xD00000000000001ALL;
          break;
        case 0x16uLL:
        case 0x1BuLL:
          result = 0xD000000000000029;
          break;
        case 0x19uLL:
          result = 0xD000000000000017;
          break;
        case 0x1AuLL:
        case 0x21uLL:
        case 0x25uLL:
          result = 0xD000000000000011;
          break;
        case 0x1CuLL:
          result = 0xD00000000000002ELL;
          break;
        case 0x1DuLL:
          result = 0xD00000000000001BLL;
          break;
        case 0x1EuLL:
          return 0xD00000000000001ELL;
        case 0x1FuLL:
          result = 0xD000000000000045;
          break;
        case 0x20uLL:
        case 0x2AuLL:
          return 0xD000000000000022;
        case 0x22uLL:
          result = 0xD00000000000002BLL;
          break;
        case 0x23uLL:
          result = 0xD00000000000002DLL;
          break;
        case 0x27uLL:
          result = 0xD000000000000027;
          break;
        case 0x2EuLL:
          result = 0xD000000000000018;
          break;
        case 0x2FuLL:
        case 0x30uLL:
          result = 0xD000000000000016;
          break;
        default:
          result = 0xD000000000000019;
          break;
      }

      return result;
    default:
      sub_100216FD4(26);
      0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, v80, v82, 0, 0xE000000000000000, v87, v89, v91, v93, vars0, vars8;
      v84 = 0xD000000000000018;
      v12._countAndFlagsBits = a1;
      v12._object = a2;
LABEL_19:
      sub_100216A14(v12);
      return v84;
  }
}

uint64_t ContainerError.errorCode.getter(uint64_t a1, uint64_t a2, char a3)
{
  result = 11;
  switch(a3)
  {
    case 1:
      result = 12;
      break;
    case 2:
      result = 13;
      break;
    case 3:
      result = 31;
      break;
    case 4:
      result = 38;
      break;
    case 5:
      result = 40;
      break;
    case 6:
      result = 44;
      break;
    case 7:
      result = 46;
      break;
    case 8:
      result = 48;
      break;
    case 9:
      result = 49;
      break;
    case 10:
      result = 53;
      break;
    case 11:
      result = 54;
      break;
    case 12:
      result = 59;
      break;
    case 13:
      result = qword_100226930[a1];
      break;
    default:
      return result;
  }

  return result;
}

id ContainerError.underlyingError.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if (a3 > 9u)
  {
    if (a3 == 10 || a3 == 11)
    {
      return sub_100216144();
    }

    if (a3 != 12)
    {
      return result;
    }

LABEL_9:
    v5 = objc_allocWithZone(NSError);
    v6 = sub_100216964();
    v7 = [v5 initWithDomain:v6 code:a1 userInfo:0];

    return v7;
  }

  if (a3 - 4 < 2)
  {
    goto LABEL_9;
  }

  if (a3 == 3 || a3 == 6)
  {
    return sub_100216144();
  }

  return result;
}

void *ContainerError.errorUserInfo.getter(void *a1, void *a2, char a3)
{
  v5 = ContainerError.errorDescription.getter(a1, a2, a3);
  v7 = &_swiftEmptyDictionarySingleton;
  if (v6)
  {
    v8 = v5;
    v9 = v6;
    v10 = sub_100216974();
    v12 = v11;
    v45 = &type metadata for String;
    *&v43 = v8;
    *(&v43 + 1) = v9;
    sub_1000125AC(&v43, &v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(&v40, v10, v12, isUniquelyReferenced_nonNull_native);
    v12, v14, v15, v16, v17, v18, v19, v20, v37, &_swiftEmptyDictionarySingleton, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, v45;
    v7 = v38;
  }

  if (a3 <= 0xCu)
  {
    if (((1 << a3) & 0xC48) != 0)
    {
      v21 = sub_100216144();
LABEL_8:
      v24 = sub_100216974();
      v26 = v25;
      v45 = sub_10000200C(0, &qword_100297CE8, NSError_ptr);
      *&v43 = v21;
      sub_1000125AC(&v43, &v40);
      v27 = v21;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_100185894(&v40, v24, v26, v28);
      v26, v29, v30, v31, v32, v33, v34, v35, v37, v7, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, v45;

      return v39;
    }

    if (((1 << a3) & 0x1030) != 0)
    {
      v22 = objc_allocWithZone(NSError);
      v23 = sub_100216964();
      v21 = [v22 initWithDomain:v23 code:a1 userInfo:0];

      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  return v7;
}

uint64_t sub_10010A6CC()
{
  result = 11;
  switch(*(v0 + 16))
  {
    case 1:
      result = 12;
      break;
    case 2:
      result = 13;
      break;
    case 3:
      result = 31;
      break;
    case 4:
      result = 38;
      break;
    case 5:
      result = 40;
      break;
    case 6:
      result = 44;
      break;
    case 7:
      result = 46;
      break;
    case 8:
      result = 48;
      break;
    case 9:
      result = 49;
      break;
    case 0xA:
      result = 53;
      break;
    case 0xB:
      result = 54;
      break;
    case 0xC:
      result = 59;
      break;
    case 0xD:
      result = qword_100226930[*v0];
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10010A774()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1002168D4();

  v4 = sub_100216974();
  v12 = v5;
  if (!*v3->endpoint)
  {
    v3, v5, v6, v7, v8, v9, v10, v11, v145, v155, v165, v166, v167, v168, v169, v170, v171, v172;
    v56 = v12;
LABEL_10:
    v56, v22, v23, v24, v25, v26, v27, v28, v146, v156, v165, v166, v167, v168, v169, v170, v171, v172;
    goto LABEL_11;
  }

  v13 = sub_100015A28(v4, v5);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21, v145, v155, v165, v166, v167, v168, v169, v170, v171, v172;
  if ((v15 & 1) == 0)
  {
    v56 = v3;
    goto LABEL_10;
  }

  sub_1000060A0(*v3[1].containerMap + 32 * v13, &v165);
  v3, v29, v30, v31, v32, v33, v34, v35, v146, v156, v165, v166, v167, v168, v169, v170, v171, v172;
  sub_10001148C(&unk_10029D560, qword_10021D450);
  if (swift_dynamicCast())
  {
    v36 = sub_100216144();
    if ([v1 code] == 134110)
    {
      v37 = [v1 domain];
      v38 = sub_100216974();
      v40 = v39;

      v42 = sub_100216974();
      v48 = v41;
      if (v38 == v42 && v40 == v41)
      {
        v40, v41, v42, v43, v44, v45, v46, v47, v147, v157, v165, v166, v167, v168, v169, v170, v171, v172;
        v48, v49, v50, v51, v52, v53, v54, v55, v148, v158, v165, v166, v167, v168, v169, v170, v171, v172;
      }

      else
      {
        v94 = sub_1002171A4();
        v40, v95, v96, v97, v98, v99, v100, v101, v147, v157, v165, v166, v167, v168, v169, v170, v171, v172;
        v48, v102, v103, v104, v105, v106, v107, v108, v152, v162, v165, v166, v167, v168, v169, v170, v171, v172;
        if ((v94 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if ([v36 code] == 11)
      {
        v109 = [v36 domain];
        v110 = sub_100216974();
        v112 = v111;

        v113 = sub_100216974();
        v115 = v114;
        if (v110 == v113 && v112 == v114)
        {

          v112, v116, v117, v118, v119, v120, v121, v122, v149, v159, v165, v166, v167, v168, v169, v170, v171, v172;
          v115, v123, v124, v125, v126, v127, v128, v129, v153, v163, v165, v166, v167, v168, v169, v170, v171, v172;

          return 1;
        }

        v130 = sub_1002171A4();

        v112, v131, v132, v133, v134, v135, v136, v137, v149, v159, v165, v166, v167, v168, v169, v170, v171, v172;
        v115, v138, v139, v140, v141, v142, v143, v144, v154, v164, v165, v166, v167, v168, v169, v170, v171, v172;

        return (v130 & 1) != 0;
      }
    }

LABEL_25:

    return 0;
  }

LABEL_11:
  if ([v1 code] == 11)
  {
    v57 = [v1 domain];
    v58 = sub_100216974();
    v60 = v59;

    v61 = sub_100216974();
    v69 = v62;
    if (v58 == v61 && v60 == v62)
    {
      v60, v62, v63, v64, v65, v66, v67, v68, v147, v157, v165, v166, v167, v168, v169, v170, v171, v172;
      v69, v86, v87, v88, v89, v90, v91, v92, v151, v161, v165, v166, v167, v168, v169, v170, v171, v172;
    }

    else
    {
      v71 = sub_1002171A4();
      v60, v72, v73, v74, v75, v76, v77, v78, v147, v157, v165, v166, v167, v168, v169, v170, v171, v172;
      v69, v79, v80, v81, v82, v83, v84, v85, v150, v160, v165, v166, v167, v168, v169, v170, v171, v172;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

id sub_10010AAD0()
{
  result = [v0 hasChanges];
  if (result)
  {
    v29[0] = 0;
    if ([v0 save:v29])
    {
      v2 = v29[0];
      return [v0 refreshAllObjects];
    }

    else
    {
      v3 = v29[0];
      v4 = sub_100216154();

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v5 = sub_100216774();
      sub_100002648(v5, qword_10029D160);
      swift_errorRetain();
      v6 = sub_100216754();
      v7 = sub_100216C74();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v10 = sub_100216994();
        v12 = v11;
        v13 = sub_100005FB0(v10, v11, v29);
        v12, v14, v15, v16, v17, v18, v19, v20, v28, v4, v29[0], v29[1], v29[2], v30, v31, v32, v33, v34;
        *(v8 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save moc: %{public}s", v8, 0xCu);
        sub_100006128(v9, v21, v22, v23, v24, v25, v26, v27);
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10010ACF0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10021D5F0;
  *(v7 + 32) = kSecClass;
  v80 = (v7 + 32);
  type metadata accessor for CFString(0);
  *(v7 + 40) = kSecClassInternetPassword;
  *(v7 + 64) = v8;
  *(v7 + 72) = kSecAttrAccessible;
  *(v7 + 80) = kSecAttrAccessibleWhenUnlocked;
  *(v7 + 104) = v8;
  *(v7 + 112) = kSecUseDataProtectionKeychain;
  *(v7 + 120) = 1;
  *(v7 + 144) = &type metadata for Bool;
  *(v7 + 152) = kSecAttrAccessGroup;
  *(v7 + 160) = 0xD00000000000001ALL;
  *(v7 + 168) = 0x8000000100227BB0;
  *(v7 + 184) = &type metadata for String;
  *(v7 + 192) = kSecAttrSynchronizable;
  *(v7 + 200) = 0;
  *(v7 + 224) = &type metadata for Bool;
  *(v7 + 232) = kSecAttrDescription;
  *(v7 + 240) = a3;
  *(v7 + 248) = a4;
  *(v7 + 264) = &type metadata for String;
  *(v7 + 272) = kSecAttrPath;
  *(v7 + 280) = a3;
  *(v7 + 288) = a4;
  *(v7 + 304) = &type metadata for String;
  *(v7 + 312) = kSecValueData;
  *(v7 + 344) = &type metadata for Data;
  *(v7 + 320) = a1;
  *(v7 + 328) = a2;
  swift_bridgeObjectRetain_n();
  v76 = kSecClass;
  v9 = kSecClassInternetPassword;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v74 = kSecUseDataProtectionKeychain;
  v72 = kSecAttrAccessGroup;
  v12 = kSecAttrSynchronizable;
  v13 = kSecAttrDescription;
  v14 = kSecAttrPath;
  v15 = kSecValueData;
  sub_100012558(a1, a2);
  v16 = sub_100018728(v7);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = 0;
  sub_1001A13C4(&qword_1002978D0, type metadata accessor for CFString, &unk_10021D394);
  isa = sub_1002168C4().super.isa;
  v18 = SecItemAdd(isa, &result);

  if (v18 == -25299)
  {
    v81 = v13;
    v26 = sub_100018728(_swiftEmptyArrayStorage);
    v85 = v26;
    if (*v16->endpoint && (v27 = v26, v28 = sub_100015974(v76), (v29 & 1) != 0))
    {
      sub_1000060A0(*v16[1].containerMap + 32 * v28, v87);
      sub_1000125AC(v87, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v27;
      sub_100185754(v86, v76, isUniquelyReferenced_nonNull_native);
      v85 = v27;
    }

    else
    {
      sub_100015790(v87, v76);
      sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
    }

    if (*v16->endpoint && (v31 = sub_100015974(v12), (v32 & 1) != 0))
    {
      sub_1000060A0(*v16[1].containerMap + 32 * v31, v87);
      sub_1000125AC(v87, v86);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v85;
      sub_100185754(v86, v12, v33);
      if (!*v16->endpoint)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100015790(v87, v12);
      sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
      if (!*v16->endpoint)
      {
        goto LABEL_16;
      }
    }

    v34 = sub_100015974(v72);
    if (v35)
    {
      sub_1000060A0(*v16[1].containerMap + 32 * v34, v87);
      sub_1000125AC(v87, v86);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v85;
      sub_100185754(v86, v72, v36);
LABEL_17:
      if (*v16->endpoint && (v37 = sub_100015974(v13), (v38 & 1) != 0))
      {
        sub_1000060A0(*v16[1].containerMap + 32 * v37, v87);
        sub_1000125AC(v87, v86);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v85;
        sub_100185754(v86, kSecAttrServer, v39);
      }

      else
      {
        sub_100015790(v87, kSecAttrServer);
        sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
      }

      if (*v16->endpoint && (v40 = sub_100015974(v14), (v41 & 1) != 0))
      {
        sub_1000060A0(*v16[1].containerMap + 32 * v40, v87);
        sub_1000125AC(v87, v86);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v85;
        sub_100185754(v86, v14, v42);
      }

      else
      {
        sub_100015790(v87, v14);
        sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
      }

      if (*v16->endpoint && (v43 = sub_100015974(v74), (v44 & 1) != 0))
      {
        sub_1000060A0(*v16[1].containerMap + 32 * v43, v87);
        sub_1000125AC(v87, v86);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v85;
        sub_100185754(v86, v74, v45);
        v46 = v85;
      }

      else
      {
        sub_100015790(v87, v74);
        sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
        v46 = v85;
      }

      *&v86[0] = v16;
      sub_100015790(v87, v76);
      sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
      v47 = sub_1002168C4().super.isa;
      v46, v48, v49, v50, v51, v52, v53, v54, v66, a1, kSecUseDataProtectionKeychain, kSecAttrAccessibleWhenUnlocked, v72, v74, v76, a2, v81, v83;
      v55 = *&v86[0];
      v56 = sub_1002168C4().super.isa;
      v55, v57, v58, v59, v60, v61, v62, v63, v67, v69, v70, v71, v73, v75, v77, v79, v82, v84;
      v18 = SecItemUpdate(v47, v56);

      if (!v18)
      {
        return swift_unknownObjectRelease();
      }

LABEL_30:
      sub_1000561D0();
      swift_allocError();
      *v64 = v18;
      *(v64 + 8) = 0;
      *(v64 + 16) = 5;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

LABEL_16:
    sub_100015790(v87, v72);
    sub_1000114D4(v87, &unk_100297770, &unk_10021DF90);
    goto LABEL_17;
  }

  if (v18)
  {
    v16, v19, v20, v21, v22, v23, v24, v25, v66, a1, kSecUseDataProtectionKeychain, kSecAttrAccessibleWhenUnlocked, v72, v74, v76, a2, v80, v83;
    goto LABEL_30;
  }

  v16, v19, v20, v21, v22, v23, v24, v25, v66, a1, kSecUseDataProtectionKeychain, kSecAttrAccessibleWhenUnlocked, v72, v74, v76, a2, v80, v83;
  return swift_unknownObjectRelease();
}

uint64_t sub_10010B47C(uint64_t a1, void *a2)
{
  v24 = a2;
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v4;
  *(inited + 72) = kSecAttrAccessGroup;
  v51 = v4;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000100227BB0;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrDescription;
  *(inited + 120) = a1;
  *(inited + 128) = v24;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecReturnAttributes;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrSynchronizable;
  *(inited + 240) = 0;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = kSecUseDataProtectionKeychain;
  *(inited + 280) = 1;
  *(inited + 304) = &type metadata for Bool;
  *(inited + 312) = kSecMatchLimit;
  *(inited + 344) = v4;
  *(inited + 320) = kSecMatchLimitOne;
  v5 = kSecClass;
  v6 = kSecClassInternetPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrDescription;

  v9 = kSecReturnAttributes;
  v10 = kSecReturnData;
  v11 = kSecAttrSynchronizable;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecMatchLimit;
  v14 = kSecMatchLimitOne;
  v15 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  result = 0;
  sub_1001A13C4(&qword_1002978D0, type metadata accessor for CFString, &unk_10021D394);
  isa = sub_1002168C4().super.isa;
  v15, v17, v18, v19, v20, v21, v22, v23, v43, v45, a2, kSecClassInternetPassword, kSecClass, v51, (inited + 32), v54, v57, v59[0];
  LODWORD(v24) = SecItemCopyMatching(isa, &result);

  if (v24 || !result)
  {
    v24 = v24;
    v40 = 4;
LABEL_11:
    sub_1000561D0();
    swift_allocError();
    *v41 = v24;
    *(v41 + 8) = 0;
    *(v41 + 16) = v40;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v24;
  }

  v59[0] = result;
  swift_unknownObjectRetain();
  sub_10001148C(&qword_10029D998, &unk_100226728);
  if (!swift_dynamicCast())
  {
    v40 = 13;
    v24 = 31;
    goto LABEL_11;
  }

  if (*v55->endpoint && (v32 = sub_100015974(kSecValueData), (v25 & 1) != 0))
  {
    sub_1000060A0(*v55[1].containerMap + 32 * v32, v59);
    v55, v33, v34, v35, v36, v37, v38, v39, v44, v46, v48, v49, v50, v52, v53, v55, v58, v59[0];
    if (swift_dynamicCast())
    {
      v24 = v56;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v55, v25, v26, v27, v28, v29, v30, v31, v44, v46, v48, v49, v50, v52, v53, v55, v58, v59[0];
    v24 = 0;
  }

  swift_unknownObjectRelease();
  return v24;
}

void sub_10010B83C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v16 = [objc_opt_self() defaultManager];
  v4 = sub_100216964();
  v15 = [v16 identityForIdentifier:v4];

  if (!v15)
  {
    (a3)(0, 0);
    v9 = v16;
    goto LABEL_14;
  }

  v5 = [v15 resultType];
  if (v5 == 2)
  {
    v13 = [v15 error];
    (a3)(0, v13);

    v9 = v15;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    sub_1000561D0();
    v11 = swift_allocError();
    v12 = xmmword_100225F90;
  }

  else
  {
    if (!v5)
    {
      v6 = [v15 value];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 keyPair];

        if (!v8)
        {
LABEL_9:
          v6 = 0;
          goto LABEL_10;
        }

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {

          goto LABEL_9;
        }
      }

LABEL_10:
      v14 = v6;
      a3();

      v9 = v14;
LABEL_14:

      return;
    }

    sub_1000561D0();
    v11 = swift_allocError();
    v12 = xmmword_100225FA0;
  }

  *v10 = v12;
  *(v10 + 16) = 13;
  (a3)(0, v11);
}

void sub_10010BA8C(void *a1, void *a2, void (*a3)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6)
{
  if (a1)
  {
    v10 = a1;
    v70._countAndFlagsBits = a5;
    v70._object = a6;
    sub_100216A14(v70);
    v57 = v10;

    sub_100194B04(0x6974707972636E65, 0xEF2079656B2D6E6FLL, a3, a4, a5, a6, v57);
    0xEF2079656B2D6E6FLL, v11, v12, v13, v14, v15, v16, v17, v57, 0x6974707972636E65, 0xEF2079656B2D6E6FLL, v62, v63, v64, v65, v66, v67, v68;
    a4, v18, v19, v20, v21, v22, v23, v24;
    a6, v25, v26, v27, v28, v29, v30, v31, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    swift_errorRetain();
    v34 = sub_100216754();
    v35 = sub_100216C74();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = v37;
      *v36 = 136446210;
      v62 = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v38 = sub_100216994();
      v40 = v39;
      v41 = sub_100005FB0(v38, v39, &v60);
      v40, v42, v43, v44, v45, v46, v47, v48, v56, v60, v61, v62, v63, v64, v65, v66, v67, v68;
      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to load signing key: %{public}s", v36, 0xCu);
      sub_100006128(v37, v49, v50, v51, v52, v53, v54, v55);
    }

    a3(0, a2);
  }
}

_TtC18TrustedPeersHelper6Client *sub_10010BD08(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v171 = v5;

    v5 = &v171;
    sub_100217064();
    if (i < 0)
    {
      goto LABEL_44;
    }

    v165 = v6 & 0xC000000000000001;
    v164 = objc_opt_self();
    v8 = 0;
    v137 = (v6 & 0xFFFFFFFFFFFFFF8);
    *&v9 = 136446466;
    v144 = v9;
    *&v9 = 136446210;
    v132 = v9;
    v160 = v6;
    v163 = i;
    v168 = a3;
    while (!__OFADD__(v8, 1))
    {
      v170 = v8;
      v169 = v8 + 1;
      if (v165)
      {
        v18 = sub_100217014();
      }

      else
      {
        if (v8 >= v137[2])
        {
          goto LABEL_31;
        }

        v18 = *&v6[1]._TtCs12_SwiftObject_opaque[8 * v8];
      }

      v19 = v18;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v20 = sub_100216774();
      sub_100002648(v20, qword_10029D160);
      swift_unknownObjectRetain();
      v21 = v19;
      v22 = sub_100216754();
      v23 = sub_100216C54();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v24 = v144;
        swift_unknownObjectRetain();
        sub_10001148C(&unk_10029D7C8, &unk_1002265F8);
        v25 = sub_100216994();
        v27 = v26;
        v28 = sub_100005FB0(v25, v26, &v172);
        v27, v29, v30, v31, v32, v33, v34, v35, v132, *(&v132 + 1), v137, v140, v144, SDWORD2(v144), v149, v152, v156, v160;
        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v36 = v21;
        v37 = [v36 description];
        v38 = v21;
        v39 = sub_100216974();
        v41 = v40;

        v6 = v161;
        v42 = sub_100005FB0(v39, v41, &v172);
        v41, v43, v44, v45, v46, v47, v48, v49, v133, v135, v138, v141, v145, v147, v150, v153, v157, v161;
        *(v24 + 14) = v42;
        v21 = v38;
        _os_log_impl(&_mh_execute_header, v22, v23, "Making TLKShare for %{public}s for key %{public}s", v24, 0x16u);
        swift_arrayDestroy();
        i = v163;

        a3 = v168;
      }

      v172 = 0;
      if ([v164 share:v21 as:a2 to:a3 epoch:a4 poisoned:0 error:&v172])
      {
        v10 = v172;
      }

      else
      {
        v50 = v21;
        v51 = v172;
        v52 = sub_100216154();

        swift_willThrow();
        v5 = sub_100216144();
        v53 = [(Client *)v5 domain];
        v54 = sub_100216974();
        v56 = v55;

        if (v54 == 0x7974697275636573 && v56 == 0xE900000000000064)
        {
          0xE900000000000064, v57, v58, v59, v60, v61, v62, v63, v132, *(&v132 + 1), v137, v140, v144, SDWORD2(v144), v149, v152, v156, v160;
        }

        else
        {
          v64 = sub_1002171A4();
          v56, v65, v66, v67, v68, v69, v70, v71, v132, *(&v132 + 1), v137, v140, v144, SDWORD2(v144), v149, v152, v156, v160;
          if ((v64 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        if ([(Client *)v5 code]!= -25300)
        {
LABEL_29:
          swift_willThrow();
          v6, v106, v107, v108, v109, v110, v111, v112, v132, *(&v132 + 1), v137, v142, v144, SDWORD2(v144), v149, v154, v158, v160;

          v171, v113, v114, v115, v116, v117, v118, v119;
          return v5;
        }

        v152 = v5;
        v156 = v52;
        v140 = 0;
        v72 = v50;
        v73 = sub_100216754();
        v74 = sub_100216C54();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v172 = v76;
          *v75 = v132;
          v72 = v72;
          v77 = [v72 description];
          v78 = sub_100216974();
          v80 = v79;

          v81 = v78;
          v6 = v160;
          v82 = sub_100005FB0(v81, v80, &v172);
          v83 = v80;
          a3 = v168;
          v83, v84, v85, v86, v87, v88, v89, v90, v132, *(&v132 + 1), v137, 0, v144, SDWORD2(v144), v149, v152, v156, v160;
          *(v75 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v73, v74, "No TLK contents for %{public}s, no TLK share possible", v75, 0xCu);
          sub_100006128(v76, v91, v92, v93, v94, v95, v96, v97);
        }

        i = v163;
      }

      v5 = &v171;
      sub_100217044();
      sub_100217074();
      sub_100217084();
      sub_100217054();
      v8 = v170 + 1;
      if (v169 == i)
      {
        v6, v11, v12, v13, v14, v15, v16, v17, v132, *(&v132 + 1), v137, v140, v144, SDWORD2(v144), v149, v152, v156, v160;
        v105 = v171;
        v5 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v6, v120, v121, v122, v123, v124, v125, v126, v132, *(&v132 + 1), v137, v140, v144, SDWORD2(v144), v149, v152, v156, v160;
  v105 = _swiftEmptyArrayStorage;
LABEL_34:
  v127 = 0;
  v171 = v5;
  v128 = *v105->endpoint;
  while (v128 != v127)
  {
    if (v127 >= *v105->endpoint)
    {
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v129 = *&v105[1]._TtCs12_SwiftObject_opaque[8 * v127++];
    if (v129)
    {
      v130 = v129;
      sub_100216B04();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100216B44();
      }

      sub_100216B64();
      v5 = v171;
    }
  }

  v105, v98, v99, v100, v101, v102, v103, v104, v134, v136, v139, v143, v146, v148, v151, v155, v159, v162;
  return v5;
}

_TtC18TrustedPeersHelper6Client *sub_10010C3CC(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TLKShare(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010BD08(a1, a2, a3, a4);
  if (!v4)
  {
    v22 = v14;
    v40 = 0;
    if (v14 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
    {
      v24 = 0;
      v37 = (v22 & 0xFFFFFFFFFFFFFF8);
      v38 = v22 & 0xC000000000000001;
      a2 = _swiftEmptyArrayStorage;
      v35 = v22;
      v36 = v10;
      v34 = i;
      while (1)
      {
        if (v38)
        {
          v25 = sub_100217014();
        }

        else
        {
          if (v24 >= v37[2])
          {
            goto LABEL_17;
          }

          v25 = *&v22[1]._TtCs12_SwiftObject_opaque[8 * v24];
        }

        v27 = v25;
        v28 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        __chkstk_darwin(v25, v26);
        *(&v33 - 2) = v27;
        sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
        v29 = v40;
        sub_100216654();
        v40 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_100182964(0, *a2->endpoint + 1, 1, a2);
        }

        v10 = v36;
        v31 = *a2->endpoint;
        v30 = *a2->containerMap;
        if (v31 >= v30 >> 1)
        {
          a2 = sub_100182964((v30 > 1), v31 + 1, 1, a2);
        }

        v22 = v35;
        *a2->endpoint = v31 + 1;
        sub_1001AC038(v13, &a2->_TtCs12_SwiftObject_opaque[((v10[80] + 32) & ~v10[80]) + *(v10 + 9) * v31], type metadata accessor for TLKShare);
        ++v24;
        if (v28 == v34)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a2 = _swiftEmptyArrayStorage;
LABEL_20:
    v22, v15, v16, v17, v18, v19, v20, v21, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42;
  }

  return a2;
}

void *sub_10010C6BC(unint64_t a1, void *a2, void *a3)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);

  v7 = a2;
  v8 = sub_100216754();
  v9 = sub_100216C54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v10 = 134218242;
    if (a1 >> 62)
    {
      v19 = sub_1002170F4();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v19;
    a1, v11, v12, v13, v14, v15, v16, v17, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v10 + 12) = 2082;
    v20 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    v21 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8];

    v22 = sub_100005FB0(v20, v21, &v47);
    v21, v23, v24, v25, v26, v27, v28, v29, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v10 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to recover %ld shares for peer %{public}s", v10, 0x16u);
    sub_100006128(v18, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {

    a1, v37, v38, v39, v40, v41, v42, v43, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55;
  }

  return sub_10010C8B4(a1, v7, 0, 0, a3);
}

void *sub_10010C8B4(unint64_t a1, void *a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, void *a5)
{
  v482 = sub_100019560(_swiftEmptyArrayStorage);
  sub_10001148C(&qword_10029D8B0, &qword_100226670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  v489[0] = a2;
  type metadata accessor for OctagonSelfPeerKeys();
  sub_1001A13C4(&qword_10029D8B8, type metadata accessor for OctagonSelfPeerKeys, &protocol conformance descriptor for NSObject);
  v9 = a2;
  sub_100216F74();
  v487 = inited;
  v10 = sub_100019574(_swiftEmptyArrayStorage);
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8];
  }

  v12 = v9;

  v13 = sub_100216964();
  v11, v14, v15, v16, v17, v18, v19, v20, v370, v381, v392, v403, v413, v424, v434, v445, v456, v467;
  v489[0] = 0;
  v21 = [a5 peerWithID:v13 error:v489];

  p_cache = CKKSSOSSelfPeer.cache;
  v480 = v9;
  if (v489[0])
  {
    v23 = v489[0];

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    v25 = v23;
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      v30 = v25;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error getting ego peer from model: %{public}@", v28, 0xCu);
      sub_1000114D4(v29, &qword_10029D580, &unk_10021CCC0);

      v25 = v26;
      v26 = v30;
    }

    goto LABEL_10;
  }

  if (!v21)
  {
LABEL_10:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v32 = sub_100216774();
    sub_100002648(v32, qword_10029D160);
    v33 = sub_100216754();
    v34 = sub_100216C54();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No ego peer in model; no trusted peers", v35, 2u);
    }

    v382 = 0;
    goto LABEL_15;
  }

  v382 = v21;
  v238 = [v382 peerID];
  if (!v238)
  {
    sub_100216974();
    v240 = v239;
    v238 = sub_100216964();
    v240, v241, v242, v243, v244, v245, v246, v247, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
  }

  v248 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
  v489[0] = 0;
  v249 = [a5 calculateDynamicInfoForPeerWithID:v238 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:v248 currentMachineIDs:0 error:v489];

  if (v249)
  {
    v250 = qword_100297520;
    v251 = v489[0];
    if (v250 != -1)
    {
      swift_once();
    }

    v252 = sub_100216774();
    sub_100002648(v252, qword_10029D160);
    v253 = v249;
    v254 = sub_100216754();
    v255 = sub_100216C54();

    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *v256 = 138543362;
      *(v256 + 4) = v253;
      *v257 = v249;
      v258 = v253;
      _os_log_impl(&_mh_execute_header, v254, v255, "Using computed dynamic info for share recovery: %{public}@", v256, 0xCu);
      sub_1000114D4(v257, &qword_10029D580, &unk_10021CCC0);
      v12 = v9;

      p_cache = (CKKSSOSSelfPeer + 16);
    }

    v259 = [v253 includedPeerIDs];
    v260 = sub_100216BB4();

    v261 = a5;
    sub_10019097C(v260, v261, &v487);
    v260, v262, v263, v264, v265, v266, v267, v268, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
  }

  else
  {
    v269 = v489[0];
    v270 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v271 = sub_100216774();
    sub_100002648(v271, qword_10029D160);
    swift_errorRetain();
    v272 = sub_100216754();
    v273 = sub_100216C74();

    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v489[0] = v275;
      *v274 = 136446210;
      v488[0] = v270;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v276 = sub_100216994();
      v278 = v277;
      v279 = sub_100005FB0(v276, v277, v489);
      v278, v280, v281, v282, v283, v284, v285, v286, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
      *(v274 + 4) = v279;
      p_cache = (CKKSSOSSelfPeer + 16);
      _os_log_impl(&_mh_execute_header, v272, v273, "Unable to create dynamic info for share recovery: %{public}s", v274, 0xCu);
      sub_100006128(v275, v287, v288, v289, v290, v291, v292, v293);
    }

    else
    {
    }
  }

LABEL_15:
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v481 = 0;
    v457 = 0;
    v38 = 0;
    v39 = &v12[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    v435 = (a1 + 32);
    v446 = (a1 & 0xFFFFFFFFFFFFFF8);
    *&v36 = 136446210;
    v393 = v36;
    *&v36 = 136446466;
    v414 = v36;
    v484 = i;
    v479 = &v12[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v56 = sub_100217014();
      }

      else
      {
        if (v38 >= v446[2])
        {
          goto LABEL_76;
        }

        v56 = *(v435 + v38);
      }

      v57 = v56;
      if (__OFADD__(v38++, 1))
      {
        break;
      }

      v59 = [v56 receiverPeerID];
      v60 = sub_100216974();
      v62 = v61;

      v68 = *(v39 + 1);
      if (v60 == *v39 && v62 == v68)
      {
        v62, v63, *v39, v68, v64, v65, v66, v67, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
      }

      else
      {
        v70 = sub_1002171A4();
        v62, v71, v72, v73, v74, v75, v76, v77, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
        if ((v70 & 1) == 0)
        {
          if (p_cache[164] != -1)
          {
            swift_once();
          }

          v78 = sub_100216774();
          sub_100002648(v78, qword_10029D160);
          v79 = v57;
          v80 = sub_100216754();
          v81 = sub_100216C54();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = v38;
            v84 = swift_slowAlloc();
            v489[0] = v84;
            *v82 = v393;
            v85 = v79;
            v86 = [v85 description];
            v87 = sub_100216974();
            v89 = v88;

            v90 = v87;
            p_cache = (CKKSSOSSelfPeer + 16);
            v91 = sub_100005FB0(v90, v89, v489);
            v92 = v89;
            v12 = v480;
            v92, v93, v94, v95, v96, v97, v98, v99, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
            *(v82 + 4) = v91;
            i = v484;
            _os_log_impl(&_mh_execute_header, v80, v81, "Skipping %{public}s (wrong peerID)", v82, 0xCu);
            sub_100006128(v84, v100, v101, v102, v103, v104, v105, v106);
            v38 = v83;
            v39 = v479;
          }

          else
          {
          }

          goto LABEL_22;
        }
      }

      v107 = v487;
      v108 = sub_100216BD4();
      v486 = v108;
      v109 = *(v107 + 2);
      if (v109)
      {
        v110 = (v107 + 32);
        do
        {
          sub_100019390(v110, v489);
          sub_10018B150(v488, v489);
          sub_1000193EC(v488);
          v110 += 40;
          --v109;
        }

        while (v109);
        v108 = v486;
      }

      v111 = v108;
      isa = sub_100216B94().super.isa;
      v111, v113, v114, v115, v116, v117, v118, v119, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
      v489[0] = 0;
      v120 = [v57 recoverTLK:v12 trustedPeers:isa ckrecord:0 error:v489];

      v121 = v489[0];
      v485 = v38;
      if (v120)
      {
        v489[0] = 0;
        v122 = v121;
        if ([v120 saveKeyMaterialToKeychain:v489])
        {
          v123 = v489[0];
          v124 = [v120 uuid];
          v125 = sub_100216974();
          v127 = v126;

          v128 = v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v489[0] = v482;
          sub_100186290(v128, v125, v127, isUniquelyReferenced_nonNull_native, &qword_100297D78, &qword_10021D790);
          v127, v130, v131, v132, v133, v134, v135, v136, v374, v385, v396, v406, v417, v427, v438, v449, v460, v471;
          v481 = v457 + 1;
          if (__OFADD__(v457, 1))
          {
            goto LABEL_77;
          }

          v482 = v489[0];
          if (p_cache[164] != -1)
          {
            swift_once();
          }

          v137 = sub_100216774();
          sub_100002648(v137, qword_10029D160);
          v138 = v128;
          v139 = v57;
          v140 = sub_100216754();
          v141 = sub_100216C54();

          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v489[0] = swift_slowAlloc();
            *v142 = v414;
            v143 = v138;
            v144 = [v143 description];
            v145 = v10;
            v146 = sub_100216974();
            v148 = v147;

            v149 = sub_100005FB0(v146, v148, v489);
            v148, v150, v151, v152, v153, v154, v155, v156, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
            *(v142 + 4) = v149;
            *(v142 + 12) = 2082;
            v157 = v139;
            v158 = [v157 description];
            v159 = sub_100216974();
            v161 = v160;

            v162 = v159;
            v12 = v480;
            v163 = sub_100005FB0(v162, v161, v489);
            v164 = v161;
            v10 = v145;
            v39 = v479;
            v164, v165, v166, v167, v168, v169, v170, v171, v375, v386, v397, v407, v418, v428, v439, v450, v461, v472;
            *(v142 + 14) = v163;
            _os_log_impl(&_mh_execute_header, v140, v141, "Recovered %{public}s (from %{public}s", v142, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v457 = v481;
          p_cache = (CKKSSOSSelfPeer + 16);
          goto LABEL_21;
        }

        v174 = v489[0];
        v173 = sub_100216154();

        swift_willThrow();
      }

      else
      {
        v172 = v489[0];
        v173 = sub_100216154();

        swift_willThrow();
      }

      if (p_cache[164] != -1)
      {
        swift_once();
      }

      v175 = sub_100216774();
      sub_100002648(v175, qword_10029D160);
      v176 = v57;
      swift_errorRetain();
      v177 = sub_100216754();
      v178 = sub_100216C74();

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v473 = swift_slowAlloc();
        v489[0] = v473;
        *v179 = v417;
        v180 = v176;
        v181 = [v180 description];
        v182 = v176;
        v183 = v10;
        v184 = sub_100216974();
        v186 = v185;

        v187 = v184;
        v10 = v183;
        v176 = v182;
        v188 = sub_100005FB0(v187, v186, v489);
        v189 = v186;
        v39 = v479;
        v189, v190, v191, v192, v193, v194, v195, v196, v374, v385, v396, v406, v417, v427, v438, v449, v460, v473;
        *(v179 + 4) = v188;
        *(v179 + 12) = 2082;
        v488[0] = v173;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v197 = sub_100216994();
        v199 = v198;
        v200 = sub_100005FB0(v197, v198, v489);
        v199, v201, v202, v203, v204, v205, v206, v207, v376, v387, v398, v408, v419, v429, v440, v451, v462, v474;
        *(v179 + 14) = v200;
        v12 = v480;
        _os_log_impl(&_mh_execute_header, v177, v178, "Failed to recover share %{public}s: %{public}s", v179, 0x16u);
        swift_arrayDestroy();
        p_cache = CKKSSOSSelfPeer.cache;
      }

      v208 = [v176 tlkUUID];
      v209 = sub_100216974();
      v211 = v210;

      if (*v10->endpoint)
      {
        v219 = sub_100015A28(v209, v211);
        v221 = v220;
        v211, v220, v222, v223, v224, v225, v226, v227, v374, v385, v396, v406, v417, v427, v438, v449, v460, v471;
        if (v221)
        {
          v228 = *(*v10[1].containerMap + 8 * v219);

          v229 = [v176 tlkUUID];
          v230 = sub_100216974();
          v232 = v231;

          sub_10001148C(&qword_10029D8D0, &unk_100226680);
          v233 = swift_initStackObject();
          *(v233 + 16) = xmmword_10021D600;
          *(v233 + 32) = v173;
          v489[0] = v228;
          swift_errorRetain();
          sub_10010FFA4(v233);
          v234 = v489[0];
          v235 = swift_isUniquelyReferenced_nonNull_native();
          v489[0] = v10;
          sub_100186440(v234, v230, v232, v235, &qword_10029D8F0, &qword_100226690, v236, v237, v372, v383, v394, v404, v415, v425, v436, v447, v458, v469);

          v55 = v232;
          goto LABEL_20;
        }
      }

      else
      {
        v211, v212, v213, v214, v215, v216, v217, v218, v374, v385, v396, v406, v417, v427, v438, v449, v460, v471;
      }

      v40 = [v176 tlkUUID];
      v41 = sub_100216974();
      v43 = v42;

      sub_10001148C(&qword_10029D8D0, &unk_100226680);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10021D600;
      *(v44 + 32) = v173;
      swift_errorRetain();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v489[0] = v10;
      sub_100186440(v44, v41, v43, v45, &qword_10029D8F0, &qword_100226690, v46, v47, v372, v383, v394, v404, v415, v425, v436, v447, v458, v469);

      v55 = v43;
LABEL_20:
      v55, v48, v49, v50, v51, v52, v53, v54, v373, v384, v395, v405, v416, v426, v437, v448, v459, v470;

      v10 = v489[0];
LABEL_21:
      i = v484;
      v38 = v485;
LABEL_22:
      if (v38 == i)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v481 = 0;
LABEL_80:
  if (p_cache[164] != -1)
  {
    swift_once();
  }

  v294 = sub_100216774();
  sub_100002648(v294, qword_10029D160);
  v295 = sub_100216754();
  v296 = sub_100216C54();
  if (os_log_type_enabled(v295, v296))
  {
    v297 = swift_slowAlloc();
    v298 = swift_slowAlloc();
    v489[0] = v298;
    *v297 = 136446210;
    sub_10000200C(0, &qword_10029D8C8, off_100275010);

    v299 = sub_1002168E4();
    v301 = v300;
    v482, v300, v302, v303, v304, v305, v306, v307, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
    v308 = sub_100005FB0(v299, v301, v489);
    v301, v309, v310, v311, v312, v313, v314, v315, v377, v388, v399, v409, v420, v430, v441, v452, v463, v475;
    *(v297 + 4) = v308;
    _os_log_impl(&_mh_execute_header, v295, v296, "Recovered TLKs: %{public}s", v297, 0xCu);
    sub_100006128(v298, v316, v317, v318, v319, v320, v321, v322);
  }

  v323 = *(v482 + 2);
  if (!v323)
  {
    goto LABEL_87;
  }

  v324 = sub_100183130(*(v482 + 2), 0);
  v325 = sub_10018FBE0(v489, v324 + 4, v323, v482);
  v326 = v489[0];
  v327 = v489[1];
  v328 = v489[2];
  v329 = v489[3];
  v330 = v489[4];

  sub_10000D778(v326, v327, v328, v329, v330, v331, v332, v333);
  if (v325 != v323)
  {
    __break(1u);
LABEL_87:
    v324 = _swiftEmptyArrayStorage;
  }

  sub_10010E320(v334);
  v336 = v335;
  v337 = objc_allocWithZone(TrustedPeersHelperTLKRecoveryResult);
  v338 = sub_100216B94().super.isa;
  v336, v339, v340, v341, v342, v343, v344, v345, v371, v382, v393, *(&v393 + 1), v414, SDWORD2(v414), v435, v446, v457, v468;
  sub_10001148C(&qword_10029D8C0, &qword_100226678);
  v346 = sub_1002168C4().super.isa;
  [v337 initWithSuccessfulKeyUUIDs:v338 totalTLKSharesRecovered:v481 tlkRecoveryErrors:v346];
  v10, v347, v348, v349, v350, v351, v352, v353, v378, v389, v400, v410, v421, v431, v442, v453, v464, v476;

  v354 = v487;
  v482, v355, v356, v357, v358, v359, v360, v361, v379, v390, v401, v411, v422, v432, v443, v454, v465, v477;
  v354, v362, v363, v364, v365, v366, v367, v368, v380, v391, v402, v412, v423, v433, v444, v455, v466, v478;
  return v324;
}

void sub_10010DCB0(void *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, char **a4)
{
  v8 = sub_100216964();
  *&v80 = 0;
  v9 = [a1 peerWithID:v8 error:&v80];

  p_cache = CKKSSOSSelfPeer.cache;
  if (v80)
  {
    v11 = v80;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);

    v13 = v11;
    v14 = sub_100216754();
    v15 = sub_100216C74();

    a3, v16, v17, v18, v19, v20, v21, v22, v75, v76, v77, v78, v80, SDWORD2(v80), v81, *(&v81 + 1), v82, v83;
    if (os_log_type_enabled(v14, v15))
    {
      v23 = swift_slowAlloc();
      *&v80 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_100005FB0(a2, a3, &v80);
      *(v23 + 12) = 2082;
      v79 = v13;
      v24 = v13;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25 = sub_100216994();
      v27 = v26;
      v28 = sub_100005FB0(v25, v26, &v80);
      v27, v29, v30, v31, v32, v33, v34, v35, v75, v76, v77, v79, v80, SDWORD2(v80), v81, *(&v81 + 1), v82, v83;
      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error getting included peer (%s) from model: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      p_cache = (CKKSSOSSelfPeer + 16);
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (!v9)
  {
LABEL_15:
    if (p_cache[164] != -1)
    {
      swift_once();
    }

    v56 = sub_100216774();
    sub_100002648(v56, qword_10029D160);

    v57 = sub_100216754();
    v58 = sub_100216C54();
    a3, v59, v60, v61, v62, v63, v64, v65, v75, v76, v77, v78, v80, SDWORD2(v80), v81, *(&v81 + 1), v82, v83;
    if (os_log_type_enabled(v57, v58))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v80 = v67;
      *v66 = 136446210;
      *(v66 + 4) = sub_100005FB0(a2, a3, &v80);
      _os_log_impl(&_mh_execute_header, v57, v58, "No peer for trusted ID %{public}s", v66, 0xCu);
      sub_100006128(v67, v68, v69, v70, v71, v72, v73, v74);
    }

    return;
  }

  v36 = v9;
  v37 = [v36 permanentInfo];
  v38 = [v37 encryptionPubKey];

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39 && (v40 = v39, v41 = [v36 permanentInfo], v42 = objc_msgSend(v41, "signingPubKey"), v41, objc_opt_self(), (v43 = swift_dynamicCastObjCClass()) != 0))
  {
    v44 = v43;
    v45 = objc_allocWithZone(CKKSActualPeer);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v46 = sub_100216964();
    isa = sub_100216B94().super.isa;
    v48 = [v45 initWithPeerID:v46 encryptionPublicKey:v40 signingPublicKey:v44 viewList:isa];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_10000200C(0, &qword_10029D8D8, off_100275008);
    sub_1001A9AB8(&unk_10029D8E0, &qword_10029D8D8, off_100275008);
    v49 = v48;
    sub_100216F74();
    v50 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_100182C70(0, *(v50 + 2) + 1, 1, v50);
      *a4 = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      *a4 = sub_100182C70((v52 > 1), v53 + 1, 1, v50);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v54 = *a4;
    *(v54 + 2) = v53 + 1;
    v55 = &v54[40 * v53];
    *(v55 + 2) = v80;
    *(v55 + 3) = v81;
    *(v55 + 8) = v82;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1002170E4();
    __break(1u);
  }
}

void sub_10010E320(uint64_t a1)
{
  v2 = 0;
  v29 = sub_100216BD4();
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v2;
LABEL_9:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = (*(a1 + 48) + ((v14 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    sub_10018B000(v27, v17, v18);
    v28, v19, v20, v21, v22, v23, v24, v25, v26, *v27, v28, v29, v30, v31, v32, v33, v34, v35;
  }

  while (1)
  {
    v14 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      a1, v3, v4, v5, v6, v7, v8, v9;
      return;
    }

    v12 = *(a1 + 64 + 8 * v14);
    ++v2;
    if (v12)
    {
      v2 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_10010E43C()
{
  result = sub_100019678(_swiftEmptyArrayStorage);
  off_10029D178 = result;
  return result;
}

uint64_t sub_10010E464()
{
  v10 = sub_100216CC4();
  v0 = *(v10 - 8);
  __chkstk_darwin(v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100216CA4();
  __chkstk_darwin(v4, v5);
  v6 = sub_100216824();
  __chkstk_darwin(v6 - 8, v7);
  v9[1] = sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216804();
  v11 = _swiftEmptyArrayStorage;
  sub_1001A13C4(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_1001AC36C(&qword_10029D680, &unk_1002977F0, &unk_100226580, &protocol conformance descriptor for [A]);
  sub_100216E34();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_100216CF4();
  qword_10029D180 = result;
  return result;
}

void sub_10010E6D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100216194();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_10029D178;
  if (*(off_10029D178 + 2) && (v10 = sub_100015B28(a1), (v11 & 1) != 0))
  {
    v12 = *(v9[7] + 8 * v10);
    swift_endAccess();
    *a2 = v12;
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = objc_allocWithZone(NSManagedObjectModel);
    sub_100216174(v15);
    v17 = v16;
    v18 = [v14 initWithContentsOfURL:v16];

    if (v18)
    {
      (*(v5 + 16))(v8, a1, v4);
      swift_beginAccess();
      v19 = v18;
      sub_100107E40(v18, v8);
      swift_endAccess();
      *a2 = v19;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int sub_10010E8C8()
{
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  return sub_100217284();
}

uint64_t sub_10010E930(uint64_t a1)
{
  sub_1002169C4();

  return sub_1002169C4();
}

Swift::Int sub_10010E980()
{
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  return sub_100217284();
}

uint64_t sub_10010E9E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100216FD4(16);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, 0, 0xE000000000000000, v13, v14, v15, v16, v17, v18, vars0, vars8;
  v21._countAndFlagsBits = v1;
  v21._object = v2;
  sub_100216A14(v21);
  v22._countAndFlagsBits = 44;
  v22._object = 0xE100000000000000;
  sub_100216A14(v22);
  v23._countAndFlagsBits = v3;
  v23._object = v4;
  sub_100216A14(v23);
  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  sub_100216A14(v24);
  return 0x656E6961746E6F43;
}

uint64_t sub_10010EA9C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1002171A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1002171A4();
    }
  }

  return result;
}

id sub_10010EB40()
{
  v1 = v0;
  v2 = [v0 egoPeerStableInfo];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100216224();
  v6 = v5;

  v7 = [v1 egoPeerStableInfoSig];
  if (v7)
  {
    v14 = v7;
    v15 = sub_100216224();
    v17 = v16;

    v18 = objc_allocWithZone(TPPeerStableInfo);
    isa = sub_100216204().super.isa;
    v20 = sub_100216204().super.isa;
    v21 = [v18 initWithData:isa sig:v20];

    sub_100002BF0(v15, v17, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    v21 = 0;
  }

  sub_100002BF0(v4, v6, v8, v9, v10, v11, v12, v13);
  return v21;
}

uint64_t sub_10010EC58()
{
  v1 = v0;
  if (*(v0 + 40) != 1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029D160);

    v11 = sub_100216754();
    v12 = sub_100216C84();
    v1, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v53 = v21;
      *v20 = 136446210;
      v22 = *(v1 + 24);
      v23 = *(v1 + 32);

      v24 = sub_100005FB0(v22, v23, &v53);
      v23, v25, v26, v27, v28, v29, v30, v31, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "Semaphore was not signaled by %{public}s", v20, 0xCu);
      sub_100006128(v21, v32, v33, v34, v35, v36, v37, v38);
    }

    v39 = objc_opt_self();
    v40 = sub_100216964();
    v41 = sub_100216964();
    v42 = *(v1 + 32);

    v43 = sub_100216964();
    v42, v44, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
    v51 = sub_100216964();
    [v39 triggerAutoBugCaptureWithType:v40 subType:v41 subtypeContext:v43 domain:v51 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  *(v0 + 32), v2, v3, v4, v5, v6, v7, v8, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
  return v0;
}

uint64_t sub_10010EEB8()
{
  sub_10010EC58();

  return swift_deallocClassInstance();
}

void sub_10010EEEC(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 40))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029D160);

    v12 = sub_100216754();
    v13 = sub_100216C84();
    a2, v14, v15, v16, v17, v18, v19, v20, v35, a1, a2, v43, v44, v45, v46, v47, v48, v49;
    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100005FB0(v38, v42, &v43);
      _os_log_impl(&_mh_execute_header, v12, v13, "Semaphore double signaled by %{public}s", v21, 0xCu);
      sub_100006128(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v30 = objc_opt_self();
    v31 = sub_100216964();
    v32 = sub_100216964();
    v33 = sub_100216964();
    v34 = sub_100216964();
    [v30 triggerAutoBugCaptureWithType:v31 subType:v32 subtypeContext:v33 domain:v34 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  *(v8 + 40) = 1;
  v9 = (*(v8 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore);
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  v10, a2, a3, a4, a5, a6, a7, a8, v35, v36, v39, v43, v44, v45, v46, v47, v48, v49;
  v40 = *(*(v8 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper9Container_semaphore);
  sub_100216D24();
}

uint64_t sub_10010F154()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 >> 60 == 15)
  {
    v3 = sub_10010B47C(0x79654B43414D48, 0xE700000000000000);
    if (v4 >> 60 != 15)
    {
      v12 = *(v1 + 32);
      v13 = *(v1 + 40);
      *(v1 + 32) = v3;
      *(v1 + 40) = v4;
      v14 = v12;
      v15 = v13;
LABEL_13:
      sub_10004CD18(v14, v15, v5, v6, v7, v8, v9, v10);
      v11 = *(v1 + 32);
      sub_1000602D0(v11, *(v1 + 40));
      return v11;
    }

    v16 = sub_100216B54();
    *(v16 + 16) = 32;
    *(v16 + 48) = 0u;
    *(v16 + 32) = 0u;
    v17 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, (v16 + 32));
    if (!v17)
    {
      v30 = sub_1001EFFC8(v16);
      v32 = v31;
      v16, v31, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49;
      sub_10010ACF0(v30, v32, 0x79654B43414D48, 0xE700000000000000);
      v14 = *(v1 + 32);
      v15 = *(v1 + 40);
      *(v1 + 32) = v30;
      *(v1 + 40) = v32;
      goto LABEL_13;
    }

    v25 = v17;
    v16, v18, v19, v20, v21, v22, v23, v24, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    v27 = sub_100216754();
    v28 = sub_100216C74();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "failed generating random bytes: %d", v29, 8u);
    }

    return 0;
  }

  else
  {
    v11 = *(v1 + 32);
    sub_100012558(v11, v2);
  }

  return v11;
}

void sub_10010F840()
{
  v2 = v0;
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_100216964();
  v5 = [v3 initWithEntityName:v4];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  v36 = xmmword_10021D600;
  *(v6 + 16) = xmmword_10021D600;
  v7 = *(v2 + 24);
  *(v6 + 56) = type metadata accessor for ContainerMO();
  *(v6 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = sub_100216C34();
  [v5 setPredicate:v9];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v10 = swift_allocObject();
  *(v10 + 16) = v36;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0x444972656570;
  *(v10 + 40) = 0xE600000000000000;
  isa = sub_100216B14().super.isa;
  v10, v12, v13, v14, v15, v16, v17, v18, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44;
  [v5 setPropertiesToFetch:isa];

  v38 = _swiftEmptyArrayStorage;
  type metadata accessor for PeerMO();
  v19 = sub_100216D44();
  if (v1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    swift_errorRetain();
    v23 = sub_100216754();
    v24 = sub_100216C74();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch peers: %{public}@", v25, 0xCu);
      sub_1000114D4(v26, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
    v38, v28, v29, v30, v31, v32, v33, v34, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v38 = sub_100182D90(0, v19 & ~(v19 >> 63), 0, _swiftEmptyArrayStorage);
    v20 = [v5 setFetchBatchSize:25];
    __chkstk_darwin(v20, v21);
    v35[2] = &v38;
    v35[3] = v2;
    sub_100004860(v5, EscrowCheckGraphStatus.rawValue.getter, 0, sub_1001AB3BC, v35, type metadata accessor for PeerMO);
  }
}

void sub_10010FC48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = a1 & 0xC000000000000001;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = sub_1002170F4();
  v5 = a1 & 0xC000000000000001;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if (v5)
      {
        v9 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 peerID];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_100216974();
    v23 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100182D90(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100182D90((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v23;
  }

  while (v6 != v4);
LABEL_23:
  sub_1001100A8(v7);
  v18 = *(a3 + 16);
  if (v4)
  {
    v19 = 0;
    while (1)
    {
      if (v5)
      {
        v20 = sub_100217014();
      }

      else
      {
        if (v19 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (([v20 hasChanges] & 1) == 0)
      {
        [v18 refreshObject:v21 mergeChanges:0];
      }

      ++v19;
      if (v22 == v4)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_100110478()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_100216964();
  v4 = [v2 initWithEntityName:v3];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10021D600;
  v6 = *(v1 + 24);
  *(v5 + 56) = type metadata accessor for ContainerMO();
  *(v5 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = sub_100216C34();
  [v4 setPredicate:v8];

  type metadata accessor for PeerMO();
  v9 = sub_100216D44();

  result = v9;
  if (v9 < 0)
  {
    __break(1u);

    return 0;
  }

  return result;
}

void *sub_1001107F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10019CE9C(*(v2 + 16), *(v2 + 24), a1, a2);
  v4 = sub_10011124C(v3);

  sub_10010AAD0();
  return v4;
}

void sub_100110B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D600;
  v10 = v3[3];
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  [v8 setFetchBatchSize:25];
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  sub_100004860(v8, sub_1001AB380, v13, sub_1001AB3A0, v3, type metadata accessor for PeerMO);
}

void sub_100110CEC(void *a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t, char *))
{
  v6 = sub_10011124C(a1);
  if (v6)
  {
    v8 = 0;
    v7 = v6;
    a4(v6, &v8);

    *a2 = v8;
  }
}

void sub_100110D90(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_10010AAD0();
  if (v2)
  {
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v6 = v4;
    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100217014();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v4 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (([v8 hasChanges] & 1) == 0)
      {
        [v6 refreshObject:v4 mergeChanges:0];
      }

      ++v7;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:
}

void sub_100110EEC(unint64_t a1, void *a2, void *a3)
{
  if (!(a1 >> 62))
  {
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = a1 & 0xC000000000000001;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = sub_1002170F4();
  v5 = a1 & 0xC000000000000001;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if (v5)
      {
        v9 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 machineID];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_100216974();
    v30 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100182D90(0, *v7->endpoint + 1, 1, v7);
    }

    v16 = *v7->endpoint;
    v15 = *v7->containerMap;
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100182D90((v15 > 1), v16 + 1, 1, v7);
    }

    *v7->endpoint = v16 + 1;
    v17 = v7 + 16 * v16;
    *(v17 + 4) = v13;
    *(v17 + 5) = v30;
  }

  while (v6 != v4);
LABEL_23:
  sub_10019DCFC(v7);
  v7, v18, v19, v20, v21, v22, v23, v24, v30, v31, a2, a3, v35, v36, v38, v39, v40, v41;
  v25 = v34;
  if (v4)
  {
    v26 = 0;
    while (1)
    {
      if (v5)
      {
        v27 = sub_100217014();
      }

      else
      {
        if (v26 >= *(v37 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(a1 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (([v27 hasChanges] & 1) == 0)
      {
        [v25 refreshObject:v28 mergeChanges:0];
      }

      ++v26;
      if (v29 == v4)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

void sub_100111148(_TtC18TrustedPeersHelper6Client *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = 0;
  containerMap = result[1].containerMap;
  v11 = 1 << result[1]._TtCs12_SwiftObject_opaque[0];
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *result[1].containerMap;
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    while (1)
    {
      v15 = v9;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (*result[1].endpoint + ((v15 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];

      sub_10018B000(&v27, v18, v19);
      v28, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *&containerMap[8 * v15];
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  result, a2, a3, a4, a5, a6, a7, a8;
}

void *sub_10011124C(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [v1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v34 = sub_100216774();
    sub_100002648(v34, qword_10029D160);
    v35 = sub_100216754();
    v36 = sub_100216C74();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "DBAdapter PeerMO has no ID?", v37, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v412 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v7 = [v1 permanentInfo];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_100216224();
  v411 = v10;

  v11 = [v1 permanentInfoSig];
  if (!v11)
  {
    sub_100002BF0(v9, v411, v12, v13, v14, v15, v16, v17);
LABEL_14:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_10029D160);

    v39 = sub_100216754();
    v40 = sub_100216C74();
    v6, v41, v42, v43, v44, v45, v46, v47, v359, v363, v367, v371, v375, v379, v383, v387, v391, isa;
    if (os_log_type_enabled(v39, v40))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v413 = v56;
      *v55 = 136446210;
      v57 = sub_100005FB0(v4, v6, &v413);
      v6, v58, v59, v60, v61, v62, v63, v64, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396;
      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v39, v40, "DBAdapter peer %{public}s has no/incomplete permanent info/sig", v55, 0xCu);
      sub_100006128(v56, v65, v66, v67, v68, v69, v70, v71);

LABEL_20:

      return 0;
    }

    v72 = v6;
LABEL_19:
    v72, v48, v49, v50, v51, v52, v53, v54, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396;
    goto LABEL_20;
  }

  v407 = v4;
  v18 = v11;
  v410 = sub_100216224();
  v20 = v19;

  v408 = sub_10010F154();
  v22 = v21;
  v23 = [v1 hmacSig];
  v409 = v9;
  v404 = v20;
  if (v23)
  {
    v24 = v23;
    v25 = sub_100216224();
    v405 = v26;

    if (v22 >> 60 == 15)
    {
      sub_100002BF0(v25, v405, v27, v28, v29, v30, v31, v32);
      v33 = 1;
    }

    else
    {
      sub_100012558(v408, v22);
      log = sub_100216204().super.isa;
      v399.super.isa = sub_100216204().super.isa;
      v73 = [v1 stableInfo];
      if (v73)
      {
        v74 = v73;
        v75 = sub_100216224();
        v77 = v76;

        isa = sub_100216204().super.isa;
        sub_100002BF0(v75, v77, v78, v79, v80, v81, v82, v83);
      }

      else
      {
        isa = 0;
      }

      v84 = [v1 stableInfoSig];
      if (v84)
      {
        v85 = v84;
        v86 = sub_100216224();
        v88 = v87;

        v391 = sub_100216204().super.isa;
        sub_100002BF0(v86, v88, v89, v90, v91, v92, v93, v94);
      }

      else
      {
        v391 = 0;
      }

      v95 = [v1 dynamicInfo];
      if (v95)
      {
        v96 = v95;
        v97 = sub_100216224();
        v99 = v98;

        v387 = sub_100216204().super.isa;
        sub_100002BF0(v97, v99, v100, v101, v102, v103, v104, v105);
      }

      else
      {
        v387 = 0;
      }

      v106 = [v1 dynamicInfoSig];
      v383 = v1;
      if (v106)
      {
        v107 = v106;
        v108 = sub_100216224();
        v110 = v109;

        v402.super.isa = sub_100216204().super.isa;
        sub_100002BF0(v108, v110, v111, v112, v113, v114, v115, v116);
      }

      else
      {
        v402.super.isa = 0;
      }

      v117 = objc_opt_self();
      v375 = sub_100216204().super.isa;
      v379 = sub_100216204().super.isa;
      v359 = v375;
      v363 = v379;
      HIDWORD(v371) = [v117 verifyHMACWithPermanentInfoData:log permanentInfoSig:v399.super.isa stableInfoData:isa stableInfoSig:v391 dynamicInfoData:v387 dynamicInfoSig:v402.super.isa hmacKey:? hmacSig:?];
      sub_100002BF0(v25, v405, v118, v119, v120, v121, v122, v123);
      sub_10004CD18(v408, v22, v124, v125, v126, v127, v128, v129);

      v33 = HIDWORD(v371) ^ 1u;
      v20 = v404;
      v9 = v409;
    }
  }

  else
  {
    v33 = 1;
  }

  v130 = v412;
  sub_100012558(v9, v411);
  sub_100012558(v410, v20);
  v131 = sub_100216964();
  v406 = v6;
  v6, v132, v133, v134, v135, v136, v137, v138, v359, v363, v367, v371, v375, v379, v383, v387, v391, isa;
  v139 = sub_100216204().super.isa;
  v140 = sub_100216204().super.isa;
  v141 = [objc_opt_self() permanentInfoWithPeerID:v131 data:v139 sig:v140 keyFactory:v130 checkSig:v33];

  v412 = v130;
  sub_100002BF0(v410, v20, v142, v143, v144, v145, v146, v147);

  sub_100002BF0(v409, v411, v148, v149, v150, v151, v152, v153);
  if (!v141)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v188 = sub_100216774();
    sub_100002648(v188, qword_10029D160);

    v39 = sub_100216754();
    v189 = sub_100216C74();
    v6, v190, v191, v192, v193, v194, v195, v196, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397;
    if (os_log_type_enabled(v39, v189))
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v413 = v204;
      *v203 = 136446210;
      v205 = sub_100005FB0(v407, v6, &v413);
      v6, v206, v207, v208, v209, v210, v211, v212, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396;
      *(v203 + 4) = v205;
      _os_log_impl(&_mh_execute_header, v39, v189, "DBAdapter unable to construct permanent info for peerID %{public}s", v203, 0xCu);
      sub_100006128(v204, v213, v214, v215, v216, v217, v218, v219);

      sub_100002BF0(v409, v411, v220, v221, v222, v223, v224, v225);
      sub_10004CD18(v408, v22, v226, v227, v228, v229, v230, v231);
      sub_100002BF0(v410, v20, v232, v233, v234, v235, v236, v237);
      goto LABEL_20;
    }

    sub_100002BF0(v409, v411, v197, v198, v199, v200, v201, v202);
    sub_10004CD18(v408, v22, v297, v298, v299, v300, v301, v302);
    sub_100002BF0(v410, v20, v303, v304, v305, v306, v307, v308);
    v72 = v6;
    goto LABEL_19;
  }

  v154 = sub_10019D0FC(v1);
  v155 = sub_10019D5B4(v1);
  v156 = objc_allocWithZone(TPPeer);
  v413 = 0;
  v157 = v155;
  v158 = v141;
  v159 = v154;
  v160 = [v156 initWithPermanentInfo:v158 stableInfo:v159 dynamicInfo:v157 checkSig:v33 error:&v413];
  if (!v160)
  {
    v238 = v413;
    sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v239 = sub_100216774();
    sub_100002648(v239, qword_10029D160);

    swift_errorRetain();
    v240 = sub_100216754();
    v241 = sub_100216C74();
    v406, v242, v243, v244, v245, v246, v247, v248, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397;

    if (os_log_type_enabled(v240, v241))
    {
      loga = v240;
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v403 = swift_slowAlloc();
      v413 = v403;
      *v255 = 136446466;
      v257 = sub_100005FB0(v407, v406, &v413);
      v406, v258, v259, v260, v261, v262, v263, v264, v362, v366, v370, v374, v378, v382, v386, v390, v394, v398;
      *(v255 + 4) = v257;
      *(v255 + 12) = 2114;
      swift_errorRetain();
      v265 = _swift_stdlib_bridgeErrorToNSError();
      *(v255 + 14) = v265;
      *v256 = v265;
      _os_log_impl(&_mh_execute_header, loga, v241, "DBAdapter unable to init for peerID %{public}s): %{public}@", v255, 0x16u);
      sub_1000114D4(v256, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v403, v266, v267, v268, v269, v270, v271, v272);

      sub_100002BF0(v409, v411, v273, v274, v275, v276, v277, v278);
      sub_10004CD18(v408, v22, v279, v280, v281, v282, v283, v284);
      sub_100002BF0(v410, v404, v285, v286, v287, v288, v289, v290);
    }

    else
    {
      sub_100002BF0(v409, v411, v249, v250, v251, v252, v253, v254);
      sub_10004CD18(v408, v22, v309, v310, v311, v312, v313, v314);
      sub_100002BF0(v410, v404, v315, v316, v317, v318, v319, v320);
      v406, v321, v322, v323, v324, v325, v326, v327, v362, v366, v370, v374, v378, v382, v386, v390, v394, v398;
    }

    return 0;
  }

  v161 = v160;
  v162 = v413;
  v406, v163, v164, v165, v166, v167, v168, v169, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397;

  if ((v33 & 1) == 0)
  {
    sub_100002BF0(v409, v411, v170, v171, v172, v173, v174, v175);
    sub_10004CD18(v408, v22, v291, v292, v293, v294, v295, v296);
    goto LABEL_51;
  }

  if (v22 >> 60 == 15)
  {
    [v1 setHmacSig:0];
    sub_100002BF0(v409, v411, v176, v177, v178, v179, v180, v181);
LABEL_51:
    sub_100002BF0(v410, v404, v182, v183, v184, v185, v186, v187);

    return v161;
  }

  v328 = sub_100216204().super.isa;
  v329 = v161;
  v330 = [v161 calculateHmacWithHmacKey:v328];

  v331 = sub_100216224();
  v333 = v332;

  v334 = sub_100216204().super.isa;
  [v1 setHmacSig:v334];
  sub_100002BF0(v409, v411, v335, v336, v337, v338, v339, v340);
  sub_100002BF0(v410, v404, v341, v342, v343, v344, v345, v346);

  sub_100002BF0(v331, v333, v347, v348, v349, v350, v351, v352);
  sub_10004CD18(v408, v22, v353, v354, v355, v356, v357, v358);
  return v329;
}

void sub_100111EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D600;
  v10 = *(v3 + 24);
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  [v8 setFetchBatchSize:50];
  v13 = *(v3 + 16);
  v25 = a1;
  v26 = a2;
  v14 = swift_allocObject();
  *v14->endpoint = v13;
  v23[2] = sub_1001AB2FC;
  v23[3] = v14;
  v15 = v13;
  sub_100004860(v8, sub_1001AB2E0, v24, sub_1001AB348, v23, type metadata accessor for VoucherMO);

  v14, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1001120E0(void *a1, _BYTE *a2, void (*a3)(id, char *))
{
  v39 = 0;
  v5 = a1;
  v6 = [v5 voucherInfo];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = sub_100216224();
  v10 = v9;

  v11 = [v5 voucherInfoSig];
  if (!v11)
  {
    sub_100002BF0(v8, v10, v12, v13, v14, v15, v16, v17);
LABEL_6:

    return;
  }

  v37 = a3;
  v38 = a2;
  v18 = v11;
  v19 = sub_100216224();
  v21 = v20;

  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = [objc_opt_self() voucherInfoWithData:isa sig:v23];

  sub_100002BF0(v19, v21, v25, v26, v27, v28, v29, v30);
  sub_100002BF0(v8, v10, v31, v32, v33, v34, v35, v36);

  if (v24)
  {
    v37(v24, &v39);

    *v38 = v39;
  }
}

void sub_100112280(_TtC18TrustedPeersHelper6Client *a1, void (*a2)(_TtC18TrustedPeersHelper6Client **))
{
  v11[3] = sub_10001148C(&qword_10029D988, &qword_100226720);
  v11[4] = sub_1001AC36C(&qword_10029D990, &qword_10029D988, &qword_100226720, &protocol conformance descriptor for [A]);
  v11[0] = a1;

  a2(v11);
  sub_100006128(v11, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100112368(_TtC18TrustedPeersHelper6Client *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *v11->endpoint = v10;

  a7(a6, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  a1, v19, v20, v21, v22, v23, v24, v25;
  return 1;
}

uint64_t sub_100112444()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_100216964();
  v4 = [v2 initWithEntityName:v3];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10021D600;
  v6 = *(v1 + 24);
  *(v5 + 56) = type metadata accessor for ContainerMO();
  *(v5 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = sub_100216C34();
  [v4 setPredicate:v8];

  type metadata accessor for VoucherMO();
  v9 = sub_100216D44();

  result = v9;
  if (v9 < 0)
  {
    __break(1u);

    return 0;
  }

  return result;
}

uint64_t sub_1001127C0(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  v7 = a4(a3);
  a1, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

void sub_100112814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_100216964();
  v9 = [v7 initWithEntityName:v8];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D600;
  v11 = *(v3 + 24);
  *(v10 + 56) = type metadata accessor for ContainerMO();
  *(v10 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = sub_100216C34();
  [v9 setPredicate:v13];

  [v9 setFetchBatchSize:10];
  v14 = *(v3 + 16);
  v26 = v6;
  v27 = a1;
  v28 = a2;
  v15 = swift_allocObject();
  *v15->endpoint = v14;
  v24[2] = sub_1001AB294;
  v24[3] = v15;
  v16 = v14;
  sub_100109320(v9, sub_1001AB274, v25, sub_100060220, v24);

  v15, v17, v18, v19, v20, v21, v22, v23;
}

void sub_100112A5C(void *a1, _BYTE *a2, uint64_t a3, void (*a4)(id, char *))
{
  v33 = 0;
  v7 = [a1 crkInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xC000000000000000;
  }

  v12 = [a1 crkInfoSig];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  v18 = sub_100216204().super.isa;
  v19 = [objc_opt_self() custodianRecoveryKeyWithData:isa sig:v18 keyFactory:a3];

  sub_100002BF0(v14, v16, v20, v21, v22, v23, v24, v25);
  sub_100002BF0(v9, v11, v26, v27, v28, v29, v30, v31);
  if (v19)
  {
    a4(v19, &v33);

    *a2 = v33;
  }
}

unint64_t sub_100112BF4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D420;
  v10 = v3[3];
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = v10;
  *(v9 + 96) = &type metadata for Int64;
  *(v9 + 104) = &protocol witness table for Int64;
  if (a1 < 0)
  {
    __break(1u);
    swift_once();
    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    v31 = v3;
    v32 = sub_100216754();
    v33 = sub_100216C74();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v86 = a2;
      v35 = swift_slowAlloc();
      v89 = v35;
      *v34 = 134349314;
      *(v34 + 4) = a1;
      *(v34 + 12) = 2082;
      v36 = v31;
      v37 = [v36 description];
      v38 = sub_100216974();
      v40 = v39;

      v41 = sub_100005FB0(v38, v40, &v89);
      v40, v42, v43, v44, v45, v46, v47, v48, v86, 4, v89, v90, v91, v92, v93, v94, v95, v96;
      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to fetch policy for version %{public}llu: %{public}s", v34, 0x16u);
      sub_100006128(v35, v49, v50, v51, v52, v53, v54, v55);
      a2 = v87;
    }

    if (a2)
    {
      v56 = v31;
      *a2 = v31;
    }

    else
    {
    }

    return 0;
  }

  *(v9 + 72) = a1;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10021D420;
  *(v13 + 32) = 0x61447963696C6F70;
  *(v13 + 40) = 0xEA00000000006174;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 0x61487963696C6F70;
  *(v13 + 72) = 0xEA00000000006873;
  isa = sub_100216B14().super.isa;
  v13, v15, v16, v17, v18, v19, v20, v21, 2, 4, v89, v90, v91, v92, v93, v94, v95, v96;
  [v8 setPropertiesToFetch:isa];

  [v8 setFetchLimit:1];
  type metadata accessor for PolicyMO();
  result = sub_100216D54();
  if (result >> 62)
  {
    v83 = result;
    v84 = sub_1002170F4();
    result = v83;
    if (v84)
    {
      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((result & 0xC000000000000001) != 0)
    {
      v57 = result;
      v58 = sub_100217014();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v57 = result;
      v58 = *(result + 32);
    }

    v66 = v58;
    v57, v59, v60, v61, v62, v63, v64, v65, v85, v88, v89, v90, v91, v92, v93, v94, v95, v96;
    v67 = [v66 policyHash];
    if (v67)
    {
      v68 = v67;
      v69 = [v66 policyData];
      if (v69)
      {
        v70 = v69;
        v71 = sub_100216224();
        v73 = v72;

        v74 = objc_opt_self();
        v75 = sub_100216204().super.isa;
        v76 = [v74 policyDocWithHash:v68 data:v75];

        sub_100002BF0(v71, v73, v77, v78, v79, v80, v81, v82);
        return v76;
      }

      return 0;
    }

    goto LABEL_22;
  }

  result, v23, v24, v25, v26, v27, v28, v29, v85, v88, v89, v90, v91, v92, v93, v94, v95, v96;
LABEL_22:

  return 0;
}

void sub_1001131EC()
{
  v2 = v0;
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_100216964();
  v5 = [v3 initWithEntityName:v4];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = *(v2 + 24);
  *(v6 + 56) = type metadata accessor for ContainerMO();
  *(v6 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = sub_100216C34();
  [v5 setPredicate:v9];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D420;
  *(v10 + 32) = 0x6E6F6973726576;
  *(v10 + 40) = 0xE700000000000000;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 0x61487963696C6F70;
  *(v10 + 72) = 0xEA00000000006873;
  isa = sub_100216B14().super.isa;
  v10, v12, v13, v14, v15, v16, v17, v18, v50, v53, v56, v58, v61, v64, v66, v69, v72, v75;
  [v5 setPropertiesToFetch:isa];

  type metadata accessor for PolicyMO();
  v19 = sub_100216D54();
  if (!v1)
  {
    v34 = v19;
    if (v19 >> 62)
    {
      v59 = (v19 & 0xFFFFFFFFFFFFFF8);
      v35 = sub_1002170F4();
      if (!v35)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v59 = (v19 & 0xFFFFFFFFFFFFFF8);
      v35 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_31;
      }
    }

    v36 = 0;
    v54 = v5;
    while (1)
    {
      v5 = v36;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = sub_100217014();
        }

        else
        {
          if (v5 >= v59[2])
          {
            goto LABEL_27;
          }

          v37 = *(v34 + 8 * v5 + 32);
        }

        v38 = v37;
        v36 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v39 = [v37 policyHash];
        if (!v39)
        {

          goto LABEL_11;
        }

        v40 = v39;
        v41 = [v38 version];
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v42 = [objc_allocWithZone(TPPolicyVersion) initWithVersion:v41 hash:v40];

        if (v42)
        {
          break;
        }

LABEL_11:
        ++v5;
        if (v36 == v35)
        {
          v5 = v54;
          goto LABEL_31;
        }
      }

      sub_100216B04();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100216B44();
      }

      sub_100216B64();
      v5 = v54;
      if (v36 == v35)
      {
LABEL_31:
        v34, v20, v21, v22, v23, v24, v25, v26, v51, v54, 0, v59, v62, _swiftEmptyArrayStorage, v67, v70, v73, v76;
        sub_10019C6BC(_swiftEmptyArrayStorage);

        _swiftEmptyArrayStorage, v43, v44, v45, v46, v47, v48, v49, v52, v55, v57, v60, v63, v65, v68, v71, v74, v77;
        return;
      }
    }
  }

  if (qword_100297520 != -1)
  {
LABEL_29:
    swift_once();
  }

  v27 = sub_100216774();
  sub_100002648(v27, qword_10029D160);
  swift_errorRetain();
  v28 = sub_100216754();
  v29 = sub_100216C74();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v5;
    v32 = swift_slowAlloc();
    *v30 = 138543362;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to fetch policies: %{public}@", v30, 0xCu);
    sub_1000114D4(v32, &qword_10029D580, &unk_10021CCC0);
    v5 = v31;
  }

  swift_willThrow();
}

uint64_t sub_10011391C()
{
  sub_10004CD18(*(v0 + 32), *(v0 + 40), v1, v2, v3, v4, v5, v6);

  return swift_deallocClassInstance();
}

void sub_100113964(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, uint64_t a6, uint64_t a7, _TtC18TrustedPeersHelper6Client **a8)
{
  v9 = v8;
  v290 = a8;
  v293 = a5;
  v294 = a4;
  v281 = a3;
  v295 = a2;
  v280 = a1;
  v12 = sub_100216194();
  v297 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v274 - v18;
  v20 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_semaphore;
  v21 = dispatch_semaphore_create(1);
  v286 = v20;
  *(v9 + v20) = v21;
  v22 = v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore;
  *v22 = 0;
  v22[1] = 0;
  v284 = v22;
  v285 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testIgnoreCustodianUpdates) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch) = 1000;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDRolled) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 0;
  v283 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected) = 0;
  v23 = swift_allocObject();
  v296 = v23;
  *(v23 + 16) = 0;
  v292 = (v23 + 16);
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_darwinNotifier) = a6;
  v282 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter) = a7;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v289 = a7;
  swift_unknownObjectRetain();
  v26 = [v25 bundleForClass:ObjCClassFromMetadata];
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v26 URLForResource:v27 withExtension:v28];

  if (!v29)
  {
    goto LABEL_19;
  }

  sub_100216184();

  v30 = *(v297 + 32);
  v288 = v12;
  v31 = v30(v19, v16, v12);
  if (qword_100297530 != -1)
  {
    v31 = swift_once();
  }

  __chkstk_darwin(v31, v32);
  *(&v274 - 2) = v19;
  sub_10000200C(0, &unk_10029D540, NSManagedObjectModel_ptr);
  v33 = v291;
  sub_100216CD4();
  v279 = v33;
  v34 = aBlock;
  v35 = objc_allocWithZone(NSPersistentContainer);
  v36 = v34;
  v37 = sub_100216964();
  v38 = [v35 initWithName:v37 managedObjectModel:v36];

  v291 = v36;
  v39 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_persistentContainer;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_persistentContainer) = v38;
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100225FB0;
  v41 = v293;
  *(v40 + 32) = v293;
  sub_10000200C(0, &qword_10029D550, NSPersistentStoreDescription_ptr);
  v42 = v38;
  v293 = v41;
  isa = sub_100216B14().super.isa;
  v40, v44, v45, v46, v47, v48, v49, v50, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
  [v42 setPersistentStoreDescriptions:isa];

  v51 = [*(v9 + v39) newBackgroundContext];
  v287 = v39;
  v52 = *(v9 + v39);
  v53 = v296;
  v304 = sub_1001ACE40;
  v305 = v296;
  aBlock = _NSConcreteStackBlock;
  v301 = 1107296256;
  v302 = sub_1001146C8;
  v303 = &unk_100282388;
  v54 = _Block_copy(&aBlock);
  v55 = v305;
  v56 = v52;

  v55, v57, v58, v59, v60, v61, v62, v63;
  [v56 loadPersistentStoresWithCompletionHandler:v54];
  _Block_release(v54);

  v64 = v292;
  swift_beginAccess();
  if (*v53->endpoint)
  {
    swift_errorRetain();
    v65 = sub_100216144();
    v66 = sub_10010A774();
    v75 = v294;
    v74 = v295;
    if (!v66)
    {
      v294, v67, v68, v69, v70, v71, v72, v73, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
      v74, v162, v163, v164, v165, v166, v167, v168, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_100006128(v290, v169, v170, v171, v172, v173, v174, v175);
      (*(v297 + 8))(v19, v288);
      v296, v176, v177, v178, v179, v180, v181, v182;
      v124 = 0;
      v76 = 0;
      goto LABEL_13;
    }

    v277 = v65;
    v278 = v19;
    v298 = 0;
    v76 = swift_allocObject();
    v77 = v293;
    *v76->endpoint = v293;
    *v76->containerMap = v51;
    *v76[1]._TtCs12_SwiftObject_opaque = v64;
    *&v76[1]._TtCs12_SwiftObject_opaque[8] = &v298;
    v78 = swift_allocObject();
    *v78->endpoint = sub_100186C7C;
    *v78->containerMap = v76;
    v304 = sub_100186C88;
    v305 = v78;
    aBlock = _NSConcreteStackBlock;
    v301 = 1107296256;
    v302 = sub_100109050;
    v303 = &unk_100282400;
    v79 = _Block_copy(&aBlock);
    v80 = v305;
    v276 = v77;
    v81 = v51;

    v80, v82, v83, v84, v85, v86, v87, v88;
    [v81 performBlockAndWait:v79];
    _Block_release(v79);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();
    v78, v89, v90, v91, v92, v93, v94, v95;
    if ((v80 & 1) == 0)
    {
      if (v298)
      {
        swift_errorRetain();
        v75, v96, v97, v98, v99, v100, v101, v102, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
        v295, v103, v104, v105, v106, v107, v108, v109, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
        swift_willThrow();

        swift_unknownObjectRelease();

        sub_100006128(v290, v110, v111, v112, v113, v114, v115, v116);
        (*(v297 + 8))(v278, v288);

        v296, v117, v118, v119, v120, v121, v122, v123;
        v124 = sub_100186C7C;
LABEL_13:

        v284[1], v183, v184, v185, v186, v187, v188, v189, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
        swift_unknownObjectRelease();

        type metadata accessor for Container();
        swift_deallocPartialClassInstance();
        sub_100186C6C(v124, v76, v190, v191, v192, v193, v194, v195);
        return;
      }

      v275 = v81;
      v292 = v76;
      v220 = swift_allocObject();
      *v220->endpoint = 0;
      v221 = *(v9 + v287);
      v304 = sub_100186CB0;
      v305 = v220;
      aBlock = _NSConcreteStackBlock;
      v301 = 1107296256;
      v302 = sub_1001146C8;
      v303 = &unk_100282428;
      v222 = _Block_copy(&aBlock);
      v223 = v305;
      v224 = v221;

      v223, v225, v226, v227, v228, v229, v230, v231;
      [v224 loadPersistentStoresWithCompletionHandler:v222];
      _Block_release(v222);

      swift_beginAccess();
      v126 = v295;
      if (*v220->endpoint)
      {
        swift_errorRetain();
        v294, v232, v233, v234, v235, v236, v237, v238, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
        v126, v239, v240, v241, v242, v243, v244, v245, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
        swift_willThrow();

        swift_unknownObjectRelease();

        sub_100006128(v290, v246, v247, v248, v249, v250, v251, v252);
        (*(v297 + 8))(v278, v288);
        v220, v253, v254, v255, v256, v257, v258, v259;

        v296, v260, v261, v262, v263, v264, v265, v266;
        v124 = sub_100186C7C;
        v76 = v292;
        goto LABEL_13;
      }

      v220, v267, v268, v269, v270, v271, v272, v273;

      v277 = sub_100186C7C;
      v125 = v297;
      goto LABEL_10;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v278 = v19;
  v277 = 0;
  v292 = 0;
  v125 = v297;
  v126 = v295;
LABEL_10:
  v127 = v294;
  v128 = v280;
  v129 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v51 setMergePolicy:v129];

  __chkstk_darwin(v130, v131);
  *(&v274 - 6) = v128;
  *(&v274 - 5) = v126;
  v132 = v281;
  *(&v274 - 4) = v281;
  *(&v274 - 3) = v127;
  *(&v274 - 2) = v51;
  sub_10001148C(&qword_10029D558, &unk_1002264D8);
  v133 = v279;
  sub_100216D34();
  if (v133)
  {

    swift_unknownObjectRelease();
    v127, v134, v135, v136, v137, v138, v139, v140, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
    v126, v141, v142, v143, v144, v145, v146, v147, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283;
    sub_100006128(v290, v148, v149, v150, v151, v152, v153, v154);
    (*(v125 + 8))(v278, v288);
    v296, v155, v156, v157, v158, v159, v160, v161;
    v76 = v292;
    v124 = v277;
    goto LABEL_13;
  }

  v196 = v301;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) = aBlock;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) = v196;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter) = v302;
  v197 = v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name;
  *v197 = v128;
  v197[1] = v126;
  v197[2] = v132;
  v197[3] = v127;
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc) = v51;
  v198 = v290;
  sub_10007974C(v290, v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish);
  *(v9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_escrowCacheTimeout) = 0x408C200000000000;
  v199 = type metadata accessor for Container();
  v299.receiver = v9;
  v299.super_class = v199;
  objc_msgSendSuper2(&v299, "init");
  swift_unknownObjectRelease();

  sub_100006128(v198, v200, v201, v202, v203, v204, v205, v206);
  (*(v125 + 8))(v278, v288);
  v296, v207, v208, v209, v210, v211, v212, v213;
  sub_100186C6C(v277, v292, v214, v215, v216, v217, v218, v219);
}

void sub_1001146C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v15 = a2;
  v7 = a3;
  v6(v15, a3);
  v5, v8, v9, v10, v11, v12, v13, v14;
}

id sub_100114754(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = sub_100216194();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v46 - v15;
  result = [a1 URL];
  if (result)
  {
    v18 = result;
    sub_100216184();

    (*(v9 + 32))(v16, v13, v8);
    v19 = [a2 persistentStoreCoordinator];
    if (v19)
    {
      v21 = v19;
      sub_100216174(v20);
      v23 = v22;
      v24 = [a1 type];
      if (!v24)
      {
        sub_100216974();
        v26 = v25;
        v24 = sub_100216964();
        v26, v27, v28, v29, v30, v31, v32, v33, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55;
      }

      v34 = sub_100019254(_swiftEmptyArrayStorage);
      isa = sub_1002168C4().super.isa;
      v34, v36, v37, v38, v39, v40, v41, v42, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55;
      v48 = 0;
      LODWORD(v34) = [v21 destroyPersistentStoreAtURL:v23 withType:v24 options:isa error:&v48];

      if (!v34)
      {
        v44 = v48;
        v45 = sub_100216154();

        swift_willThrow();
        (*(v9 + 8))(v16, v8);
        *a4 = v45;
      }

      v43 = v48;
    }

    (*(v9 + 8))(v16, v8);
    swift_beginAccess();
    *a3 = 0;
  }

  return result;
}

uint64_t sub_100114A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();
}

void sub_100114A74(void *a1@<X0>, _TtC18TrustedPeersHelper6Client *a2@<X1>, uint64_t a3@<X2>, _TtC18TrustedPeersHelper6Client *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_100216964();
  v13 = [v11 initWithEntityName:v12];

  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10021D600;
  v15 = sub_100216974();
  v23 = v16;
  v24 = v15 == a3 && v16 == a4;
  v153 = a3;
  if (v24)
  {
    v16, v16, v17, v18, v19, v20, v21, v22, v128, v133, v138, a6, a4, a3, a1, v163, v164, v165;
  }

  else
  {
    v25 = sub_1002171A4();
    v23, v26, v27, v28, v29, v30, v31, v32, v128, v133, v138, a6, a4, v153, a1, v163, v164, v165;
    if ((v25 & 1) == 0)
    {

      v166._countAndFlagsBits = 45;
      v166._object = 0xE100000000000000;
      sub_100216A14(v166);

      v167._countAndFlagsBits = v154;
      v167._object = a4;
      sub_100216A14(v167);
      a2, v33, v34, v35, v36, v37, v38, v39, v129, v134, v139, v144, v149, v154, v159, v159, a2, v165;
      v40 = v163;
      v41 = v164;
      goto LABEL_9;
    }
  }

  v40 = v159;
  v41 = a2;
LABEL_9:
  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100019BD0();
  *(v14 + 32) = v40;
  *(v14 + 40) = v41;
  v42 = sub_100216C34();
  [v13 setPredicate:v42];

  [v13 setFetchLimit:1];
  type metadata accessor for ContainerMO();
  v43 = a5;
  v44 = sub_100216D54();
  if (v6)
  {
LABEL_10:

    return;
  }

  if (v44 >> 62)
  {
    v62 = v44;
    v63 = sub_1002170F4();
    v44 = v62;
    if (v63)
    {
      goto LABEL_13;
    }
  }

  else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v44 & 0xC000000000000001) != 0)
    {
      v52 = v44;
      v53 = sub_100217014();
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v52 = v44;
      v53 = *(v44 + 32);
    }

    v61 = v53;
    v52, v54, v55, v56, v57, v58, v59, v60, v129, v134, v139, v144, v149, v154, v159, v163, v164, v165;
    goto LABEL_26;
  }

  v44, v45, v46, v47, v48, v49, v50, v51, v129, v134, v139, v144, v149, v154, v159, v163, v164, v165;
  v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a5];
  v64 = sub_100216974();
  v66 = v65;
  if (v64 == v156 && v65 == v151)
  {
    v67 = v61;
    v66, v68, v69, v70, v71, v72, v73, v74, v131, v136, v141, v146, v151, v156, v161, v163, v164, v165;
  }

  else
  {
    v75 = v151;
    v76 = sub_1002171A4();
    v77 = v61;
    v66, v78, v79, v80, v81, v82, v83, v84, v131, v136, v141, v146, v151, v156, v161, v163, v164, v165;
    if ((v76 & 1) == 0)
    {

      v168._countAndFlagsBits = 45;
      v168._object = 0xE100000000000000;
      sub_100216A14(v168);

      v169._countAndFlagsBits = v157;
      v169._object = v75;
      sub_100216A14(v169);
      a2, v85, v86, v87, v88, v89, v90, v91, v132, v137, v142, v147, v152, v157, v162, v162, a2, v165;
      a2 = v164;
      v162 = v163;
      goto LABEL_24;
    }
  }

LABEL_24:
  v92 = sub_100216964();
  a2, v93, v94, v95, v96, v97, v98, v99, v132, v137, v142, v147, v152, v157, v162, v163, v164, v165;
  [v61 setName:v92];

  v163 = 0;
  if (![v43 save:&v163])
  {
    v101 = v163;
    sub_100216154();

    swift_willThrow();
    goto LABEL_10;
  }

  v100 = v163;
LABEL_26:
  sub_1001F1F48(v61, v43);
  sub_100002F7C(v61, v43);
  type metadata accessor for Container();
  sub_1002011B0(v61, v43);
  sub_10019E368(v61, v43);
  sub_10005FC1C(v61, v43);
  v102 = sub_10019EC98(v43, v61, 0, 0xF000000000000000);
  v104 = v103;
  v105 = v102;
  sub_1001A0C98(v61, v105);

  sub_10010AAD0();
  [v43 reset];
  v106 = sub_100216D54();
  if (!(v106 >> 62))
  {
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_37:
    v106, v107, v108, v109, v110, v111, v112, v113, v130, v135, v140, v145, v150, v155, v160, v163, v164, v165;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v126 = sub_100216774();
    sub_100002648(v126, qword_10029D160);
    v13 = sub_100216754();
    v127 = sub_100216C74();
    if (os_log_type_enabled(v13, v127))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v13, v127, "containerMO could not be fetched again?", v104, 2u);
    }

    LODWORD(v135) = 0;
    v130 = 1597;
    v106 = sub_1002170E4();
    __break(1u);
    goto LABEL_42;
  }

  v124 = v106;
  v125 = sub_1002170F4();
  v106 = v124;
  if (!v125)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((v106 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v114 = v106;
    v115 = sub_100217014();
    goto LABEL_33;
  }

  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v114 = v106;
    v115 = *(v106 + 32);
LABEL_33:
    v116 = v115;

    v114, v117, v118, v119, v120, v121, v122, v123, v130, v135, v140, v145, v150, v155, v160, v163, v164, v165;
    *v148 = v116;
    v148[1] = v105;
    v148[2] = v104;
    return;
  }

  __break(1u);
}

void sub_100115168(void *a1, uint64_t a2, int64_t a3)
{
  v203 = &_swiftEmptySetSingleton;
  v202[0] = &_swiftEmptySetSingleton;
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_100216964();
  v9 = [v7 initWithEntityName:v8];

  [(Client *)v9 setFetchBatchSize:5];
  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D600;
  *(v10 + 56) = type metadata accessor for ContainerMO();
  *(v10 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v10 + 32) = a1;
  v11 = a1;
  v12 = sub_100216C34();
  [(Client *)v9 setPredicate:v12];

  v13 = type metadata accessor for PolicyMO();
  v14 = sub_100216D44();
  v15 = v3;
  if (v3)
  {

LABEL_29:
    *a3 = v15;
    return;
  }

  v16 = v14;
  sub_10001148C(&qword_10029D5B8, &qword_100226500);
  sub_100216BE4(v16);
  __chkstk_darwin(v17, v18);
  v184[2] = a2;
  v184[3] = &v203;
  v184[4] = v202;
  sub_100004860(v9, sub_1001A140C, v184, EscrowCheckGraphStatus.rawValue.getter, 0, type metadata accessor for PolicyMO);
  v186 = a3;
  v191 = v9;
  v197 = v13;
  v198 = a2;
  v187 = v202[0];
  if ((v202[0] & 0xC000000000000001) != 0)
  {
    if (sub_100216ED4())
    {
      v195 = 0;
      a3 = v11;
      v19 = v11;

      sub_100216E84();
      sub_1001A13C4(&qword_10029D5C0, type metadata accessor for PolicyMO, &protocol conformance descriptor for NSObject);
      sub_100216C04();
      v21 = v202[1];
      v20 = v202[2];
      v22 = v202[3];
      v9 = v202[4];
      v15 = v202[5];
LABEL_11:
      v199 = v22;
      v27 = (v22 + 64) >> 6;
      if (v21 < 0)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v28 = v9;
        v29 = v15;
        v30 = v9;
        if (!v15)
        {
          while (1)
          {
            v30 = (v28 + 1);
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              v15 = 0;
              goto LABEL_23;
            }

            v29 = *&v20[8 * v30];
            ++v28;
            if (v29)
            {
              goto LABEL_16;
            }
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

LABEL_16:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
          break;
        }

        while (1)
        {
          [a3 removePoliciesObject:v32];

          v9 = v30;
          v15 = v31;
          if ((v21 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_18:
          v33 = sub_100216F14();
          if (v33)
          {
            v200 = v33;
            swift_dynamicCast();
            v32 = v201;
            v30 = v9;
            v31 = v15;
            if (v201)
            {
              continue;
            }
          }

          goto LABEL_23;
        }
      }

LABEL_23:
      v11 = a3;

      sub_10000D778(v21, v20, v199, v9, v15, v34, v35, v36);
      v187, v37, v38, v39, v40, v41, v42, v43, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;

      v44 = v195;
      sub_10010AAD0();
      v15 = v44;
      if (!v44)
      {
        v187 = &_swiftEmptySetSingleton;
        v9 = v191;
        goto LABEL_31;
      }

      a3 = v186;
      v9 = v191;
      if (qword_100297520 != -1)
      {
        goto LABEL_107;
      }

      goto LABEL_25;
    }
  }

  else if (*(v202[0] + 16))
  {
    v21 = v202[0];
    v195 = 0;
    v23 = -1 << *(v202[0] + 32);
    v20 = (v202[0] + 56);
    v22 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v202[0] + 56);
    a3 = v11;
    v26 = v11;

    v9 = 0;
    goto LABEL_11;
  }

LABEL_31:
  sub_10004C850(&v203);
  v66 = v65;
  v67 = *(v65 + 16);
  if (v67)
  {
    v9 = 0;
    v68 = 0;
    while (1)
    {
      v69 = &v9->_TtCs12_SwiftObject_opaque[1];
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v70 = __OFADD__(v68, 5);
      v68 += 5;
      if (v70)
      {
        v68 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v9 = (v9 + 1);
      if (v68 >= v67)
      {
        v195 = 0;
        v201 = _swiftEmptyArrayStorage;
        sub_100187784(0, (v69 & ~(v69 >> 63)), 0, v60, v61, v62, v63, v64);
        if (v69 < 0)
        {
          __break(1u);
LABEL_109:
          swift_once();
LABEL_91:
          v171 = sub_100216774();
          sub_100002648(v171, qword_10029D160);
          swift_errorRetain();
          v172 = sub_100216754();
          v173 = sub_100216C74();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            *v174 = 138543362;
            swift_errorRetain();
            v176 = _swift_stdlib_bridgeErrorToNSError();
            *(v174 + 4) = v176;
            *v175 = v176;
            _os_log_impl(&_mh_execute_header, v172, v173, "Unable to save built-in policies to DB: %{public}@", v174, 0xCu);
            sub_1000114D4(v175, &qword_10029D580, &unk_10021CCC0);
          }

          swift_willThrow();
          objc_autoreleasePoolPop(v193);
          v187, v177, v178, v179, v180, v181, v182, v183, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        v196 = v11;
        v71 = v201;
        if (!v69)
        {
          a3 = 0;
LABEL_72:
          v199 = v66 + 1;
          v150 = a3;
          while (1)
          {
            v151 = (v150 + 5);
            if (__OFADD__(v150, 5))
            {
              goto LABEL_98;
            }

            if (v67 >= v151)
            {
              v15 = v150 + 5;
            }

            else
            {
              v15 = v67;
            }

            if (v15 < v150)
            {
              goto LABEL_99;
            }

            if (a3 < 0)
            {
              goto LABEL_100;
            }

            v152 = *v66->endpoint;
            if (v152 < v150 || v152 < v15)
            {
              goto LABEL_101;
            }

            v201 = v71;
            v9 = *v71->endpoint;
            v154 = *v71->containerMap;

            if (v9 >= v154 >> 1)
            {
              sub_100187784((v154 > 1), &v9->_TtCs12_SwiftObject_opaque[1], 1, v79, v80, v81, v82, v83);
              v71 = v201;
            }

            *v71->endpoint = &v9->_TtCs12_SwiftObject_opaque[1];
            v155 = &v71[v9];
            v156 = v199;
            *v155[1]._TtCs12_SwiftObject_opaque = v66;
            *&v155[1]._TtCs12_SwiftObject_opaque[8] = v156;
            *v155[1].endpoint = v150;
            *v155[1].containerMap = (2 * v15) | 1;
            v150 = (v150 + 5);
            if (v151 >= v67)
            {
              goto LABEL_56;
            }
          }
        }

        v72 = 0;
        v199 = v66 + 1;
        while (v72 < v67)
        {
          if (v72 == 0x7FFFFFFFFFFFFFFDLL)
          {
            goto LABEL_103;
          }

          a3 = v72 + 5;
          if (v67 >= (v72 + 5))
          {
            v73 = (v72 + 5);
          }

          else
          {
            v73 = v67;
          }

          if (v73 < v72)
          {
            goto LABEL_104;
          }

          v74 = *v66->endpoint;
          if (v74 < v72 || v74 < v73)
          {
            goto LABEL_105;
          }

          v201 = v71;
          v15 = *v71->endpoint;
          v76 = *v71->containerMap;

          if (v15 >= v76 >> 1)
          {
            sub_100187784((v76 > 1), (v15 + 1), 1, v79, v80, v81, v82, v83);
            v71 = v201;
          }

          *v71->endpoint = v15 + 1;
          v84 = &v71[v15];
          v85 = v199;
          *v84[1]._TtCs12_SwiftObject_opaque = v66;
          *&v84[1]._TtCs12_SwiftObject_opaque[8] = v85;
          *v84[1].endpoint = v72;
          *v84[1].containerMap = (2 * v73) | 1;
          v72 += 5;
          v9 = (v9 - 1);
          if (!v9)
          {
            if (a3 < v67)
            {
              goto LABEL_72;
            }

LABEL_56:
            v66, v77, v78, v79, v80, v81, v82, v83, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
            v189 = *v71->endpoint;
            if (!v189)
            {
              v9 = v191;
LABEL_88:
              v187, v93, v94, v95, v96, v97, v98, v99, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
              v71, v157, v158, v159, v160, v161, v162, v163;
              goto LABEL_89;
            }

            v100 = 0;
            v190 = v71 + 1;
            a3 = 0x100294000;
            v15 = v195;
            v188 = v71;
            while (v100 < *v71->endpoint)
            {
              v192 = v100;
              v101 = &v190[v100];
              v102 = *&v101->_TtCs12_SwiftObject_opaque[8];
              v103 = *v101->endpoint;
              v104 = *v101->containerMap;
              v194 = *v101->_TtCs12_SwiftObject_opaque;
              v195 = v15;
              swift_unknownObjectRetain();
              v193 = objc_autoreleasePoolPush();
              v105 = v104 >> 1;
              v106 = (v104 >> 1) - v103;
              if (v104 >> 1 != v103)
              {
                if (v103 > v105)
                {
                  v105 = v103;
                }

                v115 = v105 - v103;
                v116 = (v102 + 16 * v103 + 8);
                while (v115)
                {
                  v135 = *(v116 - 1);
                  v134 = *v116;

                  v199 = objc_autoreleasePoolPush();
                  v135(&v201);
                  v9 = v201;
                  v136 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v137 = [v136 initWithContext:v198];
                  v15 = [v9 *(a3 + 288)];
                  v138 = [v15 versionNumber];

                  if ((v138 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_95;
                  }

                  [v137 setVersion:v138];
                  v139 = [v9 *(a3 + 288)];
                  v140 = [v139 policyHash];

                  if (!v140)
                  {
                    sub_100216974();
                    v142 = v141;
                    v140 = sub_100216964();
                    v142, v143, v144, v145, v146, v147, v148, v149, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
                  }

                  [v137 setPolicyHash:v140];

                  v117 = [(Client *)v9 protobuf];
                  v15 = sub_100216224();
                  v119 = v118;

                  isa = sub_100216204().super.isa;
                  sub_100002BF0(v15, v119, v121, v122, v123, v124, v125, v126);
                  [v137 setPolicyData:isa];

                  [(SEL *)v196 addPoliciesObject:v137];
                  objc_autoreleasePoolPop(v199);
                  v134, v127, v128, v129, v130, v131, v132, v133;
                  --v115;
                  v116 += 2;
                  --v106;
                  a3 = &selRef_signingKey;
                  if (!v106)
                  {
                    goto LABEL_60;
                  }
                }

                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

LABEL_60:
              v107 = v195;
              sub_10010AAD0();
              v15 = v107;
              if (v107)
              {
                v188, v108, v109, v110, v111, v112, v113, v114;
                a3 = v186;
                v9 = v191;
                if (qword_100297520 != -1)
                {
                  goto LABEL_109;
                }

                goto LABEL_91;
              }

              v100 = (v192 + 1);
              objc_autoreleasePoolPop(v193);
              swift_unknownObjectRelease();
              v71 = v188;
              v9 = v191;
              if (v100 == v189)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_106;
          }
        }

        goto LABEL_102;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
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
    swift_once();
LABEL_25:
    v45 = sub_100216774();
    sub_100002648(v45, qword_10029D160);
    swift_errorRetain();
    v46 = sub_100216754();
    v47 = sub_100216C74();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to save built-in policies to DB: %{public}@", v48, 0xCu);
      sub_1000114D4(v49, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
LABEL_28:

    v203, v51, v52, v53, v54, v55, v56, v57, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
    goto LABEL_29;
  }

  v187, v58, v59, v60, v61, v62, v63, v64, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
  v66, v86, v87, v88, v89, v90, v91, v92, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
LABEL_89:

  v203, v164, v165, v166, v167, v168, v169, v170, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194;
}

void sub_100115D74(void *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1;
  v10 = [a1 policyHash];
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v12 = sub_100216974();
  v14 = v13;
  v15 = [v9 policyData];
  if (!v15)
  {
    v14, v16, v17, v18, v19, v20, v21, v22, v201, v208, v215, v222, v230, v239, v247, v255, v262, v270;

    goto LABEL_36;
  }

  v263 = v12;
  v280 = v14;
  v223 = a5;
  v23 = v15;
  v24 = sub_100216224();
  v26 = v25;

  v27 = objc_opt_self();
  isa = sub_100216204().super.isa;
  v29 = [v27 policyDocWithHash:v11 data:isa];

  if (!v29)
  {
    sub_100002BF0(v24, v26, v30, v31, v32, v33, v34, v35);
    v280, v72, v73, v74, v75, v76, v77, v78, v201, v208, v215, v223, v230, v239, v247, v255, v263, v270;
    goto LABEL_36;
  }

  v231 = v29;
  v240 = v24;
  v271 = v26;
  v278 = a4;
  v248 = a3;
  v36 = sub_100019ED4();
  v44 = v36;
  v45 = *(v36 + 16);
  v46 = _swiftEmptyArrayStorage;
  v279 = v9;
  if (v45)
  {
    v47 = 0;
    v48 = (v36 + 64);
    v208 = v45 - 1;
    v215 = (v36 + 64);
    do
    {
      v49 = &v48[40 * v47];
      v50 = v47;
      while (1)
      {
        if (v50 >= *v44->endpoint)
        {
          __break(1u);
          return;
        }

        v283 = *(v49 - 1);
        v58 = *v49;
        v281 = *(v49 - 2);
        v59 = v281;

        v60 = [v59 versionNumber];
        v61 = [v9 version];
        if ((v61 & 0x8000000000000000) == 0 && v60 == v61)
        {
          break;
        }

        ++v50;
        v58, v62, v63, v64, v65, v66, v67, v68;
        v283, v51, v52, v53, v54, v55, v56, v57;

        v49 += 5;
        if (v45 == v50)
        {
          goto LABEL_19;
        }
      }

      v285 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100187744(0, *v46->endpoint + 1, 1, v39, v40, v41, v42, v43);
        v46 = v285;
      }

      v48 = v215;
      v70 = *v46->endpoint;
      v69 = *v46->containerMap;
      if (v70 >= v69 >> 1)
      {
        sub_100187744((v69 > 1), v70 + 1, 1, v39, v40, v41, v42, v43);
        v46 = v285;
      }

      v47 = v50 + 1;
      *v46->endpoint = v70 + 1;
      v71 = v46 + 40 * v70;
      *(v71 + 2) = v281;
      *(v71 + 3) = v283;
      *(v71 + 8) = v58;
      v9 = v279;
    }

    while (v208 != v50);
  }

LABEL_19:
  v44, v37, v38, v39, v40, v41, v42, v43, v201, v208, v215, v223, v231, v240, v248, v5, v263, v271;
  v86 = *v46->endpoint;
  if (v86)
  {
    v285 = _swiftEmptyArrayStorage;
    sub_100187724(0, v86, 0, v81, v82, v83, v84, v85);
    v87 = _swiftEmptyArrayStorage;
    v88 = v46 + 2;
    do
    {
      v89 = *v88->_TtCs12_SwiftObject_opaque;
      v90 = swift_allocObject();
      v282 = *v88[-1]._TtCs12_SwiftObject_opaque;
      v284 = *v88[-1].endpoint;
      *(v90 + 16) = v282;
      *(v90 + 32) = v284;
      *(v90 + 48) = v89;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_10004CCE0;
      *(v91 + 24) = v90;
      v285 = v87;
      v92 = *v87->endpoint;
      v93 = *v87->containerMap;
      v94 = v282;

      if (v92 >= v93 >> 1)
      {
        sub_100187724((v93 > 1), (v92 + 1), 1, v97, v98, v99, v100, v101);
        v87 = v285;
      }

      *v87->endpoint = v92 + 1;
      v102 = &v87->_TtCs12_SwiftObject_opaque[16 * v92];
      *(v102 + 4) = sub_1001A142C;
      *(v102 + 5) = v91;
      v88 = (v88 + 40);
      --v86;
    }

    while (v86);
    v46, v95, v96, v97, v98, v99, v100, v101;
    v9 = v279;
  }

  else
  {
    v46, v79, v80, v81, v82, v83, v84, v85;
    v87 = _swiftEmptyArrayStorage;
  }

  a3 = v249;
  v110 = v272;
  v111 = v241;
  if (*v87->endpoint)
  {
    v113 = *v87[1]._TtCs12_SwiftObject_opaque;
    v112 = *&v87[1]._TtCs12_SwiftObject_opaque[8];

    v87, v114, v115, v116, v117, v118, v119, v120, v202, v209, v216, v224, v232, v241, v249, v256, v264, v272;
    v113(&v285);
    v112, v121, v122, v123, v124, v125, v126, v127;
    v128 = v285;
    v129 = [(Client *)v285 version];

    v130 = [v129 policyHash];
    v131 = sub_100216974();
    v133 = v132;

    if (v131 == v265 && v133 == v280)
    {
      v133, v134, v135, v136, v137, v138, v139, v140, v203, v210, v217, v225, v233, v242, v250, v257, v265, v273;
      v280, v141, v142, v143, v144, v145, v146, v147, v204, v211, v218, v226, v234, v243, v251, v258, v266, v274;
      v148 = v278;
      v9 = v279;
      v149 = v235;
      v150 = v111;
    }

    else
    {
      v168 = sub_1002171A4();
      v133, v169, v170, v171, v172, v173, v174, v175, v203, v210, v217, v225, v233, v242, v250, v257, v265, v273;
      v280, v176, v177, v178, v179, v180, v181, v182, v207, v214, v221, v229, v238, v246, v254, v261, v269, v277;
      v148 = v278;
      v9 = v279;
      v149 = v235;
      v150 = v111;
      if ((v168 & 1) == 0)
      {
LABEL_33:
        sub_10018B29C(&v285, v9);
        sub_100002BF0(v150, v275, v193, v194, v195, v196, v197, v198);

        goto LABEL_36;
      }
    }

    v183 = *v148;

    v184 = [v149 version];
    v185 = [v184 versionNumber];

    LOBYTE(v185) = sub_10004C6B0(v185, v183);
    v183, v186, v187, v188, v189, v190, v191, v192, v205, v212, v219, v227, v235, v244, v252, v259, v267, v275;
    if (v185)
    {
      goto LABEL_33;
    }

    v199 = [v149 version];
    v200 = [v199 versionNumber];

    sub_10018B50C(&v285, v200);
    v166 = v150;
    v167 = v275;
  }

  else
  {
    v87, v103, v104, v105, v106, v107, v108, v109, v202, v209, v216, v224, v232, v241, v249, v256, v264, v272;
    v280, v151, v152, v153, v154, v155, v156, v157, v206, v213, v220, v228, v236, v245, v253, v260, v268, v276;
    v149 = v237;
    v158 = [v237 version];
    v159 = [v158 versionNumber];

    sub_10018B50C(&v285, v159);
    v166 = v111;
    v167 = v110;
  }

  sub_100002BF0(v166, v167, v160, v161, v162, v163, v164, v165);

LABEL_36:
  if (([v9 hasChanges] & 1) == 0)
  {
    [a3 refreshObject:v9 mergeChanges:0];
  }
}

void sub_1001163D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
  *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v4 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  [v3 deleteObject:*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO)];
  type metadata accessor for ContainerMO();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v3];
  v6 = *(v0 + v4);
  *(v1 + v4) = v5;
  v7 = v5;

  v9 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name);
  v8 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8);
  v10 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16);
  v11 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24);
  v12 = sub_100216974();
  v20 = v13;
  if (v10 == v12 && v11 == v13)
  {
    v13, v13, v14, v15, v16, v17, v18, v19, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93;
  }

  else
  {
    v22 = sub_1002171A4();
    v20, v23, v24, v25, v26, v27, v28, v29, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93;
    if ((v22 & 1) == 0)
    {

      v96._countAndFlagsBits = 45;
      v96._object = 0xE100000000000000;
      sub_100216A14(v96);

      v97._countAndFlagsBits = v10;
      v97._object = v11;
      sub_100216A14(v97);
      v8, v30, v31, v32, v33, v34, v35, v36, v9, v8, v80, v82, v84, v86, v88, v90, v92, v94;
      v8 = v78;
      goto LABEL_9;
    }
  }

LABEL_9:
  v37 = sub_100216964();
  v8, v38, v39, v40, v41, v42, v43, v44, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94;
  [v7 setName:v37];

  v45 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v46 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v47 = *(v1 + v4);

  v48 = sub_10010F154();
  v50 = v49;
  v46, v49, v51, v52, v53, v54, v55, v56;
  v57 = sub_10019EC98(v3, v47, v48, v50);
  v59 = v58;
  sub_10004CD18(v48, v50, v60, v61, v62, v63, v64, v65);

  v66 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) = v57;

  v74 = *(v1 + v45);
  *(v1 + v45) = v59;

  v74, v67, v68, v69, v70, v71, v72, v73;
}

void sub_100116608(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  strcpy((inited + 32), "permanentInfo");
  *(inited + 46) = -4864;
  v4 = [a1 permanentInfo];
  v5 = [v4 dictionaryRepresentation];

  v6 = sub_1002168D4();
  v7 = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x444972656570;
  *(inited + 88) = 0xE600000000000000;
  v8 = [a1 peerID];
  v9 = sub_100216974();
  v11 = v10;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v9;
  *(inited + 104) = v11;
  v12 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_10001148C(&qword_100297CF0, &qword_10021D6F8);
  swift_arrayDestroy();
  v30 = v12;
  v13 = [a1 stableInfo];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 dictionaryRepresentation];
    v16 = sub_1002168D4();

    v29 = v7;
    *&v28 = v16;
    sub_1000125AC(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v27, 0x6E49656C62617473, 0xEA00000000006F66, isUniquelyReferenced_nonNull_native);
    v30 = v12;
    if (SecIsInternalRelease())
    {
    }

    else
    {
      sub_100015830(0x6E5F6C6169726573, 0xED00007265626D75, &v28);
      sub_1000114D4(&v28, &unk_100297770, &unk_10021DF90);
      sub_100015830(0x6E5F656369766564, 0xEB00000000656D61, &v28);

      sub_1000114D4(&v28, &unk_100297770, &unk_10021DF90);
    }
  }

  v18 = [a1 dynamicInfo];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 dictionaryRepresentation];
    v21 = sub_1002168D4();

    v29 = v7;
    *&v28 = v21;
    sub_1000125AC(&v28, v27);
    v22 = v30;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v27, 0x4963696D616E7964, 0xEB000000006F666ELL, v23);

    v24 = v22;
  }

  else
  {
    v24 = v30;
  }

  *v26 = v24;
}

void sub_1001169B4(void (*a1)(void, void), void *a2)
{
  v5 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v324[0] = 0;
  v7 = [v6 viablePeerCountsByModelIDWithError:v324];
  v8 = v324[0];
  if (!v7)
  {
    v38 = v324[0];
    v39 = sub_100216154();

    swift_willThrow();
    v40 = sub_100019974(_swiftEmptyArrayStorage);
    sub_10011777C(v39, 0xD000000000000019, 0x800000010023D370, v40, a1);
    v48 = v40;
LABEL_11:
    v48, v41, v42, v43, v44, v45, v46, v47, v228, v240, v249, v258, v267, v276, v285, v295, v304, v315;

    return;
  }

  v9 = v7;
  v10 = sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  v11 = sub_1002168D4();
  v12 = v8;

  v13 = *&v2[v5];
  v324[0] = 0;
  v14 = [v13 peerCountsByMachineIDWithError:v324];
  v15 = v324[0];
  if (!v14)
  {
    v49 = v324[0];
    v50 = sub_100216154();

    swift_willThrow();
    sub_10011777C(v50, 0xD000000000000015, 0x800000010023D390, v11, a1);
    v48 = v11;
    goto LABEL_11;
  }

  v16 = v14;
  v17 = sub_1002168D4();
  v18 = v15;

  v19 = [*&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v19)
  {
    v296 = v17;
    v268 = v10;
    v277 = v11;
    v20 = v19;
    v21 = sub_100216974();
    v305 = v22;
    v23 = *&v2[v5];
    v324[0] = 0;
    v24 = v20;
    v25 = [v23 peerWithID:v24 error:v324];
    v26 = v25;
    v316 = a2;
    if (v324[0])
    {
      v258 = v2;
      v27 = v324[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v28 = sub_100216774();
      sub_100002648(v28, qword_10029D160);
      v29 = v27;
      v30 = sub_100216754();
      v31 = sub_100216C74();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v21;
        v33 = swift_slowAlloc();
        v34 = a1;
        v35 = swift_slowAlloc();
        *v33 = 138543362;
        v36 = v29;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Error getting ego peer from model: %{public}@", v33, 0xCu);
        sub_1000114D4(v35, &qword_10029D580, &unk_10021CCC0);
        a1 = v34;

        v21 = v32;
      }

      else
      {
      }

      v98 = 0;
      v289 = 0;
      v2 = v258;
      a2 = v316;
    }

    else if (v25)
    {
      v289 = v25;
      v98 = [v25 permanentInfo];
    }

    else
    {
      v258 = v21;
      v201 = v2;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v202 = sub_100216774();
      sub_100002648(v202, qword_10029D160);
      v203 = sub_100216754();
      v204 = sub_100216C74();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        *v205 = 0;
        _os_log_impl(&_mh_execute_header, v203, v204, "Couldn't find ego peer in model", v205, 2u);
      }

      v98 = 0;
      v289 = 0;
      v2 = v201;
      v21 = v258;
    }

    v99 = swift_allocObject();
    v100 = *&v2[v5];
    v324[0] = 0;
    v101 = v100;
    v102 = [v101 statusOfPeerWithID:v24 error:v324];

    v103 = v324[0];
    if (v324[0])
    {
      v104 = v324[0];
      v305, v105, v106, v107, v108, v109, v110, v111, v228, v99, v249, v258, v268, v277, v289, v296, v305, v316;
      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v112 = sub_100216774();
      sub_100002648(v112, qword_10029D160);
      v113 = v104;
      v114 = sub_100216754();
      v115 = sub_100216C74();
      v262 = v113;

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v116 = 138543362;
        v118 = v113;
        v119 = _swift_stdlib_bridgeErrorToNSError();
        *(v116 + 4) = v119;
        *v117 = v119;
        _os_log_impl(&_mh_execute_header, v114, v115, "error calling statusOfPeer: %{public}@", v116, 0xCu);
        sub_1000114D4(v117, &qword_10029D580, &unk_10021CCC0);
      }

      v310 = a1;

      v253 = v98;
      if (v98)
      {
        v120 = [v98 machineID];
        if (!v120)
        {
          sub_100216974();
          v122 = v121;
          v120 = sub_100216964();
          v122, v123, v124, v125, v126, v127, v128, v129, v233, v244, v98, v113, v272, v281, v290, v300, a1, v320;
        }
      }

      else
      {
        v120 = 0;
      }

      v152 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      isa = sub_1002168C4().super.isa;
      v281, v154, v155, v156, v157, v158, v159, v160, v233, v244, v253, v262, v272, v281, v290, v300, v310, v320;
      v161 = sub_1002168C4().super.isa;
      v301, v162, v163, v164, v165, v166, v167, v168, v234, v245, v254, v263, v273, v282, v291, v301, v311, v321;
      LOBYTE(v235) = 0;
      v169 = [v152 initWithEgoPeerID:v24 egoPeerMachineID:v120 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v161 isExcluded:0 isLocked:v235];

      v170 = v264;
      v312(v169, v103);
      v246, v171, v172, v173, v174, v175, v176, v177;
    }

    else
    {

      v99[2] = v102;
      v130 = swift_allocObject();
      *(v130 + 16) = v102 == 4;
      v131 = swift_allocObject();
      *(v131 + 16) = v130;
      *(v131 + 24) = v99;
      *(v131 + 32) = v21;
      *(v131 + 40) = v305;
      *(v131 + 48) = v98;
      *(v131 + 56) = v277;
      *(v131 + 64) = v296;
      *(v131 + 72) = a1;
      *(v131 + 80) = a2;
      *(v131 + 88) = v2;
      strcpy(v324, "signing-key ");
      BYTE5(v324[1]) = 0;
      HIWORD(v324[1]) = -5120;
      v132 = v21;
      v133 = v98;

      v134 = v2;

      v325._countAndFlagsBits = v132;
      v325._object = v305;
      sub_100216A14(v325);
      v135 = v324[0];
      v136 = v324[1];

      sub_100198E8C(v135, v136, sub_1001AC4EC, v131, v132, v305);

      v137, v138, v139, v140, v141, v142, v143, v144;

      v136, v145, v146, v147, v148, v149, v150, v151, v228, v240, v249, v258, v268, v277, v289, v296, v305, v316;
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v51 = *&v2[v5];
    v324[0] = 0;
    v52 = [v51 hasAnyPeersWithError:v324];
    v53 = v324[0];
    if (v324[0])
    {
      v54 = v324[0];
      v11, v55, v56, v57, v58, v59, v60, v61, v228, v240, v249, v258, v267, v276, v285, v295, v304, v315;
      v17, v62, v63, v64, v65, v66, v67, v68, v229, v241, v250, v259, v269, v278, v286, v297, v306, v317;
      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v307 = a1;
      v69 = sub_100216774();
      sub_100002648(v69, qword_10029D160);
      v70 = v54;
      v71 = sub_100216754();
      v72 = sub_100216C74();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138543362;
        v75 = v70;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 4) = v76;
        *v74 = v76;
        _os_log_impl(&_mh_execute_header, v71, v72, "error calling hasAnyPeers: %{public}@", v73, 0xCu);
        sub_1000114D4(v74, &qword_10029D580, &unk_10021CCC0);
      }

      v77 = sub_100019974(_swiftEmptyArrayStorage);
      v78 = sub_100019974(_swiftEmptyArrayStorage);
      v79 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      v80 = sub_1002168C4().super.isa;
      v77, v81, v82, v83, v84, v85, v86, v87, v230, v242, v251, v260, v270, v279, v287, v298, v307, v318;
      v88 = sub_1002168C4().super.isa;
      v78, v89, v90, v91, v92, v93, v94, v95, v231, v243, v252, v261, v271, v280, v288, v299, v308, v319;
      LOBYTE(v232) = 0;
      v96 = [v79 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:v80 peerCountsByMachineID:v88 isExcluded:0 isLocked:v232];

      v97 = v70;
      v309(v96, v53);
    }

    else
    {
      v178 = v2;
      if (v52)
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v179 = sub_100216774();
        sub_100002648(v179, qword_10029D160);
        v180 = sub_100216754();
        v181 = sub_100216C54();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          _os_log_impl(&_mh_execute_header, v180, v181, "Existing peers in account, but we don't have a peer ID. We are excluded.", v182, 2u);
        }

        v183 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
        v184.super.isa = sub_1002168C4().super.isa;
        v11, v185, v186, v187, v188, v189, v190, v191, v228, v240, v249, v258, v267, v276, v285, v295, v304, v315;
        v192.super.isa = sub_1002168C4().super.isa;
        v17, v193, v194, v195, v196, v197, v198, v199, v236, v247, v256, v265, v274, v283, v293, v302, v313, v322;
        LOBYTE(v237) = 0;
        v200 = [v183 initWithEgoPeerID:0 egoPeerMachineID:0 status:4 viablePeerCountsByModelID:v184.super.isa peerCountsByMachineID:v192.super.isa isExcluded:1 isLocked:v237];
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v206 = sub_100216774();
        sub_100002648(v206, qword_10029D160);
        v207 = sub_100216754();
        v208 = sub_100216C54();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          *v209 = 0;
          _os_log_impl(&_mh_execute_header, v207, v208, "No existing peers in account", v209, 2u);
        }

        v210 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
        v184.super.isa = sub_1002168C4().super.isa;
        v11, v211, v212, v213, v214, v215, v216, v217, v228, v240, v249, v258, v267, v276, v285, v295, v304, v315;
        v192.super.isa = sub_1002168C4().super.isa;
        v17, v218, v219, v220, v221, v222, v223, v224, v238, v248, v257, v266, v275, v284, v294, v303, v314, v323;
        LOBYTE(v239) = 0;
        v200 = [v210 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:v184.super.isa peerCountsByMachineID:v192.super.isa isExcluded:0 isLocked:v239];
      }

      v225 = v200;

      v226 = *&v178[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
      *&v178[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = v225;
      v227 = v225;

      a1(v227, 0);
    }
  }
}

void sub_10011777C(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void (*a5)(void, void))
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);

  swift_errorRetain();
  v11 = sub_100216754();
  v12 = sub_100216C74();
  a3, v13, v14, v15, v16, v17, v18, v19, v43, v46, v48, v51, v52, v53, v54, v55, v56, v57;

  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = a4;
    v51 = swift_slowAlloc();
    v22 = a5;
    v23 = v51;
    *v20 = 136315394;
    *(v20 + 4) = sub_100005FB0(a2, a3, &v51);
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v24;
    *v21 = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "error calling %s: %{public}@", v20, 0x16u);
    sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);

    sub_100006128(v23, v25, v26, v27, v28, v29, v30, v31);
    a5 = v22;
  }

  v32 = sub_100019974(_swiftEmptyArrayStorage);
  v33 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
  sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  isa = sub_1002168C4().super.isa;
  v35 = sub_1002168C4().super.isa;
  v32, v36, v37, v38, v39, v40, v41, v42, v44, v47, v49, v51, v52, v53, v54, v55, v56, v57;
  LOBYTE(v45) = 0;
  v50 = [v33 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v35 isExcluded:0 isLocked:v45];

  a5(v50, a1);
}

void sub_100117A44(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, void *a5, void *a6, _TtC18TrustedPeersHelper6Client *a7, uint64_t a8, void *a9, void (*a10)(id, uint64_t), void *a11, char *a12)
{
  v12 = a8;
  v13 = a7;
  if (a2)
  {
    v186 = a3;
    v192 = a5;
    v215 = a2;
    v15 = sub_100216144();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v180 = v13;
    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    v17 = v15;
    v18 = sub_100216754();
    v19 = sub_100216C74();

    v222 = a11;
    v228 = a10;
    v204 = v12;
    v210 = a9;
    v198 = a6;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v236 = v21;
      *v20 = 136446210;
      v22 = v17;
      v23 = [v22 description];
      v24 = sub_100216974();
      v26 = v25;

      v27 = sub_100005FB0(v24, v26, &v236);
      v26, v28, v29, v30, v31, v32, v33, v34, v174, v180, v186, v192, v198, v204, a9, v215, a11, a10;
      *(v20 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "trust status: Unable to load ego keys: %{public}s", v20, 0xCu);
      sub_100006128(v21, v35, v36, v37, v38, v39, v40, v41);
    }

    if ([v17 code] == -25300)
    {
      v42 = [v17 domain];
      v43 = sub_100216974();
      v45 = v44;

      v47 = sub_100216974();
      v53 = v46;
      if (v43 == v47 && v45 == v46)
      {
        v45, v46, v47, v48, v49, v50, v51, v52, v174, v180, v186, v192, v198, v204, v210, v215, v222, v228;
        v53, v54, v55, v56, v57, v58, v59, v60, v175, v181, v187, v193, v199, v205, v211, v216, v223, v229;
LABEL_14:
        v79 = sub_100216754();
        v80 = sub_100216C54();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "trust status: Lost the ego key pair, returning 'excluded' in hopes of fixing up the identity", v81, 2u);
        }

        v82 = v186;
        swift_beginAccess();
        v186[16] = 1;
        swift_beginAccess();
        v83 = 0;
        *(a4 + 16) = 4;
        v84 = v180;
        goto LABEL_31;
      }

      v64 = sub_1002171A4();
      v45, v65, v66, v67, v68, v69, v70, v71, v174, v180, v186, v192, v198, v204, v210, v215, v222, v228;
      v53, v72, v73, v74, v75, v76, v77, v78, v176, v182, v188, v194, v200, v206, v212, v218, v224, v230;
      if (v64)
      {
        goto LABEL_14;
      }
    }

    if ([v17 code] == -25308)
    {
      v85 = [v17 domain];
      v86 = sub_100216974();
      v88 = v87;

      v90 = sub_100216974();
      v96 = v89;
      v84 = v180;
      if (v86 == v90 && v88 == v89)
      {
        v88, v89, v90, v91, v92, v93, v94, v95, v174, v180, v186, v192, v198, v204, v210, v215, v222, v228;
        v96, v97, v98, v99, v100, v101, v102, v103, v177, v183, v189, v195, v201, v207, v213, v219, v225, v231;

        v82 = v186;
LABEL_30:
        v215 = 0;
        v83 = 1;
        goto LABEL_31;
      }

      v120 = sub_1002171A4();
      v88, v121, v122, v123, v124, v125, v126, v127, v174, v180, v186, v192, v198, v204, v210, v215, v222, v228;
      v96, v128, v129, v130, v131, v132, v133, v134, v178, v184, v190, v196, v202, v208, v214, v220, v226, v232;

      v83 = 0;
      v82 = v186;
      if (v120)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v83 = 0;
      v84 = v180;
      v82 = v186;
    }

LABEL_31:
    if (v84)
    {
      v135 = [(Client *)v84 machineID];
      sub_100216974();
      v84 = v136;
    }

    swift_beginAccess();
    v137 = *(a4 + 16);
    swift_beginAccess();
    v138 = v82[16];
    v139 = sub_100216964();
    if (v84)
    {
      v140 = sub_100216964();
      v84, v141, v142, v143, v144, v145, v146, v147, v174, v180, v186, v192, v198, v204, v210, v215, v222, v228;
    }

    else
    {
      v140 = 0;
    }

    v148 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    isa = sub_1002168C4().super.isa;
    v150 = sub_1002168C4().super.isa;
    LOBYTE(v174) = v83;
    v151 = [v148 initWithEgoPeerID:v139 egoPeerMachineID:v140 status:v137 viablePeerCountsByModelID:isa peerCountsByMachineID:v150 isExcluded:v138 isLocked:v174];

    v152 = v151;
    v153 = v215;
LABEL_41:
    v228(v152, v153);

    return;
  }

  v217 = a12;
  if (a1)
  {
    if (a7)
    {
      v62 = [(Client *)a7 machineID];
      sub_100216974();
      v13 = v63;
    }

    swift_beginAccess();
    v234 = *(a4 + 16);
    swift_beginAccess();
    v154 = a3[16];
    v155 = sub_100216964();
    v228 = a10;
    if (v13)
    {
      v156 = sub_100216964();
      v13, v157, v158, v159, v160, v161, v162, v163, v174, v179, v185, v191, v197, v203, v209, a12, a11, a10;
    }

    else
    {
      v156 = 0;
    }

    v164 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    v165 = sub_1002168C4().super.isa;
    v166 = sub_1002168C4().super.isa;
    LOBYTE(v174) = 0;
    v167 = [v164 initWithEgoPeerID:v155 egoPeerMachineID:v156 status:v234 viablePeerCountsByModelID:v165 peerCountsByMachineID:v166 isExcluded:v154 isLocked:v174];

    v168 = *&v217[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
    *&v217[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = v167;
    v151 = v167;

    v152 = v151;
    v153 = 0;
    goto LABEL_41;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v104 = sub_100216774();
  sub_100002648(v104, qword_10029D160);
  v105 = sub_100216754();
  v106 = sub_100216C54();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&_mh_execute_header, v105, v106, "trust status: No error but Ego Peer Keys are nil", v107, 2u);
  }

  if (!v13)
  {
    v111 = sub_100216964();
    goto LABEL_43;
  }

  v108 = [(Client *)v13 machineID];
  sub_100216974();
  v110 = v109;

  v111 = sub_100216964();
  if (!v110)
  {
LABEL_43:
    v112 = 0;
    goto LABEL_44;
  }

  v112 = sub_100216964();
  v110, v113, v114, v115, v116, v117, v118, v119, v174, v179, v185, v191, v197, v203, v209, a12, v221, v227;
LABEL_44:
  v169 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
  sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  v170 = sub_1002168C4().super.isa;
  v171 = sub_1002168C4().super.isa;
  LOBYTE(v174) = 0;
  v172 = [v169 initWithEgoPeerID:v111 egoPeerMachineID:v112 status:4 viablePeerCountsByModelID:v170 peerCountsByMachineID:v171 isExcluded:1 isLocked:v174];

  v173 = *&v217[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
  *&v217[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = v172;
  v235 = v172;

  a10(v235, 0);
}

uint64_t sub_1001183A8(void *a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v8 = sub_100216C74();
  }

  else
  {
    v8 = sub_100216C64();
  }

  v9 = v8;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = a1;
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v9))
  {
    v52 = a4;
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v13 = 136446466;
    [v11 egoStatus];
    v14 = TPPeerStatusToString();
    v15 = sub_100216974();
    v17 = v16;

    v18 = sub_100005FB0(v15, v17, &v61);
    v17, v19, v20, v21, v22, v23, v24, v25, a3, v52, v55, v57, v59, v61, v62, v63, v64, v65;
    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v26 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v66._countAndFlagsBits = sub_100216994();
      object = v66._object;
      sub_100216A14(v66);
      object, v28, v29, v30, v31, v32, v33, v34, v51, v53, a2, 0x203A726F727265, 0xE700000000000000, v61, v62, v63, v64, v65;

      v35 = v58;
      v26 = v60;
    }

    else
    {
      v35 = 0x73736563637573;
    }

    v42 = sub_100005FB0(v35, v26, &v61);
    v26, v43, v44, v45, v46, v47, v48, v49, v51, v53, v56, v58, v60, v61, v62, v63, v64, v65;
    *(v13 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v12, v9, "trustStatus complete: %{public}s %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    a4 = v54;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000013, 0x800000010023CDC0, v36, v37, v38, v39, v40, v41);
  return a4(v11, a2);
}

void sub_100118668(char *a1, void (*a2)(void), void *a3)
{
  v6 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v7 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216974();
    v11 = v10;

    v12 = swift_allocObject();
    *v12->endpoint = a1;
    strcpy(v35, "signing-key ");
    BYTE5(v35[1]) = 0;
    HIWORD(v35[1]) = -5120;
    v13 = a1;
    v42._countAndFlagsBits = v9;
    v42._object = v11;
    sub_100216A14(v42);

    sub_100198E8C(v35[0], v35[1], sub_1001AB228, v12, v9, v11);
    v35[1], v14, v15, v16, v17, v18, v19, v20, v32, v33, v35[0], v35[1], v35[2], v36, v37, v38, v39, v40;

    swift_bridgeObjectRelease_n();
  }

  v21 = [*&a1[v6] changeToken];
  if (v21)
  {

    v22 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
    if (v22)
    {
      v34 = v22;
      a2();
    }

    else
    {
      sub_1001169B4(a2, a3);
    }
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = a1;
    v24 = a1;

    sub_10016ECB4(0, sub_1001AB21C, v23);

    v23, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1001188B0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    v6 = a1;
    swift_errorRetain();
    if (qword_100297520 == -1)
    {
LABEL_3:
      v7 = sub_100216774();
      sub_100002648(v7, qword_10029D160);
      swift_errorRetain();
      v8 = sub_100216754();
      v9 = sub_100216C74();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        aBlock = v11;
        *v10 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v12 = sub_100216994();
        v14 = v13;
        v15 = sub_100005FB0(v12, v13, &aBlock);
        v14, v16, v17, v18, v19, v20, v21, v22, v78, v81, v83, v6, aBlock, v89, v90, v91, v92, v93;
        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to fetch changes, trust status is unknown: %{public}s", v10, 0xCu);
        sub_100006128(v11, v23, v24, v25, v26, v27, v28, v29);
      }

      else
      {
      }

      v31 = sub_100019974(_swiftEmptyArrayStorage);
      v32 = sub_100019974(_swiftEmptyArrayStorage);
      v33 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
      isa = sub_1002168C4().super.isa;
      v31, v35, v36, v37, v38, v39, v40, v41, v78, v81, v83, v86, aBlock, v89, v90, v91, v92, v93;
      v42 = sub_1002168C4().super.isa;
      v32, v43, v44, v45, v46, v47, v48, v49, v79, v82, v85, v87, aBlock, v89, v90, v91, v92, v93;
      LOBYTE(v80) = 0;
      v50 = [v33 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v42 isExcluded:0 isLocked:v80];

      (a2)(v50, v6);
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v30 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
  if (!v30)
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v52 = swift_allocObject();
    *(v52 + 16) = a4;
    *(v52 + 24) = a2;
    *(v52 + 32) = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_1001AB248;
    *(a2 + 24) = v52;
    v92 = sub_1001ACCC0;
    v93 = a2;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_100109050;
    v91 = &unk_100284638;
    v53 = _Block_copy(&aBlock);
    v54 = v93;
    v55 = a4;

    v54, v56, v57, v58, v59, v60, v61, v62;
    [v6 performBlockAndWait:v53];
    _Block_release(v53);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v52, v64, v65, v66, v67, v68, v69, v70;
    a2, v71, v72, v73, v74, v75, v76, v77;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v84 = v30;
  (a2)();
}

void sub_100118CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *v5->endpoint = a1;
  *v5->containerMap = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = sub_1001AC498;
  *(v7 + 32) = v5;
  v8 = swift_allocObject();
  *v8->endpoint = sub_1001AC4E0;
  *v8->containerMap = v7;
  v41[4] = sub_1001ACCC0;
  v42 = v8;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 1107296256;
  v41[2] = sub_100109050;
  v41[3] = &unk_100285B78;
  v9 = _Block_copy(v41);
  v10 = v42;

  v11 = v2;

  v10, v12, v13, v14, v15, v16, v17, v18;
  [v6 performBlockAndWait:v9];
  v5, v19, v20, v21, v22, v23, v24, v25;
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v7, v27, v28, v29, v30, v31, v32, v33;
  v8, v34, v35, v36, v37, v38, v39, v40;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100118E90(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  if (a3)
  {
    v8 = sub_100216C74();
  }

  else
  {
    v8 = sub_100216C54();
  }

  v9 = v8;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = a1;
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v9))
  {
    v47 = a4;
    v13 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = v11;
    sub_10001148C(&qword_10029DB90, &qword_100226818);
    v15 = sub_1002169A4();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &v55);
    v17, v19, v20, v21, v22, v23, v24, v25, v45, v47, v50, a1, v53, v55, v56, v57, v58, v59;
    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v26 = 0xE700000000000000;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v60._countAndFlagsBits = sub_100216994();
      object = v60._object;
      sub_100216A14(v60);
      object, v28, v29, v30, v31, v32, v33, v34, v46, v48, a3, 0x203A726F727265, 0xE700000000000000, v55, v56, v57, v58, v59;

      v35 = v52;
      v26 = v54;
    }

    else
    {
      v35 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v35, v26, &v55);
    v26, v37, v38, v39, v40, v41, v42, v43, v46, v48, v51, v52, v54, v55, v56, v57, v58, v59;
    *(v13 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v12, v9, "fetch trust state complete: %{public}s %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    a4 = v49;
  }

  else
  {
  }

  return a4(a1, a2, a3);
}

void sub_10011911C(NSObject *a1, void (*a2)(id, unint64_t, id))
{
  v4 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v5 = [*(&a1->isa + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  p_cache = (CKKSSOSSelfPeer + 16);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = v5;
  v8 = sub_100216974();
  v10 = v9;
  v11 = *(&a1->isa + v4);
  v12 = v7;
  v13 = [v11 egoPeerPermanentInfo];
  if (!v13)
  {
    v10, v14, v15, v16, v17, v18, v19, v20, v459, v465, v471, v476, v481, v486, v491, v496, v504, v510;

LABEL_13:
    if (p_cache[164] != -1)
    {
      swift_once();
    }

    v121 = sub_100216774();
    sub_100002648(v121, qword_10029D160);
    v122 = sub_100216754();
    v123 = sub_100216C54();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "No peer ID => no trusted peers", v124, 2u);
    }

    v526 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:0 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    a2(v526, _swiftEmptyArrayStorage, 0);

    return;
  }

  v21 = v13;
  v22 = sub_100216224();
  v24 = v23;

  v25 = [*(&a1->isa + v4) egoPeerPermanentInfoSig];
  if (!v25)
  {

    sub_100002BF0(v22, v24, v108, v109, v110, v111, v112, v113);
    v10, v114, v115, v116, v117, v118, v119, v120, v459, v465, v471, v476, v481, v486, v491, v496, v504, v510;
    p_cache = CKKSSOSSelfPeer.cache;
    goto LABEL_13;
  }

  v521 = v12;
  log = a1;
  v26 = v25;
  v27 = sub_100216224();
  v29 = v28;

  v30 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v22, v24);
  sub_100012558(v27, v29);
  v31 = sub_100216964();
  v10, v32, v33, v34, v35, v36, v37, v38, v459, v465, v471, v476, v481, v486, v491, v496, v504, v8;
  v525 = v24;
  isa = sub_100216204().super.isa;
  v40 = sub_100216204().super.isa;
  v520 = v30;
  v41 = [objc_opt_self() permanentInfoWithPeerID:v31 data:isa sig:v40 keyFactory:v30];

  v518 = v27;
  v519 = v29;
  sub_100002BF0(v27, v29, v42, v43, v44, v45, v46, v47);

  sub_100002BF0(v22, v525, v48, v49, v50, v51, v52, v53);
  v61 = v22;
  if (v41)
  {
    v515 = a2;
    v62 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v63 = log;
    v64 = *(&log->isa + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v65 = [objc_msgSend(v41 "signingPubKey")];
    swift_unknownObjectRelease();
    v66 = sub_100216224();
    v68 = v67;

    v69 = sub_100216204().super.isa;
    sub_100002BF0(v66, v68, v70, v71, v72, v73, v74, v75);
    v528[0] = 0;
    v76 = [v64 hasPotentiallyTrustedPeerPreapprovingKey:v69 error:v528];

    v77 = v528[0];
    if (v528[0])
    {
      v78 = v528[0];
      v10, v79, v80, v81, v82, v83, v84, v85, v460, v466, v472, v477, v482, v487, v492, v497, v505, v511;

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v86 = sub_100216774();
      sub_100002648(v86, qword_10029D160);
      v87 = v78;
      v88 = sub_100216754();
      v89 = sub_100216C74();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = v61;
        v92 = swift_slowAlloc();
        *v90 = 138543362;
        v93 = v87;
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v90 + 4) = v94;
        *v92 = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "fetchTrustState: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v90, 0xCu);
        sub_1000114D4(v92, &qword_10029D580, &unk_10021CCC0);
        v61 = v91;
      }

      v95 = v87;
      v515(0, 0, v77);

      sub_100002BF0(v518, v519, v96, v97, v98, v99, v100, v101);
      sub_100002BF0(v61, v525, v102, v103, v104, v105, v106, v107);
      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v143 = sub_100216774();
    v144 = sub_100002648(v143, qword_10029D160);
    v145 = sub_100216754();
    v146 = sub_100216C54();
    LODWORD(v497) = v76;
    if (os_log_type_enabled(v145, v146))
    {
      v506 = v144;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v528[0] = v148;
      *v147 = 136446210;
      v149 = v76 == 0;
      if (v76)
      {
        v150 = 0x6F72707061657270;
      }

      else
      {
        v150 = 0xD000000000000013;
      }

      v151 = v62;
      if (v149)
      {
        v152 = 0x800000010023CF10;
      }

      else
      {
        v152 = 0xEB00000000646576;
      }

      v153 = v41;
      v154 = v61;
      v155 = sub_100005FB0(v150, v152, v528);
      v156 = v152;
      v62 = v151;
      v156, v157, v158, v159, v160, v161, v162, v163, v460, v466, v472, v477, v482, v487, v492, v497, v506, v511;
      *(v147 + 4) = v155;
      v61 = v154;
      v41 = v153;
      v63 = log;
      _os_log_impl(&_mh_execute_header, v145, v146, "fetchTrustState: ego peer is %{public}s", v147, 0xCu);
      sub_100006128(v148, v164, v165, v166, v167, v168, v169, v170);

      v144 = v505;
    }

    v171 = *(&v63->isa + v62);
    v528[0] = 0;
    v179 = [v171 getStableInfoForPeerWithID:v521 error:v528];
    v180 = v528[0];
    if (v528[0])
    {
      v181 = v528[0];

      swift_willThrow();

      v182 = v181;
      v183 = sub_100216754();
      v184 = sub_100216C74();

      v10, v185, v186, v187, v188, v189, v190, v191, v460, v466, v472, v477, v482, v487, v492, v497, v505, v511;
      if (os_log_type_enabled(v183, v184))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v522 = swift_slowAlloc();
        v528[0] = v522;
        *v199 = 136315394;
        v201 = v61;
        v202 = v182;
        v203 = sub_100005FB0(v512, v10, v528);
        v10, v204, v205, v206, v207, v208, v209, v210, v461, v467, v473, v478, v483, v488, v493, v498, v507, v512;
        *(v199 + 4) = v203;
        v182 = v202;
        v61 = v201;
        *(v199 + 12) = 2114;
        v211 = v182;
        v212 = _swift_stdlib_bridgeErrorToNSError();
        *(v199 + 14) = v212;
        *v200 = v212;
        _os_log_impl(&_mh_execute_header, v183, v184, "fetchTrustState: error calling getStableInfoForPeer %s: %{public}@", v199, 0x16u);
        sub_1000114D4(v200, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v522, v213, v214, v215, v216, v217, v218, v219);
      }

      else
      {
        v10, v192, v193, v194, v195, v196, v197, v198, v461, v467, v473, v478, v483, v488, v493, v498, v507, v512;
      }

      v246 = v182;
      v515(0, 0, v180);
      sub_100002BF0(v61, v525, v247, v248, v249, v250, v251, v252);
      sub_100002BF0(v518, v519, v253, v254, v255, v256, v257, v258);

LABEL_46:
      return;
    }

    v10, v172, v173, v174, v175, v176, v177, v178, v460, v466, v472, v477, v482, v487, v492, v497, v505, v41;
    v220 = *(&v63->isa + v62);
    v528[0] = 0;
    v221 = [v220 statusOfPeerWithID:v521 error:v528];
    v222 = v528[0];
    if (v528[0])
    {
      v223 = v528[0];

      swift_willThrow();
      v224 = v223;
      v225 = sub_100216754();
      v226 = sub_100216C74();

      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        v228 = v179;
        v229 = v61;
        v230 = swift_slowAlloc();
        *v227 = 138543362;
        v231 = v224;
        v232 = _swift_stdlib_bridgeErrorToNSError();
        *(v227 + 4) = v232;
        *v230 = v232;
        _os_log_impl(&_mh_execute_header, v225, v226, "fetchTrustState error calling statusOfPeer: %{public}@", v227, 0xCu);
        sub_1000114D4(v230, &qword_10029D580, &unk_10021CCC0);
        v61 = v229;
        v179 = v228;
      }

      v233 = v224;
      v515(0, 0, v222);
      sub_100002BF0(v61, v525, v234, v235, v236, v237, v238, v239);
      sub_100002BF0(v518, v519, v240, v241, v242, v243, v244, v245);

      goto LABEL_46;
    }

    v259 = v221;
    v260 = sub_1001E4538();
    v508 = v144;
    if (v179)
    {
      v261 = v62;
      v262 = [v179 osVersion];
      sub_100216974();
      v264 = v263;

      v62 = v261;
    }

    else
    {
      v264 = 0;
    }

    v265 = [v179 walrusSetting];
    v266 = [v179 webAccess];
    if (v264)
    {
      v267 = sub_100216964();
      v264, v268, v269, v270, v271, v272, v273, v274, v462, v468, v474, v479, v484, v489, v494, v499, v508, v513;
    }

    else
    {
      v267 = 0;
    }

    v463 = v265;
    v469 = v266;
    v275 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:v521 isPreapproved:v499 status:v259 memberChanges:0 unknownMachineIDs:v260 osVersion:v267 walrus:? webAccess:?];

    v527[0] = _swiftEmptyArrayStorage;
    v276 = *(&v63->isa + v62);
    v528[0] = 0;
    v277 = v62;
    v278 = v276;
    v279 = [v278 peerWithID:v521 error:v528];

    if (v528[0])
    {
      v280 = v528[0];

      swift_willThrow();
      v281 = v280;
      v282 = sub_100216754();
      v283 = sub_100216C74();

      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        v285 = v179;
        v286 = v61;
        v287 = swift_slowAlloc();
        *v284 = 138543362;
        v288 = v281;
        v289 = _swift_stdlib_bridgeErrorToNSError();
        *(v284 + 4) = v289;
        *v287 = v289;
        _os_log_impl(&_mh_execute_header, v282, v283, "Error getting ego peer from model: %{public}@", v284, 0xCu);
        sub_1000114D4(v287, &qword_10029D580, &unk_10021CCC0);
        v61 = v286;
        v179 = v285;

        v281 = v282;
        v282 = v288;
      }

      goto LABEL_57;
    }

    if (!v279)
    {
LABEL_57:
      v290 = sub_100216754();
      v291 = sub_100216C54();
      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        *v292 = 0;
        _os_log_impl(&_mh_execute_header, v290, v291, "No ego peer in model; no trusted peers", v292, 2u);
      }

      v293 = 0;
      goto LABEL_85;
    }

    v294 = v275;
    v295 = v61;
    v296 = v279;
    v297 = [v296 trustedPeerIDs];
    v298 = sub_100216BB4();

    v293 = v296;
    v299 = log;
    sub_100190AB8(v298, v299, v527, v293);
    v298, v300, v301, v302, v303, v304, v305, v306, v463, v266, v474, v479, v484, v489, v494, v499, v508, v513;

    v307 = [v293 stableInfo];
    if (v307)
    {
      v308 = v307;
      v309 = [v307 recoveryEncryptionPublicKey];
      if (v309)
      {
        v523 = v293;
        v310 = v308;
        v311 = v309;
        v494 = sub_100216224();
        v313 = v312;

        v489 = v310;
        v314 = [v310 recoverySigningPublicKey];
        if (!v314)
        {
          v293 = v523;

          v325 = v494;
LABEL_82:
          sub_100002BF0(v325, v313, v319, v320, v321, v322, v323, v324);

          goto LABEL_83;
        }

        v315 = v314;
        v484 = sub_100216224();
        v317 = v316;

        v318 = v313 >> 62;
        if ((v313 >> 62) > 1)
        {
          if (v318 != 2)
          {
            goto LABEL_81;
          }

          v326 = *(v494 + 16);
          v327 = *(v494 + 24);
        }

        else
        {
          if (!v318)
          {
            if ((v313 & 0xFF000000000000) == 0)
            {
              goto LABEL_81;
            }

LABEL_75:
            v328 = v317 >> 62;
            if ((v317 >> 62) <= 1)
            {
              v500 = v179;
              v479 = v317;
              if (!v328)
              {
                if ((v317 & 0xFF000000000000) == 0)
                {
                  goto LABEL_98;
                }

LABEL_90:
                v384 = [objc_allocWithZone(TPRecoveryKeyPair) initWithStableInfo:v489];
                v385 = *(&log->isa + v277);
                v386 = [v523 permanentInfo];
                v387 = [v523 stableInfo];
                v528[0] = 0;
                v388 = [v385 getViewsForPeer:v386 stableInfo:v387 error:v528];

                v389 = v528[0];
                v474 = v384;
                if (!v388)
                {
                  v392 = v528[0];
                  v393 = sub_100216154();

                  swift_willThrow();
                  swift_errorRetain();
                  v394 = sub_100216754();
                  v395 = sub_100216C74();

                  loga = v394;
                  if (os_log_type_enabled(v394, v395))
                  {
                    v396 = swift_slowAlloc();
                    v397 = swift_slowAlloc();
                    v528[0] = v397;
                    *v396 = 136446210;
                    v527[1] = v393;
                    swift_errorRetain();
                    sub_10001148C(&unk_10029D560, qword_10021D450);
                    v398 = sub_100216994();
                    v400 = v399;
                    v401 = sub_100005FB0(v398, v399, v528);
                    v400, v402, v403, v404, v405, v406, v407, v408, v463, v469, v474, v479, v484, v489, v494, v500, v508, v513;
                    *(v396 + 4) = v401;
                    _os_log_impl(&_mh_execute_header, loga, v395, "Unable to add RK as a trusted peer: %{public}s", v396, 0xCu);
                    sub_100006128(v397, v409, v410, v411, v412, v413, v414, v415);

                    v293 = v523;
                    sub_100002BF0(v494, v313, v416, v417, v418, v419, v420, v421);

                    sub_100002BF0(v484, v479, v422, v423, v424, v425, v426, v427);
                  }

                  else
                  {

                    v293 = v523;
                    sub_100002BF0(v494, v313, v428, v429, v430, v431, v432, v433);

                    sub_100002BF0(v484, v479, v434, v435, v436, v437, v438, v439);
                  }

                  goto LABEL_99;
                }

                v390 = sub_100216BB4();
                v391 = v389;

                sub_100013E34(v384, v390);
                v390, v440, v441, v442, v443, v444, v445, v446, v463, v469, v384, v479, v484, v489, v494, v500, v508, v513;
                sub_100216B04();
                if (*((v527[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v527[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100216B44();
                }

                sub_100216B64();

LABEL_98:
                v293 = v523;

                sub_100002BF0(v484, v479, v447, v448, v449, v450, v451, v452);
                sub_100002BF0(v494, v313, v453, v454, v455, v456, v457, v458);

LABEL_99:
                v61 = v295;
                v179 = v500;
                goto LABEL_84;
              }

              v329 = v484;
              v330 = v484 >> 32;
LABEL_89:
              if (v329 == v330)
              {
                goto LABEL_98;
              }

              goto LABEL_90;
            }

            if (v328 == 2)
            {
              v479 = v317;
              v500 = v179;
              v329 = *(v484 + 16);
              v330 = *(v484 + 24);
              goto LABEL_89;
            }

LABEL_81:

            sub_100002BF0(v484, v317, v331, v332, v333, v334, v335, v336);
            v325 = v494;
            v293 = v523;
            goto LABEL_82;
          }

          v326 = v494;
          v327 = v494 >> 32;
        }

        if (v326 == v327)
        {
          goto LABEL_81;
        }

        goto LABEL_75;
      }
    }

LABEL_83:
    v61 = v295;
LABEL_84:
    v275 = v294;
LABEL_85:
    v337 = v61;
    v338 = v275;
    v339 = sub_100216754();
    v340 = sub_100216C54();

    if (os_log_type_enabled(v339, v340))
    {
      v501 = v179;
      v341 = swift_slowAlloc();
      v524 = v293;
      v342 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      v528[0] = v343;
      *v341 = 138543618;
      *(v341 + 4) = v338;
      *v342 = v338;
      *(v341 + 12) = 2082;
      swift_beginAccess();
      v344 = v527[0];
      sub_10000200C(0, &qword_10029DB88, &off_100275050);
      v345 = v338;

      v346 = sub_100216B34();
      v348 = v347;
      v344, v347, v349, v350, v351, v352, v353, v354, v463, v469, v474, v479, v484, v489, v494, v501, v508, v513;
      v355 = sub_100005FB0(v346, v348, v528);
      v348, v356, v357, v358, v359, v360, v361, v362, v464, v470, v475, v480, v485, v490, v495, v502, v509, v514;
      *(v341 + 14) = v355;
      _os_log_impl(&_mh_execute_header, v339, v340, "Returning trust state: %{public}@ %{public}s", v341, 0x16u);
      sub_1000114D4(v342, &qword_10029D580, &unk_10021CCC0);
      v293 = v524;

      sub_100006128(v343, v363, v364, v365, v366, v367, v368, v369);

      v179 = v503;
    }

    swift_beginAccess();
    v370 = v527[0];
    v371 = v338;

    v515(v338, v370, 0);

    sub_100002BF0(v337, v525, v372, v373, v374, v375, v376, v377);
    sub_100002BF0(v518, v519, v378, v379, v380, v381, v382, v383);

    swift_bridgeObjectRelease_n();
    goto LABEL_46;
  }

  v10, v54, v55, v56, v57, v58, v59, v60, v460, v466, v472, v477, v482, v487, v492, v497, v505, v511;

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v125 = sub_100216774();
  sub_100002648(v125, qword_10029D160);
  v126 = sub_100216754();
  v127 = sub_100216C74();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&_mh_execute_header, v126, v127, "fetchTrustState failed to create TPPeerPermanentInfo", v128, 2u);
  }

  sub_1000561D0();
  v129 = swift_allocError();
  *v130 = xmmword_10021DA80;
  *(v130 + 16) = 13;
  a2(0, 0, v129);

  sub_100002BF0(v518, v29, v131, v132, v133, v134, v135, v136);

  sub_100002BF0(v22, v525, v137, v138, v139, v140, v141, v142);
}