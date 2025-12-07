uint64_t sub_100205C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F18, &qword_1003833E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F18, &qword_1003833E8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &unk_10038E480);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
}

uint64_t sub_1002061A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F20, &qword_1003833F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F20, &qword_1003833F0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &unk_10038E5E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
}

BOOL sub_100206410(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100024A2C(&qword_10042AAB0, &qword_100390DC8);
  __chkstk_darwin(v82);
  v87 = &v78 - v5;
  v6 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  v7 = __chkstk_darwin(v6 - 8);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v78 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_10042AAB8, &qword_100390DD0);
  __chkstk_darwin(v13);
  v88 = &v78 - v14;
  v15 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v78 - v19;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  swift_beginAccess();
  v23 = *(a2 + 20);
  if (v22)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(a2 + 16))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 21);
  swift_beginAccess();
  v25 = *(a2 + 21);
  if (v24 == 18)
  {
    if (v25 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 18 || v24 != v25)
    {
      return result;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 22);
  swift_beginAccess();
  v28 = *(a2 + 22);
  if (v27 == 33)
  {
    if (v28 != 33)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v28 == 33 || v27 != v28)
    {
      return result;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 23);
  swift_beginAccess();
  v30 = *(a2 + 23);
  if (v29 == 24)
  {
    if (v30 != 24)
    {
      return 0;
    }

LABEL_22:
    swift_beginAccess();
    v31 = *(a1 + 24);
    v32 = *(a1 + 32);
    swift_beginAccess();
    v33 = *(a2 + 32);
    if (v32)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v31 != *(a2 + 24))
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    swift_beginAccess();
    v36 = *(a2 + 48);
    if (v35)
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v34 != *(a2 + 40))
      {
        v36 = 1;
      }

      if (v36)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v37 = *(a1 + 56);
    v38 = *(a1 + 64);
    swift_beginAccess();
    v39 = *(a2 + 64);
    if (v38)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v37 != *(a2 + 56))
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v40 = *(a1 + 72);
    v41 = *(a1 + 80);
    swift_beginAccess();
    v42 = *(a2 + 80);
    if (v41)
    {
      if (!*(a2 + 80))
      {
        return 0;
      }
    }

    else
    {
      if (v40 != *(a2 + 72))
      {
        v42 = 1;
      }

      if (v42)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v43 = *(a1 + 88);
    v44 = *(a1 + 96);
    swift_beginAccess();
    v45 = *(a2 + 96);
    if (v44)
    {
      if (!*(a2 + 96))
      {
        return 0;
      }
    }

    else
    {
      if (v43 != *(a2 + 88))
      {
        v45 = 1;
      }

      if (v45)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v46 = *(a1 + 104);
    v47 = *(a1 + 112);
    swift_beginAccess();
    v48 = *(a2 + 112);
    if (v47)
    {
      if (!*(a2 + 112))
      {
        return 0;
      }
    }

    else
    {
      if (v46 != *(a2 + 104))
      {
        v48 = 1;
      }

      if (v48)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v49 = *(a1 + 120);
    v50 = *(a1 + 128);
    swift_beginAccess();
    v51 = *(a2 + 128);
    if (v50)
    {
      if (!*(a2 + 128))
      {
        return 0;
      }
    }

    else
    {
      if (v49 != *(a2 + 120))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v52 = *(a1 + 129);
    swift_beginAccess();
    v53 = *(a2 + 129);
    if (v52 == 2)
    {
      if (v53 != 2)
      {
        return 0;
      }
    }

    else if (v53 == 2 || ((v52 ^ v53) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v54 = *(a1 + 130);
    swift_beginAccess();
    v55 = *(a2 + 130);
    if (v54 == 2)
    {
      if (v55 != 2)
      {
        return 0;
      }
    }

    else if (v55 == 2 || ((v54 ^ v55) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v56 = *(a1 + 131);
    swift_beginAccess();
    v57 = *(a2 + 131);
    if (v56 == 2)
    {
      if (v57 != 2)
      {
        return 0;
      }
    }

    else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
    {
      return 0;
    }

    v58 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    sub_10000A0A4(a1 + v58, v20, &qword_100423F18, &qword_1003833E8);
    v59 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    v60 = *(v13 + 48);
    v61 = v88;
    sub_10000A0A4(v20, v88, &qword_100423F18, &qword_1003833E8);
    v79 = v60;
    sub_10000A0A4(a2 + v59, v61 + v60, &qword_100423F18, &qword_1003833E8);
    v62 = *(v86 + 48);
    if (v62(v61, 1, v10) == 1)
    {

      sub_1000059A8(v20, &qword_100423F18, &qword_1003833E8);
      if (v62(v88 + v79, 1, v10) == 1)
      {
        sub_1000059A8(v88, &qword_100423F18, &qword_1003833E8);
LABEL_87:
        v66 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v67 = v84;
        sub_10000A0A4(a1 + v66, v84, &qword_100423F20, &qword_1003833F0);
        v68 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v69 = *(v82 + 48);
        v70 = v67;
        v71 = v87;
        sub_10000A0A4(v70, v87, &qword_100423F20, &qword_1003833F0);
        sub_10000A0A4(a2 + v68, v71 + v69, &qword_100423F20, &qword_1003833F0);
        v72 = *(v83 + 48);
        if (v72(v71, 1, v85) == 1)
        {

          sub_1000059A8(v84, &qword_100423F20, &qword_1003833F0);
          if (v72(v87 + v69, 1, v85) == 1)
          {
            sub_1000059A8(v87, &qword_100423F20, &qword_1003833F0);
            return 1;
          }

          goto LABEL_92;
        }

        v73 = v87;
        sub_10000A0A4(v87, v81, &qword_100423F20, &qword_1003833F0);
        if (v72(v73 + v69, 1, v85) == 1)
        {

          sub_1000059A8(v84, &qword_100423F20, &qword_1003833F0);
          sub_100246490(v81, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
LABEL_92:
          sub_1000059A8(v87, &qword_10042AAB0, &qword_100390DC8);
          return 0;
        }

        v74 = v87;
        v75 = v80;
        sub_1002463C0(v87 + v69, v80, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        v76 = v81;
        v77 = sub_10024B114(v81, v75);

        sub_100246490(v75, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        sub_1000059A8(v84, &qword_100423F20, &qword_1003833F0);
        sub_100246490(v76, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        sub_1000059A8(v74, &qword_100423F20, &qword_1003833F0);
        return (v77 & 1) != 0;
      }
    }

    else
    {
      v63 = v88;
      sub_10000A0A4(v88, v18, &qword_100423F18, &qword_1003833E8);
      if (v62(v63 + v79, 1, v10) != 1)
      {
        v64 = v88;
        sub_1002463C0(v88 + v79, v12, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

        v65 = sub_100250CCC(v18, v12);
        sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        sub_1000059A8(v20, &qword_100423F18, &qword_1003833E8);
        sub_100246490(v18, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        sub_1000059A8(v64, &qword_100423F18, &qword_1003833E8);
        if (v65)
        {
          goto LABEL_87;
        }

LABEL_85:

        return 0;
      }

      sub_1000059A8(v20, &qword_100423F18, &qword_1003833E8);
      sub_100246490(v18, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    }

    sub_1000059A8(v88, &qword_10042AAB8, &qword_100390DD0);
    goto LABEL_85;
  }

  result = 0;
  if (v30 != 24 && v29 == v30)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100207114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A738, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &unk_100388120);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002071B4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BE0, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &unk_1003880A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100207220(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424BE0, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &unk_1003880A8);

  return Message.hash(into:)();
}

uint64_t sub_1002072C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434390);
  sub_100005DF0(v0, qword_100434390);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ms_part";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ls_part";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002075D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A730, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388288);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100207670(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388210);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002076DC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388210);

  return Message.hash(into:)();
}

uint64_t sub_100207780()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343A8);
  sub_100005DF0(v0, qword_1004343A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "utran_gps_timing_cell_frames";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ref_cell_sfn";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ref_cell_psc";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "round_trip_time";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "modem_state";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100207A54(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
          sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388210);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 5)
        {
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          sub_100268AD4();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100207C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100207D18(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
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

    sub_100207F34(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100207D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F28, &qword_1003833F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F28, &qword_1003833F8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388210);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t sub_100207F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    sub_100268AD4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10020800C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 5;
  return result;
}

uint64_t sub_1002080E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A728, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &unk_1003883F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208188(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &unk_100388378);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002081F4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &unk_100388378);

  return Message.hash(into:)();
}

uint64_t sub_10020829C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343C0);
  sub_100005DF0(v0, qword_1004343C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mcc";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mnc";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "three_digit_mnc";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002085D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A720, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_100388558);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208670(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002086DC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);

  return Message.hash(into:)();
}

uint64_t sub_100208780()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343D8);
  sub_100005DF0(v0, qword_1004343D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_protocol";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pos_protocol";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "session_id";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002089DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          sub_100268A2C();
          break;
        case 1:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          sub_100268A80();
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

uint64_t sub_100208AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100268A80();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 7)
  {
    sub_100268A2C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100208C60@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  *(a2 + v5) = 7;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_100208CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A718, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_1003886C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208D80(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_100388648);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100208DEC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &unk_100388648);

  return Message.hash(into:)();
}

uint64_t sub_100208E90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343F0);
  sub_100005DF0(v0, qword_1004343F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100383370;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "interval";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "method";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "response_time";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "horizontal_accuracy";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "velocity_requested";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "horizontal_confidence";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "vertical_accuracy";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "vertical_confidence";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "vertical_requested";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "assistance_availability";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "requested_gnss";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "loc_cordinate_type_allowed";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "velocity_types";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "report_amount";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "pos_protocol";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "session_id";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "horizontal_accuracy_meters";
  *(v37 + 8) = 26;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100209450()
{
  type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1281;
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
  *(result + 116) = 1793;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  qword_1004611C8 = result;
  return result;
}

uint64_t sub_100209510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v9 = swift_allocObject();
    sub_100246654(v8);

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
        case 14:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_11;
        case 2:
          swift_beginAccess();
          sub_1002689D8();
          goto LABEL_9;
        case 15:
          swift_beginAccess();
          sub_100268A2C();
LABEL_9:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t sub_100209848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (v9[21] != 5)
  {
    sub_1002689D8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
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

  swift_beginAccess();
  if ((v9[52] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100237D94(v9, a1, a2, a3, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237E30(v9, a1, a2, a3, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237ECC(v9, a1, a2, a3, 9, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237F68(v9, a1, a2, a3, 10);
  sub_100237FF4(v9, a1, a2, a3, 11);
  sub_100238080(v9, a1, a2, a3, 12, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10023811C(v9, a1, a2, a3, 13, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1002381B8(v9, a1, a2, a3, 14, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100209C14(v9, a1, a2, a3);
  sub_100238254(v9, a1, a2, a3, 16, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1002382F0(v9, a1, a2, a3, 17, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100209C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 117) != 7)
  {
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100209CDC(uint64_t a1, uint64_t a2)
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
  v7 = *(a1 + 21);
  swift_beginAccess();
  v8 = *(a2 + 21);
  if (v7 == 5)
  {
    if (v8 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 5 || v7 != v8)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  swift_beginAccess();
  v12 = *(a2 + 28);
  if (v11)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 24))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  swift_beginAccess();
  v15 = *(a2 + 36);
  if (v14)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  swift_beginAccess();
  v18 = *(a2 + 44);
  if (v17)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 40))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);
  swift_beginAccess();
  v21 = *(a2 + 52);
  if (v20)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 48))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 60);
  swift_beginAccess();
  v24 = *(a2 + 60);
  if (v23)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 56))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  v26 = *(a1 + 68);
  swift_beginAccess();
  v27 = *(a2 + 68);
  if (v26)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 64))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 76);
  swift_beginAccess();
  v30 = *(a2 + 76);
  if (v29)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 72))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 80);
  v32 = *(a1 + 84);
  swift_beginAccess();
  v33 = *(a2 + 84);
  if (v32)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 80))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 88);
  v35 = *(a1 + 92);
  swift_beginAccess();
  v36 = *(a2 + 92);
  if (v35)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 88))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  v38 = *(a1 + 100);
  swift_beginAccess();
  v39 = *(a2 + 100);
  if (v38)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 96))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 104);
  v41 = *(a1 + 108);
  swift_beginAccess();
  v42 = *(a2 + 108);
  if (v41)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 104))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 116);
  swift_beginAccess();
  v45 = *(a2 + 116);
  if (v44)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 112))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 117);
  swift_beginAccess();
  v47 = *(a2 + 117);
  if (v46 == 7)
  {
    if (v47 != 7)
    {
      return 0;
    }

    goto LABEL_89;
  }

  result = 0;
  if (v47 != 7 && v46 == v47)
  {
LABEL_89:
    swift_beginAccess();
    v48 = *(a1 + 120);
    v49 = *(a1 + 124);
    swift_beginAccess();
    v50 = *(a2 + 124);
    if ((v49 & 1) == 0)
    {
      if (v48 != *(a2 + 120))
      {
        v50 = 1;
      }

      if (v50)
      {
        return 0;
      }

LABEL_95:
      swift_beginAccess();
      v51 = *(a1 + 128);
      v52 = *(a1 + 132);
      swift_beginAccess();
      v53 = *(a2 + 132);
      if (v52)
      {
        if (!*(a2 + 132))
        {
          return 0;
        }
      }

      else
      {
        if (v51 != *(a2 + 128))
        {
          v53 = 1;
        }

        if (v53)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 124))
    {
      goto LABEL_95;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10020A31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A710, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &unk_100388828);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020A3BC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &unk_1003887B0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020A428(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &unk_1003887B0);

  return Message.hash(into:)();
}

