uint64_t sub_100226F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5F0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &unk_10038BAC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100227024(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &unk_10038BA50);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100227090(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &unk_10038BA50);

  return Message.hash(into:)();
}

uint64_t sub_100227134()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434768);
  sub_100005DF0(v0, qword_100434768);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gps_measurements";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_measurements";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "more_ganss_measurements";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_meas_in_cdma_time";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100227490()
{
  type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 9;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v2 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v8 = 0;
  *(v8 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  qword_100461340 = v0;
  return result;
}

uint64_t sub_1002275E4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &qword_100424040, &qword_100383510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements, &qword_100424048, &qword_100383518);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100227698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v9 = swift_allocObject();
    sub_100247F54(v8);

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

      if (result <= 3)
      {
        if (result != 1)
        {
          if (result == 2)
          {
            goto LABEL_20;
          }

          if (result != 3)
          {
            goto LABEL_22;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
          v14 = &unk_100388648;
          v15 = &qword_100424C40;
          goto LABEL_19;
        }

        swift_beginAccess();
        sub_100268B28();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        if (result <= 5)
        {
          v12 = v4;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
            v14 = &unk_10038BA50;
            v15 = &qword_100424FA0;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements;
            v14 = &unk_10038B780;
            v15 = &qword_100424F70;
          }

LABEL_19:
          sub_100256CB4(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_21;
        }

        if (result == 6)
        {
LABEL_20:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_21;
        }

        if (result != 7)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_21:
      swift_endAccess();
LABEL_22:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002279EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100227B98(v9, a1, a2, a3);
  sub_100227DC0(v9, a1, a2, a3);
  sub_100227FE8(v9, a1, a2, a3);
  sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements, 6, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100243294(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100227B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FF8, &qword_1003834C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_100388648);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_100227DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424040, &qword_100383510);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424040, &qword_100383510);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &unk_10038BA50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t sub_100227FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424048, &qword_100383518);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424048, &qword_100383518);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &unk_10038B780);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
}

uint64_t sub_100228210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

BOOL sub_1002282F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin(v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100024A2C(&qword_10042A9A8, &qword_100390CC0);
  __chkstk_darwin(v96);
  v7 = &v90 - v6;
  v8 = sub_100024A2C(&qword_100424048, &qword_100383518);
  v9 = __chkstk_darwin(v8 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v90 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v102 = *(v12 - 8);
  v103 = v12;
  __chkstk_darwin(v12);
  v95 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100024A2C(&qword_10042A900, &qword_100390C18);
  __chkstk_darwin(v101);
  v104 = &v90 - v14;
  v15 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v16 = __chkstk_darwin(v15 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v90 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v108 = *(v19 - 8);
  __chkstk_darwin(v19);
  v100 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  __chkstk_darwin(v21);
  v23 = &v90 - v22;
  v24 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v90 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v33 = *(a1 + 20);
    v92 = a1;
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    v91 = v7;
    v106 = a2;
    v36 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v37 = v92;
    swift_beginAccess();
    sub_10000A0A4(v37 + v36, v29, &qword_100423FF8, &qword_1003834C8);
    v38 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v39 = *(v21 + 48);
    sub_10000A0A4(v29, v23, &qword_100423FF8, &qword_1003834C8);
    v40 = v106 + v38;
    v41 = v106;
    sub_10000A0A4(v40, &v23[v39], &qword_100423FF8, &qword_1003834C8);
    v42 = *(v108 + 48);
    if (v42(v23, 1, v19) == 1)
    {

      sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
      if (v42(&v23[v39], 1, v19) == 1)
      {
        sub_1000059A8(v23, &qword_100423FF8, &qword_1003834C8);
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000A0A4(v23, v27, &qword_100423FF8, &qword_1003834C8);
      if (v42(&v23[v39], 1, v19) != 1)
      {
        v43 = v100;
        sub_1002463C0(&v23[v39], v100, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v37 = v92;

        v44 = sub_1002540CC(v27, v43);
        sub_100246490(v43, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v23, &qword_100423FF8, &qword_1003834C8);
        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v45 = v41;
        v46 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v47 = v107;
        sub_10000A0A4(v37 + v46, v107, &qword_100424040, &qword_100383510);
        v48 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v49 = *(v101 + 48);
        v50 = v104;
        sub_10000A0A4(v47, v104, &qword_100424040, &qword_100383510);
        sub_10000A0A4(v45 + v48, v50 + v49, &qword_100424040, &qword_100383510);
        v51 = v103;
        v52 = *(v102 + 48);
        if (v52(v50, 1, v103) == 1)
        {
          sub_1000059A8(v47, &qword_100424040, &qword_100383510);
          v53 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v53 == 1)
          {
            sub_1000059A8(v50, &qword_100424040, &qword_100383510);
LABEL_29:
            v67 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            swift_beginAccess();
            sub_10000A0A4(v37 + v67, v54, &qword_100424048, &qword_100383518);
            v68 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            v69 = v106;
            swift_beginAccess();
            v70 = *(v96 + 48);
            v71 = v91;
            sub_10000A0A4(v54, v91, &qword_100424048, &qword_100383518);
            v72 = v69 + v68;
            v73 = v71;
            sub_10000A0A4(v72, v71 + v70, &qword_100424048, &qword_100383518);
            v74 = v98;
            v75 = *(v97 + 48);
            if (v75(v71, 1, v98) == 1)
            {
              sub_1000059A8(v54, &qword_100424048, &qword_100383518);
              if (v75(v71 + v70, 1, v74) == 1)
              {
                sub_1000059A8(v71, &qword_100424048, &qword_100383518);
LABEL_36:
                v81 = v37 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                v82 = *v81;
                v83 = *(v81 + 4);
                v84 = v106;
                v85 = v106 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                if (v83)
                {
                  if (*(v85 + 4))
                  {
LABEL_46:
                    v86 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v87 = *(v37 + v86);

                    v88 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v89 = *(v84 + v88);

                    if (v87 != 2)
                    {
                      return v89 != 2 && ((v87 ^ v89) & 1) == 0;
                    }

                    return v89 == 2;
                  }
                }

                else if ((*(v85 + 4) & 1) == 0 && v82 == *v85)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v76 = v71;
              v77 = v94;
              sub_10000A0A4(v76, v94, &qword_100424048, &qword_100383518);
              if (v75(v73 + v70, 1, v74) != 1)
              {
                v78 = v73 + v70;
                v79 = v93;
                sub_1002463C0(v78, v93, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                v80 = sub_10024C7D8(v77, v79);
                sub_100246490(v79, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                sub_1000059A8(v54, &qword_100424048, &qword_100383518);
                sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                sub_1000059A8(v73, &qword_100424048, &qword_100383518);
                if ((v80 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              sub_1000059A8(v54, &qword_100424048, &qword_100383518);
              sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
            }

            v57 = &qword_10042A9A8;
            v58 = &qword_100390CC0;
            v59 = v73;
LABEL_40:
            sub_1000059A8(v59, v57, v58);
            goto LABEL_41;
          }
        }

        else
        {
          v55 = v99;
          sub_10000A0A4(v50, v99, &qword_100424040, &qword_100383510);
          v56 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v56 != 1)
          {
            v60 = v50 + v49;
            v61 = v95;
            sub_1002463C0(v60, v95, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v62 = *(v51 + 20);
            v63 = *(v55 + v62);
            v64 = *(v61 + v62);
            if (v63 != v64)
            {

              v65 = sub_10022648C(v63, v64);

              if (!v65)
              {
                sub_100246490(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                sub_1000059A8(v107, &qword_100424040, &qword_100383510);
                sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v59 = v50;
                v57 = &qword_100424040;
                v58 = &qword_100383510;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
            v66 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_100246490(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v107, &qword_100424040, &qword_100383510);
            sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v50, &qword_100424040, &qword_100383510);
            if ((v66 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          sub_1000059A8(v107, &qword_100424040, &qword_100383510);
          sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v57 = &qword_10042A900;
        v58 = &qword_100390C18;
        v59 = v50;
        goto LABEL_40;
      }

      sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v23, &qword_10042A908, &qword_100390C20);
    goto LABEL_41;
  }

  result = 0;
  if (v31 != 9 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100229124(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5E8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &unk_10038BC30);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002291C4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FB8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &unk_10038BBB8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229230(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424FB8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &unk_10038BBB8);

  return Message.hash(into:)();
}

uint64_t sub_1002292D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434780);
  sub_100005DF0(v0, qword_100434780);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "aid_mask";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "g_week";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "g_toe";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "num_of_sats";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sat_id";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "iode";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "toe_limit";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100229624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_2;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_17;
      }

      if (result == 7)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      if (result == 4)
      {
        goto LABEL_2;
      }

LABEL_17:
      dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    }
  }
}

int *sub_100229760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = result;
  if (*(v3 + result[7] + 4))
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

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[10] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  sub_100210A4C(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100229984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5E0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &unk_10038BD98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100229A24(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &unk_10038BD20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229A90(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &unk_10038BD20);

  return Message.hash(into:)();
}

uint64_t sub_100229B34()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434798);
  sub_100005DF0(v0, qword_100434798);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_to_ids";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delta_t";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100229E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5D8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &unk_10038BF00);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100229EDC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &unk_10038BE88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229F48(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &unk_10038BE88);

  return Message.hash(into:)();
}

uint64_t sub_100229FEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347B0);
  sub_100005DF0(v0, qword_1004347B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "ganss_tod";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "ganss_tod_frac";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "ganss_signal_id";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ganss_data_bit_interval_k";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "ganss_data_bit_no_of_sats";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ganss_sat_id_info";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 6)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

int *sub_10022A41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = result;
  if (*(v3 + result[6] + 4))
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

  if ((*(v3 + v9[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FCE34(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, 5);
  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022A5E8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + a1[10];
  *v11 = 0;
  v11[4] = 1;
  return result;
}

uint64_t sub_10022A6A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5D0, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &unk_10038C068);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022A740(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &unk_10038BFF0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022A7AC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &unk_10038BFF0);

  return Message.hash(into:)();
}

uint64_t sub_10022A850()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347C8);
  sub_100005DF0(v0, qword_1004347C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_sat_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_sat_iod";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022AB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5C8, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &unk_10038C1D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022ABF8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &unk_10038C158);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022AC64(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &unk_10038C158);

  return Message.hash(into:)();
}

uint64_t sub_10022AD08()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347E0);
  sub_100005DF0(v0, qword_1004347E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_week_day";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_toe";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_ttoe_limit";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_sat_related_data_info_array_count";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ganss_sat_related_data_info_array";
  *(v15 + 8) = 33;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
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
          type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
          sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &unk_10038C158);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10022B150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v6 = result;
  if (*(v3 + result[6] + 4))
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

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
    sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &unk_10038C158);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022B340@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t sub_10022B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5C0, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &unk_10038C338);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022B488(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &unk_10038C2C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B4F4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &unk_10038C2C0);

  return Message.hash(into:)();
}

uint64_t sub_10022B598()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347F8);
  sub_100005DF0(v0, qword_1004347F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_orbit_model_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_clock_model_id";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_utc_model_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_almanac_model_id";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
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

int *sub_10022B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + result[5] + 4))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + v7[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + v7[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + v7[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022BB0C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_10022BB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5B8, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &unk_10038C4A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022BC10(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &unk_10038C428);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022BC7C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &unk_10038C428);

  return Message.hash(into:)();
}

uint64_t sub_10022BD20()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434810);
  sub_100005DF0(v0, qword_100434810);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_generic_aid_mask";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_time_model_info_array_count";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_time_model_info_array";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_data_bit_assist";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ganss_nav_model_add_data";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ganss_add_assist_data_choices";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022C070()
{
  type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 7;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = &_swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_100461388 = v0;
  return result;
}

uint64_t sub_10022C1AC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v3 - 8);
  v30 = &v26 - v4;
  v5 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v5 - 8);
  v29 = &v26 - v6;
  v7 = sub_100024A2C(&qword_100424050, &qword_100383520);
  __chkstk_darwin(v7 - 8);
  v27 = &v26 - v8;
  *(v1 + 16) = 7;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v28 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 20);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v13;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v16 = *(a1 + 28);
  LOBYTE(v13) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v16;
  *(v1 + 32) = v13;
  swift_beginAccess();
  v17 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v17;
  v18 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  v19 = v27;
  sub_10000A0A4(a1 + v18, v27, &qword_100424050, &qword_100383520);
  swift_beginAccess();

  sub_10000AD64(v19, v1 + v9, &qword_100424050, &qword_100383520);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  v21 = v29;
  sub_10000A0A4(a1 + v20, v29, &qword_100424058, &qword_100383528);
  swift_beginAccess();
  sub_10000AD64(v21, v1 + v11, &qword_100424058, &qword_100383528);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  v23 = v30;
  sub_10000A0A4(a1 + v22, v30, &qword_100424060, &qword_100383530);

  v24 = v28;
  swift_beginAccess();
  sub_10000AD64(v23, v1 + v24, &qword_100424060, &qword_100383530);
  swift_endAccess();
  return v1;
}

