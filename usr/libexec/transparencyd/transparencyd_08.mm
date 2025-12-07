uint64_t sub_1001081B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBVerifySyncRequest.DeviceData(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v59 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v63 = 0;
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v59 = v4;
      v60 = v15;
      while (1)
      {
        sub_1000FCBCC(v13, v10, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
        v61 = v14;
        v62 = v13;
        sub_1000FCBCC(v14, v7, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
        v16 = *v10;
        v17 = *(v10 + 1);
        v19 = *v7;
        v18 = *(v7 + 1);
        v20 = v17 >> 62;
        v21 = v18 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_120;
            }

            goto LABEL_21;
          }

          v22 = 0;
          if (v21 <= 1)
          {
            goto LABEL_22;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_119;
          }

          v22 = v22;
          if (v21 <= 1)
          {
LABEL_22:
            if (v21)
            {
              LODWORD(v26) = HIDWORD(v19) - v19;
              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_116;
              }

              v26 = v26;
            }

            else
            {
              v26 = BYTE6(v18);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 <= 1)
          {
            goto LABEL_22;
          }
        }

LABEL_15:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_113;
          }

          goto LABEL_52;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
        }

LABEL_28:
        if (v22 != v26)
        {
          goto LABEL_113;
        }

        if (v22 < 1)
        {
          goto LABEL_52;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v30 = *(v16 + 16);
            v29 = *(v16 + 24);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_127;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_124;
            }

            goto LABEL_48;
          }

          memset(v65, 0, 14);
        }

        else
        {
          if (v20)
          {
            v33 = v16;
            if (v16 >> 32 < v16)
            {
              goto LABEL_123;
            }

            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v33, v34))
              {
                goto LABEL_128;
              }

              v31 += v33 - v34;
            }

LABEL_48:
            __DataStorage._length.getter();
            v35 = v63;
            sub_1000946B4(v31, v19, v18, v65);
            v63 = v35;
            if ((v65[0] & 1) == 0)
            {
              goto LABEL_113;
            }

            goto LABEL_52;
          }

          v65[0] = *v10;
          LOWORD(v65[1]) = v17;
          BYTE2(v65[1]) = BYTE2(v17);
          BYTE3(v65[1]) = BYTE3(v17);
          BYTE4(v65[1]) = BYTE4(v17);
          BYTE5(v65[1]) = BYTE5(v17);
        }

        v36 = v63;
        sub_1000946B4(v65, v19, v18, &v64);
        v63 = v36;
        if (!v64)
        {
          goto LABEL_113;
        }

LABEL_52:
        v37 = *(v10 + 2);
        v38 = *(v10 + 3);
        v40 = *(v7 + 2);
        v39 = *(v7 + 3);
        v41 = v38 >> 62;
        v42 = v39 >> 62;
        if (v38 >> 62 == 3)
        {
          v43 = 0;
          if (!v37 && v38 == 0xC000000000000000 && v39 >> 62 == 3)
          {
            v43 = 0;
            if (!v40 && v39 == 0xC000000000000000)
            {
              goto LABEL_99;
            }
          }

LABEL_68:
          if (v42 <= 1)
          {
            goto LABEL_69;
          }

          goto LABEL_62;
        }

        if (v41 > 1)
        {
          if (v41 == 2)
          {
            v48 = *(v37 + 16);
            v47 = *(v37 + 24);
            v25 = __OFSUB__(v47, v48);
            v43 = v47 - v48;
            if (v25)
            {
              goto LABEL_122;
            }

            goto LABEL_68;
          }

          v43 = 0;
          if (v42 <= 1)
          {
            goto LABEL_69;
          }
        }

        else if (v41)
        {
          LODWORD(v43) = HIDWORD(v37) - v37;
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_121;
          }

          v43 = v43;
          if (v42 <= 1)
          {
LABEL_69:
            if (v42)
            {
              LODWORD(v46) = HIDWORD(v40) - v40;
              if (__OFSUB__(HIDWORD(v40), v40))
              {
                goto LABEL_117;
              }

              v46 = v46;
            }

            else
            {
              v46 = BYTE6(v39);
            }

            goto LABEL_75;
          }
        }

        else
        {
          v43 = BYTE6(v38);
          if (v42 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_62:
        if (v42 != 2)
        {
          if (v43)
          {
            goto LABEL_113;
          }

          goto LABEL_99;
        }

        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        v25 = __OFSUB__(v44, v45);
        v46 = v44 - v45;
        if (v25)
        {
          goto LABEL_118;
        }

LABEL_75:
        if (v43 != v46)
        {
          goto LABEL_113;
        }

        if (v43 < 1)
        {
          goto LABEL_99;
        }

        if (v41 > 1)
        {
          if (v41 == 2)
          {
            v50 = *(v37 + 16);
            v49 = *(v37 + 24);
            v51 = __DataStorage._bytes.getter();
            if (v51)
            {
              v52 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v52))
              {
                goto LABEL_129;
              }

              v51 += v50 - v52;
            }

            if (__OFSUB__(v49, v50))
            {
              goto LABEL_126;
            }

            goto LABEL_95;
          }

          memset(v65, 0, 14);
        }

        else
        {
          if (v41)
          {
            v53 = v37;
            if (v37 >> 32 < v37)
            {
              goto LABEL_125;
            }

            v51 = __DataStorage._bytes.getter();
            if (v51)
            {
              v54 = __DataStorage._offset.getter();
              if (__OFSUB__(v53, v54))
              {
                goto LABEL_130;
              }

              v51 += v53 - v54;
            }

LABEL_95:
            __DataStorage._length.getter();
            v55 = v63;
            sub_1000946B4(v51, v40, v39, v65);
            v63 = v55;
            if ((v65[0] & 1) == 0)
            {
              goto LABEL_113;
            }

            goto LABEL_99;
          }

          v65[0] = *(v10 + 2);
          LOWORD(v65[1]) = v38;
          BYTE2(v65[1]) = BYTE2(v38);
          BYTE3(v65[1]) = BYTE3(v38);
          BYTE4(v65[1]) = BYTE4(v38);
          BYTE5(v65[1]) = BYTE5(v38);
        }

        v56 = v63;
        sub_1000946B4(v65, v40, v39, &v64);
        v63 = v56;
        if (!v64)
        {
          goto LABEL_113;
        }

