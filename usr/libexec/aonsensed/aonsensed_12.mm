uint64_t sub_10013D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 11:
        case 12:
        case 13:
        case 14:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10015BE7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10015BEF8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_1001615D4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10013D938(v5, a1, a2, a3);
    sub_10013D9B0(v5, a1, a2, a3);
    sub_10013DA28(v5, a1, a2, a3);
    sub_10013DAA0(v5, a1, a2, a3);
    sub_10013DB18(v5, a1, a2, a3);
    sub_10013DB90(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013D9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 64)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 68)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DC54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a2 + v19) = 2;
  v21 = a1[17];
  *(a2 + a1[16]) = 2;
  *(a2 + v21) = 2;
  *(a2 + a1[18]) = 2;
  return result;
}

uint64_t sub_10013DD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239D0, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &unk_10037C4B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013DE38(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &unk_10037C440);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013DEA4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &unk_10037C440);

  return Message.hash(into:)();
}

uint64_t sub_10013DFAC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  result = (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  qword_100443ED8 = v0;
  return result;
}

uint64_t sub_10013E098(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v9, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v9) = *(v15 + 4);
  swift_beginAccess();
  *v11 = v16;
  *(v11 + 4) = v9;
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v5, &qword_10041CAB8, &qword_1003744E8);

  swift_beginAccess();
  sub_10000AD64(v5, v1 + v12, &qword_10041CAB8, &qword_1003744E8);
  swift_endAccess();
  return v1;
}

uint64_t sub_10013E368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v9 = swift_allocObject();
    sub_10013E098(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v14 = &unk_100378FC0;
        v15 = &qword_10041C7B8;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel;
    v14 = &unk_10037C440;
    v15 = &qword_10041DB48;
LABEL_15:
    sub_100015EDC(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10013E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(v7 + *(a4(0) + 20));
  result = a5(v15, a1, a2, a3);
  if (!v8)
  {
    v17 = v15 + *a6;
    swift_beginAccess();
    if ((*(v17 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a7(v15, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10013E920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAB8, &qword_1003744E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAB8, &qword_1003744E8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &unk_10037C440);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
}

BOOL sub_10013EB8C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100024A2C(&qword_100423D90, &qword_100382FF8);
  __chkstk_darwin(v50);
  v53 = &v48 - v4;
  v5 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v6 = __chkstk_darwin(v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v48 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = __chkstk_darwin(v16 - 8);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v58;
  sub_10000A0A4(v22, v20, &qword_10041CA30, &qword_100374460);
  v24 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v25 = *(v13 + 56);
  sub_10000A0A4(v20, v15, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v23 + v24, &v15[v25], &qword_10041CA30, &qword_100374460);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {

    sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
    v27 = v26(&v15[v25], 1, v9);
    v28 = a1;
    if (v27 == 1)
    {
      sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v15, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v29 = a1;
  v30 = v57;
  sub_10000A0A4(v15, v57, &qword_10041CA30, &qword_100374460);
  if (v26(&v15[v25], 1, v9) == 1)
  {

    sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = v54;
  sub_1000112AC(&v15[v25], v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v33 = sub_1001853C4(v30, v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v28 = v29;
  sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v34 = v28 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 4);
  v37 = v23 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if ((v36 & 1) == 0)
  {
    v38 = v56;
    v39 = v55;
    if ((*(v37 + 4) & 1) == 0 && v35 == *v37)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v38 = v56;
  v39 = v55;
  if ((*(v37 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v40 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v28 + v40, v39, &qword_10041CAB8, &qword_1003744E8);
  v41 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  v42 = *(v50 + 48);
  v43 = v53;
  sub_10000A0A4(v39, v53, &qword_10041CAB8, &qword_1003744E8);
  sub_10000A0A4(v23 + v41, v43 + v42, &qword_10041CAB8, &qword_1003744E8);
  v44 = *(v51 + 48);
  v45 = v52;
  if (v44(v43, 1, v52) == 1)
  {

    sub_1000059A8(v39, &qword_10041CAB8, &qword_1003744E8);
    if (v44(v43 + v42, 1, v45) == 1)
    {
      sub_1000059A8(v43, &qword_10041CAB8, &qword_1003744E8);
      return 1;
    }

    goto LABEL_21;
  }

  sub_10000A0A4(v43, v38, &qword_10041CAB8, &qword_1003744E8);
  if (v44(v43 + v42, 1, v45) == 1)
  {

    sub_1000059A8(v39, &qword_10041CAB8, &qword_1003744E8);
    sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
LABEL_21:
    sub_1000059A8(v43, &qword_100423D90, &qword_100382FF8);
    return 0;
  }

  v46 = v49;
  sub_1000112AC(v43 + v42, v49, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v47 = sub_10018134C(v38, v46);

  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_1000059A8(v39, &qword_10041CAB8, &qword_1003744E8);
  sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_1000059A8(v43, &qword_10041CAB8, &qword_1003744E8);
  return (v47 & 1) != 0;
}

uint64_t sub_10013F48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239C8, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &unk_10037C620);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013F52C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB60, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &unk_10037C5A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013F598(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB60, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &unk_10037C5A8);

  return Message.hash(into:)();
}

uint64_t sub_10013F63C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004337A0);
  sub_100005DF0(v0, qword_1004337A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "search_point_latitude_deg";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "search_point_longitude_deg";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "search_radius_m";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_close_to_tunnel";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_close_to_bridge";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_tunnel";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_bridge";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013F9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013FBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013FE44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  *(a2 + v10) = 2;
  v12 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[12]) = 2;
  return result;
}

uint64_t sub_10013FF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239C0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &unk_10037C788);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013FFD4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &unk_10037C710);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100140040(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &unk_10037C710);

  return Message.hash(into:)();
}

uint64_t sub_100140144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    v8 = &unk_10037C710;
    v9 = &qword_10041DB78;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100140318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CAC0, &qword_1003744F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAC0, &qword_1003744F0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &unk_10037C710);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
}

uint64_t sub_1001405B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239B8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &unk_10037C8F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100140650(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB90, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &unk_10037C878);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001406BC(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB90, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &unk_10037C878);

  return Message.hash(into:)();
}

uint64_t sub_100140760()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004337D0);
  sub_100005DF0(v0, qword_1004337D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1003743D0;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "latitude_deg";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longitude_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "horizontal_unc_m";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "altitude_m";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "vertical_unc_m";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reference_frame";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "course_at_exit_deg";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "course_at_exit_unc_deg";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "tunnel_width_at_exit_m";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_tunnel_curved";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "start_latitude_deg";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "start_longitude_deg";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "tunnel_length_m";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "end_point_distance_from_current_solution_m";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100140C90()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v15 = 0;
  *(v15 + 8) = 1;
  qword_100443F00 = v0;
  return result;
}

uint64_t sub_100140E30()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime, &qword_10041CA30, &qword_100374460);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100140EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v9 = swift_allocObject();
    sub_100174D8C(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 12:
        case 13:
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_11;
        case 7:
          swift_beginAccess();
          sub_100198EEC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_11;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_11:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001411A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  result = sub_100141538(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
    swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, sub_100198EEC, 7, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg, 8);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg, 9);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM, 10);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved, 11);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg, 12);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg, 13);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM, 14);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM, 15);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100141538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100141760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100141864(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v89 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v85 - v7;
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = __chkstk_darwin(v9 - 8);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v85 - v12;
  v14 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v88;
  sub_10000A0A4(v15, v13, &qword_10041CA30, &qword_100374460);
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v18 = *(v6 + 56);
  sub_10000A0A4(v13, v8, &qword_10041CA30, &qword_100374460);
  v19 = v16 + v17;
  v20 = v89;
  sub_10000A0A4(v19, &v8[v18], &qword_10041CA30, &qword_100374460);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v20) == 1)
  {

    sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
    v22 = a1;
    if (v21(&v8[v18], 1, v20) == 1)
    {
      sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
      goto LABEL_10;
    }

LABEL_6:
    sub_1000059A8(v8, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v22 = a1;
  v23 = v87;
  sub_10000A0A4(v8, v87, &qword_10041CA30, &qword_100374460);
  if (v21(&v8[v18], 1, v20) == 1)
  {

    sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v25 = v86;
  sub_1000112AC(&v8[v18], v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v89) = sub_1001853C4(v23, v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  if ((v89 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v26 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  if (v28)
  {
    if ((*(v29 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v29 + 8) & 1) != 0 || v27 != *v29)
  {
    goto LABEL_7;
  }

  v30 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  if (v32)
  {
    if ((*(v33 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v33 + 8) & 1) != 0 || v31 != *v33)
  {
    goto LABEL_7;
  }

  v34 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  if (v36)
  {
    if ((*(v37 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 8) & 1) != 0 || v35 != *v37)
  {
    goto LABEL_7;
  }

  v38 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  if (v40)
  {
    if ((*(v41 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v41 + 8) & 1) != 0 || v39 != *v41)
  {
    goto LABEL_7;
  }

  v42 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  if (v44)
  {
    if ((*(v45 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v45 + 8) & 1) != 0 || v43 != *v45)
  {
    goto LABEL_7;
  }

  v46 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v47 = *(v22 + v46);
  v48 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v49 = *(v16 + v48);
  if (v47 == 3)
  {
    if (v49 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v49 == 3 || v47 != v49)
  {
    goto LABEL_7;
  }

  v50 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  if (v52)
  {
    if ((*(v53 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v53 + 8) & 1) != 0 || v51 != *v53)
  {
    goto LABEL_7;
  }

  v54 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  if (v56)
  {
    if ((*(v57 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v57 + 8) & 1) != 0 || v55 != *v57)
  {
    goto LABEL_7;
  }

  v58 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  if (v60)
  {
    if (*(v61 + 8))
    {
      goto LABEL_55;
    }

LABEL_7:

    return 0;
  }

  if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

LABEL_55:
  v62 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v63 = *(v22 + v62);
  v64 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v65 = *(v16 + v64);
  if (v63 == 2)
  {
    if (v65 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v65 == 2 || ((v63 ^ v65) & 1) != 0)
  {
    goto LABEL_7;
  }

  v66 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 8);
  v69 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  if (v68)
  {
    if ((*(v69 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 + 8) & 1) != 0 || v67 != *v69)
  {
    goto LABEL_7;
  }

  v70 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v71 = *v70;
  v72 = *(v70 + 8);
  v73 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  if (v72)
  {
    if ((*(v73 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v73 + 8) & 1) != 0 || v71 != *v73)
  {
    goto LABEL_7;
  }

  v74 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  if (v76)
  {
    if ((*(v77 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v77 + 8) & 1) != 0 || v75 != *v77)
  {
    goto LABEL_7;
  }

  v78 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v79 = *v78;
  v80 = *(v78 + 8);

  v81 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v82 = *v81;
  v83 = *(v81 + 8);

  if (v80)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else
  {
    if (v79 == v82)
    {
      v84 = v83;
    }

    else
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001422C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239B0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &unk_10037CA58);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100142364(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &unk_10037C9E0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001423D0(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &unk_10037C9E0);

  return Message.hash(into:)();
}

uint64_t sub_1001424D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    v8 = &unk_10037C9E0;
    v9 = &qword_10041DBA8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1001426A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAC8, &qword_1003744F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CAC8, &qword_1003744F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAC8, &qword_1003744F8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &unk_10037C9E0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
}

uint64_t sub_100142940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239A8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &unk_10037CBC0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001429E0(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBC0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &unk_10037CB48);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100142A4C(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DBC0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &unk_10037CB48);

  return Message.hash(into:)();
}

uint64_t sub_100142AF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433800);
  sub_100005DF0(v0, qword_100433800);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "road_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_latitude_deg";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_longitude_deg";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_latitude_deg";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "end_longitude_deg";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100142DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

int *sub_100142EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100143020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100143118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239A0, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &unk_10037CD28);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001431B8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &unk_10037CCB0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100143224(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &unk_10037CCB0);

  return Message.hash(into:)();
}

uint64_t sub_1001432C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433818);
  sub_100005DF0(v0, qword_100433818);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicable_time";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "route_type";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "step_type";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "route_hint_data";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001435A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
        sub_100198124();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
        sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &unk_10037CCB0);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100143940(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100143B5C(v3, a1, a2, a3);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
    if (*(v3 + *(v9 + 32)) != 7)
    {
      sub_100198124();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v9 + 36)) != 7)
    {
      sub_100198124();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &unk_10037CCB0);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100143940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100143B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100143DC4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  result = (v6)(&a2[a1[7]], 1, 1, v5);
  v8 = a1[9];
  a2[a1[8]] = 7;
  a2[v8] = 7;
  return result;
}

uint64_t sub_100143EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423998, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &unk_10037CE90);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100143F58(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBE8, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &unk_10037CE18);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100143FC4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DBE8, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &unk_10037CE18);

  return Message.hash(into:)();
}

uint64_t sub_100144040()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433830);
  sub_100005DF0(v0, qword_100433830);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "RT_UNKNOWN";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "RT_PEDESTRIAN";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RT_VEHICLE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RT_TRANSIT";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RT_BICYCLE";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RT_FERRY";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RT_RIDESHARE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001443D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433848);
  sub_100005DF0(v0, qword_100433848);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "applicable_time";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "client";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "transmission_state";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sample_count";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "time_offset_sec";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "speed_mps";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "slip_detected";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sensor_type";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001447A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            sub_1001980D0();
            goto LABEL_19;
          }

LABEL_25:
          type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
LABEL_24:
            dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
            goto LABEL_5;
          }

          goto LABEL_25;
        }

        switch(result)
        {
          case 7:
            goto LABEL_24;
          case 8:
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 9:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            sub_10019807C();
LABEL_19:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001449F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144BE8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100151A8C(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 2);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
    if ((*(v3 + *(v9 + 36) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + *(v9 + 40)) != 5)
    {
      sub_1001980D0();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100144E04(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 5);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    sub_1000167F8(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    sub_100144E88(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100144BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100144E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100144E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    sub_10019807C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100144F64@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 1) = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  result = (v6)(&a2[a1[8]], 1, 1, v5);
  v8 = a1[10];
  v9 = &a2[a1[9]];
  *v9 = 0;
  v9[4] = 1;
  a2[v8] = 5;
  v10 = a1[12];
  v11 = &a2[a1[11]];
  *v11 = 0;
  v11[4] = 1;
  a2[v10] = 2;
  a2[a1[13]] = 2;
  return result;
}

uint64_t sub_10014508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423990, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &unk_10037D020);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014512C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC00, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &unk_10037CFA8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100145198(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC00, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &unk_10037CFA8);

  return Message.hash(into:)();
}

uint64_t sub_100145214()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433860);
  sub_100005DF0(v0, qword_100433860);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TS_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TS_PARK";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TS_REVERSE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TS_DRIVE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "TS_NEUTRAL";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100145510()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433878);
  sub_100005DF0(v0, qword_100433878);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ST_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ST_COMBINED";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014576C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433890);
  sub_100005DF0(v0, qword_100433890);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "previous";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "about_to_sleep";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recently_woke";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100145A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
        sub_100198BA4();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100145B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v6 = result;
  if (*(v3 + result[5]) == 5)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198BA4();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v6[6]) != 5)
  {
    sub_100198BA4();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100145CC0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 5;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t sub_100145D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423988, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &unk_10037D1D8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100145DD8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &unk_10037D160);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100145E44(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &unk_10037D160);

  return Message.hash(into:)();
}