uint64_t sub_10022C640()
{

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist, &qword_100424050, &qword_100383520);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData, &qword_100424058, &qword_100383528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices, &qword_100424060, &qword_100383530);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10022C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v9 = swift_allocObject();
    sub_10022C1AC(v8);
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

      if (result == 1)
      {
        swift_beginAccess();
        sub_100256CFC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_22:
        swift_endAccess();
        goto LABEL_23;
      }

      if (result == 2 || result == 3)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_22;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result == 6)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData;
        v14 = &unk_10038C2C0;
        v15 = &qword_100425028;
      }

      else
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices;
        v14 = &unk_10038C428;
        v15 = &qword_100425040;
      }
    }

    else
    {
      if (result == 4)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
        sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &unk_10038BE88);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_22;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist;
      v14 = &unk_10038BFF0;
      v15 = &qword_100425000;
    }

    sub_100256CB4(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10022CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100256CFC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(*(v9 + 40) + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
    sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &unk_10038BE88);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  sub_10022CCBC(v9, a1, a2, a3);
  sub_10022CEE4(v9, a1, a2, a3);
  sub_10022D10C(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424050, &qword_100383520);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424050, &qword_100383520);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424050, &qword_100383520);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &unk_10038BFF0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
}

uint64_t sub_10022CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424058, &qword_100383528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424058, &qword_100383528);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &unk_10038C2C0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
}

uint64_t sub_10022D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424060, &qword_100383530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424060, &qword_100383530);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &unk_10038C428);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
}

BOOL sub_10022D378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100024A2C(&qword_10042A990, &qword_100390CA8);
  __chkstk_darwin(v85);
  v7 = &v79 - v6;
  v8 = sub_100024A2C(&qword_100424060, &qword_100383530);
  v9 = __chkstk_darwin(v8 - 8);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v79 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v84 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_100024A2C(&qword_10042A998, &qword_100390CB0);
  __chkstk_darwin(v90);
  v93 = &v79 - v14;
  v15 = sub_100024A2C(&qword_100424058, &qword_100383528);
  v16 = __chkstk_darwin(v15 - 8);
  v88 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v96 = &v79 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v97 = *(v19 - 8);
  __chkstk_darwin(v19);
  v89 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100024A2C(&qword_10042A9A0, &qword_100390CB8);
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  v24 = sub_100024A2C(&qword_100424050, &qword_100383520);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = &v79 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }

