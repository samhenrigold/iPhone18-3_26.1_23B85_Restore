uint64_t sub_10015D2F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  *(a2 + v8) = 4;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  v14 = a1[14];
  *(a2 + a1[13]) = 4;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10015D3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238C8, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F410);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015D44C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D4B8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);

  return Message.hash(into:)();
}

uint64_t sub_10015D560()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B30);
  sub_100005DF0(v0, qword_100433B30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_associated";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ap";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015D8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 2;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_10015D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238C0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &unk_10037F578);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015DA14(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &unk_10037F500);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015DA80(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &unk_10037F500);

  return Message.hash(into:)();
}

uint64_t sub_10015DB28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B48);
  sub_100005DF0(v0, qword_100433B48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scan_timestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "access_point";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015DF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238B8, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F6E0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015E008(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F668);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E074(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F668);

  return Message.hash(into:)();
}

uint64_t sub_10015E118()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B60);
  sub_100005DF0(v0, qword_100433B60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
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
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "scan_type";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "power";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "associated_state";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "scan";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "simulated";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "available";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "is_involuntary_link_down";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_ap_awake";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015E560()
{
  type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v3 = 0;
  *(v3 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v4 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  result = (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  qword_100444080 = v0;
  return result;
}

uint64_t sub_10015E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v9 = swift_allocObject();
    sub_10000FF80(v8);

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

      if (result <= 5)
      {
        break;
      }

      if (result <= 8)
      {
        if (result == 6)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState;
          v14 = &unk_10037F500;
          v15 = &qword_10041DE50;
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_30;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult;
          v14 = &unk_10037F668;
          v15 = &qword_10041C790;
        }

LABEL_29:
        sub_100015EDC(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_31;
      }

      if (result == 9 || result == 10 || result == 11)
      {
        goto LABEL_30;
      }

LABEL_32:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v14 = &unk_100378FC0;
        v15 = &qword_10041C7B8;
        goto LABEL_29;
      }

      if (result != 2)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }

    else
    {
      if (result == 3)
      {
        v16 = v4;
        swift_beginAccess();
        sub_100015F84();
      }

      else
      {
        if (result != 4)
        {
LABEL_30:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_31;
        }

        v16 = v4;
        swift_beginAccess();
        sub_1001989AC();
      }

      v4 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

LABEL_31:
    swift_endAccess();
    goto LABEL_32;
  }

  return result;
}

BOOL sub_10015EB00(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v110 = *(v3 - 8);
  v111 = v3;
  __chkstk_darwin(v3);
  v106 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_100024A2C(&qword_100423D10, &qword_100382F78);
  __chkstk_darwin(v109);
  v112 = &v105 - v5;
  v6 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  v7 = __chkstk_darwin(v6 - 8);
  v107 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v119 = &v105 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v114 = *(v10 - 8);
  v115 = v10;
  __chkstk_darwin(v10);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100024A2C(&qword_100423D18, &qword_100382F80);
  __chkstk_darwin(v113);
  v116 = &v105 - v12;
  v13 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  v14 = __chkstk_darwin(v13 - 8);
  v118 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v105 - v16;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v105 - v21;
  v23 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v24 = __chkstk_darwin(v23 - 8);
  v121 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v105 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v27, &qword_10041CA30, &qword_100374460);
  v29 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

  v40 = v117;
  sub_1000112AC(&v22[v31], v117, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

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
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 4);
  v45 = v123 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v44)
  {
    v46 = v118;
    v47 = v119;
    v48 = v120;
    if ((*(v45 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = v118;
    v47 = v119;
    v48 = v120;
    if ((*(v45 + 4) & 1) != 0 || v43 != *v45)
    {
      goto LABEL_8;
    }
  }

  v49 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v52 = v123;
  swift_beginAccess();
  v53 = *(v52 + v51);
  if (v50 == 15)
  {
    if (v53 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v53 == 15 || v50 != v53)
  {
    goto LABEL_8;
  }

  v54 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  v57 = v123;
  swift_beginAccess();
  v58 = *(v57 + v56);
  if (v55 == 15)
  {
    if (v58 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v58 == 15 || v55 != v58)
  {
    goto LABEL_8;
  }

  v59 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  v62 = v123;
  swift_beginAccess();
  v63 = *(v62 + v61);
  if (v60 == 2)
  {
    if (v63 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v63 == 2 || ((v60 ^ v63) & 1) != 0)
  {
    goto LABEL_8;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v64, v48, &qword_10041CB30, &qword_100374560);
  v65 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v66 = v123;
  swift_beginAccess();
  v67 = *(v113 + 48);
  v68 = v48;
  v69 = v116;
  sub_10000A0A4(v68, v116, &qword_10041CB30, &qword_100374560);
  v70 = v69;
  sub_10000A0A4(v66 + v65, v69 + v67, &qword_10041CB30, &qword_100374560);
  v71 = v115;
  v72 = *(v114 + 48);
  if (v72(v69, 1, v115) == 1)
  {
    sub_1000059A8(v120, &qword_10041CB30, &qword_100374560);
    if (v72(v69 + v67, 1, v71) == 1)
    {
      sub_1000059A8(v69, &qword_10041CB30, &qword_100374560);
      goto LABEL_38;
    }

LABEL_36:
    v36 = &qword_100423D18;
    v37 = &qword_100382F80;
LABEL_44:
    v38 = v70;
    goto LABEL_7;
  }

  sub_10000A0A4(v69, v46, &qword_10041CB30, &qword_100374560);
  if (v72(v69 + v67, 1, v71) == 1)
  {
    sub_1000059A8(v120, &qword_10041CB30, &qword_100374560);
    sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    goto LABEL_36;
  }

  v73 = v108;
  sub_1000112AC(v69 + v67, v108, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v74 = sub_10017B31C(v46, v73);
  sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_1000059A8(v120, &qword_10041CB30, &qword_100374560);
  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_1000059A8(v69, &qword_10041CB30, &qword_100374560);
  if ((v74 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  v75 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000A0A4(a1 + v75, v47, &qword_10041CB38, &qword_100374568);
  v76 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v77 = v123;
  swift_beginAccess();
  v78 = *(v109 + 48);
  v79 = v112;
  sub_10000A0A4(v47, v112, &qword_10041CB38, &qword_100374568);
  v70 = v79;
  sub_10000A0A4(v77 + v76, v79 + v78, &qword_10041CB38, &qword_100374568);
  v80 = v111;
  v81 = *(v110 + 48);
  if (v81(v79, 1, v111) == 1)
  {
    sub_1000059A8(v47, &qword_10041CB38, &qword_100374568);
    if (v81(v79 + v78, 1, v80) == 1)
    {
      sub_1000059A8(v79, &qword_10041CB38, &qword_100374568);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v82 = v107;
  sub_10000A0A4(v70, v107, &qword_10041CB38, &qword_100374568);
  if (v81(v70 + v78, 1, v80) == 1)
  {
    sub_1000059A8(v47, &qword_10041CB38, &qword_100374568);
    sub_100015F24(v82, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
LABEL_43:
    v36 = &qword_100423D10;
    v37 = &qword_100382F78;
    goto LABEL_44;
  }

  v83 = v106;
  sub_1000112AC(v70 + v78, v106, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v84 = sub_10017E5AC(v82, v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, sub_10017B7A0);
  sub_100015F24(v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000059A8(v47, &qword_10041CB38, &qword_100374568);
  sub_100015F24(v82, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000059A8(v70, &qword_10041CB38, &qword_100374568);
  if ((v84 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v85 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  v88 = v123;
  swift_beginAccess();
  v89 = *(v88 + v87);
  if (v86 == 2)
  {
    if (v89 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v89 == 2 || ((v86 ^ v89) & 1) != 0)
  {
    goto LABEL_8;
  }

  v90 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  v93 = v123;
  swift_beginAccess();
  v94 = *(v93 + v92);
  if (v91 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v94 == 2 || ((v91 ^ v94) & 1) != 0)
  {
    goto LABEL_8;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  v98 = v123;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 2)
  {
    if (v99 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v99 == 2 || ((v96 ^ v99) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v100 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  v101 = *(a1 + v100);

  v102 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  v103 = v123;
  swift_beginAccess();
  v104 = *(v103 + v102);

  if (v101 != 2)
  {
    return v104 != 2 && ((v101 ^ v104) & 1) == 0;
  }

  return v104 == 2;
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238B0, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &unk_10037F848);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015FAC4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &unk_10037F7D0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015FB30(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &unk_10037F7D0);

  return Message.hash(into:)();
}

uint64_t sub_10015FBD4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B78);
  sub_100005DF0(v0, qword_100433B78);
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
  *v10 = "state";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "state_probability";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "measurement_source";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          sub_100197ED8();
LABEL_14:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          sub_100197F2C();
          goto LABEL_14;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100160010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168420(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
    if (*(v3 + v6[6]) != 4)
    {
      sub_100197F2C();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v6[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v6[8]) != 4)
    {
      sub_100197ED8();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001601C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + a1[8]) = 4;
  return result;
}

uint64_t sub_10016028C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238A8, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &unk_10037F9B0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016032C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE80, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &unk_10037F938);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100160398(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DE80, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &unk_10037F938);

  return Message.hash(into:)();
}

uint64_t sub_100160414()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B90);
  sub_100005DF0(v0, qword_100433B90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GA_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GA_UNKNOWN";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GA_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GA_HIGH";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001606C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BA8);
  sub_100005DF0(v0, qword_100433BA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MS_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MS_AMBIENT_LIGHT";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MS_PROXIMITY";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MS_FUSED_MULTIPLE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016099C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BC0);
  sub_100005DF0(v0, qword_100433BC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude_deg";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude_deg";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100160C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238A0, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FB68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100160D1C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100160D88(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);

  return Message.hash(into:)();
}

uint64_t sub_100160E2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BD8);
  sub_100005DF0(v0, qword_100433BD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "coordinates";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "base_height_above_ground_m";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "height_above_base_m";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "has_terrain_elevation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "terrain_elevation_m";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "min_base_height_m";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "max_base_height_m";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "top_height_m";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001611C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
        sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
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

int *sub_1001613AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
    v9 = result;
    if (*(v3 + result[6] + 8))
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

    if ((*(v3 + v9[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if ((*(v3 + v9[9] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10015BE7C(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    sub_10015BEF8(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    sub_1001615D4(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016169C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  *(a2 + a1[8]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  v9[8] = 1;
  v10 = a1[11];
  v11 = a2 + a1[10];
  *v11 = 0;
  v11[8] = 1;
  v12 = a2 + v10;
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + a1[12];
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t sub_10016176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423898, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &unk_10037FCD0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016180C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &unk_10037FC58);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100161878(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &unk_10037FC58);

  return Message.hash(into:)();
}

uint64_t sub_100161920()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BF0);
  sub_100005DF0(v0, qword_100433BF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sections";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "building_hash";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "building_id";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100161B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &unk_10037FC58);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100161CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0), sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &unk_10037FC58), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
    v6 = result;
    if (*(v3 + *(result + 24) + 8))
    {
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }
    }

    if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100161E4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t sub_100161ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423890, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &unk_10037FE38);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100161F78(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &unk_10037FDC0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100161FE4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &unk_10037FDC0);

  return Message.hash(into:)();
}

uint64_t sub_100162088()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C08);
  sub_100005DF0(v0, qword_100433C08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "receipt_time";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "buildings";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "building_hashes_in_previous_query_but_not_current_query";
  *(v12 + 1) = 55;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_location_coordinate";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100162320(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
          v8 = &unk_10037FAF0;
          v9 = &qword_10041CE08;
LABEL_15:
          sub_100015EDC(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &unk_100378FC0;
          v9 = &qword_10041C7B8;
          goto LABEL_15;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
          sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &unk_10037FDC0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100162504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100162640(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
      sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &unk_10037FDC0);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedUInt64Field(value:fieldNumber:)();
    }

    sub_10016285C(v3, a1, a2, a3);
    type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100162640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
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

uint64_t sub_10016285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_10041CB40, &qword_100374570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB40, &qword_100374570);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
}

uint64_t sub_100162AC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 1) = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_100162BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100162C18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100162CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423888, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &unk_10037FFA0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100162D5C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DEC8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &unk_10037FF28);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100162DC8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DEC8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &unk_10037FF28);

  return Message.hash(into:)();
}

uint64_t sub_100162E6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C20);
  sub_100005DF0(v0, qword_100433C20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "branch_coordinates";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "branch_type";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "branch_number";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "branch_width_mm";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "branch_length_mm";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100163148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
          sub_100197E84();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1001632E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
    v6 = result;
    if (*(v3 + result[6]) == 4)
    {
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_100197E84();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }
    }

    if ((*(v3 + v6[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + v6[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + v6[9] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001634E4@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  *(a2 + a1[6]) = 4;
  v6 = a2 + v5;
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[9];
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v7;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_100163588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423880, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &unk_100380108);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100163628(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &unk_100380090);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100163694(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &unk_100380090);

  return Message.hash(into:)();
}

uint64_t sub_100163710()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C38);
  sub_100005DF0(v0, qword_100433C38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BranchType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BranchType_UNKNOWN";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BranchType_LEAFY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BranchType_NON_LEAFY";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001639E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C50);
  sub_100005DF0(v0, qword_100433C50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "north_latitude_deg";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "west_longitude_deg";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "south_latitude_deg";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "east_longitude_deg";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "vertex";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100163CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
          goto LABEL_4;
        }

        if (result == 5)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100163E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v6 = result;
  if (*(v3 + result[6] + 8))
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

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[9] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
    sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &unk_10037FAF0);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100164024@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t sub_1001640CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423878, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &unk_100380298);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016416C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &unk_100380220);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001641D8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &unk_100380220);

  return Message.hash(into:)();
}

uint64_t sub_100164280()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C68);
  sub_100005DF0(v0, qword_100433C68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "branches";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tree_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tree_type";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "reliability_score_DEPRECATED";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "tree_features";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "branch_count";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001645D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &unk_100380220);
LABEL_20:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_17:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &unk_100380090);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        if (result > 5)
        {
          if (result != 6)
          {
            if (result != 7)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }

          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
          sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &unk_100380518);
          goto LABEL_20;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          sub_100197E30();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100164880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164A5C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
      sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &unk_100380090);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
    if ((*(v3 + v9[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 4)
    {
      sub_100197E30();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v9[9] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100164C78(v3, a1, a2, a3);
    sub_100164E94(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100164A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CB48, &qword_100374578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB48, &qword_100374578);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &unk_100380220);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
}

uint64_t sub_100164C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  sub_10000A0A4(a1 + *(v12 + 40), v7, &qword_10041CB50, &qword_100374580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB50, &qword_100374580);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &unk_100380518);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
}

uint64_t sub_100164E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100164F58@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  v7[8] = 1;
  a2[v6] = 4;
  v8 = a1[10];
  v9 = &a2[a1[9]];
  *v9 = 0;
  v9[4] = 1;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v12 = &a2[a1[11]];
  *v12 = 0;
  v12[8] = 1;
  return result;
}

uint64_t sub_10016508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423870, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &unk_100380400);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016512C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &unk_100380388);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100165198(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &unk_100380388);

  return Message.hash(into:)();
}

uint64_t sub_100165218()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C80);
  sub_100005DF0(v0, qword_100433C80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TreeType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TreeType_UNKNOWN";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TreeType_STANDARD_ACACIA";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TreeType_NONSTANDARD_ACACIA";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1001654C8()
{
  v0._countAndFlagsBits = 0x616546656572542ELL;
  v0._object = 0xED00007365727574;
  String.append(_:)(v0);
  qword_100433C98 = 0xD000000000000035;
  unk_100433CA0 = 0x80000001003A0300;
}

uint64_t *sub_100165540()
{
  if (qword_1004440E8 != -1)
  {
    swift_once();
  }

  return &qword_100433C98;
}

uint64_t sub_1001655B8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_100165614()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CA8);
  sub_100005DF0(v0, qword_100433CA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "has_branch_widths";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "has_branch_lengths";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100165824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001658CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 2)
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

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100165A0C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_100165A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423868, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &unk_100380590);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100165B3C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &unk_100380518);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100165BA8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &unk_100380518);

  return Message.hash(into:)();
}