LABEL_99:
        if (*(v10 + 4) != *(v7 + 4) || *(v10 + 10) != *(v7 + 10) || (*(v10 + 6) != *(v7 + 6) || *(v10 + 7) != *(v7 + 7)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v10 + 8) != *(v7 + 8) || *(v10 + 9) != *(v7 + 9)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v10 + 20) != *(v7 + 20) || v10[84] != v7[84])
        {
LABEL_113:
          sub_1000FC4B4(v7, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
          sub_1000FC4B4(v10, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
          goto LABEL_114;
        }

        type metadata accessor for UnknownStorage();
        sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1000FC4B4(v7, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
        sub_1000FC4B4(v10, type metadata accessor for KTPBVerifySyncRequest.DeviceData);
        if (v57)
        {
          v14 = v61 + v60;
          v13 = v62 + v60;
          if (--v11)
          {
            continue;
          }
        }

        return v57 & 1;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v22 = 0;
        if (!v19 && v18 == 0xC000000000000000)
        {
          goto LABEL_52;
        }
      }

LABEL_21:
      if (v21 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v57 = 1;
  }

  else
  {
LABEL_114:
    v57 = 0;
  }

  return v57 & 1;
}

uint64_t sub_1001089EC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_10010A488();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a1[2] == a2[2] && a1[3] == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100107248(a1[4], a2[4]))
  {
    type metadata accessor for KTPBBatchUpdateResponse(0);
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100108B04(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v5 = *(updated - 8);
  __chkstk_darwin(updated);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100095820(&qword_1003861F0, &qword_1002D9458);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1000AB050(a1, &v20 - v13, &qword_100385890, &unk_1002D81E0);
  sub_1000AB050(a2, &v14[v15], &qword_100385890, &unk_1002D81E0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, updated) == 1)
  {
    if (v16(&v14[v15], 1, updated) == 1)
    {
      sub_1000057C4(v14, &qword_100385890, &unk_1002D81E0);
LABEL_9:
      type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData(0);
      type metadata accessor for UnknownStorage();
      sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1000AB050(v14, v10, &qword_100385890, &unk_1002D81E0);
  if (v16(&v14[v15], 1, updated) == 1)
  {
    sub_1000FC4B4(v10, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
LABEL_6:
    sub_1000057C4(v14, &qword_1003861F0, &qword_1002D9458);
    goto LABEL_7;
  }

  sub_1000FC848(&v14[v15], v7, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  v18 = sub_100109D80(v10, v7);
  sub_1000FC4B4(v7, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  sub_1000FC4B4(v10, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  sub_1000057C4(v14, &qword_100385890, &unk_1002D81E0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100108E48(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_10010A488();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a1[2] == a2[2] && a1[3] == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 32) == *(a2 + 32))
  {
    type metadata accessor for KTPBVerifySyncResponse(0);
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100108F60(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_10010A29C();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a1[2] == a2[2] && a1[3] == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 8) == *(a2 + 8) && (sub_100107774(a1[5], a2[5]))
  {
    type metadata accessor for KTPBBatchUpdateRequest(0);
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100109088(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v6 != v7)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (v6 == 2)
    {
      goto LABEL_11;
    }

LABEL_25:
    v8 = 0;
    return v8 & 1;
  }

  if (v6 != 1)
  {
    goto LABEL_25;
  }

LABEL_11:
  sub_10010A3E0();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 || a1[4] != a2[4] || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !sub_100095AC0(a1[7], a1[8], a2[7], a2[8]) || *(a1 + 72) != *(a2 + 72) || a1[10] != a2[10] || !sub_100095AC0(a1[11], a1[12], a2[11], a2[12]) || !sub_100095AC0(a1[13], a1[14], a2[13], a2[14]) || *(a1 + 120) != *(a2 + 120) || *(a1 + 121) != *(a2 + 121) || (sub_10010792C(a1[16], a2[16]) & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for KTPBBatchUpdateRequest.UpdateData(0);
  type metadata accessor for UnknownStorage();
  sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v8 & 1;
}

uint64_t sub_100109268(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_10010A29C();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a1[2] == a2[2] && a1[3] == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == a2[4] && a1[5] == a2[5] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10010A3E0(), (dispatch thunk of static Equatable.== infix(_:_:)()) && (a1[8] == a2[8] && a1[9] == a2[9] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && sub_100095AC0(a1[10], a1[11], a2[10], a2[11]) && *(a1 + 96) == *(a2 + 96) && (sub_1001081B0(a1[13], a2[13]))
  {
    type metadata accessor for KTPBVerifySyncRequest(0);
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10010942C(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100095AC0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84))
  {
    return 0;
  }

  type metadata accessor for KTPBVerifySyncRequest.DeviceData(0);
  type metadata accessor for UnknownStorage();
  sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100109574(void *a1, void *a2)
{
  if (*a1 != *a2 || !sub_100095AC0(a1[1], a1[2], a2[1], a2[2]) || !sub_100095AC0(a1[3], a1[4], a2[3], a2[4]) || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for KTPBDeviceState(0);
  type metadata accessor for UnknownStorage();
  sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100109664(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v51 = type metadata accessor for KTPBVRFWitness(0);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v7 - 8);
  v47 = &v44 - v8;
  v48 = sub_100095820(&qword_100386210, &qword_1002D9478);
  __chkstk_darwin(v48);
  v50 = &v44 - v9;
  v10 = type metadata accessor for KTPBSignedObject(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_100095820(&qword_100386218, &qword_1002D9480);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = *(a1 + 8);
  v54 = *a1;
  v55 = v20;
  v21 = *(a2 + 8);
  v52 = *a2;
  v53 = v21;
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = a3(0);
  v23 = a1;
  v24 = a2;
  v44 = v22;
  v45 = v23;
  v25 = *(v22 + 28);
  v26 = *(v17 + 48);
  sub_1000AB050(v23 + v25, v19, &qword_100385898, &unk_1002DB9A0);
  sub_1000AB050(v24 + v25, &v19[v26], &qword_100385898, &unk_1002DB9A0);
  v27 = *(v11 + 48);
  if (v27(v19, 1, v10) == 1)
  {
    if (v27(&v19[v26], 1, v10) == 1)
    {
      sub_1000057C4(v19, &qword_100385898, &unk_1002DB9A0);
      goto LABEL_9;
    }

LABEL_7:
    v28 = &qword_100386218;
    v29 = &qword_1002D9480;
    v30 = v19;
LABEL_15:
    sub_1000057C4(v30, v28, v29);
    goto LABEL_16;
  }

  sub_1000AB050(v19, v16, &qword_100385898, &unk_1002DB9A0);
  if (v27(&v19[v26], 1, v10) == 1)
  {
    sub_1000FC4B4(v16, type metadata accessor for KTPBSignedObject);
    goto LABEL_7;
  }

  sub_1000FC848(&v19[v26], v13, type metadata accessor for KTPBSignedObject);
  sub_10010A344(&qword_100386228, type metadata accessor for KTPBSignedObject, &unk_1002DA588);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1000FC4B4(v13, type metadata accessor for KTPBSignedObject);
  sub_1000FC4B4(v16, type metadata accessor for KTPBSignedObject);
  sub_1000057C4(v19, &qword_100385898, &unk_1002DB9A0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v32 = v45;
  v33 = *(v44 + 32);
  v34 = *(v48 + 48);
  v35 = v50;
  sub_1000AB050(v45 + v33, v50, &qword_1003858A0, &qword_1002D81F0);
  sub_1000AB050(v24 + v33, v35 + v34, &qword_1003858A0, &qword_1002D81F0);
  v36 = *(v49 + 48);
  v37 = v51;
  if (v36(v35, 1, v51) != 1)
  {
    v38 = v47;
    sub_1000AB050(v35, v47, &qword_1003858A0, &qword_1002D81F0);
    if (v36(v35 + v34, 1, v37) != 1)
    {
      v41 = v35 + v34;
      v42 = v46;
      sub_1000FC848(v41, v46, type metadata accessor for KTPBVRFWitness);
      sub_10010A344(&qword_100386220, type metadata accessor for KTPBVRFWitness, &unk_1002DA128);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000FC4B4(v42, type metadata accessor for KTPBVRFWitness);
      sub_1000FC4B4(v38, type metadata accessor for KTPBVRFWitness);
      sub_1000057C4(v35, &qword_1003858A0, &qword_1002D81F0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1000FC4B4(v38, type metadata accessor for KTPBVRFWitness);
    goto LABEL_14;
  }

  if (v36(v35 + v34, 1, v37) != 1)
  {
LABEL_14:
    v28 = &qword_100386210;
    v29 = &qword_1002D9478;
    v30 = v35;
    goto LABEL_15;
  }

  sub_1000057C4(v35, &qword_1003858A0, &qword_1002D81F0);
LABEL_19:
  if (v32[2] == v24[2] && v32[3] == v24[3] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    sub_10010A344(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v39 & 1;
  }

LABEL_16:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_100109D80(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for KTPBOptInOutResponse(0);
  __chkstk_darwin(v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for KTPBMarkForDeletionResponse(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for KTPBInsertResponse(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData(0);
  v12 = __chkstk_darwin(updated);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = (&v33 - v16);
  __chkstk_darwin(v15);
  v19 = (&v33 - v18);
  v20 = sub_100095820(&qword_100386230, &qword_1002D9488);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_1000FCBCC(a1, &v33 - v22, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  sub_1000FCBCC(v34, &v23[v24], type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000FCBCC(v23, v17, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000FC848(&v23[v24], v7, type metadata accessor for KTPBMarkForDeletionResponse);
        v26 = sub_100109664(v17, v7, type metadata accessor for KTPBMarkForDeletionResponse);
        v27 = type metadata accessor for KTPBMarkForDeletionResponse;
        sub_1000FC4B4(v7, type metadata accessor for KTPBMarkForDeletionResponse);
        v28 = v17;
LABEL_13:
        sub_1000FC4B4(v28, v27);
        sub_1000FC4B4(v23, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
        return v26 & 1;
      }

      v29 = type metadata accessor for KTPBMarkForDeletionResponse;
      v30 = v17;
    }

    else
    {
      sub_1000FCBCC(v23, v14, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1000FC848(&v23[v24], v33, type metadata accessor for KTPBOptInOutResponse);
        v26 = sub_100109664(v14, v31, type metadata accessor for KTPBOptInOutResponse);
        v27 = type metadata accessor for KTPBOptInOutResponse;
        sub_1000FC4B4(v31, type metadata accessor for KTPBOptInOutResponse);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for KTPBOptInOutResponse;
      v30 = v14;
    }
  }

  else
  {
    sub_1000FCBCC(v23, v19, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000FC848(&v23[v24], v10, type metadata accessor for KTPBInsertResponse);
      v26 = sub_100109664(v19, v10, type metadata accessor for KTPBInsertResponse);
      v27 = type metadata accessor for KTPBInsertResponse;
      sub_1000FC4B4(v10, type metadata accessor for KTPBInsertResponse);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for KTPBInsertResponse;
    v30 = v19;
  }

  sub_1000FC4B4(v30, v29);
  sub_1000057C4(v23, &qword_100386230, &qword_1002D9488);
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_10010A29C()
{
  result = qword_1003858A8;
  if (!qword_1003858A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858A8);
  }

  return result;
}

unint64_t sub_10010A2F0()
{
  result = qword_1003858B0;
  if (!qword_1003858B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858B0);
  }

  return result;
}

uint64_t sub_10010A344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10010A38C()
{
  result = qword_1003858C8;
  if (!qword_1003858C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858C8);
  }

  return result;
}

unint64_t sub_10010A3E0()
{
  result = qword_1003858D0;
  if (!qword_1003858D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858D0);
  }

  return result;
}

unint64_t sub_10010A434()
{
  result = qword_1003858D8;
  if (!qword_1003858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858D8);
  }

  return result;
}

unint64_t sub_10010A488()
{
  result = qword_1003858F8;
  if (!qword_1003858F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003858F8);
  }

  return result;
}

unint64_t sub_10010A4DC()
{
  result = qword_100385900;
  if (!qword_100385900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385900);
  }

  return result;
}

unint64_t sub_10010A534()
{
  result = qword_100385958;
  if (!qword_100385958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385958);
  }

  return result;
}

unint64_t sub_10010A58C()
{
  result = qword_100385960;
  if (!qword_100385960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385960);
  }

  return result;
}

unint64_t sub_10010A5E4()
{
  result = qword_100385968;
  if (!qword_100385968)
  {
    sub_1000967DC(&qword_100385970, qword_1002D8240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385968);
  }

  return result;
}

unint64_t sub_10010A64C()
{
  result = qword_100385978;
  if (!qword_100385978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385978);
  }

  return result;
}

void sub_10010B328(uint64_t a1)
{
  sub_10010B538(319, &unk_100385AC0, type metadata accessor for KTPBBatchUpdateRequest.UpdateData, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010B42C(uint64_t a1)
{
  sub_10010B538(319, &unk_100385B58, type metadata accessor for KTPBDeviceState, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010B538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10010B5D4(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10010B68C(uint64_t a1)
{
  sub_10010B538(319, &unk_100385CA0, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010B780(uint64_t a1)
{
  sub_10010B538(319, &unk_100385D30, type metadata accessor for KTPBBatchUpdateResponse.UpdateResponseData.OneOf_ResponseData, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10010B884(uint64_t a1)
{
  result = type metadata accessor for KTPBInsertResponse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for KTPBMarkForDeletionResponse(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for KTPBOptInOutResponse(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10010B974(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_10010BB0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_10010BC90(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_10010B538(319, &qword_100385E50, type metadata accessor for KTPBSignedObject, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10010B538(319, &unk_100385E58, type metadata accessor for KTPBVRFWitness, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010BDCC(uint64_t a1)
{
  sub_10010B538(319, &unk_100386010, type metadata accessor for KTPBVerifySyncRequest.DeviceData, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10010BEEC(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010BFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10010C06C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10010C110(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010C204(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002DB920[result];
  }

  return result;
}

uint64_t sub_10010C248()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002DB920[result];
  }

  return result;
}

void sub_10010C290(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002DB920[v2];
  }

  *a1 = v2;
}

uint64_t sub_10010C2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A2F0();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_10010C300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002DB920[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002DB920[v3];
  }

  return v2 == v3;
}

uint64_t sub_10010C3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A434();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10010C40C(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002DB8F0[result];
  }

  return result;
}

uint64_t sub_10010C450()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002DB8F0[result];
  }

  return result;
}

void sub_10010C498(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002DB8F0[v2];
  }

  *a1 = v2;
}

uint64_t sub_10010C4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010A4DC();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_10010C508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002DB8F0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002DB8F0[v3];
  }

  return v2 == v3;
}

uint64_t sub_10010C540(uint64_t result)
{
  if (result == 3)
  {
    v1 = 1;
  }

  else
  {
    v1 = result;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_10010C56C(uint64_t result, char a2)
{
  v2 = 3;
  if (!result)
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10010C59C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 3)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10010C5C8()
{
  v1 = 3;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_10010C5F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 3;
  if (*result == 3)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_10010C628(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 3;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_10010C64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011F154();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_10010C698(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

uint64_t sub_10010C700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001207B0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10010C774(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012136C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10010C830@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_10010C890@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_10010C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100121318();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10010C990@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1002D4770;
  *(a1 + 32) = xmmword_1002D4770;
  type metadata accessor for KTPBVRFWitness(0);
  return UnknownStorage.init()();
}

uint64_t sub_10010CA78(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_10010CAA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010CB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

BOOL sub_10010CC18(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_10010CC44@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10010CC5C()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_10010CC88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_10010CCA4(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_10010CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF6C();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_10010CD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_10010CD4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = xmmword_1002D4770;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  type metadata accessor for KTPBSignature(0);
  return UnknownStorage.init()();
}

uint64_t sub_10010CD98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100386238, &unk_1002D9560);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for KTPBSignedObject(0);
  sub_1000AB050(v1 + *(v6 + 24), v5, &qword_100386238, &unk_1002D9560);
  v7 = type metadata accessor for KTPBSignature(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBSignature);
  }

  *a1 = xmmword_1002D4770;
  *(a1 + 16) = xmmword_1002D4770;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100386238, &unk_1002D9560);
  }

  return result;
}

uint64_t sub_10010CF08(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBSignedObject(0) + 24);
  sub_1000057C4(v1 + v3, &qword_100386238, &unk_1002D9560);
  sub_10011EE3C(a1, v1 + v3, type metadata accessor for KTPBSignature);
  v4 = type metadata accessor for KTPBSignature(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10010CFC0(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386238, &unk_1002D9560) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignature(0);
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
  v14 = *(type metadata accessor for KTPBSignedObject(0) + 24);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100386238, &unk_1002D9560);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    *(v13 + 16) = xmmword_1002D4770;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386238, &unk_1002D9560);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBSignature);
  }

  return sub_10010D1E8;
}

BOOL sub_10010D210()
{
  v1 = sub_100095820(&qword_100386238, &unk_1002D9560);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for KTPBSignedObject(0);
  sub_1000AB050(v0 + *(v4 + 24), v3, &qword_100386238, &unk_1002D9560);
  v5 = type metadata accessor for KTPBSignature(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000057C4(v3, &qword_100386238, &unk_1002D9560);
  return v6;
}

uint64_t sub_10010D304()
{
  v1 = *(type metadata accessor for KTPBSignedObject(0) + 24);
  sub_1000057C4(v0 + v1, &qword_100386238, &unk_1002D9560);
  v2 = type metadata accessor for KTPBSignature(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10010D408@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  v2 = type metadata accessor for KTPBSignedObject(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for KTPBSignature(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_10010D4C8(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_10010D4E4(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_10010D574@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  type metadata accessor for KTPBLogHead(0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010D5CC@<X0>(char *a1@<X8>)
{
  v3 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for KTPBLogEntry(0);
  sub_1000AB050(v1 + *(v6 + 40), v5, &qword_100385898, &unk_1002DB9A0);
  v7 = type metadata accessor for KTPBSignedObject(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBSignedObject);
  }

  *a1 = xmmword_1002D4770;
  UnknownStorage.init()();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for KTPBSignature(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100385898, &unk_1002DB9A0);
  }

  return result;
}

uint64_t sub_10010D774(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBLogEntry(0) + 40);
  sub_1000057C4(v1 + v3, &qword_100385898, &unk_1002DB9A0);
  sub_10011EE3C(a1, v1 + v3, type metadata accessor for KTPBSignedObject);
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10010D82C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignedObject(0);
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
  v14 = *(type metadata accessor for KTPBLogEntry(0) + 40);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    UnknownStorage.init()();
    v16 = *(v8 + 24);
    v17 = type metadata accessor for KTPBSignature(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10010DA8C;
}

BOOL sub_10010DAB4()
{
  v1 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for KTPBLogEntry(0);
  sub_1000AB050(v0 + *(v4 + 40), v3, &qword_100385898, &unk_1002DB9A0);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000057C4(v3, &qword_100385898, &unk_1002DB9A0);
  return v6;
}

uint64_t sub_10010DBA8()
{
  v1 = *(type metadata accessor for KTPBLogEntry(0) + 40);
  sub_1000057C4(v0 + v1, &qword_100385898, &unk_1002DB9A0);
  v2 = type metadata accessor for KTPBSignedObject(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10010DC34(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10010DC60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBLogEntry(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10010DCDC(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBLogEntry(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10010DDA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = xmmword_1002D4770;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for KTPBLogEntry(0);
  UnknownStorage.init()();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_10010DE6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10010DEEC(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_10010DEFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100386240, &qword_1002D9570);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for KTPBMapHead(0);
  sub_1000AB050(v1 + *(v6 + 52), v5, &qword_100386240, &qword_1002D9570);
  v7 = type metadata accessor for KTPBLogHead(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBLogHead);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100386240, &qword_1002D9570);
  }

  return result;
}

uint64_t sub_10010E078(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBMapHead(0) + 52);
  sub_1000057C4(v1 + v3, &qword_100386240, &qword_1002D9570);
  sub_10011EE3C(a1, v1 + v3, type metadata accessor for KTPBLogHead);
  v4 = type metadata accessor for KTPBLogHead(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10010E130(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386240, &qword_1002D9570) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogHead(0);
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
  v14 = *(type metadata accessor for KTPBMapHead(0) + 52);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100386240, &qword_1002D9570);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xC000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 1;
    *(v13 + 56) = 0;
    *(v13 + 64) = 1;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386240, &qword_1002D9570);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBLogHead);
  }

  return sub_10010E364;
}

BOOL sub_10010E38C()
{
  v1 = sub_100095820(&qword_100386240, &qword_1002D9570);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for KTPBMapHead(0);
  sub_1000AB050(v0 + *(v4 + 52), v3, &qword_100386240, &qword_1002D9570);
  v5 = type metadata accessor for KTPBLogHead(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000057C4(v3, &qword_100386240, &qword_1002D9570);
  return v6;
}

uint64_t sub_10010E480()
{
  v1 = *(type metadata accessor for KTPBMapHead(0) + 52);
  sub_1000057C4(v0 + v1, &qword_100386240, &qword_1002D9570);
  v2 = type metadata accessor for KTPBLogHead(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10010E544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010E5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010E6A8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1002D81A0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for KTPBMapHead(0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  UnknownStorage.init()();
  v3 = *(v2 + 52);
  v4 = type metadata accessor for KTPBLogHead(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_10010E770@<X0>(char *a1@<X8>)
{
  v3 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for KTPBMapEntry(0);
  sub_1000AB050(v1 + *(v6 + 28), v5, &qword_100385898, &unk_1002DB9A0);
  v7 = type metadata accessor for KTPBSignedObject(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBSignedObject);
  }

  *a1 = xmmword_1002D4770;
  UnknownStorage.init()();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for KTPBSignature(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100385898, &unk_1002DB9A0);
  }

  return result;
}

uint64_t sub_10010E918(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBMapEntry(0) + 28);
  sub_1000057C4(v1 + v3, &qword_100385898, &unk_1002DB9A0);
  sub_10011EE3C(a1, v1 + v3, type metadata accessor for KTPBSignedObject);
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_10010E9D0(void *a1))(uint64_t, uint64_t)
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
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignedObject(0);
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
  v14 = *(type metadata accessor for KTPBMapEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    UnknownStorage.init()();
    v16 = *(v8 + 24);
    v17 = type metadata accessor for KTPBSignature(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10012405C;
}

uint64_t sub_10010ECC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010ED5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010EE24@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = xmmword_1002D4770;
  v2 = type metadata accessor for KTPBMapEntry(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_10010EEC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100386248, &qword_1002D9578);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for KTPBInclusionProof(0) + 20));
  v7 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_1000AB050(v6 + v7, v5, &qword_100386248, &qword_1002D9578);
  v8 = type metadata accessor for KTPBMapEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBMapEntry);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = xmmword_1002D4770;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100386248, &qword_1002D9578);
  }

  return result;
}

uint64_t sub_10010F09C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100386248, &qword_1002D9578);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100119178(v11);
    *(v2 + v7) = v10;
  }

  sub_10011EE3C(a1, v6, type metadata accessor for KTPBMapEntry);
  v12 = type metadata accessor for KTPBMapEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386248, &qword_1002D9578);
  return swift_endAccess();
}

void (*sub_10010F208(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386248, &qword_1002D9578) - 8) + 64);
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
  v8 = type metadata accessor for KTPBMapEntry(0);
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
  v14 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386248, &qword_1002D9578);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = _swiftEmptyArrayStorage;
    *(v13 + 8) = xmmword_1002D4770;
    UnknownStorage.init()();
    v18 = *(v8 + 28);
    v19 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386248, &qword_1002D9578);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBMapEntry);
  }

  return sub_10010F4B4;
}

uint64_t sub_10010F544()
{
  v1 = *(v0 + *(type metadata accessor for KTPBInclusionProof(0) + 20)) + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index;
  swift_beginAccess();
  v2 = *v1;
  sub_100002D78(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10010F5B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_100119178(v10);
    *(v3 + v6) = v9;
  }

  v11 = (v8 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  return sub_1000956CC(v12, v13);
}

void (*sub_10010F660(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_100002D78(v7, v8);
  return sub_10010F710;
}

void sub_10010F710(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_100002D78(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for KTPBInclusionProof._StorageClass(0);
      v11 = swift_allocObject();
      v12 = v8;
      v8 = v11;
      sub_100119178(v12);
      *(v10 + v9) = v11;
    }

    v13 = (v8 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    *v13 = v3;
    v13[1] = v5;
    sub_1000956CC(v14, v15);
    v16 = *(v2 + 72);
    v17 = *(v2 + 80);
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v6 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 96);
      v21 = *(v2 + 88);
      type metadata accessor for KTPBInclusionProof._StorageClass(0);
      v22 = swift_allocObject();
      v23 = v19;
      v19 = v22;
      sub_100119178(v23);
      *(v21 + v20) = v22;
    }

    v24 = (v19 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
    swift_beginAccess();
    v16 = *v24;
    v17 = v24[1];
    *v24 = v3;
    v24[1] = v5;
  }

  sub_1000956CC(v16, v17);

  free(v2);
}

uint64_t sub_10010F87C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100119178(v11);
    *(v2 + v7) = v10;
  }

  sub_10011EE3C(a1, v6, type metadata accessor for KTPBLogEntry);
  v12 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

void (*sub_10010F9E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_1002D4770;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    UnknownStorage.init()();
    v18 = *(v8 + 40);
    v19 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_10010FCA8;
}

BOOL sub_10010FD08(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_100095820(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for KTPBInclusionProof(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1000AB050(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1000057C4(v11, a1, a2);
  return v15;
}

uint64_t sub_10010FE50(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100095820(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v16 = swift_allocObject();
    v17 = v15;
    v15 = v16;
    sub_100119178(v17);
    *(v9 + v13) = v16;
  }

  v18 = a3(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = *a4;
  swift_beginAccess();
  sub_10011EFEC(v12, v15 + v19, a1, a2);
  return swift_endAccess();
}

uint64_t sub_10010FFC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100119178(v11);
    *(v2 + v7) = v10;
  }

  sub_10011EE3C(a1, v6, type metadata accessor for KTPBLogEntry);
  v12 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

void (*sub_10011012C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_1002D4770;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    UnknownStorage.init()();
    v18 = *(v8 + 40);
    v19 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_1001103EC;
}

void sub_10011041C(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_10011EEA4(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for KTPBInclusionProof._StorageClass(0);
      v15 = swift_allocObject();
      sub_100119178(v12);
      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_10011EE3C(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    sub_10011EFEC(v21, v12 + v22, a5, a6);
    swift_endAccess();
    sub_10011EF0C(v16, a3);
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
      type metadata accessor for KTPBInclusionProof._StorageClass(0);
      v28 = swift_allocObject();
      sub_100119178(v25);
      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_10011EE3C(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    sub_10011EFEC(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

uint64_t sub_10011070C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10011B090(v11);
    *(v2 + v7) = v10;
  }

  sub_10011EE3C(a1, v6, type metadata accessor for KTPBLogEntry);
  v12 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

void (*sub_100110878(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_1002D4770;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    UnknownStorage.init()();
    v18 = *(v8 + 40);
    v19 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_100110B38;
}

void sub_100110B44(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_10011EEA4(*(v4 + 120), *(v4 + 112), type metadata accessor for KTPBLogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
      v11 = swift_allocObject();
      sub_10011B090(v8);
      *(v10 + v9) = v11;
      v8 = v11;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v14 = *(v4 + 96);
    v15 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_10011EE3C(v13, v17, type metadata accessor for KTPBLogEntry);
    (*(v15 + 56))(v17, 0, 1, v14);
    v18 = *a3;
    swift_beginAccess();
    sub_10011EFEC(v17, v8 + v18, &qword_100386250, &qword_1002D9580);
    swift_endAccess();
    sub_10011EF0C(v12, type metadata accessor for KTPBLogEntry);
  }

  else
  {
    v19 = *(v4 + 72);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v19 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v4 + 128);
      v23 = *(v4 + 72);
      type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
      v24 = swift_allocObject();
      sub_10011B090(v21);
      *(v23 + v22) = v24;
      v21 = v24;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v25 = *(v4 + 96);
    v26 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_10011EE3C(v12, v17, type metadata accessor for KTPBLogEntry);
    (*(v26 + 56))(v17, 0, 1, v25);
    v27 = *a3;
    swift_beginAccess();
    sub_10011EFEC(v17, v21 + v27, &qword_100386250, &qword_1002D9580);
    swift_endAccess();
  }

  free(v12);
  free(v13);
  free(v16);
  free(v17);

  free(v4);
}

uint64_t sub_100110DC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1000AB050(v10 + v11, v9, &qword_100386250, &qword_1002D9580);
  v12 = type metadata accessor for KTPBLogEntry(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_10011EE3C(v9, a3, type metadata accessor for KTPBLogEntry);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = _swiftEmptyArrayStorage;
  *(a3 + 24) = xmmword_1002D4770;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  UnknownStorage.init()();
  v14 = *(v12 + 40);
  v15 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1000057C4(v9, &qword_100386250, &qword_1002D9580);
  }

  return result;
}

uint64_t sub_100110FC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10011B090(v11);
    *(v2 + v7) = v10;
  }

  sub_10011EE3C(a1, v6, type metadata accessor for KTPBLogEntry);
  v12 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

void (*sub_10011112C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_1002D4770;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    UnknownStorage.init()();
    v18 = *(v8 + 40);
    v19 = type metadata accessor for KTPBSignedObject(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_1001113EC;
}

BOOL sub_100111404(uint64_t *a1)
{
  v3 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for KTPBPatInclusionProof(0) + 20));
  v7 = *a1;
  swift_beginAccess();
  sub_1000AB050(v6 + v7, v5, &qword_100386250, &qword_1002D9580);
  v8 = type metadata accessor for KTPBLogEntry(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000057C4(v5, &qword_100386250, &qword_1002D9580);
  return v9;
}

uint64_t sub_100111530(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10011B090(v11);
    *(v3 + v7) = v10;
  }

  v12 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = *a1;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

uint64_t sub_1001116B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_10011175C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1001117D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100111870(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100111938@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  type metadata accessor for KTPBChangeLogNodeV2(0);
  return UnknownStorage.init()();
}

uint64_t (*sub_1001119A8(void *a1))(uint64_t, uint64_t)
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
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignedObject(0);
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
  v14 = *(type metadata accessor for KTPBPerApplicationTreeNode(0) + 20);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    UnknownStorage.init()();
    v16 = *(v8 + 24);
    v17 = type metadata accessor for KTPBSignature(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10012405C;
}

uint64_t sub_100111C68@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = a1(0);
  sub_1000AB050(v2 + *(v8 + 20), v7, &qword_100385898, &unk_1002DB9A0);
  v9 = type metadata accessor for KTPBSignedObject(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_10011EE3C(v7, a2, type metadata accessor for KTPBSignedObject);
  }

  *a2 = xmmword_1002D4770;
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for KTPBSignature(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
  }

  return result;
}

uint64_t sub_100111E30(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1000057C4(v2 + v4, &qword_100385898, &unk_1002DB9A0);
  sub_10011EE3C(a1, v2 + v4, type metadata accessor for KTPBSignedObject);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*sub_100111EEC(void *a1))(uint64_t, uint64_t)
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
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignedObject(0);
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
  v14 = *(type metadata accessor for KTPBTopLevelTreeNode(0) + 20);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100385898, &unk_1002DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    UnknownStorage.init()();
    v16 = *(v8 + 24);
    v17 = type metadata accessor for KTPBSignature(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_10012405C;
}

BOOL sub_100112164(uint64_t (*a1)(void))
{
  v3 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  sub_1000AB050(v1 + *(v6 + 20), v5, &qword_100385898, &unk_1002DB9A0);
  v7 = type metadata accessor for KTPBSignedObject(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1000057C4(v5, &qword_100385898, &unk_1002DB9A0);
  return v8;
}

uint64_t sub_100112280(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_1000057C4(v1 + v2, &qword_100385898, &unk_1002DB9A0);
  v3 = type metadata accessor for KTPBSignedObject(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_100112314@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10011237C(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1001123FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100112480@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100386258, &qword_1002D9588);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
  sub_1000AB050(v1 + *(v6 + 28), v5, &qword_100386258, &qword_1002D9588);
  v7 = type metadata accessor for KTPBVRFPublicKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10011EE3C(v5, a1, type metadata accessor for KTPBVRFPublicKey);
  }

  *a1 = xmmword_1002D4770;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100386258, &qword_1002D9588);
  }

  return result;
}

uint64_t sub_1001125F0(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBPerApplicationTreeConfigNode(0) + 28);
  sub_1000057C4(v1 + v3, &qword_100386258, &qword_1002D9588);
  sub_10011EE3C(a1, v1 + v3, type metadata accessor for KTPBVRFPublicKey);
  v4 = type metadata accessor for KTPBVRFPublicKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001126A8(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386258, &qword_1002D9588) - 8) + 64);
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
  v8 = type metadata accessor for KTPBVRFPublicKey(0);
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
  v14 = *(type metadata accessor for KTPBPerApplicationTreeConfigNode(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100386258, &qword_1002D9588);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386258, &qword_1002D9588);
    }
  }

  else
  {
    sub_10011EE3C(v7, v13, type metadata accessor for KTPBVRFPublicKey);
  }

  return sub_1001128D0;
}

void sub_1001128F8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    sub_10011EEA4(v11, v10, a5);
    sub_1000057C4(v14 + v9, a3, a4);
    sub_10011EE3C(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_10011EF0C(v11, a5);
  }

  else
  {
    sub_1000057C4(v14 + v9, a3, a4);
    sub_10011EE3C(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL sub_100112A6C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100095820(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1000AB050(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000057C4(v11, a1, a2);
  return v14;
}

uint64_t sub_100112BA4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000057C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100112CC8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for KTPBVRFPublicKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_100112E10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_100112E70(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_100112EF8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for KTPBLogClosedNode(0);
  return UnknownStorage.init()();
}

uint64_t sub_100112F38()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D1F8);
  sub_10009597C(v0, qword_10039D1F8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_VERSION";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "V1";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "V2";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "V3";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 999999999;
  *v15 = "FUTURE";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011322C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D210);
  sub_10009597C(v0, qword_10039D210);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_APPLICATION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IDS_MESSAGING";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLOUDKIT";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IDS_MULTIPLEX_ICLOUD";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IDS_FACETIME";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRIVATE_CLOUD_COMPUTE";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PRIVATE_CLOUD_COMPUTE_INTERNAL";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011359C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D228);
  sub_10009597C(v0, qword_10039D228);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_STATUS";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OK";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MUTATION_PENDING";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "INTERNAL_ERROR";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "INVALID_REQUEST";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "NOT_FOUND";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001138D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D240);
  sub_10009597C(v0, qword_10039D240);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_VRF";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "ECVRF_ED25519_SHA512_Elligator2";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113B04()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D258);
  sub_10009597C(v0, qword_10039D258);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002D9490;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_LOG";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "PER_APPLICATION_CHANGE_LOG";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PER_APPLICATION_TREE";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TOP_LEVEL_TREE";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CT_LOG";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AT_LOG";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ATR_LOG";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113E68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D270);
  sub_10009597C(v0, qword_10039D270);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_MAP";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PER_APP_OBJECT_MAP";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PER_APP_REVOCATION_MAP";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001140E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D288);
  sub_10009597C(v0, qword_10039D288);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002D94A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "PACL_NODE";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PAT_NODE";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PAT_CONFIG_NODE";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TLT_NODE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TLT_CONFIG_NODE";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LOG_CLOSED_NODE";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CT_NODE";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ATL_NODE";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ATRL_NODE";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001144F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D2A0);
  sub_10009597C(v0, qword_10039D2A0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
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
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "proof";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 1)
      {
        sub_10011F154();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100114818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_10011F154(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

LABEL_12:
    v11 = v3[4];
    v12 = v3[5];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    type metadata accessor for KTPBVRFWitness(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001149C8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_1002D4770;
  *(a2 + 32) = xmmword_1002D4770;
  return UnknownStorage.init()();
}

uint64_t sub_100114A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870D0, type metadata accessor for KTPBVRFWitness, &unk_1002DA060);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100114AD0(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100114B3C(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);

  return Message.hash(into:)();
}

uint64_t sub_100114BE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D2B8);
  sub_10009597C(v0, qword_10039D2B8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfKey";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100114DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        sub_10011F154();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100114F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870C8, type metadata accessor for KTPBVRFPublicKey, &unk_1002DA1C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100115004(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386440, type metadata accessor for KTPBVRFPublicKey, &unk_1002DA150);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100115070(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386440, type metadata accessor for KTPBVRFPublicKey, &unk_1002DA150);

  return Message.hash(into:)();
}

uint64_t sub_100115114()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D2D0);
  sub_10009597C(v0, qword_10039D2D0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signature";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signingKeySPKIHash";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "algorithm";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100115370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_10011FF6C();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011543C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!v3[4] || (sub_10011FF6C(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for KTPBSignature(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001155EC@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = xmmword_1002D4770;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_100115654(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870C0, type metadata accessor for KTPBSignature, &unk_1002DA330);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001156F4(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386458, type metadata accessor for KTPBSignature, &unk_1002DA2B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100115760(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386458, type metadata accessor for KTPBSignature, &unk_1002DA2B8);

  return Message.hash(into:)();
}

uint64_t sub_1001157E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D2E8);
  sub_10009597C(v0, qword_10039D2E8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ECDSA_SHA256";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100115A40()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D300);
  sub_10009597C(v0, qword_10039D300);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "object";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signature";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100115C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for KTPBSignedObject(0);
        type metadata accessor for KTPBSignature(0);
        sub_10011FF24(&qword_100386458, type metadata accessor for KTPBSignature, &unk_1002DA2B8);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100115D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_100115E30(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for KTPBSignedObject(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100115E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100386238, &unk_1002D9560);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBSignature(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBSignedObject(0);
  sub_1000AB050(a1 + *(v12 + 24), v7, &qword_100386238, &unk_1002D9560);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386238, &unk_1002D9560);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBSignature);
  sub_10011FF24(&qword_100386458, type metadata accessor for KTPBSignature, &unk_1002DA2B8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBSignature);
}

uint64_t sub_10011608C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for KTPBSignature(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100116148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870B8, type metadata accessor for KTPBSignedObject, &unk_1002DA4C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001161E8(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100116254(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);

  return Message.hash(into:)();
}

uint64_t sub_1001162F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D318);
  sub_10009597C(v0, qword_10039D318);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "logBeginningMs";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "logSize";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "logHeadHash";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "revision";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "logType";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "application";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "treeId";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "timestampMs";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011668C(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          }
        }

        else
        {
          if (result == 5)
          {
            sub_1001207B0();
          }

          else
          {
            sub_10010A434();
          }

          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001167F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (v3[1])
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v6 = v3[2];
  v7 = v3[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_14;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = v6;
    v10 = v6 >> 32;
LABEL_12:
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_14:
  if (!v3[4] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    v11 = v4;
    if (v3[5])
    {
      sub_1001207B0();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v11 = 0;
    }

    if (v3[7])
    {
      sub_10010A434();
      v12 = v11;
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v11)
      {
        return result;
      }
    }

    else
    {
      v12 = v11;
    }

    if (!v3[9] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v12))
    {
      if (!v3[10] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v12))
      {
        type metadata accessor for KTPBLogHead(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100116A38@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xC000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100116AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870B0, type metadata accessor for KTPBLogHead, &unk_1002DA628);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100116B4C(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386478, type metadata accessor for KTPBLogHead, &unk_1002DA5B0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100116BB8(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386478, type metadata accessor for KTPBLogHead, &unk_1002DA5B0);

  return Message.hash(into:)();
}

uint64_t sub_100116C58()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D330);
  sub_10009597C(v0, qword_10039D330);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002D47D0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "logType";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "slh";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "nodeBytes";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "nodePosition";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "nodeType";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100116F64(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v6 = v3;
          sub_100121318();
          goto LABEL_17;
        }

        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 1:
            v6 = v3;
            sub_1001207B0();
LABEL_17:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            type metadata accessor for KTPBLogEntry(0);
            type metadata accessor for KTPBSignedObject(0);
            sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_1001207B0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  result = sub_1001172D0(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*(v3[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
  }

  v9 = v3[3];
  v10 = v3[4];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_15:
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  }

LABEL_16:
  if (v3[5])
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (v3[6])
  {
    sub_100121318();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  type metadata accessor for KTPBLogEntry(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001172D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBLogEntry(0);
  sub_1000AB050(a1 + *(v12 + 40), v7, &qword_100385898, &unk_1002DB9A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBSignedObject);
  sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBSignedObject);
}

uint64_t sub_10011752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_1002D4770;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100117608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870A8, type metadata accessor for KTPBLogEntry, &unk_1002DA790);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001176A8(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100117714(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);

  return Message.hash(into:)();
}

uint64_t sub_1001177B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D348);
  sub_10009597C(v0, qword_10039D348);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002D94A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "logBeginningMs";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mapHeadHash";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "application";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "changeLogHead";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "revision";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "mapType";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "treeId";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestampMs";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "populating";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100117B80(uint64_t a1, uint64_t a2, uint64_t a3)
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
            type metadata accessor for KTPBMapHead(0);
            type metadata accessor for KTPBLogHead(0);
            sub_10011FF24(&qword_100386478, type metadata accessor for KTPBLogHead, &unk_1002DA5B0);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_5;
          }

          v6 = v3;
          sub_10010A434();
          goto LABEL_22;
        }

        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          v6 = v3;
          sub_10012136C();
LABEL_22:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7 || result == 8)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 9)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100117D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
LABEL_10:
    if (v12 == v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
    goto LABEL_10;
  }

  if ((v10 & 0xFF000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v3 + 24) || (sub_10010A434(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100117F98(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 40))
      {
        dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      }

      if (*(v3 + 48))
      {
        sub_10012136C();
        dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }

      if (*(v3 + 64))
      {
        dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      }

      if (*(v3 + 72))
      {
        dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      }

      if (*(v3 + 80) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      type metadata accessor for KTPBMapHead(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100117F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100386240, &qword_1002D9570);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBLogHead(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBMapHead(0);
  sub_1000AB050(a1 + *(v12 + 52), v7, &qword_100386240, &qword_1002D9570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386240, &qword_1002D9570);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBLogHead);
  sub_10011FF24(&qword_100386478, type metadata accessor for KTPBLogHead, &unk_1002DA5B0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBLogHead);
}

uint64_t sub_1001181F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1002D81A0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 52);
  v5 = type metadata accessor for KTPBLogHead(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1001182CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_1003870A0, type metadata accessor for KTPBMapHead, &unk_1002DA8F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011836C(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003864A8, type metadata accessor for KTPBMapHead, &unk_1002DA880);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001183D8(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003864A8, type metadata accessor for KTPBMapHead, &unk_1002DA880);

  return Message.hash(into:)();
}

uint64_t sub_100118478()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D360);
  sub_10009597C(v0, qword_10039D360);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "smh";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mapLeaf";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001186D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 1:
          type metadata accessor for KTPBMapEntry(0);
          type metadata accessor for KTPBSignedObject(0);
          sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001187FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001188F4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
    }

    v6 = v3[1];
    v7 = v3[2];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_12:
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    }

LABEL_13:
    type metadata accessor for KTPBMapEntry(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001188F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBMapEntry(0);
  sub_1000AB050(a1 + *(v12 + 28), v7, &qword_100385898, &unk_1002DB9A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBSignedObject);
  sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBSignedObject);
}

uint64_t sub_100118B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = xmmword_1002D4770;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100118C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387098, type metadata accessor for KTPBMapEntry, &unk_1002DAA60);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100118CB8(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003864C0, type metadata accessor for KTPBMapEntry, &unk_1002DA9E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100118D24(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003864C0, type metadata accessor for KTPBMapEntry, &unk_1002DA9E8);

  return Message.hash(into:)();
}

uint64_t sub_100118DD0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D378);
  sub_10009597C(v0, qword_10039D378);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "mapEntry";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "index";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "perApplicationTreeEntry";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "topLevelTreeEntry";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100119060()
{
  type metadata accessor for KTPBInclusionProof._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  v2 = type metadata accessor for KTPBMapEntry(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index) = xmmword_1002D4770;
  v3 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  v4 = type metadata accessor for KTPBLogEntry(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, 1, 1, v4);
  qword_100394290 = v0;
  return result;
}

uint64_t sub_100119178(uint64_t a1)
{
  v3 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_100095820(&qword_100386248, &qword_1002D9578);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  v10 = type metadata accessor for KTPBMapEntry(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  *(v1 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index) = xmmword_1002D4770;
  v12 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  v13 = type metadata accessor for KTPBLogEntry(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v1 + v12, 1, 1, v13);
  v25 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  v14(v1 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, 1, 1, v13);
  v15 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v15, v8, &qword_100386248, &qword_1002D9578);
  swift_beginAccess();
  sub_10011EFEC(v8, v1 + v9, &qword_100386248, &qword_1002D9578);
  swift_endAccess();
  v16 = (a1 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  swift_beginAccess();
  v19 = *v11;
  v20 = v11[1];
  *v11 = v18;
  v11[1] = v17;
  sub_100002D78(v18, v17);
  sub_1000956CC(v19, v20);
  v21 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v21, v5, &qword_100386250, &qword_1002D9580);
  swift_beginAccess();
  sub_10011EFEC(v5, v1 + v12, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v22, v5, &qword_100386250, &qword_1002D9580);

  v23 = v25;
  swift_beginAccess();
  sub_10011EFEC(v5, v1 + v23, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  return v1;
}

uint64_t sub_1001194D8()
{
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry, &qword_100386248, &qword_1002D9578);
  sub_1000956CC(*(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index), *(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index + 8));
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry, &qword_100386250, &qword_1002D9580);
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, &qword_100386250, &qword_1002D9580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001195B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for KTPBInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBInclusionProof._StorageClass(0);
    v9 = swift_allocObject();
    sub_100119178(v8);
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
        if (result == 4 || result == 5)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for KTPBLogEntry(0);
          v13 = type metadata accessor for KTPBLogEntry;
          v14 = &unk_1002DA718;
          v15 = &qword_100386490;
          goto LABEL_7;
        }
      }

      else
      {
        if (result == 2)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for KTPBMapEntry(0);
          v13 = type metadata accessor for KTPBMapEntry;
          v14 = &unk_1002DA9E8;
          v15 = &qword_1003864C0;
LABEL_7:
          sub_10011FF24(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
          swift_endAccess();
          goto LABEL_9;
        }

        if (result == 3)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_8;
        }
      }