uint64_t sub_10020A4E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434408);
  sub_100005DF0(v0, qword_100434408);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ue_utran_cell_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_umts_time_difference";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020A6F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime;
        v8 = &unk_100388210;
        v9 = &qword_100424BF8;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime;
    v8 = &unk_100388378;
    v9 = &qword_100424C10;
LABEL_5:
    sub_100256CB4(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10020A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F30, &qword_100383400);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F30, &qword_100383400);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &unk_100388378);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
}

uint64_t sub_10020AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423F28, &qword_1003833F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F28, &qword_1003833F8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &unk_100388210);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t sub_10020AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A708, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &unk_100388990);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020ADE8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &unk_100388918);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020AE54(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &unk_100388918);

  return Message.hash(into:)();
}

uint64_t sub_10020AEFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434420);
  sub_100005DF0(v0, qword_100434420);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ref_frame_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_tow_subms";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t sub_10020B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  v12 = (v5 + *(result + 20));
  if (v12[1])
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v12, 1, a2, a3);
    if (v6)
    {
      return result;
    }
  }

  v13 = (v5 + *(v11 + 24));
  if ((v13[1] & 1) == 0)
  {
    a5(*v13, 2, a2, a3);
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020B3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A700, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &unk_100388AF8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020B440(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &unk_100388A80);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020B4AC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &unk_100388A80);

  return Message.hash(into:)();
}

uint64_t sub_10020B550()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434438);
  sub_100005DF0(v0, qword_100434438);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ref_frame_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delta_tow";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020B858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6F8, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &unk_100388C60);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020B8F8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &unk_100388BE8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020B964(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &unk_100388BE8);

  return Message.hash(into:)();
}

uint64_t sub_10020BA08()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434450);
  sub_100005DF0(v0, qword_100434450);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utran_time";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "geran_time_based";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "geran_time_assisted";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020BC64(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        v8 = &unk_100388BE8;
        v9 = &qword_100424CA0;
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        v8 = &unk_100388918;
        v9 = &qword_100424C70;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
    type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
    v8 = &unk_100388A80;
    v9 = &qword_100424C88;
LABEL_5:
    sub_100256CB4(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10020BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10020BE90(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10020C0AC(v3, a1, a2, a3);
    sub_10020C2C8(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10020BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F38, &qword_100383408);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F38, &qword_100383408);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &unk_100388918);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
}

uint64_t sub_10020C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423F40, &qword_100383410);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F40, &qword_100383410);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &unk_100388A80);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
}

uint64_t sub_10020C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100423F48, &qword_100383418);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F48, &qword_100383418);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &unk_100388BE8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
}

uint64_t sub_10020C530@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_10020C668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6F0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &unk_100388DC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020C708(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &unk_100388D50);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020C774(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &unk_100388D50);

  return Message.hash(into:)();
}

uint64_t sub_10020C818()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434468);
  sub_100005DF0(v0, qword_100434468);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_time_measured_type";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_time_measured";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &unk_100388D50);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423F50, &qword_100383420);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F50, &qword_100383420);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &unk_100388D50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
}

uint64_t sub_10020CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6E8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &unk_100388F30);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020CEF8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &unk_100388EB8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020CF64(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &unk_100388EB8);

  return Message.hash(into:)();
}

uint64_t sub_10020D008()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434480);
  sub_100005DF0(v0, qword_100434480);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_todmsec";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_todfrac";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "gps_todunc";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10020D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 4))
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

  if ((*(v4 + *(v7 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + *(v7 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020D4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6E0, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389098);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020D594(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389020);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020D600(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389020);

  return Message.hash(into:)();
}

uint64_t sub_10020D6A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434498);
  sub_100005DF0(v0, qword_100434498);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gps_tow";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_week";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gps_time_uncertainty";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fix_type";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "gps_todpresent";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "gps_tod";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020D9B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            sub_100268834();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
            sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389020);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10020DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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

  if (*(v5 + v10[8]) != 4)
  {
    sub_100268834();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10020DD0C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  sub_10000A0A4(a1 + *(v12 + 40), v7, &qword_100423F58, &qword_100383428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F58, &qword_100383428);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389020);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

uint64_t sub_10020DF74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v7) = 4;
  v9 = a1[9];
  v10 = a1[10];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t sub_10020E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6D8, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &unk_100389200);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020E100(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &unk_100389188);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020E16C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &unk_100389188);

  return Message.hash(into:)();
}

uint64_t sub_10020E210()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344B0);
  sub_100005DF0(v0, qword_1004344B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10036D7B0;
  v4 = v14 + v3 + v1[14];
  *(v14 + v3) = 1;
  *v4 = "cell_info_present";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v14 + v3 + v2 + v1[14];
  *(v14 + v3 + v2) = 2;
  *v8 = "lac";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v14 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cell_id";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v14 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "plmn";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020E4AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 4))
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10020E708(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020E708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100423F60, &qword_100383430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t sub_10020E970@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_10020EA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6D0, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_100389368);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020EAE4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020EB50(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);

  return Message.hash(into:)();
}

uint64_t sub_10020EBF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344C8);
  sub_100005DF0(v0, qword_1004344C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utran_timing_of_cell_frames";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ref_sfn";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ref_psc";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cell_info";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10020F100(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100423F68, &qword_100383438);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t sub_10020F368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_10020F43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6C8, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &unk_1003894D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020F4DC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &unk_100389458);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020F548(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &unk_100389458);

  return Message.hash(into:)();
}

uint64_t sub_10020F5F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344E0);
  sub_100005DF0(v0, qword_1004344E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ref_frame_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ref_frame_number";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cell_info";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
        sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 4))
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10020FA5C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100423F68, &qword_100383438);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &unk_1003892F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t sub_10020FCC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_10020FD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6C0, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &unk_100389638);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020FE2C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &unk_1003895C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020FE98(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &unk_1003895C0);

  return Message.hash(into:)();
}