uint64_t sub_100165C4C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CC0);
  sub_100005DF0(v0, qword_100433CC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "receipt_time";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trees";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "contains_branch_geometry";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100165EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &unk_100380388);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100166048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100166180(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
      sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &unk_100380388);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28)) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100166180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
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

uint64_t sub_1001663E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  a2[*(a1 + 28)] = 2;
  return result;
}

uint64_t sub_1001664AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423860, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &unk_1003806F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016654C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF30, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &unk_100380680);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001665B8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF30, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &unk_100380680);

  return Message.hash(into:)();
}

uint64_t sub_10016665C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CD8);
  sub_100005DF0(v0, qword_100433CD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wrist_orientation";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "crown_orientation";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
        sub_100197DDC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100166938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100197DDC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 4)
  {
    sub_100197DDC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100166A88@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  result = UnknownStorage.init()();
  v9 = *(a1 + 24);
  *(a4 + *(a1 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t sub_100166AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423858, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &unk_100380860);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100166B9C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &unk_1003807E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100166C08(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &unk_1003807E8);

  return Message.hash(into:)();
}

uint64_t sub_100166C88()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CF0);
  sub_100005DF0(v0, qword_100433CF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WatchOrientationType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WatchOrientationType_Unknown";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WatchOrientationType_Left";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WatchOrientationType_Right";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100166F60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D08);
  sub_100005DF0(v0, qword_100433D08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "applicable_time";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "on_wrist";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "on_wrist_sensor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "on_wrist_confidence";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_on_charger";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_forced_on_wrist_enabled";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "is_wrist_detection_enabled";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001672A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          sub_100197D88();
LABEL_21:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          sub_100197D34();
          goto LABEL_21;
        }

        if (result == 6 || result == 7)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001674A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
    if (*(v5 + v10[6]) != 4)
    {
      sub_100197D88();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + v10[7]) != 4)
    {
      sub_100197D88();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + v10[8]) != 4)
    {
      sub_100197D34();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001676DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  *(a2 + v7) = 4;
  v8 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v8) = 2;
  v9 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t sub_1001677AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423850, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &unk_1003809F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016784C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &unk_100380978);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001678B8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &unk_100380978);

  return Message.hash(into:)();
}

uint64_t sub_100167934()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D20);
  sub_100005DF0(v0, qword_100433D20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WristStateType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WristStateType_Unknown";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WristStateType_On";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WristStateType_Off";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100167BE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D38);
  sub_100005DF0(v0, qword_100433D38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WristStateConfidenceType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 41;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WristStateConfidenceType_None";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WristStateConfidenceType_Low";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WristStateConfidenceType_High";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100167EBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D50);
  sub_100005DF0(v0, qword_100433D50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
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
  *v10 = "client";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "watch_orientation";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wrist_state";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100168154(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation;
          v8 = &unk_1003807E8;
          v9 = &qword_10041DF48;
LABEL_5:
          sub_100015EDC(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_WristState;
          v8 = &unk_100380978;
          v9 = &qword_10041DF60;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &unk_100378FC0;
          v9 = &qword_10041C7B8;
          goto LABEL_5;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100168334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);
  if (!v4)
  {
    if ((*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    sub_100168640(v5, a1, a2, a3);
    sub_10016885C(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100168420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_10000A0A4(a1 + *(v14 + 20), v9, &qword_10041CA30, &qword_100374460);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000059A8(v9, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v9, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100168640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CB58, &qword_100374588);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB58, &qword_100374588);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &unk_1003807E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
}

uint64_t sub_10016885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_10041CB60, &qword_100374590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB60, &qword_100374590);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &unk_100380978);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
}

uint64_t sub_100168AC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v8 - 8) + 56))(a2 + v6, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_100168C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423848, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &unk_100380BA8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100168CAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF78, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &unk_100380B30);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100168D18(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF78, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &unk_100380B30);

  return Message.hash(into:)();
}

uint64_t sub_100168DBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D68);
  sub_100005DF0(v0, qword_100433D68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "user_specific_place_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_type";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "preferred_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "loi_uuid_identifier";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016904C(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          sub_100197CE0();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          sub_100197C8C();
        }

        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100169188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
    sub_100197CE0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v6[6]) != 3)
  {
    sub_100197C8C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016931C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 3;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_10016939C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423840, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &unk_100380D10);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016943C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &unk_100380C98);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001694A8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &unk_100380C98);

  return Message.hash(into:)();
}

