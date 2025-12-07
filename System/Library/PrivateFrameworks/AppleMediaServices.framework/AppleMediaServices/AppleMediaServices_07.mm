uint64_t sub_1000DC0B0(uint64_t a1)
{
  v1 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      sub_1000DC294(319, &qword_1002DBE38, &type metadata for String);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1000DC2F8(319, &qword_1002DBE40, type metadata accessor for TSDataSyncTriggerEvent);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_1000DC294(319, &qword_1002DBE48, &type metadata for TSDataSyncDatasetConfig);
        if (v8 > 0x3F)
        {
          return v6;
        }

        sub_1000DC294(319, &qword_1002DBE50, &type metadata for UInt64);
        if (v9 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_1000DC294(319, &qword_1002DBE58, &type metadata for TSDataSyncDatasetGroupReason);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_1000DC294(319, &qword_1002DBE60, &type metadata for TSDataSyncDatasetGroupTrigger);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              sub_1000DC2F8(319, &unk_1002DBE68, &type metadata accessor for Date);
              v1 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1000DC294(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1000D6484();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000DC2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000D6484();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000DC368()
{
  sub_100002FBC();
  sub_1000E5AE4(v2);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100152BEC(*(v1 + 16), *(v0 + 16)))
  {
    v6 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
        if (static AccountIdentity.== infix(_:_:)())
        {
          v8 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
          if (static URL.== infix(_:_:)())
          {
            v9 = v8[6];
            v10 = *(v1 + v9);
            v11 = *(v1 + v9 + 8);
            v12 = (v0 + v9);
            v13 = v10 == *v12 && v11 == v12[1];
            if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v14 = sub_1000E5A20(v8[7]);
              sub_10011209C(v14, v15);
              if (v16)
              {
                v17 = sub_1000E5A20(v8[8]);
                sub_10011209C(v17, v18);
                if (v19)
                {
                  sub_1000E5A20(v8[9]);
                  sub_1001121D0();
                  if (v20)
                  {
                    v21 = sub_1000E5A20(v8[10]);
                    sub_100112600(v21, v22);
                    if (v23)
                    {
                      sub_1000E5A20(v8[11]);
                      sub_100112990();
                      if (v24)
                      {
                        v25 = sub_1000E5A20(v8[12]);
                        sub_10011209C(v25, v26);
                        if (v27)
                        {
                          v28 = sub_1000E5A20(v8[13]);
                          sub_10011209C(v28, v29);
                          if (v30)
                          {
                            sub_1000E5A20(v8[14]);
                            if (sub_10011838C())
                            {
                              sub_1000E5A20(v8[15]);
                              if (sub_10011838C())
                              {
                                sub_1000E5A20(v8[16]);

                                sub_100112B58();
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

uint64_t sub_1000DC628()
{
  sub_100002FBC();
  v0 = sub_100099DF4(&qword_1002DC038, &qword_100233568);
  sub_1000030B8(v0);
  sub_100003774();
  __chkstk_darwin(v1);
  v3 = &v9 - v2;
  v5 = *(v4 + 56);
  sub_1000E3FA8();
  sub_1000E3FA8();
  sub_1000DC368();
  v7 = v6;
  sub_1000E4004(&v3[v5], type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get);
  sub_1000E4004(v3, type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get);
  return v7 & 1;
}

uint64_t sub_1000DCB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173657269707865 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001002737F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4774657361746164 && a2 == 0xEE00444970756F72)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000DCDDC(char a1)
{
  result = 0x6F6C796150776172;
  switch(a1)
  {
    case 1:
      result = 0x4173657269707865;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4274736575716572;
      break;
    case 5:
      result = 0x6F43737574617473;
      break;
    case 6:
      result = 0x4774657361746164;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000DCECC()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v66 = type metadata accessor for Date();
  sub_100003724();
  v64 = v4;
  __chkstk_darwin(v5);
  sub_10000306C();
  v62 = v7 - v6;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v61 = v10 - v11;
  __chkstk_darwin(v12);
  v63 = &v57 - v13;
  sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v14);
  sub_10000308C();
  __chkstk_darwin(v15);
  v65 = &v57 - v18;
  v19 = v3[1];
  v20 = v3[2];
  v22 = v3[3];
  v21 = v3[4];
  v24 = v3[5];
  v23 = v3[6];
  v25 = v1[1];
  v26 = v1[2];
  v28 = v1[3];
  v27 = v1[4];
  v29 = v1[5];
  if (!v19)
  {
    v59 = v1[6];
    v60 = v23;
    v57 = v17;
    v58 = v16;
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_10:
    v31 = v20 == v26 && v22 == v28;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }

    v32 = v21 == v27 && v24 == v29;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100142BC8() & 1) == 0)
    {
      goto LABEL_35;
    }

    v33 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
    v34 = v33[5];
    v35 = *(v58 + 48);
    v36 = v65;
    sub_1000A9914(v3 + v34, v65);
    sub_1000A9914(v1 + v34, v36 + v35);
    v37 = v66;
    if (sub_100004DFC(v36, 1, v66) == 1)
    {
      sub_1000E5A2C();
      if (!v30)
      {
        goto LABEL_34;
      }

      sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
    }

    else
    {
      v38 = v63;
      sub_1000A9914(v36, v63);
      sub_1000E5A2C();
      if (v30)
      {
        goto LABEL_33;
      }

      v39 = v64;
      v40 = sub_1000E5A90();
      v41(v40);
      sub_100004A94();
      v44 = sub_1000DEECC(v42, v43, &protocol conformance descriptor for Date);
      v45 = sub_1000062BC(v44);
      v46 = *(v39 + 8);
      v46(v29, v37);
      v46(v38, v37);
      sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v47 = v33[6];
    v36 = v57;
    v48 = *(v58 + 48);
    sub_1000A9914(v3 + v47, v57);
    sub_1000A9914(v1 + v47, v36 + v48);
    if (sub_100004DFC(v36, 1, v37) == 1)
    {
      sub_1000E5A2C();
      if (!v30)
      {
        goto LABEL_34;
      }

      sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
LABEL_37:
      if ((static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)() & 1) != 0 && *(v3 + v33[9]) == *(v1 + v33[9]))
      {
        sub_100111138();
      }

      goto LABEL_35;
    }

    v38 = v61;
    sub_1000A9914(v36, v61);
    sub_1000E5A2C();
    if (!v30)
    {
      v49 = v64;
      v50 = sub_1000E5A90();
      v51(v50);
      sub_100004A94();
      v54 = sub_1000DEECC(v52, v53, &protocol conformance descriptor for Date);
      v55 = sub_1000062BC(v54);
      v56 = *(v49 + 8);
      v56(v29, v37);
      v56(v38, v37);
      sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

LABEL_33:
    (*(v64 + 8))(v38, v37);
LABEL_34:
    sub_100004E24(v36, &qword_1002DACF0, &qword_100232140);
    goto LABEL_35;
  }

  if (v25)
  {
    v59 = v1[6];
    v60 = v23;
    v57 = v17;
    v58 = v16;
    v30 = *v3 == *v1 && v19 == v25;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_35:
  sub_1000027F8();
}

void sub_1000DD3A0()
{
  sub_100004868();
  sub_10000508C();
  v1 = sub_100099DF4(&qword_1002DBFD0, &unk_100233540);
  sub_100003724();
  v3 = v2;
  sub_100003774();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_100002810();
  v7 = sub_1000E3B9C();
  sub_10000A484(&type metadata for TSDataSyncServerDatasetGroupResponse.CodingKeys, v8, v7);
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v19 = *v0;
  v20 = *(v0 + 1);
  v21 = v10;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v13 = sub_1000E3CA8();

  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
  }

  else
  {

    type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
    LOBYTE(v19) = 1;
    type metadata accessor for Date();
    sub_100004A94();
    sub_1000DEECC(v14, v15, &protocol conformance descriptor for Date);
    sub_100003170();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 2;
    sub_100003170();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 3;
    sub_100003170();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    sub_100003170();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 6;
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000E59FC();
    sub_1000DEECC(v16, v17, byte_1002367DC);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v3 + 8))(v6, v1);
  sub_10000A7AC();
  sub_100005074();
}

void sub_1000DD688()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v12 = sub_1000030B8(v11);
  __chkstk_darwin(v12);
  sub_10000308C();
  v33 = v13 - v14;
  __chkstk_darwin(v15);
  v17 = v32 - v16;
  v19 = v0[1];
  v18 = v0[2];
  v20 = v0[4];
  v32[2] = v0[3];
  v32[3] = v18;
  v21 = v0[6];
  v32[4] = v0[5];
  if (v19)
  {
    v32[1] = v20;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  sub_1001146DC(v3, v21);
  v22 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  sub_1000A9914(v0 + v22[5], v17);
  if (sub_100004DFC(v17, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v10, v17, v4);
    Hasher._combine(_:)(1u);
    sub_100004A94();
    v25 = sub_1000DEECC(v23, v24, &protocol conformance descriptor for Date);
    sub_1000E5B1C(v25);
    (*(v6 + 8))(v10, v4);
  }

  v26 = v33;
  sub_1000A9914(v1 + v22[6], v33);
  if (sub_100004DFC(v26, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v10, v26, v4);
    Hasher._combine(_:)(1u);
    sub_100004A94();
    v29 = sub_1000DEECC(v27, v28, &protocol conformance descriptor for Date);
    sub_1000E5B1C(v29);
    (*(v6 + 8))(v10, v4);
  }

  sub_100004A94();
  sub_1000DEECC(v30, v31, &protocol conformance descriptor for Date);
  sub_10000AE14();
  dispatch thunk of Hashable.hash(into:)();
  sub_10000AE14();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v22[9]));
  sub_1001113D4(v3);
  sub_1000027F8();
}

Swift::Int sub_1000DD9F4(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000DDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v81 = v23;
  v25 = v24;
  v73[1] = v26;
  v73[2] = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_10000307C();
  __chkstk_darwin(v27);
  sub_10000306C();
  v74 = v29 - v28;
  v80 = type metadata accessor for Date();
  sub_100003724();
  v78 = v30;
  __chkstk_darwin(v31);
  sub_10000308C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = v73 - v36;
  v38 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v39 = sub_1000030B8(v38);
  __chkstk_darwin(v39);
  sub_10000308C();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = v73 - v44;
  sub_100099DF4(&qword_1002DBFB0, &qword_100233538);
  sub_100003724();
  v75 = v46;
  v76 = v47;
  sub_100003774();
  __chkstk_darwin(v48);
  v50 = v73 - v49;
  v79 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  sub_10000307C();
  __chkstk_darwin(v51);
  sub_10000306C();
  v54 = v53 - v52;
  v82 = v25;
  v55 = sub_1000E5AA8();
  sub_100008B3C(v55, v56);
  sub_1000E3B9C();
  v77 = v50;
  v57 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v57)
  {
    sub_100004118(v82);
  }

  else
  {
    v58 = v45;
    v81 = v34;
    sub_1000E3BF0();
    v59 = v75;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v85;
    v61 = v84;
    *v54 = v83;
    *(v54 + 16) = v61;
    *(v54 + 32) = v60;
    *(v54 + 40) = v86;
    LOBYTE(v83) = 1;
    sub_100004A94();
    sub_1000DEECC(v62, v63, &protocol conformance descriptor for Date);
    v64 = v58;
    v65 = v80;
    sub_10000DB98();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v64, v54 + v79[5]);
    LOBYTE(v83) = 2;
    sub_10000DB98();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v42, v54 + v79[6]);
    LOBYTE(v83) = 3;
    sub_10000DB98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v54 + v79[7];
    v73[0] = *(v78 + 32);
    (v73[0])(v66, v37, v65);
    LOBYTE(v83) = 4;
    v67 = v81;
    sub_10000DB98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v73[0])(v54 + v79[8], v67, v65);
    LOBYTE(v83) = 5;
    v68 = KeyedDecodingContainer.decode(_:forKey:)();
    v69 = v79;
    *(v54 + v79[9]) = v68;
    LOBYTE(v83) = 6;
    sub_1000E59FC();
    sub_1000DEECC(v70, v71, byte_100236804);
    v72 = v74;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v76 + 8))(v77, v59);
    sub_1000E3C44(v72, v54 + v69[10]);
    sub_1000E3FA8();
    sub_100004118(v82);
    sub_1000E4004(v54, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
  }

  sub_100005074();
}

unint64_t sub_1000DE0EC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3738, v2);
  sub_100008C18();
  if (v1 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DE134(char a1)
{
  result = 0x5F74657361746164;
  switch(a1)
  {
    case 2:
      result = 0x6E79735F61746164;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x616D65686373;
      break;
    case 6:
      v3 = 0x6F6D5F736168;
      goto LABEL_9;
    case 7:
      result = 0x7465736572;
      break;
    case 8:
      result = 0x6365725F61746164;
      break;
    case 9:
      v3 = 0x5F726F727265;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DE29C()
{
  sub_100002FBC();
  sub_1000E5AE4(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000E5A80();
  v8 = v5 && v6 == v7;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v1 + 72);
  v12 = *(v0 + 72);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(v1 + 64) == *(v0 + 64) && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = *(v1 + 88);
  v15 = *(v0 + 88);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *(v1 + 80) == *(v0 + 80) && v14 == v15;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if ((*(v1 + 96) ^ *(v0 + 96)))
  {
    return 0;
  }

  v18 = *(v1 + 97);
  v19 = *(v0 + 97);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

LABEL_47:
    v20 = *(v1 + 104);
    v21 = *(v0 + 104);
    if (v20)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = sub_1001436A0(v20, v21);

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v23 = *(v0 + 112);
    if (*(v1 + 112))
    {
      if (!v23 || (sub_1001442CC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v23)
    {
      return 0;
    }

    v24 = *(v1 + 128);
    v25 = *(v0 + 128);
    if (v24)
    {
      if (!v25)
      {
        return 0;
      }

      v26 = *(v1 + 120) == *(v0 + 120) && v24 == v25;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v19 != 2 && ((v19 ^ v18) & 1) == 0)
  {
    goto LABEL_47;
  }

  return result;
}

void sub_1000DE484()
{
  sub_100002FE8();
  sub_1000048E8();
  sub_100099DF4(&qword_1002DBF58, &qword_100233518);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000E3658();
  sub_10000A484(&type metadata for TSDataSyncServerDataset.CodingKeys, v3, v2);
  sub_10000662C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003158(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003158(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003158(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003158(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000069A8(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000069A8(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DBF28, &qword_100233508);
    sub_1000E38C4();
    sub_10000A534();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DBF40, &qword_100233510);
    sub_1000E399C();
    sub_10000A534();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003158(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000AC3F8();
}

void sub_1000DE6A4()
{
  sub_1000E5B10();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 72))
  {
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 88))
  {
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 96) & 1);
  v2 = *(v0 + 97);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  if (*(v0 + 104))
  {
    Hasher._combine(_:)(1u);
    sub_100114A24();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v0 + 112);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    sub_100114998(v1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 128))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000DE808()
{
  sub_100005BE8();
  sub_1000DE6A4();
  return Hasher._finalize()();
}

void sub_1000DE840()
{
  sub_100004868();
  v3 = v2;
  v5 = v4;
  v37 = sub_100099DF4(&qword_1002DBF18, &qword_100233500);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  v9 = v3[3];
  sub_100008B3C(v3, v9);
  sub_1000E3658();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000E5A50();
    sub_100004118(v3);
    if (v7)
    {

      if ((v5 & 1) == 0)
      {
LABEL_10:
        if (v9)
        {
LABEL_11:

          if ((v0 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v0)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_10;
    }

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v28 = v5;
  LOBYTE(v39[0]) = 0;
  sub_100003B20();
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v11;
  sub_100007BD0(1);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v12;
  sub_100007BD0(2);
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v13;
  sub_100007BD0(3);
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v14;
  sub_100007BD0(4);
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v15;
  sub_100007BD0(5);
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v16;
  sub_100007BD0(6);
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100007BD0(7);
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100099DF4(&qword_1002DBF28, &qword_100233508);
  sub_1000E36AC();
  sub_100003FDC();
  sub_100003B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v39[0];
  sub_100099DF4(&qword_1002DBF40, &qword_100233510);
  LOBYTE(v38[0]) = 9;
  sub_1000E3784();
  sub_100003FDC();
  sub_100003B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v39[0];
  sub_100003B20();
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v20 = sub_10000B7A4();
  v21(v20, v37);
  v38[0] = v10;
  v38[1] = v36;
  v38[2] = v27;
  v38[3] = v35;
  v38[4] = v26;
  v38[5] = v34;
  v38[6] = v25;
  v38[7] = v33;
  v38[8] = v24;
  v38[9] = v32;
  v38[10] = v23;
  v38[11] = v31;
  LOBYTE(v38[12]) = v46 & 1;
  BYTE1(v38[12]) = v22;
  v38[13] = v30;
  v38[14] = v29;
  v38[15] = v17;
  v38[16] = v19;
  sub_1000E385C(v38, v39);
  sub_100004118(v3);
  v39[0] = v10;
  v39[1] = v36;
  v39[2] = v27;
  v39[3] = v35;
  v39[4] = v26;
  v39[5] = v34;
  v39[6] = v25;
  v39[7] = v33;
  v39[8] = v24;
  v39[9] = v32;
  v39[10] = v23;
  v39[11] = v31;
  v40 = v46 & 1;
  v41 = v22;
  v42 = v30;
  v43 = v29;
  v44 = v17;
  v45 = v19;
  sub_1000E3894(v39);
  memcpy(v28, v38, 0x88uLL);
LABEL_12:
  sub_100005074();
}

uint64_t sub_1000DEECC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000DEF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DCB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DEF5C@<X0>(_BYTE *a1@<X8>)
{
  result = _s12amsaccountsd10AvroSchemaO05FixedC0V11logicalTypeAC07LogicalF0OSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000DEF84(uint64_t a1)
{
  v2 = sub_1000E3B9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DEFC0(uint64_t a1)
{
  v2 = sub_1000E3B9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DF044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_1000DF0E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DE0EC();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF110()
{
  v1 = sub_10000B318();
  result = sub_1000DE134(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DE12C();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF188(uint64_t a1)
{
  v2 = sub_1000E3658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DF1C4(uint64_t a1)
{
  v2 = sub_1000E3658();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000DF200(void *a1@<X8>)
{
  sub_1000DE840();
  if (!v1)
  {
    memcpy(a1, __src, 0x88uLL);
  }
}

Swift::Int sub_1000DF26C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000DE6A4();
  return Hasher._finalize()();
}

unint64_t sub_1000DF2AC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3860, v2);
  sub_100008C18();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000DF2EC(char a1)
{
  result = 0x697A675F6F727661;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7761725F6E6F736ALL;
      break;
    case 3:
      result = 0x697A675F6E6F736ALL;
      break;
    case 4:
      result = 0x7461625F6E6F736ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DF3A0(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x745F64726F636572;
  }
}

unint64_t sub_1000DF404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DF2AC();
  *a1 = result;
  return result;
}

unint64_t sub_1000DF434()
{
  v1 = sub_10000B318();
  result = sub_1000DF2EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF568()
{
  v1 = sub_10000B318();
  result = sub_1000DF3A0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF5C8(uint64_t a1)
{
  v2 = sub_1000E4C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DF604(uint64_t a1)
{
  v2 = sub_1000E4C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DF654(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = 0xED00003436625F70;
  v8 = 0x697A675F6F727661;
  v12 = a1;
  v13 = 0x697A675F6F727661;
  v14 = 0xED00003436625F70;
  switch(v12)
  {
    case 1:
      v13 = 0xD000000000000013;
      v14 = 0x80000001002721F0;
      break;
    case 2:
      v14 = 0xE800000000000000;
      v13 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v13 = 0x697A675F6E6F736ALL;
      v14 = 0xED00003436625F70;
      break;
    case 4:
      v13 = 0x7461625F6E6F736ALL;
      v14 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  switch(a4)
  {
    case 1:
      v8 = 0xD000000000000013;
      v7 = 0x80000001002721F0;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v8 = 0x697A675F6E6F736ALL;
      break;
    case 4:
      v8 = 0x7461625F6E6F736ALL;
      v7 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  if (v13 == v8 && v14 == v7)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  sub_100010930();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000DF85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  a23 = v25;
  a24 = v26;
  v37 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100099DF4(&qword_1002DC110, &qword_100233FA0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v34);
  sub_100004880();
  sub_100008B3C(v33, v33[3]);
  sub_1000E4C68();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a14 = v31;
  a13 = 0;
  sub_1000E4D64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v24)
  {
    a12 = 1;
    sub_10000BED8(v29, v37, &a12);
  }

  v35 = sub_100008A98();
  v36(v35);
  sub_100005074();
}

uint64_t sub_1000DF9A8(uint64_t a1, char a2)
{
  sub_1000DF2EC(a2);
  String.hash(into:)();

  sub_1000E5AF8();

  return String.hash(into:)();
}

Swift::Int sub_1000DFA18(char a1)
{
  sub_100005BE8();
  sub_1000DF2EC(a1);
  String.hash(into:)();

  sub_1000E5AF8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000DFA90()
{
  sub_100002FE8();
  v2 = v1;
  sub_100099DF4(&qword_1002DC0E8, &qword_100233F90);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100004880();
  sub_100008B3C(v2, v2[3]);
  sub_1000E4C68();
  sub_100004180();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1000E4CBC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v4 = sub_100002980();
    v5(v4);
  }

  sub_100004118(v2);
  sub_1000AC3F8();
}

uint64_t sub_1000DFC1C(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x64695F666572;
  }
}

uint64_t sub_1000DFC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      sub_100010930();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_1000DFCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  a21 = v23;
  a22 = v24;
  v36 = v25;
  v37 = v26;
  v28 = v27;
  v30 = v29;
  sub_100099DF4(&qword_1002DC120, &qword_100233FA8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v31);
  sub_100004880();
  v32 = sub_1000E5AA8();
  sub_100008B3C(v32, v33);
  sub_1000E4D10();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  HIBYTE(a12) = 0;
  sub_10000BED8(v30, v28, &a12 + 1);
  if (!v22)
  {
    sub_10000355C();
    sub_10000BED8(v36, v37, &a12);
  }

  v34 = sub_100008A98();
  v35(v34);
  sub_100005074();
}

uint64_t sub_1000DFDFC(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  sub_1000E5AF8();

  return String.hash(into:)();
}

Swift::Int sub_1000DFE48(uint64_t a1)
{
  sub_100005BE8();
  String.hash(into:)();
  sub_1000E5AF8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000DFEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v24 = v23;
  sub_100099DF4(&qword_1002DC100, &qword_100233F98);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v25);
  sub_100004880();
  sub_100008B3C(v24, v24[3]);
  sub_1000E4D10();
  sub_100004180();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v26 = sub_100013DE8();
    v27(v26);
  }

  sub_100004118(v24);
  sub_100005074();
}

uint64_t sub_1000E0050(uint64_t a1)
{
  v2 = sub_1000E46F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000E008C(uint64_t a1)
{
  v2 = sub_1000E46F0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000E00E4(uint64_t a1)
{
  v2 = sub_1000E4EB4();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1000E0120(uint64_t a1)
{
  v2 = sub_1000E4EB4();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void sub_1000E0174(uint64_t a1@<X8>)
{
  sub_1000DFA90();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

Swift::Int sub_1000E01DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000DF2EC(v2);
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E0294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E02CC()
{
  v1 = sub_10000B318();
  result = sub_1000DFC1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000E02FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E032C(uint64_t a1)
{
  v2 = sub_1000E4D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E0368(uint64_t a1)
{
  v2 = sub_1000E4D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E040C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000DFDFC(v4, v2);
  return Hasher._finalize()();
}

void sub_1000E0484()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for String.Encoding();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v16 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    if (v6 == 2)
    {

      sub_10000F99C(v4, v2);
      goto LABEL_6;
    }

    Data.init(base64Encoded:options:)();
    if (v25 >> 60 == 15)
    {
      v26 = sub_1000B2EE8();
      sub_100007F60(&_s11amsd_ErrorsON_0, v26);
      *v27 = 1;
      *(v27 + 8) = 0;
      swift_willThrow();
      goto LABEL_27;
    }

    v28 = objc_opt_self();
    sub_1000E5AA8();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v28 decompressedDataWithGzippedData:isa];

    if (v30)
    {
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v32;
      v33 = sub_1000E5AA8();
      sub_10009A7A0(v33, v34);

      if (v6 >= 2u)
      {
        if (v6 != 3)
        {
          v44 = objc_opt_self();
          v45 = Data._bridgeToObjectiveC()().super.isa;
          v74[0] = 0;
          v46 = [v44 JSONObjectWithData:v45 options:0 error:v74];

          v20 = v74[0];
          if (v46)
          {
            v47 = v74[0];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100099DF4(&qword_1002DBEF8, &qword_1002334E8);
            if (sub_10000AD28())
            {
              v48 = sub_100013DE8();
              sub_10000D170(v48, v49);
              goto LABEL_27;
            }

LABEL_24:
            v51 = sub_1000E3604();
            v52 = sub_100007F60(&type metadata for TSDataSyncServerDatasetRecord.Errors, v51);
            sub_1000E5A64(v52, v53);
            goto LABEL_25;
          }

LABEL_23:
          v50 = v20;
          _convertNSErrorToError(_:)();

LABEL_25:
          swift_willThrow();
          v54 = sub_100013DE8();
LABEL_26:
          sub_10000D170(v54, v55);
          goto LABEL_27;
        }

LABEL_6:
        v17 = objc_opt_self();
        sub_100013DE8();
        v18 = Data._bridgeToObjectiveC()().super.isa;
        v74[0] = 0;
        v19 = [v17 JSONObjectWithData:v18 options:0 error:v74];

        v20 = v74[0];
        if (v19)
        {
          v21 = v74[0];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
          if (sub_10000AD28())
          {
            sub_100099DF4(&qword_1002DBF10, &qword_1002334F8);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_10022E400;
            *(v22 + 32) = v73;
            v23 = sub_100013DE8();
            sub_10000D170(v23, v24);
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (!v8)
      {
        v56 = sub_1000E3604();
        sub_100007F60(&type metadata for TSDataSyncServerDatasetRecord.Errors, v56);
        *v38 = 4;
        v39 = 3;
        goto LABEL_29;
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v36 = v35;
      (*(v11 + 8))(v15, v9);
      if (v36 >> 60 == 15)
      {
        v37 = sub_1000E3604();
        sub_100007F60(&type metadata for TSDataSyncServerDatasetRecord.Errors, v37);
        *v38 = 5;
        v39 = 4;
LABEL_29:
        *(v38 + 8) = v39;
        swift_willThrow();
        v54 = v31;
        v55 = v72;
        goto LABEL_26;
      }

      v57 = sub_1000E5B04();
      sub_1001A4E80(v57, v58, v31, v72);
      if (!v0)
      {
        v62 = sub_1000E09DC(v59);

        if (v62)
        {
          v63 = sub_100008A98();
          sub_10000D170(v63, v64);
          v65 = sub_1000E5B04();
          sub_10009A7A0(v65, v66);
          goto LABEL_27;
        }

        v67 = sub_1000E3604();
        v68 = sub_100007F60(&type metadata for TSDataSyncServerDatasetRecord.Errors, v67);
        sub_1000E5A64(v68, v69);
        swift_willThrow();
        v70 = sub_1000E5B04();
        sub_10009A7A0(v70, v71);
        v54 = sub_100008A98();
        goto LABEL_26;
      }

      v60 = sub_100008A98();
      sub_10000D170(v60, v61);
      v42 = sub_1000E5B04();
    }

    else
    {
      v40 = sub_1000B2EE8();
      sub_100007F60(&_s11amsd_ErrorsON_0, v40);
      *v41 = 2;
      *(v41 + 8) = 1;
      swift_willThrow();
      v42 = sub_1000E5AA8();
    }

    sub_10009A7A0(v42, v43);
  }

LABEL_27:
  sub_100005074();
}

unint64_t *sub_1000E09DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1001070F0(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100009F20(v4, v9);
      sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001070F0(v5 > 1, v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1000E0B04()
{
  sub_100004168();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[5];
  v8 = v2[1];
  v9 = v2[2];
  v11 = v2[3];
  v10 = v2[4];
  v12 = v2[5];
  if (v3)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    v13 = *v0 == *v2 && v3 == v8;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v8)
  {
    goto LABEL_21;
  }

  v14 = v4 == v9 && v6 == v11;
  if (v14 || (sub_1000E5AC0() & 1) != 0)
  {
    v15 = v5 == v10 && v7 == v12;
    if (v15 || (sub_10000AE14(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_100142BC8();
    }
  }

LABEL_21:
  sub_1000027F8();
}

void sub_1000E0BD0()
{
  sub_100002FE8();
  sub_1000048E8();
  sub_100099DF4(&qword_1002DC158, &qword_100233FC0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000E4C14();
  sub_10000A484(&type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v3, v2);
  v4 = *(v0 + 16);
  *&v7[56] = *v0;
  v8 = v4;
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  sub_1000E4F08(v0, v7);
  sub_1000E3CA8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v5 = sub_10000EF58();
  v6(v5);
  sub_1000AC3F8();
}

void sub_1000E0D18()
{
  sub_100004168();
  v2 = v1;
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74(v2);
  sub_1000E5B5C(v2);
  sub_1000027F8();

  sub_1001146DC(v3, v4);
}

Swift::Int sub_1000E0DB0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  sub_100005BE8();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74(v4);
  sub_1000E5B5C(v4);
  sub_1001146DC(v4, v2);
  return Hasher._finalize()();
}

void sub_1000E0E50()
{
  sub_100004868();
  sub_100004F60();
  sub_100099DF4(&qword_1002DC0D8, &qword_100233F88);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003B38();
  sub_100008B3C(v0, v0[3]);
  v4 = sub_1000E4C14();
  sub_1000082E0(&type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v5, v4);
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000E3BF0();
    sub_1000035A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_10000EDD8();
    v7(v6);
    sub_100004118(v0);
    *v2 = v8;
    *(v2 + 16) = v9;
    *(v2 + 32) = v10;
    *(v2 + 40) = v11;
  }

  sub_10000A7AC();
  sub_100005074();
}

void sub_1000E0F98()
{
  sub_100004168();
  sub_100002FBC();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v0[1];
  v7 = v0[2];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[5];
  if (v1[1])
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    sub_100002E44();
    v13 = v13 && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v6)
  {
LABEL_23:
    sub_1000027F8();
    return;
  }

  v14 = v2 == v7 && v4 == v9;
  if (!v14 && (sub_1000E5AC0() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v3 != v8 || v5 != v10)
  {
    sub_10000AE14();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_1000027F8();

  sub_100142BC8();
}

void sub_1000E1070()
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DC018, &qword_100233560);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000E3CFC();
  sub_10000A484(&type metadata for TSDataSyncServerDatasetGroupResponseBody.CodingKeys, v3, v2);
  sub_100003E88();
  sub_1000E3E7C();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_100099DF4(&qword_1002DC000, &qword_100233558);
    sub_1000E3ED0();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000AC3F8();
}

void sub_1000E11C4()
{
  sub_1000E5B10();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74(v1);
  sub_1000E5B5C(v1);
  v2 = *(v0 + 48);

  sub_1001146DC(v1, v2);
}

Swift::Int sub_1000E125C()
{
  sub_100005BE8();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74(v2);
  sub_1000E5B5C(v2);
  sub_1001146DC(v2, *(v0 + 48));
  return Hasher._finalize()();
}

void sub_1000E1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  v27 = v26;
  v28 = sub_100099DF4(&qword_1002DBFE8, &qword_100233550);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v29);
  sub_100003B38();
  sub_100008B3C(v25, v25[3]);
  sub_1000E3CFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100004118(v25);
  }

  else
  {
    sub_1000E3D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DC000, &qword_100233558);
    sub_1000E3DA4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = sub_10000B7A4();
    v31(v30, v28);

    sub_100004118(v25);

    *v27 = v32;
    v27[1] = v33;
    v27[2] = v34;
    v27[3] = v35;
    v27[4] = v36;
    v27[5] = v37;
    v27[6] = v32;
  }

  sub_100005074();
}

BOOL sub_1000E1550()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B39E8, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_1000E158C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v14 = v4 == v9 && v6 == v11;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = v5 == v10 && v7 == v12;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000E1668()
{
  sub_100002FE8();
  sub_100099DF4(&qword_1002DC140, &qword_100233FB8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100004880();
  sub_100002810();
  sub_1000E4DB8();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100003E88();
  sub_1000E4E60();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v1 = sub_100002980();
  v2(v1);
  sub_1000AC3F8();
}

uint64_t sub_1000E1774(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000E1818()
{
  v1 = *(v0 + 8);
  sub_100005BE8();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_10000AE14();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000E18B4()
{
  sub_100004868();
  sub_100004F60();
  sub_100099DF4(&qword_1002DC128, &qword_100233FB0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003B38();
  sub_100008B3C(v0, v0[3]);
  v4 = sub_1000E4DB8();
  sub_1000082E0(&type metadata for TSDataSyncServerDatasetGroupMeta.CodingKeys, v5, v4);
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000E4E0C();
    sub_1000035A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_10000EDD8();
    v7(v6);
    sub_100004118(v0);
    *v2 = v8;
    *(v2 + 16) = v9;
    *(v2 + 32) = v10;
    *(v2 + 40) = v11;
  }

  sub_10000A7AC();
  sub_100005074();
}

unint64_t sub_1000E19E8()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3A20, v2);
  sub_100008C18();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E1A28(char a1)
{
  if (!a1)
  {
    return 0x72656D75736E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000013;
}

uint64_t sub_1000E1A94()
{
  sub_100002FBC();
  v3 = v0[1];
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_100002E44();
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_1000E5A80();
  v9 = v6 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) == v0[4] && *(v1 + 40) == v0[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000E1B3C()
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DC1E8, &qword_1002346D0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000E577C();
  sub_10000A484(&type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v3, v2);
  sub_1000044E0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000AC3F8();
}

uint64_t sub_1000E1C70()
{
  sub_1000E5B10();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000E1CE0()
{
  sub_100005BE8();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000E1D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  sub_100004F60();
  v27 = sub_100099DF4(&qword_1002DC1D8, &qword_1002346C8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v28);
  sub_100003B38();
  sub_100008B3C(v24, v24[3]);
  v29 = sub_1000E577C();
  sub_1000082E0(&type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v30, v29);
  if (v25)
  {
    sub_100004118(v24);
  }

  else
  {
    sub_1000035A0();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v32;
    sub_10000355C();
    sub_1000035A0();
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v33;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = sub_10000B7A4();
    v37 = v36;
    v38(v35, v27);
    sub_100004118(v24);
    *v26 = v31;
    v26[1] = v41;
    v26[2] = v39;
    v26[3] = v40;
    v26[4] = v34;
    v26[5] = v37;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_1000E1F44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000100273790 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001002737B0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4465726F4D736168 && a2 == 0xEB00000000617461;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x726F727245736168 && a2 == 0xEF7364726F636552;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001002737D0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x5674657361746164 && a2 == 0xEE006E6F69737265)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1000E2230(char a1)
{
  result = 0x69746E6564657263;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7465736572;
      break;
    case 4:
      result = 0x4465726F4D736168;
      break;
    case 5:
      result = 0x726F727245736168;
      break;
    case 6:
      result = 0x73616D65686373;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x5674657361746164;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1000E2354()
{
  sub_100002FBC();
  v3 = *(v0 + 8);
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_100002E44();
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_1000E5A80();
  v9 = v6 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 40);
  v11 = *(v0 + 40);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v1 + 32) == *(v0 + 32) && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((*(v1 + 48) ^ *(v0 + 48)))
  {
    return 0;
  }

  if ((*(v1 + 49) ^ *(v0 + 49)))
  {
    return 0;
  }

  if ((*(v1 + 50) ^ *(v0 + 50)))
  {
    return 0;
  }

  sub_10011209C(*(v1 + 56), *(v0 + 56));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 72);
  v15 = *(v0 + 72);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(v1 + 64) == *(v0 + 64) && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = *(v1 + 88);
  v18 = *(v0 + 88);
  if (v17)
  {
    if (v18)
    {
      v19 = *(v1 + 80) == *(v0 + 80) && v17 == v18;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

void sub_1000E24AC()
{
  sub_100002FE8();
  sub_1000048E8();
  sub_100099DF4(&qword_1002DBFA0, &qword_100233530);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000E3A74();
  sub_10000A484(&type metadata for TSDataSyncServerDatasetModel.CodingKeys, v3, v2);
  sub_10000662C();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003158(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000069A8(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000069A8(4);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000069A8(5);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    sub_1000E3B30(&qword_1002DBFA8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_10000A534();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100003158(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003158(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000AC3F8();
}

Swift::Int sub_1000E27B4()
{
  sub_100005BE8();
  sub_1000E269C(v1);
  return Hasher._finalize()();
}

void sub_1000E27EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  v26 = v25;
  v28 = v27;
  sub_100099DF4(&qword_1002DBF80, &qword_100233520);
  sub_100003724();
  v30 = v29;
  sub_100003774();
  __chkstk_darwin(v31);
  sub_100008B3C(v26, v26[3]);
  sub_1000E3A74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_10000A810();
    sub_100004118(v26);
    if (v28)
    {

      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v30)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v55[0]) = 0;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v33;
    sub_10000386C(1);
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v35;
    sub_10000386C(2);
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v36;
    sub_10000386C(3);
    v64 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000386C(4);
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000386C(5);
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    LOBYTE(v54[0]) = 6;
    sub_1000E3B30(&qword_1002DBF98, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100003FDC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = v32;
    v47 = v55[0];
    sub_10000386C(7);
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v38;
    v43 = v37;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v40;
    v64 &= 1u;
    v41 = sub_1000082D0();
    v42(v41);
    v54[0] = v46;
    v54[1] = v34;
    v54[2] = v51;
    v54[3] = v53;
    v54[4] = v50;
    v54[5] = v52;
    LOBYTE(v54[6]) = v64;
    BYTE1(v54[6]) = v49 & 1;
    BYTE2(v54[6]) = v48 & 1;
    v54[7] = v47;
    v54[8] = v43;
    v54[9] = v39;
    v54[10] = v45;
    v54[11] = v44;
    sub_1000E3AC8(v54, v55);
    sub_100004118(v26);
    v55[0] = v46;
    v55[1] = v34;
    v55[2] = v51;
    v55[3] = v53;
    v55[4] = v50;
    v55[5] = v52;
    v56 = v64;
    v57 = v49 & 1;
    v58 = v48 & 1;
    v59 = v47;
    v60 = v43;
    v61 = v39;
    v62 = v45;
    v63 = v44;
    sub_1000E3B00(v55);
    memcpy(v28, v54, 0x60uLL);
  }

LABEL_9:
  sub_100005074();
}

uint64_t sub_1000E2D30(uint64_t a1)
{
  v2 = sub_1000E4C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E2D6C(uint64_t a1)
{
  v2 = sub_1000E4C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E2DA8@<D0>(uint64_t a1@<X8>)
{
  sub_1000E0E50();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1000E2E48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2EB0(uint64_t a1)
{
  v2 = sub_1000E3CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E2EEC(uint64_t a1)
{
  v2 = sub_1000E3CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E2F28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1000E1304(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

Swift::Int sub_1000E2F98(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000E11C4();
  return Hasher._finalize()();
}

unint64_t sub_1000E2FDC()
{
  result = qword_1002DBED8;
  if (!qword_1002DBED8)
  {
    result = swift_getWitnessTable(asc_1002331F8, &type metadata for TSDataSyncServerDatasetGroupResponseBody, v0, v1);
    atomic_store(result, &qword_1002DBED8);
  }

  return result;
}

BOOL sub_1000E3078@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000E1550();
  *a1 = result;
  return result;
}

BOOL sub_1000E30AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000E1550();
  *a1 = result;
  return result;
}

uint64_t sub_1000E30D8(uint64_t a1)
{
  v2 = sub_1000E4DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3114(uint64_t a1)
{
  v2 = sub_1000E4DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E3150@<D0>(_OWORD *a1@<X8>)
{
  sub_1000E18B4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1000E31DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E19E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000E320C()
{
  v1 = sub_10000B318();
  result = sub_1000E1A28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000E323C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E19E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000E3270(uint64_t a1)
{
  v2 = sub_1000E577C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E32AC(uint64_t a1)
{
  v2 = sub_1000E577C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E334C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000E1C70();
  return Hasher._finalize()();
}

Swift::Int sub_1000E338C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000E33E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E1F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E3408@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E2228();
  *a1 = result;
  return result;
}

uint64_t sub_1000E3430(uint64_t a1)
{
  v2 = sub_1000E3A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E346C(uint64_t a1)
{
  v2 = sub_1000E3A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E34B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000E269C(v2);
  return Hasher._finalize()();
}

void sub_1000E34EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1000E27EC(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD1(v11[1]), SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x60uLL);
  }
}

unint64_t sub_1000E3558()
{
  result = qword_1002DBEE8;
  if (!qword_1002DBEE8)
  {
    result = swift_getWitnessTable(byte_100233378, &type metadata for TSDataSyncServerDatasetModel, v0, v1);
    atomic_store(result, &qword_1002DBEE8);
  }

  return result;
}

unint64_t sub_1000E35B0()
{
  result = qword_1002DBEF0;
  if (!qword_1002DBEF0)
  {
    result = swift_getWitnessTable("Ѽ\a", &type metadata for TSDataSyncServerDataset, v0, v1);
    atomic_store(result, &qword_1002DBEF0);
  }

  return result;
}

unint64_t sub_1000E3604()
{
  result = qword_1002DBF00;
  if (!qword_1002DBF00)
  {
    result = swift_getWitnessTable(byte_100233F20, &type metadata for TSDataSyncServerDatasetRecord.Errors, v0, v1);
    atomic_store(result, &qword_1002DBF00);
  }

  return result;
}

unint64_t sub_1000E3658()
{
  result = qword_1002DBF20;
  if (!qword_1002DBF20)
  {
    result = swift_getWitnessTable(aQ_24, &type metadata for TSDataSyncServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DBF20);
  }

  return result;
}

unint64_t sub_1000E36AC()
{
  result = qword_1002DBF30;
  if (!qword_1002DBF30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DBF28, &qword_100233508);
    v4[0] = sub_1000E3730();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DBF30);
  }

  return result;
}

unint64_t sub_1000E3730()
{
  result = qword_1002DBF38;
  if (!qword_1002DBF38)
  {
    result = swift_getWitnessTable(byte_100233EA8, &type metadata for TSDataSyncServerDatasetRecord, v0, v1);
    atomic_store(result, &qword_1002DBF38);
  }

  return result;
}

unint64_t sub_1000E3784()
{
  result = qword_1002DBF48;
  if (!qword_1002DBF48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DBF40, &qword_100233510);
    v4[0] = sub_1000E3808();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DBF48);
  }

  return result;
}

unint64_t sub_1000E3808()
{
  result = qword_1002DBF50;
  if (!qword_1002DBF50)
  {
    result = swift_getWitnessTable(asc_100233E80, &type metadata for TSDataSyncServerDatasetErrorRecord, v0, v1);
    atomic_store(result, &qword_1002DBF50);
  }

  return result;
}

unint64_t sub_1000E38C4()
{
  result = qword_1002DBF60;
  if (!qword_1002DBF60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DBF28, &qword_100233508);
    v4[0] = sub_1000E3948();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DBF60);
  }

  return result;
}

unint64_t sub_1000E3948()
{
  result = qword_1002DBF68;
  if (!qword_1002DBF68)
  {
    result = swift_getWitnessTable(aA_25, &type metadata for TSDataSyncServerDatasetRecord, v0, v1);
    atomic_store(result, &qword_1002DBF68);
  }

  return result;
}

unint64_t sub_1000E399C()
{
  result = qword_1002DBF70;
  if (!qword_1002DBF70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DBF40, &qword_100233510);
    v4[0] = sub_1000E3A20();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DBF70);
  }

  return result;
}

unint64_t sub_1000E3A20()
{
  result = qword_1002DBF78;
  if (!qword_1002DBF78)
  {
    result = swift_getWitnessTable(aI_21, &type metadata for TSDataSyncServerDatasetErrorRecord, v0, v1);
    atomic_store(result, &qword_1002DBF78);
  }

  return result;
}

unint64_t sub_1000E3A74()
{
  result = qword_1002DBF88;
  if (!qword_1002DBF88)
  {
    result = swift_getWitnessTable(aA_26, &type metadata for TSDataSyncServerDatasetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DBF88);
  }

  return result;
}

uint64_t sub_1000E3B30(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(&qword_1002DBF90, &qword_100233528);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E3B9C()
{
  result = qword_1002DBFB8;
  if (!qword_1002DBFB8)
  {
    result = swift_getWitnessTable(byte_100233D90, &type metadata for TSDataSyncServerDatasetGroupResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DBFB8);
  }

  return result;
}

unint64_t sub_1000E3BF0()
{
  result = qword_1002DBFC0;
  if (!qword_1002DBFC0)
  {
    result = swift_getWitnessTable(asc_100233288, &type metadata for TSDataSyncServerDatasetGroupResponseBody, v0, v1);
    atomic_store(result, &qword_1002DBFC0);
  }

  return result;
}

uint64_t sub_1000E3C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E3CA8()
{
  result = qword_1002DBFD8;
  if (!qword_1002DBFD8)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for TSDataSyncServerDatasetGroupResponseBody, v0, v1);
    atomic_store(result, &qword_1002DBFD8);
  }

  return result;
}

unint64_t sub_1000E3CFC()
{
  result = qword_1002DBFF0;
  if (!qword_1002DBFF0)
  {
    result = swift_getWitnessTable(byte_100233D40, &type metadata for TSDataSyncServerDatasetGroupResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DBFF0);
  }

  return result;
}

unint64_t sub_1000E3D50()
{
  result = qword_1002DBFF8;
  if (!qword_1002DBFF8)
  {
    result = swift_getWitnessTable(byte_100233D18, &type metadata for TSDataSyncServerDatasetGroupMeta, v0, v1);
    atomic_store(result, &qword_1002DBFF8);
  }

  return result;
}

unint64_t sub_1000E3DA4()
{
  result = qword_1002DC008;
  if (!qword_1002DC008)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DC000, &qword_100233558);
    v4[0] = sub_1000E3E28();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DC008);
  }

  return result;
}

unint64_t sub_1000E3E28()
{
  result = qword_1002DC010;
  if (!qword_1002DC010)
  {
    result = swift_getWitnessTable(byte_1002334C0, &type metadata for TSDataSyncServerDataset, v0, v1);
    atomic_store(result, &qword_1002DC010);
  }

  return result;
}

unint64_t sub_1000E3E7C()
{
  result = qword_1002DC020;
  if (!qword_1002DC020)
  {
    result = swift_getWitnessTable(byte_100233CF0, &type metadata for TSDataSyncServerDatasetGroupMeta, v0, v1);
    atomic_store(result, &qword_1002DC020);
  }

  return result;
}

unint64_t sub_1000E3ED0()
{
  result = qword_1002DC028;
  if (!qword_1002DC028)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DC000, &qword_100233558);
    v4[0] = sub_1000E3F54();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DC028);
  }

  return result;
}

unint64_t sub_1000E3F54()
{
  result = qword_1002DC030;
  if (!qword_1002DC030)
  {
    result = swift_getWitnessTable(byte_100233498, &type metadata for TSDataSyncServerDataset, v0, v1);
    atomic_store(result, &qword_1002DC030);
  }

  return result;
}

uint64_t sub_1000E3FA8()
{
  sub_100002FBC();
  v2(0);
  sub_10000307C();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000E4004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetGroupResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetGroupResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDataset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDataset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TSDataSyncServerDatasetRecord.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetRecord.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TSDataSyncServerDatasetRecord.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E44C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E4508(uint64_t result, int a2, int a3)
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

      return sub_1000E5AB4(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_1000E5AB4(result, a2);
    }
  }

  return result;
}

unint64_t sub_1000E4590()
{
  result = qword_1002DC040;
  if (!qword_1002DC040)
  {
    result = swift_getWitnessTable(byte_1002336F0, &type metadata for TSDataSyncServerDatasetRecord, v0, v1);
    atomic_store(result, &qword_1002DC040);
  }

  return result;
}

unint64_t sub_1000E45E8()
{
  result = qword_1002DC048;
  if (!qword_1002DC048)
  {
    result = swift_getWitnessTable(byte_100233758, &type metadata for TSDataSyncServerDatasetGroupMeta, v0, v1);
    atomic_store(result, &qword_1002DC048);
  }

  return result;
}

unint64_t sub_1000E4640()
{
  result = qword_1002DC050;
  if (!qword_1002DC050)
  {
    result = swift_getWitnessTable(aA_27, &type metadata for TSDataSyncServerDatasetErrorRecord, v0, v1);
    atomic_store(result, &qword_1002DC050);
  }

  return result;
}

unint64_t sub_1000E4698()
{
  result = qword_1002DC058;
  if (!qword_1002DC058)
  {
    result = swift_getWitnessTable("ٸ\a", &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper, v0, v1);
    atomic_store(result, &qword_1002DC058);
  }

  return result;
}

unint64_t sub_1000E46F0()
{
  result = qword_1002DC060;
  if (!qword_1002DC060)
  {
    result = swift_getWitnessTable(byte_100233928, &type metadata for TSDataSyncServerDatasetRecord.Errors, v0, v1);
    atomic_store(result, &qword_1002DC060);
  }

  return result;
}

unint64_t sub_1000E4748()
{
  result = qword_1002DC068;
  if (!qword_1002DC068)
  {
    result = swift_getWitnessTable(byte_1002338E0, &type metadata for TSDataSyncServerDatasetRecord.Errors, v0, v1);
    atomic_store(result, &qword_1002DC068);
  }

  return result;
}

unint64_t sub_1000E47A0()
{
  result = qword_1002DC070;
  if (!qword_1002DC070)
  {
    result = swift_getWitnessTable(aI_22, &type metadata for TSDataSyncServerDatasetRecord.Errors, v0, v1);
    atomic_store(result, &qword_1002DC070);
  }

  return result;
}

unint64_t sub_1000E47F8()
{
  result = qword_1002DC078;
  if (!qword_1002DC078)
  {
    result = swift_getWitnessTable(byte_100233A68, &type metadata for TSDataSyncServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC078);
  }

  return result;
}

unint64_t sub_1000E4850()
{
  result = qword_1002DC080;
  if (!qword_1002DC080)
  {
    result = swift_getWitnessTable(byte_100233B20, &type metadata for TSDataSyncServerDatasetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC080);
  }

  return result;
}

unint64_t sub_1000E48A8()
{
  result = qword_1002DC088;
  if (!qword_1002DC088)
  {
    result = swift_getWitnessTable(asc_100233BD8, &type metadata for TSDataSyncServerDatasetGroupResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC088);
  }

  return result;
}

unint64_t sub_1000E4900()
{
  result = qword_1002DC090;
  if (!qword_1002DC090)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for TSDataSyncServerDatasetGroupResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC090);
  }

  return result;
}

unint64_t sub_1000E4958()
{
  result = qword_1002DC098;
  if (!qword_1002DC098)
  {
    result = swift_getWitnessTable("ѵ\a", &type metadata for TSDataSyncServerDatasetGroupResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC098);
  }

  return result;
}

unint64_t sub_1000E49B0()
{
  result = qword_1002DC0A0;
  if (!qword_1002DC0A0)
  {
    result = swift_getWitnessTable(byte_100233C28, &type metadata for TSDataSyncServerDatasetGroupResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0A0);
  }

  return result;
}

unint64_t sub_1000E4A08()
{
  result = qword_1002DC0A8;
  if (!qword_1002DC0A8)
  {
    result = swift_getWitnessTable(byte_100233B48, &type metadata for TSDataSyncServerDatasetGroupResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0A8);
  }

  return result;
}

unint64_t sub_1000E4A60()
{
  result = qword_1002DC0B0;
  if (!qword_1002DC0B0)
  {
    result = swift_getWitnessTable(aQ_26, &type metadata for TSDataSyncServerDatasetGroupResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0B0);
  }

  return result;
}

unint64_t sub_1000E4AB8()
{
  result = qword_1002DC0B8;
  if (!qword_1002DC0B8)
  {
    result = swift_getWitnessTable(aA_28, &type metadata for TSDataSyncServerDatasetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0B8);
  }

  return result;
}

unint64_t sub_1000E4B10()
{
  result = qword_1002DC0C0;
  if (!qword_1002DC0C0)
  {
    result = swift_getWitnessTable(asc_100233AB8, &type metadata for TSDataSyncServerDatasetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0C0);
  }

  return result;
}

unint64_t sub_1000E4B68()
{
  result = qword_1002DC0C8;
  if (!qword_1002DC0C8)
  {
    result = swift_getWitnessTable(a1_16, &type metadata for TSDataSyncServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0C8);
  }

  return result;
}

unint64_t sub_1000E4BC0()
{
  result = qword_1002DC0D0;
  if (!qword_1002DC0D0)
  {
    result = swift_getWitnessTable(byte_1002339C8, &type metadata for TSDataSyncServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0D0);
  }

  return result;
}

unint64_t sub_1000E4C14()
{
  result = qword_1002DC0E0;
  if (!qword_1002DC0E0)
  {
    result = swift_getWitnessTable(byte_100234674, &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0E0);
  }

  return result;
}

unint64_t sub_1000E4C68()
{
  result = qword_1002DC0F0;
  if (!qword_1002DC0F0)
  {
    result = swift_getWitnessTable(byte_100234624, &type metadata for TSDataSyncServerDatasetRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC0F0);
  }

  return result;
}

unint64_t sub_1000E4CBC()
{
  result = qword_1002DC0F8;
  if (!qword_1002DC0F8)
  {
    result = swift_getWitnessTable(byte_1002345FC, &type metadata for TSDataSyncServerDatasetRecordType, v0, v1);
    atomic_store(result, &qword_1002DC0F8);
  }

  return result;
}

unint64_t sub_1000E4D10()
{
  result = qword_1002DC108;
  if (!qword_1002DC108)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for TSDataSyncServerDatasetErrorRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC108);
  }

  return result;
}

unint64_t sub_1000E4D64()
{
  result = qword_1002DC118;
  if (!qword_1002DC118)
  {
    result = swift_getWitnessTable(byte_100234584, &type metadata for TSDataSyncServerDatasetRecordType, v0, v1);
    atomic_store(result, &qword_1002DC118);
  }

  return result;
}

unint64_t sub_1000E4DB8()
{
  result = qword_1002DC130;
  if (!qword_1002DC130)
  {
    result = swift_getWitnessTable(byte_100234534, &type metadata for TSDataSyncServerDatasetGroupMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC130);
  }

  return result;
}

unint64_t sub_1000E4E0C()
{
  result = qword_1002DC138;
  if (!qword_1002DC138)
  {
    result = swift_getWitnessTable(byte_10023450C, &type metadata for TSDataSyncServerDatasetGroupCommonAll, v0, v1);
    atomic_store(result, &qword_1002DC138);
  }

  return result;
}

unint64_t sub_1000E4E60()
{
  result = qword_1002DC148;
  if (!qword_1002DC148)
  {
    result = swift_getWitnessTable(byte_1002344E4, &type metadata for TSDataSyncServerDatasetGroupCommonAll, v0, v1);
    atomic_store(result, &qword_1002DC148);
  }

  return result;
}

unint64_t sub_1000E4EB4()
{
  result = qword_1002DC150;
  if (!qword_1002DC150)
  {
    result = swift_getWitnessTable("ѹ\a", &type metadata for TSDataSyncServerDatasetRecord.Errors, v0, v1);
    atomic_store(result, &qword_1002DC150);
  }

  return result;
}

_BYTE *sub_1000E4F60(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000E503C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000E50E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E5128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return sub_1000E5AB4(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_1000E5AB4(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E525C()
{
  result = qword_1002DC160;
  if (!qword_1002DC160)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for TSDataSyncServerDatasetRecordType, v0, v1);
    atomic_store(result, &qword_1002DC160);
  }

  return result;
}

unint64_t sub_1000E52B4()
{
  result = qword_1002DC168;
  if (!qword_1002DC168)
  {
    result = swift_getWitnessTable(asc_1002340F4, &type metadata for TSDataSyncServerDatasetGroupCommonAll, v0, v1);
    atomic_store(result, &qword_1002DC168);
  }

  return result;
}

unint64_t sub_1000E530C()
{
  result = qword_1002DC170;
  if (!qword_1002DC170)
  {
    result = swift_getWitnessTable(byte_1002341EC, &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC170);
  }

  return result;
}

unint64_t sub_1000E5364()
{
  result = qword_1002DC178;
  if (!qword_1002DC178)
  {
    result = swift_getWitnessTable(asc_1002342DC, &type metadata for TSDataSyncServerDatasetRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC178);
  }

  return result;
}

unint64_t sub_1000E53BC()
{
  result = qword_1002DC180;
  if (!qword_1002DC180)
  {
    result = swift_getWitnessTable(a5_5, &type metadata for TSDataSyncServerDatasetErrorRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC180);
  }

  return result;
}

unint64_t sub_1000E5414()
{
  result = qword_1002DC188;
  if (!qword_1002DC188)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for TSDataSyncServerDatasetGroupMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC188);
  }

  return result;
}

unint64_t sub_1000E546C()
{
  result = qword_1002DC190;
  if (!qword_1002DC190)
  {
    result = swift_getWitnessTable("ݭ\a", &type metadata for TSDataSyncServerDatasetGroupMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC190);
  }

  return result;
}

unint64_t sub_1000E54C4()
{
  result = qword_1002DC198;
  if (!qword_1002DC198)
  {
    result = swift_getWitnessTable("ŭ\a", &type metadata for TSDataSyncServerDatasetGroupMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC198);
  }

  return result;
}

unint64_t sub_1000E551C()
{
  result = qword_1002DC1A0;
  if (!qword_1002DC1A0)
  {
    result = swift_getWitnessTable("ͮ\a", &type metadata for TSDataSyncServerDatasetErrorRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1A0);
  }

  return result;
}

unint64_t sub_1000E5574()
{
  result = qword_1002DC1A8;
  if (!qword_1002DC1A8)
  {
    result = swift_getWitnessTable(byte_10023432C, &type metadata for TSDataSyncServerDatasetErrorRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1A8);
  }

  return result;
}

unint64_t sub_1000E55CC()
{
  result = qword_1002DC1B0;
  if (!qword_1002DC1B0)
  {
    result = swift_getWitnessTable(byte_100234214, &type metadata for TSDataSyncServerDatasetRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1B0);
  }

  return result;
}

unint64_t sub_1000E5624()
{
  result = qword_1002DC1B8;
  if (!qword_1002DC1B8)
  {
    result = swift_getWitnessTable(byte_10023423C, &type metadata for TSDataSyncServerDatasetRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1B8);
  }

  return result;
}

unint64_t sub_1000E567C()
{
  result = qword_1002DC1C0;
  if (!qword_1002DC1C0)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1C0);
  }

  return result;
}

unint64_t sub_1000E56D4()
{
  result = qword_1002DC1C8;
  if (!qword_1002DC1C8)
  {
    result = swift_getWitnessTable(asc_100234184, &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1C8);
  }

  return result;
}

unint64_t sub_1000E5728()
{
  result = qword_1002DC1D0;
  if (!qword_1002DC1D0)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for TSDataSyncServerDatasetRecordType, v0, v1);
    atomic_store(result, &qword_1002DC1D0);
  }

  return result;
}

unint64_t sub_1000E577C()
{
  result = qword_1002DC1E0;
  if (!qword_1002DC1E0)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetGroupCommonAll.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E58B0()
{
  result = qword_1002DC1F0;
  if (!qword_1002DC1F0)
  {
    result = swift_getWitnessTable(aA_29, &type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1F0);
  }

  return result;
}

unint64_t sub_1000E5908()
{
  result = qword_1002DC1F8;
  if (!qword_1002DC1F8)
  {
    result = swift_getWitnessTable(byte_1002346D8, &type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC1F8);
  }

  return result;
}

unint64_t sub_1000E5960()
{
  result = qword_1002DC200;
  if (!qword_1002DC200)
  {
    result = swift_getWitnessTable(byte_100234700, &type metadata for TSDataSyncServerDatasetGroupCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC200);
  }

  return result;
}

uint64_t sub_1000E5AC0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E5B1C(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000E5B3C()
{

  return String.hash(into:)();
}

uint64_t sub_1000E5B5C(uint64_t a1)
{

  return String.hash(into:)();
}

uint64_t sub_1000E5B74(uint64_t a1)
{

  return String.hash(into:)();
}

void sub_1000E5B8C()
{
  sub_100002A08();
  v333 = v0;
  v301 = v3;
  v5 = v4;
  v7 = v6;
  v278 = v8;
  v310 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  sub_100003724();
  v287 = v9;
  __chkstk_darwin(v10);
  sub_1000037D4();
  v295 = v11;
  sub_100005238();
  __chkstk_darwin(v12);
  sub_10000D478();
  v281 = v13;
  v14 = sub_100099DF4(&qword_1002DC228, &qword_100234848);
  v15 = sub_1000030B8(v14);
  __chkstk_darwin(v15);
  v314 = &v278 - v16;
  sub_100013FAC();
  v322 = type metadata accessor for TimeZone();
  sub_100003724();
  v341 = v17;
  __chkstk_darwin(v18);
  sub_1000037D4();
  v321 = v19;
  sub_100005238();
  __chkstk_darwin(v20);
  sub_10000D478();
  v292 = v21;
  v22 = sub_100013FAC();
  type metadata accessor for TSDataSyncCalculatedEvent(v22);
  sub_100003724();
  v331 = v24;
  v332 = v23;
  __chkstk_darwin(v23);
  sub_1000037D4();
  v320 = v25;
  sub_100005238();
  __chkstk_darwin(v26);
  sub_100002DD0();
  v319 = v27;
  sub_100005238();
  __chkstk_darwin(v28);
  sub_100002DD0();
  v340 = v29;
  sub_100005238();
  __chkstk_darwin(v30);
  sub_10000D478();
  v329 = v31;
  v32 = sub_100013FAC();
  v327 = type metadata accessor for TSDataSyncTriggerEvent(v32);
  sub_100003724();
  v311 = v33;
  __chkstk_darwin(v34);
  sub_1000037D4();
  v300 = v35;
  sub_100005238();
  __chkstk_darwin(v36);
  sub_10000D478();
  v328 = v37;
  v38 = sub_100099DF4(&qword_1002DBC18, &qword_100232F68);
  v39 = sub_1000030B8(v38);
  __chkstk_darwin(v39);
  sub_1000037D4();
  v283 = v40;
  sub_100005238();
  __chkstk_darwin(v41);
  sub_100002DD0();
  v296 = v42;
  sub_100005238();
  __chkstk_darwin(v43);
  sub_100002DD0();
  v286 = v44;
  sub_100005238();
  __chkstk_darwin(v45);
  sub_100002DD0();
  v303 = v46;
  sub_100005238();
  __chkstk_darwin(v47);
  sub_10000D478();
  v308 = v48;
  v49 = sub_100013FAC();
  v302 = type metadata accessor for TSDataSyncDatasetScheduleInput(v49);
  sub_100003724();
  v294 = v50;
  __chkstk_darwin(v51);
  sub_1000037D4();
  v317 = v52;
  sub_100005238();
  __chkstk_darwin(v53);
  sub_10000D478();
  v293 = v54;
  v55 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v56 = sub_1000030B8(v55);
  __chkstk_darwin(v56);
  sub_1000037D4();
  v299 = v57;
  sub_100005238();
  __chkstk_darwin(v58);
  sub_10000D478();
  v315 = v59;
  v60 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v61 = sub_1000030B8(v60);
  __chkstk_darwin(v61);
  sub_1000037D4();
  v285 = v62;
  sub_100005238();
  __chkstk_darwin(v63);
  sub_100002DD0();
  v298 = v64;
  sub_100005238();
  __chkstk_darwin(v65);
  v67 = &v278 - v66;
  v68 = type metadata accessor for Date();
  sub_100003724();
  v70 = v69;
  __chkstk_darwin(v71);
  sub_1000037D4();
  v318 = v72;
  sub_100005238();
  __chkstk_darwin(v73);
  sub_100002DD0();
  v323 = v74;
  sub_100005238();
  __chkstk_darwin(v75);
  sub_100002DD0();
  v326 = v76;
  sub_100005238();
  __chkstk_darwin(v77);
  sub_1000ED438();
  __chkstk_darwin(v78);
  sub_100002DD0();
  v282 = v79;
  sub_100005238();
  __chkstk_darwin(v80);
  sub_100002DD0();
  v284 = v81;
  sub_100005238();
  __chkstk_darwin(v82);
  v83 = sub_100002878();
  v313 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(v83);
  v84 = v313[13];
  v316 = v7;
  sub_1000D31EC(v7 + v84, v67, &qword_1002DA970, &qword_1002318B0);
  v85 = sub_10000A218();
  sub_10000B3A0(v85, v86, v68);
  v324 = v68;
  if (v206)
  {
    sub_100004E24(v67, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    (*(v70 + 32))(v1, v67, v68);
    Date.timeIntervalSince(_:)();
    v88 = v87;
    (*(v70 + 8))(v1, v68);
    if (v88 <= v5)
    {
      type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
      sub_100007B78();
      sub_100002728(v253, v254, v255, v256);
LABEL_91:
      sub_1000048F8();
      return;
    }
  }

  v279 = v2;
  v280 = sub_1000D6484();
  v89 = Dictionary.init(dictionaryLiteral:)();
  v90 = *(v316 + v313[5]) + 64;
  sub_1000069C0();
  v93 = v92 & v91;
  v95 = (v94 + 63) >> 6;
  v291 = (v70 + 32);
  v334 = (v70 + 8);
  v307 = (v341 + 1);
  v288 = (v341 + 4);
  v330 = (v70 + 16);
  v297 = v96;

  v97 = 0;
  v98 = v321;
  v99 = v322;
  v100 = v315;
  v289 = v90;
  v290 = v95;
  if (!v93)
  {
    goto LABEL_7;
  }

  while (2)
  {
    v306 = v97;
    v101 = v97;
LABEL_11:
    v305 = (v93 - 1) & v93;
    v102 = (*(v297 + 48) + 16 * (__clz(__rbit64(v93)) | (v101 << 6)));
    v104 = *v102;
    v103 = v102[1];
    sub_1000ED364();
    sub_1000ED254();
    v105 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    v106 = v299;
    *v299 = v104;
    *(v106 + 8) = v103;
    sub_10000AACC();
    sub_1000ED2FC();
    sub_10000B7B0();
    sub_100002728(v107, v108, v109, v105);

    v98 = v321;
    v99 = v322;
    v100 = v315;
LABEL_12:
    v309 = v89;
    sub_1000D3234(v106, v100, &qword_1002DC230, &qword_100234850);
    v110 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_10000B3A0(v100, 1, v110);
    if (v206)
    {

      v258 = v313[15];
      v259 = v316;
      v260 = *(v316 + v313[16]);
      v261 = *(v316 + v313[18]);
      v262 = (v316 + v313[6]);
      v264 = *v262;
      v263 = v262[1];
      sub_10000D4E8();
      v265 = v278;
      sub_1000ED254();
      v266 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
      *(v265 + v266[5]) = v309;
      *(v265 + v266[6]) = v260;
      *(v265 + v266[7]) = v261;
      v267 = (v265 + v266[8]);
      *v267 = v264;
      v267[1] = v263;
      v268 = v266[9];
      type metadata accessor for URL();
      sub_100003BF0();
      (*(v269 + 16))(v265 + v268, v259 + v258);
      sub_10000B7B0();
      sub_100002728(v270, v271, v272, v266);

      goto LABEL_91;
    }

    v111 = *v100;
    v312 = v100[1];
    sub_10000AACC();
    v112 = v317;
    sub_1000ED2FC();
    v113 = v112;
    v114 = v298;
    sub_1000D31EC(v113, v298, &qword_1002DA970, &qword_1002318B0);
    v115 = sub_10000A218();
    v116 = v324;
    sub_10000B3A0(v115, v117, v324);
    v304 = v111;
    if (v206)
    {
      sub_100004E24(v114, &qword_1002DA970, &qword_1002318B0);
      v118 = v314;
      v119 = v310;
    }

    else
    {
      v120 = v284;
      (*v291)(v284, v114, v116);
      Date.timeIntervalSince(_:)();
      v122 = v121;
      v123 = v120;
      v99 = v322;
      (*v334)(v123, v116);
      v118 = v314;
      v119 = v310;
      if (v122 <= v5)
      {
        v183 = v308;
        sub_100007B78();
        sub_100002728(v184, v185, v186, v119);
        v187 = v296;
        v89 = v309;
        goto LABEL_63;
      }
    }

    v128 = v317;
    v129 = v317 + *(v302 + 32);
    switch(*(v129 + 32))
    {
      case 1:
      case 3:
        v130 = *(v317 + *(v302 + 36));
        v131 = *(v130 + 16);
        if (v131)
        {
          v132 = v130 + ((*(v311 + 80) + 32) & ~*(v311 + 80));
          v325 = *(v311 + 72);
          v341 = _swiftEmptyArrayStorage;
          v133 = v328;
          v134 = v329;
          v135 = v324;
          v136 = v279;
          v137 = v334;
          do
          {
            v338 = v132;
            v339 = v131;
            sub_100007F78();
            v336 = v138;
            sub_1000ED254();
            v335 = *v330;
            v139 = v326;
            v335(v326, v133, v135);
            static Date.+ infix(_:_:)();
            v337 = *v137;
            v337(v139, v135);
            sub_1000ED254();
            v140 = v332;
            v141 = v335;
            v335(v134 + *(v332 + 20), v133, v135);
            v141(v134 + *(v140 + 24), v136, v135);
            sub_1000ED34C();
            sub_1000ED254();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10013BFE0(0, v341[2] + 1, 1, v341);
              v341 = v146;
            }

            v143 = v341[2];
            v142 = v341[3];
            v134 = v329;
            v137 = v334;
            if (v143 >= v142 >> 1)
            {
              sub_10013BFE0(v142 > 1, v143 + 1, 1, v341);
              v341 = v147;
            }

            sub_100004AAC();
            sub_1000ED2A4(v134, v144);
            v337(v136, v135);
            sub_100007BE8();
            v133 = v328;
            sub_1000ED2A4(v328, v145);
            v341[2] = v143 + 1;
            sub_10000AE20();
            sub_100006640();
            sub_1000ED2FC();
            v132 = v338 + v325;
            v131 = v339 - 1;
          }

          while (v339 != 1);
        }

        else
        {
          v341 = _swiftEmptyArrayStorage;
        }

        v128 = v317;
        v196 = v333;
        sub_1000E7844(v317, v316, v341, v301, v124, v125, v126, v127, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291);
        v333 = v196;
        if (!v196)
        {

          v119 = v310;
          v100 = v315;
          goto LABEL_53;
        }

        goto LABEL_93;
      case 2:
      case 4:
        v335 = *(*(v317 + *(v302 + 36)) + 16);
        if (v335)
        {
          v148 = 0;
          LODWORD(v339) = *(v129 + 56);
          v149 = *(v129 + 40);
          v337 = *(v129 + 48);
          v338 = v149;
          sub_10000AE20();
          v336 = v150 + v151;
          v152 = _swiftEmptyArrayStorage;
          v153 = v300;
          v325 = v150;
          while (1)
          {
            if (v148 >= *(v150 + 16))
            {
              goto LABEL_95;
            }

            sub_100007F78();
            sub_1000ED254();
            v154 = v337;

            v341 = v152;
            if (v339)
            {
              v155._countAndFlagsBits = v338;
              v155._object = v154;
              SwifCron.init(_:)(&v346, v155);
              v333 = v156;
              if (v156)
              {
                goto LABEL_81;
              }

              TimeZone.init(secondsFromGMT:)();
              v157 = sub_10000A218();
              sub_10000B3A0(v157, v158, v99);
              if (v206)
              {
                sub_100004E24(v118, &qword_1002DC228, &qword_100234848);
                sub_1000ED168();
                v274 = swift_allocError();
                *v275 = 0xD00000000000001DLL;
                v275[1] = 0x8000000100273840;
                v333 = v274;
                swift_willThrow();
LABEL_87:
                sub_100007BE8();
                sub_1000ED2A4(v153, v276);

                sub_1000ED114(&v346);

                goto LABEL_88;
              }

              v159 = v292;
              (*v288)(v292, v118, v99);
              v160 = &v346;
              v161 = v333;
              SwifCron.next(from:timeZone:)(v153, v159, v323);
              v333 = v161;
              if (v161)
              {
                (*v307)(v159, v99);
                goto LABEL_87;
              }

              v162 = v159;
            }

            else
            {
              v163._countAndFlagsBits = v338;
              v163._object = v154;
              SwifCron.init(_:)(&v347, v163);
              v333 = v164;
              if (v164)
              {
LABEL_81:
                sub_100007BE8();
                sub_1000ED2A4(v153, v257);
                goto LABEL_82;
              }

              static TimeZone.autoupdatingCurrent.getter();
              v165 = v153;
              v166 = v98;
              v160 = &v347;
              v167 = v333;
              SwifCron.next(from:timeZone:)(v165, v166, v323);
              v333 = v167;
              if (v167)
              {

                sub_1000ED114(&v347);
                (*v307)(v166, v99);
                sub_100007BE8();
                sub_1000ED2A4(v300, v273);
LABEL_88:

                goto LABEL_89;
              }

              v162 = v166;
              v153 = v300;
            }

            (*v307)(v162, v99);
            sub_1000ED114(v160);
            v168 = v318;
            v169 = v323;
            static Date.+ infix(_:_:)();
            sub_100007F78();
            v170 = v319;
            sub_1000ED254();
            v171 = v332;
            v172 = *v330;
            v173 = v169;
            v174 = v324;
            (*v330)(v170 + *(v332 + 20), v173, v324);
            v172(v170 + *(v171 + 24), v168, v174);
            sub_1000ED34C();
            sub_1000ED254();
            v152 = v341;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10013BFE0(0, v152[2] + 1, 1, v152);
              v152 = v181;
            }

            v176 = v152[2];
            v175 = v152[3];
            if (v176 >= v175 >> 1)
            {
              sub_10013BFE0(v175 > 1, v176 + 1, 1, v152);
              v152 = v182;
            }

            v148 = (v148 + 1);
            sub_100004AAC();
            sub_1000ED2A4(v319, v177);
            v178 = *v334;
            v179 = v324;
            (*v334)(v318, v324);
            v178(v323, v179);
            sub_100007BE8();
            sub_1000ED2A4(v153, v180);
            v152[2] = v176 + 1;
            sub_10000AE20();
            sub_100006640();
            sub_1000ED2FC();
            v98 = v321;
            v99 = v322;
            v118 = v314;
            v100 = v315;
            v150 = v325;
            if (v335 == v148)
            {
              goto LABEL_51;
            }
          }
        }

        v152 = _swiftEmptyArrayStorage;
LABEL_51:
        v197 = v333;
        sub_1000E7844(v317, v316, v152, v301, v124, v125, v126, v127, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291);
        v333 = v197;
        if (!v197)
        {

          v119 = v310;
          goto LABEL_53;
        }

LABEL_82:

LABEL_89:
        v128 = v317;
        goto LABEL_90;
      default:
        v192 = v333;
        sub_1000E72B8();
        v333 = v192;
        if (v192)
        {
LABEL_93:

LABEL_90:
          sub_10000318C();
          sub_1000ED2A4(v128, v277);

          goto LABEL_91;
        }

        sub_10000B7B0();
        sub_100002728(v193, v194, v195, v119);
LABEL_53:
        v198 = v285;
        sub_1000D31EC(v316 + v313[14], v285, &qword_1002DA970, &qword_1002318B0);
        v199 = sub_10000A218();
        v200 = v324;
        sub_10000B3A0(v199, v201, v324);
        v202 = v286;
        if (v206)
        {
          sub_100004E24(v198, &qword_1002DA970, &qword_1002318B0);
          v187 = v296;
          v89 = v309;
        }

        else
        {
          v203 = v198;
          v204 = *v291;
          v205 = v282;
          (*v291)(v282, v203, v200);
          sub_1000D31EC(v303, v202, &qword_1002DBC18, &qword_100232F68);
          sub_10000B3A0(v202, 1, v119);
          if (v206)
          {
            (*v334)(v205, v200);
            sub_1000ED400(v202);
            v187 = v296;
            v89 = v309;
          }

          else
          {
            sub_100006D04();
            v207 = v281;
            sub_1000ED2FC();
            v208 = static Date.< infix(_:_:)();
            v89 = v309;
            if (v208)
            {
              sub_1000ED400(v303);
              v209 = v308;
              sub_1000D31EC(v207, v308, &qword_1002DA970, &qword_1002318B0);
              v204(v209 + v119[5], v205, v324);
              v210 = *(v207 + v119[6]);
              sub_1000D31EC(v207 + v119[8], v209 + v119[8], &qword_1002DBC20, &unk_100234B00);
              v211 = (v207 + v119[9]);
              v212 = v211[2];
              v344 = v211[1];
              v345[0] = v212;
              *(v345 + 9) = *(v211 + 41);
              v343 = *v211;
              sub_1000BA2CC(&v343, &v342);
              sub_100003884();
              v213 = v207;
              v183 = v209;
              v100 = v315;
              sub_1000ED2A4(v213, v214);
              *(v183 + v119[6]) = v210;
              *(v183 + v119[7]) = 3;
              v215 = (v183 + v119[9]);
              v216 = v344;
              *v215 = v343;
              v215[1] = v216;
              v215[2] = v345[0];
              *(v215 + 41) = *(v345 + 9);
              sub_10000B7B0();
              sub_100002728(v217, v218, v219, v119);
              v187 = v296;
              break;
            }

            sub_100003884();
            sub_1000ED2A4(v207, v220);
            (*v334)(v205, v324);
            v187 = v296;
          }
        }

        v183 = v308;
        sub_1000D3234(v303, v308, &qword_1002DBC18, &qword_100232F68);
        break;
    }

LABEL_63:
    sub_1000D31EC(v183, v187, &qword_1002DBC18, &qword_100232F68);
    v221 = sub_10000A218();
    sub_10000B3A0(v221, v222, v119);
    if (v206)
    {
      v223 = sub_100005CD0();
      sub_100004E24(v223, v224, &qword_100232F68);
      sub_10014EB30(v304, v312);
      v226 = v225;

      if (v226)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v343 = v89;
        v228 = v89[3];
        sub_100099DF4(&qword_1002DC240, &qword_100234858);
        v229 = v228;
        v119 = v310;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v229);
        v89 = v343;

        sub_10000DEC8();
        sub_100006D04();
        v230 = v283;
        sub_1000ED2FC();
        _NativeDictionary._delete(at:)();
        sub_1000ED400(v308);
        v231 = 0;
      }

      else
      {
        sub_1000ED400(v308);
        v231 = 1;
        v230 = v283;
      }

      sub_100002728(v230, v231, 1, v119);
      v249 = sub_100005CD0();
      sub_100004E24(v249, v250, &qword_100232F68);
      v98 = v321;
      v99 = v322;
      v95 = v290;
      goto LABEL_78;
    }

    sub_100006D04();
    sub_1000ED2FC();
    v232 = v89;
    v233 = swift_isUniquelyReferenced_nonNull_native();
    *&v343 = v232;
    v234 = v304;
    v235 = sub_10014EB30(v304, v312);
    v237 = v232[2];
    v238 = (v236 & 1) == 0;
    v239 = v237 + v238;
    if (!__OFADD__(v237, v238))
    {
      v240 = v235;
      v241 = v236;
      sub_100099DF4(&qword_1002DC240, &qword_100234858);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v233, v239))
      {
        v242 = sub_10014EB30(v234, v312);
        v99 = v322;
        if ((v241 & 1) != (v243 & 1))
        {
          goto LABEL_98;
        }

        v240 = v242;
        v95 = v290;
        if ((v241 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v95 = v290;
        v99 = v322;
        if ((v241 & 1) == 0)
        {
LABEL_71:
          v89 = v343;
          *(v343 + 8 * (v240 >> 6) + 64) |= 1 << v240;
          v244 = (v89[6] + 16 * v240);
          v245 = v312;
          *v244 = v234;
          v244[1] = v245;
          sub_10000DEC8();
          sub_100006D04();
          sub_1000ED2FC();
          sub_100004E24(v308, &qword_1002DBC18, &qword_100232F68);
          v246 = v89[2];
          v247 = __OFADD__(v246, 1);
          v248 = v246 + 1;
          if (v247)
          {
            goto LABEL_97;
          }

          v89[2] = v248;
          goto LABEL_77;
        }
      }

      v89 = v343;
      sub_10000DEC8();
      sub_1000ED1BC();
      sub_100004E24(v308, &qword_1002DBC18, &qword_100232F68);
LABEL_77:
      v98 = v321;
LABEL_78:
      sub_10000318C();
      sub_1000ED2A4(v251, v252);
      v90 = v289;
      v93 = v305;
      v97 = v306;
      if (v305)
      {
        continue;
      }

LABEL_7:
      while (1)
      {
        v101 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        if (v101 >= v95)
        {
          v306 = v97;
          sub_100099DF4(&qword_1002DC238, &unk_100237570);
          v106 = v299;
          sub_100007B78();
          sub_100002728(v188, v189, v190, v191);
          v305 = 0;
          goto LABEL_12;
        }

        v93 = *(v90 + 8 * v101);
        ++v97;
        if (v93)
        {
          v306 = v101;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000E72B8()
{
  sub_100002A08();
  v85 = v0;
  v87 = v1;
  v3 = v2;
  type metadata accessor for TimeZone();
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  type metadata accessor for Date();
  sub_100003724();
  v88 = v9;
  v89 = v8;
  __chkstk_darwin(v8);
  sub_1000037D4();
  v86 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v90 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_10000D478();
  v92 = v14;
  v15 = sub_100013FAC();
  v16 = type metadata accessor for TSDataSyncDatasetScheduleInput(v15);
  v91 = v16[5];
  v93 = v3;
  v17 = v3 + v16[8];
  v18 = *(v17 + 40);
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);

  if (v20 == 1)
  {
    v21._countAndFlagsBits = v18;
    v21._object = v19;
    SwifCron.init(_:)(&v96, v21);
    if (!v22)
    {
      v23 = v93;
      SwifCron.next(from:)((v93 + v91), v92);
      sub_1000ED114(&v96);
      goto LABEL_6;
    }

LABEL_16:
    sub_1000048F8();
    return;
  }

  v24._countAndFlagsBits = v18;
  v24._object = v19;
  SwifCron.init(_:)(&v97, v24);
  if (v25)
  {
    goto LABEL_16;
  }

  static TimeZone.autoupdatingCurrent.getter();
  v23 = v93;
  SwifCron.next(from:timeZone:)((v93 + v91), v7, v92);
  v26 = sub_100002E54();
  v27(v26);
  sub_1000ED114(&v97);
LABEL_6:
  v28 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v29 = v87;
  v30 = v90;
  static Date.+ infix(_:_:)();
  if (!*(v23 + v16[6]))
  {
    goto LABEL_11;
  }

  v31 = *(v23 + v16[6]);
  v32 = *(v87 + v28[8]);
  v84 = *(v87 + v28[11]);
  NSDecimal.init(_:)(v84, *(v87 + v28[9]));
  if ((v31 & 0x8000000000000000) == 0)
  {
    pow(_:_:)(v35, v33, v34);
    NSDecimal.init(_:)(v36, v32);
    sub_1000ED3B0();
    sub_100002E54();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v37, v84);
    sub_1000ED3B0();
    sub_100005CD0();
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v38);
    v40 = v39;
    [v39 doubleValue];

    v29 = (v93 + v91);
    v28 = v86;
    Date.addingTimeInterval(_:)();
    v30 = v90;
    if (static Date.< infix(_:_:)())
    {
      (*(v88 + 8))(v90, v89);
      v41 = *(v88 + 32);
      v42 = sub_1000ED3C0();
      v41(v42);
      v43 = sub_100008D74();
      sub_100002728(v43, v44, v45, v89);
      v46 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      v47 = sub_1000ED3D0(v46);
      v41(v47);
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v48, v49, v50, v51);
      v52 = sub_10000EFE0();
      *(v86 + v56) = 7;
      v57 = v29[7];
      v58 = 2;
LABEL_15:
      *(v28 + v57) = v58;
      v83 = v28 + v29[9];
      *(v83 + 41) = v53;
      *(v83 + 1) = v54;
      *(v83 + 2) = v52;
      *v83 = v55;
      sub_1000BA2CC(&v95, &v94);
      goto LABEL_16;
    }

    (*(v88 + 8))(v86, v89);
LABEL_11:
    sub_1000ED418();
    if (v60 || (v59 & 1) == 0)
    {
      v71 = *(v88 + 32);
      v72 = sub_1000ED3C0();
      v71(v72);
      v73 = sub_100008D74();
      sub_100002728(v73, v74, v75, v89);
      v76 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      v77 = sub_1000ED3D0(v76);
      v71(v77);
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v78, v79, v80, v81);
      v52 = sub_10000EFE0();
      *(v28 + v82) = 7;
      v57 = v29[7];
      v58 = 9;
    }

    else
    {
      (*(v88 + 8))(v30, v89);
      v61 = sub_1000ED3C0();
      v62(v61);
      v63 = sub_100008D74();
      sub_100002728(v63, v64, v65, v89);
      v29 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      (*(v88 + 16))(v28 + v29[5], v85, v89);
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v66, v67, v68, v69);
      v52 = sub_10000EFE0();
      v58 = 11;
      *(v28 + v70) = 11;
      v57 = v29[7];
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1000E7844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100002A08();
  a21 = v24;
  a22 = v25;
  v310 = v23;
  v326 = v26;
  v28 = v27;
  v301 = v29;
  v315 = v30;
  v309 = v31;
  v313 = type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_10000307C();
  __chkstk_darwin(v32);
  sub_10000306C();
  v292 = v34 - v33;
  v35 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  v36 = sub_1000030B8(v35);
  __chkstk_darwin(v36);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_10000D478();
  v299 = v38;
  v39 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v40 = sub_1000030B8(v39);
  __chkstk_darwin(v40);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v42);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_10000D478();
  v319 = v46;
  sub_100013FAC();
  v47 = type metadata accessor for Date();
  sub_100003724();
  v314 = v48;
  __chkstk_darwin(v49);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v51);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v53);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v54);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v55);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v56);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v57);
  sub_10000D478();
  v324 = v58;
  v59 = sub_100013FAC();
  v60 = type metadata accessor for TSDataSyncCalculatedEvent(v59);
  sub_100003724();
  v62 = v61;
  __chkstk_darwin(v63);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v64);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v65);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v66);
  v68 = &v290 - v67;
  v69 = sub_100099DF4(&qword_1002DC250, &qword_100234860);
  v70 = sub_1000030B8(v69);
  __chkstk_darwin(v70);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v71);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v72);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v73);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v74);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v75);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v76);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v77);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v78);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v79);
  sub_1000ED424();
  __chkstk_darwin(v80);
  v322 = &v290 - v81;
  sub_100007B78();
  sub_100002728(v82, v83, v84, v60);
  v321 = v22;
  sub_100007B78();
  sub_100002728(v85, v86, v87, v60);
  v88 = *(v28 + 16);
  v327 = v60;
  if (v88)
  {
    sub_10000AE20();
    v90 = v28 + v89;
    v91 = (v314 + 16);
    v323 = *(v62 + 72);
    v316 = v314 + 32;
    do
    {
      sub_1000ED34C();
      sub_1000ED254();
      v92 = *(v60 + 24);
      sub_1000052BC();
      sub_1000ED20C(&qword_1002DB968, v93, &protocol conformance descriptor for Date);
      v94 = dispatch thunk of static Comparable.< infix(_:_:)();
      v95 = *v91;
      if (v94)
      {
        v95(v325, &v68[v92], v47);
        v96 = sub_10000B390(&a16);
        if (sub_100004DFC(v96, v97, v60))
        {
          sub_100005CC4(&a15);
          sub_100007B78();
          sub_100002728(v98, v99, v100, v47);
          v101 = v318;
          static Date.distantFuture.getter();
          sub_10000B3A0(v92, 1, v47);
          if (!v161)
          {
            sub_100004E24(v320, &qword_1002DA970, &qword_1002318B0);
          }
        }

        else
        {
          v108 = sub_100005CC4(&a15);
          (v95)(v108);
          sub_10000B7B0();
          sub_100002728(v109, v110, v111, v47);
          sub_100008AA4();
          v101 = v318;
          v112(v318, v92, v47);
        }

        sub_10000A81C(&a20);
        static Date.< infix(_:_:)();
        v113 = sub_100005114();
        (v92)(v113);
        (v92)(v60, v47);
        if ((v101 & 1) == 0)
        {
          goto LABEL_17;
        }

        v114 = &a16;
      }

      else
      {
        v95(v324, v68, v47);
        v102 = sub_10000B390(&a17);
        if (sub_100004DFC(v102, v103, v60))
        {
          sub_100005CC4(&a14);
          sub_100007B78();
          sub_100002728(v104, v105, v106, v47);
          v107 = v317;
          static Date.distantPast.getter();
          sub_10000B3A0(v92, 1, v47);
          if (!v161)
          {
            sub_100004E24(v319, &qword_1002DA970, &qword_1002318B0);
          }
        }

        else
        {
          v115 = sub_10000A81C(&a14);
          v95(v115, v92, v47);
          sub_10000B7B0();
          sub_100002728(v116, v117, v118, v47);
          sub_100008AA4();
          v107 = v317;
          v119(v317, v60, v47);
        }

        sub_10000A81C(&a19);
        static Date.> infix(_:_:)();
        v120 = sub_100005114();
        (v92)(v120);
        (v92)(v60, v47);
        if ((v107 & 1) == 0)
        {
LABEL_17:
          sub_100004AAC();
          sub_1000ED2A4(v68, v125);
          v60 = v327;
          goto LABEL_18;
        }

        v114 = &a17;
      }

      v121 = sub_100005CC4(v114);
      sub_100004E24(v121, &qword_1002DC250, &qword_100234860);
      sub_100006640();
      sub_1000ED2FC();
      sub_10000B7B0();
      v60 = v327;
      sub_100002728(v122, v123, v124, v327);
LABEL_18:
      v90 += v323;
      --v88;
    }

    while (v88);
  }

  v126 = v322;
  v127 = v311;
  sub_10000F3D0();
  sub_1000D31EC(v128, v129, v130, v131);
  sub_100004DFC(v127, 1, v60);
  sub_100013FF0();
  sub_100004E24(v132, v133, v134);
  v135 = v312;
  sub_10000F3D0();
  sub_1000D31EC(v136, v137, v138, v139);
  v140 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  sub_1000ED3A4();
  v143 = *(v142 + v141);
  if (!v143)
  {
    goto LABEL_34;
  }

  v144 = sub_100004F70();
  v126 = v135;
  v145 = v308;
  sub_1000D31EC(v144, v308, &qword_1002DC250, &qword_100234860);
  v146 = sub_100004DFC(v145, 1, v327);
  v147 = v145;
  v135 = v126;
  sub_100004E24(v147, &qword_1002DC250, &qword_100234860);
  if (v146 == 1)
  {
    sub_1000ED3A4();
    sub_1000ED418();
    if (v161 || (v148 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v149 = sub_100004F70();
  v150 = v303;
  sub_1000D31EC(v149, v303, v151, v152);
  v153 = sub_10000A218();
  sub_10000B3A0(v153, v154, v327);
  if (v161)
  {
    sub_100004E24(v150, &qword_1002DC250, &qword_100234860);
    goto LABEL_50;
  }

  sub_100006640();
  v155 = v297;
  sub_1000ED2FC();
  sub_1000ED3A4();
  v158 = (v157 + v156);
  v159 = v158[1];
  if (!v159)
  {
    sub_100004AAC();
    sub_1000ED2A4(v155, v164);
    goto LABEL_34;
  }

  v160 = (v155 + *(v313 + 32));
  v161 = *v160 == *v158 && v159 == v160[1];
  if (v161)
  {
    sub_100004AAC();
    sub_1000ED2A4(v155, v217);
    goto LABEL_50;
  }

  v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100004AAC();
  sub_1000ED2A4(v155, v163);
  if ((v162 & 1) == 0)
  {
LABEL_34:
    sub_1000ED3A4();
    sub_1000ED418();
    if (!v161 && (v165 & 1) != 0)
    {
      v166 = v293;
      sub_1000D31EC(v135, v293, &qword_1002DC250, &qword_100234860);
      v167 = v327;
      sub_10000B3A0(v166, 1, v327);
      v168 = v314;
      if (v161)
      {
        sub_100004E24(v166, &qword_1002DC250, &qword_100234860);
        sub_100007B78();
        sub_100002728(v169, v170, v171, v47);
        (*(v168 + 16))(v302, v326, v47);
      }

      else
      {
        v192 = *(v314 + 16);
        v325 = v140;
        v193 = sub_10000A81C(&v328);
        v192(v193);
        sub_100004AAC();
        sub_1000ED2A4(v166, v194);
        v140 = v325;
        sub_10000B7B0();
        sub_100002728(v195, v196, v197, v47);
        (v192)(v302, v326, v47);
      }

      v198 = v294;
      sub_1000D31EC(v135, v294, &qword_1002DC250, &qword_100234860);
      v199 = sub_10000A218();
      sub_10000B3A0(v199, v200, v167);
      if (v161)
      {
        sub_100004E24(v198, &qword_1002DC250, &qword_100234860);
        v203 = 11;
      }

      else
      {
        sub_100007F78();
        v201 = v292;
        sub_1000ED254();
        sub_100004AAC();
        sub_1000ED2A4(v198, v202);
        v203 = *(v201 + *(v313 + 20));
        sub_100007BE8();
        sub_1000ED2A4(v201, v204);
      }

      v205 = v295;
      sub_1000D3234(v135, v295, &qword_1002DC250, &qword_100234860);
      sub_10000B3A0(v205, 1, v167);
      if (v161)
      {
        sub_100004E24(v205, &qword_1002DC250, &qword_100234860);
        v208 = 1;
        v206 = v296;
      }

      else
      {
        sub_100007F78();
        v206 = v296;
        sub_1000ED254();
        sub_100004AAC();
        sub_1000ED2A4(v205, v207);
        v208 = 0;
      }

      sub_100002728(v206, v208, 1, v313);
      sub_10000BFF8(*(v140 + 32));
      sub_100013DF4();
      sub_1000D3234(v209, v210, v211, v212);
      v213 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      (*(v314 + 32))(v126 + v213[5], v302, v47);
      *(v126 + v213[6]) = v203;
      *(v126 + v213[7]) = 11;
      sub_1000D3234(v206, v126 + v213[8], &qword_1002DBC20, &unk_100234B00);
      sub_100013C64(v126 + v213[9]);
      v214 = sub_100008D74();
      sub_100003FEC(v214, v215, v216);
      goto LABEL_68;
    }

    v172 = v305;
    sub_1000D3234(v135, v305, &qword_1002DC250, &qword_100234860);
    v173 = sub_10000A218();
    v174 = v327;
    sub_10000B3A0(v173, v175, v327);
    v176 = v314;
    if (v161)
    {
      sub_100004E24(v172, &qword_1002DC250, &qword_100234860);
      type metadata accessor for TSDataSyncDatasetSchedule(0);
      sub_100007B78();
      sub_100002728(v177, v178, v179, v180);
LABEL_68:
      sub_100013FF0();
      sub_100004E24(v284, v285, v286);
      sub_100004F70();
      sub_100013FF0();
      sub_100004E24(v287, v288, v289);
      sub_1000048F8();
      return;
    }

    sub_100006640();
    sub_100013DF4();
    sub_1000ED2FC();
    v181 = *(v176 + 16);
    v181(v307, v126 + *(v174 + 20), v47);
    sub_10000B7B0();
    sub_100002728(v182, v183, v184, v47);
    v181(v306, v126 + *(v174 + 24), v47);
    v185 = v313;
    v186 = *(v126 + *(v313 + 20));
    LODWORD(v327) = byte_10023488A[v186];
    v187 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    sub_100007F78();
    sub_10000BEF4();
    sub_100004AAC();
    sub_1000ED2A4(v126, v188);
    sub_10000B7B0();
    sub_100002728(v189, v190, v191, v185);
    sub_10000BFF8(*(v140 + 32));
    sub_1000D3234(v307, v140, &qword_1002DA970, &qword_1002318B0);
    (*(v176 + 32))(v140 + v187[5], v306, v47);
    *(v140 + v187[6]) = v186;
LABEL_56:
    *(v140 + v187[7]) = v327;
    sub_100013C64(v140 + v187[9]);
    sub_10000B7B0();
    sub_100003FEC(v257, v258, v259);
    goto LABEL_68;
  }

LABEL_50:
  v218 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v219 = *(v301 + v218[8]);
  v220 = v218[11];
  v221 = *(v220 + v301);
  NSDecimal.init(_:)(v220, *(v301 + v218[9]));
  if ((v143 & 0x8000000000000000) == 0)
  {
    v325 = v140;
    pow(_:_:)(&a20, v222, v223);
    NSDecimal.init(_:)(v224, v219);
    sub_1000ED3B0();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v225, v221);
    sub_1000ED3B0();
    v226 = v321;
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v227);
    v229 = v228;
    [v228 doubleValue];

    v140 = v304;
    Date.addingTimeInterval(_:)();
    v230 = v226;
    v231 = v300;
    sub_1000D31EC(v230, v300, &qword_1002DC250, &qword_100234860);
    v232 = v327;
    sub_10000B3A0(v231, 1, v327);
    if (v161)
    {
      v242 = &qword_1002DC250;
      sub_100013FF0();
      sub_100004E24(v233, v234, v235);
      sub_100013FF0();
      sub_100004E24(v236, v237, v238);
      v239 = v314;
    }

    else
    {
      sub_100006640();
      sub_100013DF4();
      sub_1000ED2FC();
      v240 = *(v232 + 24);
      v241 = v232;
      v242 = static Date.< infix(_:_:)();
      sub_100004E24(v126, &qword_1002DC250, &qword_100234860);
      v239 = v314;
      if (v242)
      {
        (*(v314 + 8))(v140, v47);
        v243 = *(v241 + 20);
        v244 = *(v239 + 16);
        v245 = v291;
        v244(v291, v126 + v243, v47);
        sub_10000B7B0();
        sub_100002728(v246, v247, v248, v47);
        v249 = v126 + v240;
        v250 = v290;
        v244(v290, v249, v47);
        v251 = v313;
        v326 = *(v126 + *(v313 + 20));
        LODWORD(v327) = byte_10023488A[v326];
        v187 = type metadata accessor for TSDataSyncDatasetSchedule(0);
        sub_100007F78();
        sub_10000BEF4();
        sub_100004AAC();
        sub_1000ED2A4(v126, v252);
        sub_10000B7B0();
        sub_100002728(v253, v254, v255, v251);
        sub_10000BCD4();
        sub_10000BFF8(*(v256 + 32));
        sub_1000D3234(v245, v140, &qword_1002DA970, &qword_1002318B0);
        (*(v239 + 32))(v140 + v187[5], v250, v47);
        *(v140 + v187[6]) = v326;
        goto LABEL_56;
      }

      sub_100004AAC();
      sub_1000ED2A4(v126, v260);
    }

    v261 = sub_10000B390(&a17);
    v262 = v327;
    sub_100004DFC(v261, v263, v327);
    v264 = v298;
    sub_10000BCD4();
    if (v265)
    {
      sub_1000ED3A4();
      sub_1000ED418();
      if (v161 || (v266 & 1) == 0)
      {
        v267 = 3;
      }

      else
      {
        v267 = 11;
      }

      LODWORD(v326) = v267;
      v268 = 1;
      v269 = v242;
      v262 = v327;
    }

    else
    {
      LODWORD(v326) = *(v242 + *(v313 + 20));
      (*(v239 + 16))(v264, v242 + *(v262 + 20), v47);
      v268 = 0;
      v269 = v242;
    }

    v270 = 1;
    sub_100002728(v264, v268, 1, v47);
    v271 = *(v239 + 32);
    v272 = sub_10000A81C(&v327);
    v271(v272, v304, v47);
    v273 = sub_100004DFC(v269, 1, v262);
    v274 = v299;
    if (!v273)
    {
      sub_100007F78();
      sub_100004F70();
      sub_1000ED254();
      v270 = 0;
    }

    sub_100002728(v274, v270, 1, v313);
    sub_10000BCD4();
    sub_10000BFF8(*(v275 + 32));
    sub_100013DF4();
    sub_1000D3234(v276, v277, v278, v279);
    v280 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    v271(v126 + v280[5], v140, v47);
    *(v126 + v280[6]) = v326;
    *(v126 + v280[7]) = 2;
    sub_1000D3234(v274, v126 + v280[8], &qword_1002DBC20, &unk_100234B00);
    sub_100013C64(v126 + v280[9]);
    v281 = sub_100008D74();
    sub_100003FEC(v281, v282, v283);
    goto LABEL_68;
  }

  __break(1u);
}

