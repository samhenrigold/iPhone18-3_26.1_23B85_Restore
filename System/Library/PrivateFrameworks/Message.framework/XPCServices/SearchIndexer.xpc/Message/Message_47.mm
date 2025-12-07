uint64_t sub_100300500(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = *v1;
  v5 = *(*v1 + 24);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*v1 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003023B8(isUniquelyReferenced_nonNull_native, v6, 0);
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_100302CE0(*v1 + 16, *v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3);
  }

  return result;
}

__n128 ServerResponseFramingParser.init()@<Q0>(uint64_t a1@<X8>)
{
  FramingParser.init(bufferSizeLimit:)(6000000, v8);
  sub_100303CD4(v9);
  v2 = v9[5];
  *(a1 + 128) = v9[4];
  *(a1 + 144) = v2;
  v3 = v10;
  v4 = v9[1];
  *(a1 + 64) = v9[0];
  *(a1 + 80) = v4;
  v5 = v9[3];
  *(a1 + 96) = v9[2];
  *(a1 + 112) = v5;
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = result;
  *(a1 + 160) = v3;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1003006C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5A64();
  result = sub_1002F2764(v6, a1, a2);
  if (v9)
  {
    v10 = *(a3 + 40);
    v11 = __CFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(a3 + 40) = v12;
      return v8;
    }

    __break(1u);
  }

  else
  {
    v13 = *(a3 + 48);
    v11 = __CFADD__(v13, 1);
    v14 = v13 + 1;
    if (!v11)
    {
      *(a3 + 48) = v14;

      sub_1002F284C(v6, a1, a2);
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003007AC(char *a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  __chkstk_darwin(v5);
  if (a1)
  {
    v6 = &a1[a2];
  }

  else
  {
    v6 = 0;
  }

  FramingParser.appendAndFrameBytes(_:)(a1, v6);
  sub_100300990(v7, v8);
}

void sub_100300990(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v32 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v36 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return;
  }

  v9 = (a1 + 56);
  v6.n128_u64[0] = 68157955;
  v30 = v6;
  v31 = xmmword_1004DB2C0;
  v29 = v3;
  v34 = v5;
  while (1)
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        *(v3 + 168) = v10;
        *(v3 + 176) = 0;
      }

      else
      {
        v38 = *(v9 - 3);
        v39 = v11;
        v40 = v12;
        v41 = WORD2(v12);
        v42 = BYTE6(v12);
        sub_100300FA4(&v38);
        *(v3 + 168) = 0;
        *(v3 + 176) = 1;
      }

      goto LABEL_4;
    }

    v14 = *v9;
    if (v13 != 2)
    {
      break;
    }

    v38 = *(v9 - 3);
    v39 = v11;
    v40 = v12;
    v41 = WORD2(v12);
    v42 = BYTE6(v12);
    sub_100300FA4(&v38);
    *(v3 + 168) = v14 & ~(v14 >> 63);
    *(v3 + 176) = v14 < 0;
LABEL_4:
    v9 += 4;
    if (!--v8)
    {
      return;
    }
  }

  v37 = HIDWORD(v12);
  swift_beginAccess();
  v33 = *(v10 + 24);
  sub_1003041C4(v10, v11, v12);
  v35 = v14;
  sub_1003041C4(v10, v11, v12);
  if (qword_1005D7D18 != -1)
  {
    swift_once();
  }

  v15 = sub_1004A4A74();
  sub_1001C203C(v15, qword_1005DE260);
  v16 = sub_1004A4A54();
  v17 = sub_1004A6024();
  if (!os_log_type_enabled(v16, v17))
  {
LABEL_16:

    sub_1003041D8();
    v22 = swift_allocError();
    *v23 = v31;
    *(v23 + 16) = 3;
    v24 = v36;
    *v36 = v22;
    v24[1] = v10;
    v24[2] = v11;
    *(v24 + 30) = BYTE6(v12);
    *(v24 + 14) = v37;
    *(v24 + 6) = v12;
    swift_storeEnumTagMultiPayload();
    v25 = *(v3 + 184);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1002FAE44(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1002FAE44((v26 > 1), v27 + 1, 1, v25);
    }

    sub_10030422C(v10, v11, v12);
    sub_10030422C(v10, v11, v12);
    v25[2] = v27 + 1;
    sub_1003026F8(v36, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for ServerResponseFramingParser.Frame);
    *(v3 + 184) = v25;
    goto LABEL_4;
  }

  v18 = HIDWORD(v11) - v11;
  v19 = swift_slowAlloc();
  *v19 = v30.n128_u32[0];
  if (v18 >= 0xFFFFFFFF80000000)
  {
    if (v18 > 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    v20 = (BYTE6(v12) | (v37 << 8)) + v11;
    *(v19 + 4) = v18;
    v21 = v33 + v20;
    *(v19 + 8) = 2101;
    *(v19 + 10) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received invalid data frame from server: %{sensitive}.*P", v19, 0x12u);

    v3 = v29;
    goto LABEL_16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t ServerResponseFramingParser.append(_:)(const void *a1, const void *a2, __n128 a3)
{
  v5 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  __chkstk_darwin(v5);
  FramingParser.appendAndFrameBytes(_:)(a1, a2);
  sub_100300990(v6, v7);
}

uint64_t sub_100300FA4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D4788, &qword_1004F4BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v42 = type metadata accessor for ResponseOrContinuationRequest(0);
  v47 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D8568, &qword_1004F4BD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v50 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v40 - v14;
  v15 = *a1;
  v16 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = *(a1 + 4);
  v19 = *(a1 + 10);
  v20 = *(a1 + 22);
  v21 = *(v2 + 144);
  v43 = v2 + 144;
  if (v21)
  {
    v22 = *(v2 + 166);
    v23 = *(v2 + 164);
    v24 = *(v2 + 160);
    v25 = *(v2 + 152);
    v60 = v21;
    v61 = v25;
    v62 = v24;
    v63 = v23;
    v64 = v22;
    v54 = v15;
    v55 = v16;
    v56 = v17;
    v57 = v18;
    v58 = v19;
    v59 = v20;
    ByteBuffer.writeBuffer(_:)(&v54);
    v18 = v62;
    v19 = v63;
    v20 = v64;
    v15 = v60;
    v26 = v61;
    v27 = v62 | (v63 << 32) | (v64 << 48);
  }

  else
  {
    v26 = v16 | (v17 << 32);
    v27 = v18 | (v19 << 32) | (v20 << 48);
  }

  *(v2 + 144) = v15;
  *(v2 + 152) = v26;
  *(v2 + 160) = v27;
  *(v2 + 166) = BYTE6(v27);
  v53 = v2;
  *(v2 + 164) = WORD2(v27);
  if (v15)
  {
    v48 = v43 - 80;
    v49 = (v11 + 56);
    v41 = v47 + 6;
    v44 = v11;
    v45 = v6;
    v47 = (v11 + 48);
    while (1)
    {
      v60 = v15;
      v61 = v26;
      v62 = v18;
      v63 = v19;
      v64 = v20;

      ResponseParser.parseResponseStream(buffer:)(&v60, v6);
      if ((*v41)(v6, 1, v42) == 1)
      {
        sub_100025F40(v6, &qword_1005D4788, &qword_1004F4BD0);
        v28 = v50;
        v29 = *v49;
        v30 = v10;
        v31 = 1;
      }

      else
      {
        v32 = v40;
        sub_1003026F8(v6, v40, type metadata accessor for ResponseOrContinuationRequest);
        sub_1003026F8(v32, v10, type metadata accessor for ResponseOrContinuationRequest);
        v28 = v50;
        swift_storeEnumTagMultiPayload();
        v29 = *v49;
        v30 = v10;
        v31 = 0;
      }

      v46 = v29;
      v29(v30, v31, 1, v28);

      if (v61 == HIDWORD(v26))
      {

        v15 = 0;
        v26 = 0;
        v33 = 0;
      }

      else
      {
        v26 = v26 & 0xFFFFFFFF00000000 | v61;
        v33 = v18 | (v19 << 32) | (v20 << 48);
      }

      v34 = v53;
      *(v53 + 144) = v15;
      *(v34 + 152) = v26;
      *(v34 + 160) = v33;
      *(v34 + 166) = BYTE6(v33);
      v18 = v33;
      v19 = WORD2(v33);
      v20 = BYTE6(v33);
      *(v34 + 164) = WORD2(v33);
      if ((*v47)(v10, 1, v28) == 1)
      {
        break;
      }

      v35 = v51;
      sub_1003026F8(v10, v51, type metadata accessor for ServerResponseFramingParser.Frame);
      sub_100304240(v35, v52, type metadata accessor for ServerResponseFramingParser.Frame);
      v36 = *(v34 + 184);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1002FAE44(0, v36[2] + 1, 1, v36);
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1002FAE44((v37 > 1), v38 + 1, 1, v36);
      }

      sub_1003042A8(v51, type metadata accessor for ServerResponseFramingParser.Frame);
      v36[2] = v38 + 1;
      sub_1003026F8(v52, v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, type metadata accessor for ServerResponseFramingParser.Frame);
      *(v53 + 184) = v36;
      v6 = v45;
      if (!v15)
      {
        v46(v10, 1, 1, v50);
        return sub_100025F40(v10, &qword_1005D8568, &qword_1004F4BD8);
      }
    }
  }

  else
  {
    (*(v11 + 56))(v10, 1, 1, v50);
  }

  return sub_100025F40(v10, &qword_1005D8568, &qword_1004F4BD8);
}

