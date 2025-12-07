uint64_t sub_1001779FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  v35 = a1;
  v14 = v34[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v33;
      sub_1000112AC(&v13[v15], v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v34[6];
  v22 = *(v35 + v21);
  v23 = *(a2 + v21);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v34[7];
  v25 = (v35 + v24);
  v26 = *(v35 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_7;
    }
  }

  v29 = v34[8];
  v30 = *(v35 + v29);
  v31 = *(a2 + v29);
  if (v30 == 4)
  {
    if (v31 == 4)
    {
      goto LABEL_24;
    }
  }

  else if (v30 == v31)
  {
LABEL_24:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100177DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = __chkstk_darwin(v12);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
  v53 = a1;
  v17 = v52[5];
  v49 = v12;
  v18 = *(v12 + 48);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  v54 = a2;
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v20 = v16;
LABEL_7:
    sub_1000059A8(v20, &qword_100423CE0, &qword_100393E90);
    goto LABEL_8;
  }

  sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v23 = &v16[v18];
  v24 = v51;
  sub_1000112AC(v23, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v25 = sub_1001853C4(v11, v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = v52[6];
  v27 = (v53 + v26);
  v28 = *(v53 + v26 + 8);
  v29 = v54;
  v30 = (v54 + v26);
  v31 = *(v54 + v26 + 8);
  if (v28)
  {
    if (!v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v27 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_8;
    }
  }

  v32 = v52[7];
  v33 = (v53 + v32);
  v34 = *(v53 + v32 + 8);
  v35 = (v54 + v32);
  v36 = *(v54 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_8;
    }
  }

  v37 = v4;
  v38 = v52[8];
  v39 = v50;
  v40 = *(v49 + 48);
  sub_10000A0A4(v53 + v38, v50, &qword_10041CA30, &qword_100374460);
  v41 = v29 + v38;
  v42 = v37;
  sub_10000A0A4(v41, v39 + v40, &qword_10041CA30, &qword_100374460);
  if (v19(v39, 1, v37) == 1)
  {
    if (v19((v39 + v40), 1, v37) == 1)
    {
      sub_1000059A8(v39, &qword_10041CA30, &qword_100374460);
LABEL_30:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_28;
  }

  v43 = v48;
  sub_10000A0A4(v39, v48, &qword_10041CA30, &qword_100374460);
  if (v19((v39 + v40), 1, v42) == 1)
  {
    sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_28:
    v20 = v39;
    goto LABEL_7;
  }

  v44 = v39 + v40;
  v45 = v51;
  sub_1000112AC(v44, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v46 = sub_1001853C4(v43, v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v39, &qword_10041CA30, &qword_100374460);
  if (v46)
  {
    goto LABEL_30;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1001783D4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - v6;
  v49 = sub_100024A2C(&qword_100423D88, &qword_100382FF0);
  __chkstk_darwin(v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v55 + v19;
  v22 = v55;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  sub_10000A0A4(v54 + v35, v52, &qword_10041CAC0, &qword_1003744F0);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CAC0, &qword_1003744F0);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      sub_1000059A8(v37, &qword_10041CAC0, &qword_1003744F0);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  sub_10000A0A4(v39, v48, &qword_10041CAC0, &qword_1003744F0);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
LABEL_22:
    v24 = &qword_100423D88;
    v25 = &qword_100382FF0;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  sub_1000112AC(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v45 = sub_100178C7C(v42, v44);
  sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_1000059A8(v39, &qword_10041CAC0, &qword_1003744F0);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_100178A38(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100178B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
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

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 5)
  {
    if (v13 != 5)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

LABEL_26:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100178C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v51 = a1;
  v14 = v50[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v49;
      sub_1000112AC(&v13[v15], v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v50[6];
  v22 = (v51 + v21);
  v23 = *(v51 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v50[7];
  v27 = (v51 + v26);
  v28 = *(v51 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v50[8];
  v32 = (v51 + v31);
  v33 = *(v51 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v36 = v50[9];
  v37 = *(v51 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    goto LABEL_7;
  }

  v39 = v50[10];
  v40 = *(v51 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    goto LABEL_7;
  }

  v42 = v50[11];
  v43 = *(v51 + v42);
  v44 = *(a2 + v42);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v44 == 2 || ((v43 ^ v44) & 1) != 0)
  {
    goto LABEL_7;
  }

  v45 = v50[12];
  v46 = *(v51 + v45);
  v47 = *(a2 + v45);
  if (v46 == 2)
  {
    if (v47 == 2)
    {
LABEL_48:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v47 != 2 && ((v46 ^ v47) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10017914C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_100024A2C(&qword_100423DA0, &qword_100383008);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_14;
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
      goto LABEL_14;
    }
  }

  v20 = a1;
  v21 = a2;
  v22 = *(v14 + 24);
  v23 = *(v11 + 48);
  v37 = v20;
  v38 = v14;
  sub_10000A0A4(v20 + v22, v13, &qword_10041CA90, &qword_1003744C0);
  sub_10000A0A4(v21 + v22, &v13[v23], &qword_10041CA90, &qword_1003744C0);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v10, &qword_10041CA90, &qword_1003744C0);
    if (v24(&v13[v23], 1, v4) != 1)
    {
      sub_1000112AC(&v13[v23], v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v29 = *(v4 + 20);
      v30 = *&v10[v29];
      v31 = *&v7[v29];
      if (v30 == v31 || (, , v32 = sub_1001321C8(v30, v31), , , v32))
      {
        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        sub_1000059A8(v13, &qword_10041CA90, &qword_1003744C0);
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v25 = &qword_10041CA90;
      v26 = &qword_1003744C0;
LABEL_13:
      sub_1000059A8(v13, v25, v26);
      goto LABEL_14;
    }

    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_12:
    v25 = &qword_100423DA0;
    v26 = &qword_100383008;
    goto LABEL_13;
  }

  if (v24(&v13[v23], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v13, &qword_10041CA90, &qword_1003744C0);
LABEL_19:
  v34 = *(v38 + 28);
  v35 = *(v37 + v34);
  v36 = *(v21 + v34);
  if (v35 != 2)
  {
    if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v27 & 1;
  }

  if (v36 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1001795E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v5 = v4[5];
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

  v8 = v4[6];
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

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[11];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100179800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001798E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1001719FC(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, sub_10018450C) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v5 = *(v4 + 24);
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

  v10 = *(v4 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100179A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v54 = a1;
  v14 = v53[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v52;
      sub_1000112AC(&v13[v15], v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v53[6];
  v22 = (v54 + v21);
  v23 = *(v54 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v53[7];
  v27 = (v54 + v26);
  v28 = *(v54 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v53[8];
  v32 = (v54 + v31);
  v33 = *(v54 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v36 = v53[9];
  v37 = (v54 + v36);
  v38 = *(v54 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v41 = v53[10];
  v42 = (v54 + v41);
  v43 = *(v54 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v53[11];
  v47 = (v54 + v46);
  v48 = *(v54 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (v50)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100179EDC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = __chkstk_darwin(v7 - 8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = __chkstk_darwin(v12);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v47 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  v17 = *(v47 + 24);
  v45 = v12;
  v18 = *(v12 + 48);
  v49 = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  v48 = a2;
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
  v23 = v44;
  sub_1000112AC(v22, v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v24 = sub_1001853C4(v11, v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = v46;
  v26 = v47;
  v27 = *(v47 + 28);
  v28 = *(v45 + 48);
  sub_10000A0A4(v49 + v27, v46, &qword_10041CA30, &qword_100374460);
  v29 = v48;
  sub_10000A0A4(v48 + v27, v25 + v28, &qword_10041CA30, &qword_100374460);
  v30 = v20;
  if (v19(v25, 1, v20) != 1)
  {
    v31 = v43;
    sub_10000A0A4(v25, v43, &qword_10041CA30, &qword_100374460);
    if (v19((v25 + v28), 1, v30) != 1)
    {
      v34 = v44;
      sub_1000112AC(v25 + v28, v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v35 = sub_1001853C4(v31, v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_100015F24(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_13;
  }

  if (v19((v25 + v28), 1, v20) != 1)
  {
LABEL_13:
    v21 = v25;
    goto LABEL_14;
  }

  sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
LABEL_18:
  v36 = *(v26 + 32);
  v37 = *(v49 + v36);
  v38 = *(v29 + v36);
  if (v37 == 7)
  {
    if (v38 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_15;
  }

  v39 = *(v26 + 36);
  v40 = *(v49 + v39);
  v41 = *(v29 + v39);
  if (v40 == 7)
  {
    if (v41 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_15;
  }

  if (sub_100170024(*v49, *v29))
  {
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v32 & 1;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_10017A4C8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - v6;
  v49 = sub_100024A2C(&qword_100423DB8, &qword_100383020);
  __chkstk_darwin(v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v55 + v19;
  v22 = v55;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  sub_10000A0A4(v54 + v35, v52, &qword_10041CA98, &qword_1003744C8);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CA98, &qword_1003744C8);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      sub_1000059A8(v37, &qword_10041CA98, &qword_1003744C8);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  sub_10000A0A4(v39, v48, &qword_10041CA98, &qword_1003744C8);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
LABEL_22:
    v24 = &qword_100423DB8;
    v25 = &qword_100383020;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  sub_1000112AC(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v45 = sub_10017C17C(v42, v44);
  sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_1000059A8(v39, &qword_10041CA98, &qword_1003744C8);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10017AB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
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

  v13 = v4[7];
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

  v18 = v4[8];
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

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 == 2)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

LABEL_46:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017AD50(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017AE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_10017AF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  v35 = a1;
  v14 = v34[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v33;
      sub_1000112AC(&v13[v15], v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v34[6];
  v22 = *(v35 + v21);
  v23 = *(a2 + v21);
  if (v22 == 8)
  {
    if (v23 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v34[7];
  v25 = *(v35 + v24);
  v26 = *(a2 + v24);
  if (v25 == 8)
  {
    if (v26 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v34[8];
  v28 = (v35 + v27);
  v29 = *(v35 + v27 + 4);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 4);
  if (v29)
  {
    if (v31)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10017B31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  v11 = sub_100024A2C(&qword_100423D20, &qword_100382F88);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_12;
  }

  v18 = a1;
  v19 = a2;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  v26[1] = v18;
  sub_10000A0A4(v18 + v20, v13, &qword_10041CB28, &qword_100374558);
  sub_10000A0A4(v19 + v20, &v13[v21], &qword_10041CB28, &qword_100374558);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10041CB28, &qword_100374558);
LABEL_15:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_11;
  }

  sub_10000A0A4(v13, v10, &qword_10041CB28, &qword_100374558);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
LABEL_11:
    sub_1000059A8(v13, &qword_100423D20, &qword_100382F88);
    goto LABEL_12;
  }

  sub_1000112AC(&v13[v21], v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v25 = sub_10017B7A0(v10, v7);
  sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_1000059A8(v13, &qword_10041CB28, &qword_100374558);
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_10017B6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 14)
  {
    if (v7 != 14)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017B7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = v4[5];
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

  v10 = v4[6];
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

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
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

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 4)
  {
    if (v25 != 4)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v4[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
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
      return 0;
    }
  }

  v31 = v4[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      return 0;
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
      return 0;
    }
  }

  v36 = v4[11];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v4[12];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[13];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 != 4)
  {
    if (v43 == v44)
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v44 != 4)
  {
    return 0;
  }

LABEL_52:
  v45 = v4[14];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017BA3C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CAC8, &qword_1003744F8);
  __chkstk_darwin(v5 - 8);
  v54 = &v52 - v6;
  v55 = sub_100024A2C(&qword_100423D80, &qword_100382FE8);
  __chkstk_darwin(v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v61 + v19;
  v22 = v61;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  sub_10000A0A4(v60 + v35, v58, &qword_10041CAC8, &qword_1003744F8);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CAC8, &qword_1003744F8);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      sub_1000059A8(v39, &qword_10041CAC8, &qword_1003744F8);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  sub_10000A0A4(v39, v54, &qword_10041CAC8, &qword_1003744F8);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
LABEL_22:
    v24 = &qword_100423D80;
    v25 = &qword_100382FE8;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  sub_1000112AC(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = sub_100141864(v47, v48);

    if ((v49 & 1) == 0)
    {
      sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      v24 = &qword_10041CAC8;
      v25 = &qword_1003744F8;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_1000059A8(v39, &qword_10041CAC8, &qword_1003744F8);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10017C17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 72)
  {
    if (v17 != 72)
    {
      goto LABEL_18;
    }
  }

  else if (v17 == 72 || qword_1003830C8[v16] != qword_1003830C8[v17])
  {
    goto LABEL_18;
  }

  v18 = v14[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_18;
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
      goto LABEL_18;
    }
  }

  v35 = v14;
  v23 = v14[7];
  v24 = *(v11 + 48);
  sub_10000A0A4(a1 + v23, v13, &qword_10041CA30, &qword_100374460);
  v25 = a2 + v23;
  v26 = v24;
  sub_10000A0A4(v25, &v13[v24], &qword_10041CA30, &qword_100374460);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v10, &qword_10041CA30, &qword_100374460);
    if (v27(&v13[v26], 1, v4) != 1)
    {
      sub_1000112AC(&v13[v26], v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v30 = sub_1001853C4(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_17:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_18;
  }

  if (v27(&v13[v26], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_21:
  v31 = v35[8];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 != 72)
  {
    if (v33 == 72 || qword_1003830C8[v32] != qword_1003830C8[v33])
    {
      goto LABEL_18;
    }

LABEL_26:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

  if (v33 == 72)
  {
    goto LABEL_26;
  }

LABEL_18:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_10017C5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v19 != v20)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
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
      return 0;
    }
  }

  v26 = v4[10];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 != 4)
  {
    if (v27 == v28)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v28 != 4)
  {
    return 0;
  }

LABEL_31:
  v29 = v4[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v4[12];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017C7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
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
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 67)
  {
    if (v23 != 67)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 != 5)
  {
    if (v25 == v26)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v26 != 5)
  {
    return 0;
  }

LABEL_27:
  v27 = v4[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 3)
  {
    if (v29 != 3)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017C968(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v67 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  __chkstk_darwin(v5 - 8);
  v68 = &v65[-v6];
  v69 = sub_100024A2C(&qword_100423DB0, &qword_100383018);
  __chkstk_darwin(v69);
  v72 = &v65[-v7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = __chkstk_darwin(v11 - 8);
  v73 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v75 = &v65[-v15];
  __chkstk_darwin(v14);
  v17 = &v65[-v16];
  v18 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v19 = __chkstk_darwin(v18);
  v74 = &v65[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v23 = &v65[-v22];
  __chkstk_darwin(v21);
  v25 = &v65[-v24];
  v78 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v79 = v18;
  v26 = v78[5];
  v27 = *(v18 + 48);
  v77 = a1;
  sub_10000A0A4(a1 + v26, v25, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v80 + v26, &v25[v27], &qword_10041CA30, &qword_100374460);
  v28 = *(v9 + 48);
  if (v28(v25, 1, v8) == 1)
  {
    if (v28(&v25[v27], 1, v8) == 1)
    {
      sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v25;
LABEL_14:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_15;
  }

  sub_10000A0A4(v25, v17, &qword_10041CA30, &qword_100374460);
  if (v28(&v25[v27], 1, v8) == 1)
  {
    sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = &v25[v27];
  v33 = v76;
  sub_1000112AC(v32, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = sub_1001853C4(v17, v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v25, &qword_10041CA30, &qword_100374460);
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v35 = v78;
  v36 = v78[6];
  v37 = *(v79 + 48);
  v38 = v77;
  sub_10000A0A4(v77 + v36, v23, &qword_10041CA30, &qword_100374460);
  v39 = v80 + v36;
  v40 = v80;
  sub_10000A0A4(v39, &v23[v37], &qword_10041CA30, &qword_100374460);
  if (v28(v23, 1, v8) == 1)
  {
    if (v28(&v23[v37], 1, v8) == 1)
    {
      sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v41 = v75;
  sub_10000A0A4(v23, v75, &qword_10041CA30, &qword_100374460);
  if (v28(&v23[v37], 1, v8) == 1)
  {
    sub_100015F24(v41, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v23;
    goto LABEL_14;
  }

  v44 = &v23[v37];
  v45 = v76;
  sub_1000112AC(v44, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v66 = sub_1001853C4(v41, v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v41, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v46 = v35[7];
  v47 = *(v38 + v46);
  v48 = *(v40 + v46);
  if (v47 == 19)
  {
    if (v48 != 19)
    {
      goto LABEL_15;
    }
  }

  else if (v47 != v48)
  {
    goto LABEL_15;
  }

  v49 = v35[8];
  v50 = *(v79 + 48);
  v51 = v74;
  sub_10000A0A4(v38 + v49, v74, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v40 + v49, &v51[v50], &qword_10041CA30, &qword_100374460);
  if (v28(v51, 1, v8) != 1)
  {
    v52 = v73;
    sub_10000A0A4(v51, v73, &qword_10041CA30, &qword_100374460);
    if (v28(&v51[v50], 1, v8) != 1)
    {
      v53 = &v51[v50];
      v54 = v76;
      sub_1000112AC(v53, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v55 = sub_1001853C4(v52, v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v51, &qword_10041CA30, &qword_100374460);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

    sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_27;
  }

  if (v28(&v51[v50], 1, v8) != 1)
  {
LABEL_27:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v51;
    goto LABEL_14;
  }

  sub_1000059A8(v51, &qword_10041CA30, &qword_100374460);
LABEL_29:
  v56 = v78[9];
  v57 = *(v69 + 48);
  v58 = v72;
  sub_10000A0A4(v38 + v56, v72, &qword_10041CAA0, &qword_1003744D0);
  sub_10000A0A4(v40 + v56, &v58[v57], &qword_10041CAA0, &qword_1003744D0);
  v59 = v71;
  v60 = *(v70 + 48);
  if (v60(v58, 1, v71) == 1)
  {
    if (v60(&v58[v57], 1, v59) == 1)
    {
      sub_1000059A8(v58, &qword_10041CAA0, &qword_1003744D0);
LABEL_36:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }

    goto LABEL_34;
  }

  v61 = v68;
  sub_10000A0A4(v58, v68, &qword_10041CAA0, &qword_1003744D0);
  if (v60(&v58[v57], 1, v59) == 1)
  {
    sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
LABEL_34:
    v29 = &qword_100423DB0;
    v30 = &qword_100383018;
    v31 = v58;
    goto LABEL_14;
  }

  v62 = &v58[v57];
  v63 = v67;
  sub_1000112AC(v62, v67, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v64 = sub_10017C7B4(v61, v63);
  sub_100015F24(v63, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_1000059A8(v58, &qword_10041CAA0, &qword_1003744D0);
  if (v64)
  {
    goto LABEL_36;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_10017D3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    if (*v12 != *v14 || v13 != v15)
    {
      v17 = v4;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_25:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v23)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_10017D530(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v28 = a4;
  v29 = a5;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v26 = a3(0);
  v18 = *(v26 + 24);
  v19 = *(v15 + 56);
  v30 = a1;
  sub_10000A0A4(a1 + v18, v17, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v18, &v17[v19], &qword_10041CA30, &qword_100374460);
  v20 = *(v9 + 48);
  if (v20(v17, 1, v8) == 1)
  {
    if (v20(&v17[v19], 1, v8) == 1)
    {
      sub_1000059A8(v17, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v17, v13, &qword_10041CA30, &qword_100374460);
  if (v20(&v17[v19], 1, v8) == 1)
  {
    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v17, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v21 = v27;
  sub_1000112AC(&v17[v19], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v22 = sub_1001853C4(v13, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v17, &qword_10041CA30, &qword_100374460);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1001705AC(*v30, *a2, v28, v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t sub_10017D8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v7 == 5 || qword_100383308[v6] != qword_100383308[v7])
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v10 == 5 || qword_100383308[v9] != qword_100383308[v10])
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017DA48(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
  __chkstk_darwin(v5 - 8);
  v87 = &v85 - v6;
  v88 = sub_100024A2C(&qword_100423D30, &qword_100382F98);
  __chkstk_darwin(v88);
  v91 = &v85 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  __chkstk_darwin(v10 - 8);
  v93 = &v85 - v11;
  v94 = sub_100024A2C(&qword_100423D38, &qword_100382FA0);
  __chkstk_darwin(v94);
  v97 = &v85 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v17 - 8);
  v19 = &v85 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v85 - v22;
  v98 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  v99 = a1;
  v24 = *(v98 + 20);
  v25 = *(v21 + 56);
  sub_10000A0A4(a1 + v24, v23, &qword_10041CA30, &qword_100374460);
  v26 = v100 + v24;
  v27 = v100;
  sub_10000A0A4(v26, &v23[v25], &qword_10041CA30, &qword_100374460);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v23;
LABEL_15:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_16;
  }

  sub_10000A0A4(v23, v19, &qword_10041CA30, &qword_100374460);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v23[v25], v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = sub_1001853C4(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v34 = v98;
  v33 = v99;
  v35 = *(v98 + 24);
  v36 = *(v94 + 48);
  v37 = v97;
  sub_10000A0A4(v99 + v35, v97, &qword_10041CB10, &qword_100374540);
  sub_10000A0A4(v27 + v35, v37 + v36, &qword_10041CB10, &qword_100374540);
  v38 = v96;
  v39 = *(v95 + 48);
  if (v39(v37, 1, v96) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_1000059A8(v37, &qword_10041CB10, &qword_100374540);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v40 = v93;
  sub_10000A0A4(v37, v93, &qword_10041CB10, &qword_100374540);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
LABEL_13:
    v29 = &qword_100423D38;
    v30 = &qword_100382FA0;
LABEL_14:
    v31 = v37;
    goto LABEL_15;
  }

  v43 = v92;
  sub_1000112AC(v37 + v36, v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  v44 = *(v38 + 20);
  v45 = *(v40 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {

    v47 = sub_1001587AC(v45, v46);

    if ((v47 & 1) == 0)
    {
      sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      v29 = &qword_10041CB10;
      v30 = &qword_100374540;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_1000059A8(v37, &qword_10041CB10, &qword_100374540);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v49 = v34[7];
  v50 = *(v33 + v49);
  v51 = *(v27 + v49);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    goto LABEL_16;
  }

  v52 = v34[8];
  v53 = (v33 + v52);
  v54 = *(v33 + v52 + 4);
  v55 = (v27 + v52);
  v56 = *(v27 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_16;
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
      goto LABEL_16;
    }
  }

  v57 = v34[9];
  v58 = *(v33 + v57);
  v59 = *(v27 + v57);
  if (v58 == 5)
  {
    if (v59 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v58 != v59)
  {
    goto LABEL_16;
  }

  v60 = v34[10];
  v61 = *(v88 + 48);
  v62 = v91;
  sub_10000A0A4(v33 + v60, v91, &qword_10041CB18, &qword_100374548);
  v63 = v27 + v60;
  v37 = v62;
  sub_10000A0A4(v63, v62 + v61, &qword_10041CB18, &qword_100374548);
  v64 = v90;
  v65 = *(v89 + 48);
  if (v65(v62, 1, v90) != 1)
  {
    v71 = v87;
    sub_10000A0A4(v37, v87, &qword_10041CB18, &qword_100374548);
    if (v65(v37 + v61, 1, v64) == 1)
    {
      sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
      goto LABEL_45;
    }

    v72 = v37 + v61;
    v73 = v86;
    sub_1000112AC(v72, v86, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    v74 = *(v64 + 20);
    v75 = (v71 + v74);
    v76 = *(v71 + v74 + 4);
    v77 = (v73 + v74);
    v78 = *(v73 + v74 + 4);
    if (v76)
    {
      if (!v78)
      {
LABEL_48:
        sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        v29 = &qword_10041CB18;
        v30 = &qword_100374548;
        goto LABEL_14;
      }
    }

    else
    {
      if (*v75 != *v77)
      {
        LOBYTE(v78) = 1;
      }

      if (v78)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    sub_1000059A8(v37, &qword_10041CB18, &qword_100374548);
    if ((v84 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  if (v65(v62 + v61, 1, v64) != 1)
  {
LABEL_45:
    v29 = &qword_100423D30;
    v30 = &qword_100382F98;
    goto LABEL_14;
  }

  sub_1000059A8(v62, &qword_10041CB18, &qword_100374548);
LABEL_40:
  v66 = v34[11];
  v67 = (v33 + v66);
  v68 = *(v33 + v66 + 4);
  v69 = (v27 + v66);
  v70 = *(v27 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_16;
    }
  }

  v79 = v34[12];
  v80 = (v33 + v79);
  v81 = *(v33 + v79 + 4);
  v82 = (v27 + v79);
  v83 = *(v27 + v79 + 4);
  if (v81)
  {
    if (v83)
    {
LABEL_63:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if ((v83 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_16:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_10017E5AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(char *, char *))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v26 = a3(0);
  v19 = *(v26 + 24);
  v20 = *(v16 + 56);
  v31 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v19, &v18[v20], &qword_10041CA30, &qword_100374460);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v18, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v22 = v27;
  sub_1000112AC(&v18[v20], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v23 = sub_1001853C4(v14, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_10017139C(*v31, *a2, v28, v29, v30) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t sub_10017E950(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - v6;
  v49 = sub_100024A2C(&qword_100423D98, &qword_100383000);
  __chkstk_darwin(v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v55 + v19;
  v22 = v55;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  sub_10000A0A4(v54 + v35, v52, &qword_10041CAB0, &qword_1003744E0);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CAB0, &qword_1003744E0);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      sub_1000059A8(v37, &qword_10041CAB0, &qword_1003744E0);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  sub_10000A0A4(v39, v48, &qword_10041CAB0, &qword_1003744E0);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
LABEL_22:
    v24 = &qword_100423D98;
    v25 = &qword_100383000;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  sub_1000112AC(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v45 = sub_10017F6F4(v42, v44);
  sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_1000059A8(v39, &qword_10041CAB0, &qword_1003744E0);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10017EFB4(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v5 - 8);
  v54 = &v52 - v6;
  v55 = sub_100024A2C(&qword_100423DA0, &qword_100383008);
  __chkstk_darwin(v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v61 + v19;
  v22 = v61;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  sub_10000A0A4(v60 + v35, v58, &qword_10041CA90, &qword_1003744C0);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CA90, &qword_1003744C0);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      sub_1000059A8(v39, &qword_10041CA90, &qword_1003744C0);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  sub_10000A0A4(v39, v54, &qword_10041CA90, &qword_1003744C0);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_22:
    v24 = &qword_100423DA0;
    v25 = &qword_100383008;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  sub_1000112AC(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = sub_1001321C8(v47, v48);

    if (!v49)
    {
      sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v24 = &qword_10041CA90;
      v25 = &qword_1003744C0;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_1000059A8(v39, &qword_10041CA90, &qword_1003744C0);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10017F6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
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

  v13 = v4[7];
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

  v18 = v4[8];
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

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = v4[14];
  v49 = *(a1 + v48);
  v50 = *(a2 + v48);
  if (v49 != 8)
  {
    if (v49 == v50)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (v50 != 8)
  {
    return 0;
  }

LABEL_57:
  v51 = v4[15];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      return 0;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017F9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v42 = a1;
  v14 = v41[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v40;
      sub_1000112AC(&v13[v15], v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v41[6];
  v22 = *(v42 + v21);
  v23 = *(a2 + v21);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v41[7];
  v25 = *(v42 + v24);
  v26 = *(a2 + v24);
  if (v25 == 4)
  {
    if (v26 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v41[8];
  v28 = *(v42 + v27);
  v29 = *(a2 + v27);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_7;
  }

  v30 = v41[9];
  v31 = *(v42 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_7;
  }

  v33 = v41[10];
  v34 = *(v42 + v33);
  v35 = *(a2 + v33);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    goto LABEL_7;
  }

  v36 = v41[11];
  v37 = *(v42 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 == 2)
    {
LABEL_37:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v38 != 2 && ((v37 ^ v38) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10017FE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v5 = *(v4 + 20);
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

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017FF0C(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  __chkstk_darwin(v5 - 8);
  v65 = &v63 - v6;
  v67 = sub_100024A2C(&qword_100423CE8, &qword_100382F50);
  __chkstk_darwin(v67);
  v70 = &v63 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  __chkstk_darwin(v10 - 8);
  v71 = &v63 - v11;
  v72 = sub_100024A2C(&qword_100423CF0, &qword_100382F58);
  __chkstk_darwin(v72);
  v75 = &v63 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v17 - 8);
  v19 = &v63 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v63 - v22;
  v76 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v77 = a1;
  v24 = v76[5];
  v25 = *(v21 + 56);
  sub_10000A0A4(a1 + v24, v23, &qword_10041CA30, &qword_100374460);
  v26 = v78 + v24;
  v27 = v78;
  sub_10000A0A4(v26, &v23[v25], &qword_10041CA30, &qword_100374460);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v23;
LABEL_28:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_29;
  }

  sub_10000A0A4(v23, v19, &qword_10041CA30, &qword_100374460);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v23[v25], v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = sub_1001853C4(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v34 = v76;
  v33 = v77;
  v35 = v76[6];
  v36 = (v77 + v35);
  v37 = *(v77 + v35 + 4);
  v38 = (v27 + v35);
  v39 = *(v27 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_29;
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
      goto LABEL_29;
    }
  }

  v40 = v76[7];
  v41 = *(v72 + 48);
  v42 = v75;
  sub_10000A0A4(v77 + v40, v75, &qword_10041CB58, &qword_100374588);
  v43 = v27 + v40;
  v44 = v42;
  sub_10000A0A4(v43, v42 + v41, &qword_10041CB58, &qword_100374588);
  v45 = v74;
  v46 = *(v73 + 48);
  if (v46(v42, 1, v74) != 1)
  {
    v47 = v71;
    sub_10000A0A4(v44, v71, &qword_10041CB58, &qword_100374588);
    if (v46(v44 + v41, 1, v45) != 1)
    {
      v48 = v44 + v41;
      v49 = v66;
      sub_1000112AC(v48, v66, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      v50 = sub_10017FE28(v47, v49);
      sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      sub_100015F24(v47, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      sub_1000059A8(v44, &qword_10041CB58, &qword_100374588);
      if ((v50 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    sub_100015F24(v47, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
LABEL_19:
    v29 = &qword_100423CF0;
    v30 = &qword_100382F58;
LABEL_27:
    v31 = v44;
    goto LABEL_28;
  }

  if (v46(v42 + v41, 1, v45) != 1)
  {
    goto LABEL_19;
  }

  sub_1000059A8(v42, &qword_10041CB58, &qword_100374588);
LABEL_21:
  v51 = v34[8];
  v52 = *(v67 + 48);
  v53 = v70;
  sub_10000A0A4(v33 + v51, v70, &qword_10041CB60, &qword_100374590);
  v54 = v27 + v51;
  v44 = v53;
  sub_10000A0A4(v54, v53 + v52, &qword_10041CB60, &qword_100374590);
  v55 = v69;
  v56 = *(v68 + 48);
  if (v56(v53, 1, v69) == 1)
  {
    if (v56(v53 + v52, 1, v55) == 1)
    {
      sub_1000059A8(v53, &qword_10041CB60, &qword_100374590);
LABEL_32:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_26;
  }

  v57 = v65;
  sub_10000A0A4(v44, v65, &qword_10041CB60, &qword_100374590);
  if (v56(v44 + v52, 1, v55) == 1)
  {
    sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
LABEL_26:
    v29 = &qword_100423CE8;
    v30 = &qword_100382F50;
    goto LABEL_27;
  }

  v60 = v44 + v52;
  v61 = v64;
  sub_1000112AC(v60, v64, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  v62 = sub_10017F9AC(v57, v61);
  sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_1000059A8(v44, &qword_10041CB60, &qword_100374590);
  if (v62)
  {
    goto LABEL_32;
  }

LABEL_29:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_100180830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v34 = a1;
  v14 = v33[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v32;
      sub_1000112AC(&v13[v15], v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v33[6];
  v22 = (v34 + v21);
  v23 = *(v34 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v33[7];
  v27 = (v34 + v26);
  v28 = *(v34 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (v30)
    {
LABEL_22:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100180C0C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CAF0, &qword_100374520);
  __chkstk_darwin(v5 - 8);
  v54 = &v52 - v6;
  v55 = sub_100024A2C(&qword_100423D58, &qword_100382FC0);
  __chkstk_darwin(v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v61 + v19;
  v22 = v61;
  sub_10000A0A4(v21, &v18[v20], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_100423CE0;
    v25 = &qword_100393E90;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  sub_10000A0A4(v60 + v35, v58, &qword_10041CAF0, &qword_100374520);
  v38 = v22 + v35;
  v39 = v37;
  sub_10000A0A4(v38, v37 + v36, &qword_10041CAF0, &qword_100374520);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      sub_1000059A8(v39, &qword_10041CAF0, &qword_100374520);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  sub_10000A0A4(v39, v54, &qword_10041CAF0, &qword_100374520);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
LABEL_22:
    v24 = &qword_100423D58;
    v25 = &qword_100382FC0;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  sub_1000112AC(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = sub_10014F64C(v47, v48);

    if (!v49)
    {
      sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      v24 = &qword_10041CAF0;
      v25 = &qword_100374520;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_1000059A8(v39, &qword_10041CAF0, &qword_100374520);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10018134C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v78 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v78 - v12;
  v80 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v81 = a1;
  v14 = v80[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v79;
      sub_1000112AC(&v13[v15], v79, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = sub_1001853C4(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v21 = v80[6];
  v22 = (v81 + v21);
  v23 = *(v81 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v80[7];
  v27 = (v81 + v26);
  v28 = *(v81 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v80[8];
  v32 = (v81 + v31);
  v33 = *(v81 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v36 = v80[9];
  v37 = (v81 + v36);
  v38 = *(v81 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v41 = v80[10];
  v42 = (v81 + v41);
  v43 = *(v81 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v80[11];
  v47 = (v81 + v46);
  v48 = *(v81 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_7;
    }
  }

  v51 = v80[12];
  v52 = (v81 + v51);
  v53 = *(v81 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_7;
    }
  }

  v56 = v80[13];
  v57 = (v81 + v56);
  v58 = *(v81 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_7;
    }
  }

  v61 = v80[14];
  v62 = (v81 + v61);
  v63 = *(v81 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_7;
    }
  }

  v66 = v80[15];
  v67 = *(v81 + v66);
  v68 = *(a2 + v66);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v68 == 2 || ((v67 ^ v68) & 1) != 0)
  {
    goto LABEL_7;
  }

  v69 = v80[16];
  v70 = *(v81 + v69);
  v71 = *(a2 + v69);
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v71 == 2 || ((v70 ^ v71) & 1) != 0)
  {
    goto LABEL_7;
  }

  v72 = v80[17];
  v73 = *(v81 + v72);
  v74 = *(a2 + v72);
  if (v73 == 2)
  {
    if (v74 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v74 == 2 || ((v73 ^ v74) & 1) != 0)
  {
    goto LABEL_7;
  }

  v75 = v80[18];
  v76 = *(v81 + v75);
  v77 = *(a2 + v75);
  if (v76 == 2)
  {
    if (v77 == 2)
    {
LABEL_84:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v77 != 2 && ((v76 ^ v77) & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100181958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100181A88(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CB08, &qword_100374538);
  __chkstk_darwin(v5 - 8);
  v58 = &v56 - v6;
  v59 = sub_100024A2C(&qword_100423D50, &qword_100382FB8);
  __chkstk_darwin(v59);
  v63 = &v56 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v62 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  v19 = *(v62 + 20);
  v20 = *(v16 + 56);
  v64 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v65 + v19, &v18[v20], &qword_10041CA30, &qword_100374460);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_100423CE0;
    v23 = &qword_100393E90;
    v24 = v18;
LABEL_15:
    sub_1000059A8(v24, v22, v23);
    goto LABEL_16;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v25 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v25 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v27 = v62;
  v26 = v63;
  v28 = *(v62 + 24);
  v29 = *(v59 + 48);
  v30 = v64;
  sub_10000A0A4(v64 + v28, v63, &qword_10041CB08, &qword_100374538);
  v31 = v65;
  sub_10000A0A4(v65 + v28, v26 + v29, &qword_10041CB08, &qword_100374538);
  v32 = v61;
  v33 = *(v60 + 48);
  if (v33(v26, 1, v61) != 1)
  {
    v34 = v58;
    sub_10000A0A4(v26, v58, &qword_10041CB08, &qword_100374538);
    if (v33(v26 + v29, 1, v32) != 1)
    {
      v37 = v57;
      sub_1000112AC(v26 + v29, v57, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v38 = *(v32 + 20);
      v39 = *(v34 + v38);
      v40 = *(v37 + v38);
      if (v39 == v40 || (, , v41 = sub_100154EDC(v39, v40), , , v41))
      {
        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        sub_1000059A8(v26, &qword_10041CB08, &qword_100374538);
        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v22 = &qword_10041CB08;
      v23 = &qword_100374538;
      goto LABEL_14;
    }

    sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
LABEL_13:
    v22 = &qword_100423D50;
    v23 = &qword_100382FB8;
LABEL_14:
    v24 = v26;
    goto LABEL_15;
  }

  if (v33(v26 + v29, 1, v32) != 1)
  {
    goto LABEL_13;
  }

  sub_1000059A8(v26, &qword_10041CB08, &qword_100374538);
LABEL_21:
  v43 = v27[7];
  v44 = (v30 + v43);
  v45 = *(v30 + v43 + 4);
  v46 = (v31 + v43);
  v47 = *(v31 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_16;
    }
  }

  v48 = v27[8];
  v49 = (v30 + v48);
  v50 = *(v30 + v48 + 4);
  v51 = (v31 + v48);
  v52 = *(v31 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_16;
    }
  }

  v53 = v27[9];
  v54 = *(v30 + v53);
  v55 = *(v31 + v53);
  if (v54 == 2)
  {
    if (v55 == 2)
    {
LABEL_39:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }
  }

  else if (v55 != 2 && ((v54 ^ v55) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_10018221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 5)
  {
    if (v18 != 5)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  v22 = v4[10];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001823D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v23 = a1;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v15 = *(a3(0) + 20);
  v16 = *(v12 + 56);
  sub_10000A0A4(v23 + v15, v14, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v15, &v14[v16], &qword_10041CA30, &qword_100374460);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_1000059A8(v14, &qword_10041CA30, &qword_100374460);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v14, v10, &qword_10041CA30, &qword_100374460);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v14, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v19 = v22;
  sub_1000112AC(&v14[v16], v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v20 = sub_1001853C4(v10, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v14, &qword_10041CA30, &qword_100374460);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100182748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v40 = a3(0);
  v41 = a1;
  v16 = v40[5];
  v17 = *(v13 + 56);
  sub_10000A0A4(a1 + v16, v15, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v16, &v15[v17], &qword_10041CA30, &qword_100374460);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    sub_10000A0A4(v15, v11, &qword_10041CA30, &qword_100374460);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v21 = v39;
      sub_1000112AC(&v15[v17], v39, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = sub_1001853C4(v11, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v15, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v23 = v40[6];
  v24 = (v41 + v23);
  v25 = *(v41 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_7;
    }
  }

  v28 = v40[7];
  v29 = (v41 + v28);
  v30 = *(v41 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_7;
    }
  }

  v33 = v40[8];
  v34 = (v41 + v33);
  v35 = *(v41 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (v37)
    {
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100182B5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1000112AC(&v13[v15], v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v18 = sub_1001853C4(v9, v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_100170CC8(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t sub_100182EEC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = v4[6];
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

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
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
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (sub_10016F7C4(*a1, *a2))
  {
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100183070(uint64_t *a1, uint64_t *a2)
{
  v69 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  __chkstk_darwin(v5 - 8);
  v62 = &v60 - v6;
  v63 = sub_100024A2C(&qword_100423CF8, &qword_100382F60);
  __chkstk_darwin(v63);
  v66 = &v60 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  __chkstk_darwin(v12 - 8);
  v14 = (&v60 - v13);
  v15 = sub_100024A2C(&qword_100423D00, &qword_100382F68);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v67 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v68 = a1;
  v19 = v67[6];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CB48, &qword_100374578);
  v21 = v69;
  sub_10000A0A4(v69 + v19, &v18[v20], &qword_10041CB48, &qword_100374578);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CB48, &qword_100374578);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_100423D00;
    v24 = &qword_100382F68;
    v25 = v18;
LABEL_7:
    sub_1000059A8(v25, v23, v24);
    goto LABEL_26;
  }

  sub_10000A0A4(v18, v14, &qword_10041CB48, &qword_100374578);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v26 = sub_100182EEC(v14, v11);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_1000059A8(v18, &qword_10041CB48, &qword_100374578);
  if ((v26 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v27 = v68;
  if ((sub_10016FA6C(*v68, *v21) & 1) == 0)
  {
    goto LABEL_26;
  }

  v28 = v67;
  v29 = v67[7];
  v30 = (v27 + v29);
  v31 = *(v27 + v29 + 8);
  v32 = (v21 + v29);
  v33 = *(v21 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v34 = v67[8];
  v35 = *(v27 + v34);
  v36 = *(v21 + v34);
  if (v35 == 4)
  {
    if (v36 != 4)
    {
      goto LABEL_26;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_26;
  }

  v37 = v67[9];
  v38 = (v27 + v37);
  v39 = *(v27 + v37 + 4);
  v40 = (v21 + v37);
  v41 = *(v21 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v44 = v67[10];
  v45 = *(v63 + 48);
  v46 = v66;
  sub_10000A0A4(v27 + v44, v66, &qword_10041CB50, &qword_100374580);
  v47 = v21 + v44;
  v48 = v46;
  sub_10000A0A4(v47, v46 + v45, &qword_10041CB50, &qword_100374580);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v46, 1, v65) != 1)
  {
    v51 = v62;
    sub_10000A0A4(v48, v62, &qword_10041CB50, &qword_100374580);
    if (v50(v48 + v45, 1, v49) != 1)
    {
      v52 = v48 + v45;
      v53 = v61;
      sub_1000112AC(v52, v61, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      v54 = sub_100177904(v51, v53);
      sub_100015F24(v53, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      sub_1000059A8(v48, &qword_10041CB50, &qword_100374580);
      if ((v54 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
    goto LABEL_33;
  }

  if (v50(v46 + v45, 1, v49) != 1)
  {
LABEL_33:
    v23 = &qword_100423CF8;
    v24 = &qword_100382F60;
    v25 = v48;
    goto LABEL_7;
  }

  sub_1000059A8(v46, &qword_10041CB50, &qword_100374580);
LABEL_35:
  v55 = v28[11];
  v56 = (v27 + v55);
  v57 = *(v27 + v55 + 8);
  v58 = (v21 + v55);
  v59 = *(v21 + v55 + 8);
  if (v57)
  {
    if (v59)
    {
LABEL_41:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if ((v59 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_26:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_10018376C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_10000A0A4(a1 + v14, v13, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CA30, &qword_100374460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_8:
      v20 = v28;
      if (sub_10017139C(*v28, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, sub_100183070))
      {
        v21 = *(v26 + 28);
        v22 = *(v20 + v21);
        v23 = *(a2 + v21);
        if (v22 == 2)
        {
          if (v23 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
        {
          goto LABEL_14;
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v17 & 1;
      }

LABEL_14:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    sub_10000A0A4(v13, v9, &qword_10041CA30, &qword_100374460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v27;
      sub_1000112AC(&v13[v15], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v19 = sub_1001853C4(v9, v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100183B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
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
      return 0;
    }
  }

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100183CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_49;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v30 = v14[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v35 = v14[9];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v40 = v14[10];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v45 = v14[11];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 8);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v50 = v14[12];
  v51 = *(v11 + 48);
  sub_10000A0A4(a1 + v50, v13, &qword_10041CA30, &qword_100374460);
  v52 = a2 + v50;
  v53 = v51;
  sub_10000A0A4(v52, &v13[v51], &qword_10041CA30, &qword_100374460);
  v54 = *(v5 + 48);
  if (v54(v13, 1, v4) == 1)
  {
    if (v54(&v13[v53], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
LABEL_52:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v55 & 1;
    }

    goto LABEL_48;
  }

  sub_10000A0A4(v13, v10, &qword_10041CA30, &qword_100374460);
  if (v54(&v13[v53], 1, v4) == 1)
  {
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_48:
    sub_1000059A8(v13, &qword_100423CE0, &qword_100393E90);
    goto LABEL_49;
  }

  sub_1000112AC(&v13[v53], v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v57 = sub_1001853C4(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
  if (v57)
  {
    goto LABEL_52;
  }

LABEL_49:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_1001841B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CB20, &qword_100374550);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_100024A2C(&qword_100423D28, &qword_100382F90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_10000A0A4(a1 + v14, v13, &qword_10041CB20, &qword_100374550);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_10041CB20, &qword_100374550);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10041CB20, &qword_100374550);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v13, v9, &qword_10041CB20, &qword_100374550);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
LABEL_6:
    sub_1000059A8(v13, &qword_100423D28, &qword_100382F90);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_1000112AC(&v13[v15], v21[0], type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  v19 = sub_100183CD8(v9, v18);
  sub_100015F24(v18, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_100015F24(v9, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_1000059A8(v13, &qword_10041CB20, &qword_100374550);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10018450C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10016F7C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v5 = v4[6];
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

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[9];
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

  v23 = v4[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[11];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[12];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10018471C(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  __chkstk_darwin(v5 - 8);
  v41 = &v39 - v6;
  v42 = sub_100024A2C(&qword_100423D08, &qword_100382F70);
  __chkstk_darwin(v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  v19 = *(v43 + 28);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  v21 = v48;
  sub_10000A0A4(v48 + v19, &v18[v20], &qword_10041CA30, &qword_100374460);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_100423CE0;
    v24 = &qword_100393E90;
    v25 = v18;
LABEL_7:
    sub_1000059A8(v25, v23, v24);
    goto LABEL_19;
  }

  sub_10000A0A4(v18, v14, &qword_10041CA30, &qword_100374460);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v26 = sub_1001853C4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v27 = v47;
  if ((sub_100171538(*v47, *v21) & 1) == 0 || (sub_1001719A0(v27[1], v21[1]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = *(v43 + 32);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_10000A0A4(v27 + v28, v46, &qword_10041CB40, &qword_100374570);
  sub_10000A0A4(v21 + v28, v30 + v29, &qword_10041CB40, &qword_100374570);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_10000A0A4(v30, v41, &qword_10041CB40, &qword_100374570);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      sub_1000112AC(v34, v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      v36 = sub_100184D80(v33, v35, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_100015F24(v35, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_100015F24(v33, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_1000059A8(v30, &qword_10041CB40, &qword_100374570);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_19:
      v37 = 0;
      return v37 & 1;
    }

    sub_100015F24(v33, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_100423D08;
    v24 = &qword_100382F70;
    v25 = v30;
    goto LABEL_7;
  }

  sub_1000059A8(v30, &qword_10041CB40, &qword_100374570);
LABEL_18:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v37 & 1;
}

uint64_t sub_100184D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100184E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
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
      return 0;
    }
  }

  v20 = v4[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100184FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
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
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100185170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001852D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001853C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1001854FC()
{
  result = qword_10041CEA8;
  if (!qword_10041CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEA8);
  }

  return result;
}

unint64_t sub_100185554()
{
  result = qword_10041CEB0;
  if (!qword_10041CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEB0);
  }

  return result;
}

unint64_t sub_1001855AC()
{
  result = qword_10041CEB8;
  if (!qword_10041CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEB8);
  }

  return result;
}

unint64_t sub_100185634()
{
  result = qword_10041CED0;
  if (!qword_10041CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CED0);
  }

  return result;
}

unint64_t sub_10018568C()
{
  result = qword_10041CED8;
  if (!qword_10041CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CED8);
  }

  return result;
}

unint64_t sub_1001856E4()
{
  result = qword_10041CEE0;
  if (!qword_10041CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEE0);
  }

  return result;
}

unint64_t sub_10018576C()
{
  result = qword_10041CEF8;
  if (!qword_10041CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEF8);
  }

  return result;
}

unint64_t sub_1001857C4()
{
  result = qword_10041CF00;
  if (!qword_10041CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF00);
  }

  return result;
}

unint64_t sub_10018581C()
{
  result = qword_10041CF08;
  if (!qword_10041CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF08);
  }

  return result;
}

unint64_t sub_1001858A4()
{
  result = qword_10041CF20;
  if (!qword_10041CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF20);
  }

  return result;
}

unint64_t sub_1001858FC()
{
  result = qword_10041CF28;
  if (!qword_10041CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF28);
  }

  return result;
}

unint64_t sub_100185954()
{
  result = qword_10041CF30;
  if (!qword_10041CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF30);
  }

  return result;
}

unint64_t sub_1001859DC()
{
  result = qword_10041CF48;
  if (!qword_10041CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF48);
  }

  return result;
}

unint64_t sub_100185A34()
{
  result = qword_10041CF50;
  if (!qword_10041CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF50);
  }

  return result;
}

unint64_t sub_100185A8C()
{
  result = qword_10041CF58;
  if (!qword_10041CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF58);
  }

  return result;
}

unint64_t sub_100185B14()
{
  result = qword_10041CF70;
  if (!qword_10041CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF70);
  }

  return result;
}

unint64_t sub_100185B6C()
{
  result = qword_10041CF78;
  if (!qword_10041CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF78);
  }

  return result;
}

unint64_t sub_100185BC4()
{
  result = qword_10041CF80;
  if (!qword_10041CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF80);
  }

  return result;
}

unint64_t sub_100185C4C()
{
  result = qword_10041CF98;
  if (!qword_10041CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF98);
  }

  return result;
}

unint64_t sub_100185CA4()
{
  result = qword_10041CFA0;
  if (!qword_10041CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFA0);
  }

  return result;
}

unint64_t sub_100185CFC()
{
  result = qword_10041CFA8;
  if (!qword_10041CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFA8);
  }

  return result;
}

unint64_t sub_100185D84()
{
  result = qword_10041CFC0;
  if (!qword_10041CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFC0);
  }

  return result;
}

unint64_t sub_100185DDC()
{
  result = qword_10041CFC8;
  if (!qword_10041CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFC8);
  }

  return result;
}

unint64_t sub_100185E34()
{
  result = qword_10041CFD0;
  if (!qword_10041CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFD0);
  }

  return result;
}

unint64_t sub_100185EBC()
{
  result = qword_10041CFE8;
  if (!qword_10041CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFE8);
  }

  return result;
}

unint64_t sub_100185F14()
{
  result = qword_10041CFF0;
  if (!qword_10041CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFF0);
  }

  return result;
}

unint64_t sub_100185F6C()
{
  result = qword_10041CFF8;
  if (!qword_10041CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFF8);
  }

  return result;
}

unint64_t sub_100185FF4()
{
  result = qword_10041D010;
  if (!qword_10041D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D010);
  }

  return result;
}

unint64_t sub_10018604C()
{
  result = qword_10041D018;
  if (!qword_10041D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D018);
  }

  return result;
}

unint64_t sub_1001860A4()
{
  result = qword_10041D020;
  if (!qword_10041D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D020);
  }

  return result;
}

unint64_t sub_10018612C()
{
  result = qword_10041D038;
  if (!qword_10041D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D038);
  }

  return result;
}

unint64_t sub_100186184()
{
  result = qword_10041D040;
  if (!qword_10041D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D040);
  }

  return result;
}

unint64_t sub_1001861DC()
{
  result = qword_10041D048;
  if (!qword_10041D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D048);
  }

  return result;
}

unint64_t sub_100186264()
{
  result = qword_10041D060;
  if (!qword_10041D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D060);
  }

  return result;
}

unint64_t sub_1001862BC()
{
  result = qword_10041D068;
  if (!qword_10041D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D068);
  }

  return result;
}

unint64_t sub_100186314()
{
  result = qword_10041D070;
  if (!qword_10041D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D070);
  }

  return result;
}

unint64_t sub_10018639C()
{
  result = qword_10041D088;
  if (!qword_10041D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D088);
  }

  return result;
}

unint64_t sub_1001863F4()
{
  result = qword_10041D090;
  if (!qword_10041D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D090);
  }

  return result;
}

unint64_t sub_10018644C()
{
  result = qword_10041D098;
  if (!qword_10041D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D098);
  }

  return result;
}

unint64_t sub_1001864D4()
{
  result = qword_10041D0B0;
  if (!qword_10041D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0B0);
  }

  return result;
}

unint64_t sub_10018652C()
{
  result = qword_10041D0B8;
  if (!qword_10041D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0B8);
  }

  return result;
}

unint64_t sub_100186584()
{
  result = qword_10041D0C0;
  if (!qword_10041D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0C0);
  }

  return result;
}

unint64_t sub_10018660C()
{
  result = qword_10041D0D8;
  if (!qword_10041D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0D8);
  }

  return result;
}

unint64_t sub_100186664()
{
  result = qword_10041D0E0;
  if (!qword_10041D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0E0);
  }

  return result;
}

unint64_t sub_1001866BC()
{
  result = qword_10041D0E8;
  if (!qword_10041D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0E8);
  }

  return result;
}

unint64_t sub_100186744()
{
  result = qword_10041D100;
  if (!qword_10041D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D100);
  }

  return result;
}

unint64_t sub_10018679C()
{
  result = qword_10041D108;
  if (!qword_10041D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D108);
  }

  return result;
}

unint64_t sub_1001867F4()
{
  result = qword_10041D110;
  if (!qword_10041D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D110);
  }

  return result;
}

unint64_t sub_100186880()
{
  result = qword_10041D128;
  if (!qword_10041D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D128);
  }

  return result;
}

unint64_t sub_1001868D8()
{
  result = qword_10041D130;
  if (!qword_10041D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D130);
  }

  return result;
}

unint64_t sub_100186960()
{
  result = qword_10041D148;
  if (!qword_10041D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D148);
  }

  return result;
}

unint64_t sub_1001869B8()
{
  result = qword_10041D150;
  if (!qword_10041D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D150);
  }

  return result;
}

unint64_t sub_100186A10()
{
  result = qword_10041D158;
  if (!qword_10041D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D158);
  }

  return result;
}

unint64_t sub_100186A98()
{
  result = qword_10041D170;
  if (!qword_10041D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D170);
  }

  return result;
}

unint64_t sub_100186AF0()
{
  result = qword_10041D178;
  if (!qword_10041D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D178);
  }

  return result;
}

unint64_t sub_100186B48()
{
  result = qword_10041D180;
  if (!qword_10041D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D180);
  }

  return result;
}

unint64_t sub_100186BD0()
{
  result = qword_10041D198;
  if (!qword_10041D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D198);
  }

  return result;
}

unint64_t sub_100186C28()
{
  result = qword_10041D1A0;
  if (!qword_10041D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1A0);
  }

  return result;
}

unint64_t sub_100186C80()
{
  result = qword_10041D1A8;
  if (!qword_10041D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1A8);
  }

  return result;
}

unint64_t sub_100186D08()
{
  result = qword_10041D1C0;
  if (!qword_10041D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1C0);
  }

  return result;
}

unint64_t sub_100186D60()
{
  result = qword_10041D1C8;
  if (!qword_10041D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1C8);
  }

  return result;
}

unint64_t sub_100186DB8()
{
  result = qword_10041D1D0;
  if (!qword_10041D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1D0);
  }

  return result;
}

unint64_t sub_100186E40()
{
  result = qword_10041D1E8;
  if (!qword_10041D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1E8);
  }

  return result;
}

unint64_t sub_100186E98()
{
  result = qword_10041D1F0;
  if (!qword_10041D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1F0);
  }

  return result;
}

unint64_t sub_100186EF0()
{
  result = qword_10041D1F8;
  if (!qword_10041D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1F8);
  }

  return result;
}

unint64_t sub_100186F78()
{
  result = qword_10041D210;
  if (!qword_10041D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D210);
  }

  return result;
}

unint64_t sub_100186FD0()
{
  result = qword_10041D218;
  if (!qword_10041D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D218);
  }

  return result;
}

unint64_t sub_100187028()
{
  result = qword_10041D220;
  if (!qword_10041D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D220);
  }

  return result;
}

unint64_t sub_1001870B0()
{
  result = qword_10041D238;
  if (!qword_10041D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D238);
  }

  return result;
}

unint64_t sub_100187108()
{
  result = qword_10041D240;
  if (!qword_10041D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D240);
  }

  return result;
}

unint64_t sub_100187160()
{
  result = qword_10041D248;
  if (!qword_10041D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D248);
  }

  return result;
}

unint64_t sub_1001871E8()
{
  result = qword_10041D260;
  if (!qword_10041D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D260);
  }

  return result;
}

unint64_t sub_100187240()
{
  result = qword_10041D268;
  if (!qword_10041D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D268);
  }

  return result;
}

unint64_t sub_100187298()
{
  result = qword_10041D270;
  if (!qword_10041D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D270);
  }

  return result;
}

unint64_t sub_100187320()
{
  result = qword_10041D288;
  if (!qword_10041D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D288);
  }

  return result;
}

unint64_t sub_100187378()
{
  result = qword_10041D290;
  if (!qword_10041D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D290);
  }

  return result;
}

unint64_t sub_1001873D0()
{
  result = qword_10041D298;
  if (!qword_10041D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D298);
  }

  return result;
}

unint64_t sub_100187458()
{
  result = qword_10041D2B0;
  if (!qword_10041D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2B0);
  }

  return result;
}

unint64_t sub_1001874B0()
{
  result = qword_10041D2B8;
  if (!qword_10041D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2B8);
  }

  return result;
}

unint64_t sub_100187508()
{
  result = qword_10041D2C0;
  if (!qword_10041D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2C0);
  }

  return result;
}

unint64_t sub_100187590()
{
  result = qword_10041D2D8;
  if (!qword_10041D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2D8);
  }

  return result;
}

unint64_t sub_1001875E8()
{
  result = qword_10041D2E0;
  if (!qword_10041D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2E0);
  }

  return result;
}

unint64_t sub_100187640()
{
  result = qword_10041D2E8;
  if (!qword_10041D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2E8);
  }

  return result;
}

unint64_t sub_1001876C8()
{
  result = qword_10041D300;
  if (!qword_10041D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D300);
  }

  return result;
}

unint64_t sub_100187720()
{
  result = qword_10041D308;
  if (!qword_10041D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D308);
  }

  return result;
}

unint64_t sub_100187778()
{
  result = qword_10041D310;
  if (!qword_10041D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D310);
  }

  return result;
}

unint64_t sub_100187800()
{
  result = qword_10041D328;
  if (!qword_10041D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D328);
  }

  return result;
}

unint64_t sub_100187858()
{
  result = qword_10041D330;
  if (!qword_10041D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D330);
  }

  return result;
}

unint64_t sub_1001878B0()
{
  result = qword_10041D338;
  if (!qword_10041D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D338);
  }

  return result;
}

unint64_t sub_100187938()
{
  result = qword_10041D350;
  if (!qword_10041D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D350);
  }

  return result;
}

unint64_t sub_100187990()
{
  result = qword_10041D358;
  if (!qword_10041D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D358);
  }

  return result;
}

unint64_t sub_1001879E8()
{
  result = qword_10041D360;
  if (!qword_10041D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D360);
  }

  return result;
}

unint64_t sub_100187A70()
{
  result = qword_10041D378;
  if (!qword_10041D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D378);
  }

  return result;
}

unint64_t sub_100187AC8()
{
  result = qword_10041D380;
  if (!qword_10041D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D380);
  }

  return result;
}

unint64_t sub_100187B20()
{
  result = qword_10041D388;
  if (!qword_10041D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D388);
  }

  return result;
}

unint64_t sub_100187BA8()
{
  result = qword_10041D3A0;
  if (!qword_10041D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3A0);
  }

  return result;
}

unint64_t sub_100187C00()
{
  result = qword_10041D3A8;
  if (!qword_10041D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3A8);
  }

  return result;
}

unint64_t sub_100187C58()
{
  result = qword_10041D3B0;
  if (!qword_10041D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3B0);
  }

  return result;
}

unint64_t sub_100187CE0()
{
  result = qword_10041D3C8;
  if (!qword_10041D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3C8);
  }

  return result;
}

unint64_t sub_100187D38()
{
  result = qword_10041D3D0;
  if (!qword_10041D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3D0);
  }

  return result;
}

unint64_t sub_100187D90()
{
  result = qword_10041D3D8;
  if (!qword_10041D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3D8);
  }

  return result;
}

unint64_t sub_100187E18()
{
  result = qword_10041D3F0;
  if (!qword_10041D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3F0);
  }

  return result;
}

unint64_t sub_100187E70()
{
  result = qword_10041D3F8;
  if (!qword_10041D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3F8);
  }

  return result;
}

unint64_t sub_100187EC8()
{
  result = qword_10041D400;
  if (!qword_10041D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D400);
  }

  return result;
}

unint64_t sub_100187F50()
{
  result = qword_10041D418;
  if (!qword_10041D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D418);
  }

  return result;
}

unint64_t sub_100187FA8()
{
  result = qword_10041D420;
  if (!qword_10041D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D420);
  }

  return result;
}

unint64_t sub_100188000()
{
  result = qword_10041D428;
  if (!qword_10041D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D428);
  }

  return result;
}

unint64_t sub_100188088()
{
  result = qword_10041D440;
  if (!qword_10041D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D440);
  }

  return result;
}

unint64_t sub_1001880E0()
{
  result = qword_10041D448;
  if (!qword_10041D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D448);
  }

  return result;
}

unint64_t sub_100188138()
{
  result = qword_10041D450;
  if (!qword_10041D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D450);
  }

  return result;
}

unint64_t sub_1001881C0()
{
  result = qword_10041D468;
  if (!qword_10041D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D468);
  }

  return result;
}

unint64_t sub_100188218()
{
  result = qword_10041D470;
  if (!qword_10041D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D470);
  }

  return result;
}

unint64_t sub_100188270()
{
  result = qword_10041D478;
  if (!qword_10041D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D478);
  }

  return result;
}

unint64_t sub_1001882F8()
{
  result = qword_10041D490;
  if (!qword_10041D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D490);
  }

  return result;
}

unint64_t sub_100188350()
{
  result = qword_10041D498;
  if (!qword_10041D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D498);
  }

  return result;
}

unint64_t sub_1001883A8()
{
  result = qword_10041D4A0;
  if (!qword_10041D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4A0);
  }

  return result;
}

unint64_t sub_100188430()
{
  result = qword_10041D4B8;
  if (!qword_10041D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4B8);
  }

  return result;
}

unint64_t sub_100188488()
{
  result = qword_10041D4C0;
  if (!qword_10041D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4C0);
  }

  return result;
}

unint64_t sub_1001884E0()
{
  result = qword_10041D4C8;
  if (!qword_10041D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4C8);
  }

  return result;
}

unint64_t sub_100188568()
{
  result = qword_10041D4E0;
  if (!qword_10041D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4E0);
  }

  return result;
}

unint64_t sub_1001885C0()
{
  result = qword_10041D4E8;
  if (!qword_10041D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4E8);
  }

  return result;
}

unint64_t sub_100188618()
{
  result = qword_10041D4F0;
  if (!qword_10041D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4F0);
  }

  return result;
}

unint64_t sub_1001886A0()
{
  result = qword_10041D508;
  if (!qword_10041D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D508);
  }

  return result;
}

unint64_t sub_1001886F8()
{
  result = qword_10041D510;
  if (!qword_10041D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D510);
  }

  return result;
}

unint64_t sub_100188750()
{
  result = qword_10041D518;
  if (!qword_10041D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D518);
  }

  return result;
}