uint64_t sub_100169528()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D80);
  sub_100005DF0(v0, qword_100433D80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "USPT_UNKNOWN";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "USPT_HOME";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "USPT_WORK";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "USPT_SCHOOL";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "USPT_GYM";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016981C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D98);
  sub_100005DF0(v0, qword_100433D98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PIPT_AREA_OF_INTEREST";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PIPT_POINT_OF_INTEREST";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PIPT_ADDRESS";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100169AC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DB0);
  sub_100005DF0(v0, qword_100433DB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "receipt_time";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "arrival_time";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "departure_time";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "detection_time";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "place_inference";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "coordinate";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "horizontal_accuracy_m";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100169E0C()
{
  type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  result = (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  *v9 = 0;
  *(v9 + 8) = 1;
  qword_100444158 = v0;
  return result;
}

uint64_t sub_100169FB8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference, &qword_10041CB68, &qword_100374598);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &qword_10041CA38, &qword_100374468);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10016A0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v9 = swift_allocObject();
    sub_1001765AC(v8);

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

      if (result > 3)
      {
        break;
      }

      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_20;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_22;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
      v14 = &unk_100379998;
      v15 = &qword_10041D8B8;
    }

    else if (result == 4)
    {
LABEL_20:
      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v14 = &unk_100378FC0;
      v15 = &qword_10041C7B8;
    }

    else
    {
      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference;
      v14 = &unk_100380C98;
      v15 = &qword_10041DF90;
    }

    sub_100015EDC(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
    swift_endAccess();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10016A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  result = sub_10016A4BC(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10016A6E4(v8, a1, a2, a3);
    sub_10016A90C(v8, a1, a2, a3);
    sub_10016AB34(v8, a1, a2, a3);
    sub_10016AD5C(v8, a1, a2, a3);
    sub_10016AF84(v8, a1, a2, a3);
    sub_10009ACD8(v8, a1, a2, a3, OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10016A4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
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

uint64_t sub_10016A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
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

uint64_t sub_10016A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
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

uint64_t sub_10016AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
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

uint64_t sub_10016AD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CB68, &qword_100374598);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB68, &qword_100374598);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &unk_100380C98);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
}

uint64_t sub_10016AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA38, &qword_100374468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &unk_100379998);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