uint64_t sub_100145EEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338A8);
  sub_100005DF0(v0, qword_1004338A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "level";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "charged";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "connected";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "charger_type";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "was_connected";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "charger_family";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
            sub_100198B50();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100146398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 5)
  {
    sub_100198B50();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_100146510(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100146510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001465D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v7) = 5;
  v8 = a1[10];
  *(a2 + a1[9]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_10014666C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423980, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &unk_10037D340);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014670C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &unk_10037D2C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100146778(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &unk_10037D2C8);

  return Message.hash(into:)();
}

uint64_t sub_10014681C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338C0);
  sub_100005DF0(v0, qword_1004338C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "notification_data";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "reachability";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "battery";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "airplane_mode";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "display_on";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lock_screen";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is_battery_saver_mode_enabled";
  *(v22 + 8) = 29;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "push_service_connected";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "wireless_modem_clients";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "thermal_level";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "restricted_mode";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100146CE0()
{
  type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v3 = 0;
  *(v3 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  result = (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  qword_100443F60 = v0;
  return result;
}

uint64_t sub_100146E98()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability, &qword_10041CAD0, &qword_100374500);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery, &qword_10041CAD8, &qword_100374508);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100146F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v9 = swift_allocObject();
    sub_1001754E0(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v13 = &unk_100378FC0;
          v14 = &qword_10041C7B8;
          goto LABEL_11;
        case 2:
        case 11:
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          sub_100198028();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState;
          v13 = &unk_10037D160;
          v14 = &qword_10041DC18;
          goto LABEL_11;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_Battery;
          v13 = &unk_10037D2C8;
          v14 = &qword_10041DC30;
LABEL_11:
          sub_100015EDC(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_14;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  result = sub_1001475AC(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
    swift_beginAccess();
    if (*(v8 + v11) != 20)
    {
      sub_100198028();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_1001477D4(v8, a1, a2, a3);
    sub_1001479FC(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
    swift_beginAccess();
    if (*(v8 + v12) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn, 7);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen, 8);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled, 9);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected, 10);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode, 13);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001475AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_1001477D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAD0, &qword_100374500);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAD0, &qword_100374500);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &unk_10037D160);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
}

uint64_t sub_1001479FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAD8, &qword_100374508);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAD8, &qword_100374508);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &unk_10037D2C8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
}