unint64_t sub_1001887D8()
{
  result = qword_10041D530;
  if (!qword_10041D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D530);
  }

  return result;
}

unint64_t sub_100188830()
{
  result = qword_10041D538;
  if (!qword_10041D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D538);
  }

  return result;
}

unint64_t sub_100188888()
{
  result = qword_10041D540;
  if (!qword_10041D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D540);
  }

  return result;
}

unint64_t sub_100188910()
{
  result = qword_10041D558;
  if (!qword_10041D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D558);
  }

  return result;
}

unint64_t sub_100188968()
{
  result = qword_10041D560;
  if (!qword_10041D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D560);
  }

  return result;
}

unint64_t sub_1001889C0()
{
  result = qword_10041D568;
  if (!qword_10041D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D568);
  }

  return result;
}

unint64_t sub_100188A48()
{
  result = qword_10041D580;
  if (!qword_10041D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D580);
  }

  return result;
}

unint64_t sub_100188AA0()
{
  result = qword_10041D588;
  if (!qword_10041D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D588);
  }

  return result;
}

unint64_t sub_100188AF8()
{
  result = qword_10041D590;
  if (!qword_10041D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D590);
  }

  return result;
}

unint64_t sub_100188B80()
{
  result = qword_10041D5A8;
  if (!qword_10041D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5A8);
  }

  return result;
}