LABEL_9:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001197E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for KTPBInclusionProof(0) + 20));
  result = sub_100119964(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      if (v11 == v11 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    sub_100002D78(v11, v12);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    sub_1000956CC(v11, v12);
LABEL_11:
    sub_100119B80(v8, a1, a2, a3);
    sub_100119D9C(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100119964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100386248, &qword_1002D9578);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBMapEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100386248, &qword_1002D9578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386248, &qword_1002D9578);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBMapEntry);
  sub_10011FF24(&qword_1003864C0, type metadata accessor for KTPBMapEntry, &unk_1002DA9E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBMapEntry);
}

uint64_t sub_100119B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBLogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100386250, &qword_1002D9580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBLogEntry);
  sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBLogEntry);
}

uint64_t sub_100119D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBLogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100386250, &qword_1002D9580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBLogEntry);
  sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBLogEntry);
}

BOOL sub_100119FFC(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v77 = type metadata accessor for KTPBLogEntry(0);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100095820(&qword_1003870E0, &unk_1002DC340);
  v4 = __chkstk_darwin(v79);
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v70 - v6;
  v7 = sub_100095820(&qword_100386250, &qword_1002D9580);
  v8 = __chkstk_darwin(v7 - 8);
  v70 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v74 = &v70 - v11;
  v12 = __chkstk_darwin(v10);
  v73 = (&v70 - v13);
  __chkstk_darwin(v12);
  v80 = &v70 - v14;
  v15 = type metadata accessor for KTPBMapEntry(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100095820(&qword_1003870E8, &qword_1002DB8D0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v70 - v20;
  v22 = sub_100095820(&qword_100386248, &qword_1002D9578);
  v23 = __chkstk_darwin(v22 - 8);
  v81 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v70 - v25;
  v27 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v27, v26, &qword_100386248, &qword_1002D9578);
  v28 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__mapEntry;
  v29 = v82;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_1000AB050(v26, v21, &qword_100386248, &qword_1002D9578);
  v31 = v29 + v28;
  v32 = v29;
  sub_1000AB050(v31, &v21[v30], &qword_100386248, &qword_1002D9578);
  v33 = *(v16 + 48);
  if (v33(v21, 1, v15) == 1)
  {

    sub_1000057C4(v26, &qword_100386248, &qword_1002D9578);
    v34 = a1;
    if (v33(&v21[v30], 1, v15) == 1)
    {
      sub_1000057C4(v21, &qword_100386248, &qword_1002D9578);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v34 = a1;
  v35 = v81;
  sub_1000AB050(v21, v81, &qword_100386248, &qword_1002D9578);
  if (v33(&v21[v30], 1, v15) == 1)
  {

    sub_1000057C4(v26, &qword_100386248, &qword_1002D9578);
    sub_10011EF0C(v35, type metadata accessor for KTPBMapEntry);
LABEL_6:
    sub_1000057C4(v21, &qword_1003870E8, &qword_1002DB8D0);
LABEL_12:

    return 0;
  }

  v36 = v78;
  sub_10011EE3C(&v21[v30], v78, type metadata accessor for KTPBMapEntry);

  v37 = sub_10011FFC0(v35, v36);
  sub_10011EF0C(v36, type metadata accessor for KTPBMapEntry);
  sub_1000057C4(v26, &qword_100386248, &qword_1002D9578);
  sub_10011EF0C(v35, type metadata accessor for KTPBMapEntry);
  sub_1000057C4(v21, &qword_100386248, &qword_1002D9578);
  if ((v37 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v38 = (v34 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = (v32 + OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__index);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  sub_100002D78(v40, v39);
  sub_100002D78(v43, v42);
  v44 = sub_100095AC0(v40, v39, v43, v42);
  sub_1000956CC(v43, v42);
  sub_1000956CC(v40, v39);
  if (!v44)
  {
    goto LABEL_12;
  }

  v45 = v32;
  v46 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v47 = v80;
  sub_1000AB050(v34 + v46, v80, &qword_100386250, &qword_1002D9580);
  v48 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v49 = *(v79 + 48);
  v50 = v75;
  sub_1000AB050(v47, v75, &qword_100386250, &qword_1002D9580);
  sub_1000AB050(v45 + v48, v50 + v49, &qword_100386250, &qword_1002D9580);
  v51 = *(v76 + 48);
  v52 = v77;
  if ((v51)(v50, 1, v77) == 1)
  {
    sub_1000057C4(v47, &qword_100386250, &qword_1002D9580);
    if ((v51)(v50 + v49, 1, v52) == 1)
    {
      v53 = v52;
      v81 = v51;
      sub_1000057C4(v50, &qword_100386250, &qword_1002D9580);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v55 = v73;
  sub_1000AB050(v50, v73, &qword_100386250, &qword_1002D9580);
  if ((v51)(v50 + v49, 1, v52) == 1)
  {
    sub_1000057C4(v80, &qword_100386250, &qword_1002D9580);
    sub_10011EF0C(v55, type metadata accessor for KTPBLogEntry);
LABEL_16:
    sub_1000057C4(v50, &qword_1003870E0, &unk_1002DC340);
    goto LABEL_12;
  }

  v53 = v52;
  v81 = v51;
  v56 = v50 + v49;
  v57 = v71;
  sub_10011EE3C(v56, v71, type metadata accessor for KTPBLogEntry);
  v58 = sub_100120804(v55, v57);
  sub_10011EF0C(v57, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v80, &qword_100386250, &qword_1002D9580);
  sub_10011EF0C(v55, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v50, &qword_100386250, &qword_1002D9580);
  if ((v58 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:
  v59 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v60 = v74;
  sub_1000AB050(v34 + v59, v74, &qword_100386250, &qword_1002D9580);
  v61 = OBJC_IVAR____TtCV13transparencyd18KTPBInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v62 = *(v79 + 48);
  v63 = v72;
  sub_1000AB050(v60, v72, &qword_100386250, &qword_1002D9580);
  sub_1000AB050(v45 + v61, v63 + v62, &qword_100386250, &qword_1002D9580);
  v64 = v53;
  v65 = v53;
  v66 = v81;
  if ((v81)(v63, 1, v65) != 1)
  {
    v67 = v70;
    sub_1000AB050(v63, v70, &qword_100386250, &qword_1002D9580);
    if ((v66)(v63 + v62, 1, v64) == 1)
    {

      sub_1000057C4(v74, &qword_100386250, &qword_1002D9580);
      sub_10011EF0C(v67, type metadata accessor for KTPBLogEntry);
      goto LABEL_24;
    }

    v68 = v71;
    sub_10011EE3C(v63 + v62, v71, type metadata accessor for KTPBLogEntry);
    v69 = sub_100120804(v67, v68);

    sub_10011EF0C(v68, type metadata accessor for KTPBLogEntry);
    sub_1000057C4(v74, &qword_100386250, &qword_1002D9580);
    sub_10011EF0C(v67, type metadata accessor for KTPBLogEntry);
    sub_1000057C4(v63, &qword_100386250, &qword_1002D9580);
    return (v69 & 1) != 0;
  }

  sub_1000057C4(v60, &qword_100386250, &qword_1002D9580);
  if ((v66)(v63 + v62, 1, v64) != 1)
  {
LABEL_24:
    sub_1000057C4(v63, &qword_1003870E0, &unk_1002DC340);
    return 0;
  }

  sub_1000057C4(v63, &qword_100386250, &qword_1002D9580);
  return 1;
}

uint64_t sub_10011AC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387090, type metadata accessor for KTPBInclusionProof, &unk_1002DABC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011ACB4(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003864D8, type metadata accessor for KTPBInclusionProof, &unk_1002DAB50);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011AD20(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003864D8, type metadata accessor for KTPBInclusionProof, &unk_1002DAB50);

  return Message.hash(into:)();
}

uint64_t sub_10011ADC4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D390);
  sub_10009597C(v0, qword_10039D390);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "perApplicationTreeEntry";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topLevelTreeEntry";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011AFD4()
{
  type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  v2 = type metadata accessor for KTPBLogEntry(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, 1, 1, v2);
  qword_1003942A8 = v0;
  return result;
}

uint64_t sub_10011B090(uint64_t a1)
{
  v3 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  v7 = type metadata accessor for KTPBLogEntry(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  v8(v1 + OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v10, v5, &qword_100386250, &qword_1002D9580);
  swift_beginAccess();
  sub_10011EFEC(v5, v1 + v6, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v11, v5, &qword_100386250, &qword_1002D9580);

  swift_beginAccess();
  sub_10011EFEC(v5, v1 + v9, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  return v1;
}

uint64_t sub_10011B268()
{
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry, &qword_100386250, &qword_1002D9580);
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry, &qword_100386250, &qword_1002D9580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10011B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for KTPBPatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBPatInclusionProof._StorageClass(0);
    v9 = swift_allocObject();
    sub_10011B090(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        swift_beginAccess();
        type metadata accessor for KTPBLogEntry(0);
        sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        swift_endAccess();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for KTPBPatInclusionProof(0) + 20));
  result = sub_10011B520(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10011B73C(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011B520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBLogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100386250, &qword_1002D9580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBLogEntry);
  sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBLogEntry);
}

uint64_t sub_10011B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBLogEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100386250, &qword_1002D9580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBLogEntry);
  sub_10011FF24(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBLogEntry);
}

BOOL sub_10011B99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBLogEntry(0);
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095820(&qword_1003870E0, &unk_1002DC340);
  v7 = __chkstk_darwin(v6);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_100095820(&qword_100386250, &qword_1002D9580);
  v12 = __chkstk_darwin(v11 - 8);
  v42 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v45 = &v42 - v15;
  v16 = __chkstk_darwin(v14);
  v47 = (&v42 - v17);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v20, v19, &qword_100386250, &qword_1002D9580);
  v21 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v44 = v6;
  v22 = *(v6 + 48);
  sub_1000AB050(v19, v10, &qword_100386250, &qword_1002D9580);
  v23 = a2 + v21;
  v24 = a2;
  v25 = v48;
  sub_1000AB050(v23, &v10[v22], &qword_100386250, &qword_1002D9580);
  v28 = *(v25 + 48);
  v26 = v25 + 48;
  v27 = v28;
  if (v28(v10, 1, v4) != 1)
  {
    v29 = v47;
    sub_1000AB050(v10, v47, &qword_100386250, &qword_1002D9580);
    if (v27(&v10[v22], 1, v4) != 1)
    {
      v48 = v26;
      v30 = v43;
      sub_10011EE3C(&v10[v22], v43, type metadata accessor for KTPBLogEntry);

      v31 = sub_100120804(v29, v30);
      sub_10011EF0C(v30, type metadata accessor for KTPBLogEntry);
      sub_1000057C4(v19, &qword_100386250, &qword_1002D9580);
      sub_10011EF0C(v29, type metadata accessor for KTPBLogEntry);
      sub_1000057C4(v10, &qword_100386250, &qword_1002D9580);
      if (v31)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_1000057C4(v19, &qword_100386250, &qword_1002D9580);
    sub_10011EF0C(v29, type metadata accessor for KTPBLogEntry);
LABEL_6:
    sub_1000057C4(v10, &qword_1003870E0, &unk_1002DC340);
    goto LABEL_7;
  }

  sub_1000057C4(v19, &qword_100386250, &qword_1002D9580);
  if (v27(&v10[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v48 = v26;
  sub_1000057C4(v10, &qword_100386250, &qword_1002D9580);
LABEL_9:
  v32 = v24;
  v33 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v34 = v45;
  sub_1000AB050(a1 + v33, v45, &qword_100386250, &qword_1002D9580);
  v35 = OBJC_IVAR____TtCV13transparencyd21KTPBPatInclusionProofP33_E79D3128A6A4A9C8C0AF3DE55326DF0213_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v36 = *(v44 + 48);
  v37 = v46;
  sub_1000AB050(v34, v46, &qword_100386250, &qword_1002D9580);
  sub_1000AB050(v32 + v35, v37 + v36, &qword_100386250, &qword_1002D9580);
  if (v27(v37, 1, v4) == 1)
  {

    sub_1000057C4(v34, &qword_100386250, &qword_1002D9580);
    if (v27((v37 + v36), 1, v4) == 1)
    {
      sub_1000057C4(v37, &qword_100386250, &qword_1002D9580);
      return 1;
    }

    goto LABEL_14;
  }

  v38 = v42;
  sub_1000AB050(v37, v42, &qword_100386250, &qword_1002D9580);
  if (v27((v37 + v36), 1, v4) == 1)
  {

    sub_1000057C4(v34, &qword_100386250, &qword_1002D9580);
    sub_10011EF0C(v38, type metadata accessor for KTPBLogEntry);
LABEL_14:
    sub_1000057C4(v37, &qword_1003870E0, &unk_1002DC340);
    return 0;
  }

  v40 = v43;
  sub_10011EE3C(v37 + v36, v43, type metadata accessor for KTPBLogEntry);
  v41 = sub_100120804(v38, v40);

  sub_10011EF0C(v40, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v34, &qword_100386250, &qword_1002D9580);
  sub_10011EF0C(v38, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v37, &qword_100386250, &qword_1002D9580);
  return (v41 & 1) != 0;
}

uint64_t sub_10011C0BC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_10011C168(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387088, type metadata accessor for KTPBPatInclusionProof, &unk_1002DAD30);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011C208(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_1003864F0, type metadata accessor for KTPBPatInclusionProof, &unk_1002DACB8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011C274(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_1003864F0, type metadata accessor for KTPBPatInclusionProof, &unk_1002DACB8);

  return Message.hash(into:)();
}

uint64_t sub_10011C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for KTPBChangeLogNodeV2(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011C450(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for KTPBChangeLogNodeV2(0);
  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011C560(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387080, type metadata accessor for KTPBChangeLogNodeV2, &unk_1002DAE98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011C600(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386508, type metadata accessor for KTPBChangeLogNodeV2, &unk_1002DAE20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011C66C(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386508, type metadata accessor for KTPBChangeLogNodeV2, &unk_1002DAE20);

  return Message.hash(into:)();
}

uint64_t sub_10011C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011C820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for KTPBPerApplicationTreeNode(0);
        type metadata accessor for KTPBSignedObject(0);
        sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011C9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387078, type metadata accessor for KTPBPerApplicationTreeNode, &unk_1002DB000);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011CA6C(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386520, type metadata accessor for KTPBPerApplicationTreeNode, &unk_1002DAF88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011CAD8(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386520, type metadata accessor for KTPBPerApplicationTreeNode, &unk_1002DAF88);

  return Message.hash(into:)();
}

uint64_t sub_10011CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for KTPBTopLevelTreeNode(0);
        type metadata accessor for KTPBSignedObject(0);
        sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  result = sub_10011CD5C(v5, a1, a2, a3, a4, a5);
  if (!v6)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for KTPBSignedObject(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_1000AB050(a1 + *(v15 + 20), v10, &qword_100385898, &unk_1002DB9A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000057C4(v10, &qword_100385898, &unk_1002DB9A0);
  }

  sub_10011EE3C(v10, v14, type metadata accessor for KTPBSignedObject);
  sub_10011FF24(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v14, type metadata accessor for KTPBSignedObject);
}

uint64_t sub_10011CFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_10011D080(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387070, type metadata accessor for KTPBTopLevelTreeNode, &unk_1002DB168);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011D120(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386538, type metadata accessor for KTPBTopLevelTreeNode, &unk_1002DB0F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011D18C(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386538, type metadata accessor for KTPBTopLevelTreeNode, &unk_1002DB0F0);

  return Message.hash(into:)();
}

uint64_t sub_10011D230()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D3F0);
  sub_10009597C(v0, qword_10039D3F0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfPublicKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publicKeyBytes";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "earliestVersion";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_10010A2F0();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 1:
          type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
          type metadata accessor for KTPBVRFPublicKey(0);
          sub_10011FF24(&qword_100386440, type metadata accessor for KTPBVRFPublicKey, &unk_1002DA150);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011D5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10011D6FC(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
LABEL_10:
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  }

LABEL_11:
  if (v3[2])
  {
    sub_10010A2F0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100386258, &qword_1002D9588);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBVRFPublicKey(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
  sub_1000AB050(a1 + *(v12 + 28), v7, &qword_100386258, &qword_1002D9588);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100386258, &qword_1002D9588);
  }

  sub_10011EE3C(v7, v11, type metadata accessor for KTPBVRFPublicKey);
  sub_10011FF24(&qword_100386440, type metadata accessor for KTPBVRFPublicKey, &unk_1002DA150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10011EF0C(v11, type metadata accessor for KTPBVRFPublicKey);
}

uint64_t sub_10011D958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for KTPBVRFPublicKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_10011DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387068, type metadata accessor for KTPBPerApplicationTreeConfigNode, &unk_1002DB2D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011DAC0(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386550, type metadata accessor for KTPBPerApplicationTreeConfigNode, &unk_1002DB258);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011DB2C(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386550, type metadata accessor for KTPBPerApplicationTreeConfigNode, &unk_1002DB258);

  return Message.hash(into:)();
}

uint64_t sub_10011DBD0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D408);
  sub_10009597C(v0, qword_10039D408);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKeyBytes";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersion";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 3)
      {
        sub_10010A2F0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  result = *v7;
  v11 = v7[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v13 = *(result + 16);
    v14 = *(result + 24);
    goto LABEL_8;
  }

  if (v12)
  {
    v13 = result;
    v14 = result >> 32;
LABEL_8:
    if (v13 == v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = a4;
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v8)
  {
    return result;
  }

  a4 = v15;
LABEL_11:
  if (!v7[2] || (a4(result), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v8))
  {
    a7(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011E084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387060, type metadata accessor for KTPBTopLevelTreeConfigNode, &unk_1002DB438);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011E124(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386568, type metadata accessor for KTPBTopLevelTreeConfigNode, &unk_1002DB3C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011E190(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386568, type metadata accessor for KTPBTopLevelTreeConfigNode, &unk_1002DB3C0);

  return Message.hash(into:)();
}

uint64_t sub_10011E23C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D420);
  sub_10009597C(v0, qword_10039D420);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestampMs";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersionForNextTree";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 3)
      {
        sub_10010A2F0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (sub_10010A2F0(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for KTPBLogClosedNode(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int sub_10011E62C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10011FF24(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011E6B4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_10011E710(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011FF24(&qword_100387058, type metadata accessor for KTPBLogClosedNode, &unk_1002DB5A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011E7B0(uint64_t a1)
{
  v2 = sub_10011FF24(&qword_100386580, type metadata accessor for KTPBLogClosedNode, &unk_1002DB528);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011E81C(uint64_t a1, uint64_t a2)
{
  sub_10011FF24(&qword_100386580, type metadata accessor for KTPBLogClosedNode, &unk_1002DB528);

  return Message.hash(into:)();
}

uint64_t sub_10011E898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_100002D78(v7, v6);
          sub_100002D78(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_100002D78(v7, v6);
        sub_100002D78(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_100002D78(v7, v6);
          sub_100002D78(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1000946B4(v24, v25, v26, v33);
          sub_1000956CC(v9, v8);
          sub_1000956CC(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_100002D78(v7, v6);
        sub_100002D78(v9, v8);
      }

      sub_1000946B4(v33, v9, v8, &v32);
      sub_1000956CC(v9, v8);
      sub_1000956CC(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

unint64_t sub_10011ECA4(unint64_t result)
{
  v1 = 4;
  if (result != 999999999)
  {
    v1 = result;
  }

  if (result >= 4)
  {
    return v1;
  }

  return result;
}

uint64_t sub_10011ECDC(uint64_t result)
{
  if (result > 4)
  {
    switch(result)
    {
      case 5:
        return 3;
      case 6:
        return 4;
      case 7:
        return 5;
    }
  }

  else if (result == 3)
  {
    return 2;
  }

  return result;
}

uint64_t sub_10011EE3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011EEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011EF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011EFEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095820(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10011F154()
{
  result = qword_100386260;
  if (!qword_100386260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386260);
  }

  return result;
}

uint64_t sub_10011F1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBVRFPublicKey(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095820(&qword_100386258, &qword_1002D9588);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_100095820(&qword_1003870D8, &qword_1002DB8C8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v30 = type metadata accessor for KTPBPerApplicationTreeConfigNode(0);
  v14 = *(v30 + 28);
  v15 = *(v11 + 56);
  v32 = a1;
  sub_1000AB050(a1 + v14, v13, &qword_100386258, &qword_1002D9588);
  sub_1000AB050(a2 + v14, &v13[v15], &qword_100386258, &qword_1002D9588);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000AB050(v13, v9, &qword_100386258, &qword_1002D9588);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10011EF0C(v9, type metadata accessor for KTPBVRFPublicKey);
      goto LABEL_15;
    }

    v22 = v31;
    sub_10011EE3C(&v13[v15], v31, type metadata accessor for KTPBVRFPublicKey);
    if (sub_100095AC0(*v9, *(v9 + 1), *v22, *(v22 + 8)))
    {
      v23 = *(v9 + 2);
      v24 = *(v22 + 16);
      v25 = 3;
      if (!v23)
      {
        v25 = 0;
      }

      if (v9[24])
      {
        v23 = v25;
      }

      if (*(v22 + 24) == 1)
      {
        if (v24)
        {
          if (v23 != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v23)
        {
          goto LABEL_24;
        }
      }

      else if (v23 != v24)
      {
        goto LABEL_24;
      }

      type metadata accessor for UnknownStorage();
      sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10011EF0C(v22, type metadata accessor for KTPBVRFPublicKey);
      sub_10011EF0C(v9, type metadata accessor for KTPBVRFPublicKey);
      sub_1000057C4(v13, &qword_100386258, &qword_1002D9588);
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_24:
    sub_10011EF0C(v22, type metadata accessor for KTPBVRFPublicKey);
    sub_10011EF0C(v9, type metadata accessor for KTPBVRFPublicKey);
    v20 = &qword_100386258;
    v21 = &qword_1002D9588;
    goto LABEL_25;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_15:
    v20 = &qword_1003870D8;
    v21 = &qword_1002DB8C8;
LABEL_25:
    sub_1000057C4(v13, v20, v21);
    goto LABEL_26;
  }

  sub_1000057C4(v13, &qword_100386258, &qword_1002D9588);
LABEL_4:
  v17 = v32;
  if (sub_100095AC0(*v32, *(v32 + 8), *a2, *(a2 + 8)))
  {
    v18 = *(v17 + 16);
    if (*(v17 + 24) == 1)
    {
      v18 = qword_1002DB920[v18];
    }

    v19 = *(a2 + 16);
    if (*(a2 + 24))
    {
      if (v19 <= 1)
      {
        if (v19)
        {
          if (v18 == 1)
          {
            goto LABEL_29;
          }
        }

        else if (!v18)
        {
          goto LABEL_29;
        }
      }

      else if (v19 == 2)
      {
        if (v18 == 2)
        {
          goto LABEL_29;
        }
      }

      else if (v19 == 3)
      {
        if (v18 == 3)
        {
          goto LABEL_29;
        }
      }

      else if (v18 == 999999999)
      {
        goto LABEL_29;
      }
    }

    else if (v18 == v19)
    {
LABEL_29:
      type metadata accessor for UnknownStorage();
      sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v26 & 1;
    }
  }

LABEL_26:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10011F68C(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v4 = qword_1002DB920[v4];
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 24))
  {
LABEL_16:
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v4 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v5 == 3)
    {
      if (v4 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v5 = 999999999;
    goto LABEL_16;
  }

  if (v5)
  {
    if (v4 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_17:
  type metadata accessor for KTPBTopLevelTreeConfigNode(0);
  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011F7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v23 = a1;
  v5 = type metadata accessor for KTPBSignedObject(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100095820(&qword_100386218, &qword_1002D9480);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v15 = *(a3(0) + 20);
  v16 = *(v12 + 56);
  sub_1000AB050(v23 + v15, v14, &qword_100385898, &unk_1002DB9A0);
  sub_1000AB050(a2 + v15, &v14[v16], &qword_100385898, &unk_1002DB9A0);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_1000057C4(v14, &qword_100385898, &unk_1002DB9A0);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_1000AB050(v14, v10, &qword_100385898, &unk_1002DB9A0);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_10011EF0C(v10, type metadata accessor for KTPBSignedObject);
LABEL_6:
    sub_1000057C4(v14, &qword_100386218, &qword_1002D9480);
    goto LABEL_7;
  }

  v19 = v22;
  sub_10011EE3C(&v14[v16], v22, type metadata accessor for KTPBSignedObject);
  v20 = sub_100120444(v10, v19);
  sub_10011EF0C(v19, type metadata accessor for KTPBSignedObject);
  sub_10011EF0C(v10, type metadata accessor for KTPBSignedObject);
  sub_1000057C4(v14, &qword_100385898, &unk_1002DB9A0);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10011FB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011FC00(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v2 = qword_1002DB920[v2];
  }

  v3 = *(a2 + 8);
  if (!*(a2 + 16))
  {
LABEL_16:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v3 == 3)
    {
      if (v2 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v3 = 999999999;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v2 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_17:
  type metadata accessor for KTPBLogClosedNode(0);
  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011FD24(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = v6;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for KTPBVRFPublicKey(0);
  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10011FE1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = 3;
  if (!*a1)
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v4 = v6;
  }

  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_100095AC0(*(a1 + 16), *(a1 + 24), a2[2], a2[3]) && sub_100095AC0(*(a1 + 32), *(a1 + 40), a2[4], a2[5]))
  {
    type metadata accessor for KTPBVRFWitness(0);
    type metadata accessor for UnknownStorage();
    sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10011FF24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10011FF6C()
{
  result = qword_100386278;
  if (!qword_100386278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386278);
  }

  return result;
}

uint64_t sub_10011FFC0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100095820(&qword_100386218, &qword_1002D9480);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for KTPBMapEntry(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1000AB050(a1 + v14, v13, &qword_100385898, &unk_1002DB9A0);
  sub_1000AB050(a2 + v14, &v13[v15], &qword_100385898, &unk_1002DB9A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000AB050(v13, v9, &qword_100385898, &unk_1002DB9A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_10011EE3C(&v13[v15], v24, type metadata accessor for KTPBSignedObject);
      v18 = sub_100120444(v9, v17);
      sub_10011EF0C(v17, type metadata accessor for KTPBSignedObject);
      sub_10011EF0C(v9, type metadata accessor for KTPBSignedObject);
      sub_1000057C4(v13, &qword_100385898, &unk_1002DB9A0);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }

    sub_10011EF0C(v9, type metadata accessor for KTPBSignedObject);
LABEL_6:
    sub_1000057C4(v13, &qword_100386218, &qword_1002D9480);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000057C4(v13, &qword_100385898, &unk_1002DB9A0);
LABEL_8:
  v19 = v25;
  if ((sub_10011E898(*v25, *a2) & 1) == 0 || !sub_100095AC0(v19[1], v19[2], *(a2 + 8), *(a2 + 16)))
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t sub_100120340(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100095AC0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 40))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 40) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for KTPBSignature(0);
  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100120444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBSignature(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100386238, &unk_1002D9560);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100095820(&qword_1003870F8, &unk_1002DB8E0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for KTPBSignedObject(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1000AB050(a1 + v14, v13, &qword_100386238, &unk_1002D9560);
  sub_1000AB050(a2 + v14, &v13[v15], &qword_100386238, &unk_1002D9560);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000057C4(v13, &qword_100386238, &unk_1002D9560);
LABEL_11:
      type metadata accessor for UnknownStorage();
      sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_1000AB050(v13, v10, &qword_100386238, &unk_1002D9560);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_10011EF0C(v10, type metadata accessor for KTPBSignature);
LABEL_7:
    sub_1000057C4(v13, &qword_1003870F8, &unk_1002DB8E0);
    goto LABEL_8;
  }

  v19 = v21;
  sub_10011EE3C(&v13[v15], v21, type metadata accessor for KTPBSignature);
  v20 = sub_100120340(v10, v19);
  sub_10011EF0C(v19, type metadata accessor for KTPBSignature);
  sub_10011EF0C(v10, type metadata accessor for KTPBSignature);
  sub_1000057C4(v13, &qword_100386238, &unk_1002D9560);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1001207B0()
{
  result = qword_100386290;
  if (!qword_100386290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386290);
  }

  return result;
}

uint64_t sub_100120804(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100095820(&qword_100386218, &qword_1002D9480);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 <= 2)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          if (v14 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v14 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v14)
      {
        goto LABEL_34;
      }
    }

    else if (v15 > 4)
    {
      if (v15 == 5)
      {
        if (v14 != 5)
        {
          goto LABEL_34;
        }
      }

      else if (v14 != 6)
      {
        goto LABEL_34;
      }
    }

    else if (v15 == 3)
    {
      if (v14 != 3)
      {
        goto LABEL_34;
      }
    }

    else if (v14 != 4)
    {
      goto LABEL_34;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_34;
  }

  v16 = type metadata accessor for KTPBLogEntry(0);
  v17 = *(v16 + 40);
  v18 = a1;
  v19 = *(v11 + 48);
  v25 = v16;
  v26 = v18;
  sub_1000AB050(v18 + v17, v13, &qword_100385898, &unk_1002DB9A0);
  sub_1000AB050(a2 + v17, &v13[v19], &qword_100385898, &unk_1002DB9A0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_1000AB050(v13, v10, &qword_100385898, &unk_1002DB9A0);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_10011EF0C(v10, type metadata accessor for KTPBSignedObject);
      goto LABEL_13;
    }

    sub_10011EE3C(&v13[v19], v7, type metadata accessor for KTPBSignedObject);
    v21 = sub_100120444(v10, v7);
    sub_10011EF0C(v7, type metadata accessor for KTPBSignedObject);
    sub_10011EF0C(v10, type metadata accessor for KTPBSignedObject);
    sub_1000057C4(v13, &qword_100385898, &unk_1002DB9A0);
    if (v21)
    {
      goto LABEL_22;
    }

LABEL_34:
    v23 = 0;
    return v23 & 1;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
LABEL_13:
    sub_1000057C4(v13, &qword_100386218, &qword_1002D9480);
    goto LABEL_34;
  }

  sub_1000057C4(v13, &qword_100385898, &unk_1002DB9A0);
LABEL_22:
  v22 = v26;
  if ((sub_10011E898(v26[2], *(a2 + 16)) & 1) == 0 || !sub_100095AC0(v22[3], v22[4], *(a2 + 24), *(a2 + 32)) || v22[5] != *(a2 + 40) || !sub_10000F1BC(v22[6], *(v22 + 56), *(a2 + 48)))
  {
    goto LABEL_34;
  }

  type metadata accessor for UnknownStorage();
  sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t sub_100120C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBLogHead(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100386240, &qword_1002D9570);
  __chkstk_darwin(v8 - 8);
  v10 = (&v28 - v9);
  v11 = sub_100095820(&qword_1003870F0, &qword_1002DB8D8);
  v12 = __chkstk_darwin(v11);
  v14 = &v28 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_46;
  }

  v15 = v12;
  if (!sub_100095AC0(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    goto LABEL_46;
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v17 <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          if (v16 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v16 != 2)
        {
          goto LABEL_46;
        }
      }

      else if (v16)
      {
        goto LABEL_46;
      }
    }

    else if (v17 > 4)
    {
      if (v17 == 5)
      {
        if (v16 != 5)
        {
          goto LABEL_46;
        }
      }

      else if (v16 != 6)
      {
        goto LABEL_46;
      }
    }

    else if (v17 == 3)
    {
      if (v16 != 3)
      {
        goto LABEL_46;
      }
    }

    else if (v16 != 4)
    {
      goto LABEL_46;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_46;
  }

  v29 = type metadata accessor for KTPBMapHead(0);
  v18 = *(v29 + 52);
  v19 = *(v15 + 48);
  sub_1000AB050(a1 + v18, v14, &qword_100386240, &qword_1002D9570);
  v20 = a2 + v18;
  v21 = v19;
  sub_1000AB050(v20, &v14[v19], &qword_100386240, &qword_1002D9570);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) != 1)
  {
    sub_1000AB050(v14, v10, &qword_100386240, &qword_1002D9570);
    if (v22(&v14[v21], 1, v4) != 1)
    {
      sub_10011EE3C(&v14[v21], v7, type metadata accessor for KTPBLogHead);
      v23 = sub_1001210DC(v10, v7);
      sub_10011EF0C(v7, type metadata accessor for KTPBLogHead);
      sub_10011EF0C(v10, type metadata accessor for KTPBLogHead);
      sub_1000057C4(v14, &qword_100386240, &qword_1002D9570);
      if ((v23 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_24;
    }

    sub_10011EF0C(v10, type metadata accessor for KTPBLogHead);
LABEL_15:
    sub_1000057C4(v14, &qword_1003870F0, &qword_1002DB8D8);
    goto LABEL_46;
  }

  if (v22(&v14[v21], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1000057C4(v14, &qword_100386240, &qword_1002D9570);
LABEL_24:
  if (*(a1 + 40) == *(a2 + 40))
  {
    v24 = *(a1 + 48);
    v25 = *(a2 + 48);
    if (*(a2 + 56) == 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          if (v24 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v24 != 2)
        {
          goto LABEL_46;
        }
      }

      else if (v24)
      {
        goto LABEL_46;
      }
    }

    else if (v24 != v25)
    {
      goto LABEL_46;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
    {
      type metadata accessor for UnknownStorage();
      sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v26 & 1;
    }
  }

LABEL_46:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1001210DC(void *a1, uint64_t a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 8) || !sub_100095AC0(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }
    }

    else if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 6)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[9] == *(a2 + 72) && a1[10] == *(a2 + 80))
  {
    type metadata accessor for KTPBLogHead(0);
    type metadata accessor for UnknownStorage();
    sub_10011FF24(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

unint64_t sub_100121318()
{
  result = qword_1003862A0;
  if (!qword_1003862A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003862A0);
  }

  return result;
}

unint64_t sub_10012136C()
{
  result = qword_1003862B0;
  if (!qword_1003862B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003862B0);
  }

  return result;
}

unint64_t sub_1001213C4()
{
  result = qword_100386308;
  if (!qword_100386308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386308);
  }

  return result;
}

unint64_t sub_10012141C()
{
  result = qword_100386310;
  if (!qword_100386310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386310);
  }

  return result;
}

unint64_t sub_1001214A8()
{
  result = qword_100386328;
  if (!qword_100386328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386328);
  }

  return result;
}

unint64_t sub_100121500()
{
  result = qword_100386330;
  if (!qword_100386330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386330);
  }

  return result;
}

unint64_t sub_10012158C()
{
  result = qword_100386348;
  if (!qword_100386348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386348);
  }

  return result;
}

unint64_t sub_1001215E4()
{
  result = qword_100386350;
  if (!qword_100386350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386350);
  }

  return result;
}

unint64_t sub_100121670()
{
  result = qword_100386368;
  if (!qword_100386368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386368);
  }

  return result;
}

unint64_t sub_1001216C8()
{
  result = qword_100386370;
  if (!qword_100386370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386370);
  }

  return result;
}

unint64_t sub_100121750()
{
  result = qword_100386388;
  if (!qword_100386388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386388);
  }

  return result;
}

unint64_t sub_1001217A8()
{
  result = qword_100386390;
  if (!qword_100386390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386390);
  }

  return result;
}

unint64_t sub_100121800()
{
  result = qword_100386398;
  if (!qword_100386398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386398);
  }

  return result;
}

unint64_t sub_100121888()
{
  result = qword_1003863B0;
  if (!qword_1003863B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863B0);
  }

  return result;
}

unint64_t sub_1001218E0()
{
  result = qword_1003863B8;
  if (!qword_1003863B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863B8);
  }

  return result;
}

unint64_t sub_100121938()
{
  result = qword_1003863C0;
  if (!qword_1003863C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863C0);
  }

  return result;
}

unint64_t sub_1001219C0()
{
  result = qword_1003863D8;
  if (!qword_1003863D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863D8);
  }

  return result;
}

unint64_t sub_100121A18()
{
  result = qword_1003863E0;
  if (!qword_1003863E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863E0);
  }

  return result;
}

unint64_t sub_100121A70()
{
  result = qword_1003863E8;
  if (!qword_1003863E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003863E8);
  }

  return result;
}

unint64_t sub_100121AF8()
{
  result = qword_100386400;
  if (!qword_100386400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386400);
  }

  return result;
}

unint64_t sub_100121B50()
{
  result = qword_100386408;
  if (!qword_100386408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386408);
  }

  return result;
}

unint64_t sub_100121BA8()
{
  result = qword_100386410;
  if (!qword_100386410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386410);
  }

  return result;
}