uint64_t sub_100147C68(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v110 = *(v3 - 8);
  v111 = v3;
  __chkstk_darwin(v3);
  v106 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100024A2C(&qword_100423D70, &qword_100382FD8);
  __chkstk_darwin(v109);
  v112 = &v105 - v5;
  v6 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  v7 = __chkstk_darwin(v6 - 8);
  v107 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v119 = &v105 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100024A2C(&qword_100423D78, &qword_100382FE0);
  __chkstk_darwin(v114);
  v117 = &v105 - v12;
  v13 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  v14 = __chkstk_darwin(v13 - 8);
  v113 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v105 - v16;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v105 - v21;
  v23 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v24 = __chkstk_darwin(v23 - 8);
  v121 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v105 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v27, &qword_10041CA30, &qword_100374460);
  v29 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v30 = v123;
  swift_beginAccess();
  v31 = *(v20 + 56);
  sub_10000A0A4(v27, v22, &qword_10041CA30, &qword_100374460);
  v32 = v30 + v29;
  v33 = v122;
  sub_10000A0A4(v32, &v22[v31], &qword_10041CA30, &qword_100374460);
  v34 = *(v17 + 48);
  if (v34(v22, 1, v33) == 1)
  {

    sub_1000059A8(v27, &qword_10041CA30, &qword_100374460);
    if (v34(&v22[v31], 1, v33) == 1)
    {
      sub_1000059A8(v22, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v36 = &qword_100423CE0;
    v37 = &qword_100393E90;
    v38 = v22;
LABEL_7:
    sub_1000059A8(v38, v36, v37);
    goto LABEL_8;
  }

  v35 = v121;
  sub_10000A0A4(v22, v121, &qword_10041CA30, &qword_100374460);
  if (v34(&v22[v31], 1, v33) == 1)
  {

    sub_1000059A8(v27, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v35, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v40 = v118;
  sub_1000112AC(&v22[v31], v118, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v41 = sub_1001853C4(v35, v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v27, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v35, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v22, &qword_10041CA30, &qword_100374460);
  if ((v41 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 4);
  v45 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v44)
  {
    v47 = v119;
    v46 = v120;
    if ((*(v45 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = v119;
    v46 = v120;
    if ((*(v45 + 4) & 1) != 0 || v43 != *v45)
    {
      goto LABEL_8;
    }
  }

  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v51 = *(v30 + v50);
  if (v49 == 20)
  {
    if (v51 != 20)
    {
      goto LABEL_8;
    }
  }

  else if (v51 == 20 || v49 != v51)
  {
    goto LABEL_8;
  }

  v52 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(a1 + v52, v46, &qword_10041CAD0, &qword_100374500);
  v53 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v54 = *(v114 + 48);
  v55 = v117;
  sub_10000A0A4(v46, v117, &qword_10041CAD0, &qword_100374500);
  v56 = v55;
  sub_10000A0A4(v30 + v53, v55 + v54, &qword_10041CAD0, &qword_100374500);
  v57 = v116;
  v58 = *(v115 + 48);
  if (v58(v55, 1, v116) == 1)
  {
    sub_1000059A8(v46, &qword_10041CAD0, &qword_100374500);
    if (v58(v55 + v54, 1, v57) == 1)
    {
      sub_1000059A8(v55, &qword_10041CAD0, &qword_100374500);
      goto LABEL_28;
    }

LABEL_26:
    v36 = &qword_100423D78;
    v37 = &qword_100382FE0;
LABEL_34:
    v38 = v56;
    goto LABEL_7;
  }

  v59 = v113;
  sub_10000A0A4(v55, v113, &qword_10041CAD0, &qword_100374500);
  if (v58(v55 + v54, 1, v57) == 1)
  {
    sub_1000059A8(v120, &qword_10041CAD0, &qword_100374500);
    sub_100015F24(v59, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    goto LABEL_26;
  }

  v60 = v55 + v54;
  v61 = v108;
  sub_1000112AC(v60, v108, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v62 = sub_10017D8D0(v59, v61);
  sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_1000059A8(v120, &qword_10041CAD0, &qword_100374500);
  sub_100015F24(v59, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_1000059A8(v55, &qword_10041CAD0, &qword_100374500);
  if ((v62 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_28:
  v63 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(a1 + v63, v47, &qword_10041CAD8, &qword_100374508);
  v64 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v65 = *(v109 + 48);
  v66 = v112;
  sub_10000A0A4(v47, v112, &qword_10041CAD8, &qword_100374508);
  v56 = v66;
  sub_10000A0A4(v30 + v64, v66 + v65, &qword_10041CAD8, &qword_100374508);
  v67 = v111;
  v68 = *(v110 + 48);
  if (v68(v66, 1, v111) == 1)
  {
    sub_1000059A8(v47, &qword_10041CAD8, &qword_100374508);
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_1000059A8(v66, &qword_10041CAD8, &qword_100374508);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v69 = v107;
  sub_10000A0A4(v66, v107, &qword_10041CAD8, &qword_100374508);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_1000059A8(v47, &qword_10041CAD8, &qword_100374508);
    sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
LABEL_33:
    v36 = &qword_100423D70;
    v37 = &qword_100382FD8;
    goto LABEL_34;
  }

  v70 = v66 + v65;
  v71 = v106;
  sub_1000112AC(v70, v106, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v72 = sub_10018221C(v69, v71);
  sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_1000059A8(v47, &qword_10041CAD8, &qword_100374508);
  sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_1000059A8(v66, &qword_10041CAD8, &qword_100374508);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v73 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v76 = *(v30 + v75);
  if (v74 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v76 == 2 || ((v74 ^ v76) & 1) != 0)
  {
    goto LABEL_8;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v80 = *(v30 + v79);
  if (v78 == 2)
  {
    if (v80 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v80 == 2 || ((v78 ^ v80) & 1) != 0)
  {
    goto LABEL_8;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v84 = *(v30 + v83);
  if (v82 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v84 == 2 || ((v82 ^ v84) & 1) != 0)
  {
    goto LABEL_8;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v88 = *(v30 + v87);
  if (v86 == 2)
  {
    if (v88 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v88 == 2 || ((v86 ^ v88) & 1) != 0)
  {
    goto LABEL_8;
  }

  v89 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v92 = *(v30 + v91);
  if (v90 == 2)
  {
    if (v92 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v92 == 2 || ((v90 ^ v92) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v93 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients);
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 4);
  v96 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  if (v95)
  {
    if ((*(v96 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v96 + 4) & 1) != 0 || v94 != *v96)
  {
    goto LABEL_8;
  }

  v97 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel);
  swift_beginAccess();
  v98 = *v97;
  v99 = *(v97 + 4);
  v100 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  if (v99)
  {
    if ((*(v100 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v100 + 4) & 1) != 0 || v98 != *v100)
  {
    goto LABEL_8;
  }

  v101 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v102 = *(a1 + v101);

  v103 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v104 = *(v30 + v103);

  if (v102 == 2)
  {
    if (v104 != 2)
    {
      return 0;
    }
  }

  else if (v104 == 2 || ((v102 ^ v104) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100148C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423978, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &unk_10037D4A8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100148CA4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC48, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &unk_10037D430);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100148D10(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC48, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &unk_10037D430);

  return Message.hash(into:)();
}

uint64_t sub_100148D8C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338D8);
  sub_100005DF0(v0, qword_1004338D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100374420;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "NT_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NT_INIT";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NT_SHUTDOWN";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "NT_SLEEP";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NT_WAKE";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "NT_LINGER";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NT_PENALTY_FREE";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "NT_REACHABILITY";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NT_BATTERY";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "NT_AIRPLANE_MODE";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "NT_MIGRATION";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "NT_DISPLAY";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NT_LOCKSCREEN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "NT_PUSH_SERVICE";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "NT_WIRELESS_MODEM";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "NT_THERMAL";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "NT_RESTRICTED_POWER_MODE";
  *(v37 + 8) = 24;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "NT_BATTERY_SAVER_MODE";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "NT_METRIC_HEARTBEAT";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "NT_BOOT_AFTER_UNCLEAN_SHUTDOWN";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100149434()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338F0);
  sub_100005DF0(v0, qword_1004338F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coarse_signal_environment";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "high_resolution_signal_environment";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001496CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          sub_100197FD4();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014985C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168420(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
    if (*(v3 + v6[6]) != 8)
    {
      sub_100197FD4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + v6[7]) != 8)
    {
      sub_100197FD4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v6[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100149A10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 8;
  *(a2 + v7) = 8;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_100149AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423970, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &unk_10037D638);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100149B78(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC60, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &unk_10037D5C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100149BE4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC60, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &unk_10037D5C0);

  return Message.hash(into:)();
}

uint64_t sub_100149C60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433908);
  sub_100005DF0(v0, qword_100433908);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = -1;
  *v5 = "SE_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 0;
  *v9 = "SE_UNAVAILABLE";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 1;
  *v11 = "SE_RURAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "SE_URBAN";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "SE_DENSE_URBAN";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "SE_DENSE_URBAN_CANYON";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 5;
  *v19 = "SE_MARINE";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "SE_FOLIAGE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A038()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433920);
  sub_100005DF0(v0, qword_100433920);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fidelity_level";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
        sub_100198AFC();
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
    sub_100197FD4();
LABEL_5:
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10014A334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 8)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100197FD4();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 4)
  {
    sub_100198AFC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10014A4B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423968, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &unk_10037D7C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A554(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC78, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &unk_10037D750);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A5C0(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DC78, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &unk_10037D750);

  return Message.hash(into:)();
}

uint64_t sub_10014A664()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433938);
  sub_100005DF0(v0, qword_100433938);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x_uT";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y_uT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z_uT";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          a4(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1)
      {
        a4(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423960, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &unk_10037D930);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014ABF4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &unk_10037D8B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AC60(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &unk_10037D8B8);

  return Message.hash(into:)();
}

uint64_t sub_10014AD04()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433950);
  sub_100005DF0(v0, qword_100433950);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014AF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
        sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &unk_10037D8B8);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014B080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014B17C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
      sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &unk_10037D8B8);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10014B468(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423958, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &unk_10037DA98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B508(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCA0, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &unk_10037DA20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B574(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DCA0, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &unk_10037DA20);

  return Message.hash(into:)();
}

uint64_t sub_10014B6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_100168420(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014B8C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_10014B948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423950, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &unk_10037DC00);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B9E8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCB8, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &unk_10037DB88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014BA54(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DCB8, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &unk_10037DB88);

  return Message.hash(into:)();
}

uint64_t sub_10014BAF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433980);
  sub_100005DF0(v0, qword_100433980);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "calibrated";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lower_bound";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "upper_bound";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014BE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423948, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &unk_10037DD68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014BECC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &unk_10037DCF0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014BF38(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &unk_10037DCF0);

  return Message.hash(into:)();
}

uint64_t sub_10014BFE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433998);
  sub_100005DF0(v0, qword_100433998);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "accel_pose_x_high";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "accel_var_xyz_low";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gyro_num_samples_sufficient";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gyro_var_x_high";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "consecutive_requirement";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_vehicular_low_confidence";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_vehicular_high_confidence";
  *(v19 + 1) = 28;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "consistent_steps_protection";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014C368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
LABEL_12:
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_12;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10014C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10014C694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014C75C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_10014C7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423940, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &unk_10037DED0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014C888(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &unk_10037DE58);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014C8F4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &unk_10037DE58);

  return Message.hash(into:)();
}

uint64_t sub_10014C998()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339B0);
  sub_100005DF0(v0, qword_1004339B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100374430;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v53 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v53 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "first_step_time";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v53 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v53 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "distance_m";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v53 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "raw_distance_m";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v53 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "floors_ascended";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v53 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "floors_descended";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v53 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "current_pace_spm";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v53 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "current_cadence";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v53 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "active_time";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v53 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "record_id";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v53 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "source_id";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v53 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "is_odometer_distance";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v53 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "is_odometer_pace";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v53 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "accelerometer_pace";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v8();
  v37 = v53 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "push_count";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v53 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "workout_type";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v53 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "pedometer_arm_constrainted_state";
  *(v41 + 1) = 32;
  v41[16] = 2;
  v8();
  v42 = (v53 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "elevation_ascended_cm";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v53 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "elevation_descended_cm";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v53 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "false_steps_suppressed";
  *(v47 + 1) = 22;
  v47[16] = 2;
  v8();
  v48 = (v53 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "distance_source";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v53 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "false_step_detector_state";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014D0E8()
{
  type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = (v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  v16 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v21 = 0;
  *(v21 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v22 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  result = (*(*(v23 - 8) + 56))(v0 + v22, 1, 1, v23);
  qword_100443FC0 = v0;
  return result;
}

uint64_t sub_10014D3C4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  __chkstk_darwin(v3 - 8);
  v111 = &v89 - v4;
  v5 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  __chkstk_darwin(v5 - 8);
  v108 = &v89 - v6;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v89 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v11);
  v91 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v11);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  v92 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  v93 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  v94 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  v95 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  v96 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  v97 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  v98 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v22 = 0;
  v22[1] = 0;
  v99 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v100 = v23;
  v101 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  v102 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  v103 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  v104 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  v105 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v29 = 0;
  *(v29 + 4) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  v106 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  v107 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v109 = v32;
  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v35, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v36, v9, &qword_10041CA30, &qword_100374460);
  v37 = v90;
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v37, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v38, v9, &qword_10041CA30, &qword_100374460);
  v39 = v91;
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v39, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  LODWORD(v39) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  swift_beginAccess();
  *v13 = v39;
  *(v13 + 4) = v40;
  v41 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  swift_beginAccess();
  *v14 = v42;
  *(v14 + 8) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  swift_beginAccess();
  *v15 = v44;
  *(v15 + 8) = v43;
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  LODWORD(v44) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  v46 = v92;
  swift_beginAccess();
  *v46 = v44;
  *(v46 + 4) = v45;
  v47 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  LODWORD(v44) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  v48 = v93;
  swift_beginAccess();
  *v48 = v44;
  *(v48 + 4) = v47;
  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v94;
  swift_beginAccess();
  *v51 = v50;
  *(v51 + 8) = v49;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v95;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v96;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  LODWORD(v56) = *v58;
  LOBYTE(v58) = *(v58 + 4);
  v59 = v97;
  swift_beginAccess();
  *v59 = v56;
  *(v59 + 4) = v58;
  v60 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v98;
  swift_beginAccess();
  *v63 = v62;
  v63[1] = v61;

  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v99;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v100;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v69 = v108;
  sub_10000A0A4(a1 + v68, v108, &qword_10041CAE0, &qword_100374510);
  v70 = v101;
  swift_beginAccess();
  sub_10000AD64(v69, v1 + v70, &qword_10041CAE0, &qword_100374510);
  swift_endAccess();
  v71 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  LODWORD(v67) = *v71;
  LOBYTE(v71) = *(v71 + 4);
  v72 = v102;
  swift_beginAccess();
  *v72 = v67;
  *(v72 + 4) = v71;
  v73 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  LODWORD(v67) = *v73;
  LOBYTE(v73) = *(v73 + 4);
  v74 = v103;
  swift_beginAccess();
  *v74 = v67;
  *(v74 + 4) = v73;
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  LODWORD(v67) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v104;
  swift_beginAccess();
  *v76 = v67;
  *(v76 + 4) = v75;
  v77 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  LODWORD(v67) = *v77;
  LOBYTE(v77) = *(v77 + 4);
  v78 = v105;
  swift_beginAccess();
  *v78 = v67;
  *(v78 + 4) = v77;
  v79 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  LODWORD(v67) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v106;
  swift_beginAccess();
  *v80 = v67;
  *(v80 + 4) = v79;
  v81 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  LODWORD(v67) = *v81;
  LOBYTE(v81) = *(v81 + 4);
  v82 = v107;
  swift_beginAccess();
  *v82 = v67;
  *(v82 + 4) = v81;
  v83 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v109;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v86 = v111;
  sub_10000A0A4(a1 + v85, v111, &qword_10041CAE8, &qword_100374518);

  v87 = v110;
  swift_beginAccess();
  sub_10000AD64(v86, v1 + v87, &qword_10041CAE8, &qword_100374518);
  swift_endAccess();
  return v1;
}

uint64_t sub_10014DF48()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, &qword_10041CA30, &qword_100374460);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace, &qword_10041CAE0, &qword_100374510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState, &qword_10041CAE8, &qword_100374518);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10014E058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
    v9 = swift_allocObject();
    sub_10014D3C4(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v13 = &unk_100378FC0;
          v14 = &qword_10041C7B8;
          goto LABEL_16;
        case 4:
        case 7:
        case 8:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_17;
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace;
          v13 = &unk_10037DCF0;
          v14 = &qword_10041DCD0;
          goto LABEL_16;
        case 23:
          swift_beginAccess();
          sub_100197F80();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 24:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState;
          v13 = &unk_10037DE58;
          v14 = &qword_10041DCE8;
LABEL_16:
          sub_100015EDC(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20));
  result = sub_10014E958(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10014EB80(v8, a1, a2, a3);
    sub_10014EDA8(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM, 6);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm, 9);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence, 10);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime, 11);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014EFD0(v8, a1, a2, a3);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance, 14);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace, 15);
    sub_10014F074(v8, a1, a2, a3);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount, 17, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType, 18, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState, 19, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm, 20, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm, 21, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed, 22, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F33C(v8, a1, a2, a3);
    sub_10014F3E0(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014E958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10014EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10014EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10014EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID;
  result = swift_beginAccess();
  if (*(v4 + 8))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAE0, &qword_100374510);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAE0, &qword_100374510);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &unk_10037DCF0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
}