LABEL_6:
    v82 = v7;
    swift_beginAccess();
    v33 = *(a1 + 20);
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v36 = *(a1 + 28);
    v37 = *(a1 + 32);
    swift_beginAccess();
    v38 = *(a2 + 32);
    if (v37)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v36 != *(a2 + 28))
      {
        v38 = 1;
      }

      if (v38)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v39 = a2;
    v40 = *(a1 + 40);
    swift_beginAccess();
    v41 = *(v39 + 40);

    v81 = v39;

    LOBYTE(v39) = sub_100245934(v40, v41, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    if ((v39 & 1) == 0)
    {
      goto LABEL_34;
    }

    v42 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    sub_10000A0A4(a1 + v42, v29, &qword_100424050, &qword_100383520);
    v43 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    v44 = v81;
    swift_beginAccess();
    v45 = *(v21 + 48);
    sub_10000A0A4(v29, v23, &qword_100424050, &qword_100383520);
    v80 = v45;
    sub_10000A0A4(v44 + v43, &v23[v45], &qword_100424050, &qword_100383520);
    v46 = *(v97 + 48);
    if (v46(v23, 1, v19) == 1)
    {
      sub_1000059A8(v29, &qword_100424050, &qword_100383520);
      v47 = v46(&v23[v80], 1, v19);
      v48 = v44;
      if (v47 == 1)
      {
        sub_1000059A8(v23, &qword_100424050, &qword_100383520);
LABEL_27:
        v55 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v56 = v96;
        sub_10000A0A4(a1 + v55, v96, &qword_100424058, &qword_100383528);
        v57 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v58 = *(v90 + 48);
        v59 = v93;
        sub_10000A0A4(v56, v93, &qword_100424058, &qword_100383528);
        sub_10000A0A4(v48 + v57, v59 + v58, &qword_100424058, &qword_100383528);
        v60 = v92;
        v61 = *(v91 + 48);
        if (v61(v59, 1, v92) == 1)
        {
          sub_1000059A8(v56, &qword_100424058, &qword_100383528);
          v62 = v61(v59 + v58, 1, v60);
          v64 = v94;
          v63 = v95;
          if (v62 == 1)
          {
            sub_1000059A8(v59, &qword_100424058, &qword_100383528);
LABEL_38:
            v71 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            sub_10000A0A4(a1 + v71, v64, &qword_100424060, &qword_100383530);
            v72 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            v73 = *(v85 + 48);
            v74 = v82;
            sub_10000A0A4(v64, v82, &qword_100424060, &qword_100383530);
            sub_10000A0A4(v48 + v72, v74 + v73, &qword_100424060, &qword_100383530);
            v75 = v87;
            v76 = *(v86 + 48);
            if (v76(v74, 1, v87) == 1)
            {

              sub_1000059A8(v64, &qword_100424060, &qword_100383530);
              if (v76(v74 + v73, 1, v75) == 1)
              {
                sub_1000059A8(v74, &qword_100424060, &qword_100383530);
                return 1;
              }

              goto LABEL_43;
            }

            sub_10000A0A4(v74, v63, &qword_100424060, &qword_100383530);
            if (v76(v74 + v73, 1, v75) == 1)
            {

              sub_1000059A8(v64, &qword_100424060, &qword_100383530);
              sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
LABEL_43:
              sub_1000059A8(v74, &qword_10042A990, &qword_100390CA8);
              return 0;
            }

            v77 = v83;
            sub_1002463C0(v74 + v73, v83, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            v78 = sub_10024AC20(v63, v77, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

            sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            sub_1000059A8(v64, &qword_100424060, &qword_100383530);
            sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            sub_1000059A8(v74, &qword_100424060, &qword_100383530);
            return (v78 & 1) != 0;
          }

          goto LABEL_32;
        }

        v65 = v88;
        sub_10000A0A4(v59, v88, &qword_100424058, &qword_100383528);
        v66 = v61(v59 + v58, 1, v60);
        v67 = v94;
        v68 = v95;
        if (v66 == 1)
        {
          sub_1000059A8(v96, &qword_100424058, &qword_100383528);
          sub_100246490(v65, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
LABEL_32:
          v50 = &qword_10042A998;
          v51 = &qword_100390CB0;
          v52 = v59;
          goto LABEL_33;
        }

        v69 = v59 + v58;
        v70 = v84;
        sub_1002463C0(v69, v84, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        LODWORD(v97) = sub_10024B40C(v65, v70);
        sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        sub_1000059A8(v96, &qword_100424058, &qword_100383528);
        sub_100246490(v65, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        sub_1000059A8(v59, &qword_100424058, &qword_100383528);
        v63 = v68;
        v64 = v67;
        if (v97)
        {
          goto LABEL_38;
        }

LABEL_34:

        return 0;
      }
    }

    else
    {
      sub_10000A0A4(v23, v27, &qword_100424050, &qword_100383520);
      v49 = v80;
      if (v46(&v23[v80], 1, v19) != 1)
      {
        v53 = &v23[v49];
        v54 = v89;
        sub_1002463C0(v53, v89, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        LODWORD(v97) = sub_10024BA80(v27, v54);
        sub_100246490(v54, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        sub_1000059A8(v29, &qword_100424050, &qword_100383520);
        sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        v48 = v44;
        sub_1000059A8(v23, &qword_100424050, &qword_100383520);
        if ((v97 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      sub_1000059A8(v29, &qword_100424050, &qword_100383520);
      sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    }

    v50 = &qword_10042A9A0;
    v51 = &qword_100390CB8;
    v52 = v23;
LABEL_33:
    sub_1000059A8(v52, v50, v51);
    goto LABEL_34;
  }

  result = 0;
  if (v31 != 7 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10022E0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5B0, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &unk_10038C608);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022E18C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &unk_10038C590);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022E1F8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &unk_10038C590);

  return Message.hash(into:)();
}

uint64_t sub_10022E29C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434828);
  sub_100005DF0(v0, qword_100434828);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_common_aid_mask";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_time_req_pref_info_array_count";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_time_req_pref_info_array";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "glonass_not_of_leap_sec_requested";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_add_ionos_model";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ganss_aid_data_req_array_count";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ganss_aid_data_req_array";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_100256CFC();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
          sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &unk_10038C590);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10022E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = result;
  if (*(v3 + result[7] + 4))
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

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    sub_100256CFC();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[10] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100210A4C(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, 6);
  if (*(v3[1] + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
    sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &unk_10038C590);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022EA20@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[8];
  v6 = a2 + a1[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + a1[11];
  *v11 = 0;
  v11[4] = 1;
  return result;
}

uint64_t sub_10022EAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5A8, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &unk_10038C770);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022EB78(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &unk_10038C6F8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022EBE4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &unk_10038C6F8);

  return Message.hash(into:)();
}

uint64_t sub_10022EC8C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434840);
  sub_100005DF0(v0, qword_100434840);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "assistance_request";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ganss_assistance_request";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022EF74()
{
  type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 9;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v2 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_1004613A8 = v0;
  return result;
}

uint64_t sub_10022F09C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v3 - 8);
  v25 = &v25 - v4;
  v5 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v12 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  v18 = *(a1 + 20);
  v19 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v18;
  *(v1 + 24) = v19;
  v20 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v20, v10, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v11, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v7, &qword_100424068, &qword_100383538);
  swift_beginAccess();
  sub_10000AD64(v7, v1 + v13, &qword_100424068, &qword_100383538);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  v23 = v25;
  sub_10000A0A4(a1 + v22, v25, &qword_100424070, &qword_100383540);

  swift_beginAccess();
  sub_10000AD64(v23, v1 + v15, &qword_100424070, &qword_100383540);
  swift_endAccess();
  return v1;
}

uint64_t sub_10022F490()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest, &qword_100424068, &qword_100383538);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest, &qword_100424070, &qword_100383540);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10022F544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v9 = swift_allocObject();
    sub_10022F09C(v8);
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

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          sub_100268B28();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_8;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v14 = &unk_100388648;
            v15 = &qword_100424C40;
LABEL_7:
            sub_100256CB4(v15, v13, v14);
            v4 = v12;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 4:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest;
            v14 = &unk_10038BD20;
            v15 = &qword_100424FD0;
            goto LABEL_7;
          case 5:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest;
            v14 = &unk_10038C6F8;
            v15 = &qword_100425068;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022F818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10022F96C(v9, a1, a2, a3);
  sub_10022FB94(v9, a1, a2, a3);
  sub_10022FDBC(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FF8, &qword_1003834C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_100388648);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_10022FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424068, &qword_100383538);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424068, &qword_100383538);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &unk_10038BD20);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
}

uint64_t sub_10022FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424070, &qword_100383540);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424070, &qword_100383540);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &unk_10038C6F8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
}

