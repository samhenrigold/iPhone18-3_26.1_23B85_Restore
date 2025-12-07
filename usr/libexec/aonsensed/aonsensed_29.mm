uint64_t sub_1002F9AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
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

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_10000BE4C(v7, v6);
      sub_10000BE4C(v10, v9);
      v12 = sub_10009F948(v7, v6, v10, v9);
      sub_10000CA64(v10, v9);
      sub_10000CA64(v7, v6);
      if (v12)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    sub_10000BE4C(v7, v6);
    sub_10000BE4C(v10, v9);
    sub_10000CA64(v7, v6);
    sub_10000CA64(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_10000BE4C(v7, v6);
  sub_10000BE4C(v10, v9);
  sub_10000CA64(v7, v6);
LABEL_8:
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9E2C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v5 = started[5];
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

  v8 = started[6];
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

  v11 = started[7];
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

  v14 = started[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 8);
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

  v19 = started[9];
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

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1002FA094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Exception(0);
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
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FA1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Response(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 62)
  {
    if (v7 != 62)
    {
      goto LABEL_18;
    }
  }

  else if (v7 == 62 || qword_100398ED0[v6] != qword_100398ED0[v7])
  {
    goto LABEL_18;
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
      goto LABEL_18;
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
      goto LABEL_18;
    }
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 10)
  {
    if (v15 == 10)
    {
      goto LABEL_17;
    }

LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  if (v15 == 10)
  {
    goto LABEL_18;
  }

  sub_10003616C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v16 & 1;
}

uint64_t sub_1002FA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Indication(0);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  __chkstk_darwin(v7 - 8);
  v81 = &v77 - v8;
  v83 = sub_100024A2C(&qword_100418BC8, &qword_10036D6A8);
  __chkstk_darwin(v83);
  v10 = &v77 - v9;
  v11 = type metadata accessor for Proto_Gpsd_Response(0);
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  __chkstk_darwin(v13 - 8);
  v86 = &v77 - v14;
  v87 = sub_100024A2C(&qword_100418BD0, &unk_10036D6B0);
  __chkstk_darwin(v87);
  v90 = &v77 - v15;
  v16 = type metadata accessor for Proto_Gpsd_Request(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  __chkstk_darwin(v20 - 8);
  v22 = &v77 - v21;
  v23 = sub_100024A2C(&qword_100418C38, &qword_10036D6C8);
  __chkstk_darwin(v23);
  v25 = &v77 - v24;
  v26 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v27 = v26;
  v28 = *(v26 + 20);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_40;
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
      goto LABEL_40;
    }
  }

  v33 = *(v26 + 24);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_40;
    }

    if (*v34 != *v36 || v35 != v37)
    {
      v80 = v26;
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27 = v80;
      if ((v38 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v37)
  {
    goto LABEL_40;
  }

  v77 = v6;
  v78 = v10;
  v39 = *(v27 + 28);
  v40 = *(v23 + 48);
  v79 = a1;
  v80 = v27;
  sub_10000A0A4(a1 + v39, v25, &qword_100418370, &qword_10036C848);
  v41 = a2 + v39;
  v42 = a2;
  sub_10000A0A4(v41, &v25[v40], &qword_100418370, &qword_10036C848);
  v43 = *(v17 + 48);
  if (v43(v25, 1, v16) == 1)
  {
    if (v43(&v25[v40], 1, v16) == 1)
    {
      sub_1000059A8(v25, &qword_100418370, &qword_10036C848);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_10000A0A4(v25, v22, &qword_100418370, &qword_10036C848);
  if (v43(&v25[v40], 1, v16) == 1)
  {
    sub_1002F7CB8(v22, type metadata accessor for Proto_Gpsd_Request);
LABEL_19:
    v44 = &qword_100418C38;
    v45 = &qword_10036D6C8;
LABEL_20:
    v46 = v25;
LABEL_39:
    sub_1000059A8(v46, v44, v45);
    goto LABEL_40;
  }

  sub_1002F7BE8(&v25[v40], v19, type metadata accessor for Proto_Gpsd_Request);
  v47 = *(v16 + 20);
  v48 = *&v22[v47];
  if (v48 != *&v19[v47])
  {

    v49 = sub_1002CD05C(v48);

    if (!v49)
    {
      sub_1002F7CB8(v19, type metadata accessor for Proto_Gpsd_Request);
      sub_1002F7CB8(v22, type metadata accessor for Proto_Gpsd_Request);
      v44 = &qword_100418370;
      v45 = &qword_10036C848;
      goto LABEL_20;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v19, type metadata accessor for Proto_Gpsd_Request);
  sub_1002F7CB8(v22, type metadata accessor for Proto_Gpsd_Request);
  sub_1000059A8(v25, &qword_100418370, &qword_10036C848);
  if ((v50 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  v51 = v79;
  v52 = *(v80 + 32);
  v53 = *(v87 + 48);
  v54 = v90;
  sub_10000A0A4(v79 + v52, v90, &qword_100418378, &qword_10036C850);
  sub_10000A0A4(v42 + v52, v54 + v53, &qword_100418378, &qword_10036C850);
  v55 = v89;
  v56 = *(v88 + 48);
  if (v56(v54, 1, v89) != 1)
  {
    v60 = v86;
    sub_10000A0A4(v54, v86, &qword_100418378, &qword_10036C850);
    v61 = v56(v54 + v53, 1, v55);
    v59 = v77;
    v58 = v78;
    if (v61 != 1)
    {
      v62 = v54 + v53;
      v63 = v82;
      sub_1002F7BE8(v62, v82, type metadata accessor for Proto_Gpsd_Response);
      v64 = sub_1002FA1C4(v60, v63);
      sub_1002F7CB8(v63, type metadata accessor for Proto_Gpsd_Response);
      sub_1002F7CB8(v60, type metadata accessor for Proto_Gpsd_Response);
      sub_1000059A8(v54, &qword_100418378, &qword_10036C850);
      if ((v64 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    sub_1002F7CB8(v60, type metadata accessor for Proto_Gpsd_Response);
    goto LABEL_29;
  }

  v57 = v56(v54 + v53, 1, v55);
  v59 = v77;
  v58 = v78;
  if (v57 != 1)
  {
LABEL_29:
    v44 = &qword_100418BD0;
    v45 = &unk_10036D6B0;
    v46 = v54;
    goto LABEL_39;
  }

  sub_1000059A8(v54, &qword_100418378, &qword_10036C850);
LABEL_31:
  v65 = *(v80 + 36);
  v66 = *(v83 + 48);
  sub_10000A0A4(v51 + v65, v58, &qword_100418380, &qword_10036C858);
  sub_10000A0A4(v42 + v65, v58 + v66, &qword_100418380, &qword_10036C858);
  v67 = v85;
  v68 = *(v84 + 48);
  if (v68(v58, 1, v85) == 1)
  {
    if (v68(v58 + v66, 1, v67) == 1)
    {
      sub_1000059A8(v58, &qword_100418380, &qword_10036C858);
LABEL_45:
      type metadata accessor for UnknownStorage();
      sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v70 & 1;
    }

    goto LABEL_37;
  }

  v69 = v81;
  sub_10000A0A4(v58, v81, &qword_100418380, &qword_10036C858);
  if (v68(v58 + v66, 1, v67) == 1)
  {
    sub_1002F7CB8(v69, type metadata accessor for Proto_Gpsd_Indication);
LABEL_37:
    v44 = &qword_100418BC8;
    v45 = &qword_10036D6A8;
LABEL_38:
    v46 = v58;
    goto LABEL_39;
  }

  sub_1002F7BE8(v58 + v66, v59, type metadata accessor for Proto_Gpsd_Indication);
  v72 = *(v67 + 20);
  v73 = *(v69 + v72);
  v74 = *(v59 + v72);
  if (v73 != v74)
  {

    v75 = sub_1002DE7BC(v73, v74);

    if (!v75)
    {
      sub_1002F7CB8(v59, type metadata accessor for Proto_Gpsd_Indication);
      sub_1002F7CB8(v69, type metadata accessor for Proto_Gpsd_Indication);
      v44 = &qword_100418380;
      v45 = &qword_10036C858;
      goto LABEL_38;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v59, type metadata accessor for Proto_Gpsd_Indication);
  sub_1002F7CB8(v69, type metadata accessor for Proto_Gpsd_Indication);
  sub_1000059A8(v58, &qword_100418380, &qword_10036C858);
  if (v76)
  {
    goto LABEL_45;
  }

LABEL_40:
  v70 = 0;
  return v70 & 1;
}

uint64_t sub_1002FAE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_100024A2C(&qword_10042B8C0, &unk_100393360);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v37 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v38 = a1;
  v14 = *(v37 + 20);
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_10042AAE8, &qword_100390F28);
  v16 = a2 + v14;
  v17 = a2;
  sub_10000A0A4(v16, &v13[v15], &qword_10042AAE8, &qword_100390F28);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v15], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_10042AAE8, &qword_100390F28);
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A0A4(v13, v9, &qword_10042AAE8, &qword_100390F28);
    if (v18(&v13[v15], 1, v4) != 1)
    {
      v20 = v36;
      sub_1002F7BE8(&v13[v15], v36, type metadata accessor for Proto_Gnss_Position);
      sub_1002FB284(&qword_10042AD48, type metadata accessor for Proto_Gnss_Position, &unk_100392018);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1002F7CB8(v20, type metadata accessor for Proto_Gnss_Position);
      sub_1002F7CB8(v9, type metadata accessor for Proto_Gnss_Position);
      sub_1000059A8(v13, &qword_10042AAE8, &qword_100390F28);
      if ((v21 & 1) == 0)
      {
LABEL_20:
        v19 = 0;
        return v19 & 1;
      }

LABEL_8:
      v23 = v37;
      v22 = v38;
      v24 = *(v37 + 24);
      v25 = *(v38 + v24);
      v26 = *(v17 + v24);
      if (v25 == 4)
      {
        if (v26 != 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v40 = v25;
        if (v26 == 4)
        {
          goto LABEL_20;
        }

        v39 = v26;
        sub_10027F0DC();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v27 = *(v23 + 28);
      v28 = *(v22 + v27);
      v29 = *(v17 + v27);
      if (v28 == 2)
      {
        if (v29 != 2)
        {
          goto LABEL_20;
        }
      }

      else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
      {
        goto LABEL_20;
      }

      v30 = *(v23 + 32);
      v31 = (v22 + v30);
      v32 = *(v22 + v30 + 8);
      v33 = (v17 + v30);
      v34 = *(v17 + v30 + 8);
      if (v32)
      {
        if (!v34)
        {
          goto LABEL_20;
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
          goto LABEL_20;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    sub_1002F7CB8(v9, type metadata accessor for Proto_Gnss_Position);
  }

  sub_1000059A8(v13, &qword_10042B8C0, &unk_100393360);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1002FB284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002FB2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FB3C0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v5 = *(v4 + 28);
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

  v10 = *(v4 + 32);
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

  if (sub_100033210(*a1, *a2) & 1) != 0 && (sub_100033210(a1[1], a2[1]))
  {
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1002FB4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
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
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
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
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *sub_1002FB5E8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
    v11 = *(v10 + 24);
    v12 = (v6 + v11);
    v13 = *(v6 + v11 + 4);
    v14 = (a2 + v11);
    v15 = *(a2 + v11 + 4);
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

    v16 = *(v10 + 28);
    v17 = (v6 + v16);
    v18 = *(v6 + v16 + 4);
    v19 = (a2 + v16);
    v20 = *(a2 + v16 + 4);
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
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return (dispatch thunk of static Equatable.== infix(_:_:)() & 1);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002FB73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
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
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
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

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
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
      return 0;
    }
  }

  v35 = v4[11];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    return 0;
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
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      return 0;
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
      return 0;
    }
  }

  v53 = v4[15];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 4);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 4);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FBA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Status(0);
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

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1002FBB9C()
{
  result = qword_10042C190;
  if (!qword_10042C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C190);
  }

  return result;
}

unint64_t sub_1002FBBF4()
{
  result = qword_10042C198;
  if (!qword_10042C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C198);
  }

  return result;
}

unint64_t sub_1002FBC4C()
{
  result = qword_10042C1A0;
  if (!qword_10042C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1A0);
  }

  return result;
}

unint64_t sub_1002FBCD4()
{
  result = qword_10042C1B8;
  if (!qword_10042C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1B8);
  }

  return result;
}

unint64_t sub_1002FBD2C()
{
  result = qword_10042C1C0;
  if (!qword_10042C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1C0);
  }

  return result;
}

unint64_t sub_1002FBD84()
{
  result = qword_10042C1C8;
  if (!qword_10042C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1C8);
  }

  return result;
}

unint64_t sub_1002FBE0C()
{
  result = qword_10042C1E0;
  if (!qword_10042C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1E0);
  }

  return result;
}

unint64_t sub_1002FBE64()
{
  result = qword_10042C1E8;
  if (!qword_10042C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1E8);
  }

  return result;
}

unint64_t sub_1002FBEBC()
{
  result = qword_10042C1F0;
  if (!qword_10042C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1F0);
  }

  return result;
}

unint64_t sub_1002FBF44()
{
  result = qword_10042C208;
  if (!qword_10042C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C208);
  }

  return result;
}

unint64_t sub_1002FBF9C()
{
  result = qword_10042C210;
  if (!qword_10042C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C210);
  }

  return result;
}

unint64_t sub_1002FBFF4()
{
  result = qword_10042C218;
  if (!qword_10042C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C218);
  }

  return result;
}

unint64_t sub_1002FC07C()
{
  result = qword_10042C230;
  if (!qword_10042C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C230);
  }

  return result;
}

unint64_t sub_1002FC0D4()
{
  result = qword_10042C238;
  if (!qword_10042C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C238);
  }

  return result;
}