uint64_t ServerResponseFramingParser.popAllFrames()()
{
  result = *(v0 + 184);
  *(v0 + 184) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100301600@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(v2, v6, type metadata accessor for ResponsePayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      *a1 = *v6;
      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(v6 + 8);
      }

LABEL_31:
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload > 8)
    {
      v10 = *(v6 + 2);
      v11 = v6[24];
      *a1 = *v6;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v49 = type metadata accessor for ResponsePayload;
LABEL_46:
    sub_1003042A8(v6, v49);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *v6;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for MessageData(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 < 1)
    {
      *a1 = *v6;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v9 <= 1 || v9 == 2)
    {
      sub_100025FDC(v6, a1, &unk_1005D91B0, &unk_1004CF400);
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v49 = type metadata accessor for MessageData;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    v12 = *(v6 + 5);
    v13 = *(v6 + 7);
    v55 = *(v6 + 6);
    v56 = v13;
    v14 = *(v6 + 7);
    v57 = *(v6 + 8);
    v15 = *(v6 + 1);
    v16 = *(v6 + 3);
    v51 = *(v6 + 2);
    v52 = v16;
    v17 = *(v6 + 3);
    v18 = *(v6 + 5);
    v53 = *(v6 + 4);
    v54 = v18;
    v19 = *(v6 + 1);
    v50[0] = *v6;
    v50[1] = v19;
    v58[6] = v55;
    v58[7] = v14;
    v58[8] = *(v6 + 8);
    v58[2] = v51;
    v58[3] = v17;
    v58[4] = v53;
    v58[5] = v12;
    v58[0] = v50[0];
    v58[1] = v15;
    v20 = sub_1003045D0(v58);
    v21 = sub_1003045DC(v58);
    if (v20 <= 4)
    {
      if (v20 <= 1)
      {
        if (v20)
        {
          v41 = *(v21 + 16);
          v42 = *(v21 + 20);
          v43 = *(v21 + 24);
          v44 = *(v21 + 32);
          *a1 = *v21;
          *(a1 + 16) = v41;
          *(a1 + 20) = v42;
          *(a1 + 24) = v43;
          *(a1 + 32) = v44;
        }

        else
        {
          v23 = sub_100303B80(*v21);
          sub_1003045EC(v50);
          *a1 = v23;
        }
      }

      else
      {
        if (v20 == 2)
        {
          v25 = *(v21 + 16);
          v26 = *(v21 + 20);
          v27 = *(v21 + 24);
          v28 = *(v21 + 32);
          *a1 = *v21;
          *(a1 + 16) = v25;
          *(a1 + 20) = v26;
          *(a1 + 24) = v27;
          *(a1 + 32) = v28;
          type metadata accessor for UntaggedResponse(0);
          return swift_storeEnumTagMultiPayload();
        }

        if (v20 == 3)
        {
          *a1 = *v21;
        }

        else
        {
          v35 = *(v21 + 32);
          v36 = *(v21 + 33);
          v37 = *(v21 + 40);
          v38 = *(v21 + 16);
          *a1 = *v21;
          *(a1 + 16) = v38;
          *(a1 + 32) = v35;
          *(a1 + 33) = v36;
          *(a1 + 40) = v37;
        }
      }

      goto LABEL_31;
    }

    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v24 = *(v21 + 16);
        *a1 = *v21;
        *(a1 + 16) = v24;
        type metadata accessor for UntaggedResponse(0);
      }

      else
      {
        if (v20 != 10)
        {
          while (1)
          {
            sub_1003045EC(v50);
LABEL_47:
            sub_1004A69A4();
            __break(1u);
          }
        }

        v45 = *(v21 + 16);
        v46 = *(v21 + 32);
        v47 = *(v21 + 40);
        v48 = *(v21 + 24);
        *a1 = *v21;
        *(a1 + 16) = v45;
        *(a1 + 24) = v48;
        *(a1 + 32) = v46;
        *(a1 + 40) = v47;
        type metadata accessor for UntaggedResponse(0);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (v20 == 5)
    {
      *a1 = *v21;
      v29 = *(v21 + 16);
      v30 = *(v21 + 32);
      v31 = *(v21 + 64);
      *(a1 + 48) = *(v21 + 48);
      *(a1 + 64) = v31;
      *(a1 + 16) = v29;
      *(a1 + 32) = v30;
      v32 = *(v21 + 80);
      v33 = *(v21 + 96);
      v34 = *(v21 + 128);
      *(a1 + 112) = *(v21 + 112);
      *(a1 + 128) = v34;
      *(a1 + 80) = v32;
      *(a1 + 96) = v33;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v20 == 6)
    {
      v22 = *v21;
      if (!HIDWORD(*v21))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v22 = *v21;
      if (!HIDWORD(*v21))
      {
LABEL_42:
        *a1 = v22;
        type metadata accessor for UntaggedResponse(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1003041D8();
    swift_allocError();
    *v39 = v22;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
    return swift_willThrow();
  }

  v8 = *(v6 + 2);
  *a1 = *v6;
  *(a1 + 16) = v8;
  type metadata accessor for UntaggedResponse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100301C28@<X0>(uint64_t a1@<X8>)
{
  *v15 = *(v1 + 16);
  *&v15[9] = *(v1 + 25);
  v3 = *&v15[8];
  v13 = *v15;
  v4 = *&v15[16];
  v5 = v15[24];
  v7 = *v1;
  v6 = *(v1 + 8);

  if (v15[24])
  {
    sub_100304640(v15, v14);
  }

  else
  {

    sub_100304640(v15, v14);
  }

  v8 = sub_100305384(v7, v6);
  if (v9)
  {
    sub_1003041D8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    swift_willThrow();
    sub_10001114C(v13);
  }

  else
  {
    v12 = v8;

    *a1 = v12;
    *(a1 + 4) = HIDWORD(v12);
    *(a1 + 8) = v13;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_100301D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Response(0);
  __chkstk_darwin(v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(a1, v6, type metadata accessor for Response);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_1003042A8(v6, type metadata accessor for Response);
      v19 = 0x6C61746166;
      v20 = 0xE500000000000000;
      goto LABEL_30;
    }

    if (result != 4)
    {
      v19 = 0x72617453656C6469;
      v20 = 0xEB00000000646574;
      goto LABEL_30;
    }

    result = sub_1003042A8(v6, type metadata accessor for Response);
    v21 = 0x80000001004AE500;
    v22 = 0xD000000000000017;
    goto LABEL_49;
  }

  if (!result)
  {
    type metadata accessor for ResponsePayload(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
          v19 = 0x6465676761746E75;
          v20 = 0xEC00000029646928;
          goto LABEL_30;
        }

        result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
        v33 = "untagged(quotaRoot)";
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 7)
      {
        result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
        v19 = 0x6465676761746E75;
        v20 = 0xEF2961746F757128;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 8)
      {
        result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
        v21 = 0x80000001004AE5C0;
        v22 = 0xD000000000000012;
        goto LABEL_49;
      }

      result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
      v34 = "untagged(applePushService)";
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          *a2 = 0xD000000000000015;
          a2[1] = 0x80000001004AE640;
          return sub_1003042A8(v6, type metadata accessor for ResponsePayload);
        }

        if (EnumCaseMultiPayload == 3)
        {
          result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
          v21 = 0x80000001004AE620;
          v22 = 0xD000000000000018;
        }

        else
        {
          result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
          v21 = 0x80000001004AE600;
          v22 = 0xD000000000000014;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload)
      {
        result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
        v35 = "untagged(mailboxData)";
        goto LABEL_46;
      }

      result = sub_1003042A8(v6, type metadata accessor for ResponsePayload);
      v34 = "untagged(conditionalState)";
    }

    v21 = (v34 - 32) | 0x8000000000000000;
    v22 = 0xD00000000000001ALL;
    goto LABEL_49;
  }

  if (result != 1)
  {
    v24 = *(v6 + 1);
    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    v27 = *(v6 + 4);
    v28 = v6[40];
    if (v6[40])
    {
      *&v47[0] = *v6;
      *(&v47[0] + 1) = v24;
      if (v28 == 1)
      {

        v49._countAndFlagsBits = 5197344;
        v49._object = 0xE300000000000000;
        sub_1004A5994(v49);

        v29 = v26;
        v30 = v25;
        v31 = v27;
        v32 = 1;
      }

      else
      {

        v51._countAndFlagsBits = 1145127456;
        v51._object = 0xE400000000000000;
        sub_1004A5994(v51);

        v29 = v26;
        v30 = v25;
        v31 = v27;
        v32 = 2;
      }
    }

    else
    {
      *&v47[0] = *v6;
      *(&v47[0] + 1) = v24;

      v50._countAndFlagsBits = 4935456;
      v50._object = 0xE300000000000000;
      sub_1004A5994(v50);

      v29 = v26;
      v30 = v25;
      v31 = v27;
      v32 = 0;
    }

    result = sub_100173584(v29, v30, v31, v32);
    v20 = *(&v47[0] + 1);
    v19 = *&v47[0];
    goto LABEL_30;
  }

  v8 = *(v6 + 9);
  v9 = *(v6 + 7);
  v43 = *(v6 + 8);
  v44 = v8;
  v10 = *(v6 + 9);
  v45 = *(v6 + 10);
  v11 = *(v6 + 5);
  v12 = *(v6 + 3);
  v39 = *(v6 + 4);
  v40 = v11;
  v13 = *(v6 + 5);
  v14 = *(v6 + 7);
  v41 = *(v6 + 6);
  v42 = v14;
  v15 = *(v6 + 1);
  v36[0] = *v6;
  v36[1] = v15;
  v16 = *(v6 + 3);
  v18 = *v6;
  v17 = *(v6 + 1);
  v37 = *(v6 + 2);
  v38 = v16;
  v47[8] = v43;
  v47[9] = v10;
  v47[10] = *(v6 + 10);
  v47[4] = v39;
  v47[5] = v13;
  v47[6] = v41;
  v47[7] = v9;
  v47[0] = v18;
  v47[1] = v17;
  v46 = *(v6 + 88);
  v48 = *(v6 + 88);
  v47[2] = v37;
  v47[3] = v12;
  result = sub_1003043EC(v47);
  if (result > 3)
  {
    if (result == 4)
    {
      sub_1002F9BA4(v47);
      result = sub_100304408(v36);
      v35 = "fetch(streamingBytes)";
      goto LABEL_46;
    }

    if (result != 5)
    {
      v19 = 0x6966286863746566;
      v20 = 0xED0000296873696ELL;
      goto LABEL_30;
    }

    v33 = "fetch(streamingEnd)";
LABEL_48:
    v21 = (v33 - 32) | 0x8000000000000000;
    v22 = 0xD000000000000013;
    goto LABEL_49;
  }

  if (result < 2)
  {
    result = sub_1002F9BA4(v47);
    v19 = 0x7473286863746566;
    v20 = 0xEC00000029747261;
LABEL_30:
    *a2 = v19;
    a2[1] = v20;
    return result;
  }

  if (result != 2)
  {
    sub_1002F9BA4(v47);
    result = sub_100304408(v36);
    v35 = "fetch(streamingBegin)";
LABEL_46:
    v21 = (v35 - 32) | 0x8000000000000000;
    v22 = 0xD000000000000015;
    goto LABEL_49;
  }

  sub_1002F9BA4(v47);
  result = sub_100304408(v36);
  v21 = 0x80000001004AE580;
  v22 = 0xD000000000000016;
LABEL_49:
  *a2 = v22;
  a2[1] = v21;
  return result;
}

size_t sub_1003023B8(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = type metadata accessor for Response(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(*(v10 - 8) + 80);
    sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
    v17 = swift_allocObject();
    v21 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v21;
    if (v21 >= 1)
    {
      sub_100302A18(v17 + 16, v17 + ((v20 + 40) & ~v20), v8, v7 + ((v20 + 40) & ~v20));
    }

    goto LABEL_19;
  }

  sub_1004A47C4(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_100302760(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
  v22 = *(v12 + 72);
  v23 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v7 + 24);
    *(v17 + 16) = (result - v23) / v22;
    *(v17 + 24) = v25;
    *(v17 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1003028F4(v17 + 16, v17 + v23, v8, v7 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100302628(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Response(0);
        result = sub_100304240(a3, a2 + *(*(v10 - 8) + 72) * v5, type metadata accessor for Response);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1003026F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100302760(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1003028F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Response(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100302A18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Response(0);
  if (v5 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_100302B30()
{
  v1 = *v0;
  v2 = type metadata accessor for Response(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_10000C9C0(&qword_1005D8570, &qword_1004F4BE8);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_100302A18(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_100302CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = *(result + 16);
    result = v8 - a4;
    if (__OFADD__(v8, -a4))
    {
      __break(1u);
    }

    else
    {
      if (result < 0)
      {
        v9 = __OFADD__(result, *v7);
        result += *v7;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      v7[2] = result;
      v10 = v7[1];
      v9 = __OFADD__(v10, a4);
      v11 = v10 + a4;
      if (!v9)
      {
        v7[1] = v11;
        sub_100302ED0(result, v8, v7, a2, v12);
        return sub_100302D84(a3, a4);
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_100302D84(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      type metadata accessor for Response(0);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    type metadata accessor for Response(0);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  result = type metadata accessor for Response(0);
  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_100302ED0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = type metadata accessor for Response(0);
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = type metadata accessor for Response(0);
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100302FC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a3);
  v46 = WORD2(a4);
  v9 = BYTE6(a4);
  v10 = *v4;
  sub_1004A6E94();
  QuotaRoot.hash(into:)(v49, a2, a3, a4 & 0xFFFFFFFFFFFFFFLL);
  v11 = sub_1004A6F14();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  v47 = a4;
  v41 = a3;
  v39 = v8;
  v45 = v9;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = v10;
    v16 = ~v13;
    v17 = (v8 - a3);
    v43 = (v9 & 0xFFFFFFFFFF0000FFLL | (WORD2(a4) << 8)) + a3;
    v44 = v10 + 56;
    while (1)
    {
      v18 = 24 * v14;
      v19 = *(v15 + 48) + 24 * v14;
      v21 = *(v19 + 8);
      v20 = *(v19 + 12);
      if (v20 - v21 == v17)
      {
        v22 = v15;
        v23 = *v19;
        v24 = *(v19 + 20);
        v25 = *(v19 + 22);
        v26 = *(v19 + 16) == v47 && v24 == v46;
        v27 = v26 && v25 == v45;
        if (v27 && v23 == a2)
        {
          break;
        }

        v29 = v17;
        swift_beginAccess();
        v30 = *(v23 + 24) + (v25 | (v24 << 8));
        swift_beginAccess();
        v31 = memcmp((v30 + v21), (*(a2 + 24) + v43), v20 - v21);
        v17 = v29;
        v18 = 24 * v14;
        v12 = v44;
        v15 = v22;
        if (!v31)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v16;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v32 = *(v22 + 48) + v18;
    v33 = *(v32 + 16);
    v34 = *(v32 + 20);
    v35 = *(v32 + 22);
    *a1 = *v32;
    *(a1 + 8) = *(v32 + 8);
    *(a1 + 16) = v33;
    *(a1 + 20) = v34;
    *(a1 + 22) = v35;

    return 0;
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v40;

    sub_1003034F8(v38, v41, v47 & 0xFFFFFFFFFFFFFFLL, v14, isUniquelyReferenced_nonNull_native);
    *v40 = v48;
    *a1 = a2;
    *(a1 + 8) = v41;
    *(a1 + 12) = v39;
    *(a1 + 16) = v47;
    *(a1 + 20) = v46;
    *(a1 + 22) = v45;
    return 1;
  }
}

Swift::Int sub_100303240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  v4 = sub_1004A6694();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v33 = v1;
    v34 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    v35 = v3;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 12);
      v22 = *(v18 + 16);
      v23 = *(v18 + 20);
      v24 = *(v18 + 22);
      sub_1004A6E94();
      v37 = v37 & 0xFF00000000000000 | v22 | (v23 << 32) | (v24 << 48);
      QuotaRoot.hash(into:)(v38, v19, v21 | (v20 << 32), v37);
      result = sub_1004A6F14();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v19;
      *(v13 + 8) = v21;
      *(v13 + 12) = v20;
      *(v13 + 16) = v22;
      *(v13 + 20) = v23;
      *(v13 + 22) = v24;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1003034F8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = HIDWORD(a2);
  v35 = WORD2(a3);
  v36 = BYTE6(a3);
  v37 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  v31 = HIDWORD(a2);
  v32 = a2;
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  v34 = a3;
  if (a5)
  {
    sub_100303240(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_100303764();
      LODWORD(a3) = v34;
      goto LABEL_25;
    }

    sub_1003038E4(v9 + 1);
  }

  v11 = *v5;
  sub_1004A6E94();
  LODWORD(v12) = v34;
  QuotaRoot.hash(into:)(v38, v37, a2, v34 & 0xFFFFFFFFFFFFFFLL);
  result = sub_1004A6F14();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = a2;
    v15 = ~v13;
    v16 = v8 - a2;
    v33 = (v36 & 0xFFFFFFFFFF0000FFLL | (WORD2(v34) << 8)) + v14;
    LODWORD(a3) = v34;
    while (1)
    {
      v17 = *(v11 + 48) + 24 * a4;
      v19 = *(v17 + 8);
      v18 = *(v17 + 12);
      if (v18 - v19 == v16)
      {
        v12 = *v17;
        v20 = *(v17 + 20);
        v21 = *(v17 + 22);
        v22 = *(v17 + 16) == a3 && v20 == v35;
        v23 = v22 && v21 == v36;
        if (v23 && v12 == v37)
        {
          break;
        }

        swift_beginAccess();
        v12 = *(v12 + 24) + (v21 | (v20 << 8));
        swift_beginAccess();
        result = memcmp((v12 + v19), (*(v37 + 24) + v33), v18 - v19);
        LODWORD(a3) = v34;
        if (!result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v15;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    result = sub_1004A6E14();
    __break(1u);
  }

  LODWORD(a3) = v12;
LABEL_25:
  v25 = *v30;
  *(*v30 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v26 = *(v25 + 48) + 24 * a4;
  *v26 = v37;
  *(v26 + 8) = v32;
  *(v26 + 12) = v31;
  *(v26 + 16) = a3;
  *(v26 + 20) = v35;
  *(v26 + 22) = v36;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_100303764()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 20);
        v21 = *(v18 + 22);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 16) = v19;
        *(v22 + 20) = v20;
        *(v22 + 22) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003038E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8598, &unk_1004F4C10);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v31 = v1;
    v32 = (v8 + 63) >> 6;
    v11 = result + 56;
    v33 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 12);
      v21 = *(v17 + 16);
      v22 = *(v17 + 20);
      v23 = *(v17 + 22);
      sub_1004A6E94();
      v35 = v35 & 0xFF00000000000000 | v21 | (v22 << 32) | (v23 << 48);
      QuotaRoot.hash(into:)(v36, v18, v19 | (v20 << 32), v35);
      result = sub_1004A6F14();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 12) = v20;
      *(v13 + 16) = v21;
      *(v13 + 20) = v22;
      *(v13 + 22) = v23;
      ++*(v5 + 16);

      v3 = v33;
      v10 = v34;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v32)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100303B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002F97FC();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10008867C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100303C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_100304528();
  result = sub_1004A5D64();
  v9 = result;
  if (v3)
  {
    v5 = (a1 + 54);
    do
    {
      v6 = *(v5 - 14);
      v7 = *(v5 - 22);
      v1 = v1 & 0xFF00000000000000 | *(v5 - 6) | (*(v5 - 1) << 32) | (*v5 << 48);

      sub_100302FC0(v8, v7, v6, v1);

      v5 += 24;
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

__n128 sub_100303CD4@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ParsedStringCache();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F4980;
  sub_10000C9C0(&qword_1005D8470, &qword_1004F4BE0);
  v3 = sub_1004A5C64();
  *(v3 + 16) = 32;
  bzero((v3 + 32), 0x300uLL);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v3;
  v13[0] = xmmword_1004F4990;
  v13[1] = xmmword_1004F49A0;
  v14 = sub_100304308;
  v15 = v2;
  ResponseParser.init(options:)(v13, &v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v16 = v8;
  v17 = v9;
  *v21 = 0;
  *&v21[8] = 0;
  *&v21[15] = 0;
  v22[3] = v11;
  v22[4] = v12;
  v22[1] = v9;
  v22[2] = v10;
  v22[0] = v8;
  v23 = 0;
  v24[0] = 0;
  *(v24 + 7) = 0;
  sub_100304310(&v16, v7);
  sub_100304348(v22);
  v4 = *v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v4;
  *(a1 + 95) = *&v21[15];
  v5 = v17;
  *a1 = v16;
  *(a1 + 16) = v5;
  result = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100303E48(uint64_t a1)
{
  if ((*(a1 + 23) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 23) & 7;
  }
}

unint64_t sub_100303E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_100303E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100303EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100303F48(uint64_t a1, __n128 a2)
{
  type metadata accessor for ResponseOrContinuationRequest(319);
  if (v2 <= 0x3F)
  {
    sub_100303FD0(319);
    if (v3 <= 0x3F)
    {
      sub_100304058(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100303FD0(uint64_t a1)
{
  if (!qword_1005D8520)
  {
    sub_10000DEFC(&qword_1005D0460, &qword_1004D3CE0);
    sub_10000DEFC(&qword_1005D8528, &qword_1004F4B48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D8520);
    }
  }
}

void sub_100304058(uint64_t a1)
{
  if (!qword_1005D8530)
  {
    sub_10000DEFC(&qword_1005D0460, &qword_1004D3CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D8530);
    }
  }
}

__n128 sub_1003040CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003040F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 103))
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

uint64_t sub_100304140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 103) = 1;
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

    *(result + 103) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003041C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return result;
}

unint64_t sub_1003041D8()
{
  result = qword_1005D8560;
  if (!qword_1005D8560)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for ParseError, v0, v1);
    atomic_store(result, &qword_1005D8560);
  }

  return result;
}

uint64_t sub_10030422C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return v3;
}

uint64_t sub_100304240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003042A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100304398()
{
  result = qword_1005D8580;
  if (!qword_1005D8580)
  {
    result = swift_getWitnessTable("A\t", &type metadata for ServerResponseTranscoder.Error, v0, v1);
    atomic_store(result, &qword_1005D8580);
  }

  return result;
}

uint64_t sub_1003043EC(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t sub_1003044D4()
{
  result = qword_1005D8588;
  if (!qword_1005D8588)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for ServerResponseTranscoder.UnknownServerResponse, v0, v1);
    atomic_store(result, &qword_1005D8588);
  }

  return result;
}

unint64_t sub_100304528()
{
  result = qword_1005D8590;
  if (!qword_1005D8590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GmailLabel, &type metadata for GmailLabel, v0, v1);
    atomic_store(result, &qword_1005D8590);
  }

  return result;
}

uint64_t sub_10030469C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1003046B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1003046E4(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_100304700(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10030473C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 178))
  {
    return (*a1 + 3);
  }

  v3 = *(a1 + 176);
  if ((~(v3 >> 9) & 6) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = ~(v3 >> 9) & 7;
  }

  return (v4 + 1);
}

uint64_t sub_10030478C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (-512 * a2) & 0xE00;
    }
  }

  return result;
}

uint64_t sub_100304844(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100304914(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003049C4(uint64_t a1)
{
  sub_1002ED648();
  if (v1 <= 0x3F)
  {
    sub_100304A58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100304A58(uint64_t a1)
{
  if (!qword_1005D8608)
  {
    sub_1004A5384();
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D8608);
    }
  }
}

uint64_t sub_100304AB0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100304ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100304B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100304B58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Tag.debugDescription.getter(uint64_t a1)
{
  v2 = sub_1004A57F4();
  __chkstk_darwin(v2 - 8);
  sub_100304E50(a1 & 0xFFFFFFFF000000FFLL);
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v3 = sub_1004A5794();
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  __break(1u);
  return result;
}

IMAP2Protocol::Tag_optional __swiftcall Tag.init(_:)(Swift::String a1)
{
  result.value = sub_100305384(a1._countAndFlagsBits, a1._object);
  v2 = v1 & 1;
  result.is_nil = v2;
  return result;
}

void Tag.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  sub_1004A6EC4(a2);
  sub_1004A6EE4(v2);
}

Swift::Int Tag.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_100304D28()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v2);
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

void sub_100304D88()
{
  v1 = *(v0 + 4);
  sub_1004A6EC4(*v0);
  sub_1004A6EE4(v1);
}

Swift::Int sub_100304DC8(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  sub_1004A6E94();
  sub_1004A6EC4(v3);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

char *sub_100304E50(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_10015BF20(0, 10, 0, _swiftEmptyArrayStorage);
  v4 = v1 + 1;
  v5 = *(v3 + 2);
  do
  {
    if (v5 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10015BF20(1, v5 + 1, 1, v3);
      v6 = *(v3 + 2);
    }

    else
    {
      v6 = v5;
    }

    v7 = v4 - 1;
    v8 = (v4 - 1);
    v4 = (v4 - 1) / 0x1Au;
    v9 = v7 - 26 * v4 + 65;
    result = memmove(v3 + 33, v3 + 32, v6);
    v5 = v6 + 1;
    *(v3 + 2) = v6 + 1;
    v3[32] = v9;
  }

  while (v8 > 0x19);
  while (1)
  {
    v11 = *(v3 + 2);
    if (v11 <= v6)
    {
      break;
    }

    if (v11 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10015BF20(1, v11 + 1, 1, v3);
      v11 = *(v3 + 2);
    }

    result = memmove(&v3[v5 + 33], &v3[v5 + 32], v11 - v5);
    ++*(v3 + 2);
    v3[v5 + 32] = (v2 % 0xA) | 0x30;
    v12 = v2 > 9;
    LODWORD(v2) = v2 / 0xA;
    if (!v12)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100304FC4()
{
  v1 = sub_1004A57F4();
  __chkstk_darwin(v1 - 8);
  sub_100304E50(*v0 | (*(v0 + 1) << 32));
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v2 = sub_1004A5794();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003050A4(unint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v3 = result;
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        v6 = *(v3 + v4);
        if ((v6 - 91) < 0xE6u)
        {
          break;
        }

        if (v4 >= a2)
        {
          __break(1u);
          goto LABEL_47;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10015BF20(0, v5[2] + 1, 1, v5);
          v5 = result;
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          result = sub_10015BF20((v7 > 1), v8 + 1, 1, v5);
          v5 = result;
        }

        ++v4;
        v5[2] = v8 + 1;
        *(v5 + v8 + 32) = v6 - 65;
        if (a2 == v4)
        {
          v4 = a2;
          break;
        }
      }

      v9 = v5 + 2;
      if (!v5[2])
      {
        goto LABEL_27;
      }

      v11 = a2 - v4;
      if (a2 == v4)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v20 = (v3 + v4);
        v21 = v4 + 1;
        v10 = _swiftEmptyArrayStorage;
        do
        {
          v23 = *v20++;
          v22 = v23;
          if ((v23 - 58) < 0xF6u)
          {
            break;
          }

          if (v21 > a2)
          {
            goto LABEL_51;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10015BF20(0, *(v10 + 2) + 1, 1, v10);
            v10 = result;
          }

          v25 = *(v10 + 2);
          v24 = *(v10 + 3);
          if (v25 >= v24 >> 1)
          {
            result = sub_10015BF20((v24 > 1), v25 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 2) = v25 + 1;
          v10[v25 + 32] = v22 - 48;
          ++v21;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
      v9 = &_swiftEmptyArrayStorage[2];
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_27;
      }

      v10 = _swiftEmptyArrayStorage;
    }

    v12 = *(v10 + 2);
    if (v12)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = (v5 + 4);
        while (1)
        {
          v16 = 26 * v14;
          if ((v14 * 26) >> 64 != (26 * v14) >> 63)
          {
            break;
          }

          v17 = *v15 + 1;
          v18 = __OFADD__(v16, v17);
          v14 = v16 + v17;
          if (v18)
          {
            goto LABEL_48;
          }

          ++v15;
          if (!--v13)
          {
            v19 = v14 - 1;
            if (!__OFSUB__(v14, 1))
            {
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v19 = -1;
LABEL_24:
      if ((v19 & 0x8000000000000000) == 0 && v19 <= 0xFF)
      {
LABEL_39:
        v26 = 0;
        for (i = 32; ; ++i)
        {
          v28 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v29 = v10[i];
          v26 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_50;
          }

          if (!--v12)
          {

            if (HIDWORD(v26))
            {
              return 0;
            }

            else
            {
              return v19 | (v26 << 32);
            }
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_100305384(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C(a1, a2);
    v8 = v7;

    a1 = v6;
    v2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = HIBYTE(v2) & 0xF;
    v11[0] = a1;
    v11[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v11;
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = sub_1004A67E4();
  }

  v5 = v3;
LABEL_8:
  v9 = sub_1003050A4(v5, v4);

  return v9;
}

unint64_t sub_100305438()
{
  result = qword_1005D8640;
  if (!qword_1005D8640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tag, &type metadata for Tag, v0, v1);
    atomic_store(result, &qword_1005D8640);
  }

  return result;
}

uint64_t EngineTracingIDOwner.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1005D8648 != -1)
  {
    swift_once();
  }

  v1 = off_1005D8650;

  os_unfair_lock_lock(v1 + 7);
  sub_1003059AC(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.init()()
{
  if (qword_1005D8648 != -1)
  {
    swift_once();
  }

  v1 = off_1005D8650;

  os_unfair_lock_lock(v1 + 7);
  sub_1003059AC(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.deinit()
{
  v1 = v0;
  if (qword_1005D8648 != -1)
  {
    goto LABEL_22;
  }

LABEL_2:
  v2 = off_1005D8650;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v11 = *(v5 + 2);
        if (v9 != v11)
        {
          v13 = v5 + 32;
          v14 = &i[v5 + 33];
          while (v9 < v11)
          {
            v16 = *v14;
            if (v16 != v3)
            {
              if (v9 != i)
              {
                if (i >= v11)
                {
                  __break(1u);
                  break;
                }

                v15 = i[v13];
                i[v13] = v16;
                *v14 = v15;
                v11 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v14;
            if (v9 == v11)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_22:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:

        *v4 = sub_100305BA4(v17);

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_100305C5C(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return v1;
}

uint64_t EngineTracingIDOwner.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1005D8648 != -1)
  {
    goto LABEL_24;
  }

LABEL_2:
  v2 = off_1005D8650;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v11 = *(v5 + 2);
        if (v9 != v11)
        {
          v13 = v5 + 32;
          v14 = &i[v5 + 33];
          while (v9 < v11)
          {
            v16 = *v14;
            if (v16 != v3)
            {
              if (v9 != i)
              {
                if (i >= v11)
                {
                  __break(1u);
                  break;
                }

                v15 = i[v13];
                i[v13] = v16;
                *v14 = v15;
                v11 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v14;
            if (v9 == v11)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_24:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:

        *v4 = sub_100305BA4(v17);

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_100305C5C(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_100305958()
{
  sub_10000C9C0(&qword_1005D8718, &qword_1004F5570);
  result = swift_allocObject();
  *(result + 28) = 0;
  *(result + 16) = _swiftEmptyArrayStorage;
  *(result + 24) = 1;
  off_1005D8650 = result;
  return result;
}

uint64_t sub_1003059AC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *(result + 8);
  while (2)
  {
    if (v6 < 0x1E)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(*result + 16);
    v9 = (*result + 32);
    do
    {
      if (!v8)
      {
        *(result + 8) = v7;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100305AB0(0, v5 + 1, 1, v4);
          v4 = result;
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_100305AB0((v11 > 1), v12 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v12 + 1;
        *(v4 + v12 + 32) = v6;
        *v2 = v4;
        goto LABEL_15;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 != v6);
    v6 = v7;
    if (v7 != *(result + 8))
    {
      continue;
    }

    break;
  }

  LOBYTE(v6) = 31;
LABEL_15:
  *a2 = v6;
  return result;
}

char *sub_100305AB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D8710, &qword_1004F5568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100305BB8(char *result, uint64_t a2, uint64_t a3)
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

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
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

char *sub_100305C5C(char *result, uint64_t a2)
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

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
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

    v4 = sub_100305AB0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100305BB8(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100305D20()
{
  result = qword_1005D8668;
  if (!qword_1005D8668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EngineTracingID, &type metadata for EngineTracingID, v0, v1);
    atomic_store(result, &qword_1005D8668);
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1005DAF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1005DAF30);
    }
  }
}

void *sub_100305E24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_100305E30@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void __swiftcall MailboxTaskLoggerID.init(id:name:counter:mailbox:)(IMAP2Tracing::MailboxTaskLoggerID *__return_ptr retstr, IMAP2Tracing::EngineTracingID id, IMAP2Tracing::TaskName name, NIOIMAPCore2::MailboxLoggingCounter counter, NIOIMAPCore2::MailboxName mailbox)
{
  retstr->id = id;
  retstr->name = name;
  retstr->counter = counter;
  retstr->mailbox = mailbox;
}

uint64_t sub_100305EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100305EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100305F5C()
{
  sub_1003062D0();
  result = sub_1004A6364();
  tracingLog = result;
  return result;
}

uint64_t *tracingLog.unsafeMutableAddressor()
{
  if (qword_1005D8658 != -1)
  {
    swift_once();
  }

  return &tracingLog;
}

uint64_t sub_10030600C()
{
  v0 = sub_1004A4944();
  sub_1001C2074(v0, tracingSignposter);
  sub_1001C203C(v0, tracingSignposter);
  if (qword_1005D8658 != -1)
  {
    swift_once();
  }

  v1 = tracingLog;
  return sub_1004A4924();
}

uint64_t tracingSignposter.unsafeMutableAddressor()
{
  if (qword_1005D8660 != -1)
  {
    swift_once();
  }

  v0 = sub_1004A4944();

  return sub_1001C203C(v0, tracingSignposter);
}

Swift::Int sub_100306140()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1 + 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003061B8(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EC4(v2 + 1);
  return sub_1004A6F14();
}

uint64_t sub_1003061FC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    return (0x5040302010006uLL >> (8 * a1));
  }

  else
  {
    return 6;
  }
}

unint64_t sub_10030626C()
{
  result = qword_1005D8720;
  if (!qword_1005D8720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSSignpostID.TraceKind, &type metadata for OSSignpostID.TraceKind, v0, v1);
    atomic_store(result, &qword_1005D8720);
  }

  return result;
}

unint64_t sub_1003062D0()
{
  result = qword_1005D8728;
  if (!qword_1005D8728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D8728);
  }

  return result;
}

uint64_t sub_10030631C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  a3(a5, a6, sub_100306F64, v11);
}

uint64_t sub_1003063CC(uint64_t a1, void (*a2)(void *))
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_10034F550(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (a1 + 32);
    do
    {
      v7 = v6[3];
      v19[2] = v6[2];
      v19[3] = v7;
      v19[4] = v6[4];
      v8 = v6[1];
      v19[0] = *v6;
      v19[1] = v8;
      sub_100306F6C(v19, v16);
      Credentials.init(_:)(v19, v18);
      v17 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_10034F550((v9 > 1), v10 + 1, 1);
        v4 = v17;
      }

      v4[2] = v10 + 1;
      v11 = &v4[10 * v10];
      v11[2] = v18[0];
      v12 = v18[1];
      v13 = v18[2];
      v14 = v18[4];
      v11[5] = v18[3];
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v6 += 5;
      --v3;
    }

    while (v3);
  }

  a2(v4);
}

uint64_t sub_100306500(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_100306530(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1004A6D34() ^ 1) & 1;
  }
}

uint64_t sub_100306578(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1004A6D34() ^ 1) & 1;
  }
}

uint64_t sub_1003065CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_1003065F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_10000C9C0(&qword_1005D87C8, &unk_1004F5920);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = sub_1004A4C04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  v13 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v13);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[1];
  v37 = *a1;
  v38 = v16;
  v17 = *(a1 + 34);
  v39 = a1;
  v36 = ConnectionConfiguration.TransportLayerSecurity.init(_:)(v17);

  sub_1004A4BD4();
  sub_1004A4BE4();
  v18 = sub_1004A4BF4();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v5, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40);
    (*(v19 + 32))(&v9[*(v21 + 48)], v5, v18);
    (*(v7 + 104))(v9, enum case for NWEndpoint.hostPort(_:), v6);
    v22 = *(v7 + 32);
    v22(v12, v9, v6);
    sub_10000C9C0(&qword_1005D87D0, &qword_1004F5930);
    v23 = sub_1004A4C14();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004CEAA0;
    (*(v24 + 104))(v26 + v25, enum case for NWInterface.InterfaceType.cellular(_:), v23);
    v27 = &v15[v13[8]];
    v28 = &v15[v13[10]];
    v29 = v6;
    v30 = v13[6];
    v15[v13[7]] = v36;
    v22(v15, v12, v29);
    v15[v13[5]] = 1;
    *&v15[v30] = v26;
    *v27 = 0xD000000000000014;
    v27[1] = 0x80000001004AE740;
    v15[v13[9]] = 1;
    v31 = v38;
    *v28 = v37;
    v28[1] = v31;

    sub_100306EFC(v39);
    v32 = v40;
    *v40 = 0x6E49686372616573;
    v32[1] = 0xED00007265786564;
    v33 = type metadata accessor for Configuration(0);
    result = sub_1002B553C(v15, v32 + v33[5], v34);
    *(v32 + v33[6]) = 0;
    *(v32 + v33[7]) = 1;
  }

  return result;
}

uint64_t sub_100306A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100306A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100306ACC()
{
  result = qword_1005D87C0;
  if (!qword_1005D87C0)
  {
    result = swift_getWitnessTable(asc_1004F5844, &type metadata for Account.ID, v0, v1);
    atomic_store(result, &qword_1005D87C0);
  }

  return result;
}

uint64_t sub_100306B28(uint64_t a1, id *a2)
{
  result = sub_1004A5744();
  *a2 = 0;
  return result;
}

uint64_t sub_100306BA0(uint64_t a1, id *a2)
{
  v3 = sub_1004A5754();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100306C20@<X0>(uint64_t *a2@<X8>)
{
  sub_1004A5764();
  v3 = sub_1004A5734();

  *a2 = v3;
  return result;
}

uint64_t sub_100306C64()
{
  sub_1004A5764();
  v0 = sub_1004A5A64();

  return v0;
}

uint64_t sub_100306CA0(uint64_t a1)
{
  sub_1004A5764();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100306CF4(uint64_t a1)
{
  sub_1004A5764();
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v1 = sub_1004A6F14();

  return v1;
}

uint64_t sub_100306D68(void *a1, uint64_t *a2)
{
  v2 = sub_1004A5764();
  v4 = v3;
  if (v2 == sub_1004A5764() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004A6D34();
  }

  return v7 & 1;
}

uint64_t sub_100306DF0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1004A5734();

  *a2 = v3;
  return result;
}

uint64_t sub_100306E38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004A5764();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100306E64(uint64_t a1)
{
  v2 = sub_100307044(&qword_1005D8858, byte_1004F5A54);
  v3 = sub_100307044(&qword_1005D8860, byte_1004F59F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100306F2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100307044(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003070C0(uint64_t a1, unint64_t a2)
{
  v2 = sub_100307550();
  swift_beginAccess();
  v3 = *(v2 + 16);

  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004A6794();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = sub_1004A5734();
      [v8 willAccessValueForKey:v10];

      v11 = [v8 primitiveAccount];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004A5764();
        v15 = v14;

        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          goto LABEL_16;
        }
      }

      v13 = 0;
      v15 = 0;
LABEL_16:
      v17 = sub_1004A5734();
      [v8 didAccessValueForKey:v17];

      if (v15)
      {
        if (v13 == a1 && v15 == a2)
        {

          return v8;
        }

        v6 = sub_1004A6D34();

        if (v6)
        {

          return v8;
        }
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v18 = sub_1004A4A74();
  sub_1001C203C(v18, qword_1005DE2D0);

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10015BA6C(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v19, v20, "Inserting new AccountInfo for %s", v21, 0xCu);
    sub_1000197E0(v22);
  }

  else
  {
  }

  _s11AccountInfoCMa();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v29];

  v24 = sub_1004A5734();
  [v23 willChangeValueForKey:v24];

  v25 = sub_1004A5734();

  [v23 setPrimitiveAccount:v25];

  v26 = sub_1004A5734();
  [v23 didChangeValueForKey:v26];

  v27 = sub_100307550();
  swift_beginAccess();
  v8 = v23;
  sub_1004A5BF4();
  if (*((*(v27 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  sub_1004A5C84();
  swift_endAccess();

  return v8;
}

uint64_t sub_100307550()
{
  v1 = v0;
  v2 = [v0 userInfo];
  *&v18 = 0xD000000000000010;
  *(&v18 + 1) = 0x80000001004AE7E0;
  v3 = [v2 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    _s16AccountInfoCacheCMa();
    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
    sub_10030805C(v20);
  }

  _s16AccountInfoCacheCMa();
  v4 = swift_allocObject();
  v5 = v1;
  sub_100307828(v5);
  v6 = [v5 userInfo];
  *&v20[0] = 0xD000000000000010;
  *(&v20[0] + 1) = 0x80000001004AE7E0;

  [v6 __swift_setObject:v4 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_1004A5734();
  v9 = [v7 initWithEntityName:v8];

  *&v20[0] = 0;
  v10 = [v9 execute:v20];
  v11 = *&v20[0];
  if (v10)
  {
    v12 = v10;
    _s11AccountInfoCMa();
    v13 = sub_1004A5C14();
    v14 = v11;

    swift_beginAccess();
    *(v4 + 16) = v13;

    return v4;
  }

  v16 = *&v20[0];
  sub_1004A4274();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100307828(void *a1)
{
  *(v1 + 16) = _swiftEmptyArrayStorage;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1003080FC;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100307F04;
  v9[3] = &unk_1005B3168;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v3 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v6 queue:0 usingBlock:v5];

  _Block_release(v5);
  *(v1 + 24) = v7;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100307988(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003079E0();
  }

  return result;
}

void sub_1003079E0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v45 = v1 >> 62;
  v46 = v0;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_86;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = 0;
  p_attr = &stru_1005CAFF8.attr;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004A6794();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_80;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (([v6 p_attr[429]] & 1) != 0 || (v8 = objc_msgSend(v7, "managedObjectContext")) == 0)
    {

LABEL_22:
      v19 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        if (v45)
        {
          if (v19 == sub_1004A6A34())
          {
            goto LABEL_74;
          }
        }

        else if (v19 == *(v2 + 16))
        {
          goto LABEL_74;
        }

        v2 = v4 + 5;
LABEL_28:
        v20 = v2 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v21 = sub_1004A6794();
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
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
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            v3 = sub_1004A6A34();
            goto LABEL_3;
          }

          if (v20 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v21 = *(v1 + 8 * v2);
        }

        v22 = v21;
        if (([v21 p_attr[429]] & 1) != 0 || (v23 = objc_msgSend(v22, "managedObjectContext")) == 0)
        {
        }

        else
        {

          v24 = sub_1004A5734();
          [v22 willAccessValueForKey:v24];

          v25 = [v22 primitiveAccount];
          if (!v25)
          {
            goto LABEL_39;
          }

          v26 = v25;
          v27 = sub_1004A5764();
          v29 = v28;

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v30)
          {

LABEL_39:
            v29 = 0;
          }

          v31 = sub_1004A5734();
          [v22 didAccessValueForKey:v31];

          if (v29)
          {

            p_attr = (&stru_1005CAFF8 + 8);
            if (v20 != v4)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v32 = sub_1004A6794();
                v33 = sub_1004A6794();
              }

              else
              {
                if ((v4 & 0x8000000000000000) != 0)
                {
                  goto LABEL_90;
                }

                v34 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v4 >= v34)
                {
                  goto LABEL_91;
                }

                if (v20 >= v34)
                {
                  goto LABEL_92;
                }

                v35 = *(v1 + 8 * v2);
                v32 = *(v1 + 8 * v4 + 32);
                v33 = v35;
              }

              v36 = v33;
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v46 + 16) = v1;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_100337194(v1);
                *(v46 + 16) = v1;
              }

              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              v38 = v1 & 0xFFFFFFFFFFFFFF8;
              if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v39 = v38 + 8 * v4;
              v40 = *(v39 + 32);
              *(v39 + 32) = v36;

              *(v46 + 16) = v1;
              if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_100337194(v1);
                *(v46 + 16) = v1;
                v38 = v1 & 0xFFFFFFFFFFFFFF8;
                if ((v20 & 0x8000000000000000) != 0)
                {
LABEL_70:
                  __break(1u);
                  break;
                }
              }

              else if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_70;
              }

              if (v20 >= *(v38 + 16))
              {
                goto LABEL_85;
              }

              v41 = *(v38 + 8 * v2);
              *(v38 + 8 * v2) = v32;

              *(v46 + 16) = v1;
            }

            v18 = __OFADD__(v4++, 1);
            if (v18)
            {
              goto LABEL_82;
            }
          }

          else
          {
            p_attr = (&stru_1005CAFF8 + 8);
          }
        }

        v18 = __OFADD__(v20, 1);
        v42 = v2 - 3;
        if (v18)
        {
          goto LABEL_79;
        }

        if (v1 >> 62)
        {
          v43 = sub_1004A6A34();
        }

        else
        {
          v43 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v2;
        if (v42 == v43)
        {
          goto LABEL_74;
        }

        goto LABEL_28;
      }

      goto LABEL_89;
    }

    v9 = sub_1004A5734();
    [v7 willAccessValueForKey:v9];

    v10 = [v7 primitiveAccount];
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = sub_1004A5764();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    v16 = v12 & 0xFFFFFFFFFFFFLL;
    p_attr = (&stru_1005CAFF8 + 8);
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v16;
    }

    if (!v15)
    {

LABEL_15:
      v14 = 0;
    }

    v17 = sub_1004A5734();
    [v7 didAccessValueForKey:v17];

    if (!v14)
    {
      goto LABEL_22;
    }

    v18 = __OFADD__(v4++, 1);
    if (v18)
    {
      goto LABEL_81;
    }
  }

  if (v45)
  {
    v4 = sub_1004A6A34();
  }

  else
  {
    v4 = *(v2 + 16);
  }

LABEL_74:
  if (v1 >> 62)
  {
    v44 = sub_1004A6A34();
    if (v44 >= v4)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= v4)
    {
LABEL_76:
      sub_1003365BC(v4, v44);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_100307F04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004A40A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1004A4084();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100307FF8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10030805C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4768, &unk_1004F5B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003080C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100308104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10030811C()
{
  v1 = *(v0 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v1 | (v1 << 32));
  return sub_1004A6F14();
}

void sub_100308180(uint64_t a1)
{
  v2 = *(v1 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2 | (v2 << 32));
}

Swift::Int sub_1003081B8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

BOOL sub_100308218(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return (v3 | (v3 << 32)) == (v5 | (v5 << 32)) && (sub_1000FFC98(v2, v4) & 1) != 0;
  }

  v7 = sub_1004A6D34();
  result = 0;
  if (v7)
  {
    return (v3 | (v3 << 32)) == (v5 | (v5 << 32)) && (sub_1000FFC98(v2, v4) & 1) != 0;
  }

  return result;
}

uint64_t sub_1003082A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003082F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100308348()
{
  result = qword_1005D8910;
  if (!qword_1005D8910)
  {
    result = swift_getWitnessTable(byte_1004F5B74, &type metadata for AccountMailbox, v0, v1);
    atomic_store(result, &qword_1005D8910);
  }

  return result;
}

uint64_t sub_10030839C()
{
  v1 = [v0 userInfo];
  *&v5 = 0xD000000000000012;
  *(&v5 + 1) = 0x80000001004AEA20;
  v2 = [v1 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10030805C(v7);
  }

  return 0;
}

uint64_t sub_1003084B8()
{
  v1 = [v0 userInfo];
  *&v5 = 0xD000000000000013;
  *(&v5 + 1) = 0x80000001004AEA00;
  v2 = [v1 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10030805C(v7);
  }

  return 0;
}

Class sub_1003085D4(Class result, uint64_t a2)
{
  if (a2 <= 0)
  {
    sub_10019A8E4(0, &qword_1005D6858, NSString_ptr);
    return sub_1004A6314();
  }

  v3 = (result / a2) * 100.0;
  if (COERCE_INT(fabs(v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_1004A5DD4().super.super.isa;
}

void sub_100308694(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v3 = a1;
  v4 = a1;
  if (a1 < 0)
  {
    v4 = -a1;
    if (__OFSUB__(0, a1))
    {
      goto LABEL_30;
    }
  }

  v5 = ceil(log10(v4));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5 - a2;
  if (__OFSUB__(v5, a2))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6 > 0)
  {
    v7 = round(__exp10(v6));
    if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = round(v3 / v7);
        if (v7 != INFINITY && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 < 9.22337204e18)
            {
              a1 = v8 * v7;
              if ((v8 * v7) >> 64 != a1 >> 63)
              {
                __break(1u);
LABEL_17:
                sub_10019A8E4(a1, &qword_1005D51B0, NSNumber_ptr);
                sub_1004A62E4(0);
                return;
              }

              goto LABEL_18;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:

  sub_1004A5DD4();
}

uint64_t sub_10030883C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000C9C0(&qword_1005D8918, &qword_1004F5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F5BE0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001004AE8E0;

  *(inited + 48) = sub_1004A5DD4();
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x80000001004AE900;
  *(inited + 72) = sub_1004A5DD4();
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001004AE920;
  *(inited + 96) = sub_1004A5DD4();
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001004AE940;
  *(inited + 120) = sub_1004A5DD4();
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x80000001004AE960;
  *(inited + 144) = sub_1004A5DD4();
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x80000001004AE980;
  *(inited + 168) = sub_1004A5DD4();
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000001004AE9A0;
  *(inited + 192) = sub_1004A5DD4();
  *(inited + 200) = 0xD00000000000001FLL;
  *(inited + 208) = 0x80000001004AE9C0;
  *(inited + 216) = sub_1004A5DD4();
  *(inited + 224) = 0xD00000000000001DLL;
  *(inited + 232) = 0x80000001004AE9E0;
  *(inited + 240) = sub_1004A5DD4();
  sub_100350A90(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D8920, &qword_1004F5BF8);
  swift_arrayDestroy();
  return a1;
}

unint64_t sub_100308A54(uint64_t a1, objc_class *a2, objc_class *a3, uint64_t a4)
{
  sub_10000C9C0(&qword_1005D8918, &qword_1004F5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001004AE880;
  sub_100308694(a1, 1);
  *(inited + 48) = v9;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001004AE8A0;
  sub_100308694(a4, 1);
  *(inited + 72) = v10;
  strcpy((inited + 80), "percentIndexed");
  *(inited + 95) = -18;
  *(inited + 96) = sub_1003085D4(a2, a1);
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000001004AE8C0;
  *(inited + 120) = sub_1003085D4(a3, a1);
  sub_100350A90(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D8920, &qword_1004F5BF8);
  swift_arrayDestroy();
  return 0xD000000000000024;
}

void *sub_100308BD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v6 = sub_1004A5234();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v40 = (&v36 - v9);
  v10 = sub_1004A6074();
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A6064();
  __chkstk_darwin(v13);
  v14 = sub_1004A5274();
  __chkstk_darwin(v14 - 8);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v39 = a1;
  *(v2 + 48) = static MonotonicTime.now()();
  v15 = OBJC_IVAR____TtC17IMAPSearchIndexer11DelayedSave_logger;
  v44 = sub_1004A4A74();
  v46 = *(v44 - 8);
  (*(v46 + 16))(v2 + v15, a2, v44);
  v36 = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  aBlock = _swiftEmptyArrayStorage;
  sub_100309E24(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v37 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v16 = sub_1004A6094();
  v3[5] = v16;
  v17 = v40;
  *v40 = 1;
  v18 = v43;
  v19 = *(v42 + 104);
  v19(v17, enum case for DispatchTimeInterval.seconds(_:), v43);
  v20 = v41;
  *v41 = 500;
  v19(v20, enum case for DispatchTimeInterval.milliseconds(_:), v18);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v23 = v39;
  *(v22 + 16) = v39;
  *(v22 + 24) = v21;
  v51 = sub_100309EE4;
  v52 = v22;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10019C778;
  v50 = &unk_1005B3288;
  v24 = _Block_copy(&aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v25 = v16;
  v26 = v23;
  v27 = v25;

  v29 = RestartableTimer.init(queue:repeating:leeway:closure:)(v27, v17, v20, v24, v28);

  v3[4] = v29;

  v30 = [objc_opt_self() defaultCenter];
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v26;

  v51 = sub_100309EEC;
  v52 = v31;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100307F04;
  v50 = &unk_1005B32B0;
  v33 = _Block_copy(&aBlock);

  v34 = [v30 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v32 queue:0 usingBlock:v33];
  _Block_release(v33);

  (*(v46 + 8))(v45, v44);
  v3[3] = v34;
  swift_unknownObjectRelease();
  return v3;
}

void sub_100309210(void *a1, uint64_t a2)
{
  v4[4] = sub_100309EF4;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10019C778;
  v4[3] = &unk_1005B32D8;
  v3 = _Block_copy(v4);

  [a1 performBlock:v3];
  _Block_release(v3);
}

uint64_t sub_1003092D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = static MonotonicTime.now()();
    v4 = v2[2];
    if (![v4 hasChanges])
    {
    }

    result = sub_100309840();
    if (result)
    {
      goto LABEL_11;
    }

    v5 = v2[6];
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v3 < v5)
    {
      if (__OFSUB__(v5, v3))
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = __OFSUB__(0, v5 - v3);
      v7 = v3 - v5;
      if (!v6)
      {
LABEL_10:
        if (v7 / 1000000000.0 > 4.0)
        {
LABEL_11:
          if ([v4 hasChanges])
          {

            sub_100309C70(v8, v2);

            v2[7] = 0;

            return swift_unknownObjectRelease();
          }
        }
      }

      __break(1u);
    }

    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003093EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 48) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_100309448()
{
  v1 = v0;
  v2 = sub_1004A5244();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A5274();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static MonotonicTime.now()();
  v11 = *(v0 + 16);
  if ([v11 hasChanges])
  {
    result = sub_100309840();
    if (result)
    {
LABEL_10:
      if ([v11 hasChanges])
      {

        sub_100309C70(v16, v1);

        *(v1 + 56) = 0;
        swift_unknownObjectRelease();
      }

      goto LABEL_12;
    }

    v13 = *(v1 + 48);
    v14 = __OFSUB__(v10, v13);
    v15 = v10 - v13;
    if (v10 < v13)
    {
      if (__OFSUB__(v13, v10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = __OFSUB__(0, v13 - v10);
      v15 = v10 - v13;
      if (!v14)
      {
LABEL_9:
        if (v15 / 1000000000.0 <= 4.0)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      __break(1u);
    }

    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_12:
  result = [v11 hasChanges];
  if ((result & 1) == 0)
  {
    return result;
  }

  result = [v11 processPendingChanges];
  if (*(v1 + 56))
  {
    if (*(v1 + 64))
    {
      return result;
    }

    goto LABEL_15;
  }

  *(v1 + 56) = os_transaction_create();
  result = swift_unknownObjectRelease();
  if ((*(v1 + 64) & 1) == 0)
  {
LABEL_15:
    *(v1 + 64) = 1;
    v20 = *(v1 + 40);
    aBlock[4] = sub_100309C50;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3210;
    v17 = _Block_copy(aBlock);

    sub_1004A5254();
    v21 = _swiftEmptyArrayStorage;
    sub_100309E24(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    v19 = v6;
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v17);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_1003097F8(uint64_t result)
{
  if (*(result + 32))
  {

    RestartableTimer.start()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100309840()
{
  v1 = [v0 updatedObjects];
  sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  sub_100309DBC();
  v2 = sub_1004A5D44();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004A65D4();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = [v0 insertedObjects];
  v5 = sub_1004A5D44();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_1004A65D4();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v8 = __OFADD__(v3, v6);
  v9 = v3 + v6;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = [v0 deletedObjects];
    v11 = sub_1004A5D44();

    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_1004A65D4();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    if (!__OFADD__(v9, v12))
    {
      return v9 + v12 > 1000;
    }
  }

  __break(1u);
  return result;
}

id sub_1003099C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  sub_1004A4274();

  return swift_willThrow();
}

uint64_t sub_100309A70()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17IMAPSearchIndexer11DelayedSave_logger;
  v2 = sub_1004A4A74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelayedSave(uint64_t a1)
{
  result = qword_1005D8950;
  if (!qword_1005D8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100309B88(uint64_t a1)
{
  result = sub_1004A4A74();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100309C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100309DBC()
{
  result = qword_1005D8A18;
  if (!qword_1005D8A18)
  {
    v3 = sub_10019A8E4(255, &qword_1005D8A10, NSManagedObject_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1005D8A18);
  }

  return result;
}

uint64_t sub_100309E24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100309E6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100309EA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100309F14()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8A20);
  sub_1001C203C(v0, qword_1005D8A20);
  return sub_1004A4A64();
}

uint64_t sub_100309F8C(void *a1, uint64_t a2)
{
  v3 = v2;
  v103 = a2;
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v5 - 8);
  v102 = &v95 - v6;
  v108 = a1;
  v7 = sub_100330258(a1);
  v8 = v7;
  v104 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_94;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_95:
  }

LABEL_3:
  if (qword_1005D8730 != -1)
  {
    swift_once();
  }

  v105 = v9;
  v10 = sub_1004A4A74();
  v11 = sub_1001C203C(v10, qword_1005D8A20);

  v99 = v11;
  v12 = sub_1004A4A54();
  v13 = sub_1004A6034();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v104)
    {
      v15 = sub_1004A6A34();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&_mh_execute_header, v12, v13, "Found %ld mailbox(es) to be deleted.", v14, 0xCu);
  }

  else
  {
  }

  v100 = sub_100350B94(_swiftEmptyArrayStorage);
  v16 = 0;
  v106 = v8 & 0xC000000000000001;
  v107 = v8;
  v109 = v8 & 0xFFFFFFFFFFFFFF8;
  p_attr = &stru_1005CAFF8.attr;
  v18 = &stru_1005CAFF8.attr;
  v101 = v3;
  while (1)
  {
    if (v106)
    {
      v19 = sub_1004A6794();
    }

    else
    {
      if (v16 >= *(v109 + 16))
      {
        goto LABEL_90;
      }

      v19 = *(v8 + 8 * v16 + 32);
    }

    v8 = v19;
    v20 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v9 = sub_1004A6A34();
      if (!v9)
      {
        goto LABEL_95;
      }

      goto LABEL_3;
    }

    v21 = sub_1004A5734();
    [v8 p_attr[434]];

    v22 = [v8 *(v18 + 3448)];
    if (!v22)
    {
      goto LABEL_21;
    }

    v23 = v22;
    v24 = sub_1004A5764();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {

LABEL_21:
      v24 = 0;
      v26 = 0;
    }

    v28 = sub_1004A5734();
    [v8 didAccessValueForKey:v28];

    if (v26)
    {
      break;
    }

    ++v16;
LABEL_24:
    v8 = v107;
    if (v20 == v105)
    {
      v48 = 0;
      v49 = v100;
      v50 = v100 + 64;
      v51 = 1 << *(v100 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v100 + 64);
      v3 = ((v51 + 63) >> 6);
      *&v29 = 134218242;
      v95 = v29;
      while (v53)
      {
        v54 = v48;
LABEL_49:
        v55 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v56 = *(*(v49 + 56) + 8 * (v55 | (v54 << 6)));

        v57 = sub_1004A4A54();
        v58 = sub_1004A6034();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v98 = v57;
          v60 = v59;
          v97 = swift_slowAlloc();
          v110[0] = v97;
          *v60 = v95;
          *(v60 + 4) = v56;
          *(v60 + 12) = 2082;
          v96 = v58;
          sub_1004A5954();
          sub_1004A5AB4();

          v8 = v107;
          v61 = sub_1004A5864();
          v63 = v62;

          v64 = sub_10015BA6C(v61, v63, v110);

          *(v60 + 14) = v64;
          v65 = v98;
          _os_log_impl(&_mh_execute_header, v98, v96, "Deleting %ld mailbox(es) for account %{public}s", v60, 0x16u);
          sub_1000197E0(v97);
        }

        else
        {
        }

        v48 = v54;
        v49 = v100;
      }

      while (1)
      {
        v54 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_91;
        }

        if (v54 >= v3)
        {
          break;
        }

        v53 = *(v50 + 8 * v54);
        ++v48;
        if (v53)
        {
          goto LABEL_49;
        }
      }

      v66 = 0;
      v67 = v101;
      v68 = v102;
      do
      {
        if (v106)
        {
          v71 = sub_1004A6794();
        }

        else
        {
          if (v66 >= *(v109 + 16))
          {
            goto LABEL_93;
          }

          v71 = *(v8 + 8 * v66 + 32);
        }

        v72 = v71;
        v3 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_92;
        }

        if (v104)
        {
          v69 = sub_1004A6A34();
        }

        else
        {
          v69 = *(v109 + 16);
        }

        sub_10030AA54(v66, v69);
        v70 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
        (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
        sub_10030B530(v72, v68, v103);
        sub_100025F40(v68, &qword_1005CD518, &qword_1004CF2F0);
        [v67 deleteObject:v72];
        sub_100309448();

        ++v66;
        v8 = v107;
      }

      while (v3 != v105);

      v73 = sub_100307550();
      swift_beginAccess();
      v18 = *(v73 + 16);

      if (v18 >> 62)
      {
        goto LABEL_100;
      }

      v74 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
      }

      goto LABEL_63;
    }
  }

  v18 = p_attr;
  v30 = v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110[0] = v30;
  v32 = sub_10035E1B0(v24, v26);
  v34 = v30[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (!v36)
  {
    v38 = v33;
    if (v30[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v32;
        sub_100360C40();
        v32 = v47;
        v30 = v110[0];
      }

      p_attr = v18;
      v18 = 0x1005CB000;
      if ((v38 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_10035E9D0(v37, isUniquelyReferenced_nonNull_native);
      v3 = v110[0];
      v32 = sub_10035E1B0(v24, v26);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_104;
      }

      p_attr = v18;
      v30 = v3;
      v18 = 0x1005CB000;
      if ((v38 & 1) == 0)
      {
LABEL_30:
        v30[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v30[6] + 16 * v32);
        *v40 = v24;
        v40[1] = v26;
        *(v30[7] + 8 * v32) = 0;
        v41 = v30[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          goto LABEL_103;
        }

        v30[2] = v42;
        goto LABEL_36;
      }
    }

    v43 = v32;

    v32 = v43;
LABEL_36:
    v44 = v30[7];
    v45 = *(v44 + 8 * v32);
    v36 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v100 = v30;
    *(v44 + 8 * v32) = v46;

    v16 = v20;
    goto LABEL_24;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  v74 = sub_1004A6A34();
  if (!v74)
  {
  }

LABEL_63:
  if (v74 >= 1)
  {
    v75 = 0;
    v109 = v18 + 32;
    v76 = v108 + 7;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v77 = sub_1004A6794();
      }

      else
      {
        v77 = *(v109 + 8 * v75);
      }

      v78 = v77;
      v79 = sub_1004A5734();
      [v78 willAccessValueForKey:v79];

      v80 = [v78 primitiveAccount];
      if (!v80)
      {
        goto LABEL_76;
      }

      v81 = v80;
      v82 = sub_1004A5764();
      v84 = v83;

      v85 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v85 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (!v85)
      {
        break;
      }

LABEL_77:
      v86 = sub_1004A5734();
      [v78 didAccessValueForKey:v86];

      if (v84)
      {
        if (v108[2])
        {
          v87 = v108;
          sub_1004A6E94();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v88 = sub_1004A6F14();
          v89 = -1 << *(v87 + 32);
          v90 = v88 & ~v89;
          if ((*(v76 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
          {
            v91 = ~v89;
            while (1)
            {
              v92 = (v108[6] + 16 * v90);
              v93 = *v92 == v82 && v84 == v92[1];
              if (v93 || (sub_1004A6D34() & 1) != 0)
              {
                break;
              }

              v90 = (v90 + 1) & v91;
              if (((*(v76 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_67;
          }
        }

LABEL_65:
      }

      [v101 deleteObject:{v78, v95}];

LABEL_67:
      if (++v75 == v74)
      {
      }
    }

LABEL_76:
    v82 = 0;
    v84 = 0;
    goto LABEL_77;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_10030AA54(char *a1, uint64_t a2)
{
  v85 = a2;
  v86 = a1;
  v3 = sub_1004A4374();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v83 - v8;
  __chkstk_darwin(v10);
  v12 = &v83 - v11;
  __chkstk_darwin(v13);
  v15 = &v83 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v83 - v18;
  v20 = [v2 objectID];
  v21 = [v20 URIRepresentation];

  v87 = v19;
  sub_1004A4344();

  v22 = sub_10033A824();
  v24 = v23;
  v26 = sub_100340AF8(v25);
  v28 = v27;
  if (v22)
  {
    if (v27)
    {
      v84 = v26;
      v29 = v87;
      if (qword_1005D8730 != -1)
      {
        swift_once();
      }

      v30 = sub_1004A4A74();
      sub_1001C203C(v30, qword_1005D8A20);
      (*(v4 + 16))(v6, v29, v3);

      v31 = sub_1004A4A54();
      v15 = sub_1004A6034();

      if (!os_log_type_enabled(v31, v15))
      {

        v71 = *(v4 + 8);
        v71(v6, v3);
        return (v71)(v29, v3);
      }

      v32 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v90 = v83;
      *v32 = 134219267;
      if (!__OFADD__(v86, 1))
      {
        *(v32 + 4) = v86 + 1;
        *(v32 + 12) = 2048;
        *(v32 + 14) = v85;
        *(v32 + 22) = 2160;
        *(v32 + 24) = 0x786F626C69616DLL;
        *(v32 + 32) = 2085;
        v88 = v22;
        v89 = v24;
        v33 = sub_1004A5824();
        v35 = sub_10015BA6C(v33, v34, &v90);

        *(v32 + 34) = v35;
        *(v32 + 42) = 2082;
        sub_10030C4CC();
        v36 = sub_1004A6CE4();
        v38 = v37;
        v86 = *(v4 + 8);
        (v86)(v6, v3);
        v39 = sub_10015BA6C(v36, v38, &v90);

        *(v32 + 44) = v39;
        *(v32 + 52) = 2080;
        sub_100236568(8, v84, v28);

        v40 = sub_1004A5864();
        v42 = v41;

        v43 = sub_10015BA6C(v40, v42, &v90);

        *(v32 + 54) = v43;
        _os_log_impl(&_mh_execute_header, v31, v15, "[%ld/%ld] Marking mailbox '%{sensitive,mask.mailbox}s' %{public}s for account '%s' as deleted.", v32, 0x3Eu);
        swift_arrayDestroy();

        return (v86)(v87, v3);
      }

      __break(1u);
      goto LABEL_31;
    }

    v58 = v87;
    if (qword_1005D8730 != -1)
    {
      swift_once();
    }

    v59 = sub_1004A4A74();
    sub_1001C203C(v59, qword_1005D8A20);
    (*(v4 + 16))(v9, v58, v3);

    v60 = sub_1004A4A54();
    v61 = sub_1004A6034();

    if (!os_log_type_enabled(v60, v61))
    {

      v82 = *(v4 + 8);
      v82(v9, v3);
      return (v82)(v58, v3);
    }

    v62 = swift_slowAlloc();
    result = swift_slowAlloc();
    v90 = result;
    *v62 = 134219011;
    if (!__OFADD__(v86, 1))
    {
      *(v62 + 4) = v86 + 1;
      *(v62 + 12) = 2048;
      *(v62 + 14) = v85;
      *(v62 + 22) = 2160;
      *(v62 + 24) = 0x786F626C69616DLL;
      *(v62 + 32) = 2085;
      v88 = v22;
      v89 = v24;
      v63 = sub_1004A5824();
      v65 = sub_10015BA6C(v63, v64, &v90);

      *(v62 + 34) = v65;
      *(v62 + 42) = 2082;
      sub_10030C4CC();
      v66 = sub_1004A6CE4();
      v68 = v67;
      v69 = *(v4 + 8);
      v69(v9, v3);
      v70 = sub_10015BA6C(v66, v68, &v90);

      *(v62 + 44) = v70;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%ld/%ld] Marking mailbox '%{sensitive,mask.mailbox}s' %{public}s as deleted.", v62, 0x34u);
      swift_arrayDestroy();

      return (v69)(v87, v3);
    }
  }

  else
  {
    if (!v27)
    {
      if (qword_1005D8730 == -1)
      {
LABEL_22:
        v72 = sub_1004A4A74();
        sub_1001C203C(v72, qword_1005D8A20);
        v29 = v87;
        (*(v4 + 16))(v15, v87, v3);
        v73 = sub_1004A4A54();
        v74 = sub_1004A6034();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          result = swift_slowAlloc();
          v88 = result;
          *v75 = 134218498;
          if (!__OFADD__(v86, 1))
          {
            v76 = result;
            *(v75 + 4) = v86 + 1;
            *(v75 + 12) = 2048;
            *(v75 + 14) = v85;
            *(v75 + 22) = 2082;
            sub_10030C4CC();
            v77 = sub_1004A6CE4();
            v79 = v78;
            v69 = *(v4 + 8);
            v69(v15, v3);
            v80 = sub_10015BA6C(v77, v79, &v88);

            *(v75 + 24) = v80;
            _os_log_impl(&_mh_execute_header, v73, v74, "[%ld/%ld] Marking mailbox %{public}s as deleted.", v75, 0x20u);
            sub_1000197E0(v76);

            return (v69)(v87, v3);
          }

          goto LABEL_34;
        }

        v71 = *(v4 + 8);
        v71(v15, v3);
        return (v71)(v29, v3);
      }

LABEL_31:
      swift_once();
      goto LABEL_22;
    }

    v84 = v26;
    if (qword_1005D8730 != -1)
    {
      swift_once();
    }

    v44 = sub_1004A4A74();
    sub_1001C203C(v44, qword_1005D8A20);
    v45 = v87;
    (*(v4 + 16))(v12, v87, v3);

    v46 = sub_1004A4A54();
    v47 = sub_1004A6034();

    if (!os_log_type_enabled(v46, v47))
    {

      v81 = *(v4 + 8);
      v81(v12, v3);
      return (v81)(v45, v3);
    }

    v48 = swift_slowAlloc();
    result = swift_slowAlloc();
    v83 = result;
    v88 = result;
    *v48 = 134218754;
    if (!__OFADD__(v86, 1))
    {
      *(v48 + 4) = v86 + 1;
      *(v48 + 12) = 2048;
      *(v48 + 14) = v85;
      *(v48 + 22) = 2082;
      sub_10030C4CC();
      v50 = sub_1004A6CE4();
      v52 = v51;
      v86 = *(v4 + 8);
      (v86)(v12, v3);
      v53 = sub_10015BA6C(v50, v52, &v88);

      *(v48 + 24) = v53;
      *(v48 + 32) = 2080;
      sub_100236568(8, v84, v28);

      v54 = sub_1004A5864();
      v56 = v55;

      v57 = sub_10015BA6C(v54, v56, &v88);

      *(v48 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%ld/%ld] Marking mailbox %{public}s for account '%s' as deleted.", v48, 0x2Au);
      swift_arrayDestroy();

      return (v86)(v87, v3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10030B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v105 = sub_1004A44E4();
  v108 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v103 - v6;
  v117 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v117);
  v8 = &v103 - v7;
  v9 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v9 - 8);
  v11 = &v103 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v19 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v103 - v23;
  v120 = a2;
  sub_100095840(a2, &v103 - v23);
  v26 = *(v13 + 48);
  v25 = v13 + 48;
  v118 = v26;
  v119 = v12;
  v27 = 0;
  if (v26(v24, 1, v12) == 1)
  {
    goto LABEL_5;
  }

  sub_10009DE7C(v24, v18);
  v28 = sub_1000E5314();
  if ((v28 & 0x100000000) == 0)
  {
    LODWORD(v122) = v28;
    MessageIdentifierSet.ranges.getter(v11);
    v29 = sub_1000E4C0C() >> 32;
    v31 = v30;
    sub_100025F40(v11, &qword_1005CD7A0, &unk_1004CF590);
    if (v31)
    {
      goto LABEL_88;
    }

    v121 = v29;
    v32 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v122, &v121, &type metadata for UID, v123);
    v122 = Range<>.init<A>(_:)(v123, &type metadata for UID, v32);
    sub_100016D2C();
    sub_1004A7124();
    v27 = sub_10037A73C();
    sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v18, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_5:
    v106 = v27;
    v33 = sub_10030C324(v27);
    v34 = [v33 count];
    if (v34 >= 1)
    {
      v36 = v34;
      v115 = 0;
      v116 = 0;
      v113 = 0;
      v114 = 0;
      v37 = 0;
      *&v35 = 134218240;
      v103 = v35;
      v109 = v25;
      while (1)
      {
        v38 = [v33 objectAtIndexedSubscript:{v37, v103}];
        sub_1004A64E4();
        swift_unknownObjectRelease();
        _s7MessageCMa();
        if (!swift_dynamicCast())
        {
          goto LABEL_89;
        }

        v27 = v122;
        sub_100095840(v120, v21);
        if (v118(v21, 1, v119) == 1)
        {
          break;
        }

        sub_10009DE7C(v21, v15);
        v39 = sub_1004A5734();
        [v27 willAccessValueForKey:v39];

        v40 = [v27 primitiveUid];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 longLongValue];

          v43 = (v42 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v42 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v42) = 0;
          }
        }

        else
        {
          LODWORD(v42) = 0;
          v43 = 1;
        }

        v44 = sub_1004A5734();
        [v27 didAccessValueForKey:v44];

        if (v43)
        {
          v46 = v15;
          v47 = &qword_1005CD1D0;
          v48 = &unk_1004CF2C0;
          goto LABEL_21;
        }

        LODWORD(v123[0]) = v42;
        v45 = MessageIdentifierSet.contains(_:)(v123, v117);
        sub_100025F40(v15, &qword_1005CD1D0, &unk_1004CF2C0);
        if ((v45 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        [v27 setMailbox:0];
        v49 = sub_1004A5734();
        [v27 willAccessValueForKey:v49];

        v50 = [v27 primitiveIndexGeneration];
        if (v50)
        {
          v51 = v50;
          v52 = [v50 longLongValue];

          v53 = sub_1004A5734();
          [v27 didAccessValueForKey:v53];

          if (v52)
          {
            v54 = v115 + 1;
            v25 = v109;
            if (__OFADD__(v115, 1))
            {
              __break(1u);
              goto LABEL_79;
            }

            v55 = v116;
            goto LABEL_29;
          }
        }

        else
        {
          v56 = sub_1004A5734();
          [v27 didAccessValueForKey:v56];
        }

        [v110 deleteObject:v27];
        v55 = v116 + 1;
        v25 = v109;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_75;
        }

        v54 = v115;
LABEL_29:
        if (__OFADD__(v55, v54))
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v114 = v54;
        v115 = v54;
        v116 = v55;
        v113 = v55;
        if ((0x7EB9037BC7F43BC3 * (v55 + v54) + 0x9E89F287C7A4FLL) <= 0x13D13E50F8F49ELL)
        {
          v57 = static MonotonicTime.now()();
          v58 = *(v111 + 16);
          if ([v58 hasChanges])
          {
            if (sub_100309840())
            {
              goto LABEL_92;
            }

            v59 = *(v111 + 48);
            v60 = v57 - v59;
            if (v57 >= v59)
            {
              if (__OFSUB__(v57, v59))
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (__OFSUB__(v59, v57))
              {
                goto LABEL_82;
              }

              v60 = v57 - v59;
              if (__OFSUB__(0, v59 - v57))
              {
                goto LABEL_84;
              }
            }

            if (v60 / 1000000000.0 > 4.0)
            {
LABEL_92:
              if ([v58 hasChanges])
              {
                v61 = v111;

                sub_100309C70(v62, v61);

                *(v61 + 56) = 0;
                swift_unknownObjectRelease();
              }
            }
          }

          if (qword_1005D8730 != -1)
          {
            swift_once();
          }

          v63 = sub_1004A4A74();
          sub_1001C203C(v63, qword_1005D8A20);
          v64 = sub_1004A4A54();
          v65 = sub_1004A6034();
          v66 = os_log_type_enabled(v64, v65);
          v67 = v115;
          v68 = v116;
          if (v66)
          {
            v69 = swift_slowAlloc();
            *v69 = v103;
            *(v69 + 4) = v116;
            *(v69 + 12) = 2048;
            *(v69 + 14) = v115;
            _os_log_impl(&_mh_execute_header, v64, v65, "  Did delete %ld message(s), did mark %ld message(s) for removal from Spotlight.", v69, 0x16u);

            v67 = v115;
            v68 = v116;
          }

          v113 = v68;
          v114 = v67;
        }

LABEL_8:
        ++v37;

        if (v37 >= v36)
        {
          goto LABEL_47;
        }
      }

      v46 = v21;
      v47 = &qword_1005CD518;
      v48 = &qword_1004CF2F0;
LABEL_21:
      sub_100025F40(v46, v47, v48);
      goto LABEL_22;
    }

    v115 = 0;
    v116 = 0;
    v113 = 0;
    v114 = 0;
LABEL_47:

    v37 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v25 = v108;
    v15 = v107;
    v27 = v106;
    if ((0x7EB9037BC7F43BC3 * v37 + 0x9E89F287C7A4FLL) < 0x13D13E50F8F49FLL)
    {
LABEL_64:
      if (qword_1005D8730 == -1)
      {
LABEL_65:
        v81 = sub_1004A4A74();
        sub_1001C203C(v81, qword_1005D8A20);
        v82 = sub_1004A4A54();
        v83 = sub_1004A6034();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 134217984;
          *(v84 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v82, v83, "Found %ld messages.", v84, 0xCu);
        }

        v86 = sub_100340AF8(v85);
        if (!v87)
        {
          goto LABEL_73;
        }

        v88 = sub_1003070C0(v86, v87);

        v89 = v88;
        v123[0] = sub_10033A6CC();
        sub_1004A44D4();
        v90 = v104;
        v91 = v105;
        (*(v25 + 16))(v104, v15, v105);
        sub_1004A4464();
        v93 = round(v92 / 21600.0);
        v94 = *(v25 + 8);
        v94(v90, v91);
        if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_72:
          v94(v15, v91);
          v95 = v123[0];
          v96 = sub_1004A5734();
          [v89 willChangeValueForKey:v96];

          v98 = sub_100373DA8(v95, v97);
          v100 = v99;

          isa = sub_1004A4404().super.isa;
          sub_100014D40(v98, v100);
          [v89 setPrimitiveDataUsage:isa];

          v102 = sub_1004A5734();
          [v89 didChangeValueForKey:v102];

LABEL_73:
          return;
        }

        if (v93 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v93 < 9.22337204e18)
        {
          sub_100375070(v93, v123);
          goto LABEL_72;
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_77:
      swift_once();
      goto LABEL_65;
    }

    v70 = static MonotonicTime.now()();
    v71 = *(v111 + 16);
    if (![v71 hasChanges])
    {
      goto LABEL_60;
    }

    if (sub_100309840())
    {
      goto LABEL_58;
    }

    v72 = *(v111 + 48);
    v73 = __OFSUB__(v70, v72);
    v74 = v70 - v72;
    if (v70 < v72)
    {
      if (__OFSUB__(v72, v70))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v73 = __OFSUB__(0, v72 - v70);
      v74 = v70 - v72;
      if (!v73)
      {
LABEL_57:
        if (v74 / 1000000000.0 > 4.0)
        {
LABEL_58:
          if ([v71 hasChanges])
          {
            v75 = v111;

            sub_100309C70(v76, v75);

            *(v75 + 56) = 0;
            swift_unknownObjectRelease();
          }
        }

LABEL_60:
        if (qword_1005D8730 != -1)
        {
LABEL_79:
          swift_once();
        }

        v77 = sub_1004A4A74();
        sub_1001C203C(v77, qword_1005D8A20);
        v78 = sub_1004A4A54();
        v79 = sub_1004A6034();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 134218240;
          *(v80 + 4) = v116;
          *(v80 + 12) = 2048;
          *(v80 + 14) = v115;
          _os_log_impl(&_mh_execute_header, v78, v79, "  Did delete %ld message(s), did mark %ld message(s) for removal from Spotlight.", v80, 0x16u);
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    if (v73)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    goto LABEL_57;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  sub_1004A69A4();
  __break(1u);
}

id sub_10030C324(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_1004A5734();
  v6 = [v4 initWithEntityName:v5];

  sub_10031E2EC(v2);
  if (a1)
  {
    [v6 appendPredicate:a1];
  }

  [v6 setReturnsObjectsAsFaults:0];
  isa = sub_1004A5C04().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:isa];

  [v6 setFetchBatchSize:1237];
  v14 = 0;
  v8 = v6;
  v9 = [v8 execute:&v14];
  if (v9)
  {
    v10 = v9;
    v11 = v14;

    return v10;
  }

  else
  {
    v13 = v14;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10030C4CC()
{
  result = qword_1005D8A38;
  if (!qword_1005D8A38)
  {
    v3 = sub_1004A4374();
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v3, v0, v1);
    atomic_store(result, &qword_1005D8A38);
  }

  return result;
}

uint64_t sub_10030C524()
{
  v0 = sub_1004A4374();
  sub_1001C2074(v0, qword_1005D8A40);
  v1 = sub_1001C203C(v0, qword_1005D8A40);
  return sub_10030C570(v1);
}

uint64_t sub_10030C570@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1004A4294();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004A4374();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = [objc_allocWithZone(NSFileManager) init];
  v26[0] = 0;
  v12 = [v11 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v26];

  v13 = v26[0];
  if (v12)
  {
    sub_1004A4344();
    v14 = v13;

    v26[0] = 1818845517;
    v26[1] = 0xE400000000000000;
    v23 = enum case for URL.DirectoryHint.isDirectory(_:);
    v22 = *(v2 + 104);
    v22(v4);
    sub_1001C2190();
    sub_1004A4364();
    v15 = v10;
    v16 = *(v2 + 8);
    v16(v4, v1);
    v17 = *(v5 + 8);
    v18 = v7;
    v19 = v24;
    v17(v18, v24);
    strcpy(v26, "SearchIndexer");
    HIWORD(v26[1]) = -4864;
    (v22)(v4, v23, v1);
    sub_1004A4364();
    v16(v4, v1);
    return (v17)(v15, v19);
  }

  else
  {
    v21 = v26[0];
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030C8C4()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8A58);
  sub_1001C203C(v0, qword_1005D8A58);
  return sub_1004A4A64();
}

uint64_t sub_10030C94C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004A5244();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1004A5274();
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
  *v15 = 0;
  v15[1] = 0;
  v16 = v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume;
  v18 = sub_1004A4374();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 16);
  v38 = a1;
  v19(v5 + v17, a1);
  *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_queue) = a2;
  *v15 = a3;
  v15[1] = a4;
  v20 = qword_1005D8750;
  v21 = a2;
  v37 = a4;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = off_1005D8A78;
  if (qword_1005D8748 != -1)
  {
    swift_once();
  }

  v23 = v22(qword_1005D8A70, 0, 98304, v21);
  *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source) = v23;
  v33 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source;
  v24 = swift_allocObject();
  swift_weakInit();
  v52 = sub_10030E120;
  v53 = v24;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v45 = &v50;
  v50 = sub_10019C778;
  v51 = &unk_1005B33A8;
  v25 = _Block_copy(&aBlock);
  v34 = v21;
  v26 = v25;

  sub_1004A5254();
  v47 = _swiftEmptyArrayStorage;
  v42 = sub_10022AAC8();
  v41 = sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  v40 = sub_10022AB20();
  sub_1004A6544();
  v39 = sub_100210D7C();
  sub_1004A60F4();
  _Block_release(v26);
  v44 = *(v44 + 8);
  (v44)(v12, v10);
  v43 = *(v43 + 8);
  (v43)(v14, v46);

  v32[1] = *(v5 + v33);
  v27 = swift_allocObject();
  swift_weakInit();
  v52 = sub_10030D970;
  v53 = v27;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10019C778;
  v51 = &unk_1005B33D0;
  v28 = _Block_copy(&aBlock);

  sub_1004A5254();
  v47 = _swiftEmptyArrayStorage;
  sub_1004A6544();
  sub_1004A60C4();
  _Block_release(v28);
  (v44)(v12, v10);
  (v43)(v14, v46);

  v29 = swift_allocObject();
  swift_weakInit();

  v52 = sub_10030D98C;
  v53 = v29;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10019C778;
  v51 = &unk_1005B33F8;
  v30 = _Block_copy(&aBlock);

  sub_1004A5254();
  v47 = _swiftEmptyArrayStorage;
  sub_1004A6544();
  sub_1004A60E4();
  _Block_release(v30);

  (*(v35 + 8))(v38, v36);
  (v44)(v12, v10);
  (v43)(v14, v46);

  return v5;
}

uint64_t sub_10030CFFC()
{
  v1 = sub_1004A4374();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume, v1);
    result = sub_10030D994(v4);
    v14 = v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue;
    if ((*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_lastValue + 16) & 1) != 0 || (result == *v14 ? (v15 = v13 == *(v14 + 8)) : (v15 = 0), !v15))
    {
      *v14 = result;
      *(v14 + 8) = v13;
      *(v14 + 16) = 0;
      v16 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
      if (v16)
      {
        v17 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8);
        v18 = result;
        v19 = v13;

        v16(v18, v19);
        return sub_1000B5158(v16, v17);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10030D228(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030CFFC();
  }

  return result;
}

uint64_t sub_10030D280(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
    v4 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update);
    v3 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8);
    *v2 = 0;
    v2[1] = 0;
    sub_1000B5158(v4, v3);
  }

  return result;
}

uint64_t sub_10030D2F0()
{
  v1 = OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_volume;
  v2 = sub_1004A4374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000B5158(*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update), *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_update + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiskSpaceObserver(uint64_t a1)
{
  result = qword_1005D8AC0;
  if (!qword_1005D8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030D414(uint64_t a1)
{
  result = sub_1004A4374();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10030D500(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v27 = a1;
  v4 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v26 = sub_1004A4204();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A4374();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10000C9C0(&qword_1005D8B68, &unk_1004F5D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = NSURLVolumeURLKey;
  v18 = NSURLVolumeURLKey;
  sub_100330494(inited);
  swift_setDeallocating();
  sub_10030D8C4(inited + 32);
  sub_1004A42C4();

  sub_1004A41F4();
  (*(v7 + 8))(v9, v26);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    __break(1u);

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1004A6724(38);

    v28 = 0xD000000000000023;
    v29 = 0x80000001004AEC60;
    v30._countAndFlagsBits = sub_1004A4354();
    sub_1004A5994(v30);

    v31._countAndFlagsBits = 39;
    v31._object = 0xE100000000000000;
    sub_1004A5994(v31);
    result = sub_1004A69A4();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v16, v6, v10);
    (*(v11 + 16))(v13, v16, v10);
    type metadata accessor for DiskSpaceObserver(0);
    v19 = swift_allocObject();
    sub_10030C94C(v13, v23, v24, v25);
    v20 = *(v11 + 8);
    v20(v27, v10);
    v20(v16, v10);
    return v19;
  }

  return result;
}

uint64_t sub_10030D8C4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030D920()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030D958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10030D994(char *a1)
{
  v2 = sub_1004A4374();
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v8 = sub_10000C9C0(&qword_1005D8B70, &unk_1004F5D90);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_1004A4204();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D8B68, &unk_1004F5D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  *(inited + 40) = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  v16 = NSURLVolumeAvailableCapacityKey;
  v17 = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  sub_100330494(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1004A42C4();

  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v12 + 32))(v14, v10, v11);
  v18 = sub_1004A41D4();
  if (v19)
  {
    (*(v12 + 8))(v14, v11);
    v20 = a1;
LABEL_5:
    v24 = v60;
    v25 = v61;
    v26 = v59;
    if (qword_1005D8740 != -1)
    {
      swift_once();
    }

    v27 = sub_1004A4A74();
    sub_1001C203C(v27, qword_1005D8A58);
    (*(v25 + 16))(v26, v20, v24);
    v28 = sub_1004A4A54();
    v29 = sub_1004A6014();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62[0] = v31;
      *v30 = 136446210;
      v32 = sub_1004A4354();
      v58 = v20;
      v34 = v33;
      v35 = *(v25 + 8);
      v35(v26, v24);
      v36 = sub_10015BA6C(v32, v34, v62);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to get resource values for volume '%{public}s'.", v30, 0xCu);
      sub_1000197E0(v31);

      v35(v58, v24);
    }

    else
    {

      v37 = *(v25 + 8);
      v37(v20, v24);
      v37(v26, v24);
    }

    return 0;
  }

  v21 = v18;
  v22 = sub_1004A41E4();
  v20 = a1;
  if (v23)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_5;
  }

  v39 = v22;
  v40 = v60;
  if (v21 < 0 || v22 < 0)
  {
    v57 = v12;
    v59 = v11;
    if (qword_1005D8740 != -1)
    {
      swift_once();
    }

    v41 = sub_1004A4A74();
    sub_1001C203C(v41, qword_1005D8A58);
    v42 = v61;
    v43 = v7;
    (*(v61 + 16))(v7, v20, v40);
    v44 = sub_1004A4A54();
    v45 = sub_1004A6014();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v56 = v14;
      v58 = v20;
      v47 = v46;
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v47 = 136446722;
      v55 = v45;
      v54 = sub_1004A4354();
      v50 = v49;
      v51 = *(v42 + 8);
      v51(v43, v40);
      v52 = sub_10015BA6C(v54, v50, v62);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v21;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v44, v55, "Resource values for volume '%{public}s'. are out of bounds: %ld %lld.", v47, 0x20u);
      sub_1000197E0(v48);

      v51(v58, v40);
      (*(v57 + 8))(v56, v59);
    }

    else
    {

      v53 = *(v42 + 8);
      v53(v20, v40);
      v53(v43, v40);
      (*(v57 + 8))(v14, v59);
    }

    return 0;
  }

  (*(v61 + 8))(a1, v60);
  (*(v12 + 8))(v14, v11);
  return v21;
}

uint64_t sub_10030E0B0(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D8B70, &unk_1004F5D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030E12C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v10 = a4 | (a4 << 32);
    sub_1004A6EB4(v10);
    v11 = sub_1004A6F14();
    v12 = a5 + 56;
    v13 = -1 << *(a5 + 32);
    v14 = v11 & ~v13;
    if ((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      v16 = *(a5 + 48);
      do
      {
        v17 = v16 + 32 * v14;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = *v17 == a1 && *(v17 + 8) == a2;
        if (v20 || (sub_1004A6D34()) && (v19 | (v19 << 32)) == v10)
        {
          v21 = *(v18 + 16);
          if (v21 == *(a3 + 16))
          {
            if (!v21 || v18 == a3)
            {
              return 1;
            }

            v22 = (v18 + 32);
            for (i = (a3 + 32); *v22 == *i; ++i)
            {
              ++v22;
              if (!--v21)
              {
                return 1;
              }
            }
          }
        }

        v14 = (v14 + 1) & v15;
      }

      while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_10030E2B0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D8B78);
  sub_1001C203C(v0, qword_1005D8B78);
  return sub_1004A4A64();
}

double sub_10030E32C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100350C90(_swiftEmptyArrayStorage);
  *&v8 = a1;
  *(&v8 + 1) = 0xDA3E39CB94B95BDBLL;
  v5 = sub_100039EE0(0x20000000000001uLL);
  v6 = vcvtd_n_f64_u64(v5, 0x35uLL) * 500.0 + 800.0;
  if (v5 == 0x20000000000000)
  {
    v6 = 1300.0;
  }

  *a2 = v8;
  *(a2 + 16) = v6;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = v4;
  result = 0.0;
  *(a2 + 48) = xmmword_1004F5DA0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_10030E408(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *a1 = sub_10031C104;
  a1[1] = v6;
}

uint64_t sub_10030E47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030E4F0(a1, a2);
  }

  return result;
}

void sub_10030E4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[2];
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  (v13)(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v28 = v11;
  LOBYTE(v11) = sub_1004A5404();
  v29 = *(v7 + 8);
  v29(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v14 = v3[19];
  v3[19] = a1;
  v3[20] = a2;
  swift_beginAccess();
  if ((v3[13] & 0x8000000000000000) != 0 && v14)
  {
    return;
  }

  v27 = v13;
  if (qword_1005D8758 != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v26 = sub_1004A4A74();
  sub_1001C203C(v26, qword_1005D8B78);
  v15 = sub_1004A4A54();
  v16 = sub_1004A6034();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v25) = v12;
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "Available disk space changed. Free space: %{iec-bytes}ld, for opportunistic use: %{iec-bytes}ld", v17, 0x16u);
    v12 = HIDWORD(v25);
  }

  v18 = v27;
  if ((v3[13] & 0x8000000000000000) == 0)
  {
    v19 = v3[12];
    v20 = v28;
    *v10 = v28;
    v18(v10, v12, v6);
    v21 = v20;
    LOBYTE(v20) = sub_1004A5404();
    v29(v10, v6);
    if (v20)
    {
      if (v3[19] > 0x2540BE3FFLL || v3[20] > 0x9502F8FFFLL)
      {
        return;
      }

      if (qword_1005D8758 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_12:
    sub_1001C203C(v26, qword_1005D8B78);
    v22 = sub_1004A4A54();
    v23 = sub_1004A6014();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Stopping download & index due to low disk space.", v24, 2u);
    }

    sub_100310548(v19);
  }
}

uint64_t sub_10030E874(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030E8CC();
  }

  return result;
}

void sub_10030E8CC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[2];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  v9 = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    __chkstk_darwin(v9);
    v6 = &v15 - 4;
    *(&v15 - 2) = sub_10031C074;
    *(&v15 - 1) = v1;
    v10 = qword_1005D8758;
    swift_retain_n();
    if (v10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1004A4A74();
  v12 = sub_1001C203C(v11, qword_1005D8B78);
  swift_beginAccess();
  v13 = static MonotonicTime.now()();
  sub_1003107C4(v13, sub_10031C0F8, v6, sub_10031C090, v1, v12);
  swift_endAccess();
  v14 = v1[22];
  if ((v1[13] & 0x8000000000000000) != 0)
  {
    if (v14)
    {

      RestartableTimer.stop()();
      goto LABEL_8;
    }
  }

  else if (v14)
  {

    RestartableTimer.start()();
LABEL_8:
  }

  sub_10030F3D0();
  sub_10030FFC0();
}

double sub_10030EB24@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + 16);
    *v6 = v9;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v10 = v9;
    LOBYTE(v9) = sub_1004A5404();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      swift_beginAccess();
      v11 = v8[6];
      v17[2] = v8[5];
      v17[3] = v11;
      v18[0] = v8[7];
      *(v18 + 12) = *(v8 + 124);
      v12 = v8[4];
      v17[0] = v8[3];
      v17[1] = v12;
      sub_10000E268(v17, v16, qword_1005D8CD0, &qword_1004F5F58);
      if (qword_1005D8758 == -1)
      {
LABEL_4:
        v13 = sub_1004A4A74();
        v14 = sub_1001C203C(v13, qword_1005D8B78);
        sub_100314738(v14);
        sub_100025F40(v17, qword_1005D8CD0, &qword_1004F5F58);
        sub_10030F3D0();

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_10030ED34()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  sub_10031B5C0(v1, v2, v3, v4, v5);

  return v0;
}

uint64_t sub_10030EDE8()
{
  sub_10030ED34();

  return swift_deallocClassInstance();
}

uint64_t sub_10030EE40(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10030EE58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030EEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_10030EF14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10030EF28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_10030EF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10030EFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = v4;
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v6[2];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1004A5404();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_4:
    v18 = sub_1004A4A74();
    v19 = sub_1001C203C(v18, qword_1005D8B78);

    v20 = sub_1004A4A54();
    v21 = sub_1004A6034();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = a1;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v5;

      _os_log_impl(&_mh_execute_header, v20, v21, "Start B {%ld} for %ld account(s)", v22, 0x16u);
    }

    else
    {
    }

    __chkstk_darwin(v23);
    swift_beginAccess();
    swift_retain_n();
    v28 = static MonotonicTime.now()();
    sub_10030F5CC(v28, a1, a2, sub_10031B284, (&v30 - 4), sub_10031C0FC, v6, v19, a3, a4);
    swift_endAccess();
    v29 = v6[22];
    if ((v6[13] & 0x8000000000000000) != 0)
    {
      if (v29)
      {

        RestartableTimer.stop()();
        goto LABEL_17;
      }
    }

    else if (v29)
    {

      RestartableTimer.start()();
LABEL_17:
    }

    sub_10030F3D0();
    sub_10030FFC0();
    return;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (qword_1005D8758 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v24 = sub_1004A4A74();
  sub_1001C203C(v24, qword_1005D8B78);
  v25 = sub_1004A4A54();
  v26 = sub_1004A6034();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v25, v26, "{%ld} No account are currently available.", v27, 0xCu);
  }

  sub_10030F3D0();
  a3(1);
}