BOOL sub_10016B1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v140 = *(v4 - 8);
  v141 = v4;
  __chkstk_darwin(v4);
  v137 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100024A2C(&qword_100423CD0, &qword_100382F38);
  __chkstk_darwin(v139);
  v142 = &v137 - v6;
  v7 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v8 = __chkstk_darwin(v7 - 8);
  v149 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v137 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v146 = *(v11 - 8);
  v147 = v11;
  __chkstk_darwin(v11);
  v138 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100024A2C(&qword_100423CD8, &unk_100382F40);
  __chkstk_darwin(v145);
  v148 = &v137 - v13;
  v14 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  v15 = __chkstk_darwin(v14 - 8);
  v143 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v137 - v17;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v19 = *(v18 - 8);
  v164 = v18;
  v165 = v19;
  __chkstk_darwin(v18);
  v159 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v22 = __chkstk_darwin(v21);
  v152 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v154 = &v137 - v25;
  v26 = __chkstk_darwin(v24);
  v158 = &v137 - v27;
  __chkstk_darwin(v26);
  v29 = &v137 - v28;
  v30 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v31 = __chkstk_darwin(v30 - 8);
  v150 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v155 = &v137 - v34;
  v35 = __chkstk_darwin(v33);
  v153 = &v137 - v36;
  v37 = __chkstk_darwin(v35);
  v157 = &v137 - v38;
  v39 = __chkstk_darwin(v37);
  v156 = &v137 - v40;
  v41 = __chkstk_darwin(v39);
  v162 = &v137 - v42;
  v43 = __chkstk_darwin(v41);
  v161 = &v137 - v44;
  __chkstk_darwin(v43);
  v46 = &v137 - v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v47, v46, &qword_10041CA30, &qword_100374460);
  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  v163 = v21;
  v49 = *(v21 + 48);
  sub_10000A0A4(v46, v29, &qword_10041CA30, &qword_100374460);
  v50 = a2 + v48;
  v51 = a2;
  v52 = v164;
  v53 = v165;
  sub_10000A0A4(v50, &v29[v49], &qword_10041CA30, &qword_100374460);
  v56 = *(v53 + 48);
  v54 = v53 + 48;
  v55 = v56;
  if (v56(v29, 1, v52) == 1)
  {

    sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
    if (v55(&v29[v49], 1, v52) != 1)
    {
LABEL_7:
      v59 = &qword_100423CE0;
      v60 = &qword_100393E90;
      v61 = v29;
LABEL_23:
      sub_1000059A8(v61, v59, v60);
      goto LABEL_24;
    }

    v160 = v55;
    v165 = v54;
    sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
  }

  else
  {
    v57 = v161;
    sub_10000A0A4(v29, v161, &qword_10041CA30, &qword_100374460);
    if (v55(&v29[v49], 1, v52) == 1)
    {

      sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
      v58 = v57;
LABEL_6:
      sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_7;
    }

    v160 = v55;
    v165 = v54;
    v62 = &v29[v49];
    v63 = v159;
    sub_1000112AC(v62, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

    v64 = sub_1001853C4(v57, v63, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_100015F24(v63, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v52 = v164;
    sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
    if ((v64 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v65 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v66 = v162;
  sub_10000A0A4(a1 + v65, v162, &qword_10041CA30, &qword_100374460);
  v67 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v68 = *(v163 + 48);
  v69 = v158;
  sub_10000A0A4(v66, v158, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v51 + v67, v69 + v68, &qword_10041CA30, &qword_100374460);
  v70 = v165;
  v71 = v160;
  v72 = v160(v69, 1, v52);
  v160 = v71;
  if (v72 == 1)
  {
    sub_1000059A8(v66, &qword_10041CA30, &qword_100374460);
    if (v71((v69 + v68), 1, v52) == 1)
    {
      sub_1000059A8(v69, &qword_10041CA30, &qword_100374460);
      goto LABEL_16;
    }

LABEL_14:
    v59 = &qword_100423CE0;
    v60 = &qword_100393E90;
    v61 = v69;
    goto LABEL_23;
  }

  v73 = v156;
  sub_10000A0A4(v69, v156, &qword_10041CA30, &qword_100374460);
  if (v71((v69 + v68), 1, v52) == 1)
  {
    sub_1000059A8(v162, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_14;
  }

  v74 = v159;
  sub_1000112AC(v69 + v68, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  LODWORD(v161) = sub_1001853C4(v73, v74, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v74, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v162, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v69, &qword_10041CA30, &qword_100374460);
  if ((v161 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  v75 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v162 = a1;
  v76 = a1 + v75;
  v77 = v157;
  sub_10000A0A4(v76, v157, &qword_10041CA30, &qword_100374460);
  v78 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v79 = *(v163 + 48);
  v80 = v154;
  sub_10000A0A4(v77, v154, &qword_10041CA30, &qword_100374460);
  v81 = v80;
  sub_10000A0A4(v51 + v78, v80 + v79, &qword_10041CA30, &qword_100374460);
  v82 = v164;
  v83 = v160;
  v84 = v160(v80, 1, v164);
  v165 = v70;
  if (v84 == 1)
  {
    sub_1000059A8(v77, &qword_10041CA30, &qword_100374460);
    v85 = v83(v80 + v79, 1, v82);
    v86 = v155;
    v87 = v162;
    if (v85 == 1)
    {
      sub_1000059A8(v80, &qword_10041CA30, &qword_100374460);
      goto LABEL_27;
    }

LABEL_21:
    v59 = &qword_100423CE0;
    v60 = &qword_100393E90;
LABEL_22:
    v61 = v81;
    goto LABEL_23;
  }

  v88 = v80;
  v89 = v153;
  sub_10000A0A4(v88, v153, &qword_10041CA30, &qword_100374460);
  v90 = v83(v81 + v79, 1, v82);
  v86 = v155;
  if (v90 == 1)
  {
    sub_1000059A8(v157, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v89, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_21;
  }

  v92 = v81 + v79;
  v93 = v159;
  sub_1000112AC(v92, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v94 = sub_1001853C4(v89, v93, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v93, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v157, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v89, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v81, &qword_10041CA30, &qword_100374460);
  v87 = v162;
  if ((v94 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v95 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  sub_10000A0A4(v87 + v95, v86, &qword_10041CA30, &qword_100374460);
  v96 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  v97 = *(v163 + 48);
  v98 = v86;
  v99 = v86;
  v29 = v152;
  sub_10000A0A4(v98, v152, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v51 + v96, &v29[v97], &qword_10041CA30, &qword_100374460);
  v100 = v164;
  v101 = v160;
  if (v160(v29, 1, v164) == 1)
  {
    sub_1000059A8(v99, &qword_10041CA30, &qword_100374460);
    if (v101(&v29[v97], 1, v100) == 1)
    {
      sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v102 = v150;
  sub_10000A0A4(v29, v150, &qword_10041CA30, &qword_100374460);
  if (v101(&v29[v97], 1, v100) == 1)
  {
    sub_1000059A8(v155, &qword_10041CA30, &qword_100374460);
    v58 = v102;
    goto LABEL_6;
  }

  v103 = &v29[v97];
  v104 = v159;
  sub_1000112AC(v103, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v105 = sub_1001853C4(v102, v104, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v104, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v155, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
  if ((v105 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v106 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v107 = v151;
  sub_10000A0A4(v87 + v106, v151, &qword_10041CB68, &qword_100374598);
  v108 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v109 = *(v145 + 48);
  v110 = v148;
  sub_10000A0A4(v107, v148, &qword_10041CB68, &qword_100374598);
  v81 = v110;
  sub_10000A0A4(v51 + v108, v110 + v109, &qword_10041CB68, &qword_100374598);
  v111 = v147;
  v112 = *(v146 + 48);
  if (v112(v110, 1, v147) == 1)
  {
    sub_1000059A8(v107, &qword_10041CB68, &qword_100374598);
    v113 = v112(v110 + v109, 1, v111);
    v114 = v149;
    if (v113 == 1)
    {
      sub_1000059A8(v110, &qword_10041CB68, &qword_100374598);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v115 = v143;
  sub_10000A0A4(v110, v143, &qword_10041CB68, &qword_100374598);
  v116 = v112(v110 + v109, 1, v111);
  v114 = v149;
  if (v116 == 1)
  {
    sub_1000059A8(v151, &qword_10041CB68, &qword_100374598);
    sub_100015F24(v115, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
LABEL_38:
    v59 = &qword_100423CD8;
    v60 = &unk_100382F40;
    goto LABEL_22;
  }

  v117 = v110 + v109;
  v118 = v138;
  sub_1000112AC(v117, v138, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v119 = sub_10017D3B4(v115, v118);
  sub_100015F24(v118, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_1000059A8(v151, &qword_10041CB68, &qword_100374598);
  sub_100015F24(v115, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_1000059A8(v110, &qword_10041CB68, &qword_100374598);
  if ((v119 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  v120 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v121 = v144;
  sub_10000A0A4(v87 + v120, v144, &qword_10041CA38, &qword_100374468);
  v122 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v123 = *(v139 + 48);
  v124 = v142;
  sub_10000A0A4(v121, v142, &qword_10041CA38, &qword_100374468);
  v81 = v124;
  sub_10000A0A4(v51 + v122, v124 + v123, &qword_10041CA38, &qword_100374468);
  v125 = v141;
  v126 = *(v140 + 48);
  if (v126(v124, 1, v141) == 1)
  {
    sub_1000059A8(v121, &qword_10041CA38, &qword_100374468);
    if (v126(v124 + v123, 1, v125) == 1)
    {
      sub_1000059A8(v124, &qword_10041CA38, &qword_100374468);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  sub_10000A0A4(v124, v114, &qword_10041CA38, &qword_100374468);
  if (v126(v124 + v123, 1, v125) == 1)
  {
    sub_1000059A8(v144, &qword_10041CA38, &qword_100374468);
    sub_100015F24(v114, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
LABEL_45:
    v59 = &qword_100423CD0;
    v60 = &qword_100382F38;
    goto LABEL_22;
  }

  v127 = v124 + v123;
  v128 = v137;
  sub_1000112AC(v127, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v129 = sub_100184D80(v114, v128, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015F24(v128, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v144, &qword_10041CA38, &qword_100374468);
  sub_100015F24(v114, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v124, &qword_10041CA38, &qword_100374468);
  if ((v129 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v130 = v87 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  swift_beginAccess();
  v131 = *v130;
  v132 = *(v130 + 8);

  v133 = v51 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  swift_beginAccess();
  v134 = *v133;
  v135 = *(v133 + 8);

  if ((v132 & 1) == 0)
  {
    if (v131 == v134)
    {
      v136 = v135;
    }

    else
    {
      v136 = 1;
    }

    return (v136 & 1) == 0;
  }

  return v135 != 0;
}

uint64_t sub_10016C670(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423838, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &unk_100380EC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016C710(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFA8, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &unk_100380E50);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C77C(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DFA8, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &unk_100380E50);

  return Message.hash(into:)();
}

uint64_t sub_10016C820()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DC8);
  sub_100005DF0(v0, qword_100433DC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "start_time_cfat_sec";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mct_timestamp_sec";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "confidence";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "estimated_state_probability_outdoor";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "daylight_confidence";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_astronomical_daytime";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "current_lux";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016CBCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_16:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          sub_10019885C();
LABEL_22:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            goto LABEL_16;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          sub_1001988B0();
          goto LABEL_22;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10016CDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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

  if (*(v5 + v10[7]) != 3)
  {
    sub_1001988B0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    sub_10019885C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  sub_10016CFAC(v5, a1, a2, a3);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    sub_10019885C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016D084@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 3;
  *(a2 + v8) = 4;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + v9) = 4;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_10016D13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423830, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &unk_100381030);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016D1DC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFC0, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &unk_100380FB8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016D248(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DFC0, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &unk_100380FB8);

  return Message.hash(into:)();
}

uint64_t sub_10016D2EC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DE0);
  sub_100005DF0(v0, qword_100433DE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100374410;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "cf_absolute_timestamp_sec";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mach_continuous_timestamp_sec";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sample_interval_sec";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "d_pos_x_m";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "d_pos_Y_m";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "d_pos_z_m";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "d_vel_x_mps";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "d_vel_y_mps";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "d_vel_z_mps";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "q_x";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "q_y";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "q_z";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "q_w";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "reference_frame";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "is_delta_position_valid_DEPRECATED";
  *(v34 + 1) = 34;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "is_delta_velocity_valid_DEPRECATED";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "is_attitude_valid_DEPRECATED";
  *(v37 + 8) = 28;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "static_indicator";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "rotation_to_true_north_from_magnetometer_rad";
  *(v41 + 1) = 44;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

double sub_10016D928()
{
  type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 68) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  *(v0 + 92) = 0;
  *(v0 + 96) = 1;
  *(v0 + 100) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 1;
  *(v0 + 124) = 0;
  *(v0 + 128) = 1;
  *&result = 33686019;
  *(v0 + 129) = 33686019;
  *(v0 + 133) = 4;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  qword_100444178 = v0;
  return result;
}

uint64_t sub_10016D9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v9 = swift_allocObject();
    sub_100176B94(v8);

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
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_13;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_13;
        case 14:
          swift_beginAccess();
          sub_100197C38();
          goto LABEL_11;
        case 15:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_13;
        case 18:
          swift_beginAccess();
          sub_100197BE4();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_13:
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

uint64_t sub_10016DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  result = swift_beginAccess();
  if (v9[24])
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

  swift_beginAccess();
  if ((v9[40] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[48] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[56] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[64] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[72] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10016E0C4(v9, a1, a2, a3);
  sub_10016E14C(v9, a1, a2, a3);
  sub_10016E1D4(v9, a1, a2, a3, 9);
  sub_10016E26C(v9, a1, a2, a3, 10);
  sub_10016E304(v9, a1, a2, a3, 11);
  sub_10016E39C(v9, a1, a2, a3);
  sub_10016E424(v9, a1, a2, a3);
  sub_10016E4AC(v9, a1, a2, a3);
  sub_10016E548(v9, a1, a2, a3);
  sub_10016E5D0(v9, a1, a2, a3);
  sub_10016E658(v9, a1, a2, a3);
  sub_10016E6E0(v9, a1, a2, a3);
  sub_10016E77C(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 3)
  {
    sub_100197C38();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 132) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 133) != 4)
  {
    sub_100197BE4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E804(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_10016E8B8(v5, v6) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10016E8B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);
  if (v11)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 44))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 52);
  v14 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 52))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 60);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 60))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 68);
  v20 = *(a1 + 72);
  swift_beginAccess();
  v21 = *(a2 + 72);
  if (v20)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 68))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 76);
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(a2 + 80);
  if (v23)
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 76))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 84);
  v26 = *(a1 + 88);
  swift_beginAccess();
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 84))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 92);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = *(a2 + 96);
  if (v29)
  {
    if (!*(a2 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 92))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 100);
  v32 = *(a1 + 104);
  swift_beginAccess();
  v33 = *(a2 + 104);
  if (v32)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 100))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 108);
  v35 = *(a1 + 112);
  swift_beginAccess();
  v36 = *(a2 + 112);
  if (v35)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 108))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 116);
  v38 = *(a1 + 120);
  swift_beginAccess();
  v39 = *(a2 + 120);
  if (v38)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 116))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 124);
  v41 = *(a1 + 128);
  swift_beginAccess();
  v42 = *(a2 + 128);
  if (v41)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 124))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 129);
  swift_beginAccess();
  v44 = *(a2 + 129);
  if (v43 == 3)
  {
    if (v44 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 3 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 130);
  swift_beginAccess();
  v47 = *(a2 + 130);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 131);
  swift_beginAccess();
  v49 = *(a2 + 131);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 132);
  swift_beginAccess();
  v51 = *(a2 + 132);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 133);
  swift_beginAccess();
  v53 = *(a2 + 133);
  if (v52 == 4)
  {
    if (v53 == 4)
    {
      goto LABEL_104;
    }

    return 0;
  }

  result = 0;
  if (v53 != 4 && v52 == v53)
  {
LABEL_104:
    swift_beginAccess();
    v54 = *(a1 + 136);
    v55 = *(a1 + 140);
    swift_beginAccess();
    v56 = *(a2 + 140);
    if (v55)
    {
      if (!*(a2 + 140))
      {
        return 0;
      }
    }

    else
    {
      if (v54 != *(a2 + 136))
      {
        v56 = 1;
      }

      if (v56)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

Swift::Int sub_10016EF88(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100015EDC(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016F064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423828, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &unk_100381198);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016F104(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFD8, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &unk_100381120);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016F170(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DFD8, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &unk_100381120);

  return Message.hash(into:)();
}

uint64_t sub_10016F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (sub_10016E8B8(v4, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10016F298()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DF8);
  sub_100005DF0(v0, qword_100433DF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_X_ARBITRARY_Z_VERTICAL";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "RF_X_TRUE_NORTH_Z_VERTICAL";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016F514()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433E10);
  sub_100005DF0(v0, qword_100433E10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SI_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SI_NON_STATIC";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SI_STATIC_PERIOD_START";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SI_STATIC_PERIOD_STOP";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016F7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_100172B7C(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        sub_100172B7C(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = v10[v16 + 8];
        v19 = &v7[v16];
        v20 = v7[v16 + 8];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v17 != *v19)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
LABEL_21:
            sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_22;
          }
        }

        v21 = *(v4 + 24);
        v22 = &v10[v21];
        v23 = v10[v21 + 8];
        v24 = &v7[v21];
        v25 = v7[v21 + 8];
        if (v23)
        {
          if (!v25)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v22 != *v24)
          {
            LOBYTE(v25) = 1;
          }

          if (v25)
          {
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v26)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v26 & 1;
      }
    }

    v26 = 1;
  }

  else
  {
LABEL_22:
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_10016FA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v69 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v68 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v10 = __chkstk_darwin(v68);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v60 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_54:
    v59 = 0;
    return v59 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = 0;
  v62 = v16;
  v63 = a2 + v17;
  v20 = *(v13 + 72);
  v67 = v4;
  v60 = v20;
  v61 = v18;
  while (1)
  {
    v21 = v20 * v19;
    result = sub_100172B7C(v18 + v20 * v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v19 == v16)
    {
      break;
    }

    v64 = v19;
    result = sub_100172B7C(v63 + v21, v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    v23 = *v15;
    v24 = *v12;
    v25 = *(*v15 + 16);
    if (v25 != *(*v12 + 16))
    {
      goto LABEL_53;
    }

    if (v25 && v23 != v24)
    {
      v26 = 0;
      v27 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v65 = v24 + v27;
      v66 = v23 + v27;
      while (1)
      {
        v28 = v67;
        if (v26 >= *(v23 + 16))
        {
          break;
        }

        v29 = *(v69 + 72) * v26;
        result = sub_100172B7C(v66 + v29, v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v26 >= *(v24 + 16))
        {
          goto LABEL_57;
        }

        sub_100172B7C(v65 + v29, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v30 = *(v28 + 20);
        v31 = &v9[v30];
        v32 = v9[v30 + 8];
        v33 = &v7[v30];
        v34 = v7[v30 + 8];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_52;
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
LABEL_52:
            sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_53;
          }
        }

        v35 = *(v28 + 24);
        v36 = &v9[v35];
        v37 = v9[v35 + 8];
        v38 = &v7[v35];
        v39 = v7[v35 + 8];
        if (v37)
        {
          if (!v39)
          {
            goto LABEL_52;
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
            goto LABEL_52;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        result = sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if ((v40 & 1) == 0)
        {
          goto LABEL_53;
        }

        if (v25 == ++v26)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      break;
    }

LABEL_26:
    v41 = v68[6];
    v42 = v15[v41];
    v43 = v12[v41];
    if (v42 == 4)
    {
      if (v43 != 4)
      {
        goto LABEL_53;
      }
    }

    else if (v42 != v43)
    {
      goto LABEL_53;
    }

    v44 = v68[7];
    v45 = &v15[v44];
    v46 = v15[v44 + 4];
    v47 = &v12[v44];
    v48 = v12[v44 + 4];
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v45 != *v47)
      {
        LOBYTE(v48) = 1;
      }

      if (v48)
      {
LABEL_53:
        sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        goto LABEL_54;
      }
    }

    v49 = v68[8];
    v50 = &v15[v49];
    v51 = v15[v49 + 4];
    v52 = &v12[v49];
    v53 = v12[v49 + 4];
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v50 != *v52)
      {
        LOBYTE(v53) = 1;
      }

      if (v53)
      {
        goto LABEL_53;
      }
    }

    v54 = v68[9];
    v55 = &v15[v54];
    v56 = v15[v54 + 4];
    v57 = &v12[v54];
    v58 = v12[v54 + 4];
    if (v56)
    {
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v55 != *v57)
      {
        LOBYTE(v58) = 1;
      }

      if (v58)
      {
        goto LABEL_53;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v59)
    {
      v19 = v64 + 1;
      v18 = v61;
      v16 = v62;
      v20 = v60;
      if (v64 + 1 != v62)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100170024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_100172B7C(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        sub_100172B7C(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = v10[v16 + 8];
        v19 = &v7[v16];
        v20 = v7[v16 + 8];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v17 != *v19)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
LABEL_39:
            sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            goto LABEL_40;
          }
        }

        v21 = v4[6];
        v22 = &v10[v21];
        v23 = v10[v21 + 8];
        v24 = &v7[v21];
        v25 = v7[v21 + 8];
        if (v23)
        {
          if (!v25)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v22 != *v24)
          {
            LOBYTE(v25) = 1;
          }

          if (v25)
          {
            goto LABEL_39;
          }
        }

        v26 = v4[7];
        v27 = &v10[v26];
        v28 = v10[v26 + 8];
        v29 = &v7[v26];
        v30 = v7[v26 + 8];
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v27 != *v29)
          {
            LOBYTE(v30) = 1;
          }

          if (v30)
          {
            goto LABEL_39;
          }
        }

        v31 = v4[8];
        v32 = &v10[v31];
        v33 = v10[v31 + 8];
        v34 = &v7[v31];
        v35 = v7[v31 + 8];
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v32 != *v34)
          {
            LOBYTE(v35) = 1;
          }

          if (v35)
          {
            goto LABEL_39;
          }
        }

        v36 = v4[9];
        v37 = &v10[v36];
        v38 = v10[v36 + 8];
        v39 = &v7[v36];
        v40 = v7[v36 + 8];
        if (v38)
        {
          if (!v40)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        if (v41)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v41 & 1;
      }
    }

    v41 = 1;
  }

  else
  {
LABEL_40:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_100170368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v24 = a5;
  v25 = a3(0);
  v8 = __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = &v24 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_100172B7C(v16, v13, a4);
      sub_100172B7C(v17, v10, a4);
      v19 = *(v25 + 20);
      v20 = *&v13[v19];
      v21 = *&v10[v19];
      if (v20 != v21)
      {

        v22 = v24(v20, v21);

        if ((v22 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100015F24(v10, a4);
      sub_100015F24(v13, a4);
      v17 += v18;
      v16 += v18;
      if (!--v14)
      {
        return 1;
      }
    }

    sub_100015F24(v10, a4);
    sub_100015F24(v13, a4);
  }

  return 0;
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v11 - 8);
  v80 = &v72 - v12;
  v13 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  v16 = a3(0);
  v17 = __chkstk_darwin(v16);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v22 = &v72 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_54;
  }

  if (!v23 || a1 == a2)
  {
    v70 = 1;
    return v70 & 1;
  }

  v82 = v19;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v77 = (v9 + 48);
  v78 = a4;
  v75 = *(v20 + 72);
  v76 = v13;
  v73 = &v72 - v21;
  while (1)
  {
    v81 = v25;
    sub_100172B7C(v25, v22, a4);
    v27 = v83;
    sub_100172B7C(v26, v83, a4);
    v28 = v82[5];
    v29 = *(v13 + 48);
    sub_10000A0A4(&v22[v28], v15, &qword_10041CA30, &qword_100374460);
    sub_10000A0A4(v27 + v28, &v15[v29], &qword_10041CA30, &qword_100374460);
    v30 = *v77;
    if ((*v77)(v15, 1, v8) == 1)
    {
      v31 = v30(&v15[v29], 1, v8);
      a4 = v78;
      if (v31 != 1)
      {
        goto LABEL_52;
      }

      sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
      v13 = v76;
      v32 = v82;
      goto LABEL_28;
    }

    v74 = v23;
    v33 = v80;
    sub_10000A0A4(v15, v80, &qword_10041CA30, &qword_100374460);
    if (v30(&v15[v29], 1, v8) == 1)
    {
      break;
    }

    v34 = v79;
    sub_1000112AC(&v15[v29], v79, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v35 = v8[5];
    v36 = (v33 + v35);
    v37 = *(v33 + v35 + 8);
    v38 = (v34 + v35);
    v39 = *(v34 + v35 + 8);
    if (v37)
    {
      v22 = v73;
      v23 = v74;
      if (!v39)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v36 != *v38)
      {
        LOBYTE(v39) = 1;
      }

      v22 = v73;
      v23 = v74;
      if (v39)
      {
LABEL_50:
        sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        sub_100015F24(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
        a4 = v78;
        goto LABEL_53;
      }
    }

    v40 = v8[6];
    v41 = (v33 + v40);
    v42 = *(v33 + v40 + 8);
    v43 = (v34 + v40);
    v44 = *(v34 + v40 + 8);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_50;
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
        goto LABEL_50;
      }
    }

    v45 = v8[7];
    v46 = (v33 + v45);
    v47 = *(v33 + v45 + 8);
    v48 = (v34 + v45);
    v49 = *(v34 + v45 + 8);
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_50;
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
        goto LABEL_50;
      }
    }

    type metadata accessor for UnknownStorage();
    v50 = v8;
    v51 = v33;
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v53 = v51;
    v8 = v50;
    sub_100015F24(v53, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
    a4 = v78;
    v13 = v76;
    v32 = v82;
    if ((v52 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_28:
    v54 = v32[6];
    v55 = &v22[v54];
    v56 = v22[v54 + 4];
    v57 = (v83 + v54);
    v58 = *(v83 + v54 + 4);
    if (v56)
    {
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v55 != *v57)
      {
        LOBYTE(v58) = 1;
      }

      if (v58)
      {
        goto LABEL_53;
      }
    }

    v59 = v32[7];
    v60 = &v22[v59];
    v61 = v22[v59 + 4];
    v62 = (v83 + v59);
    v63 = *(v83 + v59 + 4);
    if (v61)
    {
      if (!v63)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v60 != *v62)
      {
        LOBYTE(v63) = 1;
      }

      if (v63)
      {
        goto LABEL_53;
      }
    }

    v64 = v32[8];
    v65 = &v22[v64];
    v66 = v22[v64 + 4];
    v67 = (v83 + v64);
    v68 = *(v83 + v64 + 4);
    if (v66)
    {
      if (!v68)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v65 != *v67)
      {
        LOBYTE(v68) = 1;
      }

      if (v68)
      {
        goto LABEL_53;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v69 = v83;
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v69, a4);
    sub_100015F24(v22, a4);
    if (v70)
    {
      v26 += v75;
      v25 = v81 + v75;
      if (--v23)
      {
        continue;
      }
    }

    return v70 & 1;
  }

  sub_100015F24(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  a4 = v78;
  v22 = v73;
LABEL_52:
  sub_1000059A8(v15, &qword_100423CE0, &qword_100393E90);
LABEL_53:
  sub_100015F24(v83, a4);
  sub_100015F24(v22, a4);
LABEL_54:
  v70 = 0;
  return v70 & 1;
}