unint64_t sub_1002FC12C()
{
  result = qword_10042C240;
  if (!qword_10042C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gpsd_Request.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC3)
  {
    goto LABEL_17;
  }

  if (a2 + 61 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 61) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 61;
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

      return (*a1 | (v4 << 8)) - 61;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 61;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v8 = v6 - 62;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gpsd_Request.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC3)
  {
    v4 = 0;
  }

  if (a2 > 0xC2)
  {
    v5 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
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
    *result = a2 + 61;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002FF3D0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &unk_10042C6F0, &type metadata for Proto_Gpsd_Request.TypeEnum, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &unk_1004186F8, &type metadata for Proto_Gnss_Result, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FF540(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002FF654(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FF790(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002FF854(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1002FF930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1002FFA68(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1002FFBD0(319, &qword_10042B580, type metadata accessor for Proto_Gnss_Position, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &unk_10042CB40, &type metadata for Proto_Gnss_PositionAssistType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002FFBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1002FFD8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1002FFBD0(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FFE80(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FFFE4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_10042D028, &type metadata for Proto_Gnss_MotionActivityContext, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &unk_10042D030, &type metadata for Proto_Gnss_MovingState, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100301354(319, &qword_10042AEB0, &type metadata for Proto_Gnss_Reliability, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10030018C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_100301354(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003002E4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003003F8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003005EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100300764(uint64_t a1)
{
  sub_1002FFBD0(319, &qword_10042D698, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_1002FFBD0(319, &unk_10042D6A0, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100300888(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10030098C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100300A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100300B28(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100300C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_100300D40(uint64_t a1)
{
  sub_100301354(319, &qword_100418628, &type metadata for Int32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_1004259D0, &type metadata for UInt32, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100300E88(uint64_t a1)
{
  sub_100301354(319, &qword_100418628, &type metadata for Int32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100300FE0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100301154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100301234(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &unk_10041A448, &type metadata for Int64, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100301354(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1003013CC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002FFBD0(319, &unk_100418578, type metadata accessor for Proto_Gpsd_Request, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002FFBD0(319, &qword_100418990, type metadata accessor for Proto_Gpsd_Response, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002FFBD0(319, &qword_100418998, type metadata accessor for Proto_Gpsd_Indication, &type metadata accessor for Optional);
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

void sub_1003015B0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003016A8(uint64_t a1)
{
  sub_1002FFBD0(319, &qword_10042DD98, type metadata accessor for Proto_Gpsd_InjectAssistancePosition, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002FFBD0(319, &qword_10042DDA0, type metadata accessor for Proto_Gpsd_InjectAssistanceTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1002FFBD0(319, &qword_10042DDA8, type metadata accessor for Proto_Gpsd_SetAssistancePressure, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002FFBD0(319, &qword_10042DDB0, type metadata accessor for Proto_Gpsd_SetAssistanceAccel, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002FFBD0(319, &qword_10042DDB8, type metadata accessor for Proto_Gpsd_SetAssistanceGyro, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002FFBD0(319, &qword_10042DDC0, type metadata accessor for Proto_Gpsd_SetAssistanceDem, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002FFBD0(319, &qword_10042DDC8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1002FFBD0(319, &qword_10042DDD0, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1002FFBD0(319, &qword_10042DDD8, type metadata accessor for Proto_Gpsd_SetAssistanceMountState, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1002FFBD0(319, &qword_10042DDE0, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1002FFBD0(319, &qword_10042DDE8, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_1002FFBD0(319, &qword_10042DDF0, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_1002FFBD0(319, &qword_10042DDF8, type metadata accessor for Proto_Gpsd_InjectAssistanceFile, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_1002FFBD0(319, &qword_10042DE00, type metadata accessor for Proto_Gpsd_InjectRtiFile, &type metadata accessor for Optional);
                            if (v14 <= 0x3F)
                            {
                              sub_1002FFBD0(319, &qword_10042DE08, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
                              {
                                sub_1002FFBD0(319, &qword_10042DE10, type metadata accessor for Proto_Gpsd_DeleteGnssData, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
                                {
                                  sub_1002FFBD0(319, &qword_10042DE18, type metadata accessor for Proto_Gpsd_SetPvtmReport, &type metadata accessor for Optional);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1002FFBD0(319, &qword_10042DE20, type metadata accessor for Proto_Gpsd_SetNmeaHandler, &type metadata accessor for Optional);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1002FFBD0(319, &qword_10042DE28, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode, &type metadata accessor for Optional);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1002FFBD0(319, &qword_10042DE30, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations, &type metadata accessor for Optional);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1002FFBD0(319, &qword_10042DE38, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling, &type metadata accessor for Optional);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1002FFBD0(319, &qword_10042DE40, type metadata accessor for Proto_Gpsd_TerminationImminent, &type metadata accessor for Optional);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1002FFBD0(319, &qword_10042DE48, type metadata accessor for Proto_Gpsd_ExitMessage, &type metadata accessor for Optional);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1002FFBD0(319, &qword_10042DE50, type metadata accessor for Proto_Gpsd_LtlInfo, &type metadata accessor for Optional);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1002FFBD0(319, &qword_10042DE58, type metadata accessor for Proto_Gpsd_StartContext, &type metadata accessor for Optional);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1002FFBD0(319, &qword_10042DE60, type metadata accessor for Proto_Gpsd_SetThermalRiskState, &type metadata accessor for Optional);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1002FFBD0(319, &qword_10042DE68, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable, &type metadata accessor for Optional);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1002FFBD0(319, &qword_10042DE70, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile, &type metadata accessor for Optional);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_1002FFBD0(319, &qword_10042DE78, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &type metadata accessor for Optional);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_1002FFBD0(319, &qword_10042DE80, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &type metadata accessor for Optional);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_1002FFBD0(319, &qword_10042DE88, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &type metadata accessor for Optional);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_1002FFBD0(319, &qword_10042DE90, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &type metadata accessor for Optional);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_1002FFBD0(319, &qword_10042DE98, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &type metadata accessor for Optional);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_1002FFBD0(319, &qword_10042DEA0, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &type metadata accessor for Optional);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_1002FFBD0(319, &qword_10042DEA8, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &type metadata accessor for Optional);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_1002FFBD0(319, &qword_10042DEB0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &type metadata accessor for Optional);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_1002FFBD0(319, &qword_10042DEB8, type metadata accessor for Proto_Gnss_Emergency_LocationId, &type metadata accessor for Optional);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            sub_1002FFBD0(319, &qword_10042DEC0, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &type metadata accessor for Optional);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              sub_1002FFBD0(319, &unk_10042DEC8, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &type metadata accessor for Optional);
                                                                              if (v39 <= 0x3F)
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

void sub_1003027C0(uint64_t a1)
{
  sub_1002FFBD0(319, &qword_10042E590, type metadata accessor for Proto_Gnss_Fix, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002FFBD0(319, &qword_10042E598, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1002FFBD0(319, &qword_10042E5A0, type metadata accessor for Proto_Gnss_PwrMeasurement, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002FFBD0(319, &qword_10042E5A8, type metadata accessor for Proto_Gpsd_Status, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002FFBD0(319, &qword_10042E5B0, type metadata accessor for Proto_Gnss_TimeTransferDataExtend, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002FFBD0(319, &qword_10042E5B8, type metadata accessor for Proto_Gpsd_RecoveryStatistics, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002FFBD0(319, &qword_10042E5C0, type metadata accessor for Proto_Gpsd_LtlInfoRequest, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1002FFBD0(319, &qword_10042E5C8, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1002FFBD0(319, &qword_10042E5D0, type metadata accessor for Proto_Gnss_DecodedRti, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1002FFBD0(319, &qword_10042E5D8, type metadata accessor for Proto_Gpsd_Exception, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1002FFBD0(319, &qword_10042E5E0, type metadata accessor for Proto_Gpsd_AskBasebandReset, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_1002FFBD0(319, &qword_10042E5E8, type metadata accessor for Proto_Gnss_Emergency_SummaryReport, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_1002FFBD0(319, &qword_10042E5F0, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_1002FFBD0(319, &qword_10042E5F8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &type metadata accessor for Optional);
                            if (v14 <= 0x3F)
                            {
                              sub_1002FFBD0(319, &qword_10042E600, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
                              {
                                sub_1002FFBD0(319, &qword_10042E608, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
                                {
                                  sub_1002FFBD0(319, &qword_10042E610, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate, &type metadata accessor for Optional);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1002FFBD0(319, &qword_10042E618, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &type metadata accessor for Optional);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1002FFBD0(319, &qword_10042E620, type metadata accessor for Proto_Gnss_Emergency_Init, &type metadata accessor for Optional);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1002FFBD0(319, &unk_10042E628, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest, &type metadata accessor for Optional);
                                        if (v20 <= 0x3F)
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

void sub_1003030D0(uint64_t a1)
{
  sub_1002FFBD0(319, &qword_10042EA70, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002FFBD0(319, &qword_10042EA78, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1002FFBD0(319, &qword_10042EA80, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002FFBD0(319, &unk_10042EA88, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1003032F0()
{
  result = qword_10042ED40;
  if (!qword_10042ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED40);
  }

  return result;
}

unint64_t sub_100303344()
{
  result = qword_10042ED48;
  if (!qword_10042ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED48);
  }

  return result;
}

unint64_t sub_100303398()
{
  result = qword_10042ED50;
  if (!qword_10042ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED50);
  }

  return result;
}

unint64_t sub_1003033EC()
{
  result = qword_10042ED58;
  if (!qword_10042ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED58);
  }

  return result;
}

unint64_t sub_100303440()
{
  result = qword_10042ED60;
  if (!qword_10042ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED60);
  }

  return result;
}

uint64_t sub_1003034D8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  xpclog.getter(v5);
  v8 = a1;
  Logger._fault(_:function:file:line:)(sub_100305000, v7, "proxyErrorHandler(error:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/XPC/ALXPCService.swift", 77, 2);
  return (*(v3 + 8))(v5, v2);
}

void sub_1003035F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100303678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  return sub_10000D9FC(v1 + v3, a1);
}

uint64_t sub_1003036D0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  sub_100002580((v1 + v3));
  sub_10002351C(a1, v1 + v3);
  return swift_endAccess();
}

char *ALServiceDelegate.init(queue:dataService:)(void *a1, void *a2)
{
  v23 = type metadata accessor for Logger();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue] = a1;
  sub_10000D9FC(a2, &v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService]);
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = a1;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithMachServiceName:v10];

  *&v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener] = v11;
  v12 = type metadata accessor for ALServiceDelegate();
  v25.receiver = v2;
  v25.super_class = v12;
  v13 = objc_msgSendSuper2(&v25, "init");
  v14 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener;
  v15 = *&v13[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener];
  v16 = *&v13[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue];
  v17 = v13;
  [v15 _setQueue:v16];
  [*&v13[v14] setDelegate:v17];
  [*&v13[v14] activate];
  xpclog.getter(v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10000234C(0xD000000000000017, 0x80000001003B0490, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "serviceName %{public}s started", v20, 0xCu);
    sub_100002580(v21);
  }

  sub_100002580(a2);
  (*(v5 + 8))(v7, v23);
  return v17;
}

uint64_t sub_100303B00(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  sub_100304DCC(v23, &v21);
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast() && (v20[15] & 1) != 0)
    {
      xpclog.getter(v8);
      v11 = a1;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67240192;
        *(v14 + 4) = [v11 processIdentifier];

        _os_log_impl(&_mh_execute_header, v12, v13, "Entitlement check passed for pid: %{public}d", v14, 8u);
      }

      else
      {
      }

      v15 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1000059A8(&v21, &qword_10042EF90, &qword_100399100);
  }

  xpclog.getter(v6);
  v16 = a1;
  v12 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = [v16 processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v17, "Entitlement check failed for pid:%{public}d, connection rejected", v18, 8u);
  }

  else
  {
  }

  v15 = 0;
  v8 = v6;
LABEL_15:

  (*(v3 + 8))(v8, v2);
  sub_1000059A8(v23, &qword_10042EF90, &qword_100399100);
  return v15;
}

uint64_t sub_100303E34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentConnection];
  if (v9)
  {
    v10 = v9;
    (*((swift_isaMask & *v2) + 0x68))(v18);
    v11 = v19;
    v12 = v20;
    sub_10000D9B8(v18, v19);
    (*(v12 + 8))(a1, a2, v10, v11, v12);

    return sub_100002580(v18);
  }

  else
  {
    xpclog.getter(v8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Invalid current connnection", v16, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003040B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "service,onInterrupt", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100304200(void *a1, const char *a2, ...)
{
  v4 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v9);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19[1] = v4;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v10;
    *v16 = a1;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v15, 0xCu);
    sub_1000059A8(v16, &unk_10042F020, &qword_100399AE0);
  }

  (*(v7 + 8))(v9, v6);
  return sub_1003043C0(a1);
}

uint64_t sub_1003043C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - v9;
  if (a1)
  {
    v11 = a1;
    xpclog.getter(v10);
    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = a1;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "service,disconnectHandler,%{public}@", v15, 0xCu);
      sub_1000059A8(v16, &unk_10042F020, &qword_100399AE0);
    }

    v18 = (*(v5 + 8))(v10, v4);
    (*((swift_isaMask & *v2) + 0x68))(v27, v18);
    v19 = v28;
    v20 = v29;
    sub_10000D9B8(v27, v28);
    (*(v20 + 16))(v19, v20);

    return sub_100002580(v27);
  }

  else
  {
    xpclog.getter(v8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      *(v24 + 4) = 0;
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "service,disconnectHandler,%{public}@", v24, 0xCu);
      sub_1000059A8(v25, &unk_10042F020, &qword_100399AE0);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

id ALServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ALServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100304824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  xpclog.getter(&v38 - v9);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 67240450;
    *(v14 + 4) = [v11 processIdentifier];

    *(v14 + 8) = 2114;
    *(v14 + 10) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "New XPC Connection from process:%{public}d, details:(%{public}@)", v14, 0x12u);
    sub_1000059A8(v15, &unk_10042F020, &qword_100399AE0);
  }

  else
  {

    v12 = v11;
  }

  v17 = *(v5 + 8);
  v17(v10, v4);
  v18 = (*((swift_isaMask & *v2) + 0x90))(v11);
  if (v18)
  {
    v38 = v17;
    v39 = v4;
    [v11 setExportedObject:v2];
    v19 = objc_opt_self();
    v20 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL____TtP5ALXPC13ALXPCProtocol_];
    [v11 setExportedInterface:v20];

    v21 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL____TtP5ALXPC13ALXPCProtocol_];
    [v11 setRemoteObjectInterface:v21];

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = v22;
    v44 = sub_100304F2C;
    v45 = v23;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_1000025CC;
    v43 = &unk_100406AF0;
    v24 = _Block_copy(&aBlock);
    v25 = v2;

    [v11 setInterruptionHandler:v24];
    _Block_release(v24);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v44 = sub_100304F84;
    v45 = v27;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_1000025CC;
    v43 = &unk_100406B40;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    [v11 setInvalidationHandler:v28];
    _Block_release(v28);
    [v11 _setQueue:*&v29[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue]];
    [v11 activate];
    xpclog.getter(v8);
    v30 = v11;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 67240450;
      *(v33 + 4) = [v30 processIdentifier];

      *(v33 + 8) = 2114;
      *(v33 + 10) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Activated Connection from process:%{public}d, details:(%{public}@)", v33, 0x12u);
      sub_1000059A8(v34, &unk_10042F020, &qword_100399AE0);
    }

    else
    {

      v31 = v30;
    }

    v36 = v39;

    v38(v8, v36);
  }

  return v18 & 1;
}

uint64_t sub_100304DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042EF90, &qword_100399100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100304F44()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100304F9C(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

unint64_t sub_100305000()
{
  _StringGuts.grow(_:)(21);

  swift_getErrorValue();
  v0._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v0);

  return 0xD000000000000013;
}

uint64_t sub_100305100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7070614B6C6C6F70 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305190(uint64_t a1)
{
  v2 = sub_100305494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003051CC(uint64_t a1)
{
  v2 = sub_100305494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100305214@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100305244(uint64_t a1)
{
  v2 = sub_1003054E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305280(uint64_t a1)
{
  v2 = sub_1003054E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ALIPCProtocol.Request.encode(to:)(void *a1)
{
  v2 = sub_100024A2C(&qword_10042F090, &qword_100399170);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_100024A2C(&qword_10042F098, &qword_100399178);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000D9B8(a1, a1[3]);
  sub_100305494();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1003054E8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100305494()
{
  result = qword_10048A560;
  if (!qword_10048A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A560);
  }

  return result;
}

unint64_t sub_1003054E8()
{
  result = qword_10048A568;
  if (!qword_10048A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A568);
  }

  return result;
}

Swift::Int AONSenseFF.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t ALIPCProtocol.Request.init(from:)(void *a1)
{
  v3 = sub_100024A2C(&qword_10042F0A0, &qword_100399180);
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v17 = sub_100024A2C(&qword_10042F0A8, &qword_100399188);
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v15 - v7;
  sub_10000D9B8(a1, a1[3]);
  sub_100305494();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      sub_1003054E8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = type metadata accessor for DecodingError();
      swift_allocError();
      v13 = v12;
      sub_100024A2C(&qword_10042F0B0, &qword_100399190);
      *v13 = &type metadata for ALIPCProtocol.Request;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.typeMismatch(_:), v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return sub_100002580(a1);
}

uint64_t sub_10030589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7173486 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305924(uint64_t a1)
{
  v2 = sub_100305D5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305960(uint64_t a1)
{
  v2 = sub_100305D5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10030599C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1003059EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305A80(uint64_t a1)
{
  v2 = sub_100305D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305ABC(uint64_t a1)
{
  v2 = sub_100305D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ALIPCProtocol.Reply.encode(to:)(void *a1)
{
  v3 = sub_100024A2C(&qword_10042F0B8, &qword_100399198);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_100024A2C(&qword_10042F0C0, &qword_1003991A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *v1;
  sub_10000D9B8(a1, a1[3]);
  sub_100305D08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100305D5C();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v17 = v11;
  sub_100305DB0();
  v12 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100305D08()
{
  result = qword_10048A570;
  if (!qword_10048A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A570);
  }

  return result;
}

unint64_t sub_100305D5C()
{
  result = qword_10048A578[0];
  if (!qword_10048A578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048A578);
  }

  return result;
}

unint64_t sub_100305DB0()
{
  result = qword_10042F0C8;
  if (!qword_10042F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0C8);
  }

  return result;
}

uint64_t ALIPCProtocol.Reply.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_100024A2C(&qword_10042F0D0, &qword_1003991A8);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v23 = sub_100024A2C(&qword_10042F0D8, &qword_1003991B0);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v18 - v8;
  sub_10000D9B8(a1, a1[3]);
  sub_100305D08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = v7;
  v10 = v23;
  if (*(KeyedDecodingContainer.allKeys.getter() + 16) != 1)
  {
    v12 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v10;
    v15 = v14;
    sub_100024A2C(&qword_10042F0B0, &qword_100399190);
    *v15 = &type metadata for ALIPCProtocol.Reply;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v12);
    swift_willThrow();
    (*(v20 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_5:
    v17 = a1;
    return sub_100002580(v17);
  }

  sub_100305D5C();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v11 = v20;
  sub_100306184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v6, v4);
  (*(v11 + 8))(v9, v10);
  swift_unknownObjectRelease();
  *v21 = v24;
  v17 = v19;
  return sub_100002580(v17);
}

unint64_t sub_100306184()
{
  result = qword_10042F0E0;
  if (!qword_10042F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0E0);
  }

  return result;
}

unint64_t sub_1003061DC()
{
  result = qword_10042F0E8;
  if (!qword_10042F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0E8);
  }

  return result;
}

unint64_t sub_100306234()
{
  result = qword_10042F0F0;
  if (!qword_10042F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALIPCProtocol.Reply(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALIPCProtocol.Reply(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AONSenseFF(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AONSenseFF(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100306468()
{
  result = qword_10048AC00[0];
  if (!qword_10048AC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048AC00);
  }

  return result;
}

unint64_t sub_1003064C0()
{
  result = qword_10048AE10[0];
  if (!qword_10048AE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048AE10);
  }

  return result;
}

unint64_t sub_100306518()
{
  result = qword_10048B020[0];
  if (!qword_10048B020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B020);
  }

  return result;
}

unint64_t sub_100306570()
{
  result = qword_10048B130;
  if (!qword_10048B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B130);
  }

  return result;
}

unint64_t sub_1003065C8()
{
  result = qword_10048B138[0];
  if (!qword_10048B138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B138);
  }

  return result;
}

unint64_t sub_100306620()
{
  result = qword_10048B1C0;
  if (!qword_10048B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B1C0);
  }

  return result;
}

unint64_t sub_100306678()
{
  result = qword_10048B1C8[0];
  if (!qword_10048B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B1C8);
  }

  return result;
}

unint64_t sub_1003066D0()
{
  result = qword_10048B250;
  if (!qword_10048B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B250);
  }

  return result;
}

unint64_t sub_100306728()
{
  result = qword_10048B258[0];
  if (!qword_10048B258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B258);
  }

  return result;
}

unint64_t sub_100306780()
{
  result = qword_10048B2E0;
  if (!qword_10048B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B2E0);
  }

  return result;
}

unint64_t sub_1003067D8()
{
  result = qword_10048B2E8[0];
  if (!qword_10048B2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B2E8);
  }

  return result;
}

uint64_t sub_10030687C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t ALRPCInterface.__allocating_init(queue:interval:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  ALRPCInterface.init(queue:interval:)(a1, a2);
  return v4;
}

uint64_t ALRPCInterface.init(queue:interval:)(void *a1, double a2)
{
  v3 = v2;
  type metadata accessor for ALShmQueueHandler();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  swift_allocObject();
  v6 = a1;
  v7 = ALShmQueueHandler.init(queue:interval:)(v6, a2);
  swift_beginAccess();
  *(v3 + 24) = v7;

  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj;
  }

  else
  {
    v9 = 0;
  }

  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();

  v10 = ALTightbeamHandler.init(cb:)(v9, v8);
  swift_beginAccess();
  *(v3 + 16) = v10;

  if (*(v3 + 24))
  {

    dispatch thunk of ALShmQueueHandler.registerTightbeamHandler(tbHandler:)();
  }

  return v3;
}

uint64_t sub_100306AF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  result = (*(*v3 + 120))();
  if (result)
  {
    a3(a1, a2);
  }

  return result;
}

uint64_t sub_100306B84(char a1)
{
  result = (*(*v1 + 96))();
  if (result)
  {
    dispatch thunk of ALTightbeamHandler.enableWifiReception(enable:)();
  }

  return result;
}

uint64_t ALTightbeamHandler.deinit()
{

  return v0;
}

uint64_t ALTightbeamHandler.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100306C60()
{
  v0 = swift_allocObject();
  sub_100306C98();
  return v0;
}

uint64_t sub_100306C98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "RPCclassTest", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return v1;
}

uint64_t sub_100306DDC()
{
  type metadata accessor for ALRPCTest();
  v0 = swift_allocObject();
  result = sub_100306C98();
  qword_10048B378 = v0;
  return result;
}

uint64_t *sub_100306E18()
{
  if (qword_10048B370 != -1)
  {
    swift_once();
  }

  return &qword_10048B378;
}

uint64_t static ALRPCTest.instance.getter()
{
  if (qword_10048B370 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100306EC4(uint64_t a1)
{
  (*(*v1 + 104))();
  (*(*v1 + 128))(a1);
  v3 = swift_slowAlloc();
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  sub_100307CC8(&v5, v3, 5, 1);
  sub_1000234F4(&v5);
}

uint64_t sub_100306F88()
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.hello(number:)();
  dispatch thunk of ALTightbeamHandler.hello(number:)();
  sleep(1u);
}

uint64_t sub_100306FFC()
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v0 = dispatch thunk of ALTightbeamHandler.getSamplesQueueSize()();

  return v0;
}

uint64_t sub_100307054()
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.printBufferUsageStatistics()();
}

uint64_t sub_1003070B0(void *a1)
{
  v2 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v2 - 8);
  v42 = v35 - v3;
  v4 = type metadata accessor for ALWiFiNotification();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v6 - 8);
  v39 = v35 - v7;
  v8 = type metadata accessor for ALWiFiScanResult();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v35 - v16;
  type metadata accessor for ALShmQueueHandler();
  swift_allocObject();
  v18 = ALShmQueueHandler.init(queue:interval:)(a1, 1.0);
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();

  v35[1] = v18;
  ALTightbeamHandler.init(cb:)(j_j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj, v18);
  ALWiFiScanSingleAccessPoint.init()();
  ALWiFiScanSingleAccessPoint._mac.setter();
  v44[0] = 0;
  ALWiFiScanSingleAccessPoint._rssidB.setter();
  v44[0] = 0;
  ALWiFiScanSingleAccessPoint._channel.setter();
  ALWiFiScanResult.init()();
  (*(v12 + 16))(v15, v17, v11);
  v38 = ALWiFiScanResult._accessPoints.modify();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  v23 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_10000DFC4(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_10000DFC4((v24 > 1), v25 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v25 + 1;
  v26 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25;
  v27 = v23;
  (*(v12 + 32))(v26, v15, v23);
  v38(v44, 0);
  v28 = v39;
  static ALTimeStamp.now()();
  v29 = type metadata accessor for ALTimeStamp();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  ALWiFiScanResult._scanTimestamp.setter();
  v30 = v43;
  ALWiFiNotification.init()();
  v32 = v40;
  v31 = v41;
  v33 = v42;
  (*(v40 + 16))(v42, v10, v41);
  (*(v32 + 56))(v33, 0, 1, v31);
  ALWiFiNotification._scanResult.setter();
  dispatch thunk of ALTightbeamHandler.enqueueWifiSample(notification:)();
  dispatch thunk of ALTightbeamHandler.apOn()();
  sleep(2u);
  dispatch thunk of ALTightbeamHandler.apOff()();

  (*(v36 + 8))(v30, v37);
  (*(v32 + 8))(v10, v31);
  return (*(v12 + 8))(v17, v27);
}

uint64_t sub_100307604(void *a1)
{
  type metadata accessor for ALShmQueueHandler();
  swift_allocObject();
  v2 = ALShmQueueHandler.init(queue:interval:)(a1, 1.0);
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();

  ALTightbeamHandler.init(cb:)(j_j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj, v2);
}

uint64_t sub_1003076A8(uint64_t a1)
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.enableWifiReception(enable:)();
}

uint64_t sub_10030770C(uint64_t a1)
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v1 = dispatch thunk of ALTightbeamHandler.setNumberOfAPsBeforeInterleavingSpecialTimestamp(number:)();

  return v1;
}

uint64_t sub_10030776C(uint64_t a1)
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v1 = dispatch thunk of ALTightbeamHandler.mallocNBlocks(number:)();

  return v1;
}

uint64_t sub_1003077DC()
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v0 = dispatch thunk of ALTightbeamHandler.getLargestFreeBlockBytes()();

  return v0;
}

unint64_t sub_100307844()
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v0 = dispatch thunk of ALTightbeamHandler.getPowerState()();

  return v0 | ((HIDWORD(v0) & 1) << 32);
}

uint64_t sub_1003078AC(uint64_t a1)
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v1 = dispatch thunk of ALTightbeamHandler.pingForDaemonWatchdog(id:)();

  return v1;
}

uint64_t sub_10030790C(uint64_t a1)
{
  type metadata accessor for ALTightbeamHandler();
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v1 = dispatch thunk of ALTightbeamHandler.setAONLogLevel(level:)();

  return v1 & 0x1FF;
}

void sub_100307CC8(unint64_t **a1, unint64_t *a2, int a3, int a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2 + 16;
  a1[3] = 0;
  if (a4)
  {
    atomic_store(0, a2);
    atomic_store(0, *a1 + 8);
  }
}

uint64_t sub_100307CF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = HIWORD(a3);
  v5 = HIBYTE(a3);
  v18._countAndFlagsBits = 0x3A7367616C66;
  v18._object = 0xE600000000000000;
  sub_100024A2C(&unk_10042F2F0, &unk_100399850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100374440;
  *(v6 + 56) = &type metadata for UInt8;
  *(v6 + 64) = &protocol witness table for UInt8;
  *(v6 + 32) = v4;
  v7._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v7);

  String.append(_:)(v18);

  strcpy(&v18, ",userflags:");
  HIDWORD(v18._object) = -352321536;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100374440;
  *(v8 + 56) = &type metadata for UInt8;
  *(v8 + 64) = &protocol witness table for UInt8;
  *(v8 + 32) = v5;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  String.append(_:)(v18);

  strcpy(&v18, ",bssid:");
  v18._object = 0xE700000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100374440;
  *(v10 + 56) = &type metadata for UInt64;
  *(v10 + 64) = &protocol witness table for UInt64;
  *(v10 + 32) = a2;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  String.append(_:)(v18);

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3A697373722CLL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);

  strcpy(&v18, ",channel:");
  WORD1(v18._object) = 0;
  HIDWORD(v18._object) = -385875968;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  String.append(_:)(v18);

  _StringGuts.grow(_:)(16);

  strcpy(&v18, ",timestamp_ns:");
  HIBYTE(v18._object) = -18;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  String.append(_:)(v18);

  v16._countAndFlagsBits = 125;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  return 123;
}

double sub_10030810C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_100308120@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_10030816C(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 sub_100308208@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_100308258(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  return result;
}

uint64_t sub_1003082F8()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_100022B94(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_100308348(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_100004820(v5, v6);
}

uint64_t sub_1003083EC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  sub_100022B94(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_10030843C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_100004820(v5, v6);
}

uint64_t sub_100308518(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_1003085EC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_1003086B8(double a1)
{
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t sub_100308780(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100308850(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t sub_10030891C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_1003089E4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 192) = a1;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_100308ABC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_100308B84(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t sub_100308C5C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_100308D24(double a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t sub_100308DE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 248) = a1;
  return result;
}

uint64_t sub_100308EC0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 264) = a1;
  return result;
}

uint64_t sub_100308F88(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 272) = a1;
}

uint64_t sub_100309054(int a1)
{
  result = swift_beginAccess();
  *(v1 + 280) = a1;
  return result;
}

id sub_1003090F0()
{
  swift_beginAccess();
  v1 = *(v0 + 296);

  return v1;
}

void sub_100309134(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 296);
  *(v1 + 296) = a1;
}

uint64_t sub_100309200(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

uint64_t ALShmQueueHandler.__allocating_init(queue:interval:)(void *a1, double a2)
{
  swift_allocObject();
  v4 = sub_10030E220(a1, a2);

  return v4;
}

uint64_t ALShmQueueHandler.init(queue:interval:)(void *a1, double a2)
{
  v3 = sub_10030E220(a1, a2);

  return v3;
}

uint64_t sub_100309320(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v5 = String.utf8CString.getter();
  v6 = shmem_map((v5 + 32), 0, &v9);

  if (v6)
  {
    v8 = rpclog.getter(v4);
    __chkstk_darwin(v8);
    Logger._fatal(_:function:file:line:)(sub_10030ED94, (&v9 - 4), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
  }

  return v9;
}

void sub_100309474(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_100309480()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100005E28(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t ALShmQueueHandler.deinit()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  swift_beginAccess();
  if (shmem_unmap((v0 + 208)))
  {
    v8 = rpclog.getter(v6);
    __chkstk_darwin(v8);
    v9 = &v13 - 4;
    v12 = 85;
    v10 = sub_10030ED9C;
    goto LABEL_6;
  }

  swift_endAccess();
  swift_beginAccess();
  if (shmem_unmap((v0 + 264)))
  {
    v11 = rpclog.getter(v4);
    __chkstk_darwin(v11);
    v9 = &v13 - 4;
    v12 = 85;
    v10 = sub_10030F764;
LABEL_6:
    Logger._fatal(_:function:file:line:)(v10, v9, "deinitSharedMemory(handle:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, v12);
  }

  swift_endAccess();
  sub_100004820(*(v0 + 96), *(v0 + 104));
  sub_100004820(*(v0 + 112), *(v0 + 120));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10030976C(io_object_t *a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = shmem_unmap(a1);
  if (result)
  {
    v6 = rpclog.getter(v4);
    __chkstk_darwin(v6);
    Logger._fatal(_:function:file:line:)(sub_10030F764, (&v7 - 4), "deinitSharedMemory(handle:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 85);
  }

  return result;
}

uint64_t ALShmQueueHandler.__deallocating_deinit()
{
  ALShmQueueHandler.deinit();

  return _swift_deallocClassInstance(v0, 312, 7);
}

unint64_t sub_100309890()
{
  _StringGuts.grow(_:)(29);

  sub_10030F60C();
  v0._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_100309924()
{
  _StringGuts.grow(_:)(34);

  sub_10030F60C();
  v0._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_1003099B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 336);

  return v6(a1, a2);
}

uint64_t sub_100309A38(uint64_t a1)
{
  v4 = *(*v1 + 480);

  return v4(v2);
}

uint64_t sub_100309A94(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 360);

  return v6(a1, a2);
}

void *sub_100309B14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v92 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v91 = *(v5 - 8);
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTime();
  v89 = *(v94 - 8);
  v7 = __chkstk_darwin(v94);
  v86 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v76 - v9;
  v82 = type metadata accessor for Logger();
  v81 = *(v82 - 8);
  v10 = __chkstk_darwin(v82);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v78 = &v76 - v13;
  v14 = __chkstk_darwin(v12);
  v77 = &v76 - v15;
  __chkstk_darwin(v14);
  v80 = &v76 - v16;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  v93 = v17;
  *(v17 + 16) = 0u;
  v18 = sub_10030EDA4((v17 + 16));
  v19 = *(*v0 + 568);
  v20 = v19(v18);
  if (v21)
  {
    goto LABEL_9;
  }

  result = (*(*v0 + 608))(&aBlock);
  if (*v23 == -1)
  {
    __break(1u);
    goto LABEL_41;
  }

  ++*v23;
  v24 = (result)(&aBlock, 0);
  v20 = (*(*v0 + 592))(v24);
  if (v20 < 3)
  {
    goto LABEL_9;
  }

  result = (*(*v0 + 656))(&aBlock);
  if (*v25 == -1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  ++*v25;
  v26 = (result)(&aBlock, 0);
  v27 = (*(*v0 + 472))(v26);
  v28 = v27;
  if (v27)
  {
    v29 = (*(*v27 + 200))(v27);
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 == 0;
  v31 = v80;
  v32 = rpclog.getter(v80);
  __chkstk_darwin(v32);
  *(&v76 - 4) = v29;
  *(&v76 - 24) = v30;
  v75 = 123;
  Logger._fault(_:function:file:line:)(sub_10030EE5C, (&v76 - 6), "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
  (*(v81 + 8))(v31, v82);
  v20 = (*(*v1 + 576))(0, 1);
LABEL_9:
  v84 = v5;
  v85 = v3;
  v33 = (*(*v1 + 616))(v20);
  v34 = v1[32];
  v35 = machContTimeSec()();
  result = (*(*v1 + 280))(v100);
  if ((v101 & 1) == 0)
  {
    v83 = v2;
    aBlock = v100[0];
    v97 = v100[1];
    v36 = sub_1000234F4(&aBlock);
    v37 = *(*v1 + 472);
    v38 = v37();
    if (!v38)
    {
      v41 = 0;
      goto LABEL_24;
    }

    v39.n128_f64[0] = v33 + v34;
    v40 = (*(*v38 + 200))(v38, v39);

    v41 = (v33 + v34 > v35 || !v36) && v40 == 0;
    if (v33 + v34 > v35 || !v36 || v40)
    {
LABEL_24:
      v53 = (v37)(v38);
      if (!v53)
      {
        v55 = v79;
        rpclog.getter(v79);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "#ShmQueue, _tbHandler is nil. Skip nudge", v58, 2u);
        }

        v54 = (*(v81 + 8))(v55, v82);
        goto LABEL_39;
      }

      if (v36 && (v41 & 1) == 0)
      {
        v59 = (*(*v53 + 272))(v53);
        if ((v59 & 0x100) != 0)
        {
          v64 = v80;
          rpclog.getter(v80);
          v75 = 157;
          Logger._fault(_:function:file:line:)(sub_10030AA70, 0, "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
        }

        else
        {
          if (sub_100313670(0) == v59)
          {
            v60 = v78;
            rpclog.getter(v78);

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 134349056;
              *(v63 + 4) = 0x3FA999999999999ALL;
              _os_log_impl(&_mh_execute_header, v61, v62, "DRAMMove may be stuck, nudging and waiting %{public}f seconds", v63, 0xCu);
            }

            v54 = (*(v81 + 8))(v60, v82);
            goto LABEL_39;
          }

          v64 = v80;
          v65 = rpclog.getter(v80);
          __chkstk_darwin(v65);
          v75 = 154;
          Logger._fault(_:function:file:line:)(sub_10030EDB8, (&v76 - 4), "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
        }

        v54 = (*(v81 + 8))(v64, v82);
      }

      else
      {
      }

LABEL_39:
      v66 = v86;
      v86 = (*(*v1 + 736))(v54);
      static DispatchTime.now()();
      v67 = v87;
      + infix(_:_:)();
      v89 = *(v89 + 8);
      (v89)(v66, v94);
      v68 = swift_allocObject();
      v69 = v88;
      v68[2] = v1;
      v68[3] = v69;
      v68[4] = v93;
      v98 = sub_10030EDAC;
      v99 = v68;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v97 = sub_100003EE4;
      *(&v97 + 1) = &unk_100407060;
      v70 = _Block_copy(&aBlock);

      v71 = v90;
      static DispatchQoS.unspecified.getter();
      v95 = &_swiftEmptyArrayStorage;
      sub_100005E28(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100024A2C(&unk_10042F300, &qword_10039A520);
      sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
      v72 = v92;
      v73 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v74 = v86;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v70);

      (*(v85 + 8))(v72, v73);
      (*(v91 + 8))(v71, v84);
      (v89)(v67, v94);
    }

    v38 = v19(v38);
    if ((v42 & 1) == 0)
    {
LABEL_23:
      v41 = 1;
      goto LABEL_24;
    }

    v43 = sub_10030DE0C(0xFFFFFFFFFFFFFFFFLL);
    v44 = v37();
    if (v44)
    {
      v45 = v43 + 1;
      v46 = (*(*v44 + 256))(v43 + 1);

      if (v46 != 2 && (v46 & 1) != 0)
      {
        (*(*v1 + 576))(v45, 0);
        v47 = v77;
        rpclog.getter(v77);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v48, v49, "Pinged AOP2, id: %{public}llu", v50, 0xCu);
        }

        v38 = (*(v81 + 8))(v47, v82);
        goto LABEL_23;
      }
    }

    v51 = v80;
    rpclog.getter(v80);
    v75 = 137;
    Logger._fault(_:function:file:line:)(sub_10030AA54, 0, "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
    (*(v81 + 8))(v51, v82);
    result = (*(*v1 + 656))(&aBlock);
    if (*v52 != -1)
    {
      ++*v52;
      v38 = (result)(&aBlock, 0);
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10030AA8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v182 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v176 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v165 = &v151 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v151 - v12;
  v14 = __chkstk_darwin(v11);
  v168 = &v151 - v15;
  v16 = __chkstk_darwin(v14);
  v170 = &v151 - v17;
  v18 = __chkstk_darwin(v16);
  v169 = &v151 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v151 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v151 - v24;
  __chkstk_darwin(v23);
  v162 = &v151 - v26;
  v160 = type metadata accessor for Mirror();
  v27 = *(v160 - 8);
  __chkstk_darwin(v160);
  v166 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (*a1 + 280);
  v30 = *v29;
  v163 = a2;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v31 = swift_beginAccess();
  v159 = v29;
  v158 = v30;
  v30(&v185, v31);
  *(&v32 + 1) = *(&v185 + 1);
  v188 = v185;
  v189 = v186;
  if (v187)
  {
    goto LABEL_78;
  }

  v167 = 0;
  ++v182;
  v157 = (v27 + 8);
  *&v32 = 134349312;
  v161 = v32;
  *&v32 = 136315138;
  v171 = v32;
  *&v32 = 134217984;
  v151 = v32;
  *&v32 = 134349056;
  v155 = v32;
  *&v32 = 136316162;
  v154 = v32;
  *(&v33 + 1) = 2;
  v153 = xmmword_100374440;
  *&v33 = 134283521;
  v152 = v33;
  v173 = a1;
  v172 = a3;
  v175 = v6;
  v156 = v13;
  v178 = v22;
  v177 = v25;
  while (1)
  {
    v183 = v188;
    v184 = v189;
    if (sub_1000234F4(&v183))
    {
      break;
    }

    *(v163 + 16) = 1;
    v35 = (*(*a1 + 296))(&v183);
    if (*(v36 + 32))
    {
      goto LABEL_79;
    }

    v37 = v35;
    v38 = v36;
    swift_beginAccess();
    sub_10030F580(v38, a3 + 1);
    swift_endAccess();
    v37(&v183, 0);
    v39.n128_f64[0] = machContTimeSec()();
    (*(*a1 + 624))(v39);
    v40 = a3[3];
    v41 = a3[4];
    v42 = a3[6];
    v43 = a3[7];
    v44 = a3[9];
    v45 = a3[10];
    v46 = a3[12];
    v47 = a3[13];
    v48 = a3[15];
    v49 = v172[16];
    *(&v184 + 1) = sub_100024A2C(&qword_10042F728, &qword_100399AC0);
    v50 = swift_allocObject();
    *&v183 = v50;
    *(v50 + 16) = v40;
    *(v50 + 24) = v41;
    *(v50 + 32) = *(v172 + 10);
    *(v50 + 40) = v42;
    *(v50 + 48) = v43;
    *(v50 + 56) = *(v172 + 16);
    *(v50 + 64) = v44;
    *(v50 + 72) = v45;
    *(v50 + 80) = *(v172 + 22);
    *(v50 + 88) = v46;
    *(v50 + 96) = v47;
    *(v50 + 104) = *(v172 + 28);
    *(v50 + 112) = v48;
    *(v50 + 120) = v49;
    v51 = v172;
    *(v50 + 128) = *(v172 + 34);
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    sub_100024A2C(&qword_10042F730, &qword_100399AC8);
    v29 = v167;
    v52 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    if (v29)
    {
LABEL_83:
      *&v183 = v29;
      sub_100024A2C(&qword_100418350, &unk_10039AB80);
      swift_dynamicCast();
      result = swift_willThrowTypedImpl();
      __break(1u);
      return result;
    }

    v53 = v52;

    v54 = v162;
    rpclog.getter(v162);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v175;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = v161;
      *(v59 + 4) = *(v51 + 4);

      *(v59 + 12) = 2050;
      *(v59 + 14) = *(v53 + 16);

      _os_log_impl(&_mh_execute_header, v55, v56, "#WiFi,fetchQueue,block.next,%{public}ld,count,%{public}ld", v59, 0x16u);
    }

    else
    {
    }

    a1 = v173;
    v60 = v178;
    v181 = *v182;
    v181(v54, v58);
    v61 = *(v51 + 4);
    if (*(v53 + 16) >= v61)
    {
      v62 = *(v51 + 4);
    }

    else
    {
      v62 = *(v53 + 16);
    }

    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_75;
    }

    v167 = 0;
    v63 = v177;
    if (v62)
    {
      v29 = 0;
      v64 = (v53 + 56);
      v180 = v53;
      v179 = v62;
      while (1)
      {
        if (v29 >= *(v53 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          __break(1u);
LABEL_81:

          __break(1u);
LABEL_82:

          __break(1u);
          goto LABEL_83;
        }

        if (*v64)
        {
          rpclog.getter(v63);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "#WiFi,fetchQueue,empty", v68, 2u);
            v63 = v177;
          }

          v181(v63, v58);
          goto LABEL_17;
        }

        v70 = *(v64 - 3);
        v69 = *(v64 - 2);
        v71 = *(v64 - 1);
        rpclog.getter(v60);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = v176;
        if (v74)
        {
          v76 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v183 = v174;
          *v76 = v171;
          v77 = sub_100307CF4(v70, v69, v71);
          v79 = v71;
          v80 = v64;
          v81 = v29;
          v82 = v70;
          v83 = v69;
          v84 = sub_10000234C(v77, v78, &v183);
          v75 = v176;

          *(v76 + 4) = v84;
          v69 = v83;
          v70 = v82;
          v29 = v81;
          v64 = v80;
          v71 = v79;
          _os_log_impl(&_mh_execute_header, v72, v73, "#WiFi,fetchQueue,wifiscandata,%s", v76, 0xCu);
          sub_100002580(v174);
          a1 = v173;

          v58 = v175;
        }

        v60 = v178;
        v85 = (v181)(v178, v58);
        if (BYTE3(v71) > 1u)
        {
          break;
        }

        if (BYTE3(v71))
        {
          if (BYTE3(v71) == 1)
          {
            v86 = v70;
            rpclog.getter(v169);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = v155;
              *(v89 + 4) = v86;
              _os_log_impl(&_mh_execute_header, v87, v88, "#WiFi,fetchQueue,AOPSERVICETIMESTAMP,timestamp,%{public}llu", v89, 0xCu);
            }

            v90 = v169;
            v58 = v175;
            goto LABEL_58;
          }

          goto LABEL_36;
        }

        v174 = v69;
        v104 = (*a1 + 376);
        v105 = *v104;
        v106 = *((*v104)(v85) + 16);

        if (v106)
        {
          v108 = v105(v107);
          v109 = *(v108 + 16);
          if (!v109)
          {
            goto LABEL_77;
          }

          v110 = *(v108 + 24 * v109 + 8);

          if (v110 < v70)
          {
            v112 = v105(v111);
            v113 = *(v112 + 16);
            if (!v113)
            {
              goto LABEL_80;
            }

            v114 = *(v112 + 24 * v113 + 8);

            v115 = v70 >= v114;
            v116 = v70 - v114;
            if (!v115)
            {
              goto LABEL_76;
            }

            v117 = NsInSec.getter();
            if ((v117 & 0x8000000000000000) != 0 || v117 < v116)
            {
              v118 = machContTimeSec()();
              (*(*a1 + 832))(0, v118);
            }
          }
        }

        v119 = (*(*a1 + 392))(&v183);
        v121 = v120;
        v122 = *v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v121 = v122;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = sub_10030DCEC(0, *(v122 + 2) + 1, 1, v122);
          *v121 = v122;
        }

        v125 = *(v122 + 2);
        v124 = *(v122 + 3);
        if (v125 >= v124 >> 1)
        {
          v122 = sub_10030DCEC((v124 > 1), v125 + 1, 1, v122);
          *v121 = v122;
        }

        v58 = v175;
        *(v122 + 2) = v125 + 1;
        v126 = &v122[24 * v125];
        v127 = v174;
        *(v126 + 4) = v70;
        *(v126 + 5) = v127;
        *(v126 + 24) = v71;
        v126[50] = BYTE2(v71);
        v126[51] = 0;
        v119(&v183, 0);
        a1 = v173;
        v128 = (*(*v173 + 776))(&v183);
        if (*v129 == -1)
        {
          goto LABEL_74;
        }

        ++*v129;
        v128(&v183, 0);
        rpclog.getter(v168);

        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = v151;
          *(v132 + 4) = (*(*a1 + 760))();

          _os_log_impl(&_mh_execute_header, v130, v131, "#WiFI,fetchQueue,ApCount since daemon start,%llu", v132, 0xCu);
        }

        else
        {
        }

        v60 = v178;
        v63 = v177;
        v65 = v179;
        v181(v168, v58);
        v53 = v180;
LABEL_18:
        ++v29;
        v64 += 32;
        if (v65 == v29)
        {
          goto LABEL_3;
        }
      }

      if (BYTE3(v71) == 2)
      {
        v133 = (*a1 + 568);
        v134 = *v133;
        (*v133)(v85);
        if ((v135 & 1) == 0)
        {
          rpclog.getter(v165);
          swift_retain_n();
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = v161;
            v143 = v134();
            if (v144)
            {
              goto LABEL_82;
            }

            *(v142 + 4) = v143;

            *(v142 + 12) = 2050;
            v146 = (v134)(v145);
            if (v147)
            {
              goto LABEL_81;
            }

            *(v142 + 14) = v146;

            _os_log_impl(&_mh_execute_header, v140, v141, "#WiFi, got pong from watchdog id: %{public}llu, last sent %{public}llu", v142, 0x16u);

            v58 = v175;
          }

          else
          {
          }

          v60 = v178;
          v63 = v177;
          v181(v165, v58);
          (*(*a1 + 576))(0, 1);
          (*(*a1 + 600))(0);
          goto LABEL_17;
        }

        v136 = v156;
        rpclog.getter(v156);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&_mh_execute_header, v137, v138, "#WiFi, got pong from lost watchdog id, daemon crashed recently or there was too many samples in intermediate queue", v139, 2u);
        }

        v90 = v136;
LABEL_58:
        v181(v90, v58);
        goto LABEL_61;
      }

      if (BYTE3(v71) == 64)
      {
        rpclog.getter(v170);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = v152;
          *(v93 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v91, v92, "#WiFi,fetchQueue,ASSOCIATEDBSSIDUPDATE,bssid:%{private}llx", v93, 0xCu);
        }

        v181(v170, v58);
        (*(*a1 + 528))(v69, v69 == 0);
        v94.n128_f64[0] = machContTimeSec()();
        (*(*a1 + 832))(1, v94);
LABEL_61:
        v63 = v177;
LABEL_17:
        v53 = v180;
        v65 = v179;
        goto LABEL_18;
      }

LABEL_36:
      rpclog.getter(v75);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v174 = (v71 >> 16);
        v164 = v71 >> 8;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v183 = v98;
        *v97 = v154;
        sub_100024A2C(&unk_10042F2F0, &unk_100399850);
        v99 = swift_allocObject();
        *(v99 + 16) = v153;
        *(v99 + 56) = &type metadata for UInt64;
        *(v99 + 64) = &protocol witness table for UInt64;
        *(v99 + 32) = v69;
        v100 = String.init(format:_:)();
        v102 = sub_10000234C(v100, v101, &v183);

        *(v97 + 4) = v102;
        *(v97 + 12) = 258;
        *(v97 + 14) = v71;
        *(v97 + 15) = 258;
        *(v97 + 17) = v164;
        *(v97 + 18) = 258;
        *(v97 + 20) = v174;
        *(v97 + 21) = 2050;
        *(v97 + 23) = v70;
        _os_log_impl(&_mh_execute_header, v95, v96, "#WiFi, Got unrecognized special packet with broadcast BSSID: {bssid:%s, rssi:%{public}hhd, channel:%{public}hhu, flags:%{public}hhu, timestamp:%{public}llu})", v97, 0x1Fu);
        sub_100002580(v98);
        v58 = v175;

        a1 = v173;

        v103 = v176;
      }

      else
      {

        v103 = v75;
      }

      v181(v103, v58);
      v60 = v178;
      goto LABEL_61;
    }

LABEL_3:

    v34 = (*v157)(v166, v160);
    v158(&v185, v34);
    v188 = v185;
    v189 = v186;
    a3 = v172;
    if (v187)
    {
      goto LABEL_78;
    }
  }

  v148 = machContTimeSec()();
  (*(*a1 + 832))(0);
  v149 = v163;
  result = swift_beginAccess();
  if (*(v149 + 16) == 1)
  {
    return (*(*a1 + 824))(result, v148);
  }

  return result;
}

void sub_10030BFD8(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 424))(v6) + 10.0 > a1)
  {
    return;
  }

  v9 = (*(*v1 + 472))();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = (*(*v1 + 352))();
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    v15 = (*(*v10 + 224))();
    if (v17)
    {

      sub_100004820(v13, v14);
      return;
    }

    v18 = v15;
    v19 = v16;
    v20 = (*(*v1 + 496))();
    if (v19 == v20)
    {
LABEL_18:
      (*(*v2 + 432))(v20, a1);

      sub_100004820(v13, v14);
      return;
    }

    v37 = v19;
    v21 = sub_10030EFA0();
    v22 = sub_10030EFA0();
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      v24 = sub_10030EFA8();
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (is_mul_ok(v23, v24))
        {
          v25 = v18 / v21 * 100.0;
          v26 = v23 * v24;
          rpclog.getter(v8);
          v27 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v27, v35))
          {
            v28 = swift_slowAlloc();
            v36 = v26;
            v29 = v28;
            *v28 = 134218752;
            *(v28 + 4) = v18;
            *(v28 + 12) = 2048;
            v30 = v37;
            *(v28 + 14) = UsToSec.getter() * v30;
            *(v29 + 22) = 2048;
            *(v29 + 24) = v25;
            *(v29 + 32) = 2048;
            *(v29 + 34) = v36;
            _os_log_impl(&_mh_execute_header, v27, v35, "#AOP2, wake up stats avaiable, numberOfWifiSamplesReceivedWhileAsleep: %llu, timeSinceAPLastSleptInSec: %f, wifiPercentage: %f, wifiBufferSize: %llu", v29, 0x2Au);
            v26 = v36;
          }

          v31 = (*(v5 + 8))(v8, v4);
          v32 = (*(*v2 + 640))(v31);
          v33 = v37;
          v13(v37, v26, v32, v25);
          (*(*v2 + 648))(0);
          v20 = (*(*v2 + 504))(v33);
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_10030C4A4(char a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v10 - 8);
  v73 = &v61 - v11;
  v12 = type metadata accessor for ALWiFiNotification();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v17 - 8);
  v76 = &v61 - v18;
  v74 = type metadata accessor for ALWiFiScanResult();
  v77 = *(v74 - 8);
  v19 = __chkstk_darwin(v74);
  v80 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || ((*v3)[50])(v19) + 1.0 <= a2)
  {
    v21 = ((*v3)[51])(v19, a2);
    v22 = *v3;
    v72 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v22 += 47;
    v23 = *v22;
    v24 = *((*v22)(v21) + 16);

    if (v24)
    {
      v62 = v9;
      v68 = v13;
      v63 = v7;
      v69 = v12;
      v64 = v6;
      ALWiFiScanResult.init()();
      v25 = v76;
      ALTimeStamp.init(machContinuousTimeSec:)();
      v26 = type metadata accessor for ALTimeStamp();
      v27 = *(v26 - 8);
      v28 = *(v27 + 56);
      v67 = v26;
      v66 = v28;
      v65 = v27 + 56;
      (v28)(v25, 0, 1);
      v29 = ALWiFiScanResult._scanTimestamp.setter();
      v70 = v3;
      v71 = v23(v29);
      v30 = *(v71 + 16);
      if (v30)
      {
        v31 = (v71 + 48);
        do
        {
          sub_10030CD24(*(v31 - 2), *(v31 - 1), *v31, *&a2, 0);
          v32 = ALWiFiScanResult._accessPoints.modify();
          v34 = v33;
          v35 = *v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v34 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_10000DFC4(0, v35[2] + 1, 1, v35);
            *v34 = v35;
          }

          v38 = v35[2];
          v37 = v35[3];
          if (v38 >= v37 >> 1)
          {
            v35 = sub_10000DFC4((v37 > 1), v38 + 1, 1, v35);
            *v34 = v35;
          }

          v31 += 6;
          v35[2] = v38 + 1;
          (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v38, v79, v78);
          v32(v81, 0);
          --v30;
        }

        while (v30);
      }

      v39 = v75;
      ALWiFiNotification.init()();
      v40 = v76;
      ALTimeStamp.init(machContinuousTimeSec:)();
      v66(v40, 0, 1, v67);
      ALWiFiNotification._timestamp.setter();
      v41 = v77;
      v42 = v73;
      v43 = v74;
      (*(v77 + 16))(v73, v80, v74);
      (*(v41 + 56))(v42, 0, 1, v43);
      ALWiFiNotification._scanResult.setter();
      ALWiFiNotification._simulated.setter();
      v44 = ALWiFiNotification._available.setter();
      v45 = v70;
      (*v70)[65](v44);
      v46 = ALWiFiNotification._associatedMac.setter();
      v47 = (*v45)[41](v46);
      v49 = v68;
      if (v47)
      {
        v50 = v47;
        v79 = v48;
        v47(v39);
        v51 = v62;
        rpclog.getter(v62);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v81[0] = v55;
          *v54 = 136315138;
          swift_beginAccess();
          v56 = ALWiFiNotification.description.getter();
          v58 = sub_10000234C(v56, v57, v81);

          *(v54 + 4) = v58;
          v39 = v75;
          _os_log_impl(&_mh_execute_header, v52, v53, "#WiFi,_onData,notif,%s", v54, 0xCu);
          sub_100002580(v55);

          v43 = v74;
        }

        sub_100004820(v50, v79);

        (*(v63 + 8))(v51, v64);
      }

      v59 = (*v45)[49](v81);
      *v60 = &_swiftEmptyArrayStorage;

      v59(v81, 0);
      (*(v77 + 8))(v80, v43);
      (*(v49 + 8))(v39, v69);
    }
  }
}

uint64_t sub_10030CD24(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  v7 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v7 - 8);
  v9 = &v14[-v8];
  ALWiFiScanSingleAccessPoint.init()();
  ALWiFiScanSingleAccessPoint._mac.setter();
  v14[12] = 0;
  ALWiFiScanSingleAccessPoint._channel.setter();
  v14[8] = 0;
  ALWiFiScanSingleAccessPoint._rssidB.setter();
  v10 = HIWORD(a3) & 3;
  v11 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, **(&off_1004073C0 + v10), v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  result = ALWiFiScanSingleAccessPoint._band.setter();
  if ((a5 & 1) == 0)
  {
    NsToSec.getter();
    v14[4] = 0;
    return ALWiFiScanSingleAccessPoint._ageSec.setter();
  }

  return result;
}

void *sub_10030CECC()
{
  v76 = type metadata accessor for Logger();
  v1 = *(v76 - 8);
  v2 = __chkstk_darwin(v76);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v97 = &v69 - v5;
  v74 = type metadata accessor for Mirror();
  v6 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 304))(v108, v7);
  if (v109)
  {
    return result;
  }

  v73 = v9;
  v106 = v108[0];
  v107 = v108[1];
  v11 = (*v0 + 712);
  v12 = *v11;
  v13 = (*v11)(result);
  v14 = *v0;
  v98 = *(*v0 + 840);
  v99 = v14 + 840;
  v15 = v98(v13);
  v16 = *(*v0 + 688);
  v100 = v0;
  v17 = *(v16() + 16);

  if (HIDWORD(v17))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v70 = v1;
  v18 = v15 - v17;
  if (v15 < v17)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v69 = v4;
  memset(v102, 0, 60);
  v19 = sub_10030EFB0(v102);
  v4 = (v16)(v19);
  v101 = v4;
  v12 = v12();
  v104 = v106;
  v105 = v107;
  if (!sub_1000234F4(&v104))
  {
    v96 = 0;
    v75 = (v70 + 8);
    v72 = (v6 + 1);
    *&v20 = 136315138;
    v71 = v20;
    do
    {
      sub_10030EFC4(&v106, v102);
      LODWORD(v95) = LOBYTE(v102[0]);
      v24 = *(v102 + 1);
      v25 = BYTE5(v102[0]);
      v26 = *(v102 + 6);
      v27 = BYTE10(v102[0]);
      v28 = *(v102 + 11);
      v93 = v102[1];
      LODWORD(v94) = HIBYTE(v102[0]);
      v91 = *(&v102[1] + 5);
      v92 = BYTE4(v102[1]);
      v89 = *(&v102[1] + 10);
      v90 = BYTE9(v102[1]);
      v87 = *(&v102[1] + 15);
      v88 = BYTE14(v102[1]);
      v85 = DWORD1(v102[2]);
      v86 = BYTE3(v102[2]);
      v83 = *(&v102[2] + 9);
      v84 = BYTE8(v102[2]);
      v81 = *(&v102[2] + 14);
      v82 = BYTE13(v102[2]);
      v79 = *(&v102[3] + 3);
      v80 = BYTE2(v102[3]);
      v77 = DWORD2(v102[3]);
      v78 = BYTE7(v102[3]);
      *(&v105 + 1) = sub_100024A2C(&qword_10042F328, &qword_100399878);
      v29 = swift_allocObject();
      *&v104 = v29;
      *(v29 + 16) = v95;
      *(v29 + 17) = v24;
      *(v29 + 21) = v25;
      *(v29 + 22) = v26;
      *(v29 + 26) = v27;
      *(v29 + 27) = v28;
      v30 = v93;
      *(v29 + 31) = v94;
      *(v29 + 32) = v30;
      v31 = v91;
      *(v29 + 36) = v92;
      *(v29 + 37) = v31;
      v32 = v89;
      *(v29 + 41) = v90;
      *(v29 + 42) = v32;
      v33 = v87;
      *(v29 + 46) = v88;
      *(v29 + 47) = v33;
      v34 = v85;
      *(v29 + 51) = v86;
      *(v29 + 52) = v34;
      v35 = v83;
      *(v29 + 56) = v84;
      *(v29 + 57) = v35;
      v36 = v81;
      *(v29 + 61) = v82;
      *(v29 + 62) = v36;
      v37 = v79;
      *(v29 + 66) = v80;
      *(v29 + 67) = v37;
      v38 = v77;
      *(v29 + 71) = v78;
      *(v29 + 72) = v38;
      Mirror.init(reflecting:)();
      Mirror.children.getter();
      sub_100024A2C(&unk_10042F330, &unk_100399880);
      v39 = v96;
      v40 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v96 = v39;
      if (v39)
      {
        *&v104 = v96;
        sub_100024A2C(&qword_100418350, &unk_10039AB80);
        swift_dynamicCast();
        result = swift_willThrowTypedImpl();
        __break(1u);
        return result;
      }

      v6 = v40;

      swift_beginAccess();
      if (!v6[2])
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v41 = 0;
      v42 = v6 + 37;
      while (1)
      {
        if (*v42)
        {
LABEL_15:
          v43 = v12;
          goto LABEL_35;
        }

        v44 = *(v42 - 5);
        if (!v44)
        {
          goto LABEL_10;
        }

        v43 = (v44 | (*(v42 - 1) << 32)) >> 8;
        if (v44)
        {
          if (v12)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_10030DBE4(0, *(v4 + 2) + 1, 1, v4);
            }

            v48 = *(v4 + 2);
            v47 = *(v4 + 3);
            if (v48 >= v47 >> 1)
            {
              v4 = sub_10030DBE4((v47 > 1), v48 + 1, 1, v4);
            }

            *(v4 + 2) = v48 + 1;
            *&v4[4 * v48 + 32] = v12;
            v101 = v4;
            if (v48 >= 0x28)
            {
              v49 = v97;
              rpclog.getter(v97);
              v50 = Logger.logObject.getter();
              v51 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                v94 = v52;
                v95 = swift_slowAlloc();
                *&v104 = v95;
                *v52 = v71;

                v53 = Array.description.getter();
                v55 = v54;

                v56 = sub_10000234C(v53, v55, &v104);

                v57 = v94;
                *(v94 + 1) = v56;
                _os_log_impl(&_mh_execute_header, v50, v51, "{msg:AOP2 logs received, log:%s}", v57, 0xCu);
                sub_100002580(v95);

                (*v75)(v97, v76);
              }

              else
              {

                (*v75)(v49, v76);
              }

              v101 = &_swiftEmptyArrayStorage;

              v4 = &_swiftEmptyArrayStorage;
            }
          }

          v18 = v98(v43);
        }

        else
        {
          if (!v18)
          {
            goto LABEL_15;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10030DBE4(0, *(v4 + 2) + 1, 1, v4);
          }

          v46 = *(v4 + 2);
          v45 = *(v4 + 3);
          if (v46 >= v45 >> 1)
          {
            v4 = sub_10030DBE4((v45 > 1), v46 + 1, 1, v4);
          }

          *(v4 + 2) = v46 + 1;
          *&v4[4 * v46 + 32] = v43;
          v101 = v4;
          --v18;
          v43 = v12;
        }

LABEL_35:
        if (v41 == 11)
        {
          break;
        }

        ++v41;
        v42 += 6;
        v12 = v43;
        if (v41 >= v6[2])
        {
          goto LABEL_50;
        }
      }

      v12 = v43;
LABEL_10:
      (*v72)(v73, v74);

      v104 = v106;
      v105 = v107;
    }

    while (!sub_1000234F4(&v104));
  }

  if (!v18)
  {
    v6 = v100;
    if (!v12)
    {
LABEL_43:
      (*(*v6 + 696))(&_swiftEmptyArrayStorage);
      v12 = 0;
      goto LABEL_44;
    }

    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_40:
      v59 = *(v4 + 2);
      v58 = *(v4 + 3);
      if (v59 >= v58 >> 1)
      {
        v4 = sub_10030DBE4((v58 > 1), v59 + 1, 1, v4);
      }

      *(v4 + 2) = v59 + 1;
      *&v4[4 * v59 + 32] = v12;
      v101 = v4;
      goto LABEL_43;
    }

LABEL_54:
    v4 = sub_10030DBE4(0, *(v4 + 2) + 1, 1, v4);
    goto LABEL_40;
  }

  v6 = v100;
  v21 = v98(v12);
  v22 = v21 - v18;
  if (v21 < v18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v23 = sub_10030D9E4(v22, v4);
  (*(*v6 + 696))(v23);
  swift_beginAccess();
  sub_10030DBBC(v22);
LABEL_44:
  (*(*v6 + 720))(v12);
  swift_beginAccess();
  v60 = v69;
  if (*(v101 + 2))
  {
    rpclog.getter(v69);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103 = v64;
      *v63 = 136315138;

      v65 = Array.description.getter();
      v67 = v66;

      v68 = sub_10000234C(v65, v67, &v103);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "{msg:AOP2 logs received, log:%s}", v63, 0xCu);
      sub_100002580(v64);
    }

    (*(v70 + 8))(v60, v76);
  }
}

unint64_t sub_10030D9E4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_10030DFC0(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 32;
      do
      {
        v9 = *(a2 + v7);
        v10 = *(&_swiftEmptyArrayStorage + 2);
        if (v10 < v3)
        {
          v8 = *(&_swiftEmptyArrayStorage + 3);
          if (v10 >= v8 >> 1)
          {
            result = sub_10030DFC0((v8 > 1), v10 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
          *(&_swiftEmptyArrayStorage + v10 + 8) = v9;
        }

        else
        {
          if (v6 >= v10)
          {
            __break(1u);
            goto LABEL_26;
          }

          *(&_swiftEmptyArrayStorage + v6 + 8) = v9;
          if ((v6 + 1) < v3)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }
        }

        v7 += 4;
        --v5;
      }

      while (v5);

      if (!v6)
      {
        return &_swiftEmptyArrayStorage;
      }

      v11 = *(&_swiftEmptyArrayStorage + 2);
      result = sub_10030DFC0(0, v11, 0);
      if (v11 >= v6)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v12 = *(&_swiftEmptyArrayStorage + 2);
        if (v12 >= v6 && v12 >= v11)
        {

          sub_10030DEA0(v13, &_swiftEmptyArrayStorage + 32, v6, (2 * v11) | 1);
          sub_10030DEA0(&_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage + 32, 0, (2 * v6) | 1);
          return &_swiftEmptyArrayStorage;
        }

        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10030DBBC(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_10030F450(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_10030DBE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_10042F700, &qword_100399A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10030DCEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_10042F738, &qword_100399AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

unint64_t sub_10030DE0C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10030DEA0(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 24) >> 1;
  if (v12 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

LABEL_11:
      result = sub_10030DFC0(result, v13, 1);
      v11 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v12 - v14 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 4 * v14 + 32), (v6 + 4 * v5), 4 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v10);
    v17 = v15 + v10;
    if (!v16)
    {
      *(v11 + 16) = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

char *sub_10030DFC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10030DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10030DFE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_10042F700, &qword_100399A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10030E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030F510(a1, v5);

  type metadata accessor for AONLogSample(0);
  result = swift_dynamicCast();
  v4 = v5[14] | (v6 << 32);
  if (!result)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = BYTE4(v4);
  *(a2 + 5) = result ^ 1;
  return result;
}

uint64_t sub_10030E184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030F510(a1, v7);

  type metadata accessor for aonloc_wifiscandata(0);
  result = swift_dynamicCast();
  v4 = v7[6];
  v5 = v7[7];
  v6 = v7[8];
  if (!result)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result ^ 1;
  return result;
}

uint64_t sub_10030E220(void *a1, double a2)
{
  v3 = v2;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for DispatchTime();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v55 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v47 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Logger();
  v48 = *(v49 - 8);
  v11 = __chkstk_darwin(v49);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 1;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = &_swiftEmptyArrayStorage;
  *(v3 + 136) = 1;
  *(v3 + 144) = xmmword_100399800;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 200) = 1;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 1;
  *(v3 + 232) = 0;
  *(v3 + 240) = machContTimeSec()();
  *(v3 + 248) = 0;
  *(v3 + 256) = sub_100308E7C();
  *(v3 + 264) = 0;
  *(v3 + 272) = &_swiftEmptyArrayStorage;
  *(v3 + 280) = 0;
  *(v3 + 296) = a1;
  *(v3 + 304) = 0;
  *(v3 + 288) = 0x3FA999999999999ALL;
  *&aBlock = 0;
  v19 = String.utf8CString.getter();
  v20 = a1;
  LODWORD(a1) = shmem_map((v19 + 32), 0, &aBlock);

  if (a1)
  {
    v37 = rpclog.getter(v18);
    __chkstk_darwin(v37);
    Logger._fatal(_:function:file:line:)(sub_10030F768, (&v39 - 2), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
  }

  v21 = aBlock;
  if (aBlock)
  {
    *&aBlock = 0;
    v22 = String.utf8CString.getter();
    v23 = shmem_map((v22 + 32), 0, &aBlock);

    if (v23)
    {
      v38 = rpclog.getter(v16);
      __chkstk_darwin(v38);
      Logger._fatal(_:function:file:line:)(sub_10030F768, (&v39 - 2), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
    }

    v24 = aBlock;
    if (aBlock)
    {
      swift_beginAccess();
      *(v3 + 208) = v21;
      swift_beginAccess();
      *(v3 + 264) = v24;
      address = shmem_get_address(v21);
      sub_100307CC8(&aBlock, address, 30, 0);
      v40 = aBlock;
      v39 = v59;
      swift_beginAccess();
      v26 = v39;
      *(v3 + 16) = v40;
      *(v3 + 32) = v26;
      *(v3 + 48) = 0;
      v27 = shmem_get_address(v24);
      sub_100307CC8(&aBlock, v27, 61, 0);
      v40 = aBlock;
      v39 = v59;
      swift_beginAccess();
      *(v3 + 72) = v39;
      *(v3 + 56) = v40;
      *(v3 + 88) = 0;
      rpclog.getter(v13);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134349056;
        *(v30 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v28, v29, "Polling interval is %{public}f sec", v30, 0xCu);
      }

      (*(v48 + 8))(v13, v49);
      sub_10030F660();
      swift_beginAccess();
      v31 = *(v3 + 296);
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100005E28(&unk_10042F750, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      v32 = v31;
      sub_100024A2C(&qword_100431A50, &unk_10039ABE0);
      sub_100006DDC(&unk_10042F760, &qword_100431A50, &unk_10039ABE0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v33 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

      (*(v47 + 8))(v57, v56);
      swift_beginAccess();
      *(v3 + 168) = v33;
      swift_unknownObjectRelease();
      if (*(v3 + 168))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        static DispatchTime.now()();
        v34 = v52;
        *v52 = 0;
        (*(v53 + 104))(v34, enum case for DispatchTimeInterval.nanoseconds(_:), v54);
        OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
        swift_unknownObjectRelease();
        (*(v53 + 8))(v52, v54);
        (*(v45 + 8))(v55, v46);
        if (*(v3 + 168))
        {
          swift_getObjectType();
          v60 = sub_10030F6AC;
          v61 = v3;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v59 = sub_1000025CC;
          *(&v59 + 1) = &unk_100407398;
          v35 = _Block_copy(&aBlock);
          swift_retain_n();
          swift_unknownObjectRetain();
          static DispatchQoS.unspecified.getter();
          sub_100309480();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v35);

          swift_unknownObjectRelease();
          (*(v43 + 8))(v50, v44);
          (*(v41 + 8))(v51, v42);

          if (*(v3 + 168))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            OS_dispatch_source.activate()();
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return v3;
}

void sub_10030ED70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10030ED78);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10030EDB8()
{
  _StringGuts.grow(_:)(29);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD00000000000001ALL;
}

uint64_t sub_10030EE5C()
{
  v1 = *(v0 + 32);
  _StringGuts.grow(_:)(69);
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x80000001003B0990;
  String.append(_:)(v2);
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._object = 0x80000001003B09C0;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  (*(*v1 + 640))(v5, v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return 0;
}

double sub_10030EFB0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_10030EFC4(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(*a1);
  v4 = v3 % v2;
  v5 = atomic_load((*a1 + 64));
  if (v4 != v5)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + ((atomic_fetch_add(*a1, 1uLL) % *(a1 + 8)) << 6));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    *(a2 + 44) = *(v7 + 44);
    a2[1] = v9;
    a2[2] = v10;
    *a2 = v8;
    result = 0.0;
    v7[1] = 0u;
    v7[2] = 0u;
    *(v7 + 44) = 0u;
    *v7 = 0u;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TicksInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TicksInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TicksInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_10030F210(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10030F244(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10030F258(uint64_t a1, int a2)
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

uint64_t sub_10030F278(uint64_t result, int a2, int a3)
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

__n128 sub_10030F2B8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10030F2DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030F2FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void sub_10030F35C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10030F3A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10030F450(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10030DBE4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10030F3A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10030F510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042F708, &unk_100399AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10030F580(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(*a1);
  v4 = v3 % v2;
  v5 = atomic_load((*a1 + 64));
  if (v4 != v5)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + ((atomic_fetch_add(*a1, 1uLL) % *(a1 + 8)) << 7));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    a2[2] = v7[2];
    a2[3] = v10;
    *a2 = v8;
    a2[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    a2[6] = v7[6];
    a2[7] = v13;
    a2[4] = v11;
    a2[5] = v12;
    result = 0.0;
    v7[2] = 0u;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[6] = 0u;
    v7[7] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
  }

  return result;
}

unint64_t sub_10030F60C()
{
  result = qword_10042F740;
  if (!qword_10042F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F740);
  }

  return result;
}

unint64_t sub_10030F660()
{
  result = qword_100431A40;
  if (!qword_100431A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100431A40);
  }

  return result;
}

void sub_10030F6AC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = (*(*v0 + 816))();
  (*(*v0 + 848))(v2);

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_10030F770()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Tightbeam, got new block.", v8, 2u);
  }

  result = (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = *(v1 + 24);

    v10(v12);
    return sub_100004820(v10, v11);
  }

  return result;
}

uint64_t sub_10030F8D8()
{
  sub_100004820(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t ALTightbeamHandler.__allocating_init(cb:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ALTightbeamHandler.init(cb:)(a1, a2);
  return v4;
}

uint64_t ALTightbeamHandler.init(cb:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = type metadata accessor for Logger();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TightbeamEndpoint();
  v7 = *(v42 - 8);
  v8 = __chkstk_darwin(v42);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v41 = (&v35 - v12);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  rpc_init();
  v43 = 0;
  sub_100310218(0xD000000000000015, 0x80000001003B0AB0, &v43 + 1, &v43);
  *v14 = HIDWORD(v43);
  v15 = *(v7 + 104);
  v16 = v42;
  (v15)(v14, enum case for TightbeamEndpoint.afk(_:), v42);
  *v41 = v43;
  v15();
  type metadata accessor for aonloc_service.Service();
  v37 = *(v7 + 16);
  v37(v10, v14, v16);
  v17 = sub_1003137FC(v10);
  swift_beginAccess();
  *(v3 + 16) = v17;

  v18 = type metadata accessor for ackHandler();
  v19 = swift_allocObject();
  v38 = v14;
  v20 = v3;
  v21 = v7;
  v22 = v39;
  v23 = v6;
  v24 = v40;
  *(v19 + 16) = v39;
  *(v19 + 24) = v24;
  type metadata accessor for aonloc_callback.Server();
  v37(v10, v41, v42);
  v44[3] = v18;
  v44[4] = &off_100407408;
  v44[0] = v19;

  v25 = v21;
  v26 = v20;
  v27 = v38;
  sub_100022B94(v22, v24);
  v28 = sub_1003173AC(v10, v44);
  swift_beginAccess();
  *(v26 + 24) = v28;

  if (*(v26 + 24))
  {

    sub_100318EE0();
  }

  rpclog.getter(v23);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Tightbeam, init success", v31, 2u);
    v27 = v38;
  }

  sub_100004820(v39, v40);
  (*(v35 + 8))(v23, v36);
  v32 = *(v25 + 8);
  v33 = v42;
  v32(v41, v42);
  v32(v27, v33);
  return v26;
}

void sub_10030FE14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_10030FE20(const char *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v21 - v11;
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  server_by_name = rpc_get_server_by_name(a1);
  v16 = server_by_name;
  if (!server_by_name)
  {
    v19 = rpclog.getter(v14);
    __chkstk_darwin(v19);
    v18 = &v21[-4];
    v20 = 72;
    v17 = sub_100313358;
    goto LABEL_11;
  }

  __chkstk_darwin(server_by_name);
  v21[-4] = v16;
  v21[-3] = a2;
  v20 = a3;
  if (("ghtbeamEndpointsHelpers.swift" & 0x1000000000000000) != 0)
  {
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_7;
  }

  if (("ghtbeamEndpointsHelpers.swift" & 0x2000000000000000) != 0)
  {
    v21[0] = 0xD00000000000001FLL;
    v21[1] = "ghtbeamEndpointsHelpers.swift" & 0xFFFFFFFFFFFFF0;
    if (!rpc_afk_interface_find(v16, v21, 0, a2, a3))
    {
      goto LABEL_7;
    }

    rpclog.getter(v9);
    v20 = 67;
    v17 = sub_1003101FC;
    v18 = 0;
LABEL_11:
    Logger._fatal(_:function:file:line:)(v17, v18, "init(cb:)", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/AFKTightbeamEndpointsHelpers.swift", 93, 2, v20);
  }

  if (rpc_afk_interface_find(v16, (("ghtbeamEndpointsHelpers.swift" & 0xFFFFFFFFFFFFFF0) + 32), 0, a2, a3))
  {
    rpclog.getter(v12);
    v20 = 67;
    v17 = sub_1003101FC;
    v18 = 0;
    goto LABEL_11;
  }

LABEL_7:
  rpc_release_server(v16);
}

uint64_t sub_100310104(const char *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v8 = type metadata accessor for Logger();
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = rpc_afk_interface_find(a2, a1, 0, a3, a4);
  if (result)
  {
    rpclog.getter(v10);
    Logger._fatal(_:function:file:line:)(sub_1003101FC, 0, "init(cb:)", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/AFKTightbeamEndpointsHelpers.swift", 93, 2, 67);
  }

  return result;
}

void sub_100310218(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_10030FE20(v4, a3, a4);
}

uint64_t sub_100310300(void (*a1)(void), const char *a2, ...)
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  result = (*(*v2 + 96))(v5);
  if (result)
  {
    a1();
  }

  return result;
}

uint64_t sub_100310544(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v14 - v7;
  result = (*(*v1 + 96))(v6);
  if (result)
  {
    v10 = sub_100313844(a1);
    rpclog.getter(v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Tightbeam, hello return: %{public}llu", v13, 0xCu);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_10031081C()
{
  v48 = type metadata accessor for Logger();
  v1 = *(v48 - 8);
  v2 = __chkstk_darwin(v48);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v52 = v38 - v5;
  v6 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v6 - 8);
  v8 = v38 - v7;
  v9 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v15 = type metadata accessor for ALWiFiScanResult();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v51 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 96))(v17);
  v50 = result;
  if (result)
  {
    ALWiFiNotification._scanResult.getter();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_1000059A8(v14, &unk_10042F310, &unk_100399860);
    }

    else
    {
      v38[1] = v4;
      v39 = v16;
      v40 = v15;
      (*(v16 + 32))(v51, v14, v15);
      result = ALWiFiScanResult._accessPoints.getter();
      v46 = *(result + 16);
      v47 = result;
      if (v46)
      {
        v21 = v1;
        v22 = 0;
        v45 = v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v43 = (v21 + 8);
        v44 = v49 + 16;
        v42 = (v49 + 8);
        *&v20 = 67109120;
        v41 = v20;
        while (v22 < *(v47 + 16))
        {
          (*(v49 + 16))(v11, v45 + *(v49 + 72) * v22, v9);
          ALWiFiScanResult._scanTimestamp.getter();
          v23 = type metadata accessor for ALTimeStamp();
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(v8, 1, v23) == 1)
          {
            result = sub_1000059A8(v8, &qword_100418C70, qword_10039A8A0);
            v25 = 0.0;
          }

          else
          {
            v26 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
            v28 = v27;
            result = (*(v24 + 8))(v8, v23);
            if (v28)
            {
              v25 = 0.0;
            }

            else
            {
              v25 = v26;
            }
          }

          if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_33;
          }

          if (v25 <= -1.0)
          {
            goto LABEL_34;
          }

          if (v25 >= 1.84467441e19)
          {
            goto LABEL_35;
          }

          result = NsInSec.getter();
          if (result < 0)
          {
            goto LABEL_36;
          }

          if (!is_mul_ok(v25, result))
          {
            goto LABEL_37;
          }

          ALWiFiScanSingleAccessPoint.mac.getter();
          result = ALWiFiScanSingleAccessPoint.rssidB.getter();
          if ((result & &_mh_execute_header) != 0)
          {
            v29 = 0;
          }

          else
          {
            v29 = result;
          }

          if (v29 < -128)
          {
            goto LABEL_38;
          }

          if (v29 > 127)
          {
            goto LABEL_39;
          }

          result = ALWiFiScanSingleAccessPoint.channel.getter();
          if ((result & &_mh_execute_header) != 0)
          {
            v30 = 0;
          }

          else
          {
            v30 = result;
          }

          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          if (v30 > 0xFF)
          {
            goto LABEL_41;
          }

          sub_100313658();
          v34 = sub_10031386C(v31, v32, v33);
          rpclog.getter(v52);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = v41;
            *(v37 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v35, v36, "Tightbeam, enqueue wifi sample return: %d", v37, 8u);
          }

          ++v22;

          (*v43)(v52, v48);
          result = (*v42)(v11, v9);
          if (v46 == v22)
          {
            goto LABEL_30;
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
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }

      else
      {
LABEL_30:

        return (*(v39 + 8))(v51, v40);
      }
    }
  }

  return result;
}

uint64_t sub_100310FEC(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  result = (*(*v1 + 96))(v6);
  if (result)
  {
    v18 = sub_10031420C(a1 & 1);
    rpclog.getter(v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446466;
      if (a1)
      {
        v14 = 28271;
      }

      else
      {
        v14 = 6710895;
      }

      if (a1)
      {
        v15 = 0xE200000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_10000234C(v14, v15, &v19);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1024;
      *(v12 + 14) = v18 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "Tightbeam, enableWifiReception %{public}s -> %{BOOL}d", v12, 0x12u);
      sub_100002580(v13);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_100311340(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v14 - v7;
  result = (*(*v1 + 96))(v6);
  if (result)
  {
    v10 = sub_1003141E0(a1 & 1);
    rpclog.getter(v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240192;
      *(v13 + 4) = v10 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Tightbeam, enableCallbackMessages return: %{BOOL,public}d", v13, 8u);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_10031161C()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  if (!(*(*v0 + 96))(v2))
  {
    return -1;
  }

  v3 = sub_100314568();

  return v3;
}

uint64_t sub_10031184C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v4 = __chkstk_darwin(v3);
  v6 = &v21[-v5];
  v7 = __chkstk_darwin(v4);
  v9 = &v21[-v8];
  result = (*(*v0 + 96))(v7);
  if (result)
  {
    v11 = sub_100314590();
    v13 = v12;
    rpclog.getter(v9);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v14, v15, "numberOfWifiSamplesReceivedWhileAsleep='%{public}llu'", v16, 0xCu);
    }

    v17 = *(v2 + 8);
    v17(v9, v1);
    rpclog.getter(v6);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v18, v19, "timeSinceAPLastSleptInUsecs='%{public}llu'", v20, 0xCu);
    }

    return (v17)(v6, v1);
  }

  return result;
}

uint64_t sub_100311BEC(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  if (!(*(*v1 + 96))(v4))
  {
    return -1;
  }

  v5 = sub_1003148C8(a1);

  return v5;
}

uint64_t sub_100311E24()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  result = (*(*v0 + 96))(v2);
  if (result)
  {
    v4 = sub_100314590();

    return v4;
  }

  return result;
}

uint64_t sub_100312068(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  result = (*(*v1 + 96))(v4);
  if (result)
  {
    v6 = sub_100314C1C(a1);

    return v6;
  }

  return result;
}

uint64_t sub_1003122A8()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  result = (*(*v0 + 96))(v2);
  if (result)
  {
    v4 = sub_100314C44();

    return v4;
  }

  return result;
}

unint64_t sub_1003124E0()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  if ((*(*v0 + 96))(v2))
  {
    v3 = sub_100313EB4();

    v4 = 0;
    v5 = v3;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

uint64_t sub_100312724(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  if (!(*(*v1 + 96))(v4))
  {
    return 2;
  }

  v5 = sub_100314F8C(a1);

  return v5 & 1;
}

uint64_t sub_10031295C(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  if ((*(*v1 + 96))(v4))
  {
    v5 = sub_1003152C8(v2);

    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 8);
}

uint64_t sub_100312BA0()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  if ((*(*v0 + 96))(v2))
  {
    v3 = sub_100315604();

    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  return v3 | (v4 << 8);
}

uint64_t sub_1003130BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Tightbeam, hello ack: %llu.", v8, 0xCu);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100313208()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tightbeam, intermediate queue is full.", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100313358()
{
  _StringGuts.grow(_:)(29);
  v0._object = 0x80000001003B0C10;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v0);
  sub_100024A2C(&qword_10042FA00, &unk_100399B60);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int sub_100313478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x40020100u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100313508(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x40020100u >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t sub_100313558@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100318808(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1003136C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100804020100uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_10031375C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100804020100uLL >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t sub_1003137B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100318828(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100313804(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10031386C(Swift::UInt64 a1, Swift::UInt64 a2, unsigned int a3)
{
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v4 = type metadata accessor for TightbeamDecoder();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v6 - 8);
  v34 = type metadata accessor for TightbeamMessage();
  v7 = *(v34 - 8);
  v8 = __chkstk_darwin(v34);
  v9 = __chkstk_darwin(v8);
  v11 = v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v3)
  {
    v19 = v36;
    type metadata accessor for TransportError();
    v21 = v20;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v22 = v19;
  }

  else
  {
    v17 = v35;
    v27 = HIWORD(v35);
    v28 = HIBYTE(v35);
    v18 = *(v7 + 32);
    v26 = v35 >> 8;
    v25[1] = v7 + 32;
    v18(v14, v16, v34);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x3545A80215C54633uLL);
    TightbeamEncoder.encode(_:)(v32);
    TightbeamEncoder.encode(_:)(v33);
    TightbeamEncoder.encode(_:)(v17);
    TightbeamEncoder.encode(_:)(v26);
    TightbeamEncoder.encode(_:)(v27);
    TightbeamEncoder.encode(_:)(v28);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v18(v14, v11, v34);
    v24 = v29;
    TightbeamDecoder.init(message:)();
    v21 = TightbeamDecoder.decode(as:)();
    (*(v30 + 8))(v24, v31);
  }

  return v21;
}

uint64_t sub_100313C3C(Swift::UInt64 a1)
{
  v16 = a1;
  v2 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TightbeamMessage();
  v17 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - v9;
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v1)
  {
    v13 = v18;
    type metadata accessor for TransportError();
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    result = swift_allocError();
    *v15 = v13;
  }

  else
  {
    (*(v17 + 32))(v10, v12, v3);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v16);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    return (*(v17 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_100313EB4()
{
  v0 = type metadata accessor for TightbeamDecoder();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TightbeamMessage();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = v24;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    v17 = v16;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v18 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xC7498AF17471E693);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v24(v11, v8, v3);
    v20 = v21;
    TightbeamDecoder.init(message:)();
    v17 = TightbeamDecoder.decode(as:)();
    (*(v22 + 8))(v20, v23);
  }

  return v17;
}

uint64_t sub_100314238(int a1, Swift::UInt64 a2)
{
  v27 = a2;
  v29 = a1;
  v2 = type metadata accessor for TightbeamDecoder();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = v28;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v16)
  {
    v17 = v30;
    type metadata accessor for TransportError();
    v19 = v18;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v20 = v17;
  }

  else
  {
    v28 = *(v6 + 32);
    v28(v13, v15, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v27);
    TightbeamEncoder.encode(_:)(v29 & 1);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v28(v13, v10, v5);
    v22 = v24;
    TightbeamDecoder.init(message:)();
    v19 = TightbeamDecoder.decode(as:)();
    (*(v25 + 8))(v22, v26);
  }

  return v19 & 1;
}

uint64_t sub_100314590()
{
  v0 = type metadata accessor for TightbeamDecoder();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TightbeamMessage();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = v24;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    v17 = v16;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v18 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xA9650CE9B29F447FLL);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v24(v11, v8, v3);
    v20 = v21;
    TightbeamDecoder.init(message:)();
    v17 = TightbeamDecoder.decode(as:)();
    TightbeamDecoder.decode(as:)();
    (*(v22 + 8))(v20, v23);
  }

  return v17;
}

uint64_t sub_1003148F0(Swift::UInt64 a1, Swift::UInt64 a2)
{
  v26 = a2;
  v27 = a1;
  v2 = type metadata accessor for TightbeamDecoder();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = v28;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v16)
  {
    v17 = v29;
    type metadata accessor for TransportError();
    v19 = v18;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v20 = v17;
  }

  else
  {
    v28 = *(v6 + 32);
    v28(v13, v15, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v26);
    TightbeamEncoder.encode(_:)(v27);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v28(v13, v10, v5);
    v22 = v23;
    TightbeamDecoder.init(message:)();
    v19 = TightbeamDecoder.decode(as:)();
    (*(v24 + 8))(v22, v25);
  }

  return v19;
}

uint64_t sub_100314C6C(Swift::UInt64 a1)
{
  v26 = a1;
  v1 = type metadata accessor for TightbeamDecoder();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TightbeamMessage();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = v27;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v15)
  {
    v16 = v28;
    type metadata accessor for TransportError();
    v18 = v17;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v19 = v16;
  }

  else
  {
    v27 = *(v5 + 32);
    v27(v12, v14, v4);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v26);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v27(v12, v9, v4);
    v21 = v23;
    TightbeamDecoder.init(message:)();
    v18 = TightbeamDecoder.decode(as:)();
    (*(v24 + 8))(v21, v25);
  }

  return v18;
}

uint64_t sub_100314F8C(Swift::UInt64 a1)
{
  v26 = a1;
  v2 = type metadata accessor for TightbeamDecoder();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v27 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v1)
  {
    v16 = v28;
    type metadata accessor for TransportError();
    v18 = v17;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v19 = v16;
  }

  else
  {
    v15 = *(v27 + 32);
    v27 += 32;
    v15(v12, v14, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x1FD23A08A59E572EuLL);
    TightbeamEncoder.encode(_:)(v26);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v15(v12, v9, v5);
    v21 = v23;
    TightbeamDecoder.init(message:)();
    v18 = TightbeamDecoder.decode(as:)();
    (*(v24 + 8))(v21, v25);
  }

  return v18 & 1;
}

uint64_t sub_1003152C8(int a1)
{
  v26 = a1;
  v2 = type metadata accessor for TightbeamDecoder();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v25 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v1)
  {
    v16 = v27;
    type metadata accessor for TransportError();
    v18 = v17;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v19 = v16;
  }

  else
  {
    v15 = *(v25 + 32);
    v25 += 32;
    v15(v12, v14, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xFF3ED4CFB31F2EB2);
    TightbeamEncoder.encode(_:)(v26);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v15(v12, v9, v5);
    v21 = v22;
    TightbeamDecoder.init(message:)();
    v18 = TightbeamDecoder.decode(as:)();
    (*(v23 + 8))(v21, v24);
  }

  return v18;
}

uint64_t sub_100315604()
{
  v0 = type metadata accessor for TightbeamDecoder();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TightbeamMessage();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = v24;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    v17 = v16;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v18 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x31F3DFE67868C8DuLL);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v24(v11, v8, v3);
    v20 = v21;
    TightbeamDecoder.init(message:)();
    v17 = TightbeamDecoder.decode(as:)();
    (*(v22 + 8))(v20, v23);
  }

  return v17;
}

uint64_t sub_100315950()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1003159D4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v155 = a2;
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v5 = __chkstk_darwin(v4 - 8);
  v151 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v144 - v8;
  v10 = __chkstk_darwin(v7);
  v150 = &v144 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v144 - v13;
  v15 = __chkstk_darwin(v12);
  v149 = &v144 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v144 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v144 - v21;
  v23 = __chkstk_darwin(v20);
  v148 = &v144 - v24;
  v25 = __chkstk_darwin(v23);
  v147 = &v144 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v144 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v144 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v144 - v34;
  v36 = __chkstk_darwin(v33);
  v144 = &v144 - v37;
  v38 = __chkstk_darwin(v36);
  v146 = &v144 - v39;
  v40 = __chkstk_darwin(v38);
  v145 = &v144 - v41;
  __chkstk_darwin(v40);
  v43 = &v144 - v42;
  v44 = type metadata accessor for TightbeamEncoder();
  v156 = *(v44 - 8);
  v157 = v43;
  v45 = *(v156 + 56);
  v161 = v44;
  v152 = v45;
  v153 = v156 + 56;
  (v45)(v43, 1, 1);
  v159 = a1;
  v46 = TightbeamDecoder.decode(as:)();
  v47 = v46;
  if (v46 <= 0x31F3DFE67868C8CLL)
  {
    if (v46 <= 0xC7498AF17471E692)
    {
      v48 = v157;
      v49 = v161;
      if (v46 != 0xA336D5BF2102DE71)
      {
        v69 = v161;
        if (v46 == 0xA9650CE9B29F447FLL)
        {
          v70 = v157;
          v71 = v158[6];
          v72 = v158[7];
          sub_10000D9B8(v158 + 3, v71);
          v73 = (*(v72 + 72))(v71, v72);
          v75 = v74;
          v76 = v22;
          v77 = v160;
          _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
          if (!v77)
          {
            v160 = 0;
            v152(v22, 0, 1, v69);
            v55 = *(v156 + 48);
            v135 = v70;
            v49 = v69;
            if (v55(v135, 1, v69) != 1)
            {
              sub_1003188C4(v135);
            }

            sub_10031892C(v76, v135);
            if (!v55(v135, 1, v69))
            {
              TightbeamEncoder.encode(_:)(v73);
              TightbeamEncoder.encode(_:)(v75);
            }

            v48 = v135;
            goto LABEL_97;
          }

          v67 = v162;
          v78 = *(v156 + 48);
          v48 = v70;
          v79 = v70;
        }

        else
        {
          if (v46 != 0xBC40CFF1A461D781)
          {
            goto LABEL_104;
          }

          v107 = v158[6];
          v108 = v158[7];
          sub_10000D9B8(v158 + 3, v107);
          (*(v108 + 32))(v107, v108);
          v109 = v160;
          _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
          if (!v109)
          {
            v160 = 0;
            v152(v35, 0, 1, v49);
            v55 = *(v156 + 48);
            if (v55(v48, 1, v49) != 1)
            {
              sub_1003188C4(v48);
            }

            sub_10031892C(v35, v48);
            goto LABEL_97;
          }

          v67 = v162;
          v78 = *(v156 + 48);
          v79 = v48;
        }

        v110 = v69;
LABEL_62:
        result = v78(v79, 1, v110);
        goto LABEL_63;
      }

      v102 = v158[6];
      v103 = v158[7];
      sub_10000D9B8(v158 + 3, v102);
      v104 = (*(v103 + 96))(v102, v103);
      v105 = v160;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v105)
      {
        v160 = 0;
        v152(v14, 0, 1, v49);
        v55 = *(v156 + 48);
        if (v55(v48, 1, v49) != 1)
        {
          sub_1003188C4(v48);
        }

        v106 = v14;
        goto LABEL_70;
      }

      goto LABEL_61;
    }

    v57 = v161;
    if (v46 > 0xF68AD8D4317D2BDALL)
    {
      if (v46 == 0xF68AD8D4317D2BDBLL)
      {
        v81 = v158[6];
        v80 = v158[7];
        sub_10000D9B8(v158 + 3, v81);
        v82 = TightbeamDecoder.decode(as:)();
        v83 = (*(v80 + 48))(v82 & 1, v81, v80);
        v84 = v160;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v84)
        {
          v160 = 0;
          v49 = v57;
          v152(v29, 0, 1, v57);
          v48 = v157;
          v55 = *(v156 + 48);
          if (v55(v157, 1, v57) != 1)
          {
            sub_1003188C4(v48);
          }

          sub_10031892C(v29, v48);
          if (v55(v48, 1, v57))
          {
            goto LABEL_97;
          }

          v130 = v83 & 1;
LABEL_81:
          TightbeamEncoder.encode(_:)(v130);
LABEL_97:
          v139 = (v55)(v48, 1, v49);
          v140 = v139;
          if (v139 == 1)
          {
            v141 = v154;
          }

          else
          {
            v141 = v154;
            if (v139)
            {
              sub_1003188C4(v48);
              v140 = 1;
            }

            else
            {
              TightbeamEncoder.complete()();
            }
          }

          v142 = type metadata accessor for TightbeamMessage();
          return (*(*(v142 - 8) + 56))(v141, v140, 1, v142);
        }

        goto LABEL_25;
      }

      v48 = v157;
      if (v46 != 0xFF3ED4CFB31F2EB2)
      {
        goto LABEL_104;
      }

      v117 = v158[6];
      v118 = v158[7];
      sub_10000D9B8(v158 + 3, v117);
      v119 = TightbeamDecoder.decode(as:)();
      v52 = (*(v118 + 112))(v119, v117, v118);
      v53 = v9;
      v120 = v160;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v120)
      {
        v160 = 0;
        v138 = v9;
        v49 = v57;
        v152(v138, 0, 1, v57);
        v55 = *(v156 + 48);
        v56 = v55(v48, 1, v57);
        goto LABEL_93;
      }
    }

    else
    {
      if (v46 == 0xC7498AF17471E693)
      {
        v58 = v158[6];
        v59 = v158[7];
        sub_10000D9B8(v158 + 3, v58);
        v60 = (*(v59 + 40))(v58, v59);
        v61 = v32;
        v62 = v160;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v62)
        {
          v160 = 0;
          v49 = v57;
          v152(v32, 0, 1, v57);
          v48 = v157;
          v55 = *(v156 + 48);
          if (v55(v157, 1, v57) != 1)
          {
            sub_1003188C4(v48);
          }

          sub_10031892C(v61, v48);
          if (!v55(v48, 1, v57))
          {
            TightbeamEncoder.encode(_:)(v60);
          }

          goto LABEL_97;
        }

LABEL_25:
        v67 = v162;
        v85 = v156;
        v48 = v157;
LABEL_46:
        result = (*(v85 + 48))(v48, 1, v57);
        goto LABEL_63;
      }

      v48 = v157;
      if (v46 != 0xE0C4AD75FE620B62)
      {
        goto LABEL_104;
      }

      v111 = v158[6];
      v112 = v158[7];
      sub_10000D9B8(v158 + 3, v111);
      v113 = TightbeamDecoder.decode(as:)();
      v104 = (*(v112 + 80))(v113, v111, v112);
      v114 = v19;
      v115 = v160;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v115)
      {
        v160 = 0;
        v49 = v57;
        v152(v19, 0, 1, v57);
        v55 = *(v156 + 48);
        v116 = v55(v48, 1, v57);
LABEL_67:
        if (v116 != 1)
        {
          sub_1003188C4(v48);
        }

        v106 = v114;
LABEL_70:
        sub_10031892C(v106, v48);
        if (!v55(v48, 1, v49))
        {
          TightbeamEncoder.encode(_:)(v104);
        }

        goto LABEL_97;
      }
    }

    v67 = v162;
    v85 = v156;
    goto LABEL_46;
  }

  if (v46 <= 0x32B3991E6CE47130)
  {
    v48 = v157;
    if (v46 <= 0x1FD23A08A59E572DLL)
    {
      v49 = v161;
      if (v46 == 0x31F3DFE67868C8DLL)
      {
        v50 = v158[6];
        v51 = v158[7];
        sub_10000D9B8(v158 + 3, v50);
        v52 = (*(v51 + 120))(v50, v51);
        v53 = v151;
        v54 = v160;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v54)
        {
          v160 = 0;
          v152(v53, 0, 1, v49);
          v55 = *(v156 + 48);
          v56 = v55(v48, 1, v49);
LABEL_93:
          if (v56 != 1)
          {
            sub_1003188C4(v48);
          }

          sub_10031892C(v53, v48);
          if (!v55(v48, 1, v49))
          {
            TightbeamEncoder.encode(_:)(v52);
          }

          goto LABEL_97;
        }

        goto LABEL_61;
      }

      if (v46 == 0x404B81785DEE86ELL)
      {
        v121 = v158[6];
        v122 = v158[7];
        sub_10000D9B8(v158 + 3, v121);
        v123 = TightbeamDecoder.decode(as:)();
        v104 = (*(v122 + 88))(v123, v121, v122);
        v114 = v149;
LABEL_60:
        v134 = v160;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (v134)
        {
          goto LABEL_61;
        }

        v160 = 0;
        v152(v114, 0, 1, v49);
        v55 = *(v156 + 48);
        v116 = v55(v48, 1, v49);
        goto LABEL_67;
      }

      goto LABEL_104;
    }

    v49 = v161;
    if (v46 == 0x1FD23A08A59E572ELL)
    {
      v86 = v158[6];
      v87 = v158[7];
      sub_10000D9B8(v158 + 3, v86);
      v88 = TightbeamDecoder.decode(as:)();
      v89 = (*(v87 + 104))(v88, v86, v87);
      v90 = v150;
    }

    else
    {
      if (v46 != 0x246C8AC0C407EFA8)
      {
        goto LABEL_104;
      }

      v126 = v158[6];
      v127 = v158[7];
      sub_10000D9B8(v158 + 3, v126);
      v128 = TightbeamDecoder.decode(as:)();
      v89 = (*(v127 + 56))(v128 & 1, v126, v127);
      v90 = v147;
    }

    v129 = v160;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (!v129)
    {
      v160 = 0;
      v152(v90, 0, 1, v49);
      v55 = *(v156 + 48);
      if (v55(v48, 1, v49) != 1)
      {
        sub_1003188C4(v48);
      }

      sub_10031892C(v90, v48);
      if (v55(v48, 1, v49))
      {
        goto LABEL_97;
      }

      v130 = v89 & 1;
      goto LABEL_81;
    }

