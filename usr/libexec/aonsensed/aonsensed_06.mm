uint64_t sub_1000A0828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
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
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A0980(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - v6;
  v49 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  __chkstk_darwin(v49);
  v53 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v19 = *(v50 + 20);
  v20 = *(v16 + 56);
  v54 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_100418CF0, &qword_10036D860);
  v21 = v55 + v19;
  v22 = v55;
  sub_10000A0A4(v21, &v18[v20], &qword_100418CF0, &qword_10036D860);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_100418CF0, &qword_10036D860);
      goto LABEL_8;
    }

LABEL_6:
    v24 = &qword_10041C4C8;
    v25 = &qword_100373CB8;
    v26 = v18;
LABEL_14:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_15;
  }

  sub_10000A0A4(v18, v14, &qword_100418CF0, &qword_10036D860);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_6;
  }

  sub_10009E724(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v27 = sub_1000A423C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v18, &qword_100418CF0, &qword_10036D860);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v28 = v50;
  v29 = *(v50 + 24);
  v30 = *(v49 + 48);
  v32 = v53;
  v31 = v54;
  sub_10000A0A4(v54 + v29, v53, &qword_100418CF8, &qword_10036D868);
  sub_10000A0A4(v22 + v29, v32 + v30, &qword_100418CF8, &qword_10036D868);
  v33 = v52;
  v34 = *(v51 + 48);
  if (v34(v32, 1, v52) != 1)
  {
    v35 = v48;
    sub_10000A0A4(v32, v48, &qword_100418CF8, &qword_10036D868);
    if (v34(v32 + v30, 1, v33) != 1)
    {
      v38 = v32 + v30;
      v39 = v47;
      sub_10009E724(v38, v47, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v40 = sub_1000A423C(v35, v39, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v39, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v35, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_1000059A8(v32, &qword_100418CF8, &qword_10036D868);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_10009E7F4(v35, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_13;
  }

  if (v34(v32 + v30, 1, v33) != 1)
  {
LABEL_13:
    v24 = &qword_10041C4C0;
    v25 = &qword_100373CB0;
    v26 = v32;
    goto LABEL_14;
  }

  sub_1000059A8(v32, &qword_100418CF8, &qword_10036D868);
LABEL_18:
  v41 = *(v28 + 28);
  v42 = (v31 + v41);
  v43 = *(v31 + v41 + 4);
  v44 = (v22 + v41);
  v45 = *(v22 + v41 + 4);
  if (v43)
  {
    if (v45)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_15:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1000A0FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
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

  v29 = v4[13];
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

  v32 = v4[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A14FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
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
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
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

  v18 = v4[8];
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

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A167C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100024A2C(&qword_10041C578, &qword_100373D68);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  sub_10000A0A4(v28 + v21, v13, &qword_100418D58, &qword_10036D8C8);
  sub_10000A0A4(v20 + v21, &v13[v22], &qword_100418D58, &qword_10036D8C8);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100418D58, &qword_10036D8C8);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v13, v10, &qword_100418D58, &qword_10036D8C8);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
LABEL_12:
    sub_1000059A8(v13, &qword_10041C578, &qword_100373D68);
    goto LABEL_13;
  }

  sub_10009E724(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v26 = sub_1000A4108(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_1000059A8(v13, &qword_100418D58, &qword_10036D8C8);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1000A1A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1B50(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v5 = *(v4 + 32);
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

  v10 = *(v4 + 36);
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

  if (sub_10009C5E0(*a1, *a2) & 1) != 0 && (sub_10009C5E0(a1[1], a2[1]) & 1) != 0 && (sub_10009C5E0(a1[2], a2[2]))
  {
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1000A1C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  v18 = v5[9];
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = sub_100024A2C(&qword_10041C588, &qword_100373D88);
  v15 = __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v31 = v20[7];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 6)
  {
    if (v33 != 6)
    {
      goto LABEL_31;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_31;
  }

  v52 = v11;
  v54 = v20;
  v56 = v5;
  v34 = v20[8];
  v35 = *(v14 + 48);
  sub_10000A0A4(a1 + v34, v19, &qword_100418D80, &qword_10036D8F0);
  v36 = a2 + v34;
  v37 = v56;
  v55 = v35;
  sub_10000A0A4(v36, &v19[v35], &qword_100418D80, &qword_10036D8F0);
  v40 = *(v37 + 48);
  v39 = v37 + 48;
  v38 = v40;
  v41 = v40(v19, 1, v4);
  v53 = v40;
  if (v41 != 1)
  {
    sub_10000A0A4(v19, v13, &qword_100418D80, &qword_10036D8F0);
    if (v38(&v19[v55], 1, v4) != 1)
    {
      v56 = v39;
      sub_10009E724(&v19[v55], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      v43 = sub_1000A1E14(v13, v7);
      sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      sub_1000059A8(v19, &qword_100418D80, &qword_10036D8F0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_22:
    v42 = v19;
LABEL_30:
    sub_1000059A8(v42, &qword_10041C588, &qword_100373D88);
    goto LABEL_31;
  }

  if (v38(&v19[v55], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  v56 = v39;
  sub_1000059A8(v19, &qword_100418D80, &qword_10036D8F0);
LABEL_24:
  v44 = v54[9];
  v45 = *(v14 + 48);
  sub_10000A0A4(a1 + v44, v17, &qword_100418D80, &qword_10036D8F0);
  sub_10000A0A4(a2 + v44, &v17[v45], &qword_100418D80, &qword_10036D8F0);
  v46 = v53;
  if (v53(v17, 1, v4) == 1)
  {
    if (v46(&v17[v45], 1, v4) == 1)
    {
      sub_1000059A8(v17, &qword_100418D80, &qword_10036D8F0);
LABEL_34:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }

    goto LABEL_29;
  }

  v47 = v52;
  sub_10000A0A4(v17, v52, &qword_100418D80, &qword_10036D8F0);
  if (v46(&v17[v45], 1, v4) == 1)
  {
    sub_10009E7F4(v47, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_29:
    v42 = v17;
    goto LABEL_30;
  }

  sub_10009E724(&v17[v45], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v50 = sub_1000A1E14(v47, v7);
  sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_10009E7F4(v47, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000059A8(v17, &qword_100418D80, &qword_10036D8F0);
  if (v50)
  {
    goto LABEL_34;
  }

LABEL_31:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1000A2500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v68 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v8 = __chkstk_darwin(v7 - 8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v60 - v10;
  v69 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v11 = __chkstk_darwin(v69);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v60 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v60 - v19;
  v21 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v25 = *(v24 + 20);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v62 = v24;
  v63 = v4;
  v60 = v6;
  v30 = *(v24 + 24);
  v31 = a1;
  v32 = *(v21 + 48);
  v61 = v31;
  sub_10000A0A4(v31 + v30, v23, &qword_100418D70, &qword_10036D8E0);
  v33 = a2 + v30;
  v34 = a2;
  sub_10000A0A4(v33, &v23[v32], &qword_100418D70, &qword_10036D8E0);
  v35 = *(v15 + 48);
  if (v35(v23, 1, v14) == 1)
  {
    v36 = v35(&v23[v32], 1, v14);
    v37 = v63;
    if (v36 == 1)
    {
      sub_1000059A8(v23, &qword_100418D70, &qword_10036D8E0);
      goto LABEL_14;
    }

LABEL_12:
    v39 = &qword_10041C568;
    v40 = &qword_100373D58;
    v41 = v23;
LABEL_25:
    sub_1000059A8(v41, v39, v40);
    goto LABEL_26;
  }

  sub_10000A0A4(v23, v20, &qword_100418D70, &qword_10036D8E0);
  v38 = v35(&v23[v32], 1, v14);
  v37 = v63;
  if (v38 == 1)
  {
    sub_10009E7F4(v20, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  sub_10009E724(&v23[v32], v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v42 = sub_1000A3478(v20, v17);
  sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_10009E7F4(v20, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000059A8(v23, &qword_100418D70, &qword_10036D8E0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v43 = v61;
  v44 = *(v62 + 28);
  v45 = *(v69 + 48);
  v46 = v67;
  sub_10000A0A4(v61 + v44, v67, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v34 + v44, v46 + v45, &qword_100418D88, &qword_10036D8F8);
  v47 = *(v68 + 48);
  if (v47(v46, 1, v37) == 1)
  {
    if (v47(v46 + v45, 1, v37) != 1)
    {
LABEL_24:
      v39 = &qword_10041C560;
      v40 = &qword_100373D50;
      v41 = v46;
      goto LABEL_25;
    }

    sub_1000059A8(v46, &qword_100418D88, &qword_10036D8F8);
LABEL_19:
    v52 = *(v62 + 32);
    v53 = *(v69 + 48);
    v54 = v65;
    sub_10000A0A4(v43 + v52, v65, &qword_100418D88, &qword_10036D8F8);
    v55 = v34 + v52;
    v46 = v54;
    sub_10000A0A4(v55, v54 + v53, &qword_100418D88, &qword_10036D8F8);
    if (v47(v54, 1, v37) == 1)
    {
      if (v47(v54 + v53, 1, v37) == 1)
      {
        sub_1000059A8(v54, &qword_100418D88, &qword_10036D8F8);
LABEL_29:
        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v56 & 1;
      }

      goto LABEL_24;
    }

    v48 = v64;
    sub_10000A0A4(v54, v64, &qword_100418D88, &qword_10036D8F8);
    if (v47(v54 + v53, 1, v37) == 1)
    {
      goto LABEL_23;
    }

    v58 = v60;
    sub_10009E724(v54 + v53, v60, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v59 = sub_1000A2EBC(v48, v58);
    sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v54, &qword_100418D88, &qword_10036D8F8);
    if (v59)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v48 = v66;
  sub_10000A0A4(v46, v66, &qword_100418D88, &qword_10036D8F8);
  if (v47(v46 + v45, 1, v37) == 1)
  {
LABEL_23:
    sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_24;
  }

  v49 = v46 + v45;
  v50 = v60;
  sub_10009E724(v49, v60, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v51 = sub_1000A2EBC(v48, v50);
  sub_10009E7F4(v50, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v46, &qword_100418D88, &qword_10036D8F8);
  if (v51)
  {
    goto LABEL_19;
  }

LABEL_26:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_1000A2D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A2EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A2FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v29 = a1;
  v14 = *(v28 + 20);
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100418D88, &qword_10036D8F8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100418D88, &qword_10036D8F8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v27;
      sub_10009E724(&v13[v15], v27, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      v20 = sub_1000A2EBC(v9, v19);
      sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      sub_10009E7F4(v9, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      sub_1000059A8(v13, &qword_100418D88, &qword_10036D8F8);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_10009E7F4(v9, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_6:
    sub_1000059A8(v13, &qword_10041C560, &qword_100373D50);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100418D88, &qword_10036D8F8);
LABEL_10:
  v21 = *(v28 + 24);
  v22 = (v29 + v21);
  v23 = *(v29 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (v25)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000A337C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A3478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100024A2C(&qword_10041C598, &qword_100373D98);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_17;
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
      goto LABEL_17;
    }
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 5)
  {
    if (v22 != 5)
    {
      goto LABEL_17;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_17;
  }

  v23 = v14[7];
  v24 = *(v11 + 48);
  sub_10000A0A4(a1 + v23, v13, &qword_100418D68, &qword_10036D8D8);
  v25 = a2 + v23;
  v26 = v24;
  sub_10000A0A4(v25, &v13[v24], &qword_100418D68, &qword_10036D8D8);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100418D68, &qword_10036D8D8);
LABEL_20:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_16;
  }

  sub_10000A0A4(v13, v10, &qword_100418D68, &qword_10036D8D8);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
LABEL_16:
    sub_1000059A8(v13, &qword_10041C598, &qword_100373D98);
    goto LABEL_17;
  }

  sub_10009E724(&v13[v26], v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v30 = sub_1000A337C(v10, v7);
  sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_1000059A8(v13, &qword_100418D68, &qword_10036D8D8);
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_17:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1000A382C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418D78, &qword_10036D8E8);
  __chkstk_darwin(v7 - 8);
  v49 = &v46 - v8;
  v9 = sub_100024A2C(&qword_10041C590, &qword_100373D90);
  __chkstk_darwin(v9);
  v52 = &v46 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v46 - v16;
  v18 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v22 = *(v21 + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_21;
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
      goto LABEL_21;
    }
  }

  v46 = v6;
  v53 = a2;
  v27 = *(v21 + 24);
  v28 = a1;
  v29 = *(v18 + 48);
  v47 = v28;
  v48 = v21;
  sub_10000A0A4(v28 + v27, v20, &qword_100418D70, &qword_10036D8E0);
  sub_10000A0A4(v53 + v27, &v20[v29], &qword_100418D70, &qword_10036D8E0);
  v30 = *(v12 + 48);
  if (v30(v20, 1, v11) != 1)
  {
    sub_10000A0A4(v20, v17, &qword_100418D70, &qword_10036D8E0);
    if (v30(&v20[v29], 1, v11) != 1)
    {
      sub_10009E724(&v20[v29], v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      v34 = sub_1000A3478(v17, v14);
      sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      sub_1000059A8(v20, &qword_100418D70, &qword_10036D8E0);
      if ((v34 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
LABEL_12:
    v31 = &qword_10041C568;
    v32 = &qword_100373D58;
    v33 = v20;
LABEL_20:
    sub_1000059A8(v33, v31, v32);
    goto LABEL_21;
  }

  if (v30(&v20[v29], 1, v11) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v20, &qword_100418D70, &qword_10036D8E0);
LABEL_14:
  v35 = *(v48 + 28);
  v36 = *(v9 + 48);
  v37 = v52;
  sub_10000A0A4(v47 + v35, v52, &qword_100418D78, &qword_10036D8E8);
  sub_10000A0A4(v53 + v35, v37 + v36, &qword_100418D78, &qword_10036D8E8);
  v38 = v51;
  v39 = *(v50 + 48);
  if (v39(v37, 1, v51) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_1000059A8(v37, &qword_100418D78, &qword_10036D8E8);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_19;
  }

  v40 = v49;
  sub_10000A0A4(v37, v49, &qword_100418D78, &qword_10036D8E8);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_10009E7F4(v40, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
LABEL_19:
    v31 = &qword_10041C590;
    v32 = &qword_100373D90;
    v33 = v37;
    goto LABEL_20;
  }

  v43 = v37 + v36;
  v44 = v46;
  sub_10009E724(v43, v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v45 = sub_1000A1120(v40, v44);
  sub_10009E7F4(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_10009E7F4(v40, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_1000059A8(v37, &qword_100418D78, &qword_10036D8E8);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_1000A3E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A3FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A423C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
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

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A45FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  __chkstk_darwin(v7 - 8);
  v68 = &v64 - v8;
  v70 = sub_100024A2C(&qword_10041C5A0, &qword_100373DA0);
  __chkstk_darwin(v70);
  v10 = &v64 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin(v11);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  __chkstk_darwin(v13 - 8);
  v73 = &v64 - v14;
  v74 = sub_100024A2C(&qword_10041C5A8, &qword_100373DA8);
  __chkstk_darwin(v74);
  v77 = &v64 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  __chkstk_darwin(v20 - 8);
  v22 = &v64 - v21;
  v23 = sub_100024A2C(&qword_10041C5B0, &qword_100373DB0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v27 = *(v26 + 20);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_28;
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
      goto LABEL_28;
    }
  }

  v64 = v6;
  v65 = v10;
  v32 = *(v26 + 24);
  v33 = *(v23 + 48);
  v66 = a1;
  v67 = v26;
  sub_10000A0A4(a1 + v32, v25, &qword_100418D38, &qword_10036D8A8);
  v34 = a2 + v32;
  v35 = a2;
  sub_10000A0A4(v34, &v25[v33], &qword_100418D38, &qword_10036D8A8);
  v36 = *(v17 + 48);
  if (v36(v25, 1, v16) == 1)
  {
    if (v36(&v25[v33], 1, v16) == 1)
    {
      sub_1000059A8(v25, &qword_100418D38, &qword_10036D8A8);
      goto LABEL_14;
    }

LABEL_12:
    v37 = &qword_10041C5B0;
    v38 = &qword_100373DB0;
    v39 = v25;
LABEL_27:
    sub_1000059A8(v39, v37, v38);
    goto LABEL_28;
  }

  sub_10000A0A4(v25, v22, &qword_100418D38, &qword_10036D8A8);
  if (v36(&v25[v33], 1, v16) == 1)
  {
    sub_10009E7F4(v22, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
    goto LABEL_12;
  }

  sub_10009E724(&v25[v33], v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v40 = sub_1000A4464(v22, v19);
  sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_10009E7F4(v22, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_1000059A8(v25, &qword_100418D38, &qword_10036D8A8);
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v41 = v66;
  v42 = *(v67 + 28);
  v43 = *(v74 + 48);
  v44 = v77;
  sub_10000A0A4(v66 + v42, v77, &qword_100418D40, &qword_10036D8B0);
  sub_10000A0A4(v35 + v42, v44 + v43, &qword_100418D40, &qword_10036D8B0);
  v45 = v76;
  v46 = *(v75 + 48);
  if (v46(v44, 1, v76) != 1)
  {
    v49 = v73;
    sub_10000A0A4(v44, v73, &qword_100418D40, &qword_10036D8B0);
    v50 = v46(v44 + v43, 1, v45);
    v48 = v65;
    if (v50 != 1)
    {
      v51 = v44 + v43;
      v52 = v69;
      sub_10009E724(v51, v69, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      v53 = sub_1000A0428(v49, v52);
      sub_10009E7F4(v52, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      sub_10009E7F4(v49, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      sub_1000059A8(v44, &qword_100418D40, &qword_10036D8B0);
      if ((v53 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_10009E7F4(v49, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
    goto LABEL_19;
  }

  v47 = v46(v44 + v43, 1, v45);
  v48 = v65;
  if (v47 != 1)
  {
LABEL_19:
    v37 = &qword_10041C5A8;
    v38 = &qword_100373DA8;
    v39 = v44;
    goto LABEL_27;
  }

  sub_1000059A8(v44, &qword_100418D40, &qword_10036D8B0);
LABEL_21:
  v54 = *(v67 + 32);
  v55 = *(v70 + 48);
  sub_10000A0A4(v41 + v54, v48, &qword_100418D48, &qword_10036D8B8);
  sub_10000A0A4(v35 + v54, v48 + v55, &qword_100418D48, &qword_10036D8B8);
  v56 = v72;
  v57 = *(v71 + 48);
  if (v57(v48, 1, v72) == 1)
  {
    if (v57(v48 + v55, 1, v56) == 1)
    {
      sub_1000059A8(v48, &qword_100418D48, &qword_10036D8B8);
LABEL_31:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_26;
  }

  v58 = v68;
  sub_10000A0A4(v48, v68, &qword_100418D48, &qword_10036D8B8);
  if (v57(v48 + v55, 1, v56) == 1)
  {
    sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
LABEL_26:
    v37 = &qword_10041C5A0;
    v38 = &qword_100373DA0;
    v39 = v48;
    goto LABEL_27;
  }

  v61 = v48 + v55;
  v62 = v64;
  sub_10009E724(v61, v64, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v63 = sub_10009FC10(v58, v62);
  sub_10009E7F4(v62, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_1000059A8(v48, &qword_100418D48, &qword_10036D8B8);
  if (v63)
  {
    goto LABEL_31;
  }

LABEL_28:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_1000A4F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418C90, &qword_10036D800);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100024A2C(&qword_10041C5C8, &unk_100373DC8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  sub_10000A0A4(v28 + v21, v13, &qword_100418C90, &qword_10036D800);
  sub_10000A0A4(v20 + v21, &v13[v22], &qword_100418C90, &qword_10036D800);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100418C90, &qword_10036D800);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v13, v10, &qword_100418C90, &qword_10036D800);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
LABEL_12:
    sub_1000059A8(v13, &qword_10041C5C8, &unk_100373DC8);
    goto LABEL_13;
  }

  sub_10009E724(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v26 = sub_1000A5AE8(v10, v7);
  sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_1000059A8(v13, &qword_100418C90, &qword_10036D800);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1000A52AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418C98, &qword_10036D808);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_100024A2C(&qword_10041C5C0, &qword_100373DC0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a1;
  v21 = a2;
  v22 = *(v14 + 24);
  v23 = *(v11 + 48);
  v53 = v20;
  v54 = v14;
  sub_10000A0A4(v20 + v22, v13, &qword_100418C98, &qword_10036D808);
  sub_10000A0A4(v21 + v22, &v13[v23], &qword_100418C98, &qword_10036D808);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v10, &qword_100418C98, &qword_10036D808);
    if (v24(&v13[v23], 1, v4) != 1)
    {
      sub_10009E724(&v13[v23], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      v27 = sub_1000A4F14(v10, v7);
      sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      sub_1000059A8(v13, &qword_100418C98, &qword_10036D808);
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
LABEL_12:
    sub_1000059A8(v13, &qword_10041C5C0, &qword_100373DC0);
    goto LABEL_13;
  }

  if (v24(&v13[v23], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v13, &qword_100418C98, &qword_10036D808);
LABEL_16:
  v28 = v54[7];
  v29 = (v53 + v28);
  v30 = *(v53 + v28 + 4);
  v31 = (v21 + v28);
  v32 = *(v21 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v33 = v54[8];
  v34 = (v53 + v33);
  v35 = *(v53 + v33 + 4);
  v36 = (v21 + v33);
  v37 = *(v21 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v38 = v54[9];
  v39 = (v53 + v38);
  v40 = *(v53 + v38 + 4);
  v41 = (v21 + v38);
  v42 = *(v21 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v43 = v54[10];
  v44 = (v53 + v43);
  v45 = *(v53 + v43 + 4);
  v46 = (v21 + v43);
  v47 = *(v21 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v48 = v54[11];
  v49 = (v53 + v48);
  v50 = *(v53 + v48 + 4);
  v51 = (v21 + v48);
  v52 = *(v21 + v48 + 4);
  if ((v50 & 1) == 0)
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_13;
    }

LABEL_46:
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v25 & 1;
  }

  if (v52)
  {
    goto LABEL_46;
  }

LABEL_13:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1000A5750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418CA0, &qword_10036D810);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100024A2C(&qword_10041C5B8, &qword_100373DB8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  sub_10000A0A4(v28 + v21, v13, &qword_100418CA0, &qword_10036D810);
  sub_10000A0A4(v20 + v21, &v13[v22], &qword_100418CA0, &qword_10036D810);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100418CA0, &qword_10036D810);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v13, v10, &qword_100418CA0, &qword_10036D810);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
LABEL_12:
    sub_1000059A8(v13, &qword_10041C5B8, &qword_100373DB8);
    goto LABEL_13;
  }

  sub_10009E724(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v26 = sub_1000A52AC(v10, v7);
  sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_1000059A8(v13, &qword_100418CA0, &qword_10036D810);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1000A5AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 + 20);
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

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A5BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A5C24()
{
  result = qword_100418F70;
  if (!qword_100418F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F70);
  }

  return result;
}

unint64_t sub_1000A5C7C()
{
  result = qword_100418F78;
  if (!qword_100418F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F78);
  }

  return result;
}

unint64_t sub_1000A5CD4()
{
  result = qword_100418F80;
  if (!qword_100418F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F80);
  }

  return result;
}

unint64_t sub_1000A5D5C()
{
  result = qword_100418F98;
  if (!qword_100418F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F98);
  }

  return result;
}

unint64_t sub_1000A5DB4()
{
  result = qword_100418FA0;
  if (!qword_100418FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FA0);
  }

  return result;
}

unint64_t sub_1000A5E0C()
{
  result = qword_100418FA8;
  if (!qword_100418FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FA8);
  }

  return result;
}

unint64_t sub_1000A5E94()
{
  result = qword_100418FC0;
  if (!qword_100418FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FC0);
  }

  return result;
}

unint64_t sub_1000A5EEC()
{
  result = qword_100418FC8;
  if (!qword_100418FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FC8);
  }

  return result;
}

unint64_t sub_1000A5F44()
{
  result = qword_100418FD0;
  if (!qword_100418FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FD0);
  }

  return result;
}

unint64_t sub_1000A5FCC()
{
  result = qword_100418FE8;
  if (!qword_100418FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FE8);
  }

  return result;
}

unint64_t sub_1000A6024()
{
  result = qword_100418FF0;
  if (!qword_100418FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FF0);
  }

  return result;
}

unint64_t sub_1000A607C()
{
  result = qword_100418FF8;
  if (!qword_100418FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FF8);
  }

  return result;
}

unint64_t sub_1000A6104()
{
  result = qword_100419010;
  if (!qword_100419010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419010);
  }

  return result;
}

unint64_t sub_1000A615C()
{
  result = qword_100419018;
  if (!qword_100419018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419018);
  }

  return result;
}

unint64_t sub_1000A61B4()
{
  result = qword_100419020;
  if (!qword_100419020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419020);
  }

  return result;
}

unint64_t sub_1000A623C()
{
  result = qword_100419038;
  if (!qword_100419038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419038);
  }

  return result;
}

unint64_t sub_1000A6294()
{
  result = qword_100419040;
  if (!qword_100419040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419040);
  }

  return result;
}

unint64_t sub_1000A62EC()
{
  result = qword_100419048;
  if (!qword_100419048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419048);
  }

  return result;
}

unint64_t sub_1000A6374()
{
  result = qword_100419060;
  if (!qword_100419060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419060);
  }

  return result;
}

unint64_t sub_1000A63CC()
{
  result = qword_100419068;
  if (!qword_100419068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419068);
  }

  return result;
}

unint64_t sub_1000A6424()
{
  result = qword_100419070;
  if (!qword_100419070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419070);
  }

  return result;
}

unint64_t sub_1000A64AC()
{
  result = qword_100419088;
  if (!qword_100419088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419088);
  }

  return result;
}

unint64_t sub_1000A6504()
{
  result = qword_100419090;
  if (!qword_100419090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419090);
  }

  return result;
}

unint64_t sub_1000A655C()
{
  result = qword_100419098;
  if (!qword_100419098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419098);
  }

  return result;
}

unint64_t sub_1000A65E4()
{
  result = qword_1004190B0;
  if (!qword_1004190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190B0);
  }

  return result;
}

unint64_t sub_1000A663C()
{
  result = qword_1004190B8;
  if (!qword_1004190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190B8);
  }

  return result;
}

unint64_t sub_1000A6694()
{
  result = qword_1004190C0;
  if (!qword_1004190C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190C0);
  }

  return result;
}

unint64_t sub_1000A671C()
{
  result = qword_1004190D8;
  if (!qword_1004190D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190D8);
  }

  return result;
}

unint64_t sub_1000A6774()
{
  result = qword_1004190E0;
  if (!qword_1004190E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190E0);
  }

  return result;
}

unint64_t sub_1000A67CC()
{
  result = qword_1004190E8;
  if (!qword_1004190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190E8);
  }

  return result;
}

unint64_t sub_1000A6854()
{
  result = qword_100419100;
  if (!qword_100419100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419100);
  }

  return result;
}

unint64_t sub_1000A68AC()
{
  result = qword_100419108;
  if (!qword_100419108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419108);
  }

  return result;
}

unint64_t sub_1000A6904()
{
  result = qword_100419110;
  if (!qword_100419110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419110);
  }

  return result;
}

unint64_t sub_1000A698C()
{
  result = qword_100419128;
  if (!qword_100419128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419128);
  }

  return result;
}

unint64_t sub_1000A69E4()
{
  result = qword_100419130;
  if (!qword_100419130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419130);
  }

  return result;
}

unint64_t sub_1000A6A3C()
{
  result = qword_100419138;
  if (!qword_100419138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Type7Info.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Type7Info.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_BtAdvertisement.BtType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_BtAdvertisement.BtType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Proto_Gpsd_LtlInfoType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gpsd_LtlInfoType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000AAAE4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &unk_100419778, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AABD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000AAC7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_1000AABD0(319, a6, a7);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AADEC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AAEC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AB01C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000AB0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000AB1DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void sub_1000AB34C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000AB44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000AB538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_1000AB5F0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AB6FC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AB844(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041A078, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &unk_10041A080, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AB9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000ABAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_1000ABBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000ABC90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

void sub_1000ABD48(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000ABE94(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &unk_10041A448, &type metadata for Int64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ABFE0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041A4E0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &qword_10041A4E8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
        if (v4 <= 0x3F)
        {
          sub_1000AABD0(319, &unk_10041A4F0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AC1B4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &unk_10041A698, &type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000AC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_100024A2C(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1000AC40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_100024A2C(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 24);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1000AC578(uint64_t a1)
{
  sub_1000AD7AC(319, &unk_10041A7C0, &type metadata for Double, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC6CC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AC838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_1000AD7AC(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC954(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041A9F0, &type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041A9F8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACA94(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000ACBA8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041AB20, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACD2C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041AC38, &type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041AC40, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACE6C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000ACFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v18 = sub_100024A2C(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t sub_1000AD11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v20 = sub_100024A2C(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void sub_1000AD28C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AD3C4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AD508(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AD660(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    if (v2 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_10041B0B0, &type metadata for CLP_LogEntry_PrivateData_SvReferencePoint, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000AABD0(319, &unk_10041B0B8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AD7AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000AD86C(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041B228, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041B230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041B238, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &qword_10041B240, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
        if (v4 <= 0x3F)
        {
          sub_1000AABD0(319, &qword_10041B248, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
          if (v5 <= 0x3F)
          {
            sub_1000AABD0(319, &qword_10041B250, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
            if (v6 <= 0x3F)
            {
              sub_1000AABD0(319, &qword_10041B258, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
              if (v7 <= 0x3F)
              {
                sub_1000AABD0(319, &qword_10041B260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                if (v8 <= 0x3F)
                {
                  sub_1000AABD0(319, &unk_10041B268, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_1000ADBE8(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041B470, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &unk_10041B478, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000ADD30(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041B720, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041A078, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041A080, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
        if (v4 <= 0x3F)
        {
          sub_1000AABD0(319, &qword_10041B728, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
          if (v5 <= 0x3F)
          {
            sub_1000AABD0(319, &qword_10041B730, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
            if (v6 <= 0x3F)
            {
              sub_1000AABD0(319, &unk_10041B738, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000AE01C(uint64_t a1)
{
  sub_1000AABD0(319, &unk_10041B9A0, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000AE0DC(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &unk_10041BA88, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AE248(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AE360(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041BF70, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041BF78, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041BF80, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &qword_10041BF88, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
        if (v4 <= 0x3F)
        {
          sub_1000AABD0(319, &unk_10041BF90, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1000AE570(uint64_t a1)
{
  sub_1000AABD0(319, &qword_10041C0D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  if (v1 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041C0E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    if (v2 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041C0E8, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      if (v3 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041C0F0, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1000AE740()
{
  result = qword_10041C420;
  if (!qword_10041C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C420);
  }

  return result;
}

unint64_t sub_1000AE794()
{
  result = qword_10041C428;
  if (!qword_10041C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C428);
  }

  return result;
}

unint64_t sub_1000AE7E8()
{
  result = qword_10041C430;
  if (!qword_10041C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C430);
  }

  return result;
}

unint64_t sub_1000AE83C()
{
  result = qword_10041C438;
  if (!qword_10041C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C438);
  }

  return result;
}

unint64_t sub_1000AE890()
{
  result = qword_10041C440;
  if (!qword_10041C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C440);
  }

  return result;
}

unint64_t sub_1000AE8E4()
{
  result = qword_10041C448;
  if (!qword_10041C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C448);
  }

  return result;
}

unint64_t sub_1000AE938()
{
  result = qword_10041C450;
  if (!qword_10041C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C450);
  }

  return result;
}

unint64_t sub_1000AE98C()
{
  result = qword_10041C458;
  if (!qword_10041C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C458);
  }

  return result;
}

unint64_t sub_1000AE9E0()
{
  result = qword_10041C460;
  if (!qword_10041C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C460);
  }

  return result;
}

unint64_t sub_1000AEA34()
{
  result = qword_10041C468;
  if (!qword_10041C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C468);
  }

  return result;
}

unint64_t sub_1000AEA88()
{
  result = qword_10041C470;
  if (!qword_10041C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C470);
  }

  return result;
}

unint64_t sub_1000AEADC()
{
  result = qword_10041C478;
  if (!qword_10041C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C478);
  }

  return result;
}

uint64_t sub_1000AEBB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_10041C5D0, &qword_100373E20);
  v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000AF3FC(v5, a1, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041C5D0, &qword_100373E20);
  }

  return result;
}

int *sub_1000AED48@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1000AEDF8(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041C5D0, &qword_100373E20);
  sub_1000AF3FC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000AEEB0(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041C5D0, &qword_100373E20) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041C5D0, &qword_100373E20);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C5D0, &qword_100373E20);
    }
  }

  else
  {
    sub_1000AF3FC(v7, v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  return sub_1000AF100;
}

BOOL sub_1000AF128()
{
  v1 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v0 + *(v4 + 24), v3, &qword_10041C5D0, &qword_100373E20);
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_10041C5D0, &qword_100373E20);
  return v6;
}

uint64_t sub_1000AF21C()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  sub_1000059A8(v0 + v1, &qword_10041C5D0, &qword_100373E20);
  v2 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000AF2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041C5D8, qword_100373E28);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000AF3FC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  sub_1000B6664(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041C5D8, qword_100373E28);
  }

  return result;
}

uint64_t sub_1000AF3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AF464(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041C5D8, qword_100373E28);
  sub_1000AF3FC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000AF51C(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041C5D8, qword_100373E28) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041C5D8, qword_100373E28);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1000B6664(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C5D8, qword_100373E28);
    }
  }

  else
  {
    sub_1000AF3FC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  return sub_1000AF728;
}

void sub_1000AF750(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1000AF888(v11, v10, a5);
    sub_1000059A8(v14 + v9, a3, a4);
    sub_1000AF3FC(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1000AF8F0(v11, a5);
  }

  else
  {
    sub_1000059A8(v14 + v9, a3, a4);
    sub_1000AF3FC(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_1000AF888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AF8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1000AF950()
{
  v1 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v0 + *(v4 + 28), v3, &qword_10041C5D8, qword_100373E28);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_10041C5D8, qword_100373E28);
  return v6;
}

uint64_t sub_1000AFA44()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  sub_1000059A8(v0 + v1, &qword_10041C5D8, qword_100373E28);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

double sub_1000AFAD0()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFB08(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFB40(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_1000AFBDC()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000AFC0C()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFC44(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFC7C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000AFD18()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000AFD48()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFD80(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFDB8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000AFE54()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000AFE84()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000AFEB8(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFEF0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000AFF88()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000AFFB8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  ExtensionFieldValueSet.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1000B00C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1000B0138@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000B01B4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000B0278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B02EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B0388()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FA0);
  sub_100005DF0(v0, qword_100432FA0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_record_time";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "private_data_capture";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B05D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 4)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_LogEntry(0);
        sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373E70);
        dispatch thunk of Decoder.decodeExtensionField(values:messageType:fieldNumber:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_LogEntry(0);
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp;
        v8 = &unk_100373FD8;
        v9 = &qword_10041C610;
LABEL_12:
        sub_1000B1FBC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_LogEntry(0);
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture;
    v8 = &unk_1003741F0;
    v9 = &qword_10041C778;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1000B0794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1000B0844(v5, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for CLP_LogEntry_LogEntry(0);
    dispatch thunk of Visitor.visitExtensionFields(fields:start:end:)();
    sub_1000B0A54(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000B0844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041C5D0, &qword_100373E20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041C5D0, &qword_100373E20);
  }

  sub_1000AF3FC(v7, v11, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &unk_100373FD8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000AF8F0(v11, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
}

uint64_t sub_1000B0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041C5D8, qword_100373E28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041C5D8, qword_100373E28);
  }

  sub_1000AF3FC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  sub_1000B1FBC(&qword_10041C778, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_1003741F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000AF8F0(v11, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
}

uint64_t sub_1000B0CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  ExtensionFieldValueSet.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000B0DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B1FBC(&qword_10041C750, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373EE8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B0E7C(uint64_t a1)
{
  v2 = sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373E70);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0EE8(uint64_t a1, uint64_t a2)
{
  sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373E70);

  return Message.hash(into:)();
}

void sub_1000B0F68()
{
  v0._countAndFlagsBits = 0x617453656D69542ELL;
  v0._object = 0xEA0000000000706DLL;
  String.append(_:)(v0);
  qword_100432FB8 = 0xD000000000000015;
  unk_100432FC0 = 0x800000010039F1A0;
}

uint64_t *sub_1000B0FD8()
{
  if (qword_1004431E8 != -1)
  {
    swift_once();
  }

  return &qword_100432FB8;
}

uint64_t sub_1000B1028()
{
  if (qword_1004431E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100432FB8;

  return v0;
}

uint64_t sub_1000B1090()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FC8);
  sub_100005DF0(v0, qword_100432FC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cf_absolute_time_s";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_absolute_time_s";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mach_continuous_time_s";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pipelined_monotonic_time_ns";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B1320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

int *sub_1000B1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
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

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int sub_1000B157C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000B1FBC(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B1634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B1FBC(&qword_10041C748, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &unk_100374050);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B16D4(uint64_t a1)
{
  v2 = sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &unk_100373FD8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B1740(uint64_t a1, uint64_t a2)
{
  sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &unk_100373FD8);

  return Message.hash(into:)();
}

uint64_t sub_1000B17C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000B1FBC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B1924(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  __chkstk_darwin(v4 - 8);
  v40 = &v38 - v5;
  v41 = sub_100024A2C(&qword_10041C758, &qword_100374170);
  __chkstk_darwin(v41);
  v44 = &v38 - v6;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_100024A2C(&qword_10041C760, &qword_100374178);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v42 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v18 = *(v42 + 24);
  v19 = *(v15 + 56);
  v46 = a1;
  sub_10000A0A4(a1 + v18, v17, &qword_10041C5D0, &qword_100373E20);
  v20 = v47 + v18;
  v21 = v47;
  sub_10000A0A4(v20, &v17[v19], &qword_10041C5D0, &qword_100373E20);
  v22 = *(v8 + 48);
  if (v22(v17, 1, v7) == 1)
  {
    if (v22(&v17[v19], 1, v7) == 1)
    {
      sub_1000059A8(v17, &qword_10041C5D0, &qword_100373E20);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_10041C760;
    v24 = &qword_100374178;
    v25 = v17;
LABEL_14:
    sub_1000059A8(v25, v23, v24);
    goto LABEL_15;
  }

  sub_10000A0A4(v17, v13, &qword_10041C5D0, &qword_100373E20);
  if (v22(&v17[v19], 1, v7) == 1)
  {
    sub_1000AF8F0(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    goto LABEL_6;
  }

  sub_1000AF3FC(&v17[v19], v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v26 = sub_1000B17C0(v13, v10);
  sub_1000AF8F0(v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000AF8F0(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000059A8(v17, &qword_10041C5D0, &qword_100373E20);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = *(v42 + 28);
  v28 = *(v41 + 48);
  v29 = v44;
  sub_10000A0A4(v46 + v27, v44, &qword_10041C5D8, qword_100373E28);
  sub_10000A0A4(v21 + v27, v29 + v28, &qword_10041C5D8, qword_100373E28);
  v30 = *(v43 + 48);
  v31 = v45;
  if (v30(v29, 1, v45) != 1)
  {
    v32 = v40;
    sub_10000A0A4(v29, v40, &qword_10041C5D8, qword_100373E28);
    if (v30(v29 + v28, 1, v31) != 1)
    {
      v35 = v29 + v28;
      v36 = v39;
      sub_1000AF3FC(v35, v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000B1FBC(&qword_10041C770, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_100374330);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000AF8F0(v36, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000AF8F0(v32, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000059A8(v29, &qword_10041C5D8, qword_100373E28);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1000AF8F0(v32, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
    goto LABEL_13;
  }

  if (v30(v29 + v28, 1, v31) != 1)
  {
LABEL_13:
    v23 = &qword_10041C758;
    v24 = &qword_100374170;
    v25 = v29;
    goto LABEL_14;
  }

  sub_1000059A8(v29, &qword_10041C5D8, qword_100373E28);
LABEL_18:
  type metadata accessor for UnknownStorage();
  sub_1000B1FBC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ExtensionFieldValueSet();
    sub_1000B1FBC(&qword_10041C768, &type metadata accessor for ExtensionFieldValueSet, &protocol conformance descriptor for ExtensionFieldValueSet);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v33 & 1;
  }

LABEL_15:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1000B1FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000B226C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExtensionFieldValueSet();
    if (v2 <= 0x3F)
    {
      sub_1000B2358(319, &qword_10041C678, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
      if (v3 <= 0x3F)
      {
        sub_1000B2358(319, &unk_10041C680, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B2358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000B23D4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418648, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_1000B2498(319, &unk_10041A448, &type metadata for Int64);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B2498(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B24E8@<X0>(void *a1@<X8>)
{
  sub_1000257C4(a1);
  v1 = ALResultOptions._maxBatchSize.getter();
  if ((v1 & 0x100000000) == 0)
  {
    sub_100026604(v1);
  }

  v2 = ALResultOptions._intervalSec.getter();
  if ((v2 & 0x100000000) == 0)
  {
    sub_10002673C(*&v2);
  }

  v3 = ALResultOptions._maxAgeSec.getter();
  if ((v3 & 0x100000000) == 0)
  {
    sub_100026878(*&v3);
  }

  started = ALResultOptions._startCfaTimeSec.getter();
  if ((v5 & 1) == 0)
  {
    sub_100026BEC(*&started);
  }

  result = ALResultOptions._endCfaTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    return sub_100026D28(*&result);
  }

  return result;
}

uint64_t sub_1000B2588()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (v12 - v4);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  __chkstk_darwin(v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F98(v8);
  sub_1000254F4(3);
  sub_1000257C4(v5);
  ALResultOptions.intervalSec.getter();
  sub_10002673C(v9);
  sub_100014A4C(v5, v3, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  sub_10002589C(v3);
  sub_100013A88(&qword_100418460, type metadata accessor for CLP_LogEntry_AONLoc_Request, &unk_10036CAD8);
  v10 = Message.serializedData(partial:)();
  sub_100014DD8(v5, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  sub_100014DD8(v8, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  return v10;
}

uint64_t sub_1000B2768(uint64_t a1)
{
  ALResultOptions.init()();
  if (sub_1000267E0())
  {
    sub_100026704();
    ALResultOptions._intervalSec.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t sub_1000B27E8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v7 = __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100013A88(&qword_100418478, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions, &unk_10036CC68);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_100014A4C(v11, v9, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  ALResultOptions.init()();
  if (sub_1000267E0())
  {
    sub_100026704();
    LOBYTE(v13[0]) = 0;
    ALResultOptions._intervalSec.setter();
  }

  sub_100005B2C(a1, a2);
  sub_100014DD8(v9, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  return sub_100014DD8(v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t sub_1000B2A1C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF770 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B2A98(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:))
  {
    return 2;
  }

  if (v4 != enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t sub_1000B2BB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF790 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B2C2C(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.ibss(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.infra(_:))
  {
    return 2;
  }

  if (v4 != enum case for ALWiFiScanSingleAccessPoint.Mode.others(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t sub_1000B2D44@<X0>(uint64_t a1@<X8>)
{
  sub_100012470(a1);

  return sub_100012688();
}

uint64_t sub_1000B2D7C()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012470(v2);
  sub_100012688();
  sub_100013A88(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);
  v3 = Message.serializedData(partial:)();
  sub_100014DD8(v2, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v3;
}

uint64_t sub_1000B2E84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  ALWiFiScanSingleAccessPoint.init(_:)();
  if (sub_1000FFA5C())
  {
    sub_1000FF9A0();
    ALWiFiScanSingleAccessPoint._mac.setter();
  }

  if (sub_1000FFB9C())
  {
    sub_1000FFABC();
    ALWiFiScanSingleAccessPoint._ssid.setter();
  }

  if (sub_1000FFC64())
  {
    sub_1000FFBE4();
    v22 = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
  }

  if (sub_1000FFE90())
  {
    sub_1000FFDD4();
    v23 = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
  }

  if (sub_1000FFF74())
  {
    sub_1000FFEF0();
    v24 = 0;
    ALWiFiScanSingleAccessPoint._ageSec.setter();
  }

  if (sub_100100190())
  {
    sub_1001000DC();
    ALWiFiScanSingleAccessPoint._isMoving.setter();
  }

  if (sub_100100398())
  {
    sub_1001002C4();
    v25 = 0;
    ALWiFiScanSingleAccessPoint._frequencyKhz.setter();
  }

  if (sub_100100270())
  {
    v16 = sub_1001001E4();
    (*(v10 + 104))(v12, **(&off_1003FF770 + v16), v9);
    (*(v10 + 32))(v15, v12, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    ALWiFiScanSingleAccessPoint._band.setter();
  }

  if (sub_1000FFD80())
  {
    v17 = sub_1000FFCC4();
    v18 = v21;
    (*(v4 + 104))(v21, **(&off_1003FF790 + v17), v3);
    (*(v4 + 32))(v8, v18, v3);
    (*(v4 + 56))(v8, 0, 1, v3);
    ALWiFiScanSingleAccessPoint._mode.setter();
  }

  if (sub_100100088())
  {
    sub_1000FFFD4();
    ALWiFiScanSingleAccessPoint._isAph.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t sub_1000B32D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  ALWiFiScanResult.init()();
  if (sub_100100A88())
  {
    sub_100100830(v18);
    v19 = sub_1000B9290();
    sub_100014DD8(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    if (v19)
    {
      sub_100100830(v18);
      sub_1000B45B8(v18);
      v20 = type metadata accessor for ALTimeStamp();
      (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
      ALWiFiScanResult._scanTimestamp.setter();
    }
  }

  v38 = a1;
  v21 = *(*a1 + 16);
  v22 = v46;
  if (v21)
  {
    v23 = *a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    v41 = v8 + 32;
    v42 = v24;
    v39 = (v8 + 16);
    v40 = v8 + 8;
    v43 = v7;
    do
    {
      v25 = v44;
      sub_100014A4C(v23, v44, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v26 = ALWiFiScanResult._scanTimestamp.modify();
      sub_1000B2E84(v25, v27);
      v26(v47, 0);
      (*v39)(v22, v12, v7);
      v28 = ALWiFiScanResult._accessPoints.modify();
      v30 = v29;
      v31 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1000133BC(0, v31[2] + 1, 1, v31, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
        *v30 = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1000133BC((v33 > 1), v34 + 1, 1, v31, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
        *v30 = v31;
      }

      v31[2] = v34 + 1;
      v35 = v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34;
      v22 = v46;
      v7 = v43;
      (*(v8 + 32))(v35, v46, v43);
      v28(v47, 0);
      (*(v8 + 8))(v12, v7);
      v23 += v42;
      --v21;
    }

    while (v21);
  }

  return sub_100014DD8(v38, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t ALWiFiScanResult.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100013A88(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F668);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_100014A4C(v13, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000B32D8(v11, a3);
  sub_100005B2C(a1, a2);
  return sub_100014DD8(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t sub_1000B3994@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100013AE8(a3);
  if ((a2 & 1) == 0)
  {
    sub_100013E34(1);
    sub_100012470(v8);
    sub_100013E64(v8);
    sub_100013FB8(v8);
    sub_100012C18(a1);
    return sub_100013E64(v8);
  }

  return result;
}

uint64_t sub_1000B3A54()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_10010047C())
  {
    return 0;
  }

  if (!sub_1001007A0())
  {
    return 0;
  }

  sub_100013FB8(v2);
  v3 = sub_1000FFA5C();
  sub_100014DD8(v2, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  if (!v3)
  {
    return 0;
  }

  sub_100013FB8(v2);
  v4 = sub_1000FF9A0();
  sub_100014DD8(v2, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v4;
}

uint64_t sub_1000B3B58@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiNotification.NotiType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF7B0 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B3BD8(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  __chkstk_darwin(v17 - 8);
  v19 = &v25 - v18;
  ALWiFiNotification.init()();
  if (sub_100101594())
  {
    v20 = sub_1001014A4();
    sub_1000B3B58(v20, v19);
    v21 = type metadata accessor for ALWiFiNotification.NotiType();
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
    ALWiFiNotification._type.setter();
  }

  if (sub_100101078())
  {
    sub_100100B78(v13);
    sub_1000B45B8(v13);
    v22 = type metadata accessor for ALTimeStamp();
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
    ALWiFiNotification._timestamp.setter();
  }

  if (sub_100102AE4())
  {
    sub_100102418(v7);
    sub_1000B32D8(v7, v10);
    v23 = type metadata accessor for ALWiFiScanResult();
    (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
    ALWiFiNotification._scanResult.setter();
  }

  if (sub_1001021A8())
  {
    sub_100101AE4(v4);
    sub_1000B3A54();
    sub_100014DD8(v4, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    ALWiFiNotification._associatedMac.setter();
  }

  if (sub_100102E54())
  {
    sub_100102D54();
    ALWiFiNotification._simulated.setter();
  }

  if (sub_100103014())
  {
    sub_100102F14();
    ALWiFiNotification._available.setter();
  }

  if (sub_100103424())
  {
    sub_1001032DC();
    ALWiFiNotification._isApAwake.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
}

uint64_t sub_1000B3FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ALWiFiNotification();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = a2;
  ALWiFiNotifications.init()();
  if (sub_1000283B4() && (v34[0] = sub_1000281F0(), v34[39] = 4, sub_1000348B0(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0) && sub_10002A3D4())
  {
    v29 = a1;
    sub_100029D60(v13);
    v28 = v13;
    v14 = *v13;
    v15 = *(*v13 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      v30 = v8 + 32;
      v31 = v17;
      do
      {
        sub_100014A4C(v16, v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        sub_1000B3BD8(v7);
        v18 = ALWiFiNotifications._results.modify();
        v20 = v19;
        v21 = *v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1000133BC(0, v21[2] + 1, 1, v21, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
          *v20 = v21;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = sub_1000133BC((v23 > 1), v24 + 1, 1, v21, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
          *v20 = v21;
        }

        v21[2] = v24 + 1;
        (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v10, v32);
        v18(v34, 0);
        v16 += v31;
        --v15;
      }

      while (v15);
    }

    a1 = v28;
    sub_100027658();
    ALWiFiNotifications._isLastBatch.setter();
    sub_100014DD8(v29, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v25 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication;
  }

  else
  {
    v25 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
  }

  return sub_100014DD8(a1, v25);
}

uint64_t ALWiFiNotifications.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v9 = __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100013A88(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &unk_10036D208);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_100014A4C(v13, v11, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  sub_1000B3FF0(v11, a3);
  sub_100005B2C(a1, a2);
  return sub_100014DD8(v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

uint64_t sub_1000B45B8(uint64_t a1)
{
  ALTimeStamp.init()();
  if (sub_1000B90C8())
  {
    sub_1000B9044();
    ALTimeStamp._cfAbsoluteTimeSec.setter();
  }

  if (sub_1000B91AC())
  {
    sub_1000B9128();
    ALTimeStamp._machAbsoluteTimeSec.setter();
  }

  if (sub_1000B9290())
  {
    sub_1000B920C();
    ALTimeStamp._machContinuousTimeSec.setter();
  }

  return sub_1000B4668(a1);
}

uint64_t sub_1000B4668(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ALTimeStamp.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  sub_10000C270(v3);
  v6 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    sub_10000B840(*&v6);
  }

  v8 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v9 & 1) == 0)
  {
    sub_10000C288(*&v8);
  }

  v10 = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v11 & 1) == 0)
  {
    sub_10000B878(*&v10);
  }

  sub_1000B47FC(v3, v5);
  sub_1000B4860();
  v12 = Message.serializedData(partial:)();
  sub_1000B4668(v5);
  return v12;
}

uint64_t sub_1000B47FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B4860()
{
  result = qword_10041C7B8;
  if (!qword_10041C7B8)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C7B8);
  }

  return result;
}

uint64_t static ALProtobufUtil.stringfyJson<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JSONEncodingOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSONEncodingOptions.init()();
  v9 = Message.jsonUTF8Data(options:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  v14 = v13;
  sub_100005B2C(v9, v11);
  if (v14)
  {
    return v12;
  }

  else
  {
    return 0x3E6C696E3CLL;
  }
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(_:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for JSONEncodingOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  __chkstk_darwin(v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000D9FC(a1, v22);
  sub_100024A2C(&qword_10041C7C0, &unk_1003741A8);
  swift_dynamicCast();
  JSONEncodingOptions.init()();
  sub_1000B55D0(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373E70);
  v13 = Message.jsonUTF8Data(options:)();
  if (v1)
  {
    (*(v7 + 8))(v9, v6);
    sub_1000B5524(v12, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  else
  {
    v15 = v13;
    v16 = v9;
    v17 = v14;
    (*(v7 + 8))(v16, v6);
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v19 = v18;
    sub_100005B2C(v15, v17);
    if (!v19)
    {
      v5 = 0x3E6C696E3CLL;
    }

    sub_1000B5524(v12, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  return v5;
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for JSONEncodingOptions();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_1000B55D0(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry, &unk_100373E70);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v30 = 0.0;
    v31 = v6;
    sub_100024A2C(&unk_10042F2F0, &unk_100399850);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10036C830;
    sub_1000AEBB0(v10);
    v18 = sub_1000AFD48();
    sub_1000B5524(v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    *(v17 + 56) = &type metadata for Double;
    *(v17 + 64) = &protocol witness table for Double;
    *(v17 + 32) = v18;
    v19 = sub_1000AF950();
    *(v17 + 96) = &type metadata for Bool;
    *(v17 + 104) = &protocol witness table for Bool;
    *(v17 + 72) = v19;
    sub_1000B5584();
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("time,%.2f,has,%d", v30, v31);

    v20 = v32;
    JSONEncodingOptions.init()();
    v21 = v30;
    v22 = Message.jsonUTF8Data(options:)();
    if (v21 == 0.0)
    {
      v25 = v22;
      v26 = v23;
      (*(v33 + 8))(v20, v31);
      static String.Encoding.utf8.getter();
      v27 = String.init(data:encoding:)();
      v29 = v28;
      sub_100005B2C(v25, v26);
      if (v29)
      {
        v13 = v27;
      }

      else
      {
        v13 = 0x3E6C696E3CLL;
      }

      sub_1000B5524(v16, type metadata accessor for CLP_LogEntry_LogEntry);
    }

    else
    {
      (*(v33 + 8))(v20, v31);
      sub_1000B5524(v16, type metadata accessor for CLP_LogEntry_LogEntry);
    }
  }

  return v13;
}

uint64_t static ALProtobufUtil.serialized(_:)(uint64_t a1)
{
  v1 = type metadata accessor for Google_Protobuf_UInt32Value();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Google_Protobuf_UInt32Value.init()();
  Google_Protobuf_UInt32Value.value.setter();
  sub_1000B55D0(&qword_10041C7D0, &type metadata accessor for Google_Protobuf_UInt32Value, &protocol conformance descriptor for Google_Protobuf_UInt32Value);
  v5 = Message.serializedData(partial:)();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t static ALProtobufUtil.serialized(_:)(double a1)
{
  v1 = type metadata accessor for Google_Protobuf_DoubleValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Google_Protobuf_DoubleValue.init()();
  Google_Protobuf_DoubleValue.value.setter();
  sub_1000B55D0(&qword_10041C7D8, &type metadata accessor for Google_Protobuf_DoubleValue, &protocol conformance descriptor for Google_Protobuf_DoubleValue);
  v5 = Message.serializedData(partial:)();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1000B5524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000B5584()
{
  result = qword_10041C7C8;
  if (!qword_10041C7C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10041C7C8);
  }

  return result;
}

uint64_t sub_1000B55D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B5630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C878, &qword_1003741E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041C878, &qword_1003741E0);
  v8 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000B6D54(v5, a1, type metadata accessor for Proto_Gpsd_LogEntry);
  }

  sub_1002C0734(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041C878, &qword_1003741E0);
  }

  return result;
}

uint64_t sub_1000B57C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041C878, &qword_1003741E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1000B6B08(v11);
    *(v2 + v7) = v10;
  }

  sub_1000B6D54(a1, v6, type metadata accessor for Proto_Gpsd_LogEntry);
  v12 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041C878, &qword_1003741E0);
  return swift_endAccess();
}

void (*sub_1000B5954(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041C878, &qword_1003741E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041C878, &qword_1003741E0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1002C0734(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C878, &qword_1003741E0);
    }
  }

  else
  {
    sub_1000B6D54(v7, v13, type metadata accessor for Proto_Gpsd_LogEntry);
  }

  return sub_1000B5BA0;
}

uint64_t sub_1000B5C30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C880, &qword_1003741E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041C880, &qword_1003741E8);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000B6D54(v5, a1, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  }

  sub_10002C56C(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041C880, &qword_1003741E8);
  }

  return result;
}

uint64_t sub_1000B5DA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041C880, &qword_1003741E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1000B6B08(v11);
    *(v2 + v7) = v10;
  }

  sub_1000B6D54(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041C880, &qword_1003741E8);
  return swift_endAccess();
}

void (*sub_1000B5F14(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041C880, &qword_1003741E8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041C880, &qword_1003741E8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10002C56C(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C880, &qword_1003741E8);
    }
  }

  else
  {
    sub_1000B6D54(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  }

  return sub_1000B6160;
}

void sub_1000B6190(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1000B6DBC(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
      v15 = swift_allocObject();
      sub_1000B6B08(v12);
      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_1000B6D54(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    sub_10000AD64(v21, v12 + v22, a5, a6);
    swift_endAccess();
    sub_1000B6E24(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
      v28 = swift_allocObject();
      sub_1000B6B08(v25);
      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_1000B6D54(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    sub_10000AD64(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

BOOL sub_1000B63CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_10000A0A4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1000059A8(v11, a1, a2);
  return v15;
}

uint64_t sub_1000B6514(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v16 = swift_allocObject();
    v17 = v15;
    v15 = v16;
    sub_1000B6B08(v17);
    *(v9 + v13) = v16;
  }

  v18 = a3(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = *a4;
  swift_beginAccess();
  sub_10000AD64(v12, v15 + v19, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1000B6664@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  if (qword_1004438A8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1004438B0;
}

uint64_t sub_1000B66E0()
{
  if (qword_1004438A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000B6764()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FE0);
  sub_100005DF0(v0, qword_100432FE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1004;
  *v6 = "gpsd_log_entry";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1018;
  *v10 = "aonloc_log_entry";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B6930()
{
  if (qword_1004438A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NameMap();

  return sub_100005DF0(v0, qword_100432FE0);
}

uint64_t sub_1000B6994@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004438A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_100005DF0(v2, qword_100432FE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000B6A3C()
{
  type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  v2 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_1004438B0 = v0;
  return result;
}

uint64_t sub_1000B6B08(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041C880, &qword_1003741E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_100024A2C(&qword_10041C878, &qword_1003741E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  v10 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  sub_10000A0A4(a1 + v13, v8, &qword_10041C878, &qword_1003741E0);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v9, &qword_10041C878, &qword_1003741E0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v5, &qword_10041C880, &qword_1003741E8);

  swift_beginAccess();
  sub_10000AD64(v5, v1 + v11, &qword_10041C880, &qword_1003741E8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000B6D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B6DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B6E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B6E84()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry, &qword_10041C878, &qword_1003741E0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry, &qword_10041C880, &qword_1003741E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000B6F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v9 = swift_allocObject();
    sub_1000B6B08(v8);
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

      if (result == 1004)
      {
        break;
      }

      if (result == 1018)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
        v13 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry;
        v14 = &unk_10036D398;
        v15 = &qword_1004184F0;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gpsd_LogEntry(0);
    v13 = type metadata accessor for Proto_Gpsd_LogEntry;
    v14 = &unk_100398138;
    v15 = &qword_10041CA28;
LABEL_7:
    sub_1000B8198(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1000B70F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  result = sub_1000B7184(v8, a1, a2, a3);
  if (!v4)
  {
    sub_1000B73A0(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000B7184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041C878, &qword_1003741E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041C878, &qword_1003741E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041C878, &qword_1003741E0);
  }

  sub_1000B6D54(v7, v11, type metadata accessor for Proto_Gpsd_LogEntry);
  sub_1000B8198(&qword_10041CA28, type metadata accessor for Proto_Gpsd_LogEntry, &unk_100398138);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000B6E24(v11, type metadata accessor for Proto_Gpsd_LogEntry);
}

uint64_t sub_1000B73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041C880, &qword_1003741E8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041C880, &qword_1003741E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041C880, &qword_1003741E8);
  }

  sub_1000B6D54(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  sub_1000B8198(&qword_1004184F0, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry, &unk_10036D398);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000B6E24(v11, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
}

BOOL sub_1000B75C0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v49 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100024A2C(&qword_10041CA10, &qword_1003743B0);
  __chkstk_darwin(v46);
  v50 = &v42 - v4;
  v5 = sub_100024A2C(&qword_10041C880, &qword_1003741E8);
  v6 = __chkstk_darwin(v5 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v42 - v8;
  v9 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA18, &qword_1003743B8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = sub_100024A2C(&qword_10041C878, &qword_1003741E0);
  v17 = __chkstk_darwin(v16 - 8);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v52;
  sub_10000A0A4(v22, v20, &qword_10041C878, &qword_1003741E0);
  v24 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  v25 = *(v13 + 56);
  sub_10000A0A4(v20, v15, &qword_10041C878, &qword_1003741E0);
  sub_10000A0A4(v23 + v24, &v15[v25], &qword_10041C878, &qword_1003741E0);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) != 1)
  {
    v27 = v51;
    sub_10000A0A4(v15, v51, &qword_10041C878, &qword_1003741E0);
    if (v26(&v15[v25], 1, v9) != 1)
    {
      v28 = v45;
      sub_1000B6D54(&v15[v25], v45, type metadata accessor for Proto_Gpsd_LogEntry);
      sub_1000B8198(&qword_10041CA20, type metadata accessor for Proto_Gpsd_LogEntry, &unk_100398278);

      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000B6E24(v28, type metadata accessor for Proto_Gpsd_LogEntry);
      sub_1000059A8(v20, &qword_10041C878, &qword_1003741E0);
      sub_1000B6E24(v27, type metadata accessor for Proto_Gpsd_LogEntry);
      sub_1000059A8(v15, &qword_10041C878, &qword_1003741E0);
      if (v29)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_1000059A8(v20, &qword_10041C878, &qword_1003741E0);
    sub_1000B6E24(v27, type metadata accessor for Proto_Gpsd_LogEntry);
LABEL_6:
    sub_1000059A8(v15, &qword_10041CA18, &qword_1003743B8);
    goto LABEL_7;
  }

  sub_1000059A8(v20, &qword_10041C878, &qword_1003741E0);
  if (v26(&v15[v25], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v15, &qword_10041C878, &qword_1003741E0);
LABEL_9:
  v30 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  v31 = v48;
  sub_10000A0A4(a1 + v30, v48, &qword_10041C880, &qword_1003741E8);
  v32 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  v33 = *(v46 + 48);
  v34 = v50;
  sub_10000A0A4(v31, v50, &qword_10041C880, &qword_1003741E8);
  sub_10000A0A4(v23 + v32, v34 + v33, &qword_10041C880, &qword_1003741E8);
  v35 = *(v47 + 48);
  v36 = v49;
  if (v35(v34, 1, v49) == 1)
  {

    sub_1000059A8(v31, &qword_10041C880, &qword_1003741E8);
    if (v35(v34 + v33, 1, v36) == 1)
    {
      sub_1000059A8(v34, &qword_10041C880, &qword_1003741E8);
      return 1;
    }

    goto LABEL_14;
  }

  v37 = v44;
  sub_10000A0A4(v34, v44, &qword_10041C880, &qword_1003741E8);
  if (v35(v34 + v33, 1, v36) == 1)
  {

    sub_1000059A8(v31, &qword_10041C880, &qword_1003741E8);
    sub_1000B6E24(v37, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
LABEL_14:
    sub_1000059A8(v34, &qword_10041CA10, &qword_1003743B0);
    return 0;
  }

  v39 = v34 + v33;
  v40 = v43;
  sub_1000B6D54(v39, v43, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  sub_1000B8198(&qword_1004184F8, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry, &unk_10036D4D8);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();

  sub_1000B6E24(v40, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  sub_1000059A8(v31, &qword_10041C880, &qword_1003741E8);
  sub_1000B6E24(v37, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  sub_1000059A8(v34, &qword_10041C880, &qword_1003741E8);
  return (v41 & 1) != 0;
}

Swift::Int sub_1000B7DD0()
{
  Hasher.init(_seed:)();
  type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  sub_1000B8198(&qword_10041C888, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_1003742F0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_1004438A8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1004438B0;
}

uint64_t sub_1000B7F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B8198(&qword_10041CA08, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_100374268);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B7F7C(uint64_t a1)
{
  v2 = sub_1000B8198(&qword_10041C778, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_1003741F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B7FE8(uint64_t a1, uint64_t a2)
{
  sub_1000B8198(&qword_10041C778, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &unk_1003741F0);

  return Message.hash(into:)();
}

uint64_t sub_1000B8068(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1000B75C0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000B8198(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B8198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B82E0(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000B836C(uint64_t a1)
{
  sub_1000B8470(319, &qword_10041C940, type metadata accessor for Proto_Gpsd_LogEntry);
  if (v1 <= 0x3F)
  {
    sub_1000B8470(319, &unk_10041C948, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000B8470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B84D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198EEC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B853C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198E98();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000B8588@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100171B98(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000B85C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100171B98(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B85F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198E44();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198DF0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B86C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198D9C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198D48();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8798(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198CF4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198CA0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198C4C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B890C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198BF8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100171BA8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000B89A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100171BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B8A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198BA4();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000B8A7C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100172138(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000B8AC8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100172138(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B8B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198B50();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198AFC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198AA8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198A54();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198A00();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016F4C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001989AC();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000B8DD8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019DFC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000B8E10@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019DFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B8E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015F84();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198958();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198904();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001988B0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B8FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019885C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t (*sub_1000B905C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000B90F8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_1000B9140(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000B91DC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_1000B9224(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000B92C0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_1000B9320(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000B95F0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000B9628(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000B96C4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000B970C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000B9744(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000B97E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000B9828(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000B9860(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000B98FC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000B995C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000B9A14(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000B9D5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t (*sub_1000B9E00(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

BOOL sub_1000BA07C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1000BA1B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

float sub_1000BA278(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BA2B8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000BA2F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000BA38C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000BA3D4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BA414(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000BA44C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000BA4E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000BA530(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BA570(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000BA5A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000BA644()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000BA68C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = v4[5];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + v4[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v4[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v4[8];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1000BA75C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000BA814(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

BOOL sub_1000BAA90(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1000BABC8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1000BAC8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000BAD28(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000BAE38(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}