int *sub_1000E8C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v121 = a3;
  v119 = a1;
  v122 = a6;
  v9 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  sub_100003724();
  v127 = v10;
  __chkstk_darwin(v11);
  sub_10000308C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v116 - v16;
  v18 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  v129 = v116 - v20;
  v21 = sub_100013FAC();
  v22 = type metadata accessor for TSDataSyncDatasetState(v21);
  sub_100003724();
  v123 = v23;
  __chkstk_darwin(v24);
  sub_10000306C();
  v27 = (v26 - v25);
  v29 = a5[13];
  v28 = a5[14];
  v30 = a5[15];
  v118 = a5[16];
  v31 = a5[17];
  sub_1000D6484();
  v128 = v9;
  v32 = Dictionary.init(dictionaryLiteral:)();
  v117 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v33 = *(v117 + 24);
  v120 = a2;
  v34 = *(a2 + v33);
  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_19:
    sub_10000D4E8();
    v100 = v122;
    sub_1000ED254();
    *v136 = 0;
    v134 = 0u;
    v135 = 0u;
    v101 = sub_10012370C(&v134, 0);
    v103 = v102;
    sub_100004E24(&v134, &qword_1002DB958, &qword_100232B60);
    v104 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
    v105 = v104[7];
    type metadata accessor for AccountIdentity();
    sub_100003BF0();
    (*(v106 + 16))(v100 + v105, v119);
    v107 = type metadata accessor for TSDataSyncDatasetGroupState(0);
    sub_1000041F8(*(v107 + 28));
    sub_1000041F8(*(v107 + 24));
    v108 = *(v117 + 20);
    v109 = v104[15];
    type metadata accessor for URL();
    sub_100003BF0();
    (*(v110 + 16))(v100 + v109, v120 + v108);
    result = type metadata accessor for TSDataSyncDeviceState(0);
    v112 = *(v121 + result[14]);
    v113 = *(v121 + result[11]);
    v114 = *(v121 + result[12]);
    *(v100 + v104[5]) = v32;
    v115 = (v100 + v104[6]);
    *v115 = v101;
    v115[1] = v103;
    *(v100 + v104[8]) = v29;
    *(v100 + v104[9]) = v28;
    *(v100 + v104[10]) = v30;
    *(v100 + v104[11]) = v118;
    *(v100 + v104[12]) = v31;
    *(v100 + v104[16]) = v112;
    *(v100 + v104[17]) = v113;
    *(v100 + v104[18]) = v114;
    return result;
  }

  v36 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v37 = 0;
  v38 = *(v36 + 20);
  v116[1] = a4;
  v39 = *(a4 + v38);
  v40 = (v34 + 32);
  v124 = v35 - 1;
  v125 = v39;
  v126 = v34;
  while (v37 < v35)
  {
    v131 = v37;
    v42 = v40[1];
    v41 = v40[2];
    v43 = *(v40 + 41);
    v130 = v40;
    v44 = *v40;
    *&v136[9] = v43;
    v135 = v42;
    *v136 = v41;
    v134 = v44;
    v45 = v44;
    v46 = *(v39 + 16);
    v132 = v44;
    if (v46)
    {
      sub_1000BA2CC(&v134, v133);

      sub_10014EB30(v45, *(&v45 + 1));
      if (v47)
      {
        sub_1000ED254();
        sub_10000B7B0();
        sub_100002728(v48, v49, v50, v22);
        sub_1000ED2FC();
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000BA2CC(&v134, v133);
    }

    v51 = v129;
    sub_100007B78();
    sub_100002728(v52, v53, v54, v22);
    v55 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v56, v57, v58, v55);
    static Date.distantPast.getter();
    sub_100007B78();
    sub_100002728(v59, v60, v61, v55);
    sub_100007B78();
    sub_100002728(v62, v63, v64, v55);
    v65 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v66, v67, v68, v69);
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0xE000000000000000;
    v27[6] = 0;
    v27[7] = 0;
    *(v27 + v22[11]) = 0;
    v70 = (v27 + v22[13]);
    *v70 = 0;
    v70[1] = 0;
    v71 = v27 + v22[14];
    *v71 = 0;
    v71[8] = 1;
    v72 = (v27 + v22[15]);
    *v72 = 0;
    v72[1] = 0;
    *(v27 + v22[16]) = 0;
    *(v27 + v22[17]) = 0;
    *(v27 + v22[18]) = v65;
    *(v27 + v22[19]) = _swiftEmptyArrayStorage;
    if (sub_100004DFC(v51, 1, v22) != 1)
    {
      v73 = sub_100004F70();
      sub_100004E24(v73, &qword_1002DBC28, &qword_100232F70);
    }