LABEL_61:
    v67 = v162;
    v78 = *(v156 + 48);
    v79 = v48;
    v110 = v49;
    goto LABEL_62;
  }

  if (v46 > 0x3545A80215C54632)
  {
    if (v46 != 0x3545A80215C54633)
    {
      v48 = v157;
      v49 = v161;
      if (v46 == 0x50CEDDD6FEFEC9C4)
      {
        v131 = v158[6];
        v132 = v158[7];
        sub_10000D9B8(v158 + 3, v131);
        v133 = TightbeamDecoder.decode(as:)();
        v104 = (*(v132 + 8))(v133, v131, v132);
        v114 = v145;
        goto LABEL_60;
      }

      goto LABEL_104;
    }

    v91 = v158[6];
    v92 = v158[7];
    sub_10000D9B8(v158 + 3, v91);
    v158 = TightbeamDecoder.decode(as:)();
    v93 = TightbeamDecoder.decode(as:)();
    v94 = TightbeamDecoder.decode(as:)();
    v95 = TightbeamDecoder.decode(as:)();
    v96 = TightbeamDecoder.decode(as:)();
    v97 = TightbeamDecoder.decode(as:)();
    v98 = (*(v92 + 16))(v158, v93, v94 | (v95 << 8) | (v96 << 16) | (v97 << 24), v91, v92);
    v99 = v146;
    v100 = v160;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (!v100)
    {
      v160 = 0;
      v137 = v161;
      v152(v99, 0, 1, v161);
      v48 = v157;
      v55 = *(v156 + 48);
      if (v55(v157, 1, v137) != 1)
      {
        sub_1003188C4(v48);
      }

      sub_10031892C(v99, v48);
      v49 = v137;
      if (!v55(v48, 1, v137))
      {
        TightbeamEncoder.encode(_:)(v98);
      }

      goto LABEL_97;
    }

    v67 = v162;
    v68 = v156;
    v48 = v157;
  }

  else
  {
    if (v46 != 0x32B3991E6CE47131)
    {
      v48 = v157;
      v49 = v161;
      if (v46 == 0x32CDF0B3FD13DCEFLL)
      {
        v124 = v158[6];
        v125 = v158[7];
        sub_10000D9B8(v158 + 3, v124);
        v104 = (*(v125 + 64))(v124, v125);
        v114 = v148;
        goto LABEL_60;
      }

LABEL_104:
      v163 = 0;
      v164 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v163 = 0xD00000000000002DLL;
      v164 = 0x80000001003B0D80;
      v165 = v47;
      v143._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v143);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v63 = v158[6];
    v64 = v158[7];
    sub_10000D9B8(v158 + 3, v63);
    (*(v64 + 24))(v63, v64);
    v65 = v144;
    v66 = v160;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    v48 = v157;
    if (!v66)
    {
      v160 = 0;
      v136 = v161;
      v152(v65, 0, 1, v161);
      v55 = *(v156 + 48);
      if (v55(v48, 1, v136) != 1)
      {
        sub_1003188C4(v48);
      }

      sub_10031892C(v65, v48);
      v49 = v161;
      goto LABEL_97;
    }

    v67 = v162;
    v68 = v156;
  }

  result = (*(v68 + 48))(v48, 1, v161);