uint64_t sub_10020FF3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344F8);
  sub_100005DF0(v0, qword_1004344F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "physical_cell_id";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "earfcn";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sfn";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cgi_info_present";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "plmn";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "eutran_cell_id";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sec_from_frame_start";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "frac_sec_from_frame_start";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "frame_drift";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ref_time_uncertainty";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bs_align";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021039C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1 || result == 2)
          {
LABEL_4:
            type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          }
        }

        else
        {
          if (result == 3 || result == 4)
          {
            goto LABEL_4;
          }

          type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 8)
        {
          goto LABEL_4;
        }

        if (result == 9)
        {
          type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 10 || result == 11)
        {
          goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1002105E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
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

  sub_100210830(v5, a1, a2, a3);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, 7);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100210830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  sub_10000A0A4(a1 + *(v12 + 36), v7, &qword_100423F60, &qword_100383430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn, &unk_1003884E0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t sub_100210A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100210AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 52));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 9, a3, a4);
  }

  return result;
}

uint64_t sub_100210B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 56) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100210C1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v10 = a1[9];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a2 + v19;
  *v21 = 0;
  *(v21 + 4) = 1;
  return result;
}

uint64_t sub_100210D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6B8, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_1003897A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100210DF0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_100389728);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100210E5C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_100389728);

  return Message.hash(into:)();
}

uint64_t sub_100210F00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434510);
  sub_100005DF0(v0, qword_100434510);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utran_time";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "geran_time";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "eutran_time";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021115C()
{
  type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v2 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_100461238 = v0;
  return result;
}

uint64_t sub_100211270(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  v6 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v13 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v18, v11, &qword_100423F70, &qword_100383440);
  swift_beginAccess();
  sub_10000AD64(v11, v1 + v12, &qword_100423F70, &qword_100383440);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v8, &qword_100423F78, &qword_100383448);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v14, &qword_100423F78, &qword_100383448);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v20, v5, &qword_100423F80, &qword_100383450);

  swift_beginAccess();
  sub_10000AD64(v5, v1 + v16, &qword_100423F80, &qword_100383450);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002115C8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime, &qword_100423F70, &qword_100383440);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime, &qword_100423F78, &qword_100383448);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime, &qword_100423F80, &qword_100383450);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10021167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v9 = swift_allocObject();
    sub_100211270(v8);
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
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell;
        v14 = &unk_100389728;
        v15 = &qword_100424340;
        goto LABEL_7;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        v14 = &unk_100389458;
        v15 = &qword_100424D30;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
    v13 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured;
    v14 = &unk_1003895C0;
    v15 = &qword_100424D48;
LABEL_7:
    sub_100256CB4(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1002118C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  result = sub_100211968(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100211B90(v8, a1, a2, a3);
    sub_100211DB8(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100211968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F70, &qword_100383440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F70, &qword_100383440);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &unk_100389458);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
}

uint64_t sub_100211B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F78, &qword_100383448);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F78, &qword_100383448);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &unk_1003895C0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
}

uint64_t sub_100211DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F80, &qword_100383450);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F80, &qword_100383450);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &unk_100389728);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
}

BOOL sub_100212024(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v67 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100024A2C(&qword_10042AA58, &qword_100390D70);
  __chkstk_darwin(v65);
  v68 = &v63 - v4;
  v5 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v6 = __chkstk_darwin(v5 - 8);
  v76 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v63 - v8;
  v73 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100024A2C(&qword_10042AA60, &qword_100390D78);
  __chkstk_darwin(v71);
  v74 = &v63 - v10;
  v11 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v12 = __chkstk_darwin(v11 - 8);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v63 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_10042AA68, &qword_100390D80);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v23 = __chkstk_darwin(v22 - 8);
  v77 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v63 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v27, v26, &qword_100423F70, &qword_100383440);
  v28 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v29 = v79;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_10000A0A4(v26, v21, &qword_100423F70, &qword_100383440);
  sub_10000A0A4(v29 + v28, &v21[v30], &qword_100423F70, &qword_100383440);
  v31 = *(v16 + 48);
  if (v31(v21, 1, v15) == 1)
  {

    sub_1000059A8(v26, &qword_100423F70, &qword_100383440);
    v32 = a1;
    if (v31(&v21[v30], 1, v15) == 1)
    {
      sub_1000059A8(v21, &qword_100423F70, &qword_100383440);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_10042AA68;
    v35 = &qword_100390D80;
    v36 = v21;
LABEL_14:
    sub_1000059A8(v36, v34, v35);
    goto LABEL_15;
  }

  v32 = a1;
  v33 = v77;
  sub_10000A0A4(v21, v77, &qword_100423F70, &qword_100383440);
  if (v31(&v21[v30], 1, v15) == 1)
  {

    sub_1000059A8(v26, &qword_100423F70, &qword_100383440);
    sub_100246490(v33, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    goto LABEL_6;
  }

  v37 = v70;
  sub_1002463C0(&v21[v30], v70, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  v38 = sub_10024BF8C(v33, v37);
  sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_1000059A8(v26, &qword_100423F70, &qword_100383440);
  sub_100246490(v33, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_1000059A8(v21, &qword_100423F70, &qword_100383440);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v40 = v78;
  sub_10000A0A4(v32 + v39, v78, &qword_100423F78, &qword_100383448);
  v41 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v42 = *(v71 + 48);
  v43 = v74;
  sub_10000A0A4(v40, v74, &qword_100423F78, &qword_100383448);
  sub_10000A0A4(v29 + v41, v43 + v42, &qword_100423F78, &qword_100383448);
  v44 = *(v72 + 48);
  v45 = v73;
  if (v44(v43, 1, v73) != 1)
  {
    v49 = v69;
    sub_10000A0A4(v43, v69, &qword_100423F78, &qword_100383448);
    v50 = v44(v43 + v42, 1, v45);
    v47 = v76;
    v48 = v75;
    if (v50 == 1)
    {
      sub_1000059A8(v78, &qword_100423F78, &qword_100383448);
      sub_100246490(v49, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
      goto LABEL_13;
    }

    v52 = v43 + v42;
    v53 = v64;
    sub_1002463C0(v52, v64, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v54 = sub_100249EC4(v49, v53);
    sub_100246490(v53, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    sub_1000059A8(v78, &qword_100423F78, &qword_100383448);
    sub_100246490(v49, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    sub_1000059A8(v43, &qword_100423F78, &qword_100383448);
    if (v54)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1000059A8(v40, &qword_100423F78, &qword_100383448);
  v46 = v44(v43 + v42, 1, v45);
  v47 = v76;
  v48 = v75;
  if (v46 != 1)
  {
LABEL_13:
    v34 = &qword_10042AA60;
    v35 = &qword_100390D78;
    v36 = v43;
    goto LABEL_14;
  }

  sub_1000059A8(v43, &qword_100423F78, &qword_100383448);
LABEL_19:
  v55 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v32 + v55, v48, &qword_100423F80, &qword_100383450);
  v56 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  v57 = *(v65 + 48);
  v58 = v68;
  sub_10000A0A4(v48, v68, &qword_100423F80, &qword_100383450);
  sub_10000A0A4(v29 + v56, v58 + v57, &qword_100423F80, &qword_100383450);
  v59 = *(v66 + 48);
  v60 = v67;
  if (v59(v58, 1, v67) == 1)
  {

    sub_1000059A8(v48, &qword_100423F80, &qword_100383450);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      sub_1000059A8(v58, &qword_100423F80, &qword_100383450);
      return 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v58, v47, &qword_100423F80, &qword_100383450);
  if (v59(v58 + v57, 1, v60) == 1)
  {

    sub_1000059A8(v48, &qword_100423F80, &qword_100383450);
    sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
LABEL_24:
    sub_1000059A8(v58, &qword_10042AA58, &qword_100390D70);
    return 0;
  }

  v61 = v63;
  sub_1002463C0(v58 + v57, v63, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v62 = sub_10025180C(v47, v61);

  sub_100246490(v61, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_1000059A8(v48, &qword_100423F80, &qword_100383450);
  sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_1000059A8(v58, &qword_100423F80, &qword_100383450);
  return (v62 & 1) != 0;
}

uint64_t sub_100212C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6B0, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &unk_100389908);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100212D1C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &unk_100389890);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100212D88(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &unk_100389890);

  return Message.hash(into:)();
}

uint64_t sub_100212E2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434528);
  sub_100005DF0(v0, qword_100434528);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_time_measured_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_time_measured";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
        sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &unk_100389890);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002131D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423F88, &qword_100383458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F88, &qword_100383458);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &unk_100389890);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
}

uint64_t sub_100213454@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  *(a4 + v8) = a2;
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t sub_1002134FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6A8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &unk_100389A70);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021359C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &unk_1003899F8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100213608(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &unk_1003899F8);

  return Message.hash(into:)();
}

uint64_t sub_1002136B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434540);
  sub_100005DF0(v0, qword_100434540);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_tod";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_tod_frac";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_tod_uncertainty";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fix_type";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reference_gnss";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002139C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
            goto LABEL_4;
          case 5:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            sub_100268834();
            goto LABEL_19;
          case 6:
            goto LABEL_4;
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
          sub_10026878C();
LABEL_19:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100213B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = result;
  if (*(v5 + result[5]) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_10026878C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

  sub_100213CAC(v5, a1, a2, a3);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, 6);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100213CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  if (*(a1 + *(result + 36)) != 4)
  {
    sub_100268834();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100213D84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  v6 = a2 + v5;
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
  *(a2 + a1[9]) = 4;
  v11 = a2 + v10;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100213E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6A0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &unk_100389BD8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100213ECC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &unk_100389B60);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100213F38(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &unk_100389B60);

  return Message.hash(into:)();
}

uint64_t sub_100213FE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434558);
  sub_100005DF0(v0, qword_100434558);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002142E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A698, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389D40);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100214388(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002143F4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);

  return Message.hash(into:)();
}