void sub_10030F3D0()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = static MonotonicTime.now()();
  v9 = v0[23];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v8 >= v9)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(0, v9 - v8);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  if (v11 / 1000000000.0 > 60.0)
  {
    v0[23] = v8;
    v12 = v0[3];
    aBlock[4] = sub_10031B350;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3718;
    v13 = _Block_copy(aBlock);

    [v12 performBlock:v13];
    _Block_release(v13);
  }
}

void sub_10030F5CC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t), uint64_t a7, void *a8, uint64_t (*a9)(void), uint64_t a10)
{
  v119 = a1;
  v120 = a6;
  v114 = a4;
  v115 = a5;
  v116 = a3;
  v14 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v14 - 8);
  v16 = v103 - v15;
  v17 = *(v10 + 48);
  v117 = a2;
  if (v17 >= a2)
  {
    v32 = sub_1004A4A54();
    v33 = sub_1004A6034();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = v17;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v32, v33, "Current ID {%ld} or higher than new {%ld}: Ignoring request to start download. Requesting deferral.", v34, 0x16u);
    }

    a9(0);
    return;
  }

  v107 = v10 + 48;
  v118 = a8;
  v18 = *(v10 + 88);
  v112 = v18;
  v113 = a7;
  if (v18 + 1 > 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v10 + 88) = v19;
  v121 = v10;
  v20 = *(v10 + 24);
  v21 = v20[2];
  v22 = _swiftEmptyArrayStorage;
  v109 = a9;
  v110 = a10;
  v111 = _swiftEmptyArrayStorage;
  v108 = v16;
  if (v21)
  {
    *&v132[0] = _swiftEmptyArrayStorage;
    sub_10034F590(0, v21, 0);
    v23 = 0;
    v22 = *&v132[0];
    v24 = v20 + 5;
    v122 = v20;
    while (v23 < v20[2])
    {
      v25 = v21;
      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = HIBYTE(*v24) & 0xF;
      if ((*v24 & 0x2000000000000000) == 0)
      {
        v28 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
        goto LABEL_56;
      }

      *&v132[0] = v22;
      v30 = v22[2];
      v29 = v22[3];

      if (v30 >= v29 >> 1)
      {
        sub_10034F590((v29 > 1), v30 + 1, 1);
        v22 = *&v132[0];
      }

      ++v23;
      v22[2] = v30 + 1;
      v31 = &v22[2 * v30];
      v31[4] = v27;
      v31[5] = v26;
      v24 += 8;
      v21 = v25;
      v20 = v122;
      if (v25 == v23)
      {
        v16 = v108;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_18:

  v35 = sub_1004A4A54();
  v36 = sub_1004A6034();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&v132[0] = v122;
    *v37 = 67109634;
    *(v37 + 4) = v112;
    *(v37 + 8) = 2048;
    *(v37 + 10) = v22[2];

    *(v37 + 18) = 2082;
    v38 = v22[2];
    if (v38)
    {
      v104 = v36;
      v105 = v37;
      v106 = v35;
      *&v127 = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v38, 0);
      v39 = v127;
      v103[1] = v22;
      v40 = v22 + 5;
      do
      {

        sub_1004A5954();
        v41 = sub_1004A5AB4();
        v43 = v42;
        v45 = v44;
        v47 = v46;

        *&v127 = v39;
        v49 = v39[2];
        v48 = v39[3];
        if (v49 >= v48 >> 1)
        {
          sub_10034F5D0((v48 > 1), v49 + 1, 1);
          v39 = v127;
        }

        v39[2] = v49 + 1;
        v50 = &v39[4 * v49];
        v50[4] = v41;
        v50[5] = v43;
        v50[6] = v45;
        v50[7] = v47;
        v40 += 2;
        --v38;
      }

      while (v38);

      v16 = v108;
      v37 = v105;
      v35 = v106;
      LOBYTE(v36) = v104;
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
    }

    *&v127 = v39;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_1000CBB00(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00);
    sub_1002AACE0();
    v51 = sub_1004A5BC4();
    v53 = v52;

    v54 = sub_10015BA6C(v51, v53, v132);

    *(v37 + 20) = v54;
    _os_log_impl(&_mh_execute_header, v35, v36, "Starting new download with sync #%u for %ld account(s): %{public}s", v37, 0x1Cu);
    sub_1000197E0(v122);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v55 = v121;
  v56 = sub_1004A4A74();
  v57 = *(v56 - 8);
  (*(v57 + 16))(v16, v118, v56);
  (*(v57 + 56))(v16, 0, 1, v56);
  sub_10031C31C(v119, v120, v113, v16, v55);
  sub_100025F40(v16, &qword_1005D5968, &unk_1004E9180);

  v58 = _swiftEmptyArrayStorage;
  v55[3] = _swiftEmptyArrayStorage;
  v59 = v55[7];
  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = v55[6];
    v61 = v55;
    v62 = v55[8];
    v63 = v61[9];
    v64 = v61[10];

    v65 = sub_1004A4A54();
    v66 = sub_1004A6034();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67109120;
      *(v67 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v65, v66, "Stop and clear everything: completing sync #%u for all accounts.", v67, 8u);
    }

    v68 = *(v121 + 48);
    v132[2] = *(v121 + 32);
    v132[3] = v68;
    v133[0] = *(v121 + 64);
    *(v133 + 12) = *(v121 + 76);
    v69 = *(v121 + 16);
    v132[0] = *v121;
    v132[1] = v69;
    v135 = *(v107 + 32);
    v70 = *(v107 + 16);
    v134[0] = *v107;
    v134[1] = v70;

    v71 = sub_100315B60();
    v63(v71);
    sub_10031B5C0(v60, v59, v62, v63, v64);
    sub_10031B5C0(v60, v59, v62, v63, v64);
    sub_100025F40(v134, &qword_1005D8C90, &qword_1004F5F10);
    v58 = _swiftEmptyArrayStorage;
  }

  v72 = v116;
  v73 = *(v116 + 16);
  if (v73)
  {
    v131 = _swiftEmptyArrayStorage;
    sub_10034F610(0, v73, 0);
    v58 = _swiftEmptyArrayStorage;
    v74 = v131;
    v75 = v72 + 32;
    for (i = v73 - 1; ; --i)
    {
      v77 = *(v75 + 16);
      v127 = *v75;
      v128 = v77;
      v129 = *(v75 + 32);
      v130 = *(v75 + 48);
      sub_10031B228(&v127, &v123);
      v131 = v74;
      v79 = v74[2];
      v78 = v74[3];
      if (v79 >= v78 >> 1)
      {
        sub_10034F610((v78 > 1), v79 + 1, 1);
        v58 = _swiftEmptyArrayStorage;
        v74 = v131;
      }

      v124 = v128;
      v125 = v129;
      v126 = v130;
      v80 = v127;
      v123 = v127;
      v74[2] = v79 + 1;
      v81 = &v74[8 * v79];
      v82 = v125;
      v83 = v126;
      *(v81 + 3) = v124;
      *(v81 + 4) = v82;
      *(v81 + 2) = v80;
      v81[10] = v83;
      v81[11] = 0;
      if (!i)
      {
        break;
      }

      v75 += 56;
    }
  }

  else
  {

    v74 = _swiftEmptyArrayStorage;
  }

  v84 = v121;
  *(v121 + 24) = v74;
  v85 = v74[2];
  if (v85)
  {
    *&v127 = _swiftEmptyArrayStorage;
    sub_10034F5F0(0, v85, 0);
    v86 = 0;
    v87 = v127;
    v88 = v74 + 5;
    v122 = v85;
    while (v86 < v74[2])
    {
      v89 = v74;
      v91 = *(v88 - 1);
      v90 = *v88;
      v92 = HIBYTE(*v88) & 0xF;
      if ((*v88 & 0x2000000000000000) == 0)
      {
        v92 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (!v92)
      {
        goto LABEL_58;
      }

      *&v127 = v87;
      v94 = v87[2];
      v93 = v87[3];
      v95 = v87;

      if (v94 >= v93 >> 1)
      {
        sub_10034F5F0((v93 > 1), v94 + 1, 1);
        v95 = v127;
      }

      v86 = (v86 + 1);
      v95[2] = v94 + 1;
      v96 = &v95[3 * v94];
      v96[4] = v91;
      v96[5] = v90;
      *(v96 + 48) = 0;
      v88 += 8;
      v87 = v95;
      v74 = v89;
      if (v122 == v86)
      {
        v111 = v95;
        v98 = v109;
        v97 = v110;
        v84 = v121;
        goto LABEL_52;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);

    __break(1u);
    return;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v98 = v109;
    v97 = v110;
LABEL_52:
    sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
    v99 = sub_1004A6A74();
    v58 = v111;
  }

  else
  {
    v99 = _swiftEmptyDictionarySingleton;
    v98 = v109;
    v97 = v110;
  }

  *&v127 = v99;
  sub_10031B368(v58, 1, &v127);

  v100 = v127;

  v84[5] = v100;
  v101 = static MonotonicTime.now()();
  v102 = v112;
  v84[6] = v117;
  v84[7] = v102;
  v84[8] = v101;
  v84[9] = v98;
  v84[10] = v97;

  sub_1003107C4(v119, v114, v115, v120, v113, v118);
}

void sub_10030FFC0()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = static MonotonicTime.now()();
  v9 = v0[24];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v8 >= v9)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(0, v9 - v8);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  if (v11 / 1000000000.0 > 60.0)
  {
    v0[24] = v8;
    v12 = v0[3];
    aBlock[4] = sub_10031B2D0;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B36A0;
    v13 = _Block_copy(aBlock);

    [v12 performBlock:v13];
    _Block_release(v13);
  }
}