LABEL_10:
    sub_1000D31EC(v27 + v22[8], v17, &qword_1002DA970, &qword_1002318B0);
    v74 = v22[9];
    v75 = v128;
    v76 = v128[5];
    type metadata accessor for Date();
    sub_100003BF0();
    (*(v77 + 16))(&v17[v76], v27 + v74);
    v78 = (v27 + v22[13]);
    v79 = *(v27 + v22[19]);
    v80 = *(v27 + v22[17]);
    v81 = *v78;
    v82 = v78[1];
    *&v17[v75[6]] = *(v27 + v22[11]);
    v83 = &v17[v75[7]];
    *v83 = v81;
    *(v83 + 1) = v82;
    v84 = &v17[v75[8]];
    *(v84 + 41) = *&v136[9];
    v85 = *v136;
    *(v84 + 1) = v135;
    *(v84 + 2) = v85;
    *v84 = v134;
    *&v17[v75[9]] = v79;
    v17[v75[10]] = v80;
    sub_1000ED364();
    v86 = v14;
    sub_1000ED254();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v32;
    sub_10014EB30(v132, *(&v45 + 1));
    v89 = *(v32 + 16);
    v90 = (v88 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      goto LABEL_21;
    }

    v92 = v88;
    sub_100099DF4(&qword_1002DC258, &qword_100234868);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v91))
    {
      sub_10014EB30(v132, *(&v45 + 1));
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_23;
      }
    }

    v14 = v86;
    if (v92)
    {

      v32 = v133[0];
      sub_1000ED3E8();
      sub_1000ED1BC();
      sub_10000318C();
      sub_1000ED2A4(v17, v94);
      sub_1000ED37C();
    }

    else
    {
      v32 = v133[0];
      *(v133[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v95 = (*(v32 + 48) + 16 * v45);
      *v95 = v132;
      v95[1] = *(&v45 + 1);
      sub_1000ED3E8();
      sub_10000AACC();
      sub_1000ED2FC();
      sub_10000318C();
      sub_1000ED2A4(v17, v96);
      sub_1000ED37C();
      v97 = *(v32 + 16);
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_22;
      }

      *(v32 + 16) = v99;
    }

    v39 = v125;
    if (v124 == v131)
    {
      goto LABEL_19;
    }

    v35 = *(v126 + 16);
    v40 = v130 + 4;
    v37 = v131 + 1;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E9504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v171 = a3;
  v162 = a2;
  v156 = a4;
  v153 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v7);
  v154 = &v151 - v8;
  sub_100013FAC();
  v9 = type metadata accessor for Date();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v13);
  v14 = sub_100002878();
  v170 = type metadata accessor for TSDataSyncDatasetSchedule(v14);
  sub_100003724();
  v167 = v15;
  __chkstk_darwin(v16);
  sub_1000037D4();
  v179 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  sub_10000D478();
  v166 = v19;
  v20 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v21 = sub_1000030B8(v20);
  __chkstk_darwin(v21);
  sub_1000037D4();
  v174 = v22;
  sub_100005238();
  __chkstk_darwin(v23);
  sub_10000D478();
  v173 = v24;
  v25 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v26 = sub_1000030B8(v25);
  __chkstk_darwin(v26);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v28);
  v30 = &v151 - v29;
  __chkstk_darwin(v31);
  v33 = &v151 - v32;
  __chkstk_darwin(v34);
  sub_100008AB0();
  __chkstk_darwin(v35);
  v182 = &_swiftEmptySetSingleton;
  v175 = &v151 - v36;
  sub_100007B78();
  sub_100002728(v37, v38, v39, v9);
  v176 = v4;
  sub_100007B78();
  v172 = v9;
  sub_100002728(v40, v41, v42, v9);
  v160 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  v43 = *(v160 + 20);
  v164 = a1;
  v44 = *(a1 + v43) + 64;
  sub_1000069C0();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;
  v159 = (v11 + 32);
  v157 = (v11 + 8);
  v177 = v11 + 16;
  v168 = v50;

  v52 = 0;
  v165 = v33;
  v163 = v44;
  v169 = v49;
  v158 = v5;
  v161 = v30;
  while (v47)
  {
    v53 = v52;
    v54 = v172;
LABEL_9:
    v57 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v58 = (*(v168 + 48) + 16 * (v57 | (v53 << 6)));
    v60 = *v58;
    v59 = v58[1];
    sub_1000ED254();
    v61 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
    v62 = v174;
    *v174 = v60;
    v62[1] = v59;
    v56 = v62;
    sub_100006D04();
    sub_1000ED2FC();
    sub_10000B7B0();
    sub_100002728(v63, v64, v65, v61);

    v55 = v173;
LABEL_10:
    sub_1000D3234(v56, v55, &qword_1002DC210, &qword_100234838);
    v66 = sub_100002E54();
    v68 = sub_100099DF4(v66, v67);
    v69 = sub_10000A218();
    if (sub_100004DFC(v69, v70, v68) == 1)
    {

      v119 = v176;
      v120 = v155;
      sub_1000D31EC(v176, v155, &qword_1002DA970, &qword_1002318B0);
      if (sub_100004DFC(v120, 1, v54) == 1)
      {
        sub_100013FF0();
        sub_100004E24(v121, v122, v123);
        sub_100013FF0();
        sub_100004E24(v124, v125, v126);
        v127 = 0;
        v128 = v156;
LABEL_50:
        *v128 = v182;
        v150 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
        result = sub_1000D3234(v175, v128 + *(v150 + 20), &qword_1002DA970, &qword_1002318B0);
        *(v128 + *(v150 + 24)) = v127 & 1;
        return result;
      }

      sub_100013FF0();
      sub_100004E24(v129, v130, v131);
      v132 = *(v153 + 48);
      sub_100013DF4();
      sub_10000F3D0();
      sub_1000D31EC(v133, v134, v135, v136);
      sub_10000F3D0();
      sub_1000D31EC(v137, v138, v139, v140);
      sub_10000AF94(&unk_100237580);
      v128 = v156;
      if (v110)
      {
        sub_100004E24(v119, &qword_1002DA970, &qword_1002318B0);
        sub_10000AF94(&unk_100237580 + v132);
        if (v110)
        {
          sub_100004E24(&unk_100237580, &qword_1002DA970, &qword_1002318B0);
          v127 = 1;
          goto LABEL_50;
        }
      }

      else
      {
        v141 = v152;
        sub_1000D31EC(&unk_100237580, v152, &qword_1002DA970, &qword_1002318B0);
        sub_10000AF94(&unk_100237580 + v132);
        if (!v142)
        {
          sub_100008AA4();
          v144 = &unk_100237580 + v132;
          v145 = v151;
          v146(v151, v144, v54);
          sub_1000052BC();
          sub_1000ED20C(v147, v148, &protocol conformance descriptor for Date);
          v127 = dispatch thunk of static Equatable.== infix(_:_:)();
          v149 = *v157;
          (*v157)(v145, v54);
          sub_100004E24(v119, &qword_1002DA970, &qword_1002318B0);
          v149(v141, v54);
          sub_100004E24(&unk_100237580, &qword_1002DA970, &qword_1002318B0);
          goto LABEL_50;
        }

        sub_100004E24(v119, &qword_1002DA970, &qword_1002318B0);
        sub_100008AA4();
        v143(v141, v54);
      }

      sub_100004E24(&unk_100237580, &qword_1002DACF0, &qword_100232140);
      v127 = 0;
      goto LABEL_50;
    }

    v71 = v55[1];
    v180 = *v55;
    sub_100006D04();
    sub_1000ED2FC();
    v72 = *(v170 + 20);
    sub_1000052BC();
    sub_1000ED20C(&qword_1002DB968, v73, &protocol conformance descriptor for Date);
    v178 = v72;
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v74 = v161;
      sub_1000D31EC(v175, v161, &qword_1002DA970, &qword_1002318B0);
      sub_10000AF94(v74);
      v75 = v165;
      if (v110)
      {
        sub_100013FF0();
        sub_100004E24(v76, v77, v78);
        sub_100013FF0();
        sub_100004E24(v79, v80, v81);
LABEL_21:
        sub_1000109D4();
        v93(v75);
        goto LABEL_22;
      }

      v83 = v175;
      v84 = *v159;
      v85 = v54;
      v86 = v158;
      (*v159)(v158, v74, v85);
      v87 = static Date.< infix(_:_:)();
      sub_100004E24(v83, &qword_1002DA970, &qword_1002318B0);
      if ((v87 & 1) == 0)
      {
        sub_100008AA4();
        v92(v86, v85);
        v54 = v85;
        v75 = v165;
        v44 = v163;
        goto LABEL_21;
      }

      v84(v165, v86, v85);
      v54 = v85;
      v44 = v163;
LABEL_22:
      v94 = sub_100008D74();
      sub_100002728(v94, v95, v96, v54);
      sub_10000F3D0();
      sub_1000D3234(v97, v98, v99, v100);
      sub_10000BCD4();
      v102 = *(v101 + 168);
      if (v102)
      {
        v103 = v54;
        v104 = *(v102 + 16);
        if (v104)
        {
          v105 = *v164;
          v106 = v164[1];
          v107 = (v102 + 56);
          do
          {
            v108 = *(v107 - 1);
            v109 = *v107;
            v110 = v105 == *(v107 - 3) && v106 == *(v107 - 2);
            if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v111 = v180 == v108 && v71 == v109;
              if (v111 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v112 = v176;
                sub_100004E24(v176, &qword_1002DA970, &qword_1002318B0);
                sub_1000109D4();
                v113(v112);
                sub_10000B7B0();
                sub_100002728(v114, v115, v116, v103);
              }
            }

            v107 += 4;
            --v104;
          }

          while (v104);
        }

        sub_100003884();
        result = sub_1000ED2A4(v179, v117);
        v44 = v163;
        v49 = v169;
      }

      else
      {
LABEL_38:
        sub_100003884();
        sub_1000ED2A4(v179, v118);

        v49 = v169;
      }
    }

    else
    {
      if (v182[2] >= *(v164 + *(v160 + 28)))
      {
        goto LABEL_38;
      }

      sub_1000EAC8C(v181, v180, v71);

      sub_100003884();
      result = sub_1000ED2A4(v179, v82);
      v49 = v169;
    }
  }

  v55 = v173;
  v56 = v174;
  v54 = v172;
  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v49)
    {
      sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_100007B78();
      sub_100002728(v88, v89, v90, v91);
      v47 = 0;
      goto LABEL_10;
    }

    v47 = *(v44 + 8 * v53);
    ++v52;
    if (v47)
    {
      v52 = v53;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E9FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v79 = a3;
  v7 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_1000037D4();
  v76 = v9;
  sub_100005238();
  __chkstk_darwin(v10);
  sub_1000ED438();
  __chkstk_darwin(v11);
  sub_1000ED424();
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v16 = sub_1000030B8(v15);
  __chkstk_darwin(v16);
  sub_1000037D4();
  v75 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100008AB0();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  v25 = type metadata accessor for Date();
  sub_100003724();
  v74 = v26;
  __chkstk_darwin(v27);
  sub_10000308C();
  v30 = (v28 - v29);
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  v77 = a1;
  sub_1000D31EC(a1, v14, &qword_1002DC208, &qword_100234830);
  v34 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_10000AF94(v14);
  if (v39)
  {
    sub_100004E24(v14, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v35, v36, v37, v25);
LABEL_6:
    v4 = v24;
    v59 = v78;
    goto LABEL_7;
  }

  sub_1000D31EC(&v14[*(v34 + 20)], v24, &qword_1002DA970, &qword_1002318B0);
  sub_100007270();
  sub_1000ED2A4(v14, v38);
  sub_100010DCC(v24);
  if (v39)
  {
    goto LABEL_6;
  }

  v73 = *(v74 + 32);
  v73(v33, v24, v25);
  v59 = v78;
  sub_1000D31EC(v78, v3, &qword_1002DC208, &qword_100234830);
  sub_10000AF94(v3);
  if (v60)
  {
    sub_100004E24(v3, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v61, v62, v63, v25);
  }

  else
  {
    sub_1000D31EC(v3 + *(v34 + 20), v4, &qword_1002DA970, &qword_1002318B0);
    sub_100007270();
    sub_1000ED2A4(v3, v65);
    sub_100010DCC(v4);
    if (!v66)
    {
      v73(v30, v4, v25);
      v69 = static Date.< infix(_:_:)();
      v70 = *(v74 + 8);
      v70(v30, v25);
      v71 = sub_100005CD0();
      (v70)(v71);
      if (v69)
      {
        v64 = v77;
        return sub_1000D31EC(v64, v79, &qword_1002DC208, &qword_100234830);
      }

      goto LABEL_21;
    }
  }

  v67 = sub_100005CD0();
  v68(v67);
LABEL_7:
  sub_100004E24(v4, &qword_1002DA970, &qword_1002318B0);
  v40 = v77;
  sub_1000D31EC(v77, v5, &qword_1002DC208, &qword_100234830);
  sub_10000AF94(v5);
  if (v39)
  {
    sub_100004E24(v5, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v41, v42, v43, v25);
    goto LABEL_12;
  }

  sub_1000D31EC(v5 + *(v34 + 20), v20, &qword_1002DA970, &qword_1002318B0);
  sub_100007270();
  sub_1000ED2A4(v5, v44);
  sub_100010DCC(v20);
  if (v45)
  {
LABEL_12:
    sub_100004E24(v20, &qword_1002DA970, &qword_1002318B0);
    v46 = v76;
    sub_1000D31EC(v59, v76, &qword_1002DC208, &qword_100234830);
    sub_10000AF94(v46);
    if (v39)
    {
      sub_100004E24(v46, &qword_1002DC208, &qword_100234830);
      v50 = v75;
      sub_100007B78();
      sub_100002728(v47, v48, v49, v25);
    }

    else
    {
      v50 = v75;
      sub_1000D31EC(v46 + *(v34 + 20), v75, &qword_1002DA970, &qword_1002318B0);
      sub_100007270();
      sub_1000ED2A4(v46, v51);
      v52 = sub_10000A218();
      v54 = sub_100004DFC(v52, v53, v25);
      if (v54 != 1)
      {
        sub_100004E24(v50, &qword_1002DA970, &qword_1002318B0);
LABEL_21:
        v64 = v59;
        return sub_1000D31EC(v64, v79, &qword_1002DC208, &qword_100234830);
      }
    }

    sub_100004E24(v50, &qword_1002DA970, &qword_1002318B0);
    sub_100007B78();
    return sub_100002728(v55, v56, v57, v34);
  }

  sub_100004E24(v20, &qword_1002DA970, &qword_1002318B0);
  v64 = v40;
  return sub_1000D31EC(v64, v79, &qword_1002DC208, &qword_100234830);
}