unint64_t sub_100188BD8()
{
  result = qword_10041D5B0;
  if (!qword_10041D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5B0);
  }

  return result;
}

unint64_t sub_100188C30()
{
  result = qword_10041D5B8;
  if (!qword_10041D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5B8);
  }

  return result;
}

unint64_t sub_100188CB8()
{
  result = qword_10041D5D0;
  if (!qword_10041D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5D0);
  }

  return result;
}

unint64_t sub_100188D10()
{
  result = qword_10041D5D8;
  if (!qword_10041D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5D8);
  }

  return result;
}

unint64_t sub_100188D68()
{
  result = qword_10041D5E0;
  if (!qword_10041D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5E0);
  }

  return result;
}

unint64_t sub_100188DF0()
{
  result = qword_10041D5F8;
  if (!qword_10041D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5F8);
  }

  return result;
}

unint64_t sub_100188E48()
{
  result = qword_10041D600;
  if (!qword_10041D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D600);
  }

  return result;
}

unint64_t sub_100188EA0()
{
  result = qword_10041D608;
  if (!qword_10041D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D608);
  }

  return result;
}

unint64_t sub_100188F28()
{
  result = qword_10041D620;
  if (!qword_10041D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D620);
  }

  return result;
}

unint64_t sub_100188F80()
{
  result = qword_10041D628;
  if (!qword_10041D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D628);
  }

  return result;
}