unint64_t sub_100121C30()
{
  result = qword_100386428;
  if (!qword_100386428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100386428);
  }

  return result;
}

uint64_t sub_100122FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100123064(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_10012333C(319, &unk_100386780, type metadata accessor for KTPBSignature);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10012313C(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100123208(uint64_t a1)
{
  sub_1001232EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_10012333C(319, &qword_100385E50, type metadata accessor for KTPBSignedObject);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001232EC()
{
  if (!qword_1003868B0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003868B0);
    }
  }
}

void sub_10012333C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1001233B8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_10012333C(319, &unk_100386950, type metadata accessor for KTPBLogHead);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001234C0(uint64_t a1)
{
  sub_1001232EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_10012333C(319, &qword_100385E50, type metadata accessor for KTPBSignedObject);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001235D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001236A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100123774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t sub_100123864(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100123974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100123A80(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_10012333C(319, &qword_100385E50, type metadata accessor for KTPBSignedObject);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100123B48(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_10012333C(319, &unk_100386D00, type metadata accessor for KTPBVRFPublicKey);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100123C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100123CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100123DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100123E58(uint64_t a1)
{
  sub_10012333C(319, &qword_100386E70, type metadata accessor for KTPBMapEntry);
  if (v1 <= 0x3F)
  {
    sub_10012333C(319, &unk_100386E78, type metadata accessor for KTPBLogEntry);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100123F68(uint64_t a1)
{
  sub_10012333C(319, &unk_100386E78, type metadata accessor for KTPBLogEntry);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100124068@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTPBQueryRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100124104(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBQueryRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1001241C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1002D4770;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  type metadata accessor for KTPBQueryRequest(0);
  return UnknownStorage.init()();
}

uint64_t sub_100124224@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100387100, &unk_1002DB990);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for KTPBQueryResponse(0);
  sub_1000AB050(v1 + *(v6 + 28), v5, &qword_100387100, &unk_1002DB990);
  v7 = type metadata accessor for KTPBInclusionProof(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100124864(v5, a1, type metadata accessor for KTPBInclusionProof);
  }

  sub_100110690(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100387100, &unk_1002DB990);
  }

  return result;
}

uint64_t sub_100124398(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBQueryResponse(0) + 28);
  sub_1000057C4(v1 + v3, &qword_100387100, &unk_1002DB990);
  sub_100124864(a1, v1 + v3, type metadata accessor for KTPBInclusionProof);
  v4 = type metadata accessor for KTPBInclusionProof(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100124450(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100387100, &unk_1002DB990) - 8) + 64);
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
  v8 = type metadata accessor for KTPBInclusionProof(0);
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
  v14 = *(type metadata accessor for KTPBQueryResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100387100, &unk_1002DB990);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100110690(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100387100, &unk_1002DB990);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBInclusionProof);
  }

  return sub_10012465C;
}

uint64_t sub_100124710@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for KTPBQueryResponse(0);
  sub_1000AB050(v1 + *(v6 + 32), v5, &qword_1003858A0, &qword_1002D81F0);
  v7 = type metadata accessor for KTPBVRFWitness(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100124864(v5, a1, type metadata accessor for KTPBVRFWitness);
  }

  sub_10010C990(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_1003858A0, &qword_1002D81F0);
  }

  return result;
}

uint64_t sub_100124864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001248CC(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBQueryResponse(0) + 32);
  sub_1000057C4(v1 + v3, &qword_1003858A0, &qword_1002D81F0);
  sub_100124864(a1, v1 + v3, type metadata accessor for KTPBVRFWitness);
  v4 = type metadata accessor for KTPBVRFWitness(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100124984(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_1003858A0, &qword_1002D81F0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBVRFWitness(0);
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
  v14 = *(type metadata accessor for KTPBQueryResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_1003858A0, &qword_1002D81F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010C990(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBVRFWitness);
  }

  return sub_100124B90;
}