LABEL_63:
  if (result != 1)
  {
    result = sub_1003188C4(v48);
  }

  *v155 = v67;
  return result;
}

uint64_t sub_100316D0C()
{

  sub_100002580((v0 + 24));
  return v0;
}

uint64_t sub_100316D64(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v7 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v6 + 16) = v7;
  return v6;
}

uint64_t sub_100316E88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v7 = ClientConnection.init(endpoint:)();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_100316FA0(Swift::UInt64 a1)
{
  v16 = a1;
  v2 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TightbeamMessage();
  v17 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - v9;
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v1)
  {
    v13 = v18;
    type metadata accessor for TransportError();
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    result = swift_allocError();
    *v15 = v13;
  }

  else
  {
    (*(v17 + 32))(v10, v12, v3);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x7F1459E11F2AC8CBuLL);
    TightbeamEncoder.encode(_:)(v16);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    return (*(v17 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_10031727C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v9 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_1003173C0(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = type metadata accessor for TightbeamEndpoint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_10000D9FC(a2, v12 + 24);
  (*(v9 + 16))(v11, a1, v8);
  sub_100024A2C(a3, a4);
  swift_allocObject();
  *(v12 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v9 + 8))(a1, v8);
  return v12;
}

uint64_t sub_100317538(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for TightbeamEndpoint();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D9FC(a2, v7 + 24);
  (*(v11 + 16))(v13, a1, v10);
  sub_100024A2C(a3, a4);
  swift_allocObject();
  *(v7 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v11 + 8))(a1, v10);
  return v7;
}