uint64_t sub_1003101BC(uint64_t a1)
{
  v3 = sub_1004A5244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A5274();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_10031C020;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B38D0;
  v11 = _Block_copy(aBlock);

  sub_1004A5254();
  v15 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_100310448(uint64_t a1)
{
  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005D8B78);
  v3 = sub_1004A4A54();
  v4 = sub_1004A6034();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop {%ld}", v5, 0xCu);
  }

  return sub_100310548(a1);
}

uint64_t sub_100310548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = qword_1005D8758;

    if (v11 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_1004A4A74();
  v13 = sub_1001C203C(v12, qword_1005D8B78);
  swift_beginAccess();
  v14 = static MonotonicTime.now()();
  v15 = *(v2 + 96);
  if (v15 <= a1)
  {
    sub_10031D29C(v14, a1, v13, (v2 + 48));
  }

  else
  {

    v16 = sub_1004A4A54();
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v15;
      *(v18 + 12) = 2048;
      *(v18 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Current ID {%ld} higher than {%ld}: Ignoring request to stop download.", v18, 0x16u);
    }
  }

  result = swift_endAccess();
  v20 = *(v2 + 176);
  if ((*(v2 + 104) & 0x8000000000000000) != 0)
  {
    if (!v20)
    {
      return result;
    }

    RestartableTimer.stop()();
  }

  else
  {
    if (!v20)
    {
      return result;
    }

    RestartableTimer.start()();
  }
}