BOOL sub_100230028(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v84 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_100024A2C(&qword_10042A980, &qword_100390C98);
  __chkstk_darwin(v75);
  v6 = &v68 - v5;
  v7 = sub_100024A2C(&qword_100424070, &qword_100383540);
  v8 = __chkstk_darwin(v7 - 8);
  v83 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v82 = &v68 - v10;
  v80 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_100024A2C(&qword_10042A988, &qword_100390CA0);
  __chkstk_darwin(v78);
  v81 = &v68 - v12;
  v13 = sub_100024A2C(&qword_100424068, &qword_100383538);
  v14 = __chkstk_darwin(v13 - 8);
  v77 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v85 = &v68 - v16;
  v17 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v86 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v23 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v68 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  v30 = *(a2 + 16);
  if (v29 == 9)
  {
    if (v30 != 9)
    {
      return 0;
    }

LABEL_6:
    v70 = v6;
    swift_beginAccess();
    v32 = *(a1 + 20);
    v72 = a1;
    v33 = *(a1 + 24);
    swift_beginAccess();
    v34 = *(a2 + 24);
    if (v33)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v32 != *(a2 + 20))
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    v69 = v19;
    v71 = a2;
    v35 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v36 = v72;
    swift_beginAccess();
    sub_10000A0A4(v36 + v35, v28, &qword_100423FF8, &qword_1003834C8);
    v37 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v38 = v71;
    swift_beginAccess();
    v39 = *(v20 + 48);
    sub_10000A0A4(v28, v22, &qword_100423FF8, &qword_1003834C8);
    sub_10000A0A4(v38 + v37, &v22[v39], &qword_100423FF8, &qword_1003834C8);
    v40 = *(v86 + 48);
    if (v40(v22, 1, v17) == 1)
    {

      sub_1000059A8(v28, &qword_100423FF8, &qword_1003834C8);
      if (v40(&v22[v39], 1, v17) == 1)
      {
        sub_1000059A8(v22, &qword_100423FF8, &qword_1003834C8);
LABEL_19:
        v44 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v45 = v85;
        sub_10000A0A4(v36 + v44, v85, &qword_100424068, &qword_100383538);
        v46 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v47 = *(v78 + 48);
        v48 = v81;
        sub_10000A0A4(v45, v81, &qword_100424068, &qword_100383538);
        sub_10000A0A4(v71 + v46, v48 + v47, &qword_100424068, &qword_100383538);
        v49 = *(v79 + 48);
        v50 = v80;
        if (v49(v48, 1, v80) == 1)
        {
          sub_1000059A8(v45, &qword_100424068, &qword_100383538);
          v51 = v49(v48 + v47, 1, v50);
          v52 = v84;
          v53 = v83;
          v54 = v82;
          if (v51 == 1)
          {
            sub_1000059A8(v48, &qword_100424068, &qword_100383538);
LABEL_30:
            v60 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            sub_10000A0A4(v36 + v60, v54, &qword_100424070, &qword_100383540);
            v61 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            v62 = *(v75 + 48);
            v63 = v70;
            sub_10000A0A4(v54, v70, &qword_100424070, &qword_100383540);
            sub_10000A0A4(v71 + v61, v63 + v62, &qword_100424070, &qword_100383540);
            v64 = *(v52 + 48);
            v65 = v76;
            if (v64(v63, 1, v76) == 1)
            {

              sub_1000059A8(v54, &qword_100424070, &qword_100383540);
              if (v64(v63 + v62, 1, v65) == 1)
              {
                sub_1000059A8(v63, &qword_100424070, &qword_100383540);
                return 1;
              }

              goto LABEL_35;
            }

            sub_10000A0A4(v63, v53, &qword_100424070, &qword_100383540);
            if (v64(v63 + v62, 1, v65) == 1)
            {

              sub_1000059A8(v54, &qword_100424070, &qword_100383540);
              sub_100246490(v53, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
LABEL_35:
              sub_1000059A8(v63, &qword_10042A980, &qword_100390C98);
              return 0;
            }

            v66 = v73;
            sub_1002463C0(v63 + v62, v73, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            v67 = sub_10024A28C(v53, v66);

            sub_100246490(v66, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            sub_1000059A8(v54, &qword_100424070, &qword_100383540);
            sub_100246490(v53, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            sub_1000059A8(v63, &qword_100424070, &qword_100383540);
            return (v67 & 1) != 0;
          }
        }

        else
        {
          v55 = v77;
          sub_10000A0A4(v48, v77, &qword_100424068, &qword_100383538);
          v56 = v49(v48 + v47, 1, v50);
          v52 = v84;
          v57 = v83;
          v54 = v82;
          if (v56 != 1)
          {
            v58 = v48 + v47;
            v59 = v74;
            sub_1002463C0(v58, v74, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            LODWORD(v86) = sub_10024B244(v55, v59);
            sub_100246490(v59, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            sub_1000059A8(v85, &qword_100424068, &qword_100383538);
            sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            v36 = v72;
            sub_1000059A8(v48, &qword_100424068, &qword_100383538);
            v53 = v57;
            if (v86)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          sub_1000059A8(v85, &qword_100424068, &qword_100383538);
          sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
        }

        sub_1000059A8(v48, &qword_10042A988, &qword_100390CA0);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      sub_10000A0A4(v22, v26, &qword_100423FF8, &qword_1003834C8);
      if (v40(&v22[v39], 1, v17) != 1)
      {
        v41 = v69;
        sub_1002463C0(&v22[v39], v69, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v42 = v72;

        v43 = sub_1002540CC(v26, v41);
        sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v28, &qword_100423FF8, &qword_1003834C8);
        v36 = v42;
        sub_100246490(v26, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v22, &qword_100423FF8, &qword_1003834C8);
        if ((v43 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      sub_1000059A8(v28, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v26, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v22, &qword_10042A908, &qword_100390C20);

LABEL_26:

    return 0;
  }

  result = 0;
  if (v30 != 9 && v29 == v30)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100230DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5A0, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &unk_10038C8D8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100230E5C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425080, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &unk_10038C860);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100230EC8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425080, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &unk_10038C860);

  return Message.hash(into:)();
}

uint64_t sub_100230F6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434858);
  sub_100005DF0(v0, qword_100434858);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "no_of_cells";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eutran_cell_info";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_100389728);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  if (*(v3 + *(result + 24) + 4))
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

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
    sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_100389728);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002313F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_100231478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A598, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &unk_10038CA40);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100231518(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425098, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &unk_10038C9C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100231584(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425098, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &unk_10038C9C8);

  return Message.hash(into:)();
}

uint64_t sub_100231628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434870);
  sub_100005DF0(v0, qword_100434870);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bsic";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_slot";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bit_number";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bcch_carrier";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ref_frame";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timing_advance";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "obit_number";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100231984(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100231ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100231CC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_100231D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A590, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &unk_10038CBA8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100231E28(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250B0, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &unk_10038CB30);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100231E94(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004250B0, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &unk_10038CB30);

  return Message.hash(into:)();
}

uint64_t sub_100231F38()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434888);
  sub_100005DF0(v0, qword_100434888);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int_part";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frac_part";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100232240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A588, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &unk_10038CD10);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002322E0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &unk_10038CC98);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023234C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &unk_10038CC98);

  return Message.hash(into:)();
}

uint64_t sub_1002323F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348A0);
  sub_100005DF0(v0, qword_1004348A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "physical_cell_id";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "earfcn";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "sfnk";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A580, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &unk_10038CE78);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002327CC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &unk_10038CE00);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100232838(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &unk_10038CE00);

  return Message.hash(into:)();
}

uint64_t sub_1002328E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348B8);
  sub_100005DF0(v0, qword_1004348B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cdma_tow";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "week_num";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "absolute_rms_acc";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100232B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
        sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &unk_10038CC98);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100232C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100232D64(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
    {
      v7 = v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      v6 = v7;
    }

    if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100232D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424078, &qword_100383548);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100424078, &qword_100383548);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424078, &qword_100383548);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &unk_10038CC98);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
}

uint64_t sub_100232FCC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_100233090(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A578, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &unk_10038CFE0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100233130(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &unk_10038CF68);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023319C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &unk_10038CF68);

  return Message.hash(into:)();
}

uint64_t sub_100233240()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348D0);
  sub_100005DF0(v0, qword_1004348D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "eutran_time";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdma_time";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100233450(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime;
        v8 = &unk_10038CF68;
        v9 = &qword_1004250F8;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
    type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime;
    v8 = &unk_10038CE00;
    v9 = &qword_1004250E0;
LABEL_5:
    sub_100256CB4(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1002335DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424080, &qword_100383550);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100424080, &qword_100383550);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424080, &qword_100383550);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &unk_10038CE00);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
}

uint64_t sub_1002337F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424088, &qword_100383558);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100424088, &qword_100383558);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424088, &qword_100383558);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &unk_10038CF68);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
}

uint64_t sub_100233A8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_100233B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A570, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D148);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100233C20(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100233C8C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);

  return Message.hash(into:)();
}

uint64_t sub_100233D30()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348E8);
  sub_100005DF0(v0, qword_1004348E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cell_time_assistance_type";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cell_time_data";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100233F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002340D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  result = a4(0);
  if (*(v11 + *(result + 20)) == 6)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    a5();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v8)
    {
      return result;
    }
  }

  a7(v11, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002341B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100424090, &qword_100383560);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424090, &qword_100383560);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t sub_100234454(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A568, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &unk_10038D2B0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002344F4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &unk_10038D238);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100234560(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &unk_10038D238);

  return Message.hash(into:)();
}

uint64_t sub_100234608()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434900);
  sub_100005DF0(v0, qword_100434900);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tlm_msg";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sat_id";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "anti_spoof";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "alert";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tlm_reserved";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002348E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_10:
          type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1002349F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100234B8C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100234C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A560, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &unk_10038D418);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100234CD0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &unk_10038D3A0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100234D3C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &unk_10038D3A0);

  return Message.hash(into:)();
}

uint64_t sub_100234DE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434918);
  sub_100005DF0(v0, qword_100434918);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "gps_tow";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_week";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nr_of_sats";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tow_assist";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gps_week_cycle_number";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "session_protocol";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "pos_protocol";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "session_id";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002351B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result > 2 || result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_4;
        }

        type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
        sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &unk_10038D3A0);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
            sub_100268A80();
