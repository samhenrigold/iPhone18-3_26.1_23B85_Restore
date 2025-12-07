uint64_t sub_1001DE568(uint64_t a1)
{
  v2 = v1;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v3 = sub_1004A4A74();
  sub_1001C203C(v3, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v4 = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 68158210;
    *(v6 + 4) = 2;
    *(v6 + 8) = 256;
    *(v6 + 10) = sub_1001DA630(v7);

    *(v6 + 11) = 2082;
    v9 = sub_1001DA630(v8);
    v10 = ConnectionID.debugDescription.getter(HIDWORD(v9));
    v12 = sub_10015BA6C(v10, v11, v23);

    *(v6 + 13) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%.*hhx-%{public}s] Enabling RFC 4978 compression.", v6, 0x15u);
    sub_1000197E0(v7);
  }

  else
  {
  }

  type metadata accessor for Deflate.Compressor();
  v13 = swift_allocObject();
  type metadata accessor for Deflate.Stream();
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0;
  *(v14 + 16) = 0u;
  swift_beginAccess();
  v15 = deflateInit2_((v14 + 16), 1, 8, -15, 8, 4, "1.2.12", 112);
  swift_endAccess();
  if (v15)
  {
    sub_1001D3CA0();
    swift_allocError();
    *v21 = "deflateInit2";
    *(v21 + 8) = 12;
    *(v21 + 16) = 2;
    *(v21 + 20) = v15;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v14;
    *(v13 + 24) = 0;
    type metadata accessor for Deflate.Decompressor();
    v16 = swift_allocObject();
    v17 = swift_allocObject();
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 128) = 1;
    swift_beginAccess();
    v15 = inflateInit2_((v17 + 16), -15, "1.2.12", 112);
    swift_endAccess();
    if (!v15)
    {
      *(v16 + 16) = v17;
      v18 = *(v2 + 248);
      v19 = *(v2 + 256);
      *(v2 + 248) = v13;
      *(v2 + 256) = v16;
      return sub_1001E2A48(v18, v19);
    }
  }

  sub_1001D3CA0();
  swift_allocError();
  *v22 = "inflateInit2";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  *(v22 + 20) = v15;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1001DE910(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v65 = HIDWORD(a1);
  v66 = a3;
  v6 = type metadata accessor for HandshakeReply.Encoded(0);
  __chkstk_darwin(v6 - 8);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionCommand(0);
  __chkstk_darwin(v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v20 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E2B98(a2, v22, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001E2B30(v22, v19, type metadata accessor for ClientCommand);
    sub_1001E2B98(v19, v16, type metadata accessor for ClientCommand);
    v30 = v68;
    v31 = v68[242];
    v32 = v68[243];
    v33 = v68[244];
    *v13 = a1;
    *(v13 + 1) = v65;
    if (v33)
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    if (v32)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    ClientCommand.encode(tag:options:)(a1 & 0xFFFFFFFF000000FFLL, v35 | v31 | v34, &v13[*(v8 + 20)]);
    sub_1001E2C1C(v16, type metadata accessor for ClientCommand);
    v36 = swift_beginAccess();
    if (*(v30 + 28))
    {
      sub_1001B6464();
      swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1001E2C1C(v19, type metadata accessor for ClientCommand);
      v37 = type metadata accessor for ConnectionCommand;
      v38 = v13;
LABEL_18:
      sub_1001E2C1C(v38, v37);
      goto LABEL_19;
    }

    v53 = __chkstk_darwin(v36);
    *(&v63 - 2) = v13;
    v54 = sub_1001B4BE8(sub_1001E299C, v53);
    swift_endAccess();
    sub_1001E2C1C(v19, type metadata accessor for ClientCommand);
    v55 = type metadata accessor for ConnectionCommand;
    v56 = v13;
LABEL_34:
    sub_1001E2C1C(v56, v55);
    return v54;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = *v22;
    v25 = *(v22 + 1);
    v26 = v22[16];
    sub_100193D28(*v22, v25, v26);
    v27 = v64;
    sub_1001DFBA8(v24, v25, v26, a1 & 0xFFFFFFFF000000FFLL, v64);
    v28 = v68;
    v29 = swift_beginAccess();
    if (!*(v28 + 28))
    {
      sub_1001E2948();
      goto LABEL_17;
    }

    if (*(*(v28 + 26) + 16))
    {
      sub_1001E28EC();
LABEL_17:
      swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_10018E150(v24, v25, v26);
      v37 = type metadata accessor for HandshakeReply.Encoded;
      v38 = v27;
      goto LABEL_18;
    }

    v62 = __chkstk_darwin(v29);
    *(&v63 - 2) = v27;
    v54 = sub_1001B4BE8(sub_1001E2940, v62);
    swift_endAccess();
    sub_10018E150(v24, v25, v26);
    v55 = type metadata accessor for HandshakeReply.Encoded;
    v56 = v27;
    goto LABEL_34;
  }

  v39 = v68;
  swift_beginAccess();
  if (!*(v39 + 28))
  {
    v57 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
    if (v57[2])
    {
      v58 = 0x10000;
    }

    else
    {
      v58 = 0;
    }

    if (v57[1])
    {
      v59 = 256;
    }

    else
    {
      v59 = 0;
    }

    v60 = ClientCommandEncoder.idle(tag:)(a1 & 0xFFFFFFFF000000FFLL, v59 | *v57 | v58, &v10[*(v8 + 20)]);
    *v10 = a1;
    *(v10 + 1) = v65;
    v61 = __chkstk_darwin(v60);
    *(&v63 - 2) = v10;
    v54 = sub_1001B4BE8(sub_1001E28E4, v61);
    sub_1001E2C1C(v10, type metadata accessor for ConnectionCommand);
    swift_endAccess();
    return v54;
  }

  sub_1001B6464();
  swift_allocError();
  swift_willThrow();
  swift_endAccess();
LABEL_19:
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v40 = sub_1004A4A74();
  sub_1001C203C(v40, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v41 = sub_1004A4A54();
  v42 = sub_1004A6014();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67[0] = v45;
    *v43 = 68158466;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    *(v43 + 10) = sub_1001DA630(v45);

    *(v43 + 11) = 2082;
    v47 = sub_1001DA630(v46);
    v48 = ConnectionID.debugDescription.getter(HIDWORD(v47));
    v50 = sub_10015BA6C(v48, v49, v67);

    *(v43 + 13) = v50;
    *(v43 + 21) = 2112;
    v51 = sub_1004A4264();
    *(v43 + 23) = v51;
    *v44 = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx-%{public}s] Unable to append command to output buffer. Invalid state. %@", v43, 0x1Fu);
    sub_100025F40(v44, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v45);
  }

  else
  {
  }

  return swift_willThrow();
}

void sub_1001DF100(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v102 = a1;
  v103 = _s11CompressionO12OutgoingDataVMa(0);
  __chkstk_darwin(v103);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v97 - v8;
  __chkstk_darwin(v10);
  v12 = &v97 - v11;
  __chkstk_darwin(v13);
  v15 = &v97 - v14;
  swift_beginAccess();
  v16 = *(v2 + 224);
  v106[0] = *(v2 + 208);
  v106[1] = v16;
  v107 = *(v2 + 240);

  v17 = sub_1001B435C();
  sub_1001E2890(v106);
  v18 = *(v2 + 248);
  v19 = *(v3 + 256);

  sub_1001E2A08(v18, v19);
  v20 = v104;
  sub_1001E3534(v18, v3, a2);
  sub_1001E2A48(v18, v19);
  if (v20)
  {
    return;
  }

  v100 = v15;
  v101 = v12;
  v104 = v9;
  sub_1004A5384();
  sub_1001E2D90(&qword_1005D3650, 255, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
  sub_1004A5E64();
  sub_1004A5EA4();
  v21 = v103;
  if (v108 == v105)
  {
    return;
  }

  v22 = a2;
  v23 = a2 + v103[7];
  if (v23[8])
  {
    return;
  }

  v24 = *v23;
  v25 = v22 + v103[8];
  v26 = *v25;
  v27 = *(v25 + 8);
  if (*(v22 + v103[5]) != v17)
  {
    v99 = 0;
    if (v27)
    {
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v45 = sub_1004A4A74();
      sub_1001C203C(v45, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v6 = v104;
      sub_1001E2B98(v22, v104, _s11CompressionO12OutgoingDataVMa);
      v46 = sub_1004A4A54();
      v47 = sub_1004A6004();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_25;
      }

      v48 = swift_slowAlloc();
      v49 = v24;
      v50 = swift_slowAlloc();
      v108 = v50;
      *v48 = 68158722;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      *(v48 + 10) = sub_1001DA630(v50);

      *(v48 + 11) = 2082;
      v52 = sub_1001DA630(v51);
      v53 = ConnectionID.debugDescription.getter(HIDWORD(v52));
      v55 = v21;
      v56 = sub_10015BA6C(v53, v54, &v108);

      *(v48 + 13) = v56;
      *(v48 + 21) = 2048;
      v57 = *&v6[v55[5]];
      sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);
      *(v48 + 23) = v57;
      *(v48 + 31) = 2082;
      v58 = Tag.debugDescription.getter(v49 & 0xFFFFFFFF000000FFLL);
      v60 = sub_10015BA6C(v58, v59, &v108);

      *(v48 + 33) = v60;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tag %{public}s).", v48, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      v104 = v26;
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v78 = sub_1004A4A74();
      sub_1001C203C(v78, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001E2B98(v22, v6, _s11CompressionO12OutgoingDataVMa);
      v46 = sub_1004A4A54();
      v79 = sub_1004A6004();
      if (!os_log_type_enabled(v46, v79))
      {
        goto LABEL_25;
      }

      v80 = swift_slowAlloc();
      v81 = v6;
      v82 = swift_slowAlloc();
      v108 = v82;
      *v80 = 68158978;
      *(v80 + 4) = 2;
      *(v80 + 8) = 256;
      *(v80 + 10) = sub_1001DA630(v82);

      *(v80 + 11) = 2082;
      v84 = sub_1001DA630(v83);
      v85 = ConnectionID.debugDescription.getter(HIDWORD(v84));
      v87 = v24;
      v88 = v21;
      v89 = sub_10015BA6C(v85, v86, &v108);

      *(v80 + 13) = v89;
      *(v80 + 21) = 2048;
      v90 = *(v81 + v88[5]);
      sub_1001E2C1C(v81, _s11CompressionO12OutgoingDataVMa);
      *(v80 + 23) = v90;
      *(v80 + 31) = 2082;
      v91 = Tag.debugDescription.getter(v87 & 0xFFFFFFFF000000FFLL);
      v93 = sub_10015BA6C(v91, v92, &v108);

      *(v80 + 33) = v93;
      *(v80 + 41) = 2082;
      v94 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
      v96 = sub_10015BA6C(v94, v95, &v108);

      *(v80 + 43) = v96;
      _os_log_impl(&_mh_execute_header, v46, v79, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tags %{public}s - %{public}s).", v80, 0x33u);
      swift_arrayDestroy();
    }

    goto LABEL_24;
  }

  if ((*(v25 + 8) & 1) == 0)
  {
    v98 = v24;
    v99 = 0;
    v104 = v26;
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v61 = sub_1004A4A74();
    sub_1001C203C(v61, qword_1005D4680);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v6 = v101;
    sub_1001E2B98(v22, v101, _s11CompressionO12OutgoingDataVMa);
    v46 = sub_1004A4A54();
    v62 = sub_1004A6004();
    if (os_log_type_enabled(v46, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v108 = v64;
      *v63 = 68159234;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      *(v63 + 10) = sub_1001DA630(v64);

      *(v63 + 11) = 2082;
      v66 = sub_1001DA630(v65);
      v67 = ConnectionID.debugDescription.getter(HIDWORD(v66));
      v69 = v21;
      v70 = sub_10015BA6C(v67, v68, &v108);

      *(v63 + 13) = v70;
      *(v63 + 21) = 2048;
      v71 = *&v6[v69[5]];
      sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);
      *(v63 + 23) = v71;
      *(v63 + 31) = 2048;
      *(v63 + 33) = v17;
      *(v63 + 41) = 2082;
      v72 = Tag.debugDescription.getter(v98 & 0xFFFFFFFF000000FFLL);
      v74 = sub_10015BA6C(v72, v73, &v108);

      *(v63 + 43) = v74;
      *(v63 + 51) = 2082;
      v75 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
      v77 = sub_10015BA6C(v75, v76, &v108);

      *(v63 + 53) = v77;
      _os_log_impl(&_mh_execute_header, v46, v62, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tags %{public}s - %{public}s).", v63, 0x3Du);
      swift_arrayDestroy();

LABEL_24:

      return;
    }

LABEL_25:
    sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);

    return;
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v28 = sub_1004A4A74();
  sub_1001C203C(v28, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v29 = v100;
  sub_1001E2B98(v22, v100, _s11CompressionO12OutgoingDataVMa);
  v30 = sub_1004A4A54();
  v31 = sub_1004A6004();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v98 = v24;
    v33 = v32;
    v34 = swift_slowAlloc();
    v104 = v34;
    v108 = v34;
    *v33 = 68158978;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    *(v33 + 10) = sub_1001DA630(v34);

    *(v33 + 11) = 2082;
    v36 = sub_1001DA630(v35);
    v37 = ConnectionID.debugDescription.getter(HIDWORD(v36));
    v39 = v21;
    v40 = sub_10015BA6C(v37, v38, &v108);

    *(v33 + 13) = v40;
    *(v33 + 21) = 2048;
    v41 = *(v29 + v39[5]);
    sub_1001E2C1C(v29, _s11CompressionO12OutgoingDataVMa);
    *(v33 + 23) = v41;
    *(v33 + 31) = 2048;
    *(v33 + 33) = v17;
    *(v33 + 41) = 2082;
    v42 = Tag.debugDescription.getter(v98 & 0xFFFFFFFF000000FFLL);
    v44 = sub_10015BA6C(v42, v43, &v108);

    *(v33 + 43) = v44;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tag %{public}s).", v33, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001E2C1C(v29, _s11CompressionO12OutgoingDataVMa);
  }
}