uint64_t sub_10021449C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434570);
  sub_100005DF0(v0, qword_100434570);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uncertain_radius";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100214720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_1002149B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A690, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &unk_100389EA8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100214A54(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &unk_100389E30);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100214AC0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &unk_100389E30);

  return Message.hash(into:)();
}

uint64_t sub_100214B68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434588);
  sub_100005DF0(v0, qword_100434588);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "point";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "semi_major_axis";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "semi_minor_axis";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "orientation_angle";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "confidence";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100214E4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100214FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100215104(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100215104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_10021536C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_10021544C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A688, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &unk_10038A010);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002154EC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &unk_100389F98);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100215558(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &unk_100389F98);

  return Message.hash(into:)();
}

uint64_t sub_1002155FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345A0);
  sub_100005DF0(v0, qword_1004345A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "point";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "altitude";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "semi_major_axis";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "semi_minor_axis";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "orientation_angle";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "uncertain_altitude";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "confidence";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100215954(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100215B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100215CAC(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, 6);
    sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100215CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100215F14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_100216010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A680, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &unk_10038A178);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002160B0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &unk_10038A100);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021611C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &unk_10038A100);

  return Message.hash(into:)();
}

uint64_t sub_1002161C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345B8);
  sub_100005DF0(v0, qword_1004345B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inner_radius";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uncertain_radius";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offset_angle";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "included_angle";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "confidence";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002164E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 3)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100216678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1002167E8(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, 6);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1002167E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100216A50@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_100216B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A678, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &unk_10038A2E0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100216BE0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &unk_10038A268);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100216C4C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &unk_10038A268);

  return Message.hash(into:)();
}

uint64_t sub_100216CF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345D0);
  sub_100005DF0(v0, qword_1004345D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100216F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        a4(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    if ((*(v5 + *(a5(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100217158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_1002173F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100217478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A670, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &unk_10038A448);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100217518(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &unk_10038A3D0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100217584(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &unk_10038A3D0);

  return Message.hash(into:)();
}

uint64_t sub_100217628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345E8);
  sub_100005DF0(v0, qword_1004345E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "no_of_points";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100217840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100217950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
    type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100217AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A668, type metadata accessor for Proto_Gnss_Emergency_Polygon, &unk_10038A5B0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100217B90(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon, &unk_10038A538);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100217BFC(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon, &unk_10038A538);

  return Message.hash(into:)();
}

uint64_t sub_100217CA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434600);
  sub_100005DF0(v0, qword_100434600);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "point_uncertain_circle";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "point_uncertain_ellipse";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "point_altitude_uncertain_ellipsoid";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ellipsoid_arc";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ellipsoid_point";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "point_altitude";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "polygon";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "no_location";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021803C()
{
  type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v4 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v10 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v14 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  result = (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v16 = v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v16 = 0;
  *(v16 + 4) = 1;
  qword_100461298 = v0;
  return result;
}

uint64_t sub_100218290()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle, &qword_100423F98, &qword_100383468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse, &qword_100423FA0, &qword_100383470);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid, &qword_100423FA8, &qword_100383478);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc, &qword_100423FB0, &qword_100383480);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint, &qword_100423F90, &qword_100383460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude, &qword_100423FB8, &qword_100383488);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon, &qword_100423FC0, &qword_100383490);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002183C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v9 = swift_allocObject();
    sub_100246E4C(v8);

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
        if (result > 2)
        {
          v12 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
            v14 = &unk_10038A100;
            v15 = &qword_100424DF8;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc;
            v14 = &unk_10038A268;
            v15 = &qword_100424E10;
          }
        }

        else if (result == 1)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle;
          v14 = &unk_100389E30;
          v15 = &qword_100424DC8;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse;
          v14 = &unk_100389F98;
          v15 = &qword_100424DE0;
        }

        goto LABEL_23;
      }

      if (result <= 6)
      {
        break;
      }

      if (result == 7)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_Polygon;
        v14 = &unk_10038A538;
        v15 = &qword_100424E40;
LABEL_23:
        sub_100256CB4(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_24;
      }

      if (result != 8)
      {
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    if (result == 5)
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint;
      v14 = &unk_100389CC8;
      v15 = &qword_100424248;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude;
      v14 = &unk_10038A3D0;
      v15 = &qword_100424E28;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10021880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  result = sub_10021894C(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100218B74(v8, a1, a2, a3);
    sub_100218D9C(v8, a1, a2, a3);
    sub_100218FC4(v8, a1, a2, a3);
    sub_1002191EC(v8, a1, a2, a3);
    sub_100219414(v8, a1, a2, a3);
    sub_10021963C(v8, a1, a2, a3);
    sub_100228210(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10021894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F98, &qword_100383468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F98, &qword_100383468);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &unk_100389E30);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
}

uint64_t sub_100218B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FA0, &qword_100383470);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FA0, &qword_100383470);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &unk_100389F98);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
}

uint64_t sub_100218D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FA8, &qword_100383478);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FA8, &qword_100383478);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &unk_10038A100);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
}

uint64_t sub_100218FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FB0, &qword_100383480);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FB0, &qword_100383480);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &unk_10038A268);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
}

uint64_t sub_1002191EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F90, &qword_100383460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &unk_100389CC8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100219414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FB8, &qword_100383488);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FB8, &qword_100383488);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &unk_10038A3D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
}

uint64_t sub_10021963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423FC0, &qword_100383490);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FC0, &qword_100383490);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon, &unk_10038A538);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Polygon);
}