unint64_t sub_100188FD8()
{
  result = qword_10041D630;
  if (!qword_10041D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D630);
  }

  return result;
}

unint64_t sub_100189060()
{
  result = qword_10041D648;
  if (!qword_10041D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D648);
  }

  return result;
}

unint64_t sub_1001890B8()
{
  result = qword_10041D650;
  if (!qword_10041D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D650);
  }

  return result;
}

unint64_t sub_100189110()
{
  result = qword_10041D658;
  if (!qword_10041D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D658);
  }

  return result;
}

unint64_t sub_100189198()
{
  result = qword_10041D670;
  if (!qword_10041D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D670);
  }

  return result;
}

unint64_t sub_1001891F0()
{
  result = qword_10041D678;
  if (!qword_10041D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D678);
  }

  return result;
}

unint64_t sub_100189248()
{
  result = qword_10041D680;
  if (!qword_10041D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D680);
  }

  return result;
}

unint64_t sub_1001892D0()
{
  result = qword_10041D698;
  if (!qword_10041D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D698);
  }

  return result;
}

unint64_t sub_100189328()
{
  result = qword_10041D6A0;
  if (!qword_10041D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6A0);
  }

  return result;
}

unint64_t sub_100189380()
{
  result = qword_10041D6A8;
  if (!qword_10041D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6A8);
  }

  return result;
}

unint64_t sub_100189408()
{
  result = qword_10041D6C0;
  if (!qword_10041D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6C0);
  }

  return result;
}