uint64_t sub_100170CC8(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = *(v66 - 1);
  __chkstk_darwin(v66);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - v7;
  v63 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  __chkstk_darwin(v63);
  v9 = &v59 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v59 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_50:
    v57 = 0;
    return v57 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v57 = 1;
    return v57 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v60 = v13;
  v61 = (v4 + 48);
  v59 = *(v14 + 72);
  v64 = v10;
  while (1)
  {
    result = sub_100172B7C(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (!v17)
    {
      break;
    }

    sub_100172B7C(v20, v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    v22 = *(v10 + 20);
    v23 = *(v63 + 48);
    sub_10000A0A4(&v16[v22], v9, &qword_10041CA30, &qword_100374460);
    sub_10000A0A4(&v13[v22], &v9[v23], &qword_10041CA30, &qword_100374460);
    v24 = *v61;
    if ((*v61)(v9, 1, v66) == 1)
    {
      v25 = v24(&v9[v23], 1, v66);
      v13 = v60;
      if (v25 != 1)
      {
        goto LABEL_48;
      }

      sub_1000059A8(v9, &qword_10041CA30, &qword_100374460);
      v26 = v64;
    }

    else
    {
      sub_10000A0A4(v9, v65, &qword_10041CA30, &qword_100374460);
      if (v24(&v9[v23], 1, v66) == 1)
      {
        sub_100015F24(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v13 = v60;
LABEL_48:
        sub_1000059A8(v9, &qword_100423CE0, &qword_100393E90);
LABEL_49:
        sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        goto LABEL_50;
      }

      v27 = &v9[v23];
      v28 = v62;
      sub_1000112AC(v27, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v29 = v66[5];
      v30 = (v65 + v29);
      v31 = *(v65 + v29 + 8);
      v32 = (v28 + v29);
      v33 = *(v28 + v29 + 8);
      if (v31)
      {
        if (!v33)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v30 != *v32)
        {
          LOBYTE(v33) = 1;
        }

        if (v33)
        {
LABEL_46:
          sub_100015F24(v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          sub_100015F24(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          sub_1000059A8(v9, &qword_10041CA30, &qword_100374460);
          v13 = v60;
          goto LABEL_49;
        }
      }

      v34 = v66[6];
      v35 = (v65 + v34);
      v36 = *(v65 + v34 + 8);
      v37 = (v28 + v34);
      v38 = *(v28 + v34 + 8);
      if (v36)
      {
        if (!v38)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v35 != *v37)
        {
          LOBYTE(v38) = 1;
        }

        if (v38)
        {
          goto LABEL_46;
        }
      }

      v39 = v66[7];
      v40 = (v65 + v39);
      v41 = *(v65 + v39 + 8);
      v42 = (v28 + v39);
      v43 = *(v28 + v39 + 8);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v40 != *v42)
        {
          LOBYTE(v43) = 1;
        }

        if (v43)
        {
          goto LABEL_46;
        }
      }

      type metadata accessor for UnknownStorage();
      v44 = v65;
      v45 = v28;
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v9, &qword_10041CA30, &qword_100374460);
      v26 = v64;
      v13 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v47 = *(v26 + 24);
    v48 = &v16[v47];
    v49 = v16[v47 + 4];
    v50 = &v13[v47];
    v51 = v13[v47 + 4];
    if (v49)
    {
      if (!v51)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*v48 != *v50)
      {
        LOBYTE(v51) = 1;
      }

      if (v51)
      {
        goto LABEL_49;
      }
    }

    v52 = *(v26 + 28);
    v53 = &v16[v52];
    v54 = v16[v52 + 4];
    v55 = &v13[v52];
    v56 = v13[v52 + 4];
    if (v54)
    {
      if (!v56)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*v53 != *v55)
      {
        LOBYTE(v56) = 1;
      }

      if (v56)
      {
        goto LABEL_49;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (v57)
    {
      v20 += v59;
      v19 += v59;
      v58 = v17-- == 1;
      v10 = v64;
      if (!v58)
      {
        continue;
      }
    }

    return v57 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_100172B7C(v18, v15, a4);
        sub_100172B7C(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_100015F24(v12, a4);
        sub_100015F24(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_100171538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v52 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v43 - v8);
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v10 = __chkstk_darwin(v50);
  v51 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_31:
    v42 = 0;
    return v42 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v16 = 0;
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v44 = *(a1 + 16);
  v45 = a2 + v17;
  v46 = *(v12 + 72);
  v47 = a1 + v17;
  v49 = &v43 - v13;
  while (1)
  {
    v18 = v46 * v16;
    result = sub_100172B7C(v47 + v46 * v16, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v16 == v15)
    {
      break;
    }

    v48 = v16;
    v20 = v45 + v18;
    v21 = v51;
    result = sub_100172B7C(v20, v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    v22 = *v14;
    v23 = *v21;
    v24 = *(*v14 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_30;
    }

    if (v24 && v22 != v23)
    {
      v25 = 0;
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v27 = v22 + v26;
      v28 = v23 + v26;
      while (v25 < *(v22 + 16))
      {
        v29 = *(v52 + 72) * v25;
        result = sub_100172B7C(v27 + v29, v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        sub_100172B7C(v28 + v29, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        v30 = sub_10018450C(v9, v7);
        sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        result = sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v24 == ++v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

LABEL_14:
    v31 = *(v50 + 24);
    v32 = &v49[v31];
    v33 = v49[v31 + 8];
    v34 = (v51 + v31);
    v35 = *(v51 + v31 + 8);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
LABEL_30:
        sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        goto LABEL_31;
      }
    }

    v36 = *(v50 + 28);
    v37 = &v49[v36];
    v38 = v49[v36 + 8];
    v39 = (v51 + v36);
    v40 = *(v51 + v36 + 8);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_30;
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
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v14 = v49;
    v41 = v51;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v41, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v42)
    {
      v16 = v48 + 1;
      v15 = v44;
      if (v48 + 1 != v44)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001719A0(uint64_t result, uint64_t a2)
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

uint64_t sub_1001719FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_100172B7C(v18, v15, a4);
        sub_100172B7C(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_100015F24(v12, a4);
        sub_100015F24(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t sub_100171B98(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t sub_100171BA8(uint64_t a1)
{
  if (a1 > 11804)
  {
    if (a1 > 15651)
    {
      if (a1 > 18224)
      {
        if (a1 <= 19149)
        {
          if (a1 > 19029)
          {
            if (a1 == 19030)
            {
              return 53;
            }

            if (a1 == 19090)
            {
              return 42;
            }
          }

          else
          {
            if (a1 == 18225)
            {
              return 44;
            }

            if (a1 == 18240)
            {
              return 32;
            }
          }
        }

        else if (a1 <= 90602)
        {
          if (a1 == 19150)
          {
            return 34;
          }

          if (a1 == 19160)
          {
            return 43;
          }
        }

        else
        {
          switch(a1)
          {
            case 90603:
              return 33;
            case 515621:
              return 66;
            case 515652:
              return 59;
          }
        }
      }

      else if (a1 <= 15709)
      {
        if (a1 > 15669)
        {
          if (a1 == 15670)
          {
            return 38;
          }

          if (a1 == 15675)
          {
            return 57;
          }
        }

        else
        {
          if (a1 == 15652)
          {
            return 62;
          }

          if (a1 == 15660)
          {
            return 68;
          }
        }
      }

      else if (a1 <= 17149)
      {
        if (a1 == 15710)
        {
          return 61;
        }

        if (a1 == 15733)
        {
          return 64;
        }
      }

      else
      {
        switch(a1)
        {
          case 17150:
            return 30;
          case 18070:
            return 41;
          case 18200:
            return 31;
        }
      }
    }

    else if (a1 > 15254)
    {
      if (a1 <= 15459)
      {
        if (a1 > 15349)
        {
          if (a1 == 15350)
          {
            return 55;
          }

          if (a1 == 15360)
          {
            return 54;
          }
        }

        else
        {
          if (a1 == 15255)
          {
            return 29;
          }

          if (a1 == 15330)
          {
            return 63;
          }
        }
      }

      else if (a1 <= 15591)
      {
        if (a1 == 15460)
        {
          return 51;
        }

        if (a1 == 15562)
        {
          return 50;
        }
      }

      else
      {
        switch(a1)
        {
          case 15592:
            return 52;
          case 15610:
            return 45;
          case 15620:
            return 65;
        }
      }
    }

    else if (a1 <= 15099)
    {
      if (a1 > 15029)
      {
        if (a1 == 15030)
        {
          return 58;
        }

        if (a1 == 15055)
        {
          return 56;
        }
      }

      else
      {
        if (a1 == 11805)
        {
          return 27;
        }

        if (a1 == 12150)
        {
          return 28;
        }
      }
    }

    else if (a1 <= 15149)
    {
      if (a1 == 15100)
      {
        return 70;
      }

      if (a1 == 15110)
      {
        return 40;
      }
    }

    else
    {
      switch(a1)
      {
        case 15150:
          return 67;
        case 15230:
          return 48;
        case 15240:
          return 49;
      }
    }
  }

  else
  {
    if (a1 <= 2009)
    {
      return 0;
    }

    if (a1 > 2067)
    {
      if (a1 <= 2104)
      {
        switch(a1)
        {
          case 2068:
            return 69;
          case 2071:
            return 23;
          case 2101:
            return 36;
        }
      }

      else if (a1 > 3014)
      {
        if (a1 == 3015)
        {
          return 26;
        }

        if (a1 == 3016)
        {
          return 71;
        }
      }

      else
      {
        if (a1 == 2105)
        {
          return 24;
        }

        if (a1 == 2150)
        {
          return 25;
        }
      }
    }

    else if (a1 <= 2023)
    {
      switch(a1)
      {
        case 2010:
          return 18;
        case 2020:
          return 19;
        case 2022:
          return 35;
      }
    }

    else if (a1 > 2060)
    {
      if (a1 == 2061)
      {
        return 21;
      }

      if (a1 == 2065)
      {
        return 22;
      }
    }

    else
    {
      if (a1 == 2024)
      {
        return 37;
      }

      if (a1 == 2048)
      {
        return 20;
      }
    }
  }

  return 72;
}

unint64_t sub_100172138(unint64_t result)
{
  if (result <= 1)
  {
    if (result > 1)
    {
      return 5;
    }
  }

  else if (result != 2 && result != 3)
  {
    if (result == 1001)
    {
      return 4;
    }

    return 5;
  }

  return result;
}

uint64_t sub_100172298(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v3 - 8);
  v76 = &v75 - v4;
  *(v1 + 16) = 4;
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v75 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v8 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  v78 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  v79 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  v80 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  v81 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  v82 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v83 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  v84 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  v85 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 14;
  v86 = v18;
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v7(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, 1, 1, v6);
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  v88 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  v77 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  *v20 = 0;
  *(v20 + 4) = 1;
  v89 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity) = 5;
  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v91 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame) = 3;
  v93 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType) = 8;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  *v21 = 0;
  *(v21 + 8) = 1;
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController) = 2;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v24 = v76;
  sub_10000A0A4(a1 + v23, v76, &qword_10041CA38, &qword_100374468);
  v25 = v75;
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v25, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v8 = v27;
  *(v8 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v9 = v29;
  *(v9 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v78;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v79;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = v80;
  swift_beginAccess();
  *v38 = v37;
  *(v38 + 8) = v36;
  v39 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course);
  swift_beginAccess();
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = v81;
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  v44 = v82;
  swift_beginAccess();
  *v44 = v43;
  *(v44 + 8) = v42;
  v45 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = v83;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  LODWORD(v46) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  v49 = v84;
  swift_beginAccess();
  *v49 = v46;
  *(v49 + 4) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v85;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  v53 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v53) = *(a1 + v53);
  v54 = v86;
  swift_beginAccess();
  *(v1 + v54) = v53;
  v55 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v55, v24, &qword_10041CA38, &qword_100374468);
  v56 = v87;
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v56, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v57 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse);
  swift_beginAccess();
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  v59 = v88;
  swift_beginAccess();
  *v59 = v58;
  *(v59 + 8) = v57;
  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  LODWORD(v58) = *v60;
  LOBYTE(v60) = *(v60 + 4);
  v61 = v77;
  swift_beginAccess();
  *v61 = v58;
  *(v61 + 4) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v89;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v90;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v91;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v93;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  swift_beginAccess();
  *v21 = v71;
  *(v21 + 8) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v72);
  v73 = v92;
  swift_beginAccess();
  *(v1 + v73) = a1;
  return v1;
}

uint64_t sub_100172B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100172BE4(unint64_t result)
{
  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 4;
  }

  if (result != 2)
  {
    if (result == 0xFFFF)
    {
      return 3;
    }

    return 4;
  }

  return result;
}

uint64_t sub_100172C20(uint64_t a1)
{
  if (a1 <= 24)
  {
    if (a1 == -1)
    {
      return 0;
    }

    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 25:
        return 2;
      case 50:
        return 3;
      case 75:
        return 4;
    }
  }

  return 5;
}

uint64_t sub_100172D1C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v3 - 8);
  v239 = &v179 - v4;
  v5 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v5 - 8);
  v215 = &v179 - v6;
  v7 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v7 - 8);
  v201 = &v179 - v8;
  v9 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v9 - 8);
  v191 = &v179 - v10;
  *(v1 + 16) = 0;
  v180 = (v1 + 16);
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v181 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v182 = (v1 + 48);
  *(v1 + 64) = 0;
  v183 = (v1 + 64);
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v184 = (v1 + 80);
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  v185 = (v1 + 92);
  *(v1 + 100) = 0;
  v186 = (v1 + 100);
  *(v1 + 96) = 1;
  *(v1 + 104) = 1;
  *(v1 + 108) = 0;
  v187 = (v1 + 108);
  *(v1 + 112) = 1;
  *(v1 + 113) = 1026;
  v11 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v188 = (v1 + 113);
  v189 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  v190 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  v192 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  v193 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v16 = 0;
  *(v16 + 4) = 1;
  v194 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v195 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v196 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  v198 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v19 = 0;
  *(v19 + 4) = 1;
  v199 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v12);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  v200 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  v202 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  v203 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  v204 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v22 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v205 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  v206 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  v207 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  v208 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  v209 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  v210 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  v211 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v29 = 0;
  *(v29 + 8) = 1;
  v212 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  v213 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  v214 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v31 = 0;
  *(v31 + 8) = 1;
  v216 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v218 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v12);
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  v219 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v32 = 0;
  *(v32 + 8) = 1;
  v220 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  v221 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  v222 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  v223 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  v224 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  v225 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v37 = 0;
  *(v37 + 8) = 1;
  v226 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v38 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  v227 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  v228 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v39 = 0;
  *(v39 + 8) = 1;
  v197 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = &_swiftEmptyArrayStorage;
  v231 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v40 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v232 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v233 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v42 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  v234 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  v217 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v43 = 0;
  *(v43 + 8) = 1;
  v235 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  v236 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  v237 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  v238 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  v229 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  v230 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  swift_beginAccess();
  v44 = *(a1 + 16);
  LOBYTE(v40) = *(a1 + 24);
  v45 = v180;
  swift_beginAccess();
  *v45 = v44;
  *(v1 + 24) = v40;
  swift_beginAccess();
  v46 = *(a1 + 32);
  LOBYTE(v44) = *(a1 + 40);
  v47 = v181;
  swift_beginAccess();
  *v47 = v46;
  *(v1 + 40) = v44;
  swift_beginAccess();
  v48 = *(a1 + 48);
  LOBYTE(v44) = *(a1 + 56);
  v49 = v182;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 56) = v44;
  swift_beginAccess();
  v50 = *(a1 + 64);
  LOBYTE(v44) = *(a1 + 72);
  v51 = v183;
  swift_beginAccess();
  *v51 = v50;
  *(v1 + 72) = v44;
  swift_beginAccess();
  v52 = *(a1 + 80);
  LOBYTE(v44) = *(a1 + 88);
  v53 = v184;
  swift_beginAccess();
  *v53 = v52;
  *(v1 + 88) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 92);
  LOBYTE(v44) = *(a1 + 96);
  v54 = v185;
  swift_beginAccess();
  *v54 = v52;
  *(v1 + 96) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 100);
  LOBYTE(v44) = *(a1 + 104);
  v55 = v186;
  swift_beginAccess();
  *v55 = v52;
  *(v1 + 104) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 108);
  LOBYTE(v44) = *(a1 + 112);
  v56 = v187;
  swift_beginAccess();
  *v56 = v52;
  *(v1 + 112) = v44;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + 113);
  v57 = v188;
  swift_beginAccess();
  *v57 = v52;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v52;
  v58 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  v59 = v191;
  sub_10000A0A4(a1 + v58, v191, &qword_10041CA38, &qword_100374468);
  v60 = v189;
  swift_beginAccess();
  sub_10000AD64(v59, v1 + v60, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v61 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse);
  swift_beginAccess();
  v62 = *v61;
  LOBYTE(v61) = *(v61 + 8);
  v63 = v190;
  swift_beginAccess();
  *v63 = v62;
  *(v63 + 8) = v61;
  v64 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  swift_beginAccess();
  LODWORD(v62) = *v64;
  LOBYTE(v64) = *(v64 + 4);
  v65 = v192;
  swift_beginAccess();
  *v65 = v62;
  *(v65 + 4) = v64;
  v66 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  swift_beginAccess();
  LODWORD(v62) = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v67 = v193;
  swift_beginAccess();
  *v67 = v62;
  *(v67 + 4) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v194;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  v71 = v201;
  sub_10000A0A4(a1 + v70, v201, &qword_10041CA40, &qword_100374470);
  v72 = v195;
  swift_beginAccess();
  sub_10000AD64(v71, v1 + v72, &qword_10041CA40, &qword_100374470);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);
  v74 = v196;
  swift_beginAccess();
  *(v1 + v74) = v73;
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  swift_beginAccess();
  LODWORD(v74) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v198;
  swift_beginAccess();
  *v76 = v74;
  *(v76 + 4) = v75;
  v77 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v77, v59, &qword_10041CA38, &qword_100374468);
  v78 = v199;
  swift_beginAccess();
  sub_10000AD64(v59, v1 + v78, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v79 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy);
  swift_beginAccess();
  v80 = *v79;
  LOBYTE(v79) = *(v79 + 8);
  v81 = v200;
  swift_beginAccess();
  *v81 = v80;
  *(v81 + 8) = v79;
  v82 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime);
  swift_beginAccess();
  v83 = *v82;
  LOBYTE(v82) = *(v82 + 8);
  v84 = v202;
  swift_beginAccess();
  *v84 = v83;
  *(v84 + 8) = v82;
  v85 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v203;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + v87);
  v88 = v204;
  swift_beginAccess();
  *(v1 + v88) = v87;
  v89 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  v90 = v215;
  sub_10000A0A4(a1 + v89, v215, &qword_10041CA48, &qword_100374478);
  v91 = v205;
  swift_beginAccess();
  sub_10000AD64(v90, v1 + v91, &qword_10041CA48, &qword_100374478);
  swift_endAccess();
  v92 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope);
  swift_beginAccess();
  v93 = *v92;
  LOBYTE(v92) = *(v92 + 8);
  v94 = v206;
  swift_beginAccess();
  *v94 = v93;
  *(v94 + 8) = v92;
  v95 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope);
  swift_beginAccess();
  v96 = *v95;
  LOBYTE(v95) = *(v95 + 8);
  v97 = v207;
  swift_beginAccess();
  *v97 = v96;
  *(v97 + 8) = v95;
  v98 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude);
  swift_beginAccess();
  v99 = *v98;
  LOBYTE(v98) = *(v98 + 8);
  v100 = v208;
  swift_beginAccess();
  *v100 = v99;
  *(v100 + 8) = v98;
  v101 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty);
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 8);
  v103 = v209;
  swift_beginAccess();
  *v103 = v102;
  *(v103 + 8) = v101;
  v104 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude);
  swift_beginAccess();
  v105 = *v104;
  LOBYTE(v104) = *(v104 + 8);
  v106 = v210;
  swift_beginAccess();
  *v106 = v105;
  *(v106 + 8) = v104;
  v107 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty);
  swift_beginAccess();
  v108 = *v107;
  LOBYTE(v107) = *(v107 + 8);
  v109 = v211;
  swift_beginAccess();
  *v109 = v108;
  *(v109 + 8) = v107;
  v110 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  swift_beginAccess();
  LOBYTE(v110) = *(a1 + v110);
  v111 = v212;
  swift_beginAccess();
  *(v1 + v111) = v110;
  v112 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy);
  swift_beginAccess();
  v113 = *v112;
  LOBYTE(v112) = *(v112 + 8);
  v114 = v213;
  swift_beginAccess();
  *v114 = v113;
  *(v114 + 8) = v112;
  v115 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy);
  swift_beginAccess();
  v116 = *v115;
  LOBYTE(v115) = *(v115 + 8);
  v117 = v214;
  swift_beginAccess();
  *v117 = v116;
  *(v117 + 8) = v115;
  v118 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v216;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v120, v59, &qword_10041CA38, &qword_100374468);
  v121 = v218;
  swift_beginAccess();
  sub_10000AD64(v59, v1 + v121, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v122 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy);
  swift_beginAccess();
  v123 = *v122;
  LOBYTE(v122) = *(v122 + 8);
  v124 = v219;
  swift_beginAccess();
  *v124 = v123;
  *(v124 + 8) = v122;
  v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  swift_beginAccess();
  LOBYTE(v125) = *(a1 + v125);
  v126 = v220;
  swift_beginAccess();
  *(v1 + v126) = v125;
  v127 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse);
  swift_beginAccess();
  v128 = *v127;
  LOBYTE(v127) = *(v127 + 8);
  v129 = v221;
  swift_beginAccess();
  *v129 = v128;
  *(v129 + 8) = v127;
  v130 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy);
  swift_beginAccess();
  v131 = *v130;
  LOBYTE(v130) = *(v130 + 8);
  v132 = v222;
  swift_beginAccess();
  *v132 = v131;
  *(v132 + 8) = v130;
  v133 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError);
  swift_beginAccess();
  v134 = *v133;
  LOBYTE(v133) = *(v133 + 8);
  v135 = v223;
  swift_beginAccess();
  *v135 = v134;
  *(v135 + 8) = v133;
  v136 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude);
  swift_beginAccess();
  v137 = *v136;
  LOBYTE(v136) = *(v136 + 8);
  v138 = v224;
  swift_beginAccess();
  *v138 = v137;
  *(v138 + 8) = v136;
  v139 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy);
  swift_beginAccess();
  v140 = *v139;
  LOBYTE(v139) = *(v139 + 8);
  v141 = v225;
  swift_beginAccess();
  *v141 = v140;
  *(v141 + 8) = v139;
  v142 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v226;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude);
  swift_beginAccess();
  v145 = *v144;
  LOBYTE(v144) = *(v144 + 8);
  v146 = v227;
  swift_beginAccess();
  *v146 = v145;
  *(v146 + 8) = v144;
  v147 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy);
  swift_beginAccess();
  v148 = *v147;
  LOBYTE(v147) = *(v147 + 8);
  v149 = v228;
  swift_beginAccess();
  *v149 = v148;
  *(v149 + 8) = v147;
  v150 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  v151 = *(a1 + v150);
  v152 = v197;
  swift_beginAccess();
  *(v1 + v152) = v151;

  v153 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  swift_beginAccess();
  LOBYTE(v153) = *(a1 + v153);
  v154 = v231;
  swift_beginAccess();
  *(v1 + v154) = v153;
  v155 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  v156 = v239;
  sub_10000A0A4(a1 + v155, v239, &qword_10041CA50, &qword_100374480);
  v157 = v232;
  swift_beginAccess();
  sub_10000AD64(v156, v1 + v157, &qword_10041CA50, &qword_100374480);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v233;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor);
  swift_beginAccess();
  v161 = *v160;
  LOBYTE(v160) = *(v160 + 8);
  v162 = v234;
  swift_beginAccess();
  *v162 = v161;
  *(v162 + 8) = v160;
  v163 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor);
  swift_beginAccess();
  v164 = *v163;
  LOBYTE(v163) = *(v163 + 8);
  v165 = v217;
  swift_beginAccess();
  *v165 = v164;
  *(v165 + 8) = v163;
  v166 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  swift_beginAccess();
  LOBYTE(v166) = *(a1 + v166);
  v167 = v235;
  swift_beginAccess();
  *(v1 + v167) = v166;
  v168 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  swift_beginAccess();
  LOBYTE(v168) = *(a1 + v168);
  v169 = v236;
  swift_beginAccess();
  *(v1 + v169) = v168;
  v170 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  swift_beginAccess();
  LOBYTE(v170) = *(a1 + v170);
  v171 = v237;
  swift_beginAccess();
  *(v1 + v171) = v170;
  v172 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  swift_beginAccess();
  LOBYTE(v172) = *(a1 + v172);
  v173 = v238;
  swift_beginAccess();
  *(v1 + v173) = v172;
  v174 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  swift_beginAccess();
  LOBYTE(v174) = *(a1 + v174);
  v175 = v229;
  swift_beginAccess();
  *(v1 + v175) = v174;
  v176 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v176);
  v177 = v230;
  swift_beginAccess();
  *(v1 + v177) = a1;
  return v1;
}