uint64_t sub_1002198A8(uint64_t a1, uint64_t a2)
{
  v193 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v152 = *(v3 - 8);
  v153 = v3;
  __chkstk_darwin(v3);
  v148 = (&v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = sub_100024A2C(&qword_10042AA18, &qword_100390D30);
  __chkstk_darwin(v151);
  v154 = &v147 - v5;
  v6 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v7 = __chkstk_darwin(v6 - 8);
  v149 = (&v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v156 = &v147 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v159 = *(v10 - 8);
  v160 = v10;
  __chkstk_darwin(v10);
  v150 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100024A2C(&qword_10042AA20, &qword_100390D38);
  __chkstk_darwin(v158);
  v161 = &v147 - v12;
  v13 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v14 = __chkstk_darwin(v13 - 8);
  v155 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v163 = &v147 - v16;
  v17 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v166 = *(v17 - 8);
  v167 = v17;
  __chkstk_darwin(v17);
  v157 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  __chkstk_darwin(v165);
  v168 = &v147 - v19;
  v20 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v21 = __chkstk_darwin(v20 - 8);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v170 = &v147 - v23;
  v24 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v173 = *(v24 - 8);
  v174 = v24;
  __chkstk_darwin(v24);
  v164 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_100024A2C(&qword_10042AA30, &qword_100390D48);
  __chkstk_darwin(v172);
  v175 = &v147 - v26;
  v27 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v28 = __chkstk_darwin(v27 - 8);
  v169 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v181 = &v147 - v30;
  v31 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v178 = *(v31 - 8);
  v179 = v31;
  __chkstk_darwin(v31);
  v171 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_100024A2C(&qword_10042AA38, &qword_100390D50);
  __chkstk_darwin(v177);
  v180 = &v147 - v33;
  v34 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v35 = __chkstk_darwin(v34 - 8);
  v189 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v188 = &v147 - v37;
  v38 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v185 = *(v38 - 8);
  v186 = v38;
  __chkstk_darwin(v38);
  v176 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_100024A2C(&qword_10042AA40, &qword_100390D58);
  __chkstk_darwin(v184);
  v187 = &v147 - v40;
  v41 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v42 = __chkstk_darwin(v41 - 8);
  v182 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v191 = &v147 - v44;
  v192 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v45 = *(v192 - 8);
  __chkstk_darwin(v192);
  v183 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100024A2C(&qword_10042AA48, &qword_100390D60);
  v48 = v47 - 8;
  __chkstk_darwin(v47);
  v50 = &v147 - v49;
  v51 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v52 = __chkstk_darwin(v51 - 8);
  v190 = &v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v147 - v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v56, v55, &qword_100423F98, &qword_100383468);
  v57 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v58 = v193;
  swift_beginAccess();
  v59 = *(v48 + 56);
  sub_10000A0A4(v55, v50, &qword_100423F98, &qword_100383468);
  v60 = v58 + v57;
  v61 = v192;
  sub_10000A0A4(v60, &v50[v59], &qword_100423F98, &qword_100383468);
  v62 = *(v45 + 48);
  if (v62(v50, 1, v61) == 1)
  {

    sub_1000059A8(v55, &qword_100423F98, &qword_100383468);
    if (v62(&v50[v59], 1, v61) == 1)
    {
      sub_1000059A8(v50, &qword_100423F98, &qword_100383468);
      goto LABEL_8;
    }

LABEL_6:
    v64 = &qword_10042AA48;
    v65 = &qword_100390D60;
LABEL_14:
    v80 = v50;
LABEL_15:
    sub_1000059A8(v80, v64, v65);
    goto LABEL_16;
  }

  v63 = v190;
  sub_10000A0A4(v50, v190, &qword_100423F98, &qword_100383468);
  if (v62(&v50[v59], 1, v61) == 1)
  {

    sub_1000059A8(v55, &qword_100423F98, &qword_100383468);
    sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    goto LABEL_6;
  }

  v66 = v183;
  sub_1002463C0(&v50[v59], v183, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  v67 = sub_100255634(v63, v66, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_100246490(v66, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_1000059A8(v55, &qword_100423F98, &qword_100383468);
  sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_1000059A8(v50, &qword_100423F98, &qword_100383468);
  if ((v67 & 1) == 0)
  {
LABEL_16:

    return 0;
  }

LABEL_8:
  v68 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v69 = v191;
  sub_10000A0A4(a1 + v68, v191, &qword_100423FA0, &qword_100383470);
  v70 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v71 = *(v184 + 48);
  v50 = v187;
  sub_10000A0A4(v69, v187, &qword_100423FA0, &qword_100383470);
  sub_10000A0A4(v58 + v70, &v50[v71], &qword_100423FA0, &qword_100383470);
  v72 = v186;
  v73 = *(v185 + 48);
  if (v73(v50, 1, v186) == 1)
  {
    sub_1000059A8(v69, &qword_100423FA0, &qword_100383470);
    v74 = v73(&v50[v71], 1, v72);
    v75 = v188;
    v76 = v189;
    if (v74 == 1)
    {
      sub_1000059A8(v50, &qword_100423FA0, &qword_100383470);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v77 = v182;
  sub_10000A0A4(v50, v182, &qword_100423FA0, &qword_100383470);
  v78 = v73(&v50[v71], 1, v72);
  v75 = v188;
  v79 = v189;
  if (v78 == 1)
  {
    sub_1000059A8(v191, &qword_100423FA0, &qword_100383470);
    sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
LABEL_13:
    v64 = &qword_10042AA40;
    v65 = &qword_100390D58;
    goto LABEL_14;
  }

  v82 = &v50[v71];
  v83 = v176;
  sub_1002463C0(v82, v176, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  LODWORD(v193) = sub_10024A7DC(v77, v83);
  sub_100246490(v83, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_1000059A8(v191, &qword_100423FA0, &qword_100383470);
  sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_1000059A8(v50, &qword_100423FA0, &qword_100383470);
  v76 = v79;
  if ((v193 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v84 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(a1 + v84, v75, &qword_100423FA8, &qword_100383478);
  v85 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v86 = *(v177 + 48);
  v87 = v180;
  sub_10000A0A4(v75, v180, &qword_100423FA8, &qword_100383478);
  v88 = v87;
  sub_10000A0A4(v58 + v85, v87 + v86, &qword_100423FA8, &qword_100383478);
  v89 = v179;
  v90 = *(v178 + 48);
  if (v90(v87, 1, v179) == 1)
  {
    sub_1000059A8(v75, &qword_100423FA8, &qword_100383478);
    v91 = v90(v87 + v86, 1, v89);
    v92 = v181;
    if (v91 == 1)
    {
      sub_1000059A8(v88, &qword_100423FA8, &qword_100383478);
      goto LABEL_27;
    }

LABEL_25:
    v64 = &qword_10042AA38;
    v65 = &qword_100390D50;
LABEL_54:
    v80 = v88;
    goto LABEL_15;
  }

  sub_10000A0A4(v87, v76, &qword_100423FA8, &qword_100383478);
  v93 = v90(v87 + v86, 1, v89);
  v92 = v181;
  if (v93 == 1)
  {
    sub_1000059A8(v75, &qword_100423FA8, &qword_100383478);
    sub_100246490(v76, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    goto LABEL_25;
  }

  v94 = v88 + v86;
  v95 = v171;
  sub_1002463C0(v94, v171, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  LODWORD(v193) = sub_10024991C(v76, v95);
  sub_100246490(v95, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_1000059A8(v75, &qword_100423FA8, &qword_100383478);
  sub_100246490(v76, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_1000059A8(v88, &qword_100423FA8, &qword_100383478);
  if ((v193 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v96 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(a1 + v96, v92, &qword_100423FB0, &qword_100383480);
  v97 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v98 = *(v172 + 48);
  v99 = v92;
  v100 = v92;
  v101 = v175;
  sub_10000A0A4(v99, v175, &qword_100423FB0, &qword_100383480);
  v88 = v101;
  sub_10000A0A4(v58 + v97, v101 + v98, &qword_100423FB0, &qword_100383480);
  v102 = v174;
  v103 = *(v173 + 48);
  if (v103(v101, 1, v174) == 1)
  {
    sub_1000059A8(v100, &qword_100423FB0, &qword_100383480);
    if (v103(v101 + v98, 1, v102) == 1)
    {
      sub_1000059A8(v101, &qword_100423FB0, &qword_100383480);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v104 = v169;
  sub_10000A0A4(v101, v169, &qword_100423FB0, &qword_100383480);
  if (v103(v101 + v98, 1, v102) == 1)
  {
    sub_1000059A8(v181, &qword_100423FB0, &qword_100383480);
    sub_100246490(v104, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
LABEL_32:
    v64 = &qword_10042AA30;
    v65 = &qword_100390D48;
    goto LABEL_54;
  }

  v105 = v101 + v98;
  v106 = v164;
  sub_1002463C0(v105, v164, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v107 = sub_100253010(v104, v106);
  sub_100246490(v106, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_1000059A8(v181, &qword_100423FB0, &qword_100383480);
  sub_100246490(v104, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_1000059A8(v101, &qword_100423FB0, &qword_100383480);
  if ((v107 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  v108 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v109 = v170;
  sub_10000A0A4(a1 + v108, v170, &qword_100423F90, &qword_100383460);
  v110 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v111 = *(v165 + 48);
  v88 = v168;
  sub_10000A0A4(v109, v168, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(v58 + v110, v88 + v111, &qword_100423F90, &qword_100383460);
  v112 = v167;
  v113 = *(v166 + 48);
  if (v113(v88, 1, v167) == 1)
  {
    sub_1000059A8(v109, &qword_100423F90, &qword_100383460);
    if (v113(v88 + v111, 1, v112) == 1)
    {
      sub_1000059A8(v88, &qword_100423F90, &qword_100383460);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v114 = v162;
  sub_10000A0A4(v88, v162, &qword_100423F90, &qword_100383460);
  if (v113(v88 + v111, 1, v112) == 1)
  {
    sub_1000059A8(v170, &qword_100423F90, &qword_100383460);
    sub_100246490(v114, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_39:
    v64 = &qword_10042AA28;
    v65 = &qword_100390D40;
    goto LABEL_54;
  }

  v115 = v88 + v111;
  v116 = v157;
  sub_1002463C0(v115, v157, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v117 = sub_100255534(v114, v116, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100246490(v116, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_1000059A8(v170, &qword_100423F90, &qword_100383460);
  sub_100246490(v114, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_1000059A8(v88, &qword_100423F90, &qword_100383460);
  if ((v117 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_41:
  v118 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v119 = v163;
  sub_10000A0A4(a1 + v118, v163, &qword_100423FB8, &qword_100383488);
  v120 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v121 = *(v158 + 48);
  v122 = v161;
  sub_10000A0A4(v119, v161, &qword_100423FB8, &qword_100383488);
  v88 = v122;
  sub_10000A0A4(v58 + v120, v122 + v121, &qword_100423FB8, &qword_100383488);
  v123 = v160;
  v124 = *(v159 + 48);
  if (v124(v122, 1, v160) == 1)
  {
    sub_1000059A8(v119, &qword_100423FB8, &qword_100383488);
    if (v124(v122 + v121, 1, v123) == 1)
    {
      sub_1000059A8(v122, &qword_100423FB8, &qword_100383488);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v125 = v155;
  sub_10000A0A4(v122, v155, &qword_100423FB8, &qword_100383488);
  if (v124(v122 + v121, 1, v123) == 1)
  {
    sub_1000059A8(v163, &qword_100423FB8, &qword_100383488);
    sub_100246490(v125, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
LABEL_46:
    v64 = &qword_10042AA20;
    v65 = &qword_100390D38;
    goto LABEL_54;
  }

  v126 = v122 + v121;
  v127 = v150;
  sub_1002463C0(v126, v150, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v128 = sub_100255634(v125, v127, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_100246490(v127, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_1000059A8(v163, &qword_100423FB8, &qword_100383488);
  sub_100246490(v125, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_1000059A8(v122, &qword_100423FB8, &qword_100383488);
  if ((v128 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v129 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v130 = v156;
  sub_10000A0A4(a1 + v129, v156, &qword_100423FC0, &qword_100383490);
  v131 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v132 = *(v151 + 48);
  v133 = v154;
  sub_10000A0A4(v130, v154, &qword_100423FC0, &qword_100383490);
  v88 = v133;
  sub_10000A0A4(v58 + v131, v133 + v132, &qword_100423FC0, &qword_100383490);
  v134 = v153;
  v135 = *(v152 + 48);
  if (v135(v133, 1, v153) == 1)
  {
    sub_1000059A8(v130, &qword_100423FC0, &qword_100383490);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      sub_1000059A8(v133, &qword_100423FC0, &qword_100383490);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v136 = v149;
  sub_10000A0A4(v133, v149, &qword_100423FC0, &qword_100383490);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    sub_1000059A8(v156, &qword_100423FC0, &qword_100383490);
    sub_100246490(v136, type metadata accessor for Proto_Gnss_Emergency_Polygon);
LABEL_53:
    v64 = &qword_10042AA18;
    v65 = &qword_100390D30;
    goto LABEL_54;
  }

  v137 = v133 + v132;
  v138 = v148;
  sub_1002463C0(v137, v148, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v139 = sub_100255DEC(v136, v138);
  sub_100246490(v138, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_1000059A8(v156, &qword_100423FC0, &qword_100383490);
  sub_100246490(v136, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_1000059A8(v133, &qword_100423FC0, &qword_100383490);
  if ((v139 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_56:
  v140 = (a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v141 = *v140;
  v142 = *(v140 + 4);

  v143 = v58 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v144 = *v143;
  v145 = *(v143 + 4);

  if (v142)
  {
    if (v145)
    {
      return 1;
    }
  }

  else
  {
    if (v141 == v144)
    {
      v146 = v145;
    }

    else
    {
      v146 = 1;
    }

    if ((v146 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10021B2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A660, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &unk_10038A718);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021B374(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &unk_10038A6A0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021B3E0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &unk_10038A6A0);

  return Message.hash(into:)();
}

uint64_t sub_10021B484()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434618);
  sub_100005DF0(v0, qword_100434618);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021B69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
        sub_100268738();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
        type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
        sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &unk_10038A6A0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  if (*(v5 + *(result + 20)) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100268738();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10021B894(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423FC8, &qword_100383498);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FC8, &qword_100383498);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &unk_10038A6A0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
}

uint64_t sub_10021BB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A658, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &unk_10038A880);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021BBE8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &unk_10038A808);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021BC54(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &unk_10038A808);

  return Message.hash(into:)();
}

uint64_t sub_10021BCF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434630);
  sub_100005DF0(v0, qword_100434630);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021C008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A650, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &unk_10038A9E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021C0A8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &unk_10038A970);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021C114(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &unk_10038A970);

  return Message.hash(into:)();
}

uint64_t sub_10021C1BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434648);
  sub_100005DF0(v0, qword_100434648);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vertical_speed";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "vertical_speed_direction";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021C52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A648, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &unk_10038AB50);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021C5CC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &unk_10038AAD8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021C638(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &unk_10038AAD8);

  return Message.hash(into:)();
}

uint64_t sub_10021C6DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434660);
  sub_100005DF0(v0, qword_100434660);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_speed";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021CA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A640, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &unk_10038ACB8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021CAB4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &unk_10038AC40);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021CB20(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &unk_10038AC40);

  return Message.hash(into:)();
}

uint64_t sub_10021CBC4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434678);
  sub_100005DF0(v0, qword_100434678);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vertical_speed";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "vertical_speed_direction";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "horiz_uncertainty_speed";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "vert_uncertainty_speed";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021CEE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10021D008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, 6);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021D1D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t sub_10021D284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A638, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &unk_10038AE20);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021D324(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &unk_10038ADA8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021D390(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &unk_10038ADA8);

  return Message.hash(into:)();
}

uint64_t sub_10021D434()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434690);
  sub_100005DF0(v0, qword_100434690);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "_horizontal";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "_horiz_with_vert";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "_horiz_with_uncertainty";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "_horiz_with_vert_uncertainty";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021D6C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          v8 = &unk_10038AC40;
          v9 = &qword_100424EB8;
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
          v8 = &unk_10038ADA8;
          v9 = &qword_100424ED0;
LABEL_5:
          sub_100256CB4(v9, v7, v8);
          v3 = v6;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
          sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &unk_10038A970);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity;
          v8 = &unk_10038AAD8;
          v9 = &qword_100424EA0;
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021D8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021D97C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10021DB98(v3, a1, a2, a3);
    sub_10021DDB4(v3, a1, a2, a3);
    sub_10021DFD0(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10021D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100423FD0, &qword_1003834A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FD0, &qword_1003834A0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &unk_10038A970);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
}

uint64_t sub_10021DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423FD8, &qword_1003834A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FD8, &qword_1003834A8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &unk_10038AAD8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
}

uint64_t sub_10021DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100423FE0, &qword_1003834B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FE0, &qword_1003834B0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &unk_10038AC40);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
}

uint64_t sub_10021DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100423FE8, &qword_1003834B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FE8, &qword_1003834B8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &unk_10038ADA8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
}

uint64_t sub_10021E238@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_10021E3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A630, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &unk_10038AF88);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021E454(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &unk_10038AF10);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021E4C0(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &unk_10038AF10);

  return Message.hash(into:)();
}

uint64_t sub_10021E564()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346A8);
  sub_100005DF0(v0, qword_1004346A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "velocity_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "velocity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
        sub_1002686E4();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
        type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
        sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &unk_10038AF10);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100423FF0, &qword_1003834C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423FF0, &qword_1003834C0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &unk_10038AF10);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
}

uint64_t sub_10021EBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A628, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &unk_10038B0F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021EC4C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &unk_10038B078);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ECB8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &unk_10038B078);

  return Message.hash(into:)();
}

uint64_t sub_10021ED5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346C0);
  sub_100005DF0(v0, qword_1004346C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "result";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "response_type";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "session_info";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "location_info";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ganss_location_info";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "loc_estimate";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "velocity_estimate";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "technology_source";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021F0F4()
{
  type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 9;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v2 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v4 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v10 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  result = (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v12 = 0;
  *(v12 + 4) = 1;
  qword_1004612E8 = v0;
  return result;
}

uint64_t sub_10021F2C8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo, &qword_100424000, &qword_1003834D0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo, &qword_100424008, &qword_1003834D8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate, &qword_100424010, &qword_1003834E0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate, &qword_100424018, &qword_1003834E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10021F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v9 = swift_allocObject();
    sub_1002477BC(v8);

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

      if (result > 4)
      {
        if (result <= 6)
        {
          v12 = v4;
          if (result == 5)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo;
            v14 = &unk_100389B60;
            v15 = &qword_100424DA0;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate;
            v14 = &unk_10038A808;
            v15 = &qword_100424E70;
          }

          goto LABEL_23;
        }

        if (result == 7)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate;
          v14 = &unk_10038B078;
          v15 = &qword_100424F00;
LABEL_23:
          sub_100256CB4(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (result > 2)
        {
          v12 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v14 = &unk_100388648;
            v15 = &qword_100424C40;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo;
            v14 = &unk_100389188;
            v15 = &qword_100424D00;
          }

          goto LABEL_23;
        }

        if (result == 1)
        {
          swift_beginAccess();
          sub_100268B28();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 2)
        {
          goto LABEL_25;
        }
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021F7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
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
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  sub_10021F964(v9, a1, a2, a3);
  sub_10021FB8C(v9, a1, a2, a3);
  sub_10021FDB4(v9, a1, a2, a3);
  sub_10021FFDC(v9, a1, a2, a3);
  sub_100220204(v9, a1, a2, a3);
  sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource, 8, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

uint64_t sub_10021FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424000, &qword_1003834D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424000, &qword_1003834D0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &unk_100389188);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
}

uint64_t sub_10021FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424008, &qword_1003834D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424008, &qword_1003834D8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &unk_100389B60);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
}

uint64_t sub_10021FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424010, &qword_1003834E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424010, &qword_1003834E0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &unk_10038A808);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
}

uint64_t sub_100220204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424018, &qword_1003834E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424018, &qword_1003834E8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &unk_10038B078);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
}

BOOL sub_100220470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v131 = *(v4 - 8);
  v132 = v4;
  __chkstk_darwin(v4);
  v127 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100024A2C(&qword_10042A9C8, &qword_100390CE0);
  __chkstk_darwin(v130);
  v7 = &v124 - v6;
  v8 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  v9 = __chkstk_darwin(v8 - 8);
  v128 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v139 = &v124 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v129 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100024A2C(&qword_10042A9D0, &qword_100390CE8);
  __chkstk_darwin(v135);
  v138 = &v124 - v14;
  v15 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  v16 = __chkstk_darwin(v15 - 8);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v145 = &v124 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v142 = *(v19 - 8);
  v143 = v19;
  __chkstk_darwin(v19);
  v134 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100024A2C(&qword_10042A9D8, &qword_100390CF0);
  __chkstk_darwin(v141);
  v144 = &v124 - v21;
  v22 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v23 = __chkstk_darwin(v22 - 8);
  v152 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v153 = &v124 - v25;
  v26 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v149 = *(v26 - 8);
  v150 = v26;
  __chkstk_darwin(v26);
  v140 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100024A2C(&qword_10042A9E0, &qword_100390CF8);
  __chkstk_darwin(v148);
  v151 = &v124 - v28;
  v29 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v30 = __chkstk_darwin(v29 - 8);
  v146 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v154 = &v124 - v32;
  v33 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v155 = *(v33 - 8);
  __chkstk_darwin(v33);
  v147 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  __chkstk_darwin(v35);
  v37 = &v124 - v36;
  v38 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v39 = __chkstk_darwin(v38 - 8);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v124 - v42;
  swift_beginAccess();
  v44 = *(a1 + 16);
  swift_beginAccess();
  v45 = *(a2 + 16);
  if (v44 == 9)
  {
    if (v45 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v47 = *(a1 + 20);
    v126 = a1;
    v48 = *(a1 + 24);
    swift_beginAccess();
    v49 = *(a2 + 24);
    if (v48)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v47 != *(a2 + 20))
      {
        v49 = 1;
      }

      if (v49)
      {
        return 0;
      }
    }

    v125 = v7;
    v156 = a2;
    v50 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v51 = v126;
    swift_beginAccess();
    sub_10000A0A4(v51 + v50, v43, &qword_100423FF8, &qword_1003834C8);
    v52 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v53 = *(v35 + 48);
    sub_10000A0A4(v43, v37, &qword_100423FF8, &qword_1003834C8);
    sub_10000A0A4(v156 + v52, &v37[v53], &qword_100423FF8, &qword_1003834C8);
    v54 = *(v155 + 48);
    if (v54(v37, 1, v33) == 1)
    {

      sub_1000059A8(v43, &qword_100423FF8, &qword_1003834C8);
      if (v54(&v37[v53], 1, v33) == 1)
      {
        sub_1000059A8(v37, &qword_100423FF8, &qword_1003834C8);
LABEL_19:
        v60 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v61 = v154;
        sub_10000A0A4(v51 + v60, v154, &qword_100424000, &qword_1003834D0);
        v62 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v63 = *(v148 + 48);
        v64 = v151;
        sub_10000A0A4(v61, v151, &qword_100424000, &qword_1003834D0);
        sub_10000A0A4(v156 + v62, v64 + v63, &qword_100424000, &qword_1003834D0);
        v65 = v150;
        v66 = *(v149 + 48);
        if (v66(v64, 1, v150) == 1)
        {
          sub_1000059A8(v61, &qword_100424000, &qword_1003834D0);
          v67 = v66(v64 + v63, 1, v65);
          v69 = v152;
          v68 = v153;
          if (v67 == 1)
          {
            sub_1000059A8(v64, &qword_100424000, &qword_1003834D0);
            goto LABEL_26;
          }
        }

        else
        {
          v70 = v146;
          sub_10000A0A4(v64, v146, &qword_100424000, &qword_1003834D0);
          v71 = v66(v64 + v63, 1, v65);
          v72 = v152;
          v68 = v153;
          if (v71 != 1)
          {
            v73 = v64 + v63;
            v74 = v140;
            sub_1002463C0(v73, v140, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            LODWORD(v155) = sub_100252BAC(v70, v74);
            sub_100246490(v74, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            sub_1000059A8(v154, &qword_100424000, &qword_1003834D0);
            sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            sub_1000059A8(v64, &qword_100424000, &qword_1003834D0);
            v69 = v72;
            if ((v155 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_26:
            v75 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            swift_beginAccess();
            sub_10000A0A4(v51 + v75, v68, &qword_100424008, &qword_1003834D8);
            v76 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            v77 = v156;
            swift_beginAccess();
            v78 = *(v141 + 48);
            v79 = v68;
            v80 = v68;
            v81 = v144;
            sub_10000A0A4(v79, v144, &qword_100424008, &qword_1003834D8);
            v82 = v81;
            sub_10000A0A4(v77 + v76, v81 + v78, &qword_100424008, &qword_1003834D8);
            v83 = v143;
            v84 = *(v142 + 48);
            if (v84(v81, 1, v143) == 1)
            {
              sub_1000059A8(v80, &qword_100424008, &qword_1003834D8);
              v85 = v84(v81 + v78, 1, v83);
              v86 = v145;
              if (v85 == 1)
              {
                sub_1000059A8(v81, &qword_100424008, &qword_1003834D8);
LABEL_33:
                v91 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                swift_beginAccess();
                sub_10000A0A4(v51 + v91, v86, &qword_100424010, &qword_1003834E0);
                v92 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                v93 = v86;
                v94 = v156;
                swift_beginAccess();
                v95 = *(v135 + 48);
                v96 = v138;
                sub_10000A0A4(v93, v138, &qword_100424010, &qword_1003834E0);
                v82 = v96;
                sub_10000A0A4(v94 + v92, v96 + v95, &qword_100424010, &qword_1003834E0);
                v97 = v137;
                v98 = *(v136 + 48);
                if (v98(v96, 1, v137) == 1)
                {
                  sub_1000059A8(v93, &qword_100424010, &qword_1003834E0);
                  v99 = v98(v96 + v95, 1, v97);
                  v100 = v139;
                  if (v99 == 1)
                  {
                    sub_1000059A8(v96, &qword_100424010, &qword_1003834E0);
LABEL_40:
                    v106 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    swift_beginAccess();
                    sub_10000A0A4(v51 + v106, v100, &qword_100424018, &qword_1003834E8);
                    v107 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    v108 = v156;
                    swift_beginAccess();
                    v109 = *(v130 + 48);
                    v110 = v125;
                    sub_10000A0A4(v100, v125, &qword_100424018, &qword_1003834E8);
                    v82 = v110;
                    sub_10000A0A4(v108 + v107, v110 + v109, &qword_100424018, &qword_1003834E8);
                    v111 = v132;
                    v112 = *(v131 + 48);
                    if (v112(v110, 1, v132) == 1)
                    {
                      sub_1000059A8(v100, &qword_100424018, &qword_1003834E8);
                      if (v112(v110 + v109, 1, v111) == 1)
                      {
                        sub_1000059A8(v110, &qword_100424018, &qword_1003834E8);
LABEL_52:
                        v117 = v51 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
                        swift_beginAccess();
                        v118 = *v117;
                        v119 = *(v117 + 4);

                        v120 = v156 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
                        swift_beginAccess();
                        v121 = *v120;
                        v122 = *(v120 + 4);

                        if ((v119 & 1) == 0)
                        {
                          if (v118 == v121)
                          {
                            v123 = v122;
                          }

                          else
                          {
                            v123 = 1;
                          }

                          return (v123 & 1) == 0;
                        }

                        return v122 != 0;
                      }

                      goto LABEL_45;
                    }

                    v113 = v128;
                    sub_10000A0A4(v110, v128, &qword_100424018, &qword_1003834E8);
                    if (v112(v110 + v109, 1, v111) == 1)
                    {
                      sub_1000059A8(v139, &qword_100424018, &qword_1003834E8);
                      sub_100246490(v113, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
LABEL_45:
                      v55 = &qword_10042A9C8;
                      v56 = &qword_100390CE0;
                      goto LABEL_46;
                    }

                    v114 = v110 + v109;
                    v115 = v127;
                    sub_1002463C0(v114, v127, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    v116 = sub_10024CF28(v113, v115);
                    sub_100246490(v115, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    sub_1000059A8(v139, &qword_100424018, &qword_1003834E8);
                    sub_100246490(v113, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    sub_1000059A8(v110, &qword_100424018, &qword_1003834E8);
                    if (v116)
                    {
                      goto LABEL_52;
                    }

LABEL_48:

                    return 0;
                  }
                }

                else
                {
                  v101 = v133;
                  sub_10000A0A4(v96, v133, &qword_100424010, &qword_1003834E0);
                  v102 = v98(v96 + v95, 1, v97);
                  v100 = v139;
                  if (v102 != 1)
                  {
                    v103 = v96 + v95;
                    v104 = v129;
                    sub_1002463C0(v103, v129, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    v105 = sub_1002541E4(v101, v104);
                    sub_100246490(v104, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    sub_1000059A8(v145, &qword_100424010, &qword_1003834E0);
                    sub_100246490(v101, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    sub_1000059A8(v96, &qword_100424010, &qword_1003834E0);
                    if ((v105 & 1) == 0)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_40;
                  }

                  sub_1000059A8(v145, &qword_100424010, &qword_1003834E0);
                  sub_100246490(v101, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                }

                v55 = &qword_10042A9D0;
                v56 = &qword_100390CE8;
LABEL_46:
                v57 = v82;
                goto LABEL_47;
              }
            }

            else
            {
              sub_10000A0A4(v81, v69, &qword_100424008, &qword_1003834D8);
              v87 = v84(v81 + v78, 1, v83);
              v86 = v145;
              if (v87 != 1)
              {
                v88 = v81 + v78;
                v89 = v134;
                sub_1002463C0(v88, v134, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                v90 = sub_1002507D4(v69, v89);
                sub_100246490(v89, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                sub_1000059A8(v153, &qword_100424008, &qword_1003834D8);
                sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                sub_1000059A8(v81, &qword_100424008, &qword_1003834D8);
                if ((v90 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_33;
              }

              sub_1000059A8(v153, &qword_100424008, &qword_1003834D8);
              sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
            }

            v55 = &qword_10042A9D8;
            v56 = &qword_100390CF0;
            goto LABEL_46;
          }

          sub_1000059A8(v154, &qword_100424000, &qword_1003834D0);
          sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
        }

        v55 = &qword_10042A9E0;
        v56 = &qword_100390CF8;
        v57 = v64;
LABEL_47:
        sub_1000059A8(v57, v55, v56);
        goto LABEL_48;
      }
    }

    else
    {
      sub_10000A0A4(v37, v41, &qword_100423FF8, &qword_1003834C8);
      if (v54(&v37[v53], 1, v33) != 1)
      {
        v58 = v147;
        sub_1002463C0(&v37[v53], v147, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v51 = v126;

        v59 = sub_1002540CC(v41, v58);
        sub_100246490(v58, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v43, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v37, &qword_100423FF8, &qword_1003834C8);
        if ((v59 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      sub_1000059A8(v43, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    v55 = &qword_10042A908;
    v56 = &qword_100390C20;
    v57 = v37;
    goto LABEL_47;
  }

  result = 0;
  if (v45 != 9 && v44 == v45)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100221874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A620, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &unk_10038B258);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100221914(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F18, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &unk_10038B1E0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100221980(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F18, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &unk_10038B1E0);

  return Message.hash(into:)();
}

uint64_t sub_100221A24()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346D8);
  sub_100005DF0(v0, qword_1004346D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "doppler";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "satellite_id";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "cn_ratio";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pseudo_range_rms_error";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "multi_path";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "code_phase";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "integer_code_phase";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "carrier_quality_ind";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "adr";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100221E04(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_4;
        }

        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
        sub_100268690();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 7 || result == 8 || result == 9)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100221FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  sub_1002221D0(v5, a1, a2, a3);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, 6);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, 7);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002221D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    sub_100268690();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002222A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[9]) = 6;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t sub_100222380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A618, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &unk_10038B3C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100222420(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &unk_10038B348);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022248C(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &unk_10038B348);

  return Message.hash(into:)();
}

uint64_t sub_100222534()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346F0);
  sub_100005DF0(v0, qword_1004346F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signal_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code_phase_ambiguity";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "measurement_count";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "measurement";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002227CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &unk_10038B348);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v6 = result;
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

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 32) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
    sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &unk_10038B348);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100222AE0@<X0>(int *a1@<X0>, void *a2@<X8>)
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
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t sub_100222B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A610, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &unk_10038B528);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100222C1C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &unk_10038B4B0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100222C88(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &unk_10038B4B0);

  return Message.hash(into:)();
}

uint64_t sub_100222D30()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434708);
  sub_100005DF0(v0, qword_100434708);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signal_measurement_info";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100222F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
        sub_10026863C();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &unk_10038B4B0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100223078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_10026863C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100223138(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100223138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100424020, &qword_1003834F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424020, &qword_1003834F0);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &unk_10038B4B0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
}

uint64_t sub_1002233EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A608, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &unk_10038B690);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022348C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &unk_10038B618);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002234F8(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &unk_10038B618);

  return Message.hash(into:)();
}

uint64_t sub_10022359C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434720);
  sub_100005DF0(v0, qword_100434720);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "time_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ganss_tod";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ganss_tod_frac";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tod_delta";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ganss_tod_uncertainity";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "measured_time_params";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ganss_measurements_count";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ganss_measurement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022392C(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          v8 = &unk_1003899F8;
          v9 = &qword_100424D88;
          goto LABEL_19;
        }

        if (result == 7)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
          v8 = &unk_10038B618;
          v9 = &qword_100424F58;
LABEL_19:
          sub_100256CB4(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          sub_10026878C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
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

int *sub_100223B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = result;
  if (*(v5 + result[5]) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_10026878C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100223D44(v5, a1, a2, a3);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, 7);
  sub_100223F60(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100223D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(a1 + *(v12 + 40), v7, &qword_100424028, &qword_1003834F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424028, &qword_1003834F8);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &unk_1003899F8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
}

uint64_t sub_100223F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100424030, &qword_100383500);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(a1 + *(v12 + 48), v7, &qword_100424030, &qword_100383500);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424030, &qword_100383500);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &unk_10038B618);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
}

uint64_t sub_1002241C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 6;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v12 = a1[11];
  v13 = a1[12];
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a2 + v13, 1, 1, v15);
}

uint64_t sub_10022430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A600, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &unk_10038B7F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002243AC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &unk_10038B780);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100224418(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &unk_10038B780);

  return Message.hash(into:)();
}

uint64_t sub_1002244BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434738);
  sub_100005DF0(v0, qword_100434738);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "doppler";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "whole_chips";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "frac_chips";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "satellite_id";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cn_ratio";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "pseudo_range_rms_error";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "multi_path";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "code_phase";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "integer_code_phase";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100224898(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
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
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          sub_100268690();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 8 || result == 9)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100224A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, 6);
  sub_100235660(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, sub_100268690, &type metadata for Proto_Gnss_Emergency_MultipathIndicator);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100224CF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[11]) = 6;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t sub_100224DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5F8, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &unk_10038B960);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100224E68(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &unk_10038B8E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100224ED4(uint64_t a1, uint64_t a2)
{
  sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &unk_10038B8E8);

  return Message.hash(into:)();
}

uint64_t sub_100224F7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434750);
  sub_100005DF0(v0, qword_100434750);
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
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_week";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nr_of_sats";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "measurements";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "measured_time_params";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "code_phase_ambiguity";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "gps_todpresent";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "gps_tod";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100225350()
{
  type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = &_swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_100461328 = v0;
  return result;
}

uint64_t sub_10022547C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v3 - 8);
  v33 = &v28 - v4;
  v5 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v5 - 8);
  v29 = &v28 - v6;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v28 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v32 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = *(a1 + 16);
  LOBYTE(v11) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 20) = v11;
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 24);
  LOBYTE(v13) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v11;
  *(v1 + 28) = v13;
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 32);
  v14 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 36) = v14;
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 40);
  v15 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v11;
  *(v1 + 44) = v15;
  swift_beginAccess();
  v16 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v16;
  v17 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v18 = v29;
  sub_10000A0A4(a1 + v17, v29, &qword_100424038, &qword_100383508);
  v19 = v28;
  swift_beginAccess();

  sub_10000AD64(v18, v1 + v19, &qword_100424038, &qword_100383508);
  swift_endAccess();
  v20 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  LODWORD(v17) = *v20;
  LOBYTE(v20) = *(v20 + 4);
  v21 = v30;
  swift_beginAccess();
  *v21 = v17;
  *(v21 + 4) = v20;
  v22 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  LODWORD(v20) = *v22;
  LOBYTE(v22) = *(v22 + 4);
  v23 = v31;
  swift_beginAccess();
  *v23 = v20;
  *(v23 + 4) = v22;
  v24 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v25 = v33;
  sub_10000A0A4(a1 + v24, v33, &qword_100423F58, &qword_100383428);

  v26 = v32;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v26, &qword_100423F58, &qword_100383428);
  swift_endAccess();
  return v1;
}