void sub_1003107C4(NSObject *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v69 = a1;
  v67 = a4;
  sub_100314D40(a1, a4, a5, a6);
  v17 = *(v7 + 48);
  v18 = *(v7 + 56);
  if (v18 < 0)
  {
    v69 = sub_1004A4A54();
    v28 = sub_1004A6004();
    if (os_log_type_enabled(v69, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v69, v28, "Checking current batch: not currently running request.", v29, 2u);
    }

    v30 = v69;
  }

  else
  {
    v66 = a5;
    v60 = a2;
    v61 = a3;
    v19 = *(v7 + 64);
    v58 = v7 + 48;
    v59 = (v7 + 64);
    v21 = *(v7 + 72);
    v20 = *(v7 + 80);
    v77 = v17;
    v78 = v18;
    v79 = v19;
    v80 = v21;
    v81 = v20;
    sub_10031B5D0(v17, v18);
    sub_10031B5D0(v17, v18);
    v68 = a6;
    v22 = sub_1004A4A54();
    v23 = sub_1004A6004();
    v24 = os_log_type_enabled(v22, v23);
    v63 = v20;
    v64 = v21;
    v62 = v19;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = v21;
      v27 = v25;
      *v25 = 134218240;
      *(v25 + 4) = v17;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v18;
      sub_10031B5C0(v17, v18, v19, v26, v20);
      _os_log_impl(&_mh_execute_header, v22, v23, "{%ld} Checking current batch: request #%u.", v27, 0x12u);
    }

    else
    {
      sub_10031B5C0(v17, v18, v19, v21, v20);
    }

    v65 = v17;

    v31 = v69;
    v32 = sub_100315324(v69);
    v34 = v33;
    v35 = sub_1004A4A74();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v16, v68, v35);
    (*(v36 + 56))(v16, 0, 1, v35);

    sub_10031D53C(v31, v67, v66, v16, v7, v32);

    sub_100025F40(v16, &qword_1005D5968, &unk_1004E9180);
    v37 = *(v34 + 16);
    v38 = _swiftEmptyArrayStorage;
    if (v37)
    {
      v57 = v32;
      v66 = v18;
      v38 = sub_10035E0A8(v37, 0);
      v67 = sub_100139548(v75, v38 + 4, v37, v34);
      v39 = *&v75[0];

      sub_100020D08(v39);
      if (v67 != v37)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v18 = v66;
    }

    *&v75[0] = v38;
    sub_100317204(v75);
    v40 = v64;

    v42 = *&v75[0];
    __chkstk_darwin(v41);
    v43 = v68;
    *(&v57 - 6) = v7;
    *(&v57 - 5) = v43;
    *(&v57 - 4) = &v77;
    v44 = v61;
    *(&v57 - 3) = v60;
    *(&v57 - 2) = v44;
    *(&v57 - 1) = &v69->isa;
    v45 = sub_100315840(sub_10031B5E0, (&v57 - 8), v42);

    sub_1003326A4(v45);
    v46 = *(v7 + 24);
    if (!*(*(v7 + 32) + 16))
    {

      v46 = _swiftEmptyArrayStorage;
      *(v7 + 24) = _swiftEmptyArrayStorage;
    }

    v47 = v65;
    v49 = v62;
    v48 = v63;
    if (!v46[2])
    {
      v50 = *(v7 + 48);
      v75[2] = *(v7 + 32);
      v75[3] = v50;
      v76[0] = *(v7 + 64);
      *(v76 + 12) = *(v7 + 76);
      v51 = *(v7 + 16);
      v75[0] = *v7;
      v75[1] = v51;
      v52 = *(v58 + 16);
      v82[0] = *v58;
      v82[1] = v52;
      v83 = *(v58 + 32);
      sub_1003159B4(v18);
      sub_100025F40(v82, &qword_1005D8C90, &qword_1004F5F10);
      *(v7 + 48) = v47;
      *(v7 + 56) = 0x8000000000000000;
      v53 = v59;
      *v59 = 0;
      v53[1] = 0;
      v53[2] = 0;
      v54 = *(v7 + 16);
      v70 = *v7;
      v71 = v54;
      v55 = *(v7 + 48);
      v72 = *(v7 + 32);
      v73 = v55;
      v74[0] = *(v7 + 64);
      *(v74 + 12) = *(v7 + 76);

      v56 = sub_100315B60();
      v40(v56);
      sub_10031B5C0(v47, v18, v49, v40, v48);
    }

    sub_10031B5C0(v47, v18, v49, v40, v48);
  }
}