LABEL_23:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
            sub_100268A2C();
            goto LABEL_23;
          case 9:
            goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1002353EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = result;
  if (*(v3 + result[6] + 4))
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

  if ((*(v3 + v9[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
    sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &unk_10038D3A0);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  sub_1001FCE34(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, 6);
  sub_100235660(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, sub_100268A80, &type metadata for Proto_Gnss_Emergency_SessionProtocol);
  sub_100235704(v3, a1, a2, a3);
  sub_100210AD0(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100235660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 6)
  {
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100235704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  if (*(a1 + *(result + 48)) != 7)
  {
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002357DC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[4] = 1;
  *(a2 + v11) = 6;
  v13 = a1[13];
  *(a2 + a1[12]) = 7;
  v14 = a2 + v13;
  *v14 = 0;
  v14[4] = 1;
  return result;
}

uint64_t sub_1002358B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A558, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &unk_10038D580);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100235954(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &unk_10038D508);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002359C0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &unk_10038D508);

  return Message.hash(into:)();
}

uint64_t sub_100235A64()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434930);
  sub_100005DF0(v0, qword_100434930);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "shape_type";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hemisphere";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "altitude";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "latitude";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "longitude";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "direction_of_alt";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "semi_major_uncert";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "semi_minor_uncert";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "major_axis";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "alt_uncert";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "confidence";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "session_protocol";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "pos_protocol";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "session_id";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100235F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 14:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 12:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          sub_100268A80();
          goto LABEL_11;
        case 13:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          sub_100268A2C();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100236170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, 7);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002364D8(v5, a1, a2, a3);
  sub_10023CA1C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, sub_100268A2C, &type metadata for Proto_Gnss_Emergency_PosProtocol);
  sub_100236564(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 60) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002364D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if (*(a1 + *(result + 64)) != 6)
  {
    sub_100268A80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100236564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if ((*(a1 + *(result + 72) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A550, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &unk_10038D6E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002366FC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &unk_10038D670);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100236768(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &unk_10038D670);

  return Message.hash(into:)();
}

uint64_t sub_10023680C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434948);
  sub_100005DF0(v0, qword_100434948);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_100383390;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v5 = "ephem_af0";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ephem_m0";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ephem_e";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ephem_apower_half";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ephem_omega_a0";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "ephem_i0";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ephem_w";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ephem_omega_dot";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "ephem_iodc";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ephem_toc";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "ephem_af1";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "ephem_crs";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "ephem_delta_n";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "ephem_cuc";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "ephem_cus";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "toe";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "ephem_cic";
  *(v37 + 8) = 9;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "ephem_cis";
  *(v39 + 1) = 9;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "ephem_crc";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "ephem_idot";
  *(v43 + 1) = 10;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "sat_id";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "ephem_ura";
  *(v47 + 1) = 9;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "ephem_sv_health";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "ephem_af2";
  *(v51 + 1) = 9;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "sat_status";
  *(v53 + 1) = 10;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "ephem_code_on_l2";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "ephem_l2_pflag";
  *(v57 + 1) = 14;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "ephem_tgd";
  *(v59 + 1) = 9;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "ephem_fit_flag";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "ephem_aodo";
  *(v63 + 1) = 10;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "reserved1";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "reserved2";
  *(v67 + 1) = 9;
  v67[16] = 2;
  v8();
  v68 = v4 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "reserved3";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  v69 = (v4 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "reserved4";
  *(v70 + 1) = 9;
  v70[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002371E0()
{
  type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = 0;
  *(result + 44) = 1;
  *(result + 48) = 0;
  *(result + 52) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  *(result + 80) = 0;
  *(result + 84) = 1;
  *(result + 88) = 0;
  *(result + 92) = 1;
  *(result + 96) = 0;
  *(result + 100) = 1;
  *(result + 104) = 0;
  *(result + 108) = 1;
  *(result + 112) = 0;
  *(result + 116) = 1;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  *(result + 136) = 0;
  *(result + 140) = 1;
  *(result + 144) = 0;
  *(result + 148) = 1;
  *(result + 152) = 0;
  *(result + 156) = 1;
  *(result + 160) = 0;
  *(result + 164) = 1;
  *(result + 168) = 0;
  *(result + 172) = 1;
  *(result + 176) = 0;
  *(result + 180) = 1;
  *(result + 184) = 0;
  *(result + 188) = 1;
  *(result + 192) = 0;
  *(result + 196) = 1;
  *(result + 200) = 0;
  *(result + 204) = 1;
  *(result + 208) = 0;
  *(result + 212) = 1;
  *(result + 216) = 0;
  *(result + 220) = 1;
  *(result + 224) = 0;
  *(result + 228) = 1;
  *(result + 232) = 0;
  *(result + 236) = 1;
  *(result + 240) = 0;
  *(result + 244) = 1;
  *(result + 248) = 0;
  *(result + 252) = 1;
  *(result + 256) = 0;
  *(result + 260) = 1;
  *(result + 264) = 0;
  *(result + 268) = 1;
  *(result + 272) = 0;
  *(result + 276) = 1;
  *(result + 280) = 0;
  *(result + 284) = 1;
  qword_100461410 = result;
  return result;
}

uint64_t sub_100237330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v9 = swift_allocObject();
    sub_1002486DC(v8);

    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 24:
      case 28:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_8;
      case 3:
      case 4:
      case 9:
      case 10:
      case 16:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_8:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10023780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  result = swift_beginAccess();
  if (v9[20])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[36] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[44] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100237D10(v9, a1, a2, a3);
  sub_100237D94(v9, a1, a2, a3, 6, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237E30(v9, a1, a2, a3, 7, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237ECC(v9, a1, a2, a3, 8, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237F68(v9, a1, a2, a3, 9);
  sub_100237FF4(v9, a1, a2, a3, 10);
  sub_100238080(v9, a1, a2, a3, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_10023811C(v9, a1, a2, a3, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1002381B8(v9, a1, a2, a3, 13, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100238254(v9, a1, a2, a3, 14, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1002382F0(v9, a1, a2, a3, 15, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_10023838C(v9, a1, a2, a3);
  sub_100238410(v9, a1, a2, a3);
  sub_100238494(v9, a1, a2, a3);
  sub_100238518(v9, a1, a2, a3);
  sub_10023859C(v9, a1, a2, a3);
  sub_100238620(v9, a1, a2, a3);
  sub_1002386A4(v9, a1, a2, a3);
  sub_100238728(v9, a1, a2, a3);
  sub_1002387AC(v9, a1, a2, a3);
  sub_100238830(v9, a1, a2, a3);
  sub_1002388B4(v9, a1, a2, a3);
  sub_100238938(v9, a1, a2, a3);
  sub_1002389BC(v9, a1, a2, a3);
  sub_100238A40(v9, a1, a2, a3);
  sub_100238AC4(v9, a1, a2, a3);
  sub_100238B48(v9, a1, a2, a3);
  sub_100238BD0(v9, a1, a2, a3);
  sub_100238C58(v9, a1, a2, a3);
  sub_100238CE0(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100237D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 52) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100237D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    return a6(*(a1 + 56), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 68) & 1) == 0)
  {
    return a6(*(a1 + 64), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 76) & 1) == 0)
  {
    return a6(*(a1 + 72), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100237FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 100) & 1) == 0)
  {
    return a6(*(a1 + 96), a5, a3, a4);
  }

  return result;
}

uint64_t sub_10023811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 108) & 1) == 0)
  {
    return a6(*(a1 + 104), a5, a3, a4);
  }

  return result;
}

uint64_t sub_1002381B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 116) & 1) == 0)
  {
    return a6(*(a1 + 112), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100238254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 124) & 1) == 0)
  {
    return a6(*(a1 + 120), a5, a3, a4);
  }

  return result;
}

uint64_t sub_1002382F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 132) & 1) == 0)
  {
    return a6(*(a1 + 128), a5, a3, a4);
  }

  return result;
}