uint64_t sub_10017440C(uint64_t a1)
{
  if ((a1 + 1) < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1001745A0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v3 - 8);
  v38 = &v30 - v4;
  *(v1 + 16) = 67306568;
  *(v1 + 20) = 2;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  v31 = (v1 + 32);
  *(v1 + 41) = 1026;
  *(v1 + 48) = 0;
  v32 = (v1 + 41);
  v33 = (v1 + 48);
  *(v1 + 40) = 1;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v34 = (v1 + 64);
  *(v1 + 72) = 1;
  *(v1 + 73) = 1096;
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v35 = (v1 + 73);
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v37 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v7(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v6);
  v8 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v7;
  swift_beginAccess();
  v9 = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v9;
  swift_beginAccess();
  v10 = *(a1 + 18);
  swift_beginAccess();
  *(v1 + 18) = v10;
  swift_beginAccess();
  v11 = *(a1 + 19);
  swift_beginAccess();
  *(v1 + 19) = v11;
  swift_beginAccess();
  v12 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v12;
  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v13;
  *(v1 + 28) = v14;
  swift_beginAccess();
  v15 = *(a1 + 32);
  LOBYTE(v13) = *(a1 + 40);
  v16 = v31;
  swift_beginAccess();
  *v16 = v15;
  *(v1 + 40) = v13;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 41);
  v17 = v32;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 42);
  swift_beginAccess();
  *(v1 + 42) = v16;
  swift_beginAccess();
  v18 = *(a1 + 48);
  LOBYTE(v17) = *(a1 + 56);
  v19 = v33;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 56) = v17;
  swift_beginAccess();
  v20 = *(a1 + 64);
  LOBYTE(v17) = *(a1 + 72);
  v21 = v34;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 72) = v17;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 73);
  v22 = v35;
  swift_beginAccess();
  *v22 = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v20;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v24 = v38;
  sub_10000A0A4(a1 + v23, v38, &qword_10041CA30, &qword_100374460);
  v25 = v36;
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v25, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v26, v24, &qword_10041CA30, &qword_100374460);
  v27 = v37;
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v27, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v28);
  swift_beginAccess();
  *(v1 + v8) = a1;
  return v1;
}