uint64_t sub_1001DFBA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1004A5384();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  if (a3)
  {
    v57 = sub_1004A4384();
    v58 = v14;
    v15 = sub_1001E194C(&off_1005A3DF0);
    v17 = v16;
    v55 = &type metadata for Data;
    v56 = &protocol witness table for Data;
    *&v53 = v15;
    *(&v53 + 1) = v16;
    v18 = sub_10002587C(&v53, &type metadata for Data);
    v19 = *v18;
    v20 = v18[1];
    sub_100014CEC(v15, v17);
    sub_1001E153C(v19, v20, &v57);
    sub_100014D40(v15, v17);
    sub_1000197E0(&v53);
    v21 = v57;
    v22 = v58;
    v23 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v23 != 2)
      {
        *(&v53 + 6) = 0;
        *&v53 = 0;
        goto LABEL_54;
      }

      v50 = v10;
      v51 = a5;
      v44 = *(v57 + 16);
      v45 = *(v57 + 24);
      if (sub_1004A40D4() && __OFSUB__(v44, sub_1004A4104()))
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v45, v44))
      {
        goto LABEL_60;
      }

      sub_1004A40F4();
      sub_1004A5324();
      sub_10018E150(v52, a2, 1);
      a5 = v51;
    }

    else
    {
      if (!v23)
      {
        *&v53 = v57;
        DWORD2(v53) = v58;
        WORD6(v53) = WORD2(v58);
LABEL_54:
        sub_1004A5324();
        sub_10018E150(v52, a2, 1);
        goto LABEL_55;
      }

      v50 = v10;
      v51 = a5;
      if (v57 >> 32 < v57)
      {
        goto LABEL_59;
      }

      if (sub_1004A40D4() && __OFSUB__(v21, sub_1004A4104()))
      {
        goto LABEL_62;
      }

      a5 = v51;
      sub_1004A40F4();
      sub_1004A5324();
      sub_10018E150(v52, a2, 1);
    }

    v10 = v50;