uint64_t sub_10023838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 148) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 156) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 164) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 172) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 180) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002386A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 188) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 196) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002387AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 204) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 212) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002388B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 220) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 228) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002389BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 236) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 244) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 252) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 260) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 268) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 276) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 284) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)) && (a4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100238E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
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
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 24))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  swift_beginAccess();
  v12 = *(a2 + 36);
  if (v11)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  v14 = *(a1 + 44);
  swift_beginAccess();
  v15 = *(a2 + 44);
  if (v14)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 40))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  swift_beginAccess();
  v18 = *(a2 + 52);
  if (v17)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 48))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = *(a1 + 60);
  swift_beginAccess();
  v21 = *(a2 + 60);
  if (v20)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 56))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 64);
  v23 = *(a1 + 68);
  swift_beginAccess();
  v24 = *(a2 + 68);
  if (v23)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 64))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 76);
  swift_beginAccess();
  v27 = *(a2 + 76);
  if (v26)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 72))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = *(a1 + 84);
  swift_beginAccess();
  v30 = *(a2 + 84);
  if (v29)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 80))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = *(a1 + 92);
  swift_beginAccess();
  v33 = *(a2 + 92);
  if (v32)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 88))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 100);
  swift_beginAccess();
  v36 = *(a2 + 100);
  if (v35)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 96))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 104);
  v38 = *(a1 + 108);
  swift_beginAccess();
  v39 = *(a2 + 108);
  if (v38)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 104))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 112);
  v41 = *(a1 + 116);
  swift_beginAccess();
  v42 = *(a2 + 116);
  if (v41)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 112))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 120);
  v44 = *(a1 + 124);
  swift_beginAccess();
  v45 = *(a2 + 124);
  if (v44)
  {
    if (!*(a2 + 124))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 120))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 128);
  v47 = *(a1 + 132);
  swift_beginAccess();
  v48 = *(a2 + 132);
  if (v47)
  {
    if (!*(a2 + 132))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 128))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 140);
  swift_beginAccess();
  v51 = *(a2 + 140);
  if (v50)
  {
    if (!*(a2 + 140))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(a2 + 136))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 144);
  v53 = *(a1 + 148);
  swift_beginAccess();
  v54 = *(a2 + 148);
  if (v53)
  {
    if (!*(a2 + 148))
    {
      return 0;
    }
  }

  else
  {
    if (v52 != *(a2 + 144))
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 152);
  v56 = *(a1 + 156);
  swift_beginAccess();
  v57 = *(a2 + 156);
  if (v56)
  {
    if (!*(a2 + 156))
    {
      return 0;
    }
  }

  else
  {
    if (v55 != *(a2 + 152))
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v58 = *(a1 + 160);
  v59 = *(a1 + 164);
  swift_beginAccess();
  v60 = *(a2 + 164);
  if (v59)
  {
    if (!*(a2 + 164))
    {
      return 0;
    }
  }

  else
  {
    if (v58 != *(a2 + 160))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v61 = *(a1 + 168);
  v62 = *(a1 + 172);
  swift_beginAccess();
  v63 = *(a2 + 172);
  if (v62)
  {
    if (!*(a2 + 172))
    {
      return 0;
    }
  }

  else
  {
    if (v61 != *(a2 + 168))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v64 = *(a1 + 176);
  v65 = *(a1 + 180);
  swift_beginAccess();
  v66 = *(a2 + 180);
  if (v65)
  {
    if (!*(a2 + 180))
    {
      return 0;
    }
  }

  else
  {
    if (v64 != *(a2 + 176))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v67 = *(a1 + 184);
  v68 = *(a1 + 188);
  swift_beginAccess();
  v69 = *(a2 + 188);
  if (v68)
  {
    if (!*(a2 + 188))
    {
      return 0;
    }
  }

  else
  {
    if (v67 != *(a2 + 184))
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v70 = *(a1 + 192);
  v71 = *(a1 + 196);
  swift_beginAccess();
  v72 = *(a2 + 196);
  if (v71)
  {
    if (!*(a2 + 196))
    {
      return 0;
    }
  }

  else
  {
    if (v70 != *(a2 + 192))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 200);
  v74 = *(a1 + 204);
  swift_beginAccess();
  v75 = *(a2 + 204);
  if (v74)
  {
    if (!*(a2 + 204))
    {
      return 0;
    }
  }

  else
  {
    if (v73 != *(a2 + 200))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 208);
  v77 = *(a1 + 212);
  swift_beginAccess();
  v78 = *(a2 + 212);
  if (v77)
  {
    if (!*(a2 + 212))
    {
      return 0;
    }
  }

  else
  {
    if (v76 != *(a2 + 208))
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 216);
  v80 = *(a1 + 220);
  swift_beginAccess();
  v81 = *(a2 + 220);
  if (v80)
  {
    if (!*(a2 + 220))
    {
      return 0;
    }
  }

  else
  {
    if (v79 != *(a2 + 216))
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v82 = *(a1 + 224);
  v83 = *(a1 + 228);
  swift_beginAccess();
  v84 = *(a2 + 228);
  if (v83)
  {
    if (!*(a2 + 228))
    {
      return 0;
    }
  }

  else
  {
    if (v82 != *(a2 + 224))
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v85 = *(a1 + 232);
  v86 = *(a1 + 236);
  swift_beginAccess();
  v87 = *(a2 + 236);
  if (v86)
  {
    if (!*(a2 + 236))
    {
      return 0;
    }
  }

  else
  {
    if (v85 != *(a2 + 232))
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v88 = *(a1 + 240);
  v89 = *(a1 + 244);
  swift_beginAccess();
  v90 = *(a2 + 244);
  if (v89)
  {
    if (!*(a2 + 244))
    {
      return 0;
    }
  }

  else
  {
    if (v88 != *(a2 + 240))
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v91 = *(a1 + 248);
  v92 = *(a1 + 252);
  swift_beginAccess();
  v93 = *(a2 + 252);
  if (v92)
  {
    if (!*(a2 + 252))
    {
      return 0;
    }
  }

  else
  {
    if (v91 != *(a2 + 248))
    {
      v93 = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v94 = *(a1 + 256);
  v95 = *(a1 + 260);
  swift_beginAccess();
  v96 = *(a2 + 260);
  if (v95)
  {
    if (!*(a2 + 260))
    {
      return 0;
    }
  }

  else
  {
    if (v94 != *(a2 + 256))
    {
      v96 = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v97 = *(a1 + 264);
  v98 = *(a1 + 268);
  swift_beginAccess();
  v99 = *(a2 + 268);
  if (v98)
  {
    if (!*(a2 + 268))
    {
      return 0;
    }
  }

  else
  {
    if (v97 != *(a2 + 264))
    {
      v99 = 1;
    }

    if (v99)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v100 = *(a1 + 272);
  v101 = *(a1 + 276);
  swift_beginAccess();
  v102 = *(a2 + 276);
  if (v101)
  {
    if (*(a2 + 276))
    {
      goto LABEL_199;
    }

    return 0;
  }

  if (v100 != *(a2 + 272))
  {
    v102 = 1;
  }

  if (v102)
  {
    return 0;
  }

LABEL_199:
  swift_beginAccess();
  v103 = *(a1 + 280);
  v104 = *(a1 + 284);
  swift_beginAccess();
  v105 = *(a2 + 284);
  if (v104)
  {
    if (!*(a2 + 284))
    {
      return 0;
    }
  }

  else
  {
    if (v103 != *(a2 + 280))
    {
      v105 = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002399E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A548, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &unk_10038D850);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100239A84(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &unk_10038D7D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100239AF0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &unk_10038D7D8);

  return Message.hash(into:)();
}

uint64_t sub_100239B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) && (a5() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100239C5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434960);
  sub_100005DF0(v0, qword_100434960);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "nr_of_sats";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ephemeris";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_protocol";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pos_protocol";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "session_id";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100239F40(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_17;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
          sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &unk_10038D7D8);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            sub_100268A80();
LABEL_5:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            sub_100268A2C();
            goto LABEL_5;
          case 5:
LABEL_17:
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10023A0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v6 = result;
  if (*(v3 + result[6] + 4))
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

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
    sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &unk_10038D7D8);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 6)
  {
    sub_100268A80();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 7)
  {
    sub_100268A2C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + v6[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023A330@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  *(a2 + v5) = 6;
  v7 = a1[9];
  *(a2 + a1[8]) = 7;
  v8 = a2 + v7;
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t sub_10023A3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A540, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &unk_10038D9B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023A470(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &unk_10038D940);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023A4DC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &unk_10038D940);

  return Message.hash(into:)();
}

uint64_t sub_10023A5E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_10023A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023A780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A538, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &unk_10038DB20);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023A820(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &unk_10038DAA8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023A88C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &unk_10038DAA8);

  return Message.hash(into:)();
}

uint64_t sub_10023A930()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434990);
  sub_100005DF0(v0, qword_100434990);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdma_context";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023AB48(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
        type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext;
        v8 = &unk_10038EE58;
        v9 = &qword_1004252F0;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
    type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration;
    v8 = &unk_100386A28;
    v9 = &qword_100424A80;
LABEL_5:
    sub_100256CB4(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10023ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10023AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F10, &qword_1003833E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F10, &qword_1003833E0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration, &unk_100386A28);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t sub_10023AF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424098, &qword_100383568);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100424098, &qword_100383568);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424098, &qword_100383568);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &unk_10038EE58);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
}

uint64_t sub_10023B21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A530, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &unk_10038DC88);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023B2BC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &unk_10038DC10);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023B328(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &unk_10038DC10);

  return Message.hash(into:)();
}

uint64_t sub_10023B3CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349A8);
  sub_100005DF0(v0, qword_1004349A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "helo_enabled";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imsi";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cplane_config";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supl_config";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023B664(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
          type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig;
          v8 = &unk_10038DAA8;
          v9 = &qword_1004251A8;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig;
          v8 = &unk_100386CF8;
          v9 = &qword_100424AB0;
        }

        sub_100256CB4(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
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

  if (*(v5 + *(v10 + 24) + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  sub_10023B910(v5, a1, a2, a3);
  sub_10023BB2C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_1004240A0, &qword_100383570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240A0, &qword_100383570);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &unk_10038DAA8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
}

uint64_t sub_10023BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_1004240A8, &qword_100383578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240A8, &qword_100383578);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_100256CB4(&qword_100424AB0, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &unk_100386CF8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
}

uint64_t sub_10023BD94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[7];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_10023BE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A528, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &unk_10038DDF0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023BF3C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &unk_10038DD78);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023BFA8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &unk_10038DD78);

  return Message.hash(into:)();
}