unint64_t sub_100174B7C(unint64_t result)
{
  if (result >= 0x43)
  {
    return 67;
  }

  return result;
}

unint64_t sub_100174BAC(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t sub_100174C3C(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_100174D8C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v3 - 8);
  v5 = &v61 - v4;
  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  v62 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  v63 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  v64 = v13;
  v65 = v14;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  v66 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  v67 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  v68 = v17;
  v69 = v18;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  v71 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  v72 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v5, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v6, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v8 = v24;
  *(v8 + 8) = v23;
  v25 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg);
  swift_beginAccess();
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  swift_beginAccess();
  *v9 = v26;
  *(v9 + 8) = v25;
  v27 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v10 = v28;
  *(v10 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = v62;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  v32 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v63;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v64;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v65;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v66;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v67;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v68;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg);
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = v69;
  swift_beginAccess();
  *v50 = v49;
  *(v50 + 8) = v48;
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v70;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  v56 = v71;
  swift_beginAccess();
  *v56 = v55;
  *(v56 + 8) = v54;
  v57 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM);
  swift_beginAccess();
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  v59 = v72;
  swift_beginAccess();
  *v59 = v58;
  *(v59 + 8) = v57;
  return v1;
}

uint64_t sub_1001754E0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - v4;
  v5 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v5 - 8);
  v50 = &v45 - v6;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v47 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  v49 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  v51 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  v52 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  v53 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  v46 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  v55 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v19 = 0;
  *(v19 + 4) = 1;
  v56 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v20, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v21 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v20) = *v21;
  LOBYTE(v21) = *(v21 + 4);
  swift_beginAccess();
  *v12 = v20;
  *(v12 + 4) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v13) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v24 = v50;
  sub_10000A0A4(a1 + v23, v50, &qword_10041CAD0, &qword_100374500);
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v14, &qword_10041CAD0, &qword_100374500);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v26 = v54;
  sub_10000A0A4(a1 + v25, v54, &qword_10041CAD8, &qword_100374508);
  v27 = v47;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_10041CAD8, &qword_100374508);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v48;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v49;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v51;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v52;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v53;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  LODWORD(v37) = *v38;
  LOBYTE(v38) = *(v38 + 4);
  v39 = v46;
  swift_beginAccess();
  *v39 = v37;
  *(v39 + 4) = v38;
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  LODWORD(v37) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  v41 = v55;
  swift_beginAccess();
  *v41 = v37;
  *(v41 + 4) = v40;
  v42 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v42);
  v43 = v56;
  swift_beginAccess();
  *(v1 + v43) = a1;
  return v1;
}