uint64_t sub_1000EA578(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100234820;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000EA5DC(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  sub_100003724();
  __chkstk_darwin(v5);
  sub_10000308C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_10000D478();
  v33 = v10;
  v11 = *v2;
  Hasher.init(_seed:)();
  v12 = a2[1];
  v40 = *a2;
  v41 = v12;
  v42 = *(a2 + 4);
  sub_1000B72B8(v39);
  type metadata accessor for URL();
  sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v34 = a2;
  sub_10011404C(v39, *(a2 + *(v4 + 24)));
  v13 = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v38 = ~v14;
    v16 = v41;
    v17 = v40;
    v36 = v42;
    v37 = *(&v41 + 1);
    v35 = v41;
    do
    {
      sub_100004580();
      sub_1000ED254();
      v18 = *(v8 + 16);
      v19 = *(v8 + 24);
      v20 = *(v8 + 32);
      v21 = *v8 == v17 && *(v8 + 8) == *(&v17 + 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }

      v22 = 0x4449746E65696C63;
      if (v18 == 1)
      {
        v22 = 0x444972657375;
      }

      v23 = 0xE600000000000000;
      if (v18 != 1)
      {
        v23 = 0xE800000000000000;
      }

      if (v18)
      {
        v24 = v22;
      }

      else
      {
        v24 = 1684632420;
      }

      if (v18)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v26 = 0x444972657375;
        }

        else
        {
          v26 = 0x4449746E65696C63;
        }

        if (v16 == 1)
        {
          v27 = 0xE600000000000000;
        }

        else
        {
          v27 = 0xE800000000000000;
        }
      }

      else
      {
        v27 = 0xE400000000000000;
        v26 = 1684632420;
      }

      if (v24 == v26 && v25 == v27)
      {

        v16 = v35;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v16 = v35;
        if ((v29 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v30 = v19 == v37 && v20 == v36;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_10000BCD4();
        if (static URL.== infix(_:_:)())
        {
          sub_10000BCD4();
          if (sub_100143328())
          {
            sub_1000ED2A4(v8, type metadata accessor for TSDataSyncDatasetGroupConfig);
            sub_1000ED2A4(v34, type metadata accessor for TSDataSyncDatasetGroupConfig);
            sub_100004580();
            sub_1000ED254();
            return 0;
          }
        }
      }

LABEL_40:
      sub_1000ED2A4(v8, type metadata accessor for TSDataSyncDatasetGroupConfig);
      v15 = (v15 + 1) & v38;
    }

    while (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100004580();
  sub_1000ED254();
  v39[0] = *v2;
  sub_1000EB8A8(v33, v15, isUniquelyReferenced_nonNull_native);
  *v2 = v39[0];
  sub_1000ED2FC();
  return 1;
}

BOOL sub_1000EAA70(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1000EBD30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_1000EABBC(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = static Hasher._hash(seed:_:)();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1000EBE98(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1000EAC8C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1000EBF9C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

Swift::Int sub_1000EADD8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v28 = v1;
  v29 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v6 + 32);
    if (v27 >= 64)
    {
      sub_1000EA578(0, (v27 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v27;
    }

    v2 = v28;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 &= v13 - 1;
LABEL_12:
    v32 = *(v30 + 72);
    sub_1000ED2FC();
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();

    String.hash(into:)();
    v18 = v31;
    type metadata accessor for URL();
    sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    sub_10011404C(v33, *&v5[*(v18 + 24)]);
    result = Hasher._finalize()();
    v19 = -1 << *(v8 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v15 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v15 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
    v6 = v29;
LABEL_21:
    *(v15 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1000ED2FC();
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  v6 = v29;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v15 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000EB1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
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
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000EA578(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000EB428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC270, &qword_100234880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1000EA578(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000EB64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC220, &qword_100234840);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
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
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000EA578(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000EB8A8(__int128 *a1, unint64_t a2, char a3)
{
  v44 = a1;
  v45 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v42 = v3;
  v41 = v6;
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000EADD8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1000EC104();
        goto LABEL_48;
      }

      sub_1000EC6FC(v9 + 1);
    }

    v11 = *v3;
    Hasher.init(_seed:)();
    v12 = v44;
    v13 = v44[1];
    v53 = *v44;
    v54 = v13;
    v55 = *(v44 + 4);
    sub_1000B72B8(v52);
    v14 = v45;
    v15 = *(v45 + 20);
    type metadata accessor for URL();
    sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v43 = v15;
    dispatch thunk of Hashable.hash(into:)();
    v40 = *(v12 + *(v14 + 24));
    sub_10011404C(v52, v40);
    v16 = Hasher._finalize()();
    v17 = v11 + 56;
    v50 = v11 + 56;
    v51 = v11;
    v18 = -1 << *(v11 + 32);
    a2 = v16 & ~v18;
    if ((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = ~v18;
      v19 = v54;
      v20 = v53;
      v46 = v55;
      v47 = *(&v54 + 1);
      v48 = *(v6 + 72);
      do
      {
        sub_1000ED254();
        v21 = v8[16];
        v23 = *(v8 + 3);
        v22 = *(v8 + 4);
        v24 = *v8 == v20 && *(v8 + 1) == *(&v20 + 1);
        if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

        v25 = 0x4449746E65696C63;
        if (v21 == 1)
        {
          v25 = 0x444972657375;
        }

        v26 = 0xE600000000000000;
        if (v21 != 1)
        {
          v26 = 0xE800000000000000;
        }

        if (v21)
        {
          v27 = v25;
        }

        else
        {
          v27 = 1684632420;
        }

        if (v21)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0xE400000000000000;
        }

        if (v19)
        {
          if (v19 == 1)
          {
            v29 = 0x444972657375;
          }

          else
          {
            v29 = 0x4449746E65696C63;
          }

          if (v19 == 1)
          {
            v30 = 0xE600000000000000;
          }

          else
          {
            v30 = 0xE800000000000000;
          }
        }

        else
        {
          v30 = 0xE400000000000000;
          v29 = 1684632420;
        }

        if (v27 == v29 && v28 == v30)
        {
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v32 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v33 = v23 == v47 && v22 == v46;
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static URL.== infix(_:_:)() & 1) != 0 && (sub_100143328())
        {
          goto LABEL_51;
        }

LABEL_47:
        sub_1000ED2A4(v8, type metadata accessor for TSDataSyncDatasetGroupConfig);
        a2 = (a2 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_48:
  v34 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000ED2FC();
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_51:
    sub_1000ED2A4(v8, type metadata accessor for TSDataSyncDatasetGroupConfig);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

unint64_t sub_1000EBD30(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000EB1CC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000ECAC0(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000EC30C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1000EBE98(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000EB428(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1000ECCF4(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = static Hasher._hash(seed:_:)();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1000EC464();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_1000EBF9C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000EB64C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000ECEE0(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000EC5A4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1000EC104()
{
  v1 = v0;
  v2 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  __chkstk_darwin(v2 - 8);
  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_1000ED254();
        result = sub_1000ED2FC();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void *sub_1000EC30C()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1000EC464()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC270, &qword_100234880);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000EC5A4()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC220, &qword_100234840);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

Swift::Int sub_1000EC6FC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v26[0] = v1;
    v26[1] = v6;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v12 &= v12 - 1;
LABEL_12:
        v29 = *(v27 + 72);
        sub_1000ED254();
        Hasher.init(_seed:)();
        String.hash(into:)();
        String.hash(into:)();

        String.hash(into:)();
        v17 = v28;
        type metadata accessor for URL();
        sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        sub_10011404C(v30, *&v5[*(v17 + 24)]);
        result = Hasher._finalize()();
        v18 = -1 << *(v8 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v14 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v14 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        result = sub_1000ED2FC();
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v14 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v9;
      while (1)
      {
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v26[0];
          goto LABEL_25;
        }

        v16 = *(v6 + 56 + 8 * v9);
        ++v15;
        if (v16)
        {
          v12 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

Swift::Int sub_1000ECAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000ECCF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC270, &qword_100234880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = static Hasher._hash(seed:_:)();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000ECEE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100099DF4(&qword_1002DC220, &qword_100234840);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1000ED168()
{
  result = qword_1002DC248;
  if (!qword_1002DC248)
  {
    result = swift_getWitnessTable(byte_10023B5E4, &type metadata for SwifCronError, v0, v1);
    atomic_store(result, &qword_1002DC248);
  }

  return result;
}

uint64_t sub_1000ED1BC()
{
  v1 = sub_10000C62C();
  v2(v1);
  sub_100003BF0();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

uint64_t sub_1000ED20C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000ED254()
{
  v1 = sub_10000C62C();
  v2(v1);
  sub_100003BF0();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

uint64_t sub_1000ED2A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000ED2FC()
{
  v1 = sub_10000C62C();
  v2(v1);
  sub_100003BF0();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

uint64_t sub_1000ED37C()
{

  return sub_1000ED2A4(v0, type metadata accessor for TSDataSyncDatasetState);
}

uint64_t sub_1000ED400(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

unint64_t sub_1000ED460()
{
  result = qword_1002DC278;
  if (!qword_1002DC278)
  {
    result = swift_getWitnessTable(byte_100234950, &type metadata for TSDataSyncDatasetGroupTrigger, v0, v1);
    atomic_store(result, &qword_1002DC278);
  }

  return result;
}

void sub_1000ED4B4()
{
  sub_100004168();
  v3 = sub_1000F8350();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v10);
  sub_1000AC3B8();
  if (sub_1000B940C(*v1, *v0))
  {
    v23 = v5;
    type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
    v11 = *(v9 + 48);
    sub_1000F83F8();
    sub_1000F83D8();
    sub_1000071D8(v2);
    if (!v12)
    {
      sub_10000B80C();
      sub_10003D1E4();
      sub_1000071D8(v2 + v11);
      if (!v12)
      {
        sub_100002E60();
        v15 = sub_1000035AC();
        v16(v15);
        sub_100004AC4();
        v19 = sub_1000F5EC0(v17, v18, &protocol conformance descriptor for Date);
        sub_100010DEC(v19);
        v20 = *(v23 + 8);
        v21 = sub_1000049C0();
        v20(v21);
        v22 = sub_1000B31F0();
        v20(v22);
        sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
        goto LABEL_11;
      }

      v13 = sub_1000F828C();
      v14(v13, v3);
LABEL_10:
      sub_100004E24(v2, &qword_1002DACF0, &qword_100232140);
      goto LABEL_11;
    }

    sub_1000071D8(v2 + v11);
    if (!v12)
    {
      goto LABEL_10;
    }

    sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  }

LABEL_11:
  sub_1000027F8();
}