uint64_t sub_10023C04C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349C0);
  sub_100005DF0(v0, qword_1004349C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "code_phase";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "doppler0";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "doppler1";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "doppler_uncer";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "int_code_phase";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gps_bit_number";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "code_phase_search_window";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "azimuth";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "elevation";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sat_id";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "azimuth_lsb";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "elevation_lsb";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "doppler_uncer_ext";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
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
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 13:
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          sub_10026839C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10023C6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, 7);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_10023C9A4(v5, a1, a2, a3);
  sub_10023CA1C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, sub_10026839C, &type metadata for Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023C9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  if ((*(a1 + *(result + 64) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  result = a5(0);
  if (*(a1 + *(result + 68)) != 7)
  {
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023CB0C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1[14];
  v18 = a2 + a1[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a2 + v17;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1[16];
  v21 = a2 + a1[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a2 + v20;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(a2 + a1[17]) = 7;
  return result;
}

uint64_t sub_10023CC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A520, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &unk_10038DF58);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023CCBC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &unk_10038DEE0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CD28(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &unk_10038DEE0);

  return Message.hash(into:)();
}

uint64_t sub_10023CDCC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349D8);
  sub_100005DF0(v0, qword_1004349D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "gps_tow";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "nr_of_sats";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "cell_time_assistance";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "acquisition";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "confidence";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "session_protocol";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "pos_protocol";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "session_id";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023D16C(uint64_t a1, uint64_t a2, uint64_t a3)
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

          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          sub_100268A80();
          goto LABEL_22;
        }

        if (result == 7)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          sub_100268A2C();
LABEL_22:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_4;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
          sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &unk_10038D238);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &unk_10038DEE0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = result;
  if (*(v3 + *(result + 24) + 4))
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

  if ((*(v3 + *(v9 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10023D5DC(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
    sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &unk_10038DEE0);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + *(v9 + 36) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10023D7F8(v3, a1, a2, a3);
  sub_10023D884(v3, a1, a2, a3);
  sub_1001FCF44(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_1004240B0, &qword_100383580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240B0, &qword_100383580);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &unk_10038D238);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
}

uint64_t sub_10023D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 40)) != 6)
  {
    sub_100268A80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 44)) != 7)
  {
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023D95C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = &a2[a1[6]];
  *v5 = 0;
  v5[4] = 1;
  v6 = &a2[v4];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[8];
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  v11[4] = 1;
  a2[v10] = 6;
  v12 = a1[12];
  a2[a1[11]] = 7;
  v13 = &a2[v12];
  *v13 = 0;
  v13[4] = 1;
  return result;
}

uint64_t sub_10023DA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A518, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &unk_10038E0C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023DB04(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &unk_10038E048);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023DB70(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &unk_10038E048);

  return Message.hash(into:)();
}

uint64_t sub_10023DC2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_100036108(v7, a2);
  sub_100005DF0(v7, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v8 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100374440;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023DDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  if (*(v3 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1002687E0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023DF48(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10023E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t sub_10023E0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A510, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &unk_10038E228);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023E150(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425218, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &unk_10038E1B0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023E1BC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425218, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &unk_10038E1B0);

  return Message.hash(into:)();
}

uint64_t sub_10023E238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10023E314()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A08);
  sub_100005DF0(v0, qword_100434A08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "network_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cell_time";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023E57C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      switch(result)
      {
        case 3:
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
          sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          sub_1002687E0();
          break;
        case 1:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          sub_1000361C0();
          break;
        default:
          goto LABEL_5;
      }

      v3 = v6;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 10)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1000361C0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24)) != 6)
  {
    sub_1002687E0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10023E7F4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100424090, &qword_100383560);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424090, &qword_100383560);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &unk_10038D0D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t sub_10023EA5C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 10;
  *(a2 + v4) = 6;
  v5 = a1[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_10023EB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A508, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &unk_10038E390);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023EBB8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &unk_10038E318);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023EC24(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &unk_10038E318);

  return Message.hash(into:)();
}

uint64_t sub_10023ECC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A20);
  sub_100005DF0(v0, qword_100434A20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "latitude_degrees";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "longitude_degrees";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "altitude_meters";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ver_uncert_meters";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "horz_uncert_meters";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "horz_confidence";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "vert_confidence";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023F00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else
    {
      if (result <= 5)
      {
        goto LABEL_2;
      }

      if (result == 6 || result == 7)
      {
        type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }
  }
}

int *sub_10023F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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

  sub_10023F2F0(v5, a1, a2, a3);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023F3B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_10023F474(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A500, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &unk_10038E4F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023F514(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &unk_10038E480);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023F580(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &unk_10038E480);

  return Message.hash(into:)();
}

uint64_t sub_10023F628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A38);
  sub_100005DF0(v0, qword_100434A38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_tow_seconds";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_week";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10023F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023FA90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_10023FB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4F8, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &unk_10038E660);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023FBB8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &unk_10038E5E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023FC24(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &unk_10038E5E8);

  return Message.hash(into:)();
}

uint64_t sub_10023FCC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A50);
  sub_100005DF0(v0, qword_100434A50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "horz";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "heading";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "vertical";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023FFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4F0, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &unk_10038E7C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240094(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &unk_10038E750);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100240100(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &unk_10038E750);

  return Message.hash(into:)();
}

uint64_t sub_1002401A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A68);
  sub_100005DF0(v0, qword_100434A68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bias";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "drift";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002404B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4E8, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &unk_10038E930);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240550(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &unk_10038E8B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002405BC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &unk_10038E8B8);

  return Message.hash(into:)();
}

uint64_t sub_100240660()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A80);
  sub_100005DF0(v0, qword_100434A80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "altitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude_unc";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100240970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1002409B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4E0, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &unk_10038EA98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240A58(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &unk_10038EA20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100240AC4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &unk_10038EA20);

  return Message.hash(into:)();
}

uint64_t sub_100240B68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A98);
  sub_100005DF0(v0, qword_100434A98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1003833A0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "latitude";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "longitude";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "loc_unc_ang";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "loc_unc_a";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "loc_unc_p";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fix_type";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "velocity_included";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "velocity";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "clock_included";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "clock";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "altitude_included";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "altitude";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100240FF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 6)
      {
        break;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        sub_100268834();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      if (result == 10)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo;
        v8 = &unk_10038E8B8;
        v9 = &qword_100425290;
        goto LABEL_27;
      }

      if (result != 11)
      {
        if (result != 12)
        {
          goto LABEL_5;
        }

        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo;
        v8 = &unk_10038EA20;
        v9 = &qword_1004252A8;
LABEL_27:
        sub_100256CB4(v9, v7, v8);
        v3 = v6;
LABEL_30:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_5;
      }
    }

    else
    {
      if (result == 7)
      {
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
LABEL_33:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_5;
      }

      if (result == 8)
      {
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
        sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &unk_10038E750);
        goto LABEL_30;
      }
    }

    type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
    goto LABEL_33;
  }

  return result;
}

int *sub_100241324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100241544(v5, a1, a2, a3);
  sub_1002415D0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_10024164C(v5, a1, a2, a3);
  sub_100241868(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_1002418E4(v5, a1, a2, a3);
  sub_100241B00(v5, a1, a2, a3);
  sub_100241B78(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100241544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    sub_100268834();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002415D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10024164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v12 + 48), v7, &qword_1004240B8, &qword_100383588);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240B8, &qword_100383588);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &unk_10038E750);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
}

uint64_t sub_100241868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002418E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v12 + 56), v7, &qword_1004240C0, &qword_100383590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240C0, &qword_100383590);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &unk_10038E8B8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
}

uint64_t sub_100241B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100241B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v12 + 64), v7, &qword_1004240C8, &qword_100383598);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240C8, &qword_100383598);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &unk_10038EA20);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
}

uint64_t sub_100241DE0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 4;
  v12 = a1[12];
  *(a2 + a1[11]) = 2;
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = a1[14];
  *(a2 + a1[13]) = 2;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = a1[15];
  v17 = a1[16];
  *(a2 + v16) = 2;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a2 + v17, 1, 1, v18);
}

uint64_t sub_100241F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4D8, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &unk_10038EC00);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10024201C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &unk_10038EB88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100242088(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &unk_10038EB88);

  return Message.hash(into:)();
}

uint64_t sub_10024212C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AB0);
  sub_100005DF0(v0, qword_100434AB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gps_measurements";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "location_indication";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "aflt_action";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_meas_in_cdma_time";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100242488()
{
  type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 9;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v2 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  qword_100461498 = v0;
  return result;
}

uint64_t sub_1002425D0()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &qword_100424040, &qword_100383510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication, &qword_1004240D0, &qword_1003835A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100242684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v9 = swift_allocObject();
    sub_1002492C0(v8);

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

      if (result <= 3)
      {
        break;
      }

      if (result <= 5)
      {
        v12 = v4;
        if (result == 4)
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
          v14 = &unk_10038BA50;
          v15 = &qword_100424FA0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd;
          v14 = &unk_10038EB88;
          v15 = &qword_1004252C0;
        }

LABEL_19:
        sub_100256CB4(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_23;
      }

      if (result == 6)
      {
        v16 = v4;
        swift_beginAccess();
        sub_1002682F4();
        goto LABEL_21;
      }

      if (result != 7)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_23:
      swift_endAccess();
LABEL_24:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      v16 = v4;
      swift_beginAccess();
      sub_100268B28();
LABEL_21:
      v4 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_23;
    }

    if (result == 2)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_23;
    }

    if (result != 3)
    {
      goto LABEL_24;
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
    v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
    v14 = &unk_100388648;
    v15 = &qword_100424C40;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002429EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100242B78(v9, a1, a2, a3);
  sub_100242DA0(v9, a1, a2, a3);
  sub_100242FC8(v9, a1, a2, a3);
  sub_1002431F0(v9, a1, a2, a3);
  sub_100243294(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100242B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FF8, &qword_1003834C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_100388648);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_100242DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424040, &qword_100383510);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424040, &qword_100383510);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &unk_10038BA50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t sub_100242FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_1004240D0, &qword_1003835A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_1004240D0, &qword_1003835A0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &unk_10038EB88);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
}