unint64_t sub_100175B84(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t sub_100175CB4(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_100175E04(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v32 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v12);
  v34 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v12);
  v35 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  v36 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  v37 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  v33 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v15, v8, &qword_10041CB00, &qword_100374530);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v9, &qword_10041CB00, &qword_100374530);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  sub_10000A0A4(a1 + v16, v5, &qword_10041CAF8, &qword_100374528);
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v11, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v5, &qword_10041CAF8, &qword_100374528);
  v18 = v32;
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v18, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v5, &qword_10041CAF8, &qword_100374528);
  v20 = v34;
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v20, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  v22 = v35;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v36;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v37;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v33;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  LODWORD(v27) = *v29;
  LOBYTE(v29) = *(v29 + 4);
  swift_beginAccess();
  *v14 = v27;
  *(v14 + 4) = v29;
  return v1;
}

uint64_t sub_1001765AC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v5 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  __chkstk_darwin(v5 - 8);
  v37 = &v34 - v6;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v11);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v11);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v11);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v36 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v35 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v13, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v14, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v24, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v15, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v26 = v37;
  sub_10000A0A4(a1 + v25, v37, &qword_10041CB68, &qword_100374598);
  v27 = v36;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_10041CB68, &qword_100374598);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v29 = v38;
  sub_10000A0A4(a1 + v28, v38, &qword_10041CA38, &qword_100374468);
  v30 = v35;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0]);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v20 = v32;
  *(v20 + 8) = v31;
  return v1;
}

uint64_t sub_100176B94(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 48) = 1;
  *(v1 + 52) = 0;
  *(v1 + 60) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  *(v1 + 72) = 1;
  *(v1 + 76) = 0;
  *(v1 + 84) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  *(v1 + 96) = 1;
  *(v1 + 100) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 1;
  *(v1 + 116) = 0;
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  *(v1 + 128) = 1;
  *(v1 + 129) = 33686019;
  *(v1 + 133) = 4;
  *(v1 + 136) = 0;
  *(v1 + 140) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v5;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v5;
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 60);
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 60) = v5;
  *(v1 + 64) = v9;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 68);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 68) = v5;
  *(v1 + 72) = v10;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 76);
  v11 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 76) = v5;
  *(v1 + 80) = v11;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 84);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 84) = v5;
  *(v1 + 88) = v12;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 92);
  v13 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 92) = v5;
  *(v1 + 96) = v13;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 100);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 100) = v5;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v5;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 116);
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 116) = v5;
  *(v1 + 120) = v16;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 124);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 124) = v5;
  *(v1 + 128) = v17;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 129);
  swift_beginAccess();
  *(v1 + 129) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 131);
  swift_beginAccess();
  *(v1 + 131) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 133);
  swift_beginAccess();
  *(v1 + 133) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 136);
  LOBYTE(a1) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v5;
  *(v1 + 140) = a1;
  return v1;
}

uint64_t sub_1001770F8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10016F7C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[7];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
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

  v18 = v4[9];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100177264(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = __chkstk_darwin(v7 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = __chkstk_darwin(v12);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v61 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v17 = *(v61 + 28);
  v59 = v12;
  v18 = *(v12 + 48);
  v63 = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  v62 = a2;
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v20 = v4;
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v16;
LABEL_14:
    sub_1000059A8(v21, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v20 = v4;
  v22 = &v16[v18];
  v23 = v58;
  sub_1000112AC(v22, v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v24 = sub_1001853C4(v11, v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = v60;
  v26 = v61;
  v27 = *(v61 + 32);
  v28 = *(v59 + 48);
  sub_10000A0A4(v63 + v27, v60, &qword_10041CA30, &qword_100374460);
  v29 = v62;
  sub_10000A0A4(v62 + v27, v25 + v28, &qword_10041CA30, &qword_100374460);
  v30 = v20;
  if (v19(v25, 1, v20) == 1)
  {
    if (v19((v25 + v28), 1, v20) == 1)
    {
      sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v31 = v57;
  sub_10000A0A4(v25, v57, &qword_10041CA30, &qword_100374460);
  if (v19((v25 + v28), 1, v30) == 1)
  {
    sub_100015F24(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v21 = v25;
    goto LABEL_14;
  }

  v34 = v58;
  sub_1000112AC(v25 + v28, v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v35 = sub_1001853C4(v31, v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v36 = v26[9];
  v37 = v63;
  v38 = (v63 + v36);
  v39 = *(v63 + v36 + 4);
  v40 = (v29 + v36);
  v41 = *(v29 + v36 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_15;
    }
  }

  v42 = v26[10];
  v43 = *(v63 + v42);
  v44 = *(v29 + v42);
  if (v43 == 5)
  {
    if (v44 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v43 != v44)
  {
    goto LABEL_15;
  }

  v45 = v26[11];
  v46 = (v63 + v45);
  v47 = *(v63 + v45 + 4);
  v48 = (v29 + v45);
  v49 = *(v29 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_15;
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
      goto LABEL_15;
    }
  }

  if ((sub_10009C5E0(*v63, *v29) & 1) == 0 || (sub_10009C5E0(v37[1], v29[1]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v50 = v26[12];
  v51 = *(v37 + v50);
  v52 = *(v29 + v50);
  if (v51 == 2)
  {
    if (v52 == 2)
    {
      goto LABEL_41;
    }

LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

  if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_41:
  v53 = v26[13];
  v54 = *(v37 + v53);
  v55 = *(v29 + v53);
  if (v54 == 2)
  {
    if (v55 == 2)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_15;
  }

  v32 = 0;
  if (v55 != 2 && ((v55 ^ v54) & 1) == 0)
  {
    goto LABEL_46;
  }

  return v32 & 1;
}

uint64_t sub_100177904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}