uint64_t sub_100225918()
{

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams, &qword_100424038, &qword_100383508);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod, &qword_100423F58, &qword_100383428);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002259B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = swift_allocObject();
    sub_10022547C(v8);
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

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_23;
      }

LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 6)
    {
      if (result == 5)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
        sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &unk_10038B8E8);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_24;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams;
      v14 = &unk_100388EB8;
      v15 = &qword_100424CD0;
    }

    else
    {
      if (result == 7 || result == 8)
      {
LABEL_23:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_24;
      }

      if (result != 9)
      {
        goto LABEL_25;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD;
      v14 = &unk_100389020;
      v15 = &qword_100424CE8;
    }

    sub_100256CB4(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_24:
    swift_endAccess();
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100225D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 20) & 1) == 0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 28) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 36) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 44) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if (*(*(v9 + 48) + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
      sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &unk_10038B8E8);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_100225FF8(v9, a1, a2, a3);
    v11 = v9 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
    swift_beginAccess();
    if ((*(v11 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_100226220(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100225FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100424038, &qword_100383508);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100424038, &qword_100383508);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &unk_100388EB8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
}

uint64_t sub_100226220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100423F58, &qword_100383428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100423F58, &qword_100383428);
  }

  sub_1002463C0(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &unk_100389020);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