uint64_t sub_100317688@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = v2;
  v44 = a2;
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v42 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for TightbeamEncoder();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v47 = v16;
  v48 = v15;
  v43 = v18;
  (v18)(v15, 1, 1);
  v19 = TightbeamDecoder.decode(as:)();
  if (v19 == 0xF36AAD1A335EC889)
  {
    v27 = v3[6];
    v28 = v3[7];
    sub_10000D9B8(v3 + 3, v27);
    (*(v28 + 16))(v27, v28);
    v29 = v46;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (v29)
    {
      goto LABEL_14;
    }

    v24 = v47;
    v43(v10, 0, 1, v47);
    v25 = *(v17 + 48);
    v26 = v48;
    v13 = v10;
    if (v25(v48, 1, v24) == 1)
    {
LABEL_9:
      sub_10031892C(v13, v26);
      v30 = v25(v26, 1, v24);
      v31 = v30;
      if (v30 == 1)
      {
        v32 = v44;
      }

      else
      {
        v32 = v44;
        if (v30)
        {
          sub_1003188C4(v26);
          v31 = 1;
        }

        else
        {
          TightbeamEncoder.complete()();
        }
      }

      v40 = type metadata accessor for TightbeamMessage();
      return (*(*(v40 - 8) + 56))(v32, v31, 1, v40);
    }

LABEL_8:
    sub_1003188C4(v26);
    goto LABEL_9;
  }

  v20 = v19;
  if (v19 != 0x712657D6300C16CELL)
  {
    if (v19 != 0x7F1459E11F2AC8CBLL)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v50 = 0xD00000000000002ELL;
      v51 = 0x80000001003B0D50;
      v52 = v20;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v33 = v3[6];
    v34 = v3[7];
    sub_10000D9B8(v3 + 3, v33);
    v35 = TightbeamDecoder.decode(as:)();
    (*(v34 + 8))(v35, v33, v34);
    v36 = v46;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (v36)
    {
      goto LABEL_14;
    }

    v24 = v47;
    v43(v13, 0, 1, v47);
    v25 = *(v17 + 48);
    v26 = v48;
    if (v25(v48, 1, v24) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v21 = v3[6];
  v22 = v3[7];
  sub_10000D9B8(v3 + 3, v21);
  (*(v22 + 24))(v21, v22);
  v23 = v46;
  _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
  if (!v23)
  {
    v24 = v47;
    v43(v7, 0, 1, v47);
    v25 = *(v17 + 48);
    v26 = v48;
    v13 = v7;
    if (v25(v48, 1, v24) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  v37 = v49;
  v38 = v48;
  result = (*(v17 + 48))(v48, 1, v47);
  if (result != 1)
  {
    result = sub_1003188C4(v38);
  }

  *v45 = v37;
  return result;
}

uint64_t sub_100317BD8()
{

  sub_100002580((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100317C44(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *, uint64_t, uint64_t))
{
  result = a5(a1, &v8, a3, a4);
  if (v5)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100317C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v17[2] = a2;
  v5 = a5;
  v17[1] = a1;
  v8 = a5 >> 8;
  v9 = HIWORD(a5);
  v10 = HIBYTE(a5);
  v11 = type metadata accessor for TightbeamMessage.BufferUsage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for TightbeamMessage.BufferUsage.writing(_:), v11);
  v17[6] = a3;
  v17[7] = a4;
  v18 = v5;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
  v15 = v17[3];
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  if (!v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 8))(v14, v11);
  return v22;
}

uint64_t sub_100317E80(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unsigned int a4)
{
  v4 = a4;
  v7 = a4 >> 8;
  v8 = HIWORD(a4);
  v9 = HIBYTE(a4);
  v10 = type metadata accessor for TightbeamEncoder();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(a2);
  TightbeamEncoder.encode(_:)(a3);
  TightbeamEncoder.encode(_:)(v4);
  TightbeamEncoder.encode(_:)(v7);
  TightbeamEncoder.encode(_:)(v8);
  TightbeamEncoder.encode(_:)(v9);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100317FA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TightbeamMessage.BufferUsage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for TightbeamMessage.BufferUsage.reading(_:), v3);
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  (*(v4 + 8))(v6, v3);
  if (v2)
  {
    return v9;
  }

  else
  {
    return v8[1];
  }
}