Swift::Int sub_100310D8C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 0:
      return !v3;
    case 1:
      return v3 == 1;
    case 2:
      return v3 == 2;
  }

  if (v3 < 3)
  {
    return 0;
  }

  return sub_100083308(v2, v3);
}

uint64_t sub_100310DE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1004A5244();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004A5274();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 16);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_10031BF2C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3880;
  v16 = _Block_copy(aBlock);

  sub_1000CA1A0(a3);
  sub_1004A5254();
  v20 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_10031108C(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = a3;
  v48 = a1;
  v49 = a2;
  v4 = sub_1004A4A74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 16);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1004A5404();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v46 = v8;
    if (qword_1005D8758 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_1001C203C(v4, qword_1005D8B78);
  v19 = *(v5 + 16);
  v19(v7, v18, v4);
  v19(v10, v7, v4);
  v20 = v49;

  v21 = sub_100236568(8, v48, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = (*(v5 + 8))(v7, v4);
  v29 = &v10[*(v46 + 20)];
  *v29 = v21;
  v29[1] = v23;
  v29[2] = v25;
  v29[3] = v27;
  v30 = v47;
  if (v47)
  {
    v31 = v3;
    if (v47 == 1)
    {
      __chkstk_darwin(v28);
      v43 = sub_10031C100;
      v44 = v3;
      swift_beginAccess();
      swift_retain_n();
      v34 = static MonotonicTime.now()();
      sub_100312568(v34, v48, v49, sub_10031C0F8, &v45 - 4, sub_10031C0FC, v3, v10, v35);
    }

    else if (v47 == 2)
    {
      __chkstk_darwin(v28);
      v43 = sub_10031C100;
      v44 = v3;
      swift_beginAccess();
      swift_retain_n();
      v32 = static MonotonicTime.now()();
      sub_100312CA8(v32, v48, v49, sub_10031C0F8, (&v45 - 4), sub_10031C0FC, v3, v10, v33);
    }

    else
    {
      __chkstk_darwin(v28);
      v44 = v3;
      swift_beginAccess();
      swift_retain_n();
      v39 = static MonotonicTime.now()();
      sub_100311B00(v39, v48, v49, v30, sub_10031C0F8, (&v45 - 4), sub_10031C0FC, v3, v40, v10);
    }

    swift_endAccess();
    v41 = *(v3 + 176);
    if ((*(v31 + 104) & 0x8000000000000000) != 0)
    {
      if (v41)
      {

        RestartableTimer.stop()();
        goto LABEL_17;
      }
    }

    else if (v41)
    {

      RestartableTimer.start()();
LABEL_17:
    }

    sub_10031BF58(v10, _s6LoggerVMa_1);
  }

  v36 = v3;
  swift_beginAccess();
  sub_100311638(v48, v49, v10, v37);
  swift_endAccess();
  v38 = *(v3 + 176);
  if ((*(v36 + 104) & 0x8000000000000000) != 0)
  {
    if (v38)
    {

      RestartableTimer.stop()();
      goto LABEL_21;
    }
  }

  else if (v38)
  {

    RestartableTimer.start()();
LABEL_21:
  }

  return sub_10031BF58(v10, _s6LoggerVMa_1);
}

void sub_100311638(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v9 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = *(v4 + 40);
  if (*(v18 + 16) && (v19 = sub_10035E1B0(a1, a2), (v20 & 1) != 0) && *(*(v18 + 56) + v19))
  {
    if (*(*(v18 + 56) + v19) == 1)
    {
      sub_10031BFB8(a3, v17, _s6LoggerVMa_1);
      v21 = sub_1004A4A54();
      v22 = sub_1004A6004();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v44 = v24;
        *v23 = 136446210;
        v25 = sub_1004A5864();
        v27 = v26;
        sub_10031BF58(v17, _s6LoggerVMa_1);
        v28 = sub_10015BA6C(v25, v27, &v44);

        *(v23 + 4) = v28;
        v29 = "[%{public}s] Account did start sync but was already started.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, v22, v29, v23, 0xCu);
        sub_1000197E0(v24);

        return;
      }

      sub_10031BF58(v17, _s6LoggerVMa_1);
    }

    else
    {
      sub_10031BFB8(a3, v14, _s6LoggerVMa_1);
      v21 = sub_1004A4A54();
      v22 = sub_1004A6014();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v44 = v24;
        *v23 = 136446210;
        v39 = sub_1004A5864();
        v41 = v40;
        sub_10031BF58(v14, _s6LoggerVMa_1);
        v42 = sub_10015BA6C(v39, v41, &v44);

        *(v23 + 4) = v42;
        v29 = "[%{public}s] Account did start sync, but was already completed.";
        goto LABEL_14;
      }

      sub_10031BF58(v14, _s6LoggerVMa_1);
    }
  }

  else
  {
    sub_10031BFB8(a3, v11, _s6LoggerVMa_1);
    v30 = sub_1004A4A54();
    v31 = sub_1004A6034();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136446210;
      v34 = sub_1004A5864();
      v36 = v35;
      sub_10031BF58(v11, _s6LoggerVMa_1);
      v37 = sub_10015BA6C(v34, v36, &v44);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}s] Account did start sync work.", v32, 0xCu);
      sub_1000197E0(v33);
    }

    else
    {

      sub_10031BF58(v11, _s6LoggerVMa_1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v5 + 40);
    sub_1003591C8(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + 40) = v44;
  }
}