BOOL sub_10022648C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100024A2C(&qword_10042A910, &qword_100390C28);
  __chkstk_darwin(v64);
  v67 = &v61 - v6;
  v7 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v8 = __chkstk_darwin(v7 - 8);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v61 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_10042A918, &qword_100390C30);
  __chkstk_darwin(v14);
  v71 = &v61 - v15;
  v16 = sub_100024A2C(&qword_100424038, &qword_100383508);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  swift_beginAccess();
  v24 = *(a2 + 20);
  if (v23)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 16))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 24);
  v26 = *(a1 + 28);
  swift_beginAccess();
  v27 = *(a2 + 28);
  if (v26)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 24))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 32);
  v29 = *(a1 + 36);
  swift_beginAccess();
  v30 = *(a2 + 36);
  if (v29)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 32))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 40);
  v32 = *(a1 + 44);
  swift_beginAccess();
  v33 = *(a2 + 44);
  if (v32)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 40))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = *(a2 + 48);

  LODWORD(v62) = sub_100245798(v34, v35, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, sub_10025019C);

  if ((v62 & 1) == 0)
  {
    goto LABEL_32;
  }

  v36 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(a1 + v36, v21, &qword_100424038, &qword_100383508);
  v37 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v38 = *(v14 + 48);
  v39 = v71;
  sub_10000A0A4(v21, v71, &qword_100424038, &qword_100383508);
  v62 = v38;
  sub_10000A0A4(a2 + v37, v39 + v38, &qword_100424038, &qword_100383508);
  v40 = *(v70 + 48);
  if (v40(v39, 1, v11) == 1)
  {
    sub_1000059A8(v21, &qword_100424038, &qword_100383508);
    if (v40(v39 + v62, 1, v11) == 1)
    {
      sub_1000059A8(v39, &qword_100424038, &qword_100383508);
      goto LABEL_35;
    }

LABEL_31:
    sub_1000059A8(v39, &qword_10042A918, &qword_100390C30);
    goto LABEL_32;
  }

  sub_10000A0A4(v39, v19, &qword_100424038, &qword_100383508);
  if (v40(v39 + v62, 1, v11) == 1)
  {
    sub_1000059A8(v21, &qword_100424038, &qword_100383508);
    sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    goto LABEL_31;
  }

  sub_1002463C0(v39 + v62, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v42 = sub_10024AD88(v19, v13);
  sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_1000059A8(v21, &qword_100424038, &qword_100383508);
  sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_1000059A8(v39, &qword_100424038, &qword_100383508);
  if ((v42 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 4);
  v46 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  if (v45)
  {
    v47 = v68;
    v48 = v69;
    if ((*(v46 + 4) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v47 = v68;
    v48 = v69;
    if ((*(v46 + 4) & 1) != 0 || v44 != *v46)
    {
      goto LABEL_32;
    }
  }

  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent);
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 4);
  v52 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  if (v51)
  {
    if (*(v52 + 4))
    {
      goto LABEL_45;
    }

LABEL_32:

    return 0;
  }

  if ((*(v52 + 4) & 1) != 0 || v50 != *v52)
  {
    goto LABEL_32;
  }

LABEL_45:
  v53 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(a1 + v53, v48, &qword_100423F58, &qword_100383428);
  v54 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v55 = *(v64 + 48);
  v56 = v67;
  sub_10000A0A4(v48, v67, &qword_100423F58, &qword_100383428);
  sub_10000A0A4(a2 + v54, v56 + v55, &qword_100423F58, &qword_100383428);
  v57 = v66;
  v58 = *(v65 + 48);
  if (v58(v56, 1, v66) != 1)
  {
    sub_10000A0A4(v56, v47, &qword_100423F58, &qword_100383428);
    if (v58(v56 + v55, 1, v57) == 1)
    {

      sub_1000059A8(v69, &qword_100423F58, &qword_100383428);
      sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
      goto LABEL_50;
    }

    v59 = v63;
    sub_1002463C0(v56 + v55, v63, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    v60 = sub_100255EF8(v47, v59, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

    sub_100246490(v59, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    sub_1000059A8(v69, &qword_100423F58, &qword_100383428);
    sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    sub_1000059A8(v56, &qword_100423F58, &qword_100383428);
    return (v60 & 1) != 0;
  }

  sub_1000059A8(v48, &qword_100423F58, &qword_100383428);
  if (v58(v56 + v55, 1, v57) != 1)
  {
LABEL_50:
    sub_1000059A8(v56, &qword_10042A910, &qword_100390C28);
    return 0;
  }

  sub_1000059A8(v56, &qword_100423F58, &qword_100383428);
  return 1;
}