LABEL_55:
    sub_100014D40(v21, v22);
    goto LABEL_56;
  }

  v50 = v10;
  v51 = a5;
  v24 = HIBYTE(a2) & 0xF;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v54 = 0;
  v55 = v24;

  v25 = sub_1004A59D4();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = _swiftEmptyArrayStorage;
    v49 = a4;
    do
    {
      while (1)
      {
        if ((v27 != 2573 || v28 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
        {
          if ((v28 & 0x2000000000000000) != 0)
          {
            v31 = HIBYTE(v28) & 0xF;
          }

          else
          {
            v31 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
          }

          if ((v28 & 0x1000000000000000) != 0)
          {
            v36 = sub_1004A5884();
          }

          else
          {
            if ((v28 & 0x2000000000000000) != 0)
            {
              v33 = v27;
            }

            else
            {
              v32 = ((v27 & 0x1000000000000000) != 0 ? (v28 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
              v33 = *v32;
            }

            v34 = v33;
            v35 = (__clz(~v33) - 24) << 16;
            v36 = v34 < 0 ? v35 : 65541;
          }

          if (v36 >> 14 == 4 * v31)
          {
            v37 = sub_1001E11BC(v27, v28);
            if ((v37 & 0x100000000) != 0)
            {
              goto LABEL_63;
            }

            if ((v37 & 0xFFFFFF80) == 0)
            {
              break;
            }
          }
        }

LABEL_10:
        v27 = sub_1004A59D4();
        v28 = v30;
        if (!v30)
        {
          a4 = v49;
          goto LABEL_47;
        }
      }

      v38 = sub_1001E11BC(v27, v28);
      if ((v38 & 0x100000000) != 0)
      {
        goto LABEL_64;
      }

      v39 = v38;

      if ((v39 & 0xFFFFFF00) != 0)
      {
        goto LABEL_58;
      }

      v40 = v39;
      if (v39 - 127 < 0xFFFFFFA1)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10015BF20(0, *(v29 + 2) + 1, 1, v29);
      }

      v42 = *(v29 + 2);
      v41 = *(v29 + 3);
      if (v42 >= v41 >> 1)
      {
        v29 = sub_10015BF20((v41 > 1), v42 + 1, 1, v29);
      }

      *(v29 + 2) = v42 + 1;
      v29[v42 + 32] = v40;
      v27 = sub_1004A59D4();
      v28 = v43;
      a4 = v49;
    }

    while (v43);
  }

LABEL_47:

  sub_1004A5324();
  sub_10018E150(v52, a2, 0);

  v10 = v50;
  a5 = v51;
LABEL_56:
  (*(v11 + 32))(a5, v13, v10);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v47 = a5 + *(result + 20);
  *v47 = a4;
  *(v47 + 4) = HIDWORD(a4);
  return result;
}

uint64_t *sub_1001E0180@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1001E1794(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1004A4114();
      swift_allocObject();
      v8 = sub_1004A40C4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1004A43C4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1001E0248@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
    result = sub_1004A5AD4();
    *(a4 + v11) = result;
  }

  else
  {
    v13 = *(sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
    result = sub_1004A5AD4();
    *(a4 + v13) = result;
  }

  return result;
}

char *sub_1001E0434(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100014D40(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v7, v6);
    *v4 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1004A40D4() && __OFSUB__(v7, sub_1004A4104()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1004A4114();
      swift_allocObject();
      v14 = sub_1004A40B4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1001E1058(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100014D40(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    result = sub_1001E1058(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

char *sub_1001E07C0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100014D40(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v7, v6);
    *v4 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1004A40D4() && __OFSUB__(v7, sub_1004A4104()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1004A4114();
      swift_allocObject();
      v14 = sub_1004A40B4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1001E1108(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100014D40(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    result = sub_1001E1108(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void sub_1001E0B64(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_100014D40(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1004DC1F0;
      sub_100014D40(0, 0xC000000000000000);
      sub_1001E0F7C(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100014D40(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  sub_100014D40(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1004DC1F0;
  sub_100014D40(0, 0xC000000000000000);
  sub_1004A4394();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = sub_1004A40D4();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1004A4104();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_1004A40F4();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

_BYTE *sub_1001E0E14@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1001E1794(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001E184C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001E18C8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1001E0EA8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001E0F10(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1001E0F7C(void (*a1)(uint64_t, uint64_t))
{
  sub_1004A43A4();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = sub_1004A40D4();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_1004A4104();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = sub_1004A40F4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

char *sub_1001E1058(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1004A40D4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1004A4104();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1004A40F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_1001E1108(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1004A40D4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1004A4104();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1004A40F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1001E11BC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1001E130C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1004A6714();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1004A67E4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1001E130C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1001E13A4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1001E1418(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1001E13A4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10010C210(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001E1418(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1004A67E4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1001E153C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1004A43F4();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001E1674(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1001E1674(v4, v5);
  }

  return sub_1004A43F4();
}

uint64_t sub_1001E1674(uint64_t a1, uint64_t a2)
{
  result = sub_1004A40D4();
  if (!result || (result = sub_1004A4104(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004A40F4();
      return sub_1004A43F4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E1708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001E3450(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1001E1744@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1004A6734();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E1794(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001E184C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004A4114();
  swift_allocObject();
  result = sub_1004A40C4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004A43C4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001E18C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004A4114();
  swift_allocObject();
  result = sub_1004A40C4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001E194C(uint64_t a1)
{
  v9 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  v10 = sub_1001E29A4();
  v8[0] = a1;
  v2 = sub_10002587C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001E0E14(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000197E0(v8);
  return v5;
}

uint64_t sub_1001E19FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1004A4114();
      swift_allocObject();
      sub_1004A40E4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1004A43C4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1001E1A9C(uint64_t a1, uint64_t a2)
{
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v4 = sub_1004A5024();
  v7[0] = a1;
  sub_1004A5064();
  v7[3] = type metadata accessor for OutboundContent(0);
  v5 = sub_1000B3774(v7);
  sub_1001E2B98(a2, v5, type metadata accessor for OutboundContent);
  sub_1004A5064();
  return v4;
}

void *sub_1001E1BD0(uint64_t a1)
{
  v28 = _s11CompressionO12OutgoingDataVMa(0);
  __chkstk_darwin(v28);
  v29 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v30 = sub_1004A4944();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  __chkstk_darwin(v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_1004A4904();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004A5384();
  sub_1001E2D90(&qword_1005D3650, 255, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
  sub_1004A5E64();
  result = sub_1004A5EA4();
  if (v33[0] == v33[4])
  {
    return result;
  }

  sub_1004A50D4();
  sub_1004A5134();
  sub_1004A5094();

  if (!v33[3])
  {
    sub_100025F40(v33, &qword_1005D4768, &unk_1004F5B20);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_100025F40(v9, &qword_1005D3CE8, &qword_1004DDA78);
  }

  v15 = swift_dynamicCast();
  (*(v11 + 56))(v9, v15 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100025F40(v9, &qword_1005D3CE8, &qword_1004DDA78);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = tracingSignposter.unsafeMutableAddressor();
  v17 = v30;
  (*(v32 + 16))(v31, v16, v30);
  sub_1001E2B98(a1, v5, _s11CompressionO12OutgoingDataVMa);
  v18 = v29;
  sub_1001E2B98(a1, v29, _s11CompressionO12OutgoingDataVMa);
  v19 = sub_1004A4934();
  v20 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v21 = swift_slowAlloc();
    v27 = v20;
    v22 = v21;
    *v21 = 134218240;
    v23 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1001E2C1C(v5, _s11CompressionO12OutgoingDataVMa);
    *(v22 + 1) = v23;
    *(v22 + 6) = 2048;
    v24 = *&v18[*(v28 + 20)];
    sub_1001E2C1C(v18, _s11CompressionO12OutgoingDataVMa);
    *(v22 + 14) = v24;
    v25 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v27, v25, "Connection.didSendData", "%ld,%ld", v22, 0x16u);
  }

  else
  {
    sub_1001E2C1C(v18, _s11CompressionO12OutgoingDataVMa);
    sub_1001E2C1C(v5, _s11CompressionO12OutgoingDataVMa);
  }

  (*(v32 + 8))(v31, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1001E210C(uint64_t a1)
{
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v3 = sub_1004A4A54();
  v4 = sub_1004A6034();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 68158210;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1001DA630(v6);

    *(v5 + 11) = 2082;
    v8 = sub_1001DA630(v7);
    v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
    v11 = sub_10015BA6C(v9, v10, v13);

    *(v5 + 13) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%.*hhx-%{public}s] Enabling Openwave Messaging workaround.", v5, 0x15u);
    sub_1000197E0(v6);
  }

  else
  {
  }

  result = swift_beginAccess();
  if (*(v1 + 241) == 1)
  {
    *(v1 + 232) = 0;
    *(v1 + 240) = 1;
  }

  return result;
}

void sub_1001E22DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = type metadata accessor for Framer.OutboundMessage(0);
  __chkstk_darwin(v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;

  sub_1001DD868(v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001DC1B8(a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1001DE568(a1);
    }

    else
    {
      sub_1001E210C(a1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001DDF00(a1, *v10);
    }

    else
    {
      v16 = v10[1];
      v17 = v10[2];
      *(v2 + 242) = *v10;
      *(v2 + 243) = v16;
      *(v2 + 244) = v17;
    }
  }

  else
  {
    v12 = *v10;
    v13 = sub_10000C9C0(&qword_1005D4750, &qword_1004E0688);
    sub_1001E2B30(&v10[*(v13 + 48)], v7, type metadata accessor for OutboundContent);
    v15 = sub_1001DE910(v12, v7, a1, v14);
    if ((v15 & 1) == 0)
    {
      swift_beginAccess();
      v18 = *(v2 + 224);
      v21[0] = *(v2 + 208);
      v21[1] = v18;
      v22 = *(v2 + 240);

      v19 = sub_1001B435C();
      sub_1001E2890(v21);
      if (v19 >= 10000)
      {
        sub_1001DC1B8(a1);
      }
    }

    sub_1001E2C1C(v7, type metadata accessor for OutboundContent);
  }

  sub_1004A5104(0);
}

uint64_t type metadata accessor for Framer.OutboundMessage(uint64_t a1)
{
  result = qword_1005D4830;
  if (!qword_1005D4830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001E28EC()
{
  result = qword_1005D4758;
  if (!qword_1005D4758)
  {
    result = swift_getWitnessTable(byte_1004DD73C, &_s19CommandOutputBufferV40CanNotAppendHandshakeUnlessBufferIsEmptyVN, v0, v1);
    atomic_store(result, &qword_1005D4758);
  }

  return result;
}

unint64_t sub_1001E2948()
{
  result = qword_1005D4760;
  if (!qword_1005D4760)
  {
    result = swift_getWitnessTable("Ֆ\n", &_s19CommandOutputBufferV33ServerDoesNotExpectHandshakeReplyVN, v0, v1);
    atomic_store(result, &qword_1005D4760);
  }

  return result;
}

unint64_t sub_1001E29A4()
{
  result = qword_1005D2F10;
  if (!qword_1005D2F10)
  {
    v3 = sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v0, v1);
    atomic_store(result, &qword_1005D2F10);
  }

  return result;
}

uint64_t sub_1001E2A08(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001E2A48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001E2ADC()
{
  result = qword_1005D4780;
  if (!qword_1005D4780)
  {
    result = swift_getWitnessTable(byte_1004E06DC, &type metadata for Framer.OutboundMessage.NoContent, v0, v1);
    atomic_store(result, &qword_1005D4780);
  }

  return result;
}

uint64_t sub_1001E2B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E2C7C()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001E2D04()
{
  sub_1004A4904();

  return sub_1001DB2DC();
}

uint64_t sub_1001E2D90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E2DD8()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001E2E78(uint64_t a1)
{
  v3 = *(sub_1004A4904() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1001DADBC(a1, v1 + v4, v6, v7);
}

void *sub_1001E2F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001E0F10(sub_1001E2F80, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001E2FA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E2FDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1004A5214();
  v5 = (*(*(v4 - 8) + 48))(a1, 1, v4) == 1;
  return v3(v5);
}

uint64_t sub_1001E3054(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001E3064(uint64_t a1)
{
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  if (sub_1004A4CE4())
  {
    sub_1004A5044();
    if (swift_dynamicCastClass())
    {
      sub_1004A5054();
      if (v8)
      {
        sub_10000C9C0(&qword_1005D4790, &qword_1004E0698);
        if (swift_dynamicCast())
        {

          return v6;
        }
      }

      else
      {
        sub_100025F40(v7, &qword_1005D4768, &unk_1004F5B20);
      }

      sub_1004A5054();
      if (v8)
      {

        sub_100025F40(v7, &qword_1005D4768, &unk_1004F5B20);
        return 0;
      }

      sub_100025F40(v7, &qword_1005D4768, &unk_1004F5B20);
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v2 = sub_1004A4A74();
      sub_1001C203C(v2, qword_1005D4680);
      v3 = sub_1004A4A54();
      v4 = sub_1004A6024();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Received invalid message.", v5, 2u);
      }
    }
  }

  return 1;
}

void sub_1001E32E8(uint64_t a1)
{
  sub_1001E3364(319);
  if (v1 <= 0x3F)
  {
    sub_1004A5154();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001E3364(uint64_t a1)
{
  if (!qword_1005D4840)
  {
    type metadata accessor for OutboundContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D4840);
    }
  }
}

void *sub_1001E33CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = **(v3 + 16);
  v7[2] = &v8;
  result = sub_1001E0EA8(sub_1001E3430, v7, a1, a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1001E3450(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    sub_1004A6AA4();
    if ((v9 & 1) == 0)
    {
      v6 = 0;
      v7 = v8;
      do
      {
        *(v5 + v6) = v7;
        if (a2 - 1 == v6)
        {
          break;
        }

        sub_1004A6AA4();
        v7 = v8;
        ++v6;
      }

      while ((v9 & 1) == 0);
    }

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E350C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001E3534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v134 = a3;
  v138 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v138);
  v137 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.Result(0);
  __chkstk_darwin(v6 - 8);
  v136 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  __chkstk_darwin(v8 - 8);
  v140 = &v131 - v9;
  v10 = sub_10000C9C0(&qword_1005D4878, &qword_1004E0790);
  __chkstk_darwin(v10 - 8);
  v156 = &v131 - v11;
  v152 = _s12OutputHelperV5ChunkVMa(0);
  v161 = *(v152 - 8);
  __chkstk_darwin(v152);
  v135 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = &v131 - v14;
  __chkstk_darwin(v15);
  v154 = &v131 - v16;
  v17 = sub_10000C9C0(&qword_1005D4880, &qword_1004E0798);
  __chkstk_darwin(v17 - 8);
  v150 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v131 - v20;
  v163 = _s19CommandOutputBufferV8SendDataVMa(0);
  v160 = *(v163 - 8);
  __chkstk_darwin(v163);
  v147 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v146 = &v131 - v24;
  __chkstk_darwin(v25);
  v155 = &v131 - v26;
  __chkstk_darwin(v27);
  v29 = &v131 - v28;
  __chkstk_darwin(v30);
  v32 = &v131 - v31;
  __chkstk_darwin(v33);
  v35 = &v131 - v34;
  v36 = _s12OutputHelperVMa(0);
  __chkstk_darwin(v36);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1004A5384();
  v139 = *(v149 - 8);
  __chkstk_darwin(v149);
  __chkstk_darwin(v39);
  v42 = &v131 - v41;
  v148 = a2;
  if (a1)
  {
    v132 = v40;
    *v38 = 0;
    v43 = v36[5];
    v44 = a1;

    sub_1004A5344();
    v45 = v161;
    v46 = v161 + 56;
    v47 = *(v161 + 56);
    v153 = v36[6];
    v47(&v38[v153], 1, 1, v152);
    *&v38[v36[7]] = v44;
    swift_beginAccess();
    v48 = v162;
    sub_1001B53B0(v150);
    v49 = v48;
    if (!v48)
    {
      v131 = v43;
      v142 = v47;
      v143 = v46;
      v157 = v38;
      v133 = v44;
      v50 = 0;
      v51 = 0;
      v162 = 0;
      v144 = (v160 + 48);
      v145 = (v139 + 16);
      v151 = (v45 + 48);
      v52 = 1;
      LODWORD(v43) = 1;
      v53 = v150;
      while (1)
      {
        swift_endAccess();
        v54 = v163;
        if ((*v144)(v53, 1, v163) == 1)
        {
          sub_100025F40(v53, &qword_1005D4880, &qword_1004E0798);
          v103 = v132;
          sub_1001D4488(v132);
          v161 = v50;
          v113 = v51;
          v123 = v139;
          v102 = v134;
          v124 = v149;
          (*(v139 + 16))(v134, v103, v149);
          v125 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          (*(v123 + 8))(v103, v124);
          v101 = v125;
          sub_1001E4744(v157, _s12OutputHelperVMa);
          v100 = v162;
          goto LABEL_46;
        }

        v55 = v147;
        sub_1001E46DC(v53, v147, _s19CommandOutputBufferV8SendDataVMa);
        v56 = (v55 + *(v54 + 20));
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = v57 | (v58 << 32);
        v60 = v57 == v50 && v58 == HIDWORD(v50);
        if (v60)
        {
          v61 = v51;
        }

        else
        {
          v61 = v57 | (v58 << 32);
        }

        if (v60)
        {
          v62 = v43;
        }

        else
        {
          v62 = 0;
        }

        if (v52)
        {
          v50 = v59;
        }

        else
        {
          v51 = v61;
          LODWORD(v43) = v62;
        }

        v63 = v55;
        v64 = v146;
        sub_1001E46DC(v63, v146, _s19CommandOutputBufferV8SendDataVMa);
        v65 = v155;
        sub_1001E46DC(v64, v155, _s19CommandOutputBufferV8SendDataVMa);
        result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v67 = v156;
        if (__OFADD__(v162, result))
        {
          __break(1u);
          return result;
        }

        v161 = v50;
        v162 += result;
        LODWORD(v158) = v43;
        v159 = v51;
        v160 = v49;
        v68 = *(v65 + *(v163 + 24));
        v69 = *v145;
        v70 = v154;
        (*v145)(v154, v65, v149);
        v72 = v152;
        v71 = v153;
        *(v70 + *(v152 + 20)) = v68;
        v73 = v157;
        sub_1001D4888(&v157[v71], v67);
        v74 = *v151;
        if ((*v151)(v67, 1, v72) == 1)
        {
          break;
        }

        v75 = v141;
        sub_1001E4678(v67, v141);
        v76 = v72;
        if (v68 == *(v75 + *(v72 + 20)))
        {
          v81 = v74(&v157[v153], 1, v72);
          v49 = v160;
          v82 = v154;
          if (!v81)
          {
            sub_1004A5354();
          }

          sub_1001E4744(v75, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v82, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_1001E4744(v156, _s12OutputHelperV5ChunkVMa);
          goto LABEL_5;
        }

        sub_1001E4744(v75, _s12OutputHelperV5ChunkVMa);
        v77 = v153;
        v78 = v140;
        sub_1001D4888(&v157[v153], v140);
        v79 = v74(v78, 1, v72);
        v49 = v160;
        if (v79 == 1)
        {
          sub_1001E4744(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_100025F40(v78, &qword_1005D4500, &qword_1004E0320);
          v50 = v161;
          v43 = v157;
          v53 = v150;
          v80 = v142;
        }

        else
        {
          v83 = v78;
          v84 = v135;
          sub_1001E46DC(v83, v135, _s12OutputHelperV5ChunkVMa);
          v85 = v76;
          v86 = v137;
          v69(v137, v84, v149);
          swift_storeEnumTagMultiPayload();
          v87 = v136;
          sub_1001D0774(v86, *(v84 + *(v85 + 20)), v136);
          v50 = v161;
          v53 = v150;
          if (v49)
          {
            sub_1001E4744(v86, type metadata accessor for Deflate.InputBuffer);
            sub_1001E4744(v84, _s12OutputHelperV5ChunkVMa);
            sub_1001E4744(v154, _s12OutputHelperV5ChunkVMa);
            sub_1001E4744(v155, _s19CommandOutputBufferV8SendDataVMa);
            v130 = v157;
            sub_100025F40(&v157[v77], &qword_1005D4500, &qword_1004E0320);
            v142(&v130[v77], 1, 1, v152);
            sub_1001E4744(v156, _s12OutputHelperV5ChunkVMa);
            v104 = v130;
            goto LABEL_40;
          }

          sub_1001E4744(v86, type metadata accessor for Deflate.InputBuffer);
          v43 = v157;
          sub_1004A5354();
          sub_1001E4744(v87, type metadata accessor for Deflate.Result);
          sub_1001E4744(v84, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_100025F40(&v43[v77], &qword_1005D4500, &qword_1004E0320);
          v76 = v152;
          v80 = v142;
          v142(&v43[v77], 1, 1, v152);
        }

        sub_100025F40(&v43[v77], &qword_1005D4500, &qword_1004E0320);
        sub_1001E46DC(v154, &v43[v77], _s12OutputHelperV5ChunkVMa);
        v80(&v43[v77], 0, 1, v76);
        sub_1001E4744(v156, _s12OutputHelperV5ChunkVMa);
        v51 = v159;
        LODWORD(v43) = v158;
LABEL_6:
        swift_beginAccess();
        sub_1001B53B0(v53);
        v52 = 0;
        if (v49)
        {
          v38 = v157;
          goto LABEL_39;
        }
      }

      sub_1001E4744(v65, _s19CommandOutputBufferV8SendDataVMa);
      sub_100025F40(&v73[v71], &qword_1005D4500, &qword_1004E0320);
      sub_1001E46DC(v70, &v73[v71], _s12OutputHelperV5ChunkVMa);
      v142(&v73[v71], 0, 1, v72);
      v49 = v160;
LABEL_5:
      v51 = v159;
      v50 = v161;
      LODWORD(v43) = v158;
      v53 = v150;
      goto LABEL_6;
    }

LABEL_39:
    swift_endAccess();
    v104 = v38;
LABEL_40:
    sub_1001E4744(v104, _s12OutputHelperVMa);
  }

  v156 = v35;
  v158 = v32;
  v88 = v134;
  v159 = v29;
  sub_1004A5344();
  swift_beginAccess();
  v89 = v162;
  sub_1001B53B0(v21);
  if (v89)
  {
    swift_endAccess();
    (*(v139 + 8))(v42, v149);
  }

  v162 = v42;
  v90 = v88;
  v133 = 0;
  swift_endAccess();
  v91 = *(v160 + 6);
  v92 = 1;
  v93 = v21;
  v94 = v21;
  v95 = v163;
  v160 += 48;
  v157 = v91;
  v96 = (v91)(v93, 1, v163);
  v52 = v96 == 1;
  if (v96 == 1)
  {
    v161 = 0;
    v113 = 0;
    v43 = v90;
  }

  else
  {
    v105 = v159;
    sub_1001E46DC(v94, v159, _s19CommandOutputBufferV8SendDataVMa);
    v106 = (v105 + *(v95 + 20));
    v107 = *v106;
    v108 = *(v106 + 1);
    v109 = v105;
    v110 = v158;
    sub_1001E46DC(v109, v158, _s19CommandOutputBufferV8SendDataVMa);
    v111 = v156;
    sub_1001E46DC(v110, v156, _s19CommandOutputBufferV8SendDataVMa);
    sub_1004A5354();
    sub_1001E4744(v111, _s19CommandOutputBufferV8SendDataVMa);
    swift_beginAccess();
    sub_1001B53B0(v94);
    v112 = v108;
    v113 = 0;
    v154 = v112;
    v155 = v107;
    v161 = v107 | (v112 << 32);
    v92 = 1;
    while (1)
    {
      swift_endAccess();
      if ((v157)(v94, 1, v95) == 1)
      {
        break;
      }

      v114 = v159;
      sub_1001E46DC(v94, v159, _s19CommandOutputBufferV8SendDataVMa);
      v115 = (v114 + *(v95 + 20));
      v116 = *v115;
      v117 = *(v115 + 1);
      v118 = v117 == v154;
      v119 = v116 | (v117 << 32);
      v120 = v116 == v155 && v118;
      if (!v120)
      {
        v113 = v119;
      }

      v92 &= v120;
      v121 = v114;
      v122 = v158;
      sub_1001E46DC(v121, v158, _s19CommandOutputBufferV8SendDataVMa);
      sub_1001E46DC(v122, v111, _s19CommandOutputBufferV8SendDataVMa);
      sub_1004A5354();
      sub_1001E4744(v111, _s19CommandOutputBufferV8SendDataVMa);
      swift_beginAccess();
      sub_1001B53B0(v94);
    }

    v43 = v134;
  }

  sub_100025F40(v94, &qword_1005D4880, &qword_1004E0798);
  v97 = v139;
  v98 = v162;
  v99 = v149;
  (*(v139 + 16))(v43, v162, v149);
  v100 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v97 + 8))(v98, v99);
  v101 = 0;
  v102 = v43;
  LOBYTE(v43) = v92;
LABEL_46:
  v126 = v133 == 0;

  result = _s11CompressionO12OutgoingDataVMa(0);
  *(v102 + *(result + 20)) = v100;
  v127 = v102 + *(result + 24);
  *v127 = v101;
  v127[8] = v126;
  v128 = v102 + *(result + 28);
  *v128 = v161;
  v128[8] = v52;
  v129 = v102 + *(result + 32);
  *v129 = v113;
  v129[8] = v43 & 1;
  return result;
}

uint64_t _s11CompressionO12OutgoingDataVMa(uint64_t a1)
{
  result = qword_1005D48E0;
  if (!qword_1005D48E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E4678(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E46DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E4744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E47A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = a2 + a1;
  }

  else
  {
    v5 = 0;
  }

  return a5(a1, v5, a3, a4);
}

uint64_t sub_1001E47EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001E486C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001E48DC(uint64_t a1)
{
  sub_1004A5384();
  if (v1 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CE8C8, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1000576D4(319, &unk_1005D48F0, &type metadata for Tag);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HandshakeReply.Encoded.init(content:tag:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  v7 = sub_1004A5384();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v9 = a3 + *(result + 20);
  *v9 = v3;
  *(v9 + 4) = v6;
  return result;
}

uint64_t type metadata accessor for HandshakeReply.Encoded(uint64_t a1)
{
  result = qword_1005D4988;
  if (!qword_1005D4988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E4A80(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return sub_10003A194(a1, a2, a4, a5);
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_1001E4ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (a1[2])
  {
    if (v8)
    {
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t MessageSectionData.Segment.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A5384();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageSectionData.Segment.data.setter(uint64_t a1)
{
  v3 = sub_1004A5384();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HandshakeReply.Encoded.tag.setter(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 4) = v3;
  return result;
}

uint64_t sub_1001E4CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = *(type metadata accessor for HandshakeReply.Encoded(0) + 20);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *v14;
  v16 = *(v14 + 1);
  if (v12 != v15 || v13 != v16)
  {
    return 0;
  }

  v19 = *(v5 + 16);
  v19(v10, a1, v4);
  v19(v7, a2, v4);
  v20 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v20 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1001B60F8();
    sub_1004A5E64();
    v21 = sub_1004A5EA4();
    if (v25 == v24[2])
    {
      v18 = 1;
    }

    else
    {
      __chkstk_darwin(v21);
      v24[-2] = v7;
      v24[-1] = v10;
      sub_1004A5314();
      v18 = v25;
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  return v18;
}

uint64_t sub_1001E4F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001E4FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001E503C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001E5054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E509C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001E5104@<X0>(uint64_t a2@<X8>)
{
  result = sub_1001E5658(*(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 64) = 2;
  return result;
}

uint64_t sub_1001E5164(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100124EFC(a1, v5);
  if (swift_getEnumCaseMultiPayload() != 21)
  {
    return sub_100124F60(v5);
  }

  v8 = *v5;
  v6 = *(v5 + 2);
  result = sub_10018A510(v1[10], v1[11], v1[12]);
  *(v1 + 5) = v8;
  v1[12] = v6;
  return result;
}

double sub_1001E5230@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (v4 = v2[11]) == 0)
  {
    *&v14 = 0;
    v13 = 9uLL;
    BYTE8(v14) = -64;
    sub_100197E60(&v13);
  }

  else
  {
    v5 = v2[12];
    v6 = v2[10];

    ServerID.init(_:)(v6, &v13, v4, v5);
    sub_1001E539C(&v13);
  }

  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  UInt32.init(_:)(&v25);
  v45 = v35;
  v46 = v36;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v7 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v7;
  *(a2 + 160) = v45;
  *(a2 + 176) = v46;
  v8 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v8;
  v9 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v9;
  v10 = v38;
  *a2 = v37;
  *(a2 + 16) = v10;
  result = *&v39;
  v12 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1001E53A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1004A6554();
  v5 = v26;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_30;
    }

    v10 = *(*(a1 + 48) + result);
    if (v10 <= 1)
    {
      if (*(*(a1 + 48) + result))
      {
        v11 = 0xE90000000000006CLL;
        v12 = 0x6C69662D6B636162;
      }

      else
      {
        v11 = 0xE700000000000000;
        v12 = 0x72657865646E69;
      }
    }

    else if (v10 == 2)
    {
      v11 = 0xE800000000000000;
      v12 = 0x6574616E6F646572;
    }

    else if (v10 == 3)
    {
      v11 = 0xE800000000000000;
      v12 = 0x6369646F69726570;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1752397168;
    }

    v13 = *(a1 + 36);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_100091A08((v14 > 1), v15 + 1, 1);
      v5 = v26;
      v13 = v24;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_31;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v8);
    if ((v17 & v9) == 0)
    {
      goto LABEL_32;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (a1 + 64 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_100020944(result, v13, 0);
          v5 = v26;
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v13, 0);
      v5 = v26;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1001E5658(__n128 a1)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;

    sub_1001E5E30(v3, v2, 1701667182, 0xE400000000000000);
  }

  v4 = v1[3];
  if (v4)
  {
    v5 = v1[2];

    sub_1001E5E30(v5, v4, 0x6E6F6973726576, 0xE700000000000000);
  }

  v6 = v1[5];
  if (v6)
  {
    v7 = v1[4];

    sub_1001E5E30(v7, v6, 29551, 0xE200000000000000);
  }

  v8 = v1[7];
  if (v8)
  {
    v9 = v1[6];

    sub_1001E5E30(v9, v8, 0x69737265762D736FLL, 0xEA00000000006E6FLL);
  }

  sub_1001E5E30(0x6E4920656C707041, 0xE900000000000063, 0x726F646E6576, 0xE600000000000000);
  v10 = v1[8];
  v11 = sub_1001E7B4C(v10);
  sub_1001E5E30(v11, v12, 0x746E657665, 0xE500000000000000);
  if (*(v10 + 16))
  {
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = sub_1004A6F14();
    v14 = -1 << *(v10 + 32);
    v15 = v13 & ~v14;
    if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v10 + 48) + v15);
        if (v17 <= 2 && v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1004A6D34();

        if (v18)
        {
          goto LABEL_19;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_19:
      sub_1001E5E30(49, 0xE100000000000000, 0x72657865646E69, 0xE700000000000000);
    }
  }

  return 0;
}

void sub_1001E592C(__int128 *a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2[3])
    {
LABEL_3:
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v2[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1004A6EC4(0);
      if (v2[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1004A6EC4(0);
  if (!v2[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2[7])
  {
LABEL_5:
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_10;
  }

LABEL_9:
  sub_1004A6EC4(0);
LABEL_10:
  v4 = v2[8];

  sub_1001E76A0(a1, v4);
}

Swift::Int sub_1001E5A3C()
{
  sub_1004A6E94();
  sub_1001E592C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1001E5A80(uint64_t a1)
{
  sub_1004A6E94();
  sub_1001E592C(v2);
  return sub_1004A6F14();
}

uint64_t sub_1001E5ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1001E7868(v7, v9) & 1;
}

CFStringRef sub_1001E5B18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return v1;
  }

  v2 = sub_1004A5514();

  result = kCFBundleIdentifierKey;
  if (!kCFBundleIdentifierKey)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4 = sub_1004A5764();
  if (*(v2 + 16))
  {
    v6 = sub_100064090(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1001659C8(*(v2 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
LABEL_13:
        v1 = v27;
        if (!*(v2 + 16))
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = sub_100064090(0xD00000000000001ALL, 0x80000001004ABEE0);
        if (v15)
        {
          sub_1001659C8(*(v2 + 56) + 32 * v14, v29);
          v16 = swift_dynamicCast();
          if (v16)
          {
            v17 = v27;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = v28;
          }

          else
          {
            v18 = 0;
          }

LABEL_25:
          result = kCFBundleVersionKey;
          if (kCFBundleVersionKey)
          {
            v19 = sub_1004A5764();
            if (*(v2 + 16))
            {
              v21 = sub_100064090(v19, v20);
              v23 = v22;

              if (v23)
              {
                sub_1001659C8(*(v2 + 56) + 32 * v21, v29);

                v24 = swift_dynamicCast();
                if (v24)
                {
                  v25 = v27;
                }

                else
                {
                  v25 = 0;
                }

                if (v24)
                {
                  v26 = v28;
                }

                else
                {
                  v26 = 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
            }

            v25 = 0;
            v26 = 0;
LABEL_36:
            sub_1001E6058(v17, v18, v25, v26);

            return v1;
          }

          goto LABEL_39;
        }

LABEL_24:
        v17 = 0;
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  else
  {
  }

  result = kCFBundleNameKey;
  if (kCFBundleNameKey)
  {
    v9 = sub_1004A5764();
    if (*(v2 + 16))
    {
      v11 = sub_100064090(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1001659C8(*(v2 + 56) + 32 * v11, v29);
        if (swift_dynamicCast())
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v1 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001E5E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = sub_1001E74AC(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      if (a2 == 1)
      {
LABEL_4:
        sub_1001E6930(v12, v11);

        sub_1001E6A98(v12);
LABEL_15:
      }

      goto LABEL_24;
    }
  }

  else if (v11)
  {
    v12 = 0;
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      ++v12;
      v16 += 2;
      if (v11 == v12)
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    v11 = 0;
    if (a2 == 1)
    {
      goto LABEL_4;
    }

LABEL_24:
    v25 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001EE010(v25);
      v25 = result;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < v25[2])
    {
      v26 = &v25[2 * v12];
      v26[4] = a1;
      v26[5] = a2;

      v4[2] = v25;
      return result;
    }

    __break(1u);
    return result;
  }

LABEL_14:
  if (a2 == 1)
  {
    goto LABEL_15;
  }

  sub_1001E67B8(a3, a4, v11);

  v21 = v4[2];
  v19 = v4 + 2;
  v20 = v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v21;
  if ((result & 1) == 0)
  {
    result = sub_1001D600C(0, *(v20 + 16) + 1, 1);
    v20 = *v19;
  }

  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_1001D600C((v22 > 1), v23 + 1, 1);
    v20 = *v19;
  }

  *(v20 + 16) = v23 + 1;
  v24 = v20 + 16 * v23;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *v19 = v20;
  return result;
}

uint64_t sub_1001E6058(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (!a4 || a1 == a3 && a2 == a4 || (v4 = a1, v7 = sub_1004A6D34(), a1 = v4, (v7 & 1) != 0))
    {
      v8 = a1;

      return v8;
    }

    v11 = v4;

    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    sub_1004A5994(v12);
    v10._countAndFlagsBits = a3;
    v10._object = a4;
  }

  else
  {
    if (!a4)
    {
      return a3;
    }

    v11 = 40;
    v10._countAndFlagsBits = a3;
    v10._object = a4;
  }

  sub_1004A5994(v10);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_1004A5994(v13);
  return v11;
}

uint64_t sub_1001E614C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1004A57F4();
  __chkstk_darwin(v4 - 8);
  sub_1004A4114();
  swift_allocObject();
  v13 = 0xC800000000;
  v14 = sub_1004A40E4();
  sub_1001E75F8(&v13, 0);
  v14 |= 0x4000000000000000uLL;
  v5 = sub_1001E636C(&v13, a1);
  if ((v6 & 1) != 0 || v5 < 1)
  {
    result = sub_100014D40(v13, v14);
    v9 = 0;
    v11 = 0;
  }

  else
  {
    sub_1004A43E4();
    v7 = v13;
    v8 = v14;
    sub_1004A57D4();
    v9 = sub_1004A5784();
    v11 = v10;
    result = sub_100014D40(v7, v8);
  }

  *a2 = v9;
  a2[1] = v11;
  return result;
}

double sub_1001E628C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    sub_10000C9C0(&qword_1005D4660, &qword_1004E05E8);
    sub_1004A66E4();
    if (!v2)
    {
      return *&v5[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1001E614C(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
      if (!v2)
      {
        return *v5;
      }

      return result;
    }

    goto LABEL_9;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  sub_1001E614C(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

uint64_t sub_1001E636C(uint64_t *a1, char *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v17 + 7) = 0;
      v16 = 0;
      *&v17 = 0;
      if (sysctlbyname(a2, &v17, &v16, 0, 0))
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    sub_100014D40(v6, v5);
    *&v17 = v6;
    *(&v17 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    v6 = v17;
    result = sub_1001E66D4(*(v17 + 16), *(v17 + 24), *(&v17 + 1), a2);
    v10 = *(&v17 + 1) | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_21:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  if (v7)
  {
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v6, v5);
    *a1 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (sub_1004A40D4() && __OFSUB__(v6, sub_1004A4104()))
      {
LABEL_25:
        __break(1u);
      }

      sub_1004A4114();
      swift_allocObject();
      v13 = sub_1004A40B4();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1001E66D4(v6, v6 >> 32, v11, a2);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_100014D40(v6, v5);
  *&v17 = v6;
  WORD4(v17) = v5;
  BYTE10(v17) = BYTE2(v5);
  BYTE11(v17) = BYTE3(v5);
  BYTE12(v17) = BYTE4(v5);
  BYTE13(v17) = BYTE5(v5);
  BYTE14(v17) = BYTE6(v5);
  v16 = BYTE6(v5);
  if (sysctlbyname(a2, &v17, &v16, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

  v9 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
  *a1 = v17;
  a1[1] = v9;
  return result;
}

size_t sub_1001E66D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1004A40D4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1004A4104();
  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1004A40F4();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v16 = v14;
  if (sysctlbyname(a4, (v8 + v10), &v16, 0, 0))
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_1001E67B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_100091A08(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_100091A08((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v4;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_1004A4774();

        *v4 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1001E6BA8();
}

uint64_t sub_1001E6930(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1001E6B20(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v11 = sub_1001E6B20(a1);
    sub_1001E6BA8();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1004A4774();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_1001E6C48(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1001E6E40(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_1001E6B20(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001E6A98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EE010(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001E6B20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDFFC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001E6BA8()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1001E72AC(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

unint64_t sub_1001E6C48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_1004A46F4();
  sub_1004A4744();
  if (v14)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1004A6F14();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1004A4724();
      v6 = a1;
      sub_1004A4714();
LABEL_3:
      sub_1004A4744();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1004A4714();
}

void sub_1001E6E40(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      if (sub_1004A4754() / 3 > result)
      {
        if (result < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < result)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (result)
        {
          v10 = 0;
          while (1)
          {
            sub_1004A6E94();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v11 = sub_1004A4724();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_1004A4734();

            if (v10 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1004A46F4();
      v18 = sub_1004A4724();
      if ((v19 & 1) != 0 || v18 >= result)
      {
LABEL_33:
        sub_1004A4744();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return;
      }

      if (!__OFADD__(v18, v6))
      {
        sub_1004A4734();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1004A46F4();
      v20 = sub_1004A4724();
      if ((v21 & 1) == 0 && v20 >= v5)
      {
        if (__OFSUB__(v20, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v9 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v5)
    {
      do
      {
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v22 = sub_1004A4724();
            if ((v23 & 1) == 0 && v22 == v5)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
      }

      while (++v5 != v9);
    }
  }
}

uint64_t sub_1001E72AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1004A4784();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_1004A4794();
    sub_1001E732C(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_1001E737C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v7 = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1004A46F4();

        if (v8)
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        v7 = sub_1004A4734();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_1001E74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    result = sub_1004A4724();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1004A6D34())
          {
            break;
          }

          sub_1004A4744();
          result = sub_1004A4724();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1001E75F8(int *a1, int a2)
{
  sub_1004A43A4();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_1004A40D4();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1004A4104();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_1004A40F4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

void sub_1001E76A0(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_9:
    sub_1004A6E94();
    v5 &= v5 - 1;
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v7 ^= sub_1004A6F14();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1001E7868(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1004A6D34();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1004A6D34();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1004A6D34();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (v22)
    {
      if (a1[6] == a2[6] && v21 == v22)
      {
        goto LABEL_29;
      }

      v23 = a1;
      v24 = a2;
      v25 = sub_1004A6D34();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if (v26)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v22)
  {
    return 0;
  }

LABEL_29:
  v27 = a1[8];
  v28 = a2[8];

  return sub_1001B02D8(v27, v28);
}

uint64_t sub_1001E7A04@<X0>(const __CFString *a1@<X0>, CFStringRef *a2@<X8>)
{
  v24 = sub_1001E5B18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1004A5734();
  v10 = MGGetStringAnswer();

  if (v10)
  {
    v11 = sub_1004A5764();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_1001E628C(0xD000000000000015, 0x80000001004ABEC0);
  v15 = v14;
  v17 = v16;
  sub_1001E628C(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  v20 = sub_1001E6058(v15, v17, v18, v19);
  v22 = v21;

  *a2 = v24;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v20;
  a2[7] = v22;
  a2[8] = a1;
  return result;
}

uint64_t sub_1001E7B4C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_1001E53A8(a1);

  sub_10020BFFC(&v3);

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v1 = sub_1004A5614();

  return v1;
}

uint64_t sub_1001E7C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E7C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001E7CC8()
{
  result = qword_1005D49C0;
  if (!qword_1005D49C0)
  {
    result = swift_getWitnessTable(byte_1004E0A68, &_s14ClientIdentityVN, v0, v1);
    atomic_store(result, &qword_1005D49C0);
  }

  return result;
}

__n128 sub_1001E7D1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001E7D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E7D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__uint64_t sub_1001E7DE0(__uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      v2 = *(v1 + 56) * 17.0;
      result = static MonotonicTime.now()();
      *v1 = v2;
      *(v1 + 8) = xmmword_1004B1230;
      *(v1 + 24) = result;
      *(v1 + 32) = 0;
      return result;
    }

    v4 = *(v1 + 48) * *(v1 + 56);
    result = static MonotonicTime.now()();
    *v1 = xmmword_1004B1230;
    *(v1 + 16) = result;
    *(v1 + 24) = v4;
    v3 = 1;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 16) = 0u;
    v3 = 2;
  }

  *(v1 + 32) = v3;
  return result;
}

BOOL sub_1001E7E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1001E8788(v5, v7);
}

BOOL sub_1001E7EC8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL sub_1001E7F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v4)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (v5 != 1)
    {
      return 0;
    }

    return v3 == *(a2 + 24);
  }

  result = 0;
  if ((*(a2 + 8) & 1) == 0 && *a1 == *a2 && v2 == v4)
  {
    return v3 == *(a2 + 24);
  }

  return result;
}

uint64_t sub_1001E7F80(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2 & 1;
  if (a2)
  {
    return 1;
  }

  v4 = *v3;
  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 >= result)
  {
LABEL_7:
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(result, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = __OFSUB__(0, result - a3);
  v6 = a3 - result;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (v4 >= v6 / 1000000000.0)
  {
    return 1;
  }

  v7 = *(v3 + 24);
  if (v7 > a3)
  {
    if (!__OFSUB__(v7, a3))
    {
      v8 = a3 - v7;
      if (!__OFSUB__(0, v7 - a3))
      {
LABEL_15:
        if (v4 < v8 / 1000000000.0)
        {
          result = 0;
          *(v3 + 24) = a3;
          return result;
        }

        return 1;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v8 = a3 - v7;
  if (!__OFSUB__(a3, v7))
  {
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_1001E8034@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1001E80AC(uint64_t a1, char a2, void *(*a3)(uint64_t *__return_ptr, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a6;
  v14 = a2 & 1;
  v15 = _s6LoggerVMa(0);
  __chkstk_darwin(v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  __chkstk_darwin(v21);
  v26 = __chkstk_darwin(v22);
  *v8 = a1;
  *(v8 + 8) = v14;
  if (a2)
  {
    return 1;
  }

  v28 = v25;
  v29 = &v64 - v24;
  v65 = v23;
  result = a3(v69, v26);
  if (v69[1])
  {
    v20 = v69[0];
    v30 = v70;
    if (v70 <= a7)
    {
LABEL_15:
      v31 = a7 - v30;
      if (!__OFSUB__(a7, v30))
      {
LABEL_16:
        v33 = v31 / 1000000000.0;
        v34 = *(v8 + 24);
        if (v34 < v33)
        {
          sub_1001E861C(v69);
          return 0;
        }

        v35 = *(v8 + 16);
        if (v35 <= a7)
        {
          v36 = a7 - v35;
          if (!__OFSUB__(a7, v35))
          {
LABEL_26:
            if (v36 / 1000000000.0 <= 25.0)
            {
              sub_1001E861C(v69);
              return 1;
            }

            *(v8 + 16) = a7;
            v48 = v66;
            v49 = v29;
            sub_100190B00(v66, v29);
            v50 = v28;
            sub_100190B00(v48, v28);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();

            v51 = sub_1004A4A54();
            v52 = sub_1004A6004();
            sub_1001E861C(v69);
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *v53 = 68158978;
              *(v53 + 4) = 2;
              *(v53 + 8) = 256;
              v54 = v65;
              v55 = *(v50 + *(v65 + 20));
              sub_100190CD4(v50);
              *(v53 + 10) = v55;
              *(v53 + 11) = 2082;
              v56 = *(v49 + *(v54 + 20) + 4);
              sub_100190CD4(v49);
              v57 = ConnectionID.debugDescription.getter(v56);
              v59 = sub_10015BA6C(v57, v58, &v68);

              *(v53 + 13) = v59;
              *(v53 + 21) = 2082;
              sub_1001E861C(v69);
              v60 = Tag.debugDescription.getter(v20 & 0xFFFFFFFF000000FFLL);
              v62 = sub_10015BA6C(v60, v61, &v68);

              *(v53 + 23) = v62;
              *(v53 + 31) = 2048;
              *(v53 + 33) = v33;
              *(v53 + 41) = 2048;
              *(v53 + 43) = v34;
              _os_log_impl(&_mh_execute_header, v51, v52, "[%.*hhx-%{public}s] %{public}s IDLE is %f seconds old (< %f). Not refreshing.", v53, 0x33u);
              swift_arrayDestroy();

              return 1;
            }

            sub_100190CD4(v28);
            sub_1001E861C(v69);

            v63 = v49;
            goto LABEL_34;
          }

          goto LABEL_38;
        }

        if (!__OFSUB__(v35, a7))
        {
          v36 = a7 - v35;
          if (!__OFSUB__(0, v35 - a7))
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_23:
          v37 = v66;
          sub_100190B00(v66, v20);
          sub_100190B00(v37, v17);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v38 = sub_1004A4A54();
          v39 = sub_1004A6004();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v68 = v41;
            *v40 = 68158210;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v42 = v65;
            v43 = v17[*(v65 + 20)];
            sub_100190CD4(v17);
            *(v40 + 10) = v43;
            *(v40 + 11) = 2082;
            v44 = *(v20 + *(v42 + 20) + 4);
            sub_100190CD4(v20);
            v45 = ConnectionID.debugDescription.getter(v44);
            v47 = sub_10015BA6C(v45, v46, &v68);

            *(v40 + 13) = v47;
            _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%{public}s] Not sending IDLE. No mailbox selected.", v40, 0x15u);
            sub_1000197E0(v41);

            return 1;
          }

          sub_100190CD4(v17);

          v63 = v20;
LABEL_34:
          sub_100190CD4(v63);
          return 1;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (__OFSUB__(v70, a7))
    {
      __break(1u);
      goto LABEL_36;
    }

    v31 = a7 - v70;
    if (!__OFSUB__(0, v70 - a7))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  result = a5(result);
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = a7 - a1;
  if (a7 < a1)
  {
    if (__OFSUB__(a1, a7))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v32 = a7 - a1;
    if (!__OFSUB__(0, a1 - a7))
    {
      return v32 / 1000000000.0 <= 0.8;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!__OFSUB__(a7, a1))
  {
    return v32 / 1000000000.0 <= 0.8;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001E861C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D3608, &unk_1004DD1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Action.UnreadCountOutsideWindowOfInterest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for IdleTimer.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IdleTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001E8744(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1001E875C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

BOOL sub_1001E8788(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }

      v6 = vorrq_s8(*a2, *(a2 + 16));
      return !*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
    }

    if (*(a2 + 32) == 1)
    {
      if (v3)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || *a2 != *&v2)
      {
        return 0;
      }

      return (v4 | ((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) << 8)) == *(a2 + 16) && *(a2 + 24) == v5;
    }
  }

  else
  {
    if (*(a2 + 32) || v2 != *a2)
    {
      return 0;
    }

    if (v4)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 16) & 1) != 0 || v3 != *(a2 + 8))
    {
      return 0;
    }

    if (*&v5 == *(a2 + 24))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1001E88C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001E8940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s6LoggerVMa(uint64_t a1)
{
  result = qword_1005D4A20;
  if (!qword_1005D4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E89FC(uint64_t a1)
{
  result = sub_1004A4A74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001E8A7C(uint64_t a1)
{
  if ((*(a1 + 64) & 7u) <= 4)
  {
    return *(a1 + 64) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_1001E8A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1001E8ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 145))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 144);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001E8B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

__n128 sub_1001E8B9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v9 = *(v1 + 112);
  v10 = v3;
  v11 = *(v1 + 144);
  v4 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v8[1] = v4;
  v14 = v9;
  v15 = v3;
  v16 = v11;
  v12 = v8[0];
  v13 = v4;
  sub_1001CDBBC(v8, v7);
  v5 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v5;
  *(a1 + 64) = v16;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001E8C20()
{
  sub_10018D6F4();
  swift_allocError();
  *v0 = xmmword_1004DA580;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1001E8C78(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 3);
  v8 = *(a1 + 5);
  v9 = a1[7];
  v10 = *(a1 + 6);
  v11 = *(a1 + 8);
  v28[2] = *(a1 + 7);
  v28[3] = v11;
  v29 = *(a1 + 144);
  v12 = *(a1 + 4);
  v28[0] = *(a1 + 5);
  v28[1] = v10;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *(a2 + 3);
  v17 = *(a2 + 5);
  v18 = a2[7];
  v19 = *(a2 + 8);
  v30[2] = *(a2 + 7);
  v30[3] = v19;
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = *(a2 + 6);
  v31 = *(a2 + 144);
  v30[0] = v21;
  v30[1] = v22;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v32[0] = v4;
    v32[1] = v5;
    v33 = v7;
    v34 = v8;
    v32[2] = v6;
    v35 = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v36 = v12;
    if ((v18 & 0x1000000000000000) == 0 || (v37[0] = v13, v37[1] = v14, v38 = v16, v39 = v17, v37[2] = v15, v40 = v18 & 0xEFFFFFFFFFFFFFFFLL, v41 = v20, (sub_1001EFF14(v32, v37) & 1) == 0))
    {
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v4 != v13 || v5 != v14)
    {
      v26 = v16;
      v27 = v7;
      v23 = sub_1004A6D34();
      *&v16 = v26;
      *&v7 = v27;
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ((v6 != v15 || v7 != v16) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_10020FCF0(v28, v30);
  return v24 & 1;
}

uint64_t sub_1001E8DD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_1001E8E18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1001E8E94(unint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa(0);
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = *(v2 + 16);
  v21 = *(v2 + 88) | (*(v2 + 90) << 16);
  if (((1 << (a1 >> 60)) & 0x1E7) != 0)
  {
    return;
  }

  if (a1 >> 60 == 3)
  {
    v22 = swift_projectBox();
    v23 = (v21 >> 21) & 7;
    if (v23)
    {
      if (v23 != 1)
      {
        return;
      }

      sub_1001EA264(v22, v16, type metadata accessor for UntaggedResponse);
      sub_1001EA264(v16, v13, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v24 = *v13;
        v25 = *(v13 + 2);
        v26 = *(v13 + 6);
        v55[4] = *(v13 + 5);
        v55[5] = v26;
        v27 = *(v13 + 8);
        v55[6] = *(v13 + 7);
        v55[7] = v27;
        v28 = *(v13 + 2);
        v55[0] = *(v13 + 1);
        v55[1] = v28;
        v29 = *(v13 + 4);
        v30 = *(v2 + 8) | (*(v2 + 8) << 32);
        v55[2] = *(v13 + 3);
        v55[3] = v29;
        if (v30 == (v25 | (v25 << 32)))
        {
          v31 = sub_1000FFC98(*v2, v24);
          sub_1001EA2CC(v16, type metadata accessor for UntaggedResponse);

          sub_10009A0FC(v55);
          if ((v31 & 1) != 0 && (BYTE8(v55[0]) & 1) == 0)
          {
            *(v2 + 104) = *&v55[0];
            *(v2 + 112) = 0;
          }
        }

        else
        {
          sub_10009A0FC(v55);
          sub_1001EA2CC(v16, type metadata accessor for UntaggedResponse);
        }

        return;
      }

      v35 = type metadata accessor for UntaggedResponse;
      sub_1001EA2CC(v16, type metadata accessor for UntaggedResponse);
      v36 = v13;
    }

    else
    {
      v35 = type metadata accessor for UntaggedResponse;
      sub_1001EA264(v22, v19, type metadata accessor for UntaggedResponse);
      sub_1001E958C(v19);
      v36 = v19;
    }

LABEL_26:
    sub_1001EA2CC(v36, v35);
    return;
  }

  v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v34 = (v21 >> 21) & 7;
  if (v34)
  {
    if (v34 == 1 && __PAIR64__(v32, v33) == v20)
    {

      sub_1001E9FE8();
      return;
    }

LABEL_22:
    sub_1001EA264(a2, v10, _s6LoggerVMa);
    sub_1001EA264(a2, v7, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v41 = sub_1004A4A54();
    v42 = sub_1004A6034();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v32;
      *&v55[0] = v44;
      *v43 = 68158466;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v45 = v7[*(v5 + 20)];
      sub_1001EA2CC(v7, _s6LoggerVMa);
      *(v43 + 10) = v45;
      *(v43 + 11) = 2082;
      v46 = *&v10[*(v5 + 20) + 4];
      sub_1001EA2CC(v10, _s6LoggerVMa);
      v47 = ConnectionID.debugDescription.getter(v46);
      v49 = sub_10015BA6C(v47, v48, v55);

      *(v43 + 13) = v49;
      *(v43 + 21) = 2082;
      v50 = Tag.debugDescription.getter(v33 | (v54 << 32));
      v52 = sub_10015BA6C(v50, v51, v55);

      *(v43 + 23) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx-%{public}s] Received command completion for command '%{public}s' unrelated to mailbox selection.", v43, 0x1Fu);
      swift_arrayDestroy();

      return;
    }

    v35 = _s6LoggerVMa;
    sub_1001EA2CC(v7, _s6LoggerVMa);

    v36 = v10;
    goto LABEL_26;
  }

  if (__PAIR64__(v32, v33) != v20)
  {
    goto LABEL_22;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

  sub_1001E9810(v37, v38, v39, v40);
}

uint64_t sub_1001E9408(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = *(a1 + 2);
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = *(a1 + 1);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1001E9AFC(v7, v9) & 1;
}

BOOL sub_1001E9464(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  result = (v4 & v3) == 255;
  if (v3 != 255 && v4 != 255)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v4 == 1)
        {
          goto LABEL_10;
        }
      }

      else if (v4 == 2)
      {
        goto LABEL_10;
      }
    }

    else if (!*(a2 + 24))
    {
LABEL_10:
      if (static ResponseText.__derived_struct_equals(_:_:)(*a1, *(a1 + 8)))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001E94F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1001E9D78(v13, v15) & 1;
}

uint64_t sub_1001E958C(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001EA264(a1, v5, type metadata accessor for UntaggedResponse);
  result = swift_getEnumCaseMultiPayload();
  if (result > 14)
  {
    if (result == 15)
    {
      *(v1 + 104) = *v5;
      *(v1 + 112) = 0;
    }

    else if (result != 16)
    {
      return sub_1001EA2CC(v5, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (result)
    {
      if (result == 13)
      {
        v7 = *v5;

        *(v1 + 96) = v7;
        return result;
      }

      return sub_1001EA2CC(v5, type metadata accessor for UntaggedResponse);
    }

    v8 = *v5;
    if ((~*v5 & 0xF000000000000007) == 0)
    {
    }

    v9 = (v8 >> 59) & 0x1E | (v8 >> 2) & 1;
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_10001114C(v8);

        *(v1 + 116) = v15;
        *(v1 + 120) = 0;
      }

      else if (v9 == 11)
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_10001114C(v8);

        *(v1 + 152) = v17;
        *(v1 + 160) = 0;
      }

      else
      {
        if (v9 != 17 || v8 != 0x8000000000000054)
        {
          goto LABEL_23;
        }

        sub_10001114C(0x8000000000000054);

        *(v1 + 152) = 0;
        *(v1 + 160) = 1;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          v12 = *v5;

          v14 = sub_1000CE5E4(v13);

          sub_10001114C(v12);

          *(v1 + 128) = v14;
          break;
        case 3:
          v16 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_10001114C(v8);

          *(v1 + 136) = v16;
          *(v1 + 140) = 0;
          break;
        case 4:
          v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_10001114C(v8);

          *(v1 + 144) = v10;
          *(v1 + 148) = 0;
          return result;
        default:
LABEL_23:
          sub_10001114C(v8);
      }
    }
  }

  return result;
}

__n128 sub_1001E9810(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4)
  {
    v5 = a4;
    v6 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v6;
    *(v68 + 11) = *(v4 + 75);
    v7 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v7;
    sub_10001123C(a1, a2, a3, a4);
    sub_1001CD5DC(&v65);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = v5;
    *(v4 + 48) = 0;
LABEL_3:
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    v12 = 96;
    goto LABEL_4;
  }

  if ((~a1 & 0xF000000000000007) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x11)
  {
    if (a1 == 0x800000000000001CLL)
    {
      v13 = 1;
    }

    else
    {
      if (a1 != 0x8000000000000024)
      {
        goto LABEL_13;
      }

      v13 = 0;
    }

    *(v4 + 91) = v13;
  }

LABEL_13:
  v14 = *(v4 + 96);
  if (!v14)
  {
    v17 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v17;
    *(v68 + 11) = *(v4 + 75);
    v18 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v18;
    sub_1001CD5DC(&v65);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v4 + 40) = xmmword_1004E12C0;
    goto LABEL_3;
  }

  if ((*(v4 + 112) & 1) == 0)
  {
    v19 = *(v4 + 104);
    v20 = *(v4 + 8);
    v21 = *(v4 + 91);
    v22 = *(v4 + 116);
    v23 = *(v4 + 128);
    v24 = *(v4 + 136);
    v25 = *(v4 + 144);
    v26 = *(v4 + 152);
    v27 = *(v4 + 160);
    v41 = *(v4 + 120);
    v40 = *(v4 + 140);
    v39 = *(v4 + 148);
    v38 = *(v4 + 161);
    *&v42 = *v4;
    DWORD2(v42) = v20;
    *&v43 = v14;
    *(&v43 + 1) = v19;
    LODWORD(v44) = v22;
    BYTE4(v44) = v41;
    v45 = v23;
    v46.i32[0] = v24;
    v46.i8[4] = v40;
    v46.i32[2] = v25;
    v46.i8[12] = v39;
    v47 = v26;
    LOBYTE(v48) = v27;
    HIBYTE(v48) = v38;
    v49 = v21;
    v50 = v42;
    v51 = v20;
    v52 = v14;
    v53 = v19;
    v54 = v22;
    v55 = v41;
    v56 = v23;
    v57 = v24;
    v58 = v40;
    v59 = v25;
    v60 = v39;
    v61 = v26;
    v62 = v27;
    v63 = v38;
    v64 = v21;

    sub_1000CB914(&v42, &v65);
    sub_1000CB970(&v50);
    v28 = v45;
    v29 = v47;
    v30 = v44 & 0x1FFFFFFFFLL;
    v31 = v48 & 0x1FF;
    v32 = (v48 | (v49 << 16)) & 0x1FFFF | 0x400000;
    v33 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v33;
    *(v68 + 11) = *(v4 + 75);
    v34 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v34;
    v36 = v42;
    v37 = vandq_s8(v46, vdupq_n_s64(0x1FFFFFFFFuLL));
    v35 = v43;
    sub_1001CD5DC(&v65);
    *(v4 + 16) = v36;
    *(v4 + 32) = v35;
    *(v4 + 48) = v30;
    *(v4 + 56) = v28;
    result = v37;
    *(v4 + 64) = v37;
    *(v4 + 80) = v29;
    *(v4 + 90) = BYTE2(v32);
    *(v4 + 88) = v31;
    return result;
  }

  v15 = *(v4 + 64);
  v67 = *(v4 + 48);
  v68[0] = v15;
  *(v68 + 11) = *(v4 + 75);
  v16 = *(v4 + 32);
  v65 = *(v4 + 16);
  v66 = v16;
  sub_1001CD5DC(&v65);
  *(v4 + 16) = 1;
  result.n128_u64[0] = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v12 = 0x80;
LABEL_4:
  *(v4 + 90) = v12;
  *(v4 + 88) = 0;
  return result;
}

uint64_t sub_1001E9AFC(int8x16_t *a1, uint64_t a2)
{
  v3 = a1->i64[0];
  v4 = a1[4].u8[10];
  v5 = v4 >> 5;
  if (v5 <= 1)
  {
    if (v4 >> 5)
    {
      if (((*(a2 + 74) << 16) & 0xE00000) != 0x200000)
      {
        goto LABEL_36;
      }
    }

    else if (((*(a2 + 74) << 16) & 0xE00000) != 0)
    {
      goto LABEL_36;
    }

    v17 = v3 == *a2;
  }

  else
  {
    v6 = a1->i64[1];
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4].i64[0];
    v11 = a1[4].u16[4] | (a1[4].u8[10] << 16);
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (((*(a2 + 74) << 16) & 0xE00000) == 0x600000)
        {
          v12 = *(a2 + 24);
          if (v7.i8[8] == -1)
          {
            if (v12 == 255)
            {
LABEL_35:
              v17 = 1;
              return v17 & 1;
            }
          }

          else if (v12 != 255)
          {
            if (v7.i8[8])
            {
              if (v7.u8[8] == 1)
              {
                if (v12 != 1)
                {
                  goto LABEL_36;
                }
              }

              else if (v12 != 2)
              {
                goto LABEL_36;
              }
            }

            else if (*(a2 + 24))
            {
              goto LABEL_36;
            }

            if (static ResponseText.__derived_struct_equals(_:_:)(v3, v6))
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v18 = v7.i64[0] | v6;
        v19 = v7.i64[1];
        v20 = vorrq_s8(v9, v8);
        if (v10 | *&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v18 | v19 | v3 || v11 != 0x800000)
        {
          v23 = *(a2 + 72) | (*(a2 + 74) << 16);
          if ((v23 & 0xE00000) == 0x800000 && v23 == 0x800000 && *a2 == 1)
          {
            v24 = vorrq_s8(vorrq_s8(*(a2 + 8), *(a2 + 40)), vorrq_s8(*(a2 + 24), *(a2 + 56)));
            if (!*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v21 = *(a2 + 72) | (*(a2 + 74) << 16);
          if ((v21 & 0xE00000) == 0x800000 && v21 == 0x800000)
          {
            v22 = vorrq_s8(vorrq_s8(*(a2 + 8), *(a2 + 40)), vorrq_s8(*(a2 + 24), *(a2 + 56)));
            if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *a2))
            {
              goto LABEL_35;
            }
          }
        }
      }

LABEL_36:
      v17 = 0;
      return v17 & 1;
    }

    v30[0] = v3;
    v30[1] = v6;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    v34 = v10;
    v35 = v11;
    v36 = BYTE2(v11) & 0x1F;
    v13 = *(a2 + 72) | (*(a2 + 74) << 16);
    if ((v13 & 0xE00000) != 0x400000)
    {
      goto LABEL_36;
    }

    v14 = *(a2 + 64);
    v15 = *(a2 + 16);
    v26[0] = *a2;
    v26[1] = v15;
    v16 = *(a2 + 48);
    v26[2] = *(a2 + 32);
    v26[3] = v16;
    v27 = v14;
    v28 = v13;
    v29 = BYTE2(v13) & 0x1F;
    v17 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v26);
  }

  return v17 & 1;
}

uint64_t sub_1001E9D78(uint64_t result, unsigned __int8 *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_40:
    if (*(v6 + 34) != *(v4 + 136))
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
      return 0;
    }

    goto LABEL_43;
  }

LABEL_11:
  v8 = *(result + 64);
  v28[2] = *(result + 48);
  v29[0] = v8;
  *(v29 + 11) = *(result + 75);
  v9 = *(result + 32);
  v10 = result;
  v28[0] = *(result + 16);
  v28[1] = v9;
  v11 = *(a2 + 4);
  v26[2] = *(a2 + 3);
  v27[0] = v11;
  *(v27 + 11) = *(a2 + 75);
  v12 = *(a2 + 2);
  v26[0] = *(a2 + 1);
  v26[1] = v12;
  result = sub_1001E9AFC(v28, v26);
  if (result & 1) == 0 || ((*(v10 + 91) ^ a2[91]))
  {
    return 0;
  }

  v4 = v10;
  v6 = a2;
  v14 = *(v10 + 96);
  v15 = *(a2 + 12);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = sub_100083750(v14, v15);

    v4 = v10;
    v6 = a2;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v6[112];
  if (*(v4 + 112))
  {
    if (!v6[112])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 104) != *(v6 + 13))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v6[120];
  if (*(v4 + 120))
  {
    if (!v6[120])
    {
      return 0;
    }
  }

  else
  {
    if (*(v6 + 29) != *(v4 + 116))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(v4 + 128);
  v20 = *(v6 + 16);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = sub_1001B067C(v19, v20);

    v4 = v10;
    v6 = a2;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  LOBYTE(v7) = v6[140];
  if ((*(v4 + 140) & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!v6[140])
  {
    return 0;
  }

LABEL_43:
  v22 = v6[148];
  if (*(v4 + 148))
  {
    if (!v6[148])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 144) != *(v6 + 36))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v6[161];
  if (*(v4 + 161))
  {
    return (v23 & 1) != 0;
  }

  if (v6[161])
  {
    return 0;
  }

  v23 = v6[160];
  if (*(v4 + 160))
  {
    return (v23 & 1) != 0;
  }

  if (v6[160])
  {
    return 0;
  }

  v24 = *(v4 + 152);
  v25 = *(v6 + 19);
  if (((v25 | v24) & 0x8000000000000000) == 0)
  {
    return v25 == v24;
  }

  __break(1u);
  return result;
}

__n128 sub_1001E9FE8()
{
  v1 = *(v0 + 96);
  if (v1 && (*(v0 + 112) & 1) == 0)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 8);
    v7 = *(v0 + 91);
    v8 = *(v0 + 116);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v27 = *(v0 + 120);
    v26 = *(v0 + 140);
    v25 = *(v0 + 148);
    v24 = *(v0 + 161);
    *&v28 = *v0;
    DWORD2(v28) = v6;
    *&v29 = v1;
    *(&v29 + 1) = v5;
    LODWORD(v30) = v8;
    BYTE4(v30) = v27;
    v31 = v9;
    v32.i32[0] = v10;
    v32.i8[4] = v26;
    v32.i32[2] = v11;
    v32.i8[12] = v25;
    v33 = v12;
    LOBYTE(v34) = v13;
    HIBYTE(v34) = v24;
    v35 = v7;
    v36 = v28;
    v37 = v6;
    v38 = v1;
    v39 = v5;
    v40 = v8;
    v41 = v27;
    v42 = v9;
    v43 = v10;
    v44 = v26;
    v45 = v11;
    v46 = v25;
    v47 = v12;
    v48 = v13;
    v49 = v24;
    v50 = v7;

    sub_1000CB914(&v28, &v51);
    sub_1000CB970(&v36);
    v14 = v31;
    v15 = v33;
    v16 = v30 & 0x1FFFFFFFFLL;
    v17 = v34 & 0x1FF;
    v18 = (v34 | (v35 << 16)) & 0x1FFFF | 0x400000;
    v19 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v19;
    *(v54 + 11) = *(v0 + 75);
    v20 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v20;
    v22 = v28;
    v23 = vandq_s8(v32, vdupq_n_s64(0x1FFFFFFFFuLL));
    v21 = v29;
    sub_1001CD5DC(&v51);
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    *(v0 + 48) = v16;
    *(v0 + 56) = v14;
    result = v23;
    *(v0 + 64) = v23;
    *(v0 + 80) = v15;
    *(v0 + 90) = BYTE2(v18);
    *(v0 + 88) = v17;
  }

  else
  {
    v2 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v2;
    *(v54 + 11) = *(v0 + 75);
    v3 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v3;
    sub_1001CD5DC(&v51);
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v0 + 40) = xmmword_1004E12C0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 90) = 96;
    *(v0 + 88) = 0;
  }

  return result;
}

double sub_1001EA1F4@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0x800000;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 116) = 0;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 140) = 1;
  *(a3 + 144) = 0;
  *(a3 + 148) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 256;
  return result;
}

uint64_t sub_1001EA264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EA2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1001EA32C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001EA350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0x80000000 | (*(a1 + 32) >> 33);
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

double sub_1001EA3B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 33;
      result = 0.0;
      *(a1 + 40) = xmmword_1004E12D0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 71) = 0;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001EA428(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = a1 + 72;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

int8x16_t sub_1001EA444(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    v4 = *(a1 + 72);
    v3 = a1 + 72;
    v5 = (v4 | (*(v3 + 2) << 16)) & 0x101FF;
    *(v3 - 40) &= 0x1FFFFFFFFuLL;
    result = vandq_s8(*(v3 - 24), vdupq_n_s64(0x1FFFFFFFFuLL));
    *(v3 - 24) = result;
    *v3 = v5;
    *(v3 + 2) = (v5 | (a2 << 21)) >> 16;
  }

  else
  {
    *a1 = a2 - 4;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 74) = 0x80;
    *(a1 + 72) = 0;
  }

  return result;
}

uint64_t sub_1001EA4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EA514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1001EA560(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 24) = -a2;
  }

  return result;
}

uint64_t sub_1001EA59C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDF74(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1001EA660@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDF88(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s19CommandOutputBufferV7ElementOMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1001EE34C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001EA780@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDFD4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1001EA844@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDF60(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    result = memmove(v9 + 2, v9 + 5, 48 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void MailboxesSelectionUsage.subscript.getter(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = a2 + 16;
  v4 = v3 + 1;
  while (--v4)
  {
    v5 = *(v2 + 16);
    v2 += 40;
    if (v5 == a1)
    {

      return;
    }
  }
}

char *MailboxesSelectionUsage.sortedIdleConnections(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    v41 = v2;
    sub_1001D604C(0, v2, 0);
    v6 = v41;
    v7 = 0;
    v8 = a1 + 32;
    v9 = _swiftEmptyArrayStorage;
    v10 = (a2 + 32);
    v11 = *(a2 + 16) + 1;
    do
    {
      v12 = *(v8 + 4 * v7);
      v13 = v11;
      v14 = v10;
      while (--v13)
      {
        v15 = v14 + 10;
        v16 = *v14;
        v14 += 10;
        if (v16 == v12)
        {
          v17 = *(v15 - 8);
          v18 = *(v15 - 2);
          goto LABEL_8;
        }
      }

      v18 = 0;
      v17 = 1;
LABEL_8:
      v42 = v9;
      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v23 = v8;
        sub_1001D604C((v19 > 1), v20 + 1, 1);
        v8 = v23;
        v6 = v41;
        v9 = v42;
      }

      *(v9 + 2) = v21;
      v22 = &v9[32 * v20];
      *(v22 + 4) = v7;
      *(v22 + 10) = v12;
      *(v22 + 6) = v18;
      v22[56] = v17;
      ++v7;
    }

    while (v7 != v6);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  v24 = (v9 + 56);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v28 = *(v24 - 1);
    v29 = *v24;
    if (v29 != 1 || v28 == 0)
    {
      v31 = *(v24 - 3);
      v32 = *(v24 - 4);
      v42 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001D604C(0, *(v3 + 2) + 1, 1);
        v3 = v42;
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_1001D604C((v25 > 1), v26 + 1, 1);
        v3 = v42;
      }

      *(v3 + 2) = v26 + 1;
      v27 = &v3[32 * v26];
      *(v27 + 4) = v31;
      *(v27 + 10) = v32;
      *(v27 + 6) = v28;
      v27[56] = v29;
    }

    v24 += 32;
    --v21;
  }

  while (v21);
LABEL_25:

  v42 = v3;

  sub_1001EB58C(&v42);

  v33 = v42;
  v34 = *(v42 + 2);
  if (v34)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100091B88(0, v34, 0);
    v35 = v42;
    v36 = *(v42 + 2);
    v37 = 40;
    do
    {
      v38 = *&v33[v37];
      v42 = v35;
      v39 = *(v35 + 3);
      if (v36 >= v39 >> 1)
      {
        sub_100091B88((v39 > 1), v36 + 1, 1);
        v35 = v42;
      }

      *(v35 + 2) = v36 + 1;
      *&v35[4 * v36 + 32] = v38;
      v37 += 32;
      ++v36;
      --v34;
    }

    while (v34);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v35;
}

BOOL static MailboxSelectionUsage.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

BOOL static MailboxSelectionUsage.__derived_enum_less_than(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 < a3;
    }

    v4 = 1;
LABEL_17:
    v6 = 2;
    if (a3 != 1)
    {
      v6 = 3;
    }

    if (!a3)
    {
      v6 = 0;
    }

    return v4 < v6;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 2;
      if ((a4 & 1) != 0 && a3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v4 = 3;
      if ((a4 & 1) != 0 && a3 > 1)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((a4 & 1) != 0 && !a3)
    {
      return 0;
    }
  }

  if (a4)
  {
    goto LABEL_17;
  }

  v6 = 1;
  return v4 < v6;
}

BOOL sub_1001EADD0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 < v3;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v3 != 1)
        {
          v8 = 3;
        }

        if (v3)
        {
          v3 = v8;
        }

        return v5 < v3;
      }

      return 0;
    }

    if (v3 > 1)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 0;
    }

    v5 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      return 0;
    }

    v5 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v5 < v3;
}

BOOL sub_1001EAE84(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v3 >= v2;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v2 != 1)
        {
          v8 = 3;
        }

        if (v2)
        {
          v2 = v8;
        }

        return v5 >= v2;
      }

      return 1;
    }

    if (v2 > 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    v5 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      return 1;
    }

    v5 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v5 >= v2;
}

BOOL sub_1001EAF40(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 >= v3;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v3 != 1)
        {
          v8 = 3;
        }

        if (v3)
        {
          v3 = v8;
        }

        return v5 >= v3;
      }

      return 1;
    }

    if (v3 > 1)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    v5 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      return 1;
    }

    v5 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v5 >= v3;
}

BOOL sub_1001EAFFC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v3 < v2;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v2 != 1)
        {
          v8 = 3;
        }

        if (v2)
        {
          v2 = v8;
        }

        return v5 < v2;
      }

      return 0;
    }

    if (v2 > 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 0;
    }

    v5 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      return 0;
    }

    v5 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v5 < v2;
}

BOOL sub_1001EB0B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

BOOL sub_1001EB118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1001EE3B0(v5, v7);
}

uint64_t Action.UnreadCountOutsideWindowOfInterest.Count.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MailboxesSelectionUsage.min.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = (a1 + 64);
    v2 = 1;
    v3 = *(a1 + 16);
    result = 2;
    while (1)
    {
      v8 = *(v1 - 1);
      if (*v1 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            if ((v2 & (result == 1)) == 0)
            {
              v5 = 2;
LABEL_27:
              if (v2)
              {
                goto LABEL_4;
              }

LABEL_30:
              v6 = 1;
              goto LABEL_9;
            }

            result = 1;
            v2 = 1;
          }

          else
          {
            if ((v2 & (result > 1)) != 1)
            {
              v5 = 3;
              if ((v2 & 1) == 0)
              {
                goto LABEL_30;
              }

LABEL_4:
              if (result == 1)
              {
                v6 = 2;
              }

              else
              {
                v6 = 3;
              }

              if (!result)
              {
                v6 = 0;
              }

LABEL_9:
              v7 = v5 < v6;
              goto LABEL_10;
            }

            v2 = 1;
            result = 2;
          }
        }

        else
        {
          v5 = 0;
          if ((v2 & (result == 0)) == 0)
          {
            goto LABEL_27;
          }

          v2 = 1;
          result = 0;
        }
      }

      else
      {
        if (v2)
        {
          v5 = 1;
          goto LABEL_4;
        }

        if (v8 != result)
        {
          v7 = v8 < result;
LABEL_10:
          if (v7)
          {
            result = *(v1 - 1);
            v2 = *v1;
          }

          goto LABEL_12;
        }

        v2 = 0;
      }

LABEL_12:
      v1 += 40;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return 0;
}

char *MailboxesSelectionUsage.allConnections.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 40;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v4 = *(v2 - 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1001EC450(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1001EC450((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[4 * v6 + 32] = v4;
    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

Swift::Int MailboxesSelectionUsage.subscript.setter(Swift::Int result, int a2, uint64_t a3, char a4, int a5)
{
  v10 = result;
  v11 = *v5;
  v12 = *(*v5 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (*&v11[v13 + 32] != a5)
    {
      ++v14;
      v13 += 40;
      if (v12 == v14)
      {
        goto LABEL_5;
      }
    }

    if (result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1001EDFD4(v11);
      }

      if (v14 >= *(v11 + 2))
      {
        __break(1u);
      }

      else
      {
        v18 = &v11[v13];
        *(v18 + 7) = a3;
        v18[64] = a4 & 1;
        *v5 = v11;
      }
    }

    else
    {
      sub_1001EA780(v14, v19);
      return sub_1001EE104(v19);
    }
  }

  else
  {
LABEL_5:
    if (result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1001EC554(0, v12 + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1001EC554((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      *(v17 + 8) = a5;
      *(v17 + 5) = v10;
      *(v17 + 12) = a2;
      *(v17 + 7) = a3;
      v17[64] = a4 & 1;
      *v5 = v11;
      return sub_1001EB5F8(v5);
    }
  }

  return result;
}

unsigned __int8 *sub_1001EB58C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EE038(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001EC810(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001EB5F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDFD4(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 6))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = *(v12 + 5);
          result = v12[48];
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 6) = v14;
          *(v12 - 2) = v15;
          *(v12 - 2) = v16;
          *v12 = v17;
          v12[8] = result;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_1001ED2F0(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void (*MailboxesSelectionUsage.subscript.modify(uint64_t *a1, int a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 28) = a2;
  MailboxesSelectionUsage.subscript.getter(a2, *v2);
  *v6 = v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = v9;
  *(v6 + 24) = v10;
  return sub_1001EB7FC;
}

void sub_1001EB7FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v7 = *(v2 + 7);
  if (a2)
  {

    MailboxesSelectionUsage.subscript.setter(v8, v4, v5, v6, v7);
  }

  else
  {
    MailboxesSelectionUsage.subscript.setter(v3, v2[1], v2[2], *(v2 + 24), *(v2 + 7));
  }

  free(v2);
}

uint64_t MailboxesSelectionUsage.subscript.getter(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = a3 + 32 + 40 * v4;
    if ((*(v5 + 16) | (*(v5 + 16) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 8);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 24);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_3;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 24);
    }
  }

  __break(1u);
  return result;
}

void MailboxesSelectionUsage.removing<A>(notContainedIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;

  v8 = MailboxesSelectionUsage.allConnections.getter(a2);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 2))
    {
      v11 = v10 + 1;
      v12 = *&v8[4 * v10 + 32];
      sub_1001EBA20(&v12, &v13, a1, a3, a4);
      v10 = v11;
      if (v9 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_1001EBA20(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  MailboxesSelectionUsage.subscript.getter(*a1, *a2);
  if (v7)
  {
    if ((v10 & 1) != 0 && v9 >= 2)
    {
    }

    else
    {
      v16 = v7;
      v17 = v8;
      sub_1001EE47C();
      v11 = sub_1004A5BB4();

      if ((v11 & 1) == 0)
      {
        v12 = *(*a2 + 16);
        if (v12)
        {
          v13 = 0;
          v14 = (*a2 + 32);
          while (1)
          {
            v15 = *v14;
            v14 += 10;
            if (v15 == v6)
            {
              break;
            }

            if (v12 == ++v13)
            {
              return;
            }
          }

          sub_1001EA780(v13, &v16);
          sub_1001EE104(&v16);
        }
      }
    }
  }
}

char *sub_1001EBB14(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001EBC5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D35D8, &qword_1004DD1C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001EBD7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001EBE88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D4A98, &unk_1004E2A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D4AA0, &qword_1004E8AD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001EBFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4A88, &unk_1004E2A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001EC0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001EC274(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1001EC450(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF528, &qword_1004E2A50);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001EC554(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4640, &qword_1004E05D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001EC670(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4AB0, &qword_1004E2AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001EC78C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D4678, &qword_1004E2AA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unsigned __int8 *sub_1001EC810(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C9C0(&qword_1005D4A80, &qword_1004E2A58);
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001ECA80(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001EC918(0, v2, 1, a1);
  }

  return result;
}