void sub_100311B00(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t), uint64_t a8, __n128 a9, void *a10)
{
  v11 = v10;
  v120 = a8;
  v119 = a7;
  v128 = a4;
  v125 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v125);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v110 - v20;
  __chkstk_darwin(v22);
  v24 = &v110 - v23;
  __chkstk_darwin(v25);
  v129 = &v110 - v26;
  v27 = v10[3];
  v133 = v10[2];
  v134 = v27;
  *v135 = v10[4];
  *&v135[12] = *(v10 + 76);
  v28 = v10[1];
  v131 = *v10;
  v132 = v28;
  v29 = sub_100315BFC(a1);
  v30 = *(v29 + 16);
  v31 = 0.0;
  v122 = a3;
  v121 = a2;
  if (v30)
  {
    v32 = sub_10035E1B0(a2, a3);
    if (v33)
    {
      v31 = *(*(v29 + 56) + 8 * v32);
    }
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v31 >= 9.22337204e18)
  {
    goto LABEL_59;
  }

  v114 = v24;
  v113 = v21;
  v112 = v18;
  v115 = a1;
  v116 = a5;
  v117 = a6;
  v118 = v11;
  v38 = a10;
  v124 = v31;
  v39 = v128;
  v40 = v128 + 56;
  v41 = 1 << *(v128 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v128 + 56);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  *&v46 = 136446722;
  v123 = v46;
  v126 = a10;
  v18 = v129;
  if (v43)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_13:
    v24 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v24 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v24);
    ++v45;
    if (v43)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v21 = *(*(v39 + 48) + ((v24 << 8) | (4 * v47)));
        sub_10031BFB8(v38, v18, _s6LoggerVMa_1);
        v29 = sub_1004A4A54();
        a3 = sub_1004A6034();
        if (os_log_type_enabled(v29, a3))
        {
          v48 = swift_slowAlloc();
          v127 = v21;
          v21 = v48;
          v49 = swift_slowAlloc();
          v130 = v49;
          *v21 = v123;
          v50 = sub_1004A5864();
          v52 = v51;
          sub_10031BF58(v129, _s6LoggerVMa_1);
          v53 = sub_10015BA6C(v50, v52, &v130);
          v18 = v129;

          *(v21 + 4) = v53;
          v39 = v128;
          *(v21 + 12) = 1024;
          *(v21 + 14) = v127;
          *(v21 + 18) = 2048;
          *(v21 + 20) = v124;
          _os_log_impl(&_mh_execute_header, v29, a3, "[%{public}s] Account did complete sync #%u (run time: %ld).", v21, 0x1Cu);
          sub_1000197E0(v49);
          v38 = v126;

          v45 = v24;
          if (!v43)
          {
            goto LABEL_13;
          }
        }

        else
        {

          sub_10031BF58(v18, _s6LoggerVMa_1);
          v45 = v24;
          if (!v43)
          {
            goto LABEL_13;
          }
        }