uint64_t sub_1002431F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  if (*(a1 + v5) != 4)
  {
    sub_1002682F4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100243294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_100243364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin(v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100024A2C(&qword_10042A8F8, &qword_100390C10);
  __chkstk_darwin(v96);
  v7 = &v90 - v6;
  v8 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  v9 = __chkstk_darwin(v8 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v90 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v102 = *(v12 - 8);
  v103 = v12;
  __chkstk_darwin(v12);
  v95 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100024A2C(&qword_10042A900, &qword_100390C18);
  __chkstk_darwin(v101);
  v104 = &v90 - v14;
  v15 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v16 = __chkstk_darwin(v15 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v90 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v108 = *(v19 - 8);
  __chkstk_darwin(v19);
  v100 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  __chkstk_darwin(v21);
  v23 = &v90 - v22;
  v24 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v90 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v33 = *(a1 + 20);
    v92 = a1;
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    v91 = v7;
    v106 = a2;
    v36 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v37 = v92;
    swift_beginAccess();
    sub_10000A0A4(v37 + v36, v29, &qword_100423FF8, &qword_1003834C8);
    v38 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v39 = *(v21 + 48);
    sub_10000A0A4(v29, v23, &qword_100423FF8, &qword_1003834C8);
    v40 = v106 + v38;
    v41 = v106;
    sub_10000A0A4(v40, &v23[v39], &qword_100423FF8, &qword_1003834C8);
    v42 = *(v108 + 48);
    if (v42(v23, 1, v19) == 1)
    {

      sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
      if (v42(&v23[v39], 1, v19) == 1)
      {
        sub_1000059A8(v23, &qword_100423FF8, &qword_1003834C8);
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000A0A4(v23, v27, &qword_100423FF8, &qword_1003834C8);
      if (v42(&v23[v39], 1, v19) != 1)
      {
        v43 = v100;
        sub_1002463C0(&v23[v39], v100, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v37 = v92;

        v44 = sub_1002540CC(v27, v43);
        sub_100246490(v43, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v23, &qword_100423FF8, &qword_1003834C8);
        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v45 = v41;
        v46 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v47 = v107;
        sub_10000A0A4(v37 + v46, v107, &qword_100424040, &qword_100383510);
        v48 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v49 = *(v101 + 48);
        v50 = v104;
        sub_10000A0A4(v47, v104, &qword_100424040, &qword_100383510);
        sub_10000A0A4(v45 + v48, v50 + v49, &qword_100424040, &qword_100383510);
        v51 = v103;
        v52 = *(v102 + 48);
        if (v52(v50, 1, v103) == 1)
        {
          sub_1000059A8(v47, &qword_100424040, &qword_100383510);
          v53 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v53 == 1)
          {
            sub_1000059A8(v50, &qword_100424040, &qword_100383510);
LABEL_29:
            v67 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            swift_beginAccess();
            sub_10000A0A4(v37 + v67, v54, &qword_1004240D0, &qword_1003835A0);
            v68 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            v69 = v106;
            swift_beginAccess();
            v70 = *(v96 + 48);
            v71 = v91;
            sub_10000A0A4(v54, v91, &qword_1004240D0, &qword_1003835A0);
            v72 = v69 + v68;
            v73 = v71;
            sub_10000A0A4(v72, v71 + v70, &qword_1004240D0, &qword_1003835A0);
            v74 = v98;
            v75 = *(v97 + 48);
            if (v75(v71, 1, v98) == 1)
            {
              sub_1000059A8(v54, &qword_1004240D0, &qword_1003835A0);
              if (v75(v71 + v70, 1, v74) == 1)
              {
                sub_1000059A8(v71, &qword_1004240D0, &qword_1003835A0);
                v76 = v106;
LABEL_36:
                v82 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v83 = *(v37 + v82);
                v84 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v85 = *(v76 + v84);
                if (v83 == 4)
                {
                  if (v85 == 4)
                  {
LABEL_46:
                    v86 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v87 = *(v37 + v86);

                    v88 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v89 = *(v76 + v88);

                    if (v87 != 2)
                    {
                      return v89 != 2 && ((v87 ^ v89) & 1) == 0;
                    }

                    return v89 == 2;
                  }
                }

                else if (v85 != 4 && v83 == v85)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v77 = v71;
              v78 = v94;
              sub_10000A0A4(v77, v94, &qword_1004240D0, &qword_1003835A0);
              if (v75(v73 + v70, 1, v74) != 1)
              {
                v79 = v73 + v70;
                v80 = v93;
                sub_1002463C0(v79, v93, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                v81 = sub_10024D2B4(v78, v80);
                sub_100246490(v80, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                sub_1000059A8(v54, &qword_1004240D0, &qword_1003835A0);
                sub_100246490(v78, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                sub_1000059A8(v73, &qword_1004240D0, &qword_1003835A0);
                v76 = v106;
                if ((v81 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              sub_1000059A8(v54, &qword_1004240D0, &qword_1003835A0);
              sub_100246490(v78, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
            }

            v57 = &qword_10042A8F8;
            v58 = &qword_100390C10;
            v59 = v73;
LABEL_40:
            sub_1000059A8(v59, v57, v58);
            goto LABEL_41;
          }
        }

        else
        {
          v55 = v99;
          sub_10000A0A4(v50, v99, &qword_100424040, &qword_100383510);
          v56 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v56 != 1)
          {
            v60 = v50 + v49;
            v61 = v95;
            sub_1002463C0(v60, v95, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v62 = *(v51 + 20);
            v63 = *(v55 + v62);
            v64 = *(v61 + v62);
            if (v63 != v64)
            {

              v65 = sub_10022648C(v63, v64);

              if (!v65)
              {
                sub_100246490(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                sub_1000059A8(v107, &qword_100424040, &qword_100383510);
                sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v59 = v50;
                v57 = &qword_100424040;
                v58 = &qword_100383510;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
            v66 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_100246490(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v107, &qword_100424040, &qword_100383510);
            sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v50, &qword_100424040, &qword_100383510);
            if ((v66 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          sub_1000059A8(v107, &qword_100424040, &qword_100383510);
          sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v57 = &qword_10042A900;
        v58 = &qword_100390C18;
        v59 = v50;
        goto LABEL_40;
      }

      sub_1000059A8(v29, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v23, &qword_10042A908, &qword_100390C20);
    goto LABEL_41;
  }

  result = 0;
  if (v31 != 9 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100244194(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4D0, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate, &unk_10038ED68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100244234(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252D8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate, &unk_10038ECF0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002442A0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004252D8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate, &unk_10038ECF0);

  return Message.hash(into:)();
}

uint64_t sub_100244344()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AC8);
  sub_100005DF0(v0, qword_100434AC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "include1x_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "optimize_gnss_meas_with1x_msb";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "optimize_aflt_meas_with1x_msb";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "use_cdma_time_for_meas";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002445DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_9:
          type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

int *sub_1002446C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v6 = result;
  if (*(v3 + result[5]) == 2)
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

  if (*(v3 + v6[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
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

Swift::Int sub_100244824(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100256CB4(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002448DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4C8, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &unk_10038EED0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10024497C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &unk_10038EE58);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002449E8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &unk_10038EE58);

  return Message.hash(into:)();
}

uint64_t sub_100244A64(uint64_t result, uint64_t a2)
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

uint64_t sub_100244AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100246428(v13, v10, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      sub_100246428(v14, v7, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_10022D378(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
  }

  return 0;
}

uint64_t sub_100244D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100246428(v13, v10, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      sub_100246428(v14, v7, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18 && (sub_100238E54(v17, v18) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
  }

  return 0;
}

uint64_t sub_100244F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
        sub_100246428(v13, v10, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        sub_100246428(v14, v7, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = v10[v16 + 4];
        v19 = &v7[v16];
        v20 = v7[v16 + 4];
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
            sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            goto LABEL_40;
          }
        }

        v21 = v4[6];
        v22 = &v10[v21];
        v23 = v10[v21 + 4];
        v24 = &v7[v21];
        v25 = v7[v21 + 4];
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
        v28 = v10[v26 + 4];
        v29 = &v7[v26];
        v30 = v7[v26 + 4];
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
        v33 = v10[v31 + 4];
        v34 = &v7[v31];
        v35 = v7[v31 + 4];
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
        v38 = v10[v36 + 4];
        v39 = &v7[v36];
        v40 = v7[v36 + 4];
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
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
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