uint64_t sub_10014F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_10014F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  result = swift_beginAccess();
  if (*(a1 + v5) != 10)
  {
    sub_100197F80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAE8, &qword_100374518);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAE8, &qword_100374518);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &unk_10037DE58);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
}

BOOL sub_10014F64C(_BYTE *a1, uint64_t a2)
{
  v209 = a2;
  v191 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = &v184[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = sub_100024A2C(&qword_100423D60, &qword_100382FC8);
  __chkstk_darwin(v186);
  v192 = &v184[-v4];
  v5 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  v6 = __chkstk_darwin(v5 - 8);
  v188 = &v184[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v187 = &v184[-v8];
  v198 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v193 = &v184[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v195 = sub_100024A2C(&qword_100423D68, &qword_100382FD0);
  __chkstk_darwin(v195);
  v199 = &v184[-v10];
  v11 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  v12 = __chkstk_darwin(v11 - 8);
  v194 = &v184[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v197 = &v184[-v14];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v16 = *(v15 - 8);
  v210 = v15;
  v211 = v16;
  __chkstk_darwin(v15);
  v205 = &v184[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v19 = __chkstk_darwin(v18);
  v201 = &v184[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v204 = &v184[-v22];
  __chkstk_darwin(v21);
  v24 = &v184[-v23];
  v25 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v26 = __chkstk_darwin(v25 - 8);
  v200 = &v184[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v203 = &v184[-v29];
  v30 = __chkstk_darwin(v28);
  v202 = &v184[-v31];
  v32 = __chkstk_darwin(v30);
  v208 = &v184[-v33];
  v34 = __chkstk_darwin(v32);
  v206 = &v184[-v35];
  __chkstk_darwin(v34);
  v37 = &v184[-v36];
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v39 = a1;
  sub_10000A0A4(&a1[v38], v37, &qword_10041CA30, &qword_100374460);
  v40 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v41 = v209;
  swift_beginAccess();
  v207 = v18;
  v42 = *(v18 + 48);
  sub_10000A0A4(v37, v24, &qword_10041CA30, &qword_100374460);
  v43 = v210;
  v44 = v211;
  sub_10000A0A4(v41 + v40, &v24[v42], &qword_10041CA30, &qword_100374460);
  v47 = *(v44 + 48);
  v46 = v44 + 48;
  v45 = v47;
  if (v47(v24, 1, v43) == 1)
  {

    sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
    if (v45(&v24[v42], 1, v43) == 1)
    {
      sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v50 = v24;
LABEL_14:
    sub_1000059A8(v50, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  v48 = v39;
  v49 = v206;
  sub_10000A0A4(v24, v206, &qword_10041CA30, &qword_100374460);
  v211 = v46;
  if (v45(&v24[v42], 1, v43) == 1)
  {

    sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v51 = v205;
  sub_1000112AC(&v24[v42], v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v185 = sub_1001853C4(v49, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
  v52 = v49;
  v39 = v48;
  sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
  v46 = v211;
  if ((v185 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v53 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v206 = v39;
  v54 = &v39[v53];
  v55 = v208;
  sub_10000A0A4(v54, v208, &qword_10041CA30, &qword_100374460);
  v56 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v57 = *(v207 + 48);
  v58 = v204;
  sub_10000A0A4(v55, v204, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v41 + v56, &v58[v57], &qword_10041CA30, &qword_100374460);
  v59 = v210;
  if (v45(v58, 1, v210) == 1)
  {
    sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
    v60 = v45(&v58[v57], 1, v59);
    v61 = v206;
    if (v60 == 1)
    {
      v211 = v46;
      sub_1000059A8(v58, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v62 = v202;
  sub_10000A0A4(v58, v202, &qword_10041CA30, &qword_100374460);
  if (v45(&v58[v57], 1, v59) == 1)
  {
    sub_1000059A8(v208, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v50 = v58;
    goto LABEL_14;
  }

  v211 = v46;
  v64 = &v58[v57];
  v65 = v58;
  v66 = v205;
  sub_1000112AC(v64, v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v67 = sub_1001853C4(v62, v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v208, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v65, &qword_10041CA30, &qword_100374460);
  v61 = v206;
  if ((v67 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  v69 = v203;
  sub_10000A0A4(&v61[v68], v203, &qword_10041CA30, &qword_100374460);
  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v71 = v209;
  swift_beginAccess();
  v72 = *(v207 + 48);
  v73 = v201;
  sub_10000A0A4(v69, v201, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v71 + v70, &v73[v72], &qword_10041CA30, &qword_100374460);
  v74 = v210;
  if (v45(v73, 1, v210) == 1)
  {
    sub_1000059A8(v69, &qword_10041CA30, &qword_100374460);
    if (v45(&v73[v72], 1, v74) == 1)
    {
      sub_1000059A8(v73, &qword_10041CA30, &qword_100374460);
      v75 = v209;
      goto LABEL_26;
    }

LABEL_23:
    sub_1000059A8(v73, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  v76 = v200;
  sub_10000A0A4(v73, v200, &qword_10041CA30, &qword_100374460);
  if (v45(&v73[v72], 1, v74) == 1)
  {
    sub_1000059A8(v203, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_23;
  }

  v77 = v205;
  sub_1000112AC(&v73[v72], v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v78 = sub_1001853C4(v76, v77, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v77, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v203, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v73, &qword_10041CA30, &qword_100374460);
  v75 = v209;
  if ((v78 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v79 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count];
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[4];
  v82 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  if (v81)
  {
    if ((*(v82 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v82 + 4) & 1) != 0 || v80 != *v82)
  {
    goto LABEL_15;
  }

  v83 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM];
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  swift_beginAccess();
  if (v85)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_15;
  }

  v87 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM];
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 8);
  v90 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  swift_beginAccess();
  if (v89)
  {
    if ((*(v90 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_15;
  }

  v91 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended];
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[4];
  v94 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  if (v93)
  {
    if ((*(v94 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v94 + 4) & 1) != 0 || v92 != *v94)
  {
    goto LABEL_15;
  }

  v95 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended];
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[4];
  v98 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_15;
  }

  v99 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm];
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 8);
  v102 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  swift_beginAccess();
  if (v101)
  {
    if ((*(v102 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v102 + 8) & 1) != 0 || v100 != *v102)
  {
    goto LABEL_15;
  }

  v103 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence];
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 8);
  v106 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  swift_beginAccess();
  if (v105)
  {
    if ((*(v106 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v106 + 8) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_15;
  }

  v107 = v61;
  v108 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime];
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 8);
  v111 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  swift_beginAccess();
  if (v110)
  {
    if ((*(v111 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v111 + 8) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_15;
  }

  v112 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID];
  swift_beginAccess();
  v113 = *v112;
  v114 = v112[4];
  v115 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  if (v114)
  {
    if ((*(v115 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v115 + 4) & 1) != 0 || v113 != *v115)
  {
    goto LABEL_15;
  }

  v116 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID];
  swift_beginAccess();
  v117 = *v116;
  v118 = v116[1];
  v119 = (v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v120 = v119[1];
  if (v118)
  {
    if (!v120 || (v117 != *v119 || v118 != v120) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v120)
  {
    goto LABEL_15;
  }

  v121 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v122 = v61[v121];
  v123 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v124 = *(v75 + v123);
  if (v122 == 2)
  {
    if (v124 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v124 == 2 || ((v122 ^ v124) & 1) != 0)
  {
    goto LABEL_15;
  }

  v125 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v126 = v61[v125];
  v127 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v128 = *(v75 + v127);
  if (v126 == 2)
  {
    if (v128 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v128 == 2 || ((v126 ^ v128) & 1) != 0)
  {
    goto LABEL_15;
  }

  v129 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v130 = &v61[v129];
  v131 = v197;
  sub_10000A0A4(v130, v197, &qword_10041CAE0, &qword_100374510);
  v132 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v133 = *(v195 + 48);
  v134 = v131;
  v135 = v199;
  sub_10000A0A4(v134, v199, &qword_10041CAE0, &qword_100374510);
  sub_10000A0A4(v75 + v132, &v135[v133], &qword_10041CAE0, &qword_100374510);
  v136 = *(v196 + 48);
  if (v136(v135, 1, v198) == 1)
  {
    sub_1000059A8(v197, &qword_10041CAE0, &qword_100374510);
    if (v136(&v199[v133], 1, v198) == 1)
    {
      sub_1000059A8(v199, &qword_10041CAE0, &qword_100374510);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v137 = v199;
  sub_10000A0A4(v199, v194, &qword_10041CAE0, &qword_100374510);
  if (v136(&v137[v133], 1, v198) == 1)
  {
    sub_1000059A8(v197, &qword_10041CAE0, &qword_100374510);
    sub_100015F24(v194, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
LABEL_94:
    sub_1000059A8(v199, &qword_100423D68, &qword_100382FD0);
    goto LABEL_15;
  }

  v138 = v199;
  v139 = &v199[v133];
  v140 = v193;
  sub_1000112AC(v139, v193, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  v141 = v194;
  v142 = sub_1001853C4(v194, v140, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_100015F24(v140, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_1000059A8(v197, &qword_10041CAE0, &qword_100374510);
  sub_100015F24(v141, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_1000059A8(v138, &qword_10041CAE0, &qword_100374510);
  if ((v142 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_96:
  v143 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount];
  swift_beginAccess();
  v144 = *v143;
  v145 = v143[4];
  v146 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  if (v145)
  {
    if ((*(v146 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v146 + 4) & 1) != 0 || v144 != *v146)
  {
    goto LABEL_15;
  }

  v147 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType];
  swift_beginAccess();
  v148 = *v147;
  v149 = v147[4];
  v150 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  if (v149)
  {
    if ((*(v150 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v150 + 4) & 1) != 0 || v148 != *v150)
  {
    goto LABEL_15;
  }

  v151 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState];
  swift_beginAccess();
  v152 = *v151;
  v153 = v151[4];
  v154 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  if (v153)
  {
    if ((*(v154 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v154 + 4) & 1) != 0 || v152 != *v154)
  {
    goto LABEL_15;
  }

  v155 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm];
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[4];
  v158 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  if (v157)
  {
    if ((*(v158 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v158 + 4) & 1) != 0 || v156 != *v158)
  {
    goto LABEL_15;
  }

  v159 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm];
  swift_beginAccess();
  v160 = *v159;
  v161 = v159[4];
  v162 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  if (v161)
  {
    if ((*(v162 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v162 + 4) & 1) != 0 || v160 != *v162)
  {
    goto LABEL_15;
  }

  v163 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed];
  swift_beginAccess();
  v164 = *v163;
  v165 = v163[4];
  v166 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  if (v165)
  {
    if ((*(v166 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v166 + 4) & 1) != 0 || v164 != *v166)
  {
    goto LABEL_15;
  }

  v167 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v168 = v107[v167];
  v169 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v170 = *(v75 + v169);
  if (v168 == 10)
  {
    if (v170 != 10)
    {
      goto LABEL_15;
    }
  }

  else if (v170 == 10 || v168 != v170)
  {
    goto LABEL_15;
  }

  v171 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v172 = v187;
  sub_10000A0A4(&v107[v171], v187, &qword_10041CAE8, &qword_100374518);
  v173 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v174 = *(v186 + 48);
  v175 = v172;
  v176 = v192;
  sub_10000A0A4(v175, v192, &qword_10041CAE8, &qword_100374518);
  sub_10000A0A4(v75 + v173, &v176[v174], &qword_10041CAE8, &qword_100374518);
  v177 = *(v189 + 48);
  if (v177(v176, 1, v191) == 1)
  {

    sub_1000059A8(v187, &qword_10041CAE8, &qword_100374518);
    if (v177(&v192[v174], 1, v191) == 1)
    {
      sub_1000059A8(v192, &qword_10041CAE8, &qword_100374518);
      return 1;
    }

LABEL_137:
    sub_1000059A8(v192, &qword_100423D60, &qword_100382FC8);
    return 0;
  }

  v178 = v192;
  sub_10000A0A4(v192, v188, &qword_10041CAE8, &qword_100374518);
  if (v177(&v178[v174], 1, v191) == 1)
  {

    sub_1000059A8(v187, &qword_10041CAE8, &qword_100374518);
    sub_100015F24(v188, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
    goto LABEL_137;
  }

  v179 = v192;
  v180 = &v192[v174];
  v181 = v190;
  sub_1000112AC(v180, v190, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  v182 = v188;
  v183 = sub_1001795E8(v188, v181);

  sub_100015F24(v181, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000059A8(v187, &qword_10041CAE8, &qword_100374518);
  sub_100015F24(v182, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000059A8(v179, &qword_10041CAE8, &qword_100374518);
  return (v183 & 1) != 0;
}

uint64_t sub_100150F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423938, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &unk_10037E038);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015103C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &unk_10037DFC0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001510A8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &unk_10037DFC0);

  return Message.hash(into:)();
}

uint64_t sub_100151124()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339C8);
  sub_100005DF0(v0, qword_1004339C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DS_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DS_GPS";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DS_ENERGY_BASED_CALIBRATED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DS_ENERGY_BASED_UNCALIBRATED";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DS_CADENCE_BASED_CALIBRATED";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DS_CADENCE_BASED_UNCALIBRATED";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DS_ENERGY_BASED_CALIBRATED_PED_WITH_GPS";
  *(v20 + 1) = 39;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DS_ENERGY_BASED_UNCALIBRATED_PED_WITH_GPS";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 8;
  *v23 = "DS_CADENCE_BASED_CALIBRATED_PED_WITH_GPS";
  *(v23 + 8) = 40;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "DS_CADENCE_BASED_UNCALIBRATED_PED_WITH_GPS";
  *(v25 + 1) = 42;
  v25[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100151578()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339E0);
  sub_100005DF0(v0, qword_1004339E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicability_timestamp";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "straightness_metric";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "start_timestamp";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100151810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
    if ((*(v5 + *(v10 + 24) + 8) & 1) == 0)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 28) + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100151A8C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, 4);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100151A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_10000A0A4(a1 + *(v15 + 32), v10, &qword_10041CA30, &qword_100374460);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000059A8(v10, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v10, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100151CFC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v5 - 8) + 56);
  (v11)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v5);
}

uint64_t sub_100151E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423930, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &unk_10037E1C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100151EAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD18, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &unk_10037E150);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100151F18(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD18, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &unk_10037E150);

  return Message.hash(into:)();
}

uint64_t sub_100151FD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  sub_100036108(v5, a2);
  sub_100005DF0(v5, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v6 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10036C800;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "event_receipt_time";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "client";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100152230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry;
    v8 = &unk_10037DFC0;
    v9 = &qword_10041DD00;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100152404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAF0, &qword_100374520);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CAF0, &qword_100374520);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF0, &qword_100374520);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &unk_10037DFC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
}

uint64_t sub_10015269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423928, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &unk_10037E330);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015273C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD30, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &unk_10037E2B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001527A8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD30, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &unk_10037E2B8);

  return Message.hash(into:)();
}

uint64_t sub_10015284C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A10);
  sub_100005DF0(v0, qword_100433A10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "z";
  *(v11 + 8) = 1;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100152AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t sub_100152B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100152CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423920, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E498);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100152D68(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100152DD4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);

  return Message.hash(into:)();
}

uint64_t sub_100152E7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A28);
  sub_100005DF0(v0, qword_100433A28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "w";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y";
  *(v12 + 1) = 1;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z";
  *(v14 + 1) = 1;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          a4(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100153268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + result[5] + 8))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + v7[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + v7[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + v7[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001533F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423918, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &unk_10037E600);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100153494(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &unk_10037E588);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100153500(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &unk_10037E588);

  return Message.hash(into:)();
}

uint64_t sub_1001535A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A40);
  sub_100005DF0(v0, qword_100433A40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "magnetic_field";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "unassisted_magnetic_field";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "magnetic_heading";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "true_heading";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "accuracy";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "calibration_level";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "using_database_bias";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "magnitude";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "inclination";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "horizontal";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "quaternion";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001539EC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  result = (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  qword_100444000 = v0;
  return result;
}

uint64_t sub_100153B8C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  __chkstk_darwin(v3 - 8);
  v48 = &v40 - v4;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v41 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  v10(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v9);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v13 = 0;
  *(v13 + 4) = 1;
  v43 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  v42 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  v44 = v14;
  v45 = v16;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  v46 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v47 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v20, v7, &qword_10041CAF8, &qword_100374528);
  swift_beginAccess();
  sub_10000AD64(v7, v1 + v8, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v7, &qword_10041CAF8, &qword_100374528);
  v22 = v41;
  swift_beginAccess();
  sub_10000AD64(v7, v1 + v22, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v23 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  LODWORD(v21) = *v23;
  LOBYTE(v23) = *(v23 + 4);
  swift_beginAccess();
  *v11 = v21;
  *(v11 + 4) = v23;
  v24 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  LODWORD(v11) = *v24;
  LOBYTE(v24) = *(v24 + 4);
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 4) = v24;
  v25 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  LODWORD(v11) = *v25;
  LOBYTE(v25) = *(v25 + 4);
  swift_beginAccess();
  *v13 = v11;
  *(v13 + 4) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v43;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v44;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  LODWORD(v29) = *v30;
  LOBYTE(v30) = *(v30 + 4);
  v31 = v42;
  swift_beginAccess();
  *v31 = v29;
  *(v31 + 4) = v30;
  v32 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  LODWORD(v29) = *v32;
  LOBYTE(v32) = *(v32 + 4);
  v33 = v45;
  swift_beginAccess();
  *v33 = v29;
  *(v33 + 4) = v32;
  v34 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  LODWORD(v29) = *v34;
  LOBYTE(v34) = *(v34 + 4);
  v35 = v46;
  swift_beginAccess();
  *v35 = v29;
  *(v35 + 4) = v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v37 = v48;
  sub_10000A0A4(a1 + v36, v48, &qword_10041CB00, &qword_100374530);

  v38 = v47;
  swift_beginAccess();
  sub_10000AD64(v37, v1 + v38, &qword_10041CB00, &qword_100374530);
  swift_endAccess();
  return v1;
}

uint64_t sub_10015415C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &qword_10041CB00, &qword_100374530);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100154220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
    v9 = swift_allocObject();
    sub_100153B8C(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        goto LABEL_24;
      }

      if (result == 1 || result == 2)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
        v14 = &unk_10037E420;
        v15 = &qword_10041DD48;
        goto LABEL_20;
      }

LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      if (result == 9 || result == 10)
      {
        goto LABEL_24;
      }

      if (result != 11)
      {
        goto LABEL_26;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
      v14 = &unk_10037E588;
      v15 = &qword_10041DD60;
LABEL_20:
      sub_100015EDC(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 6)
    {
      swift_beginAccess();
      sub_100198AA8();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else
    {
      if (result != 7)
      {
LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_100154568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20));
  result = sub_100154820(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100154A48(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
    swift_beginAccess();
    if ((*(v11 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
    swift_beginAccess();
    if ((*(v12 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
    swift_beginAccess();
    if (*(v8 + v13) != 8)
    {
      sub_100198AA8();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias, 7);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude, 8);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination, 9);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal, 10);
    sub_100154C70(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100154820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAF8, &qword_100374528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100154A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAF8, &qword_100374528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100154C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CB00, &qword_100374530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB00, &qword_100374530);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &unk_10037E588);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

BOOL sub_100154EDC(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v103 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_100024A2C(&qword_100423D48, &qword_100382FB0);
  __chkstk_darwin(v105);
  v109 = &v101[-v6];
  v7 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v8 = __chkstk_darwin(v7 - 8);
  v104 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v108 = &v101[-v10];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v12 = *(v11 - 8);
  v116 = v11;
  v117 = v12;
  __chkstk_darwin(v11);
  v111 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100024A2C(&qword_100423D40, &qword_100382FA8);
  v15 = __chkstk_darwin(v14);
  v113 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v101[-v17];
  v19 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v20 = __chkstk_darwin(v19 - 8);
  v110 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v115 = &v101[-v23];
  v24 = __chkstk_darwin(v22);
  v114 = &v101[-v25];
  __chkstk_darwin(v24);
  v27 = &v101[-v26];
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v27, &qword_10041CAF8, &qword_100374528);
  v29 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v112 = v14;
  v30 = *(v14 + 48);
  sub_10000A0A4(v27, v18, &qword_10041CAF8, &qword_100374528);
  v31 = &a2[v29];
  v33 = v116;
  v32 = v117;
  sub_10000A0A4(v31, &v18[v30], &qword_10041CAF8, &qword_100374528);
  v36 = *(v32 + 48);
  v35 = v32 + 48;
  v34 = v36;
  if (v36(v18, 1, v33) == 1)
  {

    sub_1000059A8(v27, &qword_10041CAF8, &qword_100374528);
    v37 = v34(&v18[v30], 1, v33);
    v38 = a1;
    if (v37 == 1)
    {
      v117 = v35;
      sub_1000059A8(v18, &qword_10041CAF8, &qword_100374528);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000059A8(v18, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v39 = a1;
  v40 = v114;
  sub_10000A0A4(v18, v114, &qword_10041CAF8, &qword_100374528);
  if (v34(&v18[v30], 1, v33) == 1)
  {

    sub_1000059A8(v27, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_6;
  }

  v117 = v35;
  v41 = &v18[v30];
  v42 = v111;
  sub_1000112AC(v41, v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  v102 = sub_100181958(v40, v42);
  v43 = v42;
  v38 = v39;
  sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v27, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v18, &qword_10041CAF8, &qword_100374528);
  if ((v102 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v114 = a2;
  v44 = v33;
  v45 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v46 = v115;
  sub_10000A0A4(v38 + v45, v115, &qword_10041CAF8, &qword_100374528);
  v47 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v48 = v113;
  v49 = *(v112 + 48);
  sub_10000A0A4(v46, v113, &qword_10041CAF8, &qword_100374528);
  v50 = &v114[v47];
  v51 = v114;
  sub_10000A0A4(v50, &v48[v49], &qword_10041CAF8, &qword_100374528);
  if (v34(v48, 1, v44) == 1)
  {
    sub_1000059A8(v46, &qword_10041CAF8, &qword_100374528);
    if (v34(&v48[v49], 1, v44) == 1)
    {
      sub_1000059A8(v48, &qword_10041CAF8, &qword_100374528);
      goto LABEL_18;
    }

LABEL_14:
    sub_1000059A8(v48, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v52 = v110;
  sub_10000A0A4(v48, v110, &qword_10041CAF8, &qword_100374528);
  if (v34(&v48[v49], 1, v44) == 1)
  {
    sub_1000059A8(v115, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_14;
  }

  v54 = v111;
  sub_1000112AC(&v48[v49], v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v55 = sub_100181958(v52, v54);
  sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v115, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v48, &qword_10041CAF8, &qword_100374528);
  if ((v55 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v56 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading];
  swift_beginAccess();
  if (v58)
  {
    if ((v59[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v59[1] & 1) != 0 || v57 != *v59)
  {
    goto LABEL_15;
  }

  v60 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 4);
  v63 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading];
  swift_beginAccess();
  if (v62)
  {
    if ((v63[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v63[1] & 1) != 0 || v61 != *v63)
  {
    goto LABEL_15;
  }

  v64 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 4);
  v67 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy];
  swift_beginAccess();
  if (v66)
  {
    if ((v67[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v67[1] & 1) != 0 || v65 != *v67)
  {
    goto LABEL_15;
  }

  v68 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v69 = *(v38 + v68);
  v70 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v71 = v51[v70];
  if (v69 == 8)
  {
    if (v71 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v71 == 8 || v69 != v71)
  {
    goto LABEL_15;
  }

  v72 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v73 = *(v38 + v72);
  v74 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v75 = v51[v74];
  if (v73 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v75 == 2 || ((v73 ^ v75) & 1) != 0)
  {
    goto LABEL_15;
  }

  v76 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  v77 = *v76;
  v78 = *(v76 + 4);
  v79 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude];
  swift_beginAccess();
  if (v78)
  {
    if ((v79[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v79[1] & 1) != 0 || v77 != *v79)
  {
    goto LABEL_15;
  }

  v80 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 4);
  v83 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination];
  swift_beginAccess();
  if (v82)
  {
    if ((v83[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v83[1] & 1) != 0 || v81 != *v83)
  {
    goto LABEL_15;
  }

  v84 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  v85 = *v84;
  v86 = *(v84 + 4);
  v87 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal];
  swift_beginAccess();
  if (v86)
  {
    if (v87[1])
    {
      goto LABEL_58;
    }

LABEL_15:

    return 0;
  }

  if ((v87[1] & 1) != 0 || v85 != *v87)
  {
    goto LABEL_15;
  }

LABEL_58:
  v88 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v89 = v108;
  sub_10000A0A4(v38 + v88, v108, &qword_10041CB00, &qword_100374530);
  v90 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v91 = *(v105 + 48);
  v92 = v89;
  v93 = v109;
  sub_10000A0A4(v92, v109, &qword_10041CB00, &qword_100374530);
  sub_10000A0A4(&v51[v90], &v93[v91], &qword_10041CB00, &qword_100374530);
  v94 = v107;
  v95 = *(v106 + 48);
  if (v95(v93, 1, v107) != 1)
  {
    sub_10000A0A4(v93, v104, &qword_10041CB00, &qword_100374530);
    if (v95(&v93[v91], 1, v94) == 1)
    {

      sub_1000059A8(v108, &qword_10041CB00, &qword_100374530);
      sub_100015F24(v104, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
      goto LABEL_63;
    }

    v96 = v109;
    v97 = &v109[v91];
    v98 = v103;
    sub_1000112AC(v97, v103, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    v99 = v104;
    v100 = sub_100183B70(v104, v98, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

    sub_100015F24(v98, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    sub_1000059A8(v108, &qword_10041CB00, &qword_100374530);
    sub_100015F24(v99, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    sub_1000059A8(v96, &qword_10041CB00, &qword_100374530);
    return (v100 & 1) != 0;
  }

  sub_1000059A8(v108, &qword_10041CB00, &qword_100374530);
  if (v95(&v93[v91], 1, v94) != 1)
  {
LABEL_63:
    sub_1000059A8(v109, &qword_100423D48, &qword_100382FB0);
    return 0;
  }

  sub_1000059A8(v109, &qword_10041CB00, &qword_100374530);
  return 1;
}

uint64_t sub_100155D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423910, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &unk_10037E768);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100155DC8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &unk_10037E6F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100155E34(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &unk_10037E6F0);

  return Message.hash(into:)();
}

uint64_t sub_100155ED8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A58);
  sub_100005DF0(v0, qword_100433A58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compass";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compass_cal_quality";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gyro_magnitude";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "is_location_available";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001561C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &unk_100378FC0;
          v9 = &qword_10041C7B8;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass;
          v8 = &unk_10037E6F0;
          v9 = &qword_10041DD78;
        }

        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100156398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
  if (!v4)
  {
    sub_1001564CC(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
    if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001564CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB08, &qword_100374538);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CB08, &qword_100374538);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB08, &qword_100374538);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &unk_10037E6F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
}

uint64_t sub_100156734@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[8];
  v10 = a2 + a1[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100156848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423908, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &unk_10037E8D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001568E8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &unk_10037E858);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100156954(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &unk_10037E858);

  return Message.hash(into:)();
}

uint64_t sub_1001569FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A70);
  sub_100005DF0(v0, qword_100433A70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100156C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &unk_10037E858);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100156D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100156E74(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
      sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &unk_10037E858);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100156E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100157174(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423900, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &unk_10037EA38);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100157214(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDA0, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &unk_10037E9C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100157280(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DDA0, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &unk_10037E9C0);

  return Message.hash(into:)();
}

uint64_t sub_100157324()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A88);
  sub_100005DF0(v0, qword_100433A88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "quaternion";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_acceleration";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rotation_rate";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "magnetic_field";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "magnetic_field_calibration_level";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "doing_yaw_correction";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "doing_bias_estimation";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_initialized";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "heading";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001576FC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v7 = 0;
  *(v7 + 4) = 1;
  qword_100444028 = v0;
  return result;
}

uint64_t sub_100157874()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &qword_10041CB00, &qword_100374530);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &qword_10041CAF8, &qword_100374528);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100157950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
    v9 = swift_allocObject();
    sub_100175E04(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result > 6)
      {
        if (result != 7 && result != 8)
        {
          if (result != 9)
          {
            goto LABEL_26;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_25;
        }

LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_25;
      }

      if (result != 5)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      sub_100198AA8();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_25:
      swift_endAccess();
LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
        v14 = &unk_10037E588;
        v15 = &qword_10041DD60;
LABEL_21:
        sub_100015EDC(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_25;
      }

      if (result != 2)
      {
        goto LABEL_26;
      }
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
    v14 = &unk_10037E420;
    v15 = &qword_10041DD48;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100157C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20));
  result = sub_100157E08(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100158030(v8, a1, a2, a3);
    sub_100158258(v8, a1, a2, a3);
    sub_100158480(v8, a1, a2, a3);
    sub_1001586A8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel, sub_100198AA8, 5, &type metadata for CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection, 6);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation, 7);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p, 8);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading, 9);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100157E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CB00, &qword_100374530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB00, &qword_100374530);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &unk_10037E588);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

uint64_t sub_100158030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAF8, &qword_100374528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100158258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAF8, &qword_100374528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100158480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAF8, &qword_100374528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &unk_10037E420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_1001586A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 8)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001587AC(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v126 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v123 = *(v126 - 8);
  __chkstk_darwin(v126);
  v118 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100024A2C(&qword_100423D40, &qword_100382FA8);
  v4 = __chkstk_darwin(v125);
  v114 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v117 = &v113 - v7;
  __chkstk_darwin(v6);
  v122 = &v113 - v8;
  v9 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v10 = __chkstk_darwin(v9 - 8);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v116 = &v113 - v13;
  v14 = __chkstk_darwin(v12);
  v115 = &v113 - v15;
  v16 = __chkstk_darwin(v14);
  v120 = &v113 - v17;
  v18 = __chkstk_darwin(v16);
  v119 = &v113 - v19;
  __chkstk_darwin(v18);
  v124 = &v113 - v20;
  v127 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v21 = *(v127 - 8);
  __chkstk_darwin(v127);
  v121 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100024A2C(&qword_100423D48, &qword_100382FB0);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v113 - v25;
  v27 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v28 = __chkstk_darwin(v27 - 8);
  v128 = (&v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v31 = &v113 - v30;
  v32 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v32, v31, &qword_10041CB00, &qword_100374530);
  v33 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v34 = v129;
  swift_beginAccess();
  v35 = *(v24 + 56);
  sub_10000A0A4(v31, v26, &qword_10041CB00, &qword_100374530);
  v36 = v34;
  v37 = v127;
  v38 = v36 + v33;
  v39 = v36;
  sub_10000A0A4(v38, &v26[v35], &qword_10041CB00, &qword_100374530);
  v40 = *(v21 + 48);
  if (v40(v26, 1, v37) == 1)
  {

    sub_1000059A8(v31, &qword_10041CB00, &qword_100374530);
    v41 = v39;
    if (v40(&v26[v35], 1, v37) == 1)
    {
      sub_1000059A8(v26, &qword_10041CB00, &qword_100374530);
      goto LABEL_8;
    }

LABEL_6:
    v42 = &qword_100423D48;
    v43 = &qword_100382FB0;
    v44 = v26;
LABEL_14:
    sub_1000059A8(v44, v42, v43);
    goto LABEL_15;
  }

  sub_10000A0A4(v26, v128, &qword_10041CB00, &qword_100374530);
  if (v40(&v26[v35], 1, v37) == 1)
  {

    sub_1000059A8(v31, &qword_10041CB00, &qword_100374530);
    sub_100015F24(v128, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    goto LABEL_6;
  }

  v45 = v121;
  sub_1000112AC(&v26[v35], v121, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  v41 = v39;

  v46 = v128;
  v47 = sub_100183B70(v128, v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_1000059A8(v31, &qword_10041CB00, &qword_100374530);
  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_1000059A8(v26, &qword_10041CB00, &qword_100374530);
  if ((v47 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return 0;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v49 = v124;
  sub_10000A0A4(a1 + v48, v124, &qword_10041CAF8, &qword_100374528);
  v50 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v51 = *(v125 + 48);
  v52 = v122;
  sub_10000A0A4(v49, v122, &qword_10041CAF8, &qword_100374528);
  sub_10000A0A4(v41 + v50, v52 + v51, &qword_10041CAF8, &qword_100374528);
  v53 = *(v123 + 48);
  v54 = v126;
  if ((v53)(v52, 1, v126) == 1)
  {
    sub_1000059A8(v49, &qword_10041CAF8, &qword_100374528);
    if ((v53)(v52 + v51, 1, v54) == 1)
    {
      v128 = v53;
      sub_1000059A8(v52, &qword_10041CAF8, &qword_100374528);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v55 = v119;
  sub_10000A0A4(v52, v119, &qword_10041CAF8, &qword_100374528);
  if ((v53)(v52 + v51, 1, v54) == 1)
  {
    sub_1000059A8(v124, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v55, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_13:
    v42 = &qword_100423D40;
    v43 = &qword_100382FA8;
    v44 = v52;
    goto LABEL_14;
  }

  v128 = v53;
  v57 = v52 + v51;
  v58 = v118;
  sub_1000112AC(v57, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v59 = sub_100181958(v55, v58);
  sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v124, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v55, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v52, &qword_10041CAF8, &qword_100374528);
  if ((v59 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v60 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v61 = v120;
  sub_10000A0A4(a1 + v60, v120, &qword_10041CAF8, &qword_100374528);
  v62 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v63 = *(v125 + 48);
  v64 = v117;
  sub_10000A0A4(v61, v117, &qword_10041CAF8, &qword_100374528);
  sub_10000A0A4(v41 + v62, v64 + v63, &qword_10041CAF8, &qword_100374528);
  v65 = v126;
  v66 = v128;
  if ((v128)(v64, 1, v126) == 1)
  {
    sub_1000059A8(v61, &qword_10041CAF8, &qword_100374528);
    v67 = v66(v64 + v63, 1, v65);
    v68 = v129;
    if (v67 == 1)
    {
      v128 = v66;
      sub_1000059A8(v64, &qword_10041CAF8, &qword_100374528);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v69 = v115;
  sub_10000A0A4(v64, v115, &qword_10041CAF8, &qword_100374528);
  if (v66(v64 + v63, 1, v65) == 1)
  {
    sub_1000059A8(v120, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_24:
    sub_1000059A8(v64, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v128 = v66;
  v70 = v64 + v63;
  v71 = v118;
  sub_1000112AC(v70, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v72 = v64;
  v73 = sub_100181958(v69, v71);
  sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v120, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v72, &qword_10041CAF8, &qword_100374528);
  v68 = v129;
  if ((v73 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  v74 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v75 = v116;
  sub_10000A0A4(a1 + v74, v116, &qword_10041CAF8, &qword_100374528);
  v76 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v77 = *(v125 + 48);
  v78 = v114;
  sub_10000A0A4(v75, v114, &qword_10041CAF8, &qword_100374528);
  v79 = v68 + v76;
  v80 = v77;
  v81 = v78;
  sub_10000A0A4(v79, v78 + v77, &qword_10041CAF8, &qword_100374528);
  v82 = v126;
  v83 = v128;
  if ((v128)(v78, 1, v126) == 1)
  {
    sub_1000059A8(v75, &qword_10041CAF8, &qword_100374528);
    if (v83(v78 + v80, 1, v82) == 1)
    {
      sub_1000059A8(v78, &qword_10041CAF8, &qword_100374528);
      v84 = v129;
      goto LABEL_34;
    }

LABEL_32:
    sub_1000059A8(v81, &qword_100423D40, &qword_100382FA8);

    goto LABEL_16;
  }

  v85 = v78;
  v86 = v113;
  sub_10000A0A4(v85, v113, &qword_10041CAF8, &qword_100374528);
  if (v83(v81 + v80, 1, v82) == 1)
  {
    sub_1000059A8(v116, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v86, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_32;
  }

  v87 = v118;
  sub_1000112AC(v81 + v80, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v88 = v81;
  v89 = sub_100181958(v86, v87);
  sub_100015F24(v87, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v116, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v86, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v88, &qword_10041CAF8, &qword_100374528);
  v84 = v129;
  if ((v89 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  v90 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v93 = *(v84 + v92);
  if (v91 == 8)
  {
    if (v93 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v93 == 8 || v91 != v93)
  {
    goto LABEL_15;
  }

  v94 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v95 = *(a1 + v94);
  v96 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v97 = *(v84 + v96);
  if (v95 == 2)
  {
    if (v97 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v97 == 2 || ((v95 ^ v97) & 1) != 0)
  {
    goto LABEL_15;
  }

  v98 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v99 = *(a1 + v98);
  v100 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v101 = *(v84 + v100);
  if (v99 == 2)
  {
    if (v101 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v101 == 2 || ((v99 ^ v101) & 1) != 0)
  {
    goto LABEL_15;
  }

  v102 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v103 = *(a1 + v102);
  v104 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v105 = *(v84 + v104);
  if (v103 == 2)
  {
    if (v105 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v105 == 2 || ((v103 ^ v105) & 1) != 0)
  {
    goto LABEL_15;
  }

  v106 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v107 = *v106;
  v108 = *(v106 + 4);

  v109 = v84 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v110 = *v109;
  v111 = *(v109 + 4);

  if (v108)
  {
    if (!v111)
    {
      return 0;
    }
  }

  else
  {
    if (v107 == v110)
    {
      v112 = v111;
    }

    else
    {
      v112 = 1;
    }

    if (v112)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100159788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238F8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &unk_10037EBA0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100159828(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &unk_10037EB28);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100159894(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &unk_10037EB28);

  return Message.hash(into:)();
}

uint64_t sub_1001599A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100159A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100159B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_100159B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238F0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &unk_10037ED08);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100159C1C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &unk_10037EC90);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100159C88(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &unk_10037EC90);

  return Message.hash(into:)();
}

uint64_t sub_100159D2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AB8);
  sub_100005DF0(v0, qword_100433AB8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "device_motion";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "fsync";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "client_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mode";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "status";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "accuracy";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "vision_compass_bias";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015A0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          }
        }

        else
        {
          if (result != 5)
          {
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
            v7 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus;
            v8 = &unk_10037EC90;
            v9 = &qword_10041DDD0;
            goto LABEL_15;
          }

          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          sub_100198A54();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_5;
            }

            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
            v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
            v8 = &unk_10037EB28;
            v9 = &qword_10041DDB8;
LABEL_15:
            sub_100015EDC(v9, v7, v8);
            v3 = v6;
          }

          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
  if (!v4)
  {
    sub_10015A520(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
    if (*(v5 + *(v10 + 28)) != 2)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_10015A73C(v5, a1, a2, a3);
    sub_10015A7C8(v5, a1, a2, a3);
    sub_10015A9E4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CB10, &qword_100374540);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB10, &qword_100374540);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &unk_10037EB28);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
}

uint64_t sub_10015A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    sub_100198A54();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  sub_10000A0A4(a1 + *(v12 + 40), v7, &qword_10041CB18, &qword_100374548);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB18, &qword_100374548);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &unk_10037EC90);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
}

uint64_t sub_10015A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015AB28@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 5;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10015AC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238E8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &unk_10037EE70);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015AD34(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &unk_10037EDF8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015ADA0(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &unk_10037EDF8);

  return Message.hash(into:)();
}

uint64_t sub_10015AE48()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AD0);
  sub_100005DF0(v0, qword_100433AD0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015B060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
        sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &unk_10037EDF8);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10015B2C0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
      sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &unk_10037EDF8);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10015B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238E0, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &unk_10037EFD8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015B660(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDF8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &unk_10037EF60);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015B6CC(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DDF8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &unk_10037EF60);

  return Message.hash(into:)();
}

uint64_t sub_10015B770()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AE8);
  sub_100005DF0(v0, qword_100433AE8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "x";
  *(v5 + 8) = 1;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "y";
  *(v9 + 8) = 1;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "z";
  *(v11 + 1) = 1;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "magnitude";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "horizontal";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "declination";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "inclination";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestamp";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8)
        {
          goto LABEL_4;
        }

        if (result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10015BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BE7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BEF8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BF74(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10015BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015BF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  sub_10000A0A4(a1 + *(v12 + 48), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10015C1DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a1[12];
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2 + v14, 1, 1, v16);
}

uint64_t sub_10015C2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238D8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &unk_10037F140);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015C388(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &unk_10037F0C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015C3F4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &unk_10037F0C8);

  return Message.hash(into:)();
}

uint64_t sub_10015C4BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_100036108(v9, a2);
  sub_100005DF0(v9, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v10 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100374440;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &unk_10037F0C8);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10015C7B8(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB20, &qword_100374550);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_10041CB20, &qword_100374550);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB20, &qword_100374550);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &unk_10037F0C8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
}

uint64_t sub_10015CA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238D0, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &unk_10037F2A8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015CB08(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE28, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &unk_10037F230);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015CB74(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DE28, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &unk_10037F230);

  return Message.hash(into:)();
}

uint64_t sub_10015CC18()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B18);
  sub_100005DF0(v0, qword_100433B18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "mac";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ssid";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rssi_db";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mode";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "channel";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "age_s";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_apple_personal_hotspot";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_moving";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "band";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frequency_khz";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          goto LABEL_5;
        }

        if (result != 4)
        {
          goto LABEL_16;
        }

        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        sub_100198A00();
LABEL_26:
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 7)
    {
      if (result == 6)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_5;
      }

LABEL_23:
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    if (result == 8)
    {
      goto LABEL_23;
    }

    if (result != 9)
    {
      if (result != 10)
      {
        goto LABEL_5;
      }

LABEL_16:
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      goto LABEL_5;
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
    sub_100016F4C();
    goto LABEL_26;
  }

  return result;
}