LABEL_12:
        v24 = v45;
      }
    }
  }

  v24 = v133;
  v54 = *(v133 + 16);
  a3 = v122;
  v55 = v121;
  if (!v54)
  {
LABEL_27:
    v57 = v114;
    sub_10031BFB8(v38, v114, _s6LoggerVMa_1);
    v58 = sub_1004A4A54();
    v59 = sub_1004A6014();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v130 = v61;
      *v60 = 136446210;
      v62 = sub_1004A5864();
      v64 = v63;
      sub_10031BF58(v57, _s6LoggerVMa_1);
      v65 = sub_10015BA6C(v62, v64, &v130);

      *(v60 + 4) = v65;
      v66 = "[%{public}s] Unknown account did complete sync.";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v58, v59, v66, v60, 0xCu);
      sub_1000197E0(v61);

LABEL_46:
      v37 = v120;
      v36 = v119;
      v35 = v117;
      v34 = v116;
      v76 = v115;
      v38 = v126;
      goto LABEL_47;
    }

LABEL_45:

    sub_10031BF58(v57, _s6LoggerVMa_1);
    goto LABEL_46;
  }

  v21 = 0;
  v18 = 40;
  while (1)
  {
    v29 = v24 + v18;
    v34 = *(v24 + v18 + 16);
    v56 = *(v24 + v18 + 8) == v55 && v34 == a3;
    if (v56 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    ++v21;
    v18 += 48;
    if (v54 == v21)
    {
      goto LABEL_27;
    }
  }

  if (*(v29 + 28) == 1)
  {
    v67 = *(v24 + 16);
    goto LABEL_38;
  }

  v68 = sub_10001296C(*(v29 + 24), v128);
  v67 = *(v24 + 16);
  if (!v68)
  {
LABEL_38:
    if (v21 >= v67)
    {
      goto LABEL_60;
    }

    if ((*(v29 + 28) & 1) == 0 && ((*(&v134 + 1) & 0x8000000000000000) != 0 || *(v29 + 24) != DWORD2(v134)))
    {
      v86 = v112;
      sub_10031BFB8(v38, v112, _s6LoggerVMa_1);
      v87 = sub_1004A4A54();
      v88 = sub_1004A6014();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v130 = v90;
        *v89 = 136446210;
        v91 = sub_1004A5864();
        v93 = v92;
        sub_10031BF58(v86, _s6LoggerVMa_1);
        v94 = sub_10015BA6C(v91, v93, &v130);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v87, v88, "[%{public}s] Account is running request that is not the current sync.", v89, 0xCu);
        sub_1000197E0(v90);
      }

      else
      {

        sub_10031BF58(v86, _s6LoggerVMa_1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_52;
    }

    v57 = v113;
    sub_10031BFB8(v38, v113, _s6LoggerVMa_1);
    v58 = sub_1004A4A54();
    v59 = sub_1004A6014();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v130 = v61;
      *v60 = 136446210;
      v82 = sub_1004A5864();
      v84 = v83;
      sub_10031BF58(v57, _s6LoggerVMa_1);
      v85 = sub_10015BA6C(v82, v84, &v130);

      *(v60 + 4) = v85;
      v66 = "[%{public}s] Account did complete sync that is not the current sync.";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if (v21 >= v67)
  {
    goto LABEL_61;
  }

  v69 = *(v29 + 8);
  v70 = *(v29 + 16);

  v29 = v118;
  sub_100316060(v69, v70, v38, v71);

  a3 = *(v29 + 32);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v120;
  v36 = v119;
  v35 = v117;
  v34 = v116;
  v24 = v115;
  if ((v72 & 1) == 0)
  {
LABEL_62:
    v104 = a3;
    v105 = v37;
    v106 = v36;
    v107 = v35;
    v108 = v34;
    v109 = sub_1003364B8(v104);
    v34 = v108;
    v35 = v107;
    v38 = v126;
    v36 = v106;
    v37 = v105;
    a3 = v109;
  }

  if (v21 < a3[2])
  {
    v76 = v24;
    v77 = a3 + v18;
    if ((*(a3 + v18 + 28) & 1) == 0)
    {
      v78 = v37;
      v79 = v36;
      v80 = v35;
      v81 = v34;
      sub_10034A348(*(v77 + 6), v34, v35, v36, v37, v73, v74, v75, v110, v111, v112, SHIDWORD(v112), v113, SHIDWORD(v113), v114, SHIDWORD(v114), v115);
      v76 = v24;
      v34 = v81;
      v35 = v80;
      v36 = v79;
      v37 = v78;
      v38 = v126;
    }

    *(v77 + 6) = 0;
    v77[28] = 1;
    *(v29 + 32) = a3;
LABEL_47:
    sub_1003107C4(v76, v34, v35, v36, v37, v38);
    return;
  }

  __break(1u);
LABEL_64:
  v24 = sub_1003364B8(v24);
LABEL_52:
  if (v21 < *(v24 + 16))
  {
    v103 = v24 + v18;
    if ((*(v24 + v18 + 28) & 1) == 0)
    {
      sub_10034A348(*(v103 + 24), v96, v97, v98, v99, v100, v101, v102, v110, v111, v112, SHIDWORD(v112), v113, SHIDWORD(v113), v114, SHIDWORD(v114), v115);
    }

    *(v103 + 24) = 0;
    *(v103 + 28) = 1;
    *(v118 + 32) = v24;
    v37 = v120;
    v36 = v119;
    v35 = v117;
    v34 = v116;
    v76 = v115;
    goto LABEL_47;
  }

  __break(1u);
}