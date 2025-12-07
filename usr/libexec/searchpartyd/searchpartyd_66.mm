uint64_t sub_100754528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 6);
  v7 = *(a2 + 6);
  if (v6)
  {
    if (!v7 || (*(a1 + 5) != *(a2 + 5) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    v9 = a1[56];
    v10 = a2[56];
    if (v9 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_100754620(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  if ((static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

BOOL sub_100754758(uint64_t a1, __int128 *a2)
{
  v85 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v6 - 8);
  v82 = &v78 - v7;
  v83 = sub_1000BC4D4(&qword_1016A89D0, &unk_1013B9410);
  __chkstk_darwin(v83);
  v9 = &v78 - v8;
  v10 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v78 - v15;
  v17 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  __chkstk_darwin(v17);
  v19 = &v78 - v18;
  v20 = *(a1 + 48);
  v88[2] = *(a1 + 32);
  v88[3] = v20;
  v21 = *(a1 + 64);
  v22 = *(a1 + 16);
  v88[0] = *a1;
  v88[1] = v22;
  v23 = a2[3];
  v89[2] = a2[2];
  v89[3] = v23;
  v89[4] = a2[4];
  v24 = *a2;
  v89[1] = a2[1];
  v88[4] = v21;
  v89[0] = v24;
  if ((sub_100753FD8(v88, v89) & 1) == 0)
  {
    return 0;
  }

  v25 = *(a2 + 10);
  if (*(a1 + 80) == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || (sub_1007542C0(*(a1 + 80) & 0xFFFFFFFF01010101, (*(a1 + 88) | (*(a1 + 92) << 32)) & 0xFFFFFFFFFFLL, a2[5] & 0xFFFFFFFF01010101, (*(a2 + 22) | (*(a2 + 92) << 32)) & 0xFFFFFFFFFFLL) & 1) == 0)
  {
    return 0;
  }

  v81 = v9;
  v79 = v5;
  v80 = type metadata accessor for AccessoryInfoResponseContent(0);
  v26 = *(v80 + 24);
  v27 = *(v17 + 48);
  sub_1000D2A70(a1 + v26, v19, &qword_1016A62E8, &qword_1013B3CB0);
  v28 = a2 + v26;
  v29 = v27;
  sub_1000D2A70(v28, &v19[v27], &qword_1016A62E8, &qword_1013B3CB0);
  v30 = *(v11 + 48);
  if (v30(v19, 1, v10) == 1)
  {
    v31 = v30(&v19[v29], 1, v10);
    v32 = v81;
    if (v31 == 1)
    {
      sub_10000B3A8(v19, &qword_1016A62E8, &qword_1013B3CB0);
      goto LABEL_14;
    }

LABEL_12:
    v35 = &qword_1016A89D8;
    v36 = &unk_10140A400;
    v37 = v19;
LABEL_20:
    sub_10000B3A8(v37, v35, v36);
    return 0;
  }

  sub_1000D2A70(v19, v16, &qword_1016A62E8, &qword_1013B3CB0);
  v33 = v29;
  v34 = v30(&v19[v29], 1, v10);
  v32 = v81;
  if (v34 == 1)
  {
    sub_100757B8C(v16, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    goto LABEL_12;
  }

  sub_100757BEC(&v19[v33], v13, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v38 = sub_100755284(v16, v13);
  sub_100757B8C(v13, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_100757B8C(v16, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_10000B3A8(v19, &qword_1016A62E8, &qword_1013B3CB0);
  if (!v38)
  {
    return 0;
  }

LABEL_14:
  v39 = v80;
  v40 = *(v80 + 28);
  v41 = *(v83 + 48);
  sub_1000D2A70(a1 + v40, v32, &qword_1016A62E0, &unk_1013B8C30);
  sub_1000D2A70(a2 + v40, v32 + v41, &qword_1016A62E0, &unk_1013B8C30);
  v42 = *(v84 + 48);
  v43 = v85;
  if (v42(v32, 1, v85) == 1)
  {
    if (v42(v32 + v41, 1, v43) == 1)
    {
      sub_10000B3A8(v32, &qword_1016A62E0, &unk_1013B8C30);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v44 = v82;
  sub_1000D2A70(v32, v82, &qword_1016A62E0, &unk_1013B8C30);
  if (v42(v32 + v41, 1, v43) == 1)
  {
    sub_100757B8C(v44, type metadata accessor for AccessoryInfoResponseContent.Assets);
LABEL_19:
    v35 = &qword_1016A89D0;
    v36 = &unk_1013B9410;
    v37 = v32;
    goto LABEL_20;
  }

  v46 = v32 + v41;
  v47 = v79;
  sub_100757BEC(v46, v79, type metadata accessor for AccessoryInfoResponseContent.Assets);
  v48 = sub_100754620(v44, v47);
  sub_100757B8C(v47, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_100757B8C(v44, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_10000B3A8(v32, &qword_1016A62E0, &unk_1013B8C30);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v49 = *(v39 + 32);
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = *(v39 + 36);
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v85 = *(a1 + v54 + 16);
  v84 = *(a1 + v54 + 24);
  v58 = *(a1 + v54 + 32);
  v57 = *(a1 + v54 + 40);
  v59 = (a2 + v54);
  v60 = *v59;
  v61 = v59[1];
  v63 = v59[2];
  v62 = v59[3];
  v65 = v59[4];
  v64 = v59[5];
  if (v56)
  {
    if (v61)
    {
      v79 = v58;
      v81 = v57;
      if (v55 == v60 && v56 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v85 == v63 && v84 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        if (v79 == v65 && v81 == v64)
        {
          v82 = v64;
          v66 = v79;
          v67 = v81;
          sub_100757C54(v60, v61, v63, v62, v79, v81);
          sub_100757C54(v55, v56, v85, v84, v66, v67);

          sub_1007577BC(v55, v56);
        }

        else
        {
          v83 = v60;
          v73 = v79;
          LODWORD(v82) = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100757C54(v83, v61, v63, v62, v65, v64);
          sub_100757C54(v55, v56, v85, v84, v73, v81);

          sub_1007577BC(v55, v56);
          if ((v82 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_47;
      }

      sub_100757C54(v60, v61, v63, v62, v65, v64);
      sub_100757C54(v55, v56, v85, v84, v79, v81);

      v71 = v55;
      v72 = v56;
LABEL_45:
      sub_1007577BC(v71, v72);
      return 0;
    }

LABEL_43:
    v68 = v57;
    v69 = v59[1];
    v83 = *v59;
    v70 = v58;
    sub_100757C54(v83, v69, v63, v62, v65, v64);
    v82 = v64;
    sub_100757C54(v55, v56, v85, v84, v70, v68);
    sub_1007577BC(v55, v56);
    v71 = v83;
    v72 = v61;
    goto LABEL_45;
  }

  if (v61)
  {
    goto LABEL_43;
  }

LABEL_47:
  v74 = v80;
  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A89E0, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v87 == v86)
  {
    v75 = *(v74 + 44);
    v76 = *(a1 + v75);
    v77 = *(a2 + v75);
    if (v76)
    {
      return v77 && (sub_10038F298(v76, v77) & 1) != 0;
    }

    if (!v77)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100755284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v67[-v12];
  v14 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v15 = __chkstk_darwin(v14);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v67[-v18];
  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = *(a2 + 49);
  if (*(a1 + 49))
  {
    if (!*(a2 + 49))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v23 = *(a1 + 72);
  v24 = *(a2 + 72);
  if (v23)
  {
    if (!v24 || (*(a1 + 64) != *(a2 + 64) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v70 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v26 = *(v14 + 48);
  v72 = v70[11];
  v73 = v26;
  sub_1000D2A70(a1 + v72, v19, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a2 + v72, &v73[v19], &unk_101696AC0, &qword_101390A60);
  v71 = *(v5 + 48);
  v72 = v5 + 48;
  if (v71(v19, 1, v4) == 1)
  {
    if (v71(&v73[v19], 1, v4) == 1)
    {
      sub_10000B3A8(v19, &unk_101696AC0, &qword_101390A60);
      goto LABEL_41;
    }

LABEL_39:
    v27 = v19;
LABEL_47:
    sub_10000B3A8(v27, &qword_1016A8910, &qword_1013BE3A0);
    return 0;
  }

  sub_1000D2A70(v19, v13, &unk_101696AC0, &qword_101390A60);
  if (v71(&v73[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_39;
  }

  (*(v5 + 32))(v7, &v73[v19], v4);
  sub_100751E3C(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v5 + 8);
  v69 = v5 + 8;
  v73 = v28;
  (v28)(v7, v4);
  (v73)(v13, v4);
  sub_10000B3A8(v19, &unk_101696AC0, &qword_101390A60);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v29 = v70[12];
  v30 = *(v14 + 48);
  sub_1000D2A70(a1 + v29, v17, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a2 + v29, &v17[v30], &unk_101696AC0, &qword_101390A60);
  v31 = v71;
  if (v71(v17, 1, v4) == 1)
  {
    if (v31(&v17[v30], 1, v4) == 1)
    {
      sub_10000B3A8(v17, &unk_101696AC0, &qword_101390A60);
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  sub_1000D2A70(v17, v11, &unk_101696AC0, &qword_101390A60);
  if (v31(&v17[v30], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_46:
    v27 = v17;
    goto LABEL_47;
  }

  (*(v5 + 32))(v7, &v17[v30], v4);
  sub_100751E3C(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v5 + 8);
  v34(v7, v4);
  v34(v11, v4);
  sub_10000B3A8(v17, &unk_101696AC0, &qword_101390A60);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v35 = v70[13];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
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
      return 0;
    }
  }

  v40 = v70[14];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      return 0;
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
      return 0;
    }
  }

  v45 = v70[15];
  v46 = *(a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  if ((v46 != *v48 || v47 != v48[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v49 = v70[16];
  v50 = *(a1 + v49);
  v51 = *(a2 + v49);
  if (v50)
  {
    if (!v51 || (sub_10038ED80(v50, v51) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v70[17];
  v53 = *(a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  if ((v53 != *v55 || v54 != v55[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v70[18];
  v57 = *(a1 + v56);
  v58 = *(a2 + v56);
  if (v57)
  {
    if (!v58 || (sub_10038ED80(v57, v58) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v59 = v70[19];
  v60 = (a1 + v59);
  v61 = *(a1 + v59 + 16);
  v62 = a2 + v59;
  if (v61)
  {
    if ((*(v62 + 16) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_85;
  }

  if (*(v62 + 16))
  {
    return 0;
  }

  result = 0;
  if (*v60 == *v62 && v60[1] == *(v62 + 8))
  {
LABEL_85:
    v63 = v70[20];
    v64 = (a1 + v63);
    v65 = *(a1 + v63 + 16);
    v66 = a2 + v63;
    if ((v65 & 1) == 0)
    {
      return (*(v66 + 16) & 1) == 0 && *v64 == *v66 && v64[1] == *(v66 + 8);
    }

    return (*(v66 + 16) & 1) != 0;
  }

  return result;
}

double sub_100755AF4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A8A78, &qword_1013B9470);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_1000035D0(a1, a1[3]);
  sub_100758CA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v7;
}

void *sub_100755CA4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8C08, &qword_1013B9E60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1007596E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A8C18, &qword_1013B9E68);
    sub_100759AD4(&qword_1016A8C20, &qword_1016A8C28, &unk_1013B9580, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

void *sub_100755E60(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8C30, &qword_1013B9E70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1007599E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A8C40, &qword_1013B9E78);
    sub_100759A38(&qword_1016A8C48, &qword_1016A8C50, &unk_1013B927C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

uint64_t sub_10075601C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000010135E680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341454C45487369 && a2 == 0xEF79726F73736563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5565636166727573 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x70756B6F6F4C6E73 && a2 == 0xEB000000006C7255)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_10075644C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8A18, &qword_1013B9440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100758A2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v44) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = v10 & 1;
  LOBYTE(v44) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v38 = v11;
  LOBYTE(v44) = 2;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 3;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 4;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 5;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 6;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 7;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 8;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 9;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 10;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v44) = 11;
  *&v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v28 + 1) = v14;
  v61 = 12;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v15;
  (*(v6 + 8))(v8, v5);
  v25 = v9;
  *&v39 = v9;
  v24 = v60;
  BYTE8(v39) = v60;
  v16 = v38;
  *&v40 = v38;
  *(&v40 + 1) = v13;
  v17 = v37;
  LOBYTE(v41) = v37;
  v18 = v36;
  BYTE1(v41) = v36;
  v19 = v35;
  BYTE2(v41) = v35;
  LOBYTE(v9) = v34;
  BYTE3(v41) = v34;
  BYTE4(v41) = v33;
  BYTE5(v41) = v32;
  BYTE6(v41) = v31;
  BYTE7(v41) = v30;
  BYTE8(v41) = v29;
  v42 = v28;
  *&v43 = v27;
  *(&v43 + 1) = v26;
  sub_10075798C(&v39, &v44);
  sub_100007BAC(a1);
  v44 = v25;
  v45 = v24;
  v46 = v16;
  v47 = v13;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v51 = v9;
  v52 = v33;
  v53 = v32;
  v54 = v31;
  v55 = v30;
  v56 = v29;
  v57 = v28;
  v58 = v27;
  v59 = v26;
  result = sub_10075780C(&v44);
  v21 = v42;
  a2[2] = v41;
  a2[3] = v21;
  a2[4] = v43;
  v22 = v40;
  *a2 = v39;
  a2[1] = v22;
  return result;
}

uint64_t sub_1007569D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E756F5379616C70 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C656363417475 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756B6F6F4C63666ELL && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756B6F6F4C656C62 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6857796669746F6ELL && a2 == 0xEF646E756F466E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7449656D616E6572 && a2 == 0xEA00000000006D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69646E69467462 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135E640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1886544245 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x325665676E6172 && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_100756E00(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A00, &qword_1013B9430);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_1007589D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v38 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 3;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 4;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = 5;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = 6;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = 7;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v7;
  v22 = v11;
  v30 = 8;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = 9;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = 10;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = 11;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = 12;
  v16[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100007BAC(a1);
  if (v8)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    v15 = 0x1000000;
  }

  else
  {
    v15 = 0;
  }

  return (v25 << 32) | (v24 << 40) | (v23 << 48) | v21 & 1 | v13 | v14 | v15 | (v22 << 56);
}

uint64_t sub_1007571AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644974726170 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795474726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E74726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D795374726170 && a2 == 0xEA00000000006C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100757374@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8920, &qword_1013B93F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1007576AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v30[0] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v30[0] = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v10;
  v30[0] = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v11;
  v30[0] = 3;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v12;
  v38 = 4;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v27) = v9;
  v14 = v25;
  v15 = v26;
  *(&v27 + 1) = v25;
  *&v28 = v26;
  v16 = v24;
  *(&v28 + 1) = v23;
  *v29 = v24;
  v17 = v22;
  *&v29[8] = v21;
  *&v29[16] = v22;
  v29[24] = v13;
  sub_100757700(&v27, v30);
  sub_100007BAC(a1);
  v30[0] = v9;
  v31 = v14;
  v32 = v15;
  v33 = v23;
  v34 = v16;
  v35 = v21;
  v36 = v17;
  v37 = v13;
  result = sub_100757738(v30);
  v19 = v28;
  *a2 = v27;
  a2[1] = v19;
  a2[2] = *v29;
  *(a2 + 41) = *&v29[9];
  return result;
}

unint64_t sub_1007576AC()
{
  result = qword_1016A8928;
  if (!qword_1016A8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8928);
  }

  return result;
}

unint64_t sub_100757768()
{
  result = qword_1016A8940;
  if (!qword_1016A8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8940);
  }

  return result;
}

uint64_t sub_1007577BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10075783C()
{
  result = qword_1016A8948;
  if (!qword_1016A8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8948);
  }

  return result;
}

unint64_t sub_100757890()
{
  result = qword_1016A8950;
  if (!qword_1016A8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8950);
  }

  return result;
}

unint64_t sub_1007578E4()
{
  result = qword_1016A8968;
  if (!qword_1016A8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8968);
  }

  return result;
}

unint64_t sub_100757938()
{
  result = qword_1016A8978;
  if (!qword_1016A8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8978);
  }

  return result;
}

unint64_t sub_1007579C4()
{
  result = qword_1016A8988;
  if (!qword_1016A8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8988);
  }

  return result;
}

unint64_t sub_100757A18()
{
  result = qword_1016A8990;
  if (!qword_1016A8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8990);
  }

  return result;
}

unint64_t sub_100757A6C()
{
  result = qword_1016A89A8;
  if (!qword_1016A89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89A8);
  }

  return result;
}

uint64_t sub_100757AC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016A86D0, "֫\n");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100757B38()
{
  result = qword_1016A89C0;
  if (!qword_1016A89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89C0);
  }

  return result;
}

uint64_t sub_100757B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100757BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100757C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100757CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000010135E820 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135E8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEE00736D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135E310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101347AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010135E900 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1007581F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xED00006E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E7C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78326E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78336E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E800 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100758614(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x707972636E453165 && a2 == 0xEC0000006E6F6974;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707972636E453265 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697265563273 && a2 == 0xEE006E6F69746163)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100758738@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A89E8, &qword_1013B9420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100758984();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100007BAC(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_100758984()
{
  result = qword_1016A89F0;
  if (!qword_1016A89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89F0);
  }

  return result;
}

unint64_t sub_1007589D8()
{
  result = qword_1016A8A08;
  if (!qword_1016A8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A08);
  }

  return result;
}

unint64_t sub_100758A2C()
{
  result = qword_1016A8A20;
  if (!qword_1016A8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A20);
  }

  return result;
}

unint64_t sub_100758A80()
{
  result = qword_1016A8A38;
  if (!qword_1016A8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A38);
  }

  return result;
}

uint64_t sub_100758AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100758B3C()
{
  result = qword_1016A8A50;
  if (!qword_1016A8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A50);
  }

  return result;
}

unint64_t sub_100758B90()
{
  result = qword_1016A8A60;
  if (!qword_1016A8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A60);
  }

  return result;
}

uint64_t sub_100758BE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100758C50()
{
  result = qword_1016A8A70;
  if (!qword_1016A8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A70);
  }

  return result;
}

unint64_t sub_100758CA4()
{
  result = qword_1016A8A80;
  if (!qword_1016A8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A80);
  }

  return result;
}

void sub_100758DA8(uint64_t a1)
{
  sub_100758E1C();
  if (v1 <= 0x3F)
  {
    sub_100758E64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100758E1C()
{
  if (!qword_1016A8B10)
  {
    v0 = type metadata accessor for AccessoryInfoResponseContent(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1016A8B10);
    }
  }
}

void *sub_100758E64()
{
  result = qword_1016A8B18;
  if (!qword_1016A8B18)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1016A8B18);
  }

  return result;
}

unint64_t sub_100758EA8()
{
  result = qword_1016A8B48;
  if (!qword_1016A8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B48);
  }

  return result;
}

unint64_t sub_100758F00()
{
  result = qword_1016A8B50;
  if (!qword_1016A8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B50);
  }

  return result;
}

unint64_t sub_100758F58()
{
  result = qword_1016A8B58;
  if (!qword_1016A8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B58);
  }

  return result;
}

unint64_t sub_100758FB0()
{
  result = qword_1016A8B60;
  if (!qword_1016A8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B60);
  }

  return result;
}

unint64_t sub_100759008()
{
  result = qword_1016A8B68;
  if (!qword_1016A8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B68);
  }

  return result;
}

unint64_t sub_100759060()
{
  result = qword_1016A8B70;
  if (!qword_1016A8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B70);
  }

  return result;
}

unint64_t sub_1007590B8()
{
  result = qword_1016A8B78;
  if (!qword_1016A8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B78);
  }

  return result;
}

unint64_t sub_100759110()
{
  result = qword_1016A8B80;
  if (!qword_1016A8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B80);
  }

  return result;
}

unint64_t sub_100759168()
{
  result = qword_1016A8B88;
  if (!qword_1016A8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B88);
  }

  return result;
}

unint64_t sub_1007591C0()
{
  result = qword_1016A8B90;
  if (!qword_1016A8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B90);
  }

  return result;
}

unint64_t sub_100759218()
{
  result = qword_1016A8B98;
  if (!qword_1016A8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B98);
  }

  return result;
}

unint64_t sub_100759270()
{
  result = qword_1016A8BA0;
  if (!qword_1016A8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BA0);
  }

  return result;
}

unint64_t sub_1007592C8()
{
  result = qword_1016A8BA8;
  if (!qword_1016A8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BA8);
  }

  return result;
}

unint64_t sub_100759320()
{
  result = qword_1016A8BB0;
  if (!qword_1016A8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BB0);
  }

  return result;
}

unint64_t sub_100759378()
{
  result = qword_1016A8BB8;
  if (!qword_1016A8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BB8);
  }

  return result;
}

unint64_t sub_1007593D0()
{
  result = qword_1016A8BC0;
  if (!qword_1016A8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BC0);
  }

  return result;
}

unint64_t sub_100759428()
{
  result = qword_1016A8BC8;
  if (!qword_1016A8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BC8);
  }

  return result;
}

unint64_t sub_100759480()
{
  result = qword_1016A8BD0;
  if (!qword_1016A8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BD0);
  }

  return result;
}

unint64_t sub_1007594D8()
{
  result = qword_1016A8BD8;
  if (!qword_1016A8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BD8);
  }

  return result;
}

unint64_t sub_100759530()
{
  result = qword_1016A8BE0;
  if (!qword_1016A8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BE0);
  }

  return result;
}

unint64_t sub_100759588()
{
  result = qword_1016A8BE8;
  if (!qword_1016A8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BE8);
  }

  return result;
}

unint64_t sub_1007595E0()
{
  result = qword_1016A8BF0;
  if (!qword_1016A8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BF0);
  }

  return result;
}

unint64_t sub_100759638()
{
  result = qword_1016A8BF8;
  if (!qword_1016A8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BF8);
  }

  return result;
}

unint64_t sub_100759690()
{
  result = qword_1016A8C00;
  if (!qword_1016A8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C00);
  }

  return result;
}

unint64_t sub_1007596E4()
{
  result = qword_1016A8C10;
  if (!qword_1016A8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C10);
  }

  return result;
}

uint64_t sub_100759738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572617774666F73 && a2 == 0xEC0000006F666E49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEA00000000007379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1007599E4()
{
  result = qword_1016A8C38;
  if (!qword_1016A8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C38);
  }

  return result;
}

uint64_t sub_100759A38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A8C40, &qword_1013B9E78);
    sub_100751E3C(a2, type metadata accessor for AccessoryInfoResponseContent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100759AD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A8C18, &qword_1013B9E68);
    sub_100751E3C(a2, type metadata accessor for AccessoryInfoResponseType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100759B70()
{
  result = qword_1016A8C78;
  if (!qword_1016A8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C78);
  }

  return result;
}

unint64_t sub_100759BF8()
{
  result = qword_1016A8C98;
  if (!qword_1016A8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C98);
  }

  return result;
}

unint64_t sub_100759C50()
{
  result = qword_1016A8CA0;
  if (!qword_1016A8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CA0);
  }

  return result;
}

unint64_t sub_100759CA8()
{
  result = qword_1016A8CA8;
  if (!qword_1016A8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CA8);
  }

  return result;
}

unint64_t sub_100759D00()
{
  result = qword_1016A8CB0;
  if (!qword_1016A8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CB0);
  }

  return result;
}

unint64_t sub_100759D58()
{
  result = qword_1016A8CB8;
  if (!qword_1016A8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CB8);
  }

  return result;
}

unint64_t sub_100759DB0()
{
  result = qword_1016A8CC0;
  if (!qword_1016A8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CC0);
  }

  return result;
}

unint64_t sub_100759E08()
{
  result = qword_1016A8CC8;
  if (!qword_1016A8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CC8);
  }

  return result;
}

unint64_t sub_100759E60()
{
  result = qword_1016A8CD0;
  if (!qword_1016A8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CD0);
  }

  return result;
}

unint64_t sub_100759EB8()
{
  result = qword_1016A8CD8;
  if (!qword_1016A8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CD8);
  }

  return result;
}

uint64_t sub_100759F1C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B0E0);
  sub_1000076D4(v0, qword_10177B0E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100759F98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B0F8);
  v1 = sub_1000076D4(v0, qword_10177B0F8);
  if (qword_101694870 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B0E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10075A060(uint64_t a1)
{
  v13 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000013;
  v1[15] = 0x80000001013BA220;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v7 = qword_10177B2E8;
  type metadata accessor for SPObserverAnalyticsAttempts();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[18] = v8;
  v10[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v1[20] = 0;
  v1[21] = 0;
  v1[19] = 0;

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100766F1C(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v1[22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[23] = 0;
  v1[16] = v13;
  v1[17] = sub_10090A034(_swiftEmptyArrayStorage);
  return v1;
}

uint64_t sub_10075A370()
{
  v1[179] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[185] = v2;
  v1[191] = *(v2 - 8);
  v1[192] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[193] = v3;
  v1[194] = *(v3 - 8);
  v1[195] = swift_task_alloc();

  return _swift_task_switch(sub_10075A48C, v0, 0);
}

uint64_t sub_10075A48C()
{
  v1 = v0[195];
  v9 = v0[194];
  v10 = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v4 = v0[185];
  v5 = v0[179];
  v0[171] = sub_100766DDC;
  v0[172] = v5;
  v0[167] = _NSConcreteStackBlock;
  v0[168] = 1107296256;
  v0[169] = sub_100006684;
  v0[170] = &unk_101631BE8;
  v6 = _Block_copy(v0 + 167);

  static DispatchQoS.unspecified.getter();
  v0[173] = _swiftEmptyArrayStorage;
  sub_100766F1C(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);
  (*(v3 + 8))(v2, v4);
  (*(v9 + 8))(v1, v10);

  v7 = swift_task_alloc();
  v0[196] = v7;
  *v7 = v0;
  v7[1] = sub_10075A6E4;

  return sub_10075E068();
}

uint64_t sub_10075A6E4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 1576) = v3;
  *v3 = v2;
  v3[1] = sub_10075A824;

  return sub_10075D084();
}

uint64_t sub_10075A824()
{
  v1 = *(*v0 + 1432);

  return _swift_task_switch(sub_10075A934, v1, 0);
}

uint64_t sub_10075A934()
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_10075AA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10075AAEC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-1] - v4;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B2E8;
  v10 = type metadata accessor for SPObserverAnalytics();
  v11 = &off_101631930;
  v9[0] = a1;
  __chkstk_darwin(v10);
  *(&v8 - 2) = v9;
  *(&v8 - 1) = v6;

  OS_dispatch_queue.sync<A>(execute:)();
  (*(v3 + 8))(v5, v2);
  return sub_100007BAC(v9);
}

uint64_t sub_10075AC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_10075ADA8();
}

uint64_t sub_10075AD18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10075C000();
}

uint64_t sub_10075ADA8()
{
  v1[2] = v0;
  sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for FinderStateInfo(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696C48, &unk_10138B590);
  v1[8] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v1;
  v5[1] = sub_10075AFE4;

  return daemon.getter();
}

uint64_t sub_10075AFE4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100766F1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_10075B1C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10075B1C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10075BD84, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[20] = v6;
    *v6 = v4;
    v6[1] = sub_10075B36C;
    v7 = v3[11];

    return sub_1008488EC(v7);
  }
}

uint64_t sub_10075B36C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10075B47C, v1, 0);
}

uint64_t sub_10075B47C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_100766F1C(&qword_1016A8E70, v4, type metadata accessor for SPObserverAnalytics, &unk_1013BA340);
  v6 = v0[19];
  v0[21] = v5;
  v0[22] = v6;
  v7 = v0[2];
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_10075B59C;
  v9 = v0[12];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v5, v9);
}

uint64_t sub_10075B59C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10075B6AC, v1, 0);
}

uint64_t sub_10075B6AC()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_11:

    v22 = v0[1];

    return v22();
  }

  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  v7 = v1 + *(v2 + 48);
  v8 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_100029350(v7 + *(v8 + 48), v3, type metadata accessor for FinderStateInfo);
  sub_100748840(v7, v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_10000B3A8(v9, &qword_101696C40, &unk_1013B8520);
LABEL_10:
    sub_100766D74(v0[7], type metadata accessor for FinderStateInfo);
    goto LABEL_11;
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_100029350(v0[3], v11, type metadata accessor for FinderStateInfo);
  if (*v11 == *v10)
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    v21 = v0[6];

    sub_100766D74(v21, type metadata accessor for FinderStateInfo);
    (*(v19 + 8))(v18, v20);
    goto LABEL_10;
  }

  v12 = v0[7];
  type metadata accessor for AnalyticsEvent(0);
  v13 = swift_allocObject();
  v0[24] = v13;
  swift_defaultActor_initialize();
  *(v13 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v14 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v15 = type metadata accessor for DispatchTime();
  v16 = *(*(v15 - 8) + 56);
  v16(&v13[v14], 1, 1, v15);
  v16(&v13[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v15);
  *(v13 + 15) = 0xD00000000000002BLL;
  *(v13 + 16) = 0x800000010135EBF0;
  v17 = swift_task_alloc();
  v0[25] = v17;
  *(v17 + 16) = v12;

  return _swift_task_switch(sub_10075BA6C, v13, 0);
}

uint64_t sub_10075BA6C()
{
  v1 = v0[22];
  sub_10115BE7C(sub_100766DD4);
  if (v1)
  {
  }

  v0[26] = 0;

  type metadata accessor for AnalyticsPublisher();
  v0[27] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_10075BB60;
  v3 = v0[24];

  return sub_101163F78(v3);
}

uint64_t sub_10075BB60()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10075BC8C, v1, 0);
}

uint64_t sub_10075BC8C()
{
  v1 = v0[6];
  v2 = v0[7];

  sub_100766D74(v1, type metadata accessor for FinderStateInfo);
  sub_100766D74(v2, type metadata accessor for FinderStateInfo);
  v0[22] = v0[26];
  v3 = v0[21];
  v4 = v0[2];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10075B59C;
  v6 = v0[12];
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v7, v4, v3, v6);
}

uint64_t sub_10075BD84()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FinderStateObserver service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_10075BEE0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x7669746341646964;
  *(inited + 40) = 0xEB00000000657461;
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6E6F73616572;
  *(inited + 72) = 0xE600000000000000;
  sub_100008BB8(0, &unk_1016B27A0, NSString_ptr);
  *(inited + 80) = NSString.init(stringLiteral:)();
  *(inited + 88) = 0;
  v3 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10075C000()
{
  v1[6] = v0;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  v1[7] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_10075C19C;

  return daemon.getter();
}

uint64_t sub_10075C19C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v2[17] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100766F1C(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_10075C384;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10075C384(uint64_t a1)
{
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = sub_10075C8CC;
  }

  else
  {
    v6 = sub_10075C4C8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10075C4C8()
{
  v1 = *(v0 + 152);
  sub_10001B108();
  *(v0 + 160) = v2;
  if (v1)
  {

    sub_100766F1C(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10075C858;
  }

  else
  {
    sub_100766F1C(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_10075C5F8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10075C5F8()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10075C670, v1, 0);
}

uint64_t sub_10075C670(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v1[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v1[21] = sub_100766F1C(&qword_1016A8E70, v5, type metadata accessor for SPObserverAnalytics, &unk_1013BA340);
  v6 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v7 = swift_task_alloc();
  v1[22] = v7;
  *v7 = v1;
  v7[1] = sub_10075CA00;
  v8 = v1[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 2, v8, v6);
}

uint64_t sub_10075C858()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10075C8CC, v1, 0);
}

uint64_t sub_10075C8CC()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconManagerService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10075CA00()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100251160;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10075CB98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10075CB98()
{
  v1 = *(v0 + 48);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_10075CBC4, v1, 0);
}

uint64_t sub_10075CBC4()
{
  if (*(v0 + 25))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    *(v3 + 168) = *(v0 + 192);
    v4 = *(v3 + 184);
    *(v0 + 200) = v4;
    if (v4)
    {
      v12 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

      v5 = swift_task_alloc();
      *(v0 + 208) = v5;
      *v5 = v0;
      v5[1] = sub_10075CE24;
      v6 = *(v0 + 56);

      return v12(v6);
    }

    else
    {
      v7 = *(v0 + 56);
      v8 = type metadata accessor for XPCActivity.State();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      sub_10000B3A8(v7, &unk_10169BA88, &qword_101395670);
      v9 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_10075CA00;
      v11 = *(v0 + 88);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v11, v9);
    }
  }
}

uint64_t sub_10075CE24()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10075CF50, v1, 0);
}

uint64_t sub_10075CF50()
{
  v1 = v0[7];
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  v3 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_10075CA00;
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v5, v3);
}

uint64_t sub_10075D084()
{
  v1[3] = v0;
  v2 = sub_1000BC4D4(&qword_1016A8E88, &qword_1013BA3F8);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016A8E90, &unk_1013BA400);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_10075D1E8;

  return daemon.getter();
}

uint64_t sub_10075D1E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10075D3CC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10075D3CC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 24);

    v5 = sub_10075D818;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_10075D524;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_10075D524(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 112) = sub_100A96C40();

  return _swift_task_switch(sub_10075D598, v2, 0);
}

uint64_t sub_10075D598()
{
  v10 = v0[8];
  v1 = v0[6];
  v9 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v7 = v0[9];
  v8 = v0[3];
  v0[2] = v0[14];
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_1016A8E98, &qword_1016A8E88, &qword_1013BA3F8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  Publisher.filter(_:)();
  (*(v2 + 8))(v1, v3);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A8EA0, &qword_1016A8E90, &unk_1013BA400, &protocol conformance descriptor for Publishers.Filter<A>);
  v4 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v7, v9);
  *(v8 + 160) = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_10075D818()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

double sub_10075D940@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v4);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10075D9C4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_10075DA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_10025EDD4(0, 0, v5, &unk_1013BA418, v7);
}

uint64_t sub_10075DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10075DBC0, 0, 0);
}

uint64_t sub_10075DBC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10075DCD8, Strong, 0);
  }

  else
  {
    v2 = v0[6];
    v3 = type metadata accessor for XPCActivity.State();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_10000B3A8(v2, &unk_10169BA88, &qword_101395670);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10075DCD8()
{
  *(v0 + 64) = *(*(v0 + 56) + 184);

  return _swift_task_switch(sub_10075DD50, 0, 0);
}

uint64_t sub_10075DD50()
{
  if (v0[8])
  {
    v7 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_10075DE94;
    v2 = v0[6];

    return v7(v2);
  }

  else
  {
    v4 = v0[6];
    v5 = type metadata accessor for XPCActivity.State();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_10000B3A8(v4, &unk_10169BA88, &qword_101395670);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10075DE94()
{

  return _swift_task_switch(sub_10075DFAC, 0, 0);
}

uint64_t sub_10075DFAC()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10075E068()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for XPCActivity.State();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_10075E1AC;

  return daemon.getter();
}

uint64_t sub_10075E1AC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10075E390;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10075E390(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  v4 = *(v3 + 24);
  if (v1)
  {

    v5 = sub_10075EAD4;
  }

  else
  {

    v5 = sub_10075E4F4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10075E4F4()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for XPCActivity();
  static DispatchQoS.default.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  swift_retain_n();
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10075E660;
  v7 = v0[8];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000034, 0x800000010135EA50, v7, &unk_1013BA3A0, v4, &unk_1013BA3B0, v5);
}

uint64_t sub_10075E660(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[14] = a1;

  v7 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v3;
  v4[1] = sub_10075E7C4;
  v5 = v2[7];

  return v7(v5);
}

uint64_t sub_10075E7C4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10075E930, v4, 0);
}

uint64_t sub_10075E930()
{
  *(v0[3] + 184) = v0[14];

  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v1 = v0[3];

  v2 = AnyCurrentValuePublisher.publisher.getter();

  v0[2] = v2;

  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v3 = Publisher<>.sink(receiveValue:)();

  *(v1 + 152) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10075EAD4()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10075EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v6 = type metadata accessor for XPCActivity.Criteria.Options();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Priority();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for XPCActivity.Criteria();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10075EDB0, a4, 0);
}

uint64_t sub_10075EDB0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_1000D2A70(v0[10], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    sub_10000B3A8(v0[19], &qword_10169E370, &qword_1013BA3F0);

    return _swift_task_switch(sub_10075EF44, v4, 0);
  }

  else
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[9];
    v9 = *(v6 + 32);
    v9(v5, v0[19], v7);
    v9(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10075EF44()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_10075F030;
  v3 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v3, v2);
}

uint64_t sub_10075F030()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10075F148, v1, 0);
}

uint64_t sub_10075F148()
{
  v1 = v0[12];
  v0[24] = v0[7];
  return _swift_task_switch(sub_10075F16C, v1, 0);
}

uint64_t sub_10075F16C()
{
  if (qword_101695510 != -1)
  {
LABEL_14:
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  if (*(v0 + 200) == 1 || *(*(v0 + 96) + 168) == 1)
  {
    v1 = *(v0 + 192);
    v2 = v1 + 32;
    v3 = -*(v1 + 16);
    v4 = -1;
    while (v3 + v4 != -1)
    {
      if (++v4 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v5 = v2 + 40;
      sub_10001F280(v2, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v6);
      v8 = (*(v7 + 96))(v6, v7);
      sub_100007BAC((v0 + 16));
      v2 = v5;
      if (v8)
      {
        v9 = *(v0 + 168);
        v17 = *(v0 + 160);
        v11 = *(v0 + 136);
        v10 = *(v0 + 144);
        v12 = *(v0 + 128);
        v13 = *(v0 + 72);

        (*(v11 + 104))(v10, enum case for XPCActivity.Priority.utility(_:), v12);
        sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10138B360;
        static XPCActivity.Criteria.Options.allowBattery.getter();
        static XPCActivity.Criteria.Options.significantUserInactivity.getter();
        static XPCActivity.Criteria.Options.requiresClassC.getter();
        *(v0 + 64) = v14;
        sub_100766F1C(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
        sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
        sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
        (*(v9 + 56))(v13, 0, 1, v17);
        goto LABEL_10;
      }
    }
  }

  (*(*(v0 + 168) + 56))(*(v0 + 72), 1, 1, *(v0 + 160));
LABEL_10:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10075F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for XPCActivity.State();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10075F58C, a3, 0);
}

uint64_t sub_10075F58C()
{
  v42 = v0;
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B0F8);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v9)
  {
    buf = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *buf = 136315138;
    sub_100766F1C(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v38 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v41);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v38, "User Stats activity state: %s.", buf, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);
  v6(v20, *(v0 + 32), v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      if (qword_101695510 != -1)
      {
        swift_once();
      }

      AnyCurrentValuePublisher.value.getter();

      if (*(v0 + 104) == 1 || *(*(v0 + 40) + 168) == 1)
      {
        v27 = *(v0 + 48);
        v28 = sub_10075FB4C;
        v29 = 0;
LABEL_30:

        return _swift_task_switch(v28, v27, v29);
      }

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Not the me device or more than one connectable device. Skipping user stats reporting.", v36, 2u);
      }

      type metadata accessor for XPCActivity();
      sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v37;
      v33 = sub_10075FF20;
LABEL_29:
      v28 = v33;
      v27 = v30;
      v29 = v32;
      goto LABEL_30;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      v33 = sub_10075FAE0;
      goto LABEL_29;
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v17(*(v0 + 72), *(v0 + 56));
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10075FAE0()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100766FD0, v1, 0);
}

uint64_t sub_10075FB4C()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_10075FC38;
  v3 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_10075FC38()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10075FD50, v1, 0);
}

uint64_t sub_10075FD50()
{
  v1 = v0[5];
  v0[12] = v0[2];
  return _swift_task_switch(sub_10075FD74, v1, 0);
}

uint64_t sub_10075FD74()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  static Transaction.named<A>(_:with:)();

  type metadata accessor for XPCActivity();
  sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10075FEB4, v5, v4);
}

uint64_t sub_10075FEB4()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100766FD0, v1, 0);
}

uint64_t sub_10075FF20()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_10075FF8C, v1, 0);
}

uint64_t sub_10075FF8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10075FFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v4, &v24);
      v6 = v25;
      v7 = v26;
      sub_1000035D0(&v24, v25);
      if ((*(v7 + 96))(v6, v7))
      {
        sub_100031694(&v24, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v5[2] + 1, 1);
          v5 = v27;
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          sub_100025B1C((v9 > 1), v10 + 1, 1);
        }

        v11 = v22;
        v12 = v23;
        v13 = sub_10015049C(v21, v22);
        __chkstk_darwin(v13);
        v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15);
        sub_1006252D4(v10, v15, &v27, v11, v12);
        sub_100007BAC(v21);
        v5 = v27;
      }

      else
      {
        sub_100007BAC(&v24);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v17 = v5[2];
  if (v17)
  {
    v18 = (v5 + 4);
    do
    {
      sub_10001F280(v18, &v24);
      sub_100760228(&v24, a1);
      sub_100007BAC(&v24);
      v18 += 40;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_100760228(void *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UUID();
  v46 = *(v44 - 8);
  v9 = *(v46 + 64);
  v10 = __chkstk_darwin(v44);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v14 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v14);
  (*(*(*(v13 + 8) + 8) + 32))(v14);
  v15 = v3;
  static Date.trustedNow.getter(v8);
  LOBYTE(v14) = sub_10073AF28(v12, v8);
  v16 = *(v6 + 8);
  v16(v8, v5);
  if (v14)
  {
    static Date.trustedNow.getter(v8);
    sub_10073AD10(v12, v8);
    v16(v8, v5);
    v39 = v15;
    v17 = sub_100892134(v12);
    v18 = v46;
    v19 = *(v46 + 16);
    v40 = v17;
    v41 = v46 + 16;
    v42 = v19;
    v20 = v44;
    v19(v45, v12, v44);
    sub_10001F280(a1, v47);
    v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v38 = v21;
    v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v37 = *(v18 + 32);
    v37(v24 + v21, v45, v20);
    sub_100031694(v47, v24 + v22);
    *(v24 + v23) = v39;
    v25 = v43;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;

    Future.addSuccess(block:)();

    v26 = v45;
    v42(v45, v12, v20);
    v27 = swift_allocObject();
    v37(v27 + v38, v26, v20);
    *(v27 + v22) = v25;

    Future.addFailure(block:)();

    v28 = v46;
  }

  else
  {
    v28 = v46;
    v20 = v44;
    v29 = static os_log_type_t.default.getter();
    if (qword_101695020 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C368;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    v32 = UUID.uuidString.getter();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "SPObserverAnalytics: Skipping reportDeviceUserStats - device recently reported %@", 81, 2, v31);
  }

  return (*(v28 + 8))(v12, v20);
}

uint64_t sub_1007606C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_10025EDD4(0, 0, v5, &unk_1013BA3C0, v7);
}

uint64_t sub_1007607D0()
{
  v1 = type metadata accessor for XPCActivity.State();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v5 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1007608E0;

  return v5(v2);
}

uint64_t sub_1007608E0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100760A38, 0, 0);
}

uint64_t sub_100760A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100760A98()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100760AF8()
{
  sub_100760A98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100760B48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SPObserverAnalytics();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100760BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SPObserverAnalytics();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100760CB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SPObserverAnalytics();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100760D5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SPObserverAnalytics();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100760E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10075A370();
}

uint64_t sub_100760E90()
{
  type metadata accessor for SPObserverAnalytics();
  sub_100766F1C(&qword_1016A8E78, v0, type metadata accessor for SPObserverAnalytics, &unk_1013BA2E0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100760EF8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  sub_100034E6C(a1, v7, type metadata accessor for BeaconObservation);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_100029350(v7, v10 + v8, type metadata accessor for BeaconObservation);
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100761098(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for BeaconObservation(0);
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v2[19] = *(v6 + 64);
  v2[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[21] = v7;
  *v7 = v2;
  v7[1] = sub_100761248;

  return daemon.getter();
}

uint64_t sub_100761248(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10076142C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10076142C(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (v1)
  {

    v3 = sub_10076157C;
  }

  else
  {

    v3 = sub_1007616B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10076157C()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1007616B0()
{
  v1 = v0[9];
  v2 = *(v1 + *(v0[17] + 24));
  if ((v2 - 33) < 3)
  {
    v3 = v0[24];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    v7 = v0[16];
    v20 = v0[15];
    v21 = v0[14];
    v8 = v0[11];
    v19 = v0[12];
    v9 = v0[10];
    v18 = v0[13];
    sub_100034E6C(v1, v5, type metadata accessor for BeaconObservation);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_100029350(v5, v11 + v10, type metadata accessor for BeaconObservation);
    *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    v0[6] = sub_1007659C0;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101631990;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_100766F1C(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v19 + 8))(v18, v8);
    (*(v20 + 8))(v7, v21);
LABEL_7:

    v17 = v0[1];

    return v17();
  }

  if (v2 != 30)
  {
    goto LABEL_7;
  }

  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_100761A30;
  v14 = v0[24];
  v15 = v0[9];

  return sub_100764F34(v15, v14);
}

uint64_t sub_100761A30()
{

  return _swift_task_switch(sub_100761B2C, 0, 0);
}

uint64_t sub_100761B2C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100761BAC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000010135CA90;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v7 = a1;
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F697461727564;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = NSNumber.init(integerLiteral:)(0);
  *(inited + 88) = 0;
  v8 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a1)
  {
    return v8;
  }

  result = [v7 systemVersion];
  if (result)
  {
    v10 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v8;
    sub_100FFC418(v10, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v12 = v42;
    result = [v7 systemVersion];
    if (result)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v12;
      sub_100FFC418(v13, 0, 0xD00000000000001BLL, 0x8000000101356E90, v14);
      v15 = v42;
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v7, "batteryLevel")}];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v15;
      sub_100FFC418(v16, 0, 0x4C79726574746162, 0xEC0000006C657665, v17);
      v18 = v42;
      v19 = [v7 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100766F1C(&qword_1016964D0, 255, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16) && (v21 = sub_100777014(), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);

        [v23 state];
      }

      else
      {
      }

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v18;
      sub_100FFC418(isa, 0, 0x6563697665447369, 0xEF6465687361654CLL, v25);
      v26 = v42;
      v27 = [v7 connected];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v26;
      sub_100FFC418(v27, 1, 0xD000000000000011, 0x8000000101350630, v28);
      v8 = v42;
      v29 = [v7 role];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 role];

        if (!v31)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = String._bridgeToObjectiveC()();
        }

        v32 = swift_isUniquelyReferenced_nonNull_native();
        v42 = v8;
        sub_100FFC418(v31, 0, 1701605234, 0xE400000000000000, v32);
        v8 = v42;
      }

      v33 = [objc_opt_self() sharedInstance];
      v34 = [v33 isInternalBuild];

      if (v34 && (v35 = [v7 identifier], static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v35, UUID.uuidString.getter(), (*(v3 + 8))(v5, v2), v36 = String._bridgeToObjectiveC()(), , v37 = swift_isUniquelyReferenced_nonNull_native(), v42 = v8, sub_100FFC418(v36, 0, 0x6544646572696170, 0xEE00444965636976, v37), v8 = v42, (v38 = objc_msgSend(v7, "serialNumber")) != 0))
      {
        v39 = v38;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v42 = v8;
        sub_100FFC418(v39, 0, 0xD000000000000018, 0x8000000101350650, v40);

        return v42;
      }

      else
      {
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100762240(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 136) = a4;
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  *(v6 + 160) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v6 + 168) = v8;
  v9 = *(v8 - 8);
  *(v6 + 176) = v9;
  *(v6 + 184) = *(v9 + 64);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_projectBox();

  return _swift_task_switch(sub_10076235C, a1, 0);
}

uint64_t sub_10076235C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[26] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[27] = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1007624D0;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v6, v8);
}

uint64_t sub_1007624D0()
{

  return _swift_task_switch(sub_1007625E8, 0, 0);
}

uint64_t sub_1007625E8()
{
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = sub_1000035D0((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_10076290C;
    v5 = *(v0 + 120);

    return sub_100E76290(v3, v5, v2, v1);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    *(v0 + 240) = 0;
    v7 = *(v0 + 200);
    v8 = *(v0 + 160);
    sub_100034E6C(*(v0 + 128), v8, type metadata accessor for BeaconObservation);
    v9 = type metadata accessor for BeaconObservation(0);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    *(v0 + 248) = sub_101179424(v8);
    *(v0 + 256) = v10;
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    swift_beginAccess();
    sub_1000D2A70(v7, v8, &qword_1016A42E0, &qword_1013B0010);
    *(v0 + 264) = sub_101179424(v8);
    *(v0 + 272) = v11;
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    type metadata accessor for AnalyticsEvent(0);
    v12 = swift_allocObject();
    *(v0 + 280) = v12;
    swift_defaultActor_initialize();
    *(v12 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v13 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v14 = type metadata accessor for DispatchTime();
    v15 = *(*(v14 - 8) + 56);
    v15(&v12[v13], 1, 1, v14);
    v15(&v12[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v14);
    *(v12 + 15) = 0xD00000000000002DLL;
    *(v12 + 16) = 0x800000010135E9E0;

    return _swift_task_switch(sub_100762C78, v12, 0);
  }
}

uint64_t sub_10076290C(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100762A0C, 0, 0);
}

uint64_t sub_100762A0C()
{
  v1 = v0[29];
  sub_100007BAC(v0 + 2);
  v0[30] = v1;
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v1;
  sub_100034E6C(v4, v3, type metadata accessor for BeaconObservation);
  v6 = type metadata accessor for BeaconObservation(0);
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[31] = sub_101179424(v3);
  v0[32] = v7;
  sub_10000B3A8(v3, &qword_1016A42E0, &qword_1013B0010);
  swift_beginAccess();
  sub_1000D2A70(v2, v3, &qword_1016A42E0, &qword_1013B0010);
  v0[33] = sub_101179424(v3);
  v0[34] = v8;
  sub_10000B3A8(v3, &qword_1016A42E0, &qword_1013B0010);
  type metadata accessor for AnalyticsEvent(0);
  v9 = swift_allocObject();
  v0[35] = v9;
  swift_defaultActor_initialize();
  *(v9 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v10 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(*(v11 - 8) + 56);
  v12(&v9[v10], 1, 1, v11);
  v12(&v9[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v11);
  *(v9 + 15) = 0xD00000000000002DLL;
  *(v9 + 16) = 0x800000010135E9E0;

  v13 = v5;

  return _swift_task_switch(sub_100762C78, v9, 0);
}

uint64_t sub_100762C78()
{
  sub_101179650(*(v0 + 280), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 240), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 240);

  swift_bridgeObjectRelease_n();

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 288) = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_100762DB4;
  v3 = *(v0 + 280);

  return sub_101163F78(v3);
}

uint64_t sub_100762DB4()
{

  return _swift_task_switch(sub_100762ECC, 0, 0);
}

uint64_t sub_100762ECC()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

id sub_100762F54(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = type metadata accessor for UUID();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  *(inited + 32) = 0x746341746E657665;
  *(inited + 40) = 0xEB000000006E6F69;
  v16 = a8;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "previousEvent");
  *(inited + 78) = -4864;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x800000010135EA10;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  *(inited + 120) = 0;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xEF4D4365636E6953;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x800000010135EA30;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  *(inited + 184) = 0;
  v17 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a8)
  {
    return v17;
  }

  result = [v16 systemVersion];
  if (result)
  {
    v19 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v17;
    sub_100FFC418(v19, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v21 = v41;
    result = [v16 systemVersion];
    if (result)
    {
      v22 = result;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v21;
      sub_100FFC418(v22, 0, 0xD00000000000001BLL, 0x8000000101356E90, v23);
      v24 = v41;
      v25 = [v16 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100766F1C(&qword_1016964D0, 255, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v26 + 16) && (v27 = sub_100777014(), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        [v29 state];
      }

      else
      {
      }

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v24;
      sub_100FFC418(isa, 0, 0x6563697665447369, 0xEF6465687361654CLL, v31);
      v17 = v41;
      v32 = [objc_opt_self() sharedInstance];
      LODWORD(isa) = [v32 isInternalBuild];

      if (isa && (v33 = [v16 identifier], static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v33, UUID.uuidString.getter(), (*(v40 + 8))(v14, v12), v34 = String._bridgeToObjectiveC()(), , v35 = swift_isUniquelyReferenced_nonNull_native(), v41 = v17, sub_100FFC418(v34, 0, 0x6544646572696170, 0xEE00444965636976, v35), v17 = v41, (v36 = objc_msgSend(v16, "serialNumber")) != 0))
      {
        v37 = v36;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v41 = v17;
        sub_100FFC418(v37, 0, 0xD000000000000018, 0x8000000101350650, v38);

        return v41;
      }

      else
      {
      }

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100763560(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = type metadata accessor for UUID();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v38 = a1[2];
  v39 = v12;
  v40 = *(a1 + 64);
  v13 = a1[1];
  v36 = *a1;
  v37 = v13;
  v14 = static os_log_type_t.default.getter();
  if (qword_101695020 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C368;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "SPObserverAnalytics: Fetched User Stats for %@", 46, 2, v16);

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_10001F280(v31, v35);
  v21 = v32;
  (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v32);
  v23 = sub_100766F1C(&qword_1016A8E70, v22, type metadata accessor for SPObserverAnalytics, &unk_1013BA340);
  v24 = (*(v7 + 80) + 152) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v33;
  *(v25 + 24) = v23;
  v27 = v39;
  *(v25 + 64) = v38;
  *(v25 + 80) = v27;
  *(v25 + 96) = v40;
  v28 = v37;
  *(v25 + 32) = v36;
  *(v25 + 48) = v28;
  sub_100031694(v35, v25 + 104);
  *(v25 + 144) = v26;
  (*(v7 + 32))(v25 + v24, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  swift_retain_n();
  sub_100766AC0(&v36, v35);

  sub_100A838D4(0, 0, v11, &unk_1013BA3D8, v25);
}

uint64_t sub_1007638D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = type metadata accessor for Date();
  v8[7] = v10;
  v8[8] = *(v10 - 8);
  v8[9] = swift_task_alloc();

  return _swift_task_switch(sub_1007639A0, a6, 0);
}

uint64_t sub_1007639A0()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 80) = v1;
  v8 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000031;
  *(v1 + 16) = 0x800000010135EB70;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v8;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_100763B54;

  return sub_101162604(&unk_1013BA3E8, v5);
}

uint64_t sub_100763B54()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[4];

    return _swift_task_switch(sub_100763F08, v4, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v5 = swift_task_alloc();
    v2[15] = v5;
    *v5 = v3;
    v5[1] = sub_100763D10;
    v6 = v2[10];

    return sub_101163F78(v6);
  }
}

uint64_t sub_100763D10()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100763E3C, v1, 0);
}

uint64_t sub_100763E3C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  static Date.trustedNow.getter(v1);
  sub_10073ACF4(v4, v1);
  (*(v3 + 8))(v1, v2);
  Transaction.capture()();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100763F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100763F74(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for StableIdentifier(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1007640B4, 0, 0);
}

uint64_t sub_1007640B4()
{
  v80 = v1;
  v3 = *(*(v1 + 184) + 64);
  if (v3 == 1)
  {
    v4 = &off_101608D78;
    v5 = 16;
  }

  else
  {
    if (v3 != 2)
    {
      sub_100766BB4();
      v2 = swift_allocError();
      swift_willThrow();
      v0 = static os_log_type_t.error.getter();
      if (qword_101695020 != -1)
      {
LABEL_58:
        swift_once();
      }

      v68 = qword_10177C368;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_101385D80;
      *(v1 + 176) = v2;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_100008C00();
      *(v69 + 32) = v70;
      *(v69 + 40) = v72;
      os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v68, "User Stats could not compute fields - not sending: %@", 53, 2, v69);

      v40 = sub_100907D24(_swiftEmptyArrayStorage);

      goto LABEL_47;
    }

    v4 = &off_101608DA8;
    v5 = 10;
  }

  v6 = 0;
  v7 = _swiftEmptyDictionarySingleton;
  do
  {
    while (1)
    {
      if (v6 >= v4[2])
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v8 = *(v4 + v6++ + 32);
      v9 = 0xED00007367616C46;
      v2 = 0x776F6C667265766FLL;
      switch(v8)
      {
        case 1:
          v2 = 0xD000000000000011;
          v9 = 0x80000001013543D0;
          break;
        case 2:
          v2 = 0xD000000000000015;
          v9 = 0x80000001013543B0;
          break;
        case 3:
          v2 = 0xD000000000000015;
          v9 = 0x8000000101354390;
          break;
        case 4:
          v2 = 0xD000000000000014;
          v9 = 0x8000000101354370;
          break;
        case 5:
          v2 = 0xD00000000000001BLL;
          v9 = 0x8000000101354350;
          break;
        case 6:
          v2 = 0xD000000000000012;
          v9 = 0x8000000101354330;
          break;
        case 7:
          v9 = 0xEA0000000000746ELL;
          v2 = 0x756F436873617263;
          break;
        case 8:
          v9 = 0xE900000000000065;
          v2 = 0x6D695469746C756DLL;
          break;
        case 9:
          v2 = 0x656E774F7261656ELL;
          v9 = 0xED0000656D695472;
          break;
        case 10:
          v9 = 0xE800000000000000;
          v2 = 0x656D6954646C6977;
          break;
        case 11:
          v2 = 0xD000000000000013;
          v9 = 0x8000000101354310;
          break;
        case 12:
          v2 = 0xD000000000000012;
          v9 = 0x80000001013542F0;
          break;
        case 13:
          v2 = 0x43676E69676E6172;
          v9 = 0xEC000000746E756FLL;
          break;
        case 14:
          v2 = 0x54676E69676E6172;
          v9 = 0xEB00000000656D69;
          break;
        case 15:
          v2 = 0xD000000000000017;
          v9 = 0x80000001013542D0;
          break;
        case 16:
          v2 = 0xD000000000000015;
          v9 = 0x80000001013542B0;
          break;
        case 17:
          v2 = 0x6E6F636553697072;
          v9 = 0xEF79654B79726164;
          break;
        default:
          break;
      }

      sub_1010BE4F8(v8, &v77);
      v10 = *v78;
      *(v1 + 88) = v77;
      *(v1 + 104) = v10;
      *(v1 + 114) = *&v78[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v7;
      v0 = v7;
      v12 = sub_100771D58(v2, v9);
      v14 = v7[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_56;
      }

      v18 = v13;
      if (v7[3] >= v17)
      {
        break;
      }

      sub_100FEA4A0(v17, isUniquelyReferenced_nonNull_native);
      v0 = v79;
      v12 = sub_100771D58(v2, v9);
      if ((v18 & 1) != (v19 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_30:
      if ((v18 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_5:
      v0 = v12;

      v7 = v79;
      sub_100766C5C(v1 + 88, v79[7] + 48 * v0);
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v0 = &v79;
    v26 = v12;
    sub_101006FE8();
    v12 = v26;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_31:
    v7 = v79;
    v79[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v7[6] + 16 * v12);
    *v20 = v2;
    v20[1] = v9;
    v21 = (v7[7] + 48 * v12);
    v22 = *(v1 + 114);
    v23 = *(v1 + 104);
    *v21 = *(v1 + 88);
    v21[1] = v23;
    *(v21 + 26) = v22;
    v24 = v7[2];
    v16 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v16)
    {
      goto LABEL_57;
    }

    v7[2] = v25;
  }

  while (v5 != v6);
LABEL_37:

  v27 = *(v1 + 192);
  v76 = *(v1 + 184);
  v28 = v27[3];
  v29 = v27[4];
  sub_1000035D0(v27, v28);
  v30 = (*(v29 + 24))(v28, v29);
  v32 = v31;
  v33 = sub_1000DF96C();
  v77._countAndFlagsBits = v30;
  v77._object = v32;
  *&v78[8] = &type metadata for String;
  *&v78[16] = v33;
  *&v78[24] = 1;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v7;
  sub_100FFC070(&v77._countAndFlagsBits, 0xD000000000000013, 0x8000000101356E70, v34);
  v35 = v79;
  v36 = v27[3];
  v37 = v27[4];
  sub_1000035D0(v27, v36);
  v77._countAndFlagsBits = (*(v37 + 24))(v36, v37);
  v77._object = v38;
  *&v78[8] = &type metadata for String;
  *&v78[16] = v33;
  *&v78[24] = 1;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v35;
  sub_100FFC070(&v77._countAndFlagsBits, 0xD00000000000001BLL, 0x8000000101356E90, v39);
  v40 = v79;
  if (*(v76 + 8) >> 60 != 15)
  {
    v41 = *(v1 + 184);
    sub_100766AC0(v41, v1 + 16);
    v77 = Data.base64EncodedString(options:)(0);
    *&v78[8] = &type metadata for String;
    *&v78[16] = v33;
    *&v78[24] = 1;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v40;
    sub_100FFC070(&v77._countAndFlagsBits, 0xD000000000000017, 0x80000001013542D0, v42);
    sub_100766C08(v41);
    v40 = v79;
  }

  v43 = [objc_opt_self() sharedInstance];
  v44 = [v43 isInternalBuild];

  if (v44)
  {
    v45 = *(v1 + 248);
    v46 = *(v1 + 256);
    v47 = *(v1 + 240);
    v48 = *(v1 + 192);
    v50 = v27[3];
    v49 = v27[4];
    sub_1000035D0(v48, v50);
    (*(*(*(v49 + 8) + 8) + 32))(v50);
    v51 = UUID.uuidString.getter();
    v53 = v52;
    (*(v45 + 8))(v46, v47);
    v77._countAndFlagsBits = v51;
    v77._object = v53;
    *&v78[8] = &type metadata for String;
    *&v78[16] = v33;
    *&v78[24] = 1;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v40;
    sub_100FFC070(&v77._countAndFlagsBits, 0x6544646572696170, 0xEE00444965636976, v54);
    v40 = v79;
    sub_10001F280(v48, v1 + 136);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v55 = type metadata accessor for OwnedBeaconRecord(0);
    v56 = swift_dynamicCast();
    v57 = *(*(v55 - 8) + 56);
    if (v56)
    {
      v59 = *(v1 + 224);
      v58 = *(v1 + 232);
      v60 = *(v1 + 216);
      v61 = *(v1 + 200);
      v57(v61, 0, 1, v55);
      sub_100034E6C(v61 + *(v55 + 24), v59, type metadata accessor for StableIdentifier);
      sub_100766D74(v61, type metadata accessor for OwnedBeaconRecord);
      sub_100029350(v59, v58, type metadata accessor for StableIdentifier);
      sub_100034E6C(v58, v60, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v63 = *(v1 + 232);
      v64 = *(v1 + 216);
      if (EnumCaseMultiPayload == 1)
      {
        v65 = *(v64 + 32);
        v66 = *(v64 + 40);

        v77._countAndFlagsBits = v65;
        v77._object = v66;
        *&v78[8] = &type metadata for String;
        *&v78[16] = v33;
        *&v78[24] = 1;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v40;
        sub_100FFC070(&v77._countAndFlagsBits, 0xD000000000000018, 0x8000000101350650, v67);
        sub_100766D74(v63, type metadata accessor for StableIdentifier);
        v40 = v79;
      }

      else
      {
        sub_100766D74(*(v1 + 232), type metadata accessor for StableIdentifier);
        sub_100766D74(v64, type metadata accessor for StableIdentifier);
      }
    }

    else
    {
      v75 = *(v1 + 200);
      v57(v75, 1, 1, v55);
      sub_10000B3A8(v75, &unk_1016A9A20, &qword_10138B280);
    }
  }

LABEL_47:

  v73 = *(v1 + 8);

  return v73(v40);
}

void sub_100764C18(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  if (qword_101695020 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C368;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "SPObserverAnalytics: Failed to fetch user stats for %@. Error - %@", 66, 2, v3);

  Transaction.capture()();
}

uint64_t sub_100764E20()
{
  v2 = *(type metadata accessor for BeaconObservation(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100761098(v0 + v3, v4);
}

uint64_t sub_100764F34(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v4 = type metadata accessor for UUID();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v2[21] = *(v5 + 64);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100765000, a2, 0);
}

uint64_t sub_100765000()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  (*(v3 + 16))(v1, v0[17], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[24] = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_100765174;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v6, v8);
}

uint64_t sub_100765174()
{

  return _swift_task_switch(sub_10076528C, 0, 0);
}

uint64_t sub_10076528C()
{
  sub_1000D2A70(v0 + 16, v0 + 96, &qword_101696920, &unk_10138B200);
  if (*(v0 + 120))
  {
    sub_100031694((v0 + 96), v0 + 56);
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = sub_1000035D0((v0 + 56), v2);
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = sub_1007654CC;
    v5 = *(v0 + 144);

    return sub_100E76290(v3, v5, v2, v1);
  }

  else
  {
    sub_10000B3A8(v0 + 96, &qword_101696920, &unk_10138B200);
    *(v0 + 216) = 0;
    type metadata accessor for AnalyticsEvent(0);
    v7 = swift_allocObject();
    *(v0 + 224) = v7;
    swift_defaultActor_initialize();
    *(v7 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v8 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v9 = type metadata accessor for DispatchTime();
    v10 = *(*(v9 - 8) + 56);
    v10(&v7[v8], 1, 1, v9);
    v10(&v7[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v9);
    *(v7 + 15) = 0xD00000000000003DLL;
    *(v7 + 16) = 0x800000010135CA50;

    return _swift_task_switch(sub_10076573C, v7, 0);
  }
}

uint64_t sub_1007654CC(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1007655CC, 0, 0);
}

uint64_t sub_1007655CC()
{
  v1 = v0[26];
  sub_100007BAC(v0 + 7);
  v0[27] = v1;
  v2 = v1;
  type metadata accessor for AnalyticsEvent(0);
  v3 = swift_allocObject();
  v0[28] = v3;
  swift_defaultActor_initialize();
  *(v3 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v5);
  *(v3 + 15) = 0xD00000000000003DLL;
  *(v3 + 16) = 0x800000010135CA50;
  v7 = v2;

  return _swift_task_switch(sub_10076573C, v3, 0);
}

uint64_t sub_10076573C()
{
  sub_101177A14(*(v0 + 224), *(v0 + 216));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 232) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100765820;
  v2 = *(v0 + 224);

  return sub_101163F78(v2);
}

uint64_t sub_100765820()
{

  return _swift_task_switch(sub_100765938, 0, 0);
}

uint64_t sub_100765938()
{
  v1 = *(v0 + 216);

  sub_10000B3A8(v0 + 16, &qword_101696920, &unk_10138B200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007659C0()
{
  v1 = *(type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100765A4C(v0 + v2, v3);
}

uint64_t sub_100765A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v83 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v75 = &v72 - v9;
  v10 = __chkstk_darwin(v8);
  v77 = &v72 - v11;
  v82 = v12;
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v15 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v16 = __chkstk_darwin(v15);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v78 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - v21;
  v23 = __chkstk_darwin(v20);
  v73 = &v72 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v72 - v26;
  v28 = __chkstk_darwin(v25);
  v89 = &v72 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v72 - v31;
  __chkstk_darwin(v30);
  v88 = &v72 - v33;
  v81 = swift_allocBox();
  v90 = v5;
  v34 = *(v5 + 56);
  v85 = v35;
  v79 = v34;
  v80 = v5 + 56;
  v34(v35, 1, 1, v4);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v36 = qword_10177B2E8;
  v37 = swift_allocObject();
  *(v37 + 16) = 33;
  v87 = v36;
  v38 = sub_100035730(a1, sub_10076644C, v37);

  v39 = 0;
  v40 = *(a1 + *(v4 + 24));
  v84 = a2;
  v41 = 0;
  if (v40 < 0x21 || v40 > 35)
  {
    goto LABEL_4;
  }

  if (v40 != 33)
  {
    if (v40 == 34)
    {
      v39 = 0;
      v41 = 1;
    }

    else
    {
      v41 = 0;
      v39 = 1;
    }

LABEL_4:
    v76 = v41;
    v42 = v88;
    sub_1012BB138(v38, v88);
    goto LABEL_5;
  }

  v42 = v88;
  sub_10030C400(v38, v88);
  v76 = 0;
  v39 = 0;
LABEL_5:

  sub_1000D2A70(v42, v32, &qword_1016A42E0, &qword_1013B0010);
  v43 = *(v90 + 48);
  v44 = v43(v32, 1, v4);
  v86 = v22;
  if (v44 == 1)
  {
    sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
    v45 = 0.0;
  }

  else
  {
    sub_100029350(v32, v14, type metadata accessor for BeaconObservation);
    Date.timeIntervalSinceNow.getter();
    v45 = fabs(v46);
    v47 = v85;
    sub_10000B3A8(v85, &qword_1016A42E0, &qword_1013B0010);
    v22 = v86;
    sub_100029350(v14, v47, type metadata accessor for BeaconObservation);
    v79(v47, 0, 1, v4);
  }

  v48 = swift_allocObject();
  *(v48 + 16) = 35;
  v49 = sub_100035730(a1, sub_100766FD8, v48);

  v50 = v89;
  if (v39)
  {
    sub_10030C400(v49, v89);
  }

  else
  {
    sub_1012BB138(v49, v89);
  }

  sub_1000D2A70(v50, v27, &qword_1016A42E0, &qword_1013B0010);
  if (v43(v27, 1, v4) == 1)
  {
    sub_10000B3A8(v27, &qword_1016A42E0, &qword_1013B0010);
    v51 = 0.0;
    v52 = v45;
    v53 = v85;
  }

  else
  {
    sub_100029350(v27, v77, type metadata accessor for BeaconObservation);
    Date.timeIntervalSinceNow.getter();
    v51 = fabs(v54);
    v53 = v85;
    v55 = v73;
    sub_1000D2A70(v85, v73, &qword_1016A42E0, &qword_1013B0010);
    v56 = v43(v55, 1, v4);
    sub_10000B3A8(v55, &qword_1016A42E0, &qword_1013B0010);
    if (v56 == 1 || v51 < v45)
    {
      sub_10000B3A8(v53, &qword_1016A42E0, &qword_1013B0010);
      sub_100029350(v77, v53, type metadata accessor for BeaconObservation);
      v79(v53, 0, 1, v4);
      v52 = v51;
    }

    else
    {
      sub_100766D74(v77, type metadata accessor for BeaconObservation);
      v52 = v45;
    }
  }

  v57 = swift_allocObject();
  *(v57 + 16) = 34;
  v58 = sub_100035730(a1, sub_100766FD8, v57);

  if (v76)
  {
    sub_10030C400(v58, v22);
  }

  else
  {
    sub_1012BB138(v58, v22);
  }

  v59 = v78;
  sub_1000D2A70(v22, v78, &qword_1016A42E0, &qword_1013B0010);
  if (v43(v59, 1, v4) == 1)
  {
    sub_10000B3A8(v59, &qword_1016A42E0, &qword_1013B0010);
    v60 = 0.0;
  }

  else
  {
    v61 = v75;
    sub_100029350(v59, v75, type metadata accessor for BeaconObservation);
    Date.timeIntervalSinceNow.getter();
    v60 = fabs(v62);
    v63 = v74;
    sub_1000D2A70(v53, v74, &qword_1016A42E0, &qword_1013B0010);
    v64 = v43(v63, 1, v4);
    sub_10000B3A8(v63, &qword_1016A42E0, &qword_1013B0010);
    if (v64 == 1 || v60 < v52)
    {
      sub_10000B3A8(v53, &qword_1016A42E0, &qword_1013B0010);
      sub_100029350(v61, v53, type metadata accessor for BeaconObservation);
      v79(v53, 0, 1, v4);
    }

    else
    {
      sub_100766D74(v61, type metadata accessor for BeaconObservation);
    }
  }

  type metadata accessor for Transaction();
  v65 = v83;
  sub_100034E6C(a1, v83, type metadata accessor for BeaconObservation);
  v66 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v67 = (v82 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  *(v70 + 16) = v84;
  sub_100029350(v65, v70 + v66, type metadata accessor for BeaconObservation);
  *(v70 + v67) = v81;
  *(v70 + v68) = v45;
  *(v70 + v69) = v60;
  *(v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;

  static Transaction.asyncTask(name:block:)();

  sub_10000B3A8(v86, &qword_1016A42E0, &qword_1013B0010);
  sub_10000B3A8(v89, &qword_1016A42E0, &qword_1013B0010);
  sub_10000B3A8(v88, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_100766454()
{
  v2 = *(type metadata accessor for BeaconObservation(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100762240(v7, v0 + v3, v8, v9, v10, v11);
}

uint64_t sub_10076659C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_10075EBF8(a1, a2, v7, v6);
}

uint64_t sub_100766650(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10076669C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_10075F4B8(a1, a2, v6, v7);
}

uint64_t sub_100766764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1007607D0();
}

uint64_t sub_100766834(__int128 *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100763560(a1, v1 + v4, v1 + v5, v7, v8);
}

void sub_1007668E8(uint64_t a1)
{
  type metadata accessor for UUID();

  sub_100764C18(a1);
}

uint64_t sub_100766984(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[18];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014650;

  return sub_1007638D4(a1, v7, v8, (v1 + 4), (v1 + 13), v9, v1 + v6, v10);
}

uint64_t sub_100766B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_100763F74(v2, v3);
}

unint64_t sub_100766BB4()
{
  result = qword_1016A8E80;
  if (!qword_1016A8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8E80);
  }

  return result;
}

uint64_t sub_100766CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10075DB24(a1, v4, v5, v6);
}

uint64_t sub_100766D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100766DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10075AC88();
}

uint64_t sub_100766E80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10075AD18();
}

uint64_t sub_100766F1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100766F78()
{
  result = qword_1016A8EA8;
  if (!qword_1016A8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8EA8);
  }

  return result;
}

uint64_t sub_100766FDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A8EB0);
  v1 = sub_1000076D4(v0, qword_1016A8EB0);
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1007670A4()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177B110);
  sub_1000076D4(v0, qword_10177B110);
  return Table.init(_:database:)();
}

uint64_t sub_100767110()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177B128);
  sub_1000076D4(v0, qword_10177B128);
  return Table.init(_:database:)();
}

uint64_t sub_10076717C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100767240, 0, 0);
}

uint64_t sub_100767240()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  sub_1000BC4D4(&qword_1016A9010, &qword_1013BA868);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v5 + *(*v5 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 112) = v5;
  sub_1000BC4D4(&qword_1016A9018, &unk_1013BA870);
  swift_allocObject();
  *(v3 + 120) = AsyncStreamProvider.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_logger;
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Logger();
  v11 = sub_1000076D4(v10, qword_10177B290);
  (*(*(v10 - 8) + 16))(v9 + v6, v11, v10);
  *(v9 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair) = 0;
  *(v9 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_currentVersion) = 2;
  v12 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v13 = type metadata accessor for URL();
  *(v0 + 56) = v13;
  v14 = *(v13 - 8);
  *(v0 + 64) = v14;
  (*(v14 + 16))(v9 + v12, v8, v13);
  *(v9 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_temporary) = v7;

  return _swift_task_switch(sub_100767500, v9, 0);
}

uint64_t sub_100767500()
{
  (*(v0[8] + 8))(v0[2], v0[7]);

  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t sub_100767584()
{

  v1 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100767664(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10076779C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100767814(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1007678CC()
{
  sub_1000BC4D4(&qword_1016A9000, &qword_1013BA858);
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = *(v0 + 112);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  (*(v2 + 16))(v4 + v3, v5 + v6, v1);
  os_unfair_lock_unlock((v5 + v7));
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100767A64()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100767B4C()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v12 = *(v2 + 8);
  v12((v5 + v6), v1);
  v8 = enum case for DatabaseState.available(_:);
  v9 = *(v2 + 104);
  v9((v5 + v6), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v5 + v7));
  v9(v4, v8, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v12(v4, v1);
}

void sub_100767D00(int a1, int a2, uint64_t a3)
{
  v25[1] = *v3;
  v26 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v26 - 8);
  v7 = __chkstk_darwin(v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  if (qword_101694880 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016A8EB0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = a1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "Migrate schema %d -> %d", v15, 0xEu);
  }

  if (a2 == 2)
  {
    __chkstk_darwin(v16);
    v17 = v26;
    (*(v6 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v26);
    v18 = v27;
    Connection.transaction(_:block:)();
    if (v18)
    {
      (*(v6 + 8))(v9, v17);
      return;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v28 = 0xD000000000000013;
    v29 = 0x800000010135ECD0;
    v30 = a2;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x80000001013513F0;
  Connection.execute(_:)(v19);
  if (!v20)
  {
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x8000000101351410;
    Connection.execute(_:)(v21);
    if (!v23)
    {
      __chkstk_darwin(v22);
      v17 = v26;
      (*(v6 + 104))(v11, enum case for Connection.TransactionMode.deferred(_:), v26);
      Connection.transaction(_:block:)();
      v9 = v11;
LABEL_12:
      (*(v6 + 8))(v9, v17);
    }
  }
}

uint64_t sub_1007681CC()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_10076A730(&qword_1016A9008, &unk_1013BA760);
  return Database.description.getter();
}

uint64_t sub_100768224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for CloudStorageDatabase(0);
  v3 = sub_10076A730(&qword_1016A9008, &unk_1013BA760);
  *v1 = v0;
  v1[1] = sub_1007682F4;

  return Database.isolatedDescription.getter(v2, v3);
}

uint64_t sub_1007682F4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_100768460()
{
  if (qword_101694888 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177B110);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v4 = sub_1000076D4(v3, qword_10177B188);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v5 = sub_1000280DC((v2 + 32));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1007686A8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v53 = &v43 - v2;
  v3 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  __chkstk_darwin(v3 - 8);
  v52 = &v43 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  *&v55 = v7;
  v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v17, qword_10177B140);
  v54 = v1;
  v18 = *(v1 + 56);
  v18(v16, 1, 1, v0);
  v19 = *(v17 - 8);
  v47 = *(v19 + 56);
  v48 = v17;
  v46 = v19 + 56;
  v47(v13, 1, 1, v17);
  v45 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  v49 = v13;
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v20, qword_10177B158);
  v18(v16, 1, 1, v0);
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177B170);
  v18(v16, 1, 1, v0);
  v21(v10, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v22, qword_10177B188);
  v18(v16, 1, 1, v0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v26 = v55;
  v24(v55, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v27, qword_10177B1A0);
  v18(v16, 1, 1, v0);
  v44 = v22;
  v24(v26, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948C0 != -1)
  {
    swift_once();
  }

  v50 = v25;
  v51 = v24;
  v28 = v48;
  sub_1000076D4(v48, qword_10177B1B8);
  v18(v16, 1, 1, v0);
  v29 = v49;
  v47(v49, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948D0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v31 = sub_1000076D4(v30, qword_10177B1E8);
  v18(v16, 1, 1, v0);
  v32 = v0;
  v33 = *(*(v30 - 8) + 56);
  v34 = v18;
  v35 = v52;
  v33(v52, 1, 1, v30);
  v49 = v31;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948C8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000076D4(v30, qword_10177B1D0);
  v34(v16, 1, 1, v32);
  v33(v35, 1, 1, v30);
  v48 = v36;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177B200);
  v34(v16, 1, 1, v32);
  v33(v35, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948E0 != -1)
  {
    swift_once();
  }

  v37 = v44;
  sub_1000076D4(v44, qword_10177B218);
  v34(v16, 1, 1, v32);
  v38 = v55;
  v39 = v51;
  v51(v55, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177B230);
  v34(v16, 1, 1, v32);
  v39(v38, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177B248);
  v34(v16, 1, 1, v32);
  v39(v38, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  v55 = xmmword_1013BA680;
  v56 = xmmword_1013BA680;
  v40 = v53;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v41 = *(v54 + 8);
  v41(v40, v32);
  v56 = v55;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v41)(v40, v32);
}

uint64_t sub_100769494()
{
  if (qword_101694890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177B128);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_1007695AC()
{
  v0 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177B140);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v15, qword_10177B278);
  v14(v11, 1, 1, v13);
  v16 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948F8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v17, qword_10177B260);
  v14(v11, 1, 1, v13);
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE60, &unk_10139D1C0);
  return sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100769A68()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B140);
  sub_1000076D4(v0, qword_10177B140);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769B10()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B158);
  sub_1000076D4(v0, qword_10177B158);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769BC0()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B170);
  sub_1000076D4(v0, qword_10177B170);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769C80()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B188);
  sub_1000076D4(v0, qword_10177B188);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769D40()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177B1A0);
  sub_1000076D4(v0, qword_10177B1A0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769E00()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B1B8);
  sub_1000076D4(v0, qword_10177B1B8);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769EB0()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B1D0);
  sub_1000076D4(v0, qword_10177B1D0);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769F68()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B1E8);
  sub_1000076D4(v0, qword_10177B1E8);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A01C()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B200);
  sub_1000076D4(v0, qword_10177B200);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A0D8()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B218);
  sub_1000076D4(v0, qword_10177B218);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A198()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B230);
  sub_1000076D4(v0, qword_10177B230);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A250()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B248);
  sub_1000076D4(v0, qword_10177B248);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A30C()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177B260);
  sub_1000076D4(v0, qword_10177B260);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A3CC()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177B278);
  sub_1000076D4(v0, qword_10177B278);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A488()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B290);
  sub_1000076D4(v0, qword_10177B290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10076A508()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v6 >> 60 == 15)
  {
    v7 = static Data.random(bytes:)();
    v9 = v8;
    v11[0] = v7;
    v11[1] = v8;
    (*(v2 + 104))(v4, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v12 = v7;
    sub_100017D5C(v7, v9);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_100016590(v12, v9);
    return v10;
  }

  return result;
}

uint64_t sub_10076A730(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudStorageDatabase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10076A774(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v12 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v12, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, *(&v6 + 1));
  if (!v2)
  {
    v11 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v3 = *(v1 + 9);
    if (v3 >> 60 != 15)
    {
      *&v6 = *(v1 + 8);
      *(&v6 + 1) = v3;
      sub_10015049C(v7, v8);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }
  }

  return sub_100007BAC(v7);
}

__n128 sub_10076A9B4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10076AA18(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10076AA18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v60, v61);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v60);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v60, v61);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v62 = v10;
  sub_10015049C(v60, v61);
  v54 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v55 = v11;
  sub_10015049C(v60, v61);
  v52 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v53 = v12;
  sub_10015049C(v60, v61);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = result;
  v16 = v14;
  v17 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v21 = v17 == 2;
    v18 = v62;
    v22 = v54;
    v23 = v55;
    if (!v21)
    {
      goto LABEL_66;
    }

    v24 = *(v7 + 16);
    v25 = *(v7 + 24);
    v26 = __OFSUB__(v25, v24);
    v20 = v25 - v24;
    if (v26)
    {
      goto LABEL_60;
    }

    v19 = v9;
  }

  else
  {
    v18 = v62;
    v19 = v9;
    if (v17)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v20 = HIDWORD(v7) - v7;
    }

    else
    {
      v20 = BYTE6(v8);
    }

    v22 = v54;
    v23 = v55;
  }

  if (v20 != 32)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v27 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v27)
    {
      v19 = BYTE6(v18);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v27 != 2)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v30 = v19 + 16;
  v28 = *(v19 + 16);
  v29 = *(v30 + 8);
  v26 = __OFSUB__(v29, v28);
  v19 = v29 - v28;
  if (v26)
  {
    __break(1u);
LABEL_22:
    v26 = __OFSUB__(HIDWORD(v19), v19);
    LODWORD(v19) = HIDWORD(v19) - v19;
    if (v26)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v19 = v19;
  }

LABEL_24:
  if (v19 != 113)
  {
    goto LABEL_67;
  }

  v31 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v31)
    {
      v22 = BYTE6(v23);
LABEL_34:
      result = v52;
      v32 = v53;
      goto LABEL_35;
    }

LABEL_32:
    v26 = __OFSUB__(HIDWORD(v22), v22);
    LODWORD(v22) = HIDWORD(v22) - v22;
    if (v26)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v22 = v22;
    goto LABEL_34;
  }

  result = v52;
  v32 = v53;
  if (v31 != 2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v35 = v22 + 16;
  v33 = *(v22 + 16);
  v34 = *(v35 + 8);
  v26 = __OFSUB__(v34, v33);
  v22 = v34 - v33;
  if (v26)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_35:
  if (v22 != 32)
  {
    goto LABEL_68;
  }

  v36 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v16);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v36 != 2)
  {
    goto LABEL_69;
  }

  v39 = *(v15 + 16);
  v38 = *(v15 + 24);
  v26 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v26)
  {
    __break(1u);
LABEL_43:
    LODWORD(v37) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v37 = v37;
  }

LABEL_45:
  if (v37 == 96)
  {
    v58 = result;
    v59 = v32;
    v40 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v40 != 2)
      {
        v41 = 0;
        goto LABEL_57;
      }

      v43 = *(result + 16);
      v42 = *(result + 24);
      v41 = v42 - v43;
      if (!__OFSUB__(v42, v43))
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    else if (!v40)
    {
      v41 = BYTE6(v32);
LABEL_57:
      v26 = __OFSUB__(60, v41);
      v44 = 60 - v41;
      if (!v26)
      {
        sub_100017D5C(v15, v16);
        v56 = sub_100845C88(v44);
        v57 = v45;
        sub_100776394(&v56, 0);
        v50 = v56;
        v51 = v15;
        v49 = v57;
        Data.append(_:)();
        sub_100016590(v15, v16);
        sub_100016590(v52, v53);
        sub_100016590(v50, v49);
        v46 = v58;
        v47 = v59;
        sub_100007BAC(v60);
        result = sub_100007BAC(a1);
        *a2 = v7;
        a2[1] = v8;
        v48 = v62;
        a2[2] = v9;
        a2[3] = v48;
        a2[4] = v54;
        a2[5] = v55;
        a2[6] = v46;
        a2[7] = v47;
        a2[8] = v51;
        a2[9] = v16;
        return result;
      }

      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v41 = HIDWORD(result) - result;
LABEL_55:
    result = sub_100017D5C(result, v32);
    goto LABEL_57;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_10076AE34@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  v20 = result;
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v21 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v24 = *(result + 16);
  v23 = *(result + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_8:
    LODWORD(v22) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v22 = v22;
  }

LABEL_10:
  if (v22 != 32)
  {
    goto LABEL_61;
  }

  v26 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v26 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v29 = *(a3 + 16);
  v28 = *(a3 + 24);
  v25 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v27) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v27 = v27;
  }

LABEL_20:
  if (v27 != 113)
  {
    goto LABEL_62;
  }

  v30 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(a6);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v30 != 2)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v33 = *(a5 + 16);
  v32 = *(a5 + 24);
  v25 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v25)
  {
    __break(1u);
LABEL_28:
    LODWORD(v31) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v31 = v31;
  }

LABEL_30:
  if (v31 != 32)
  {
    goto LABEL_63;
  }

  v12 = a10;
  v11 = a11;
  if (a11 >> 60 == 15)
  {
    goto LABEL_42;
  }

  v34 = a11 >> 62;
  if ((a11 >> 62) > 1)
  {
    if (v34 != 2)
    {
LABEL_64:
      result = sub_100006654(v12, v11);
      goto LABEL_65;
    }

    v37 = *(a10 + 16);
    v36 = *(a10 + 24);
    v25 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v25)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v34)
  {
    result = sub_100006654(a10, a11);
    v35 = BYTE6(a11);
    goto LABEL_41;
  }

  LODWORD(v35) = HIDWORD(a10) - a10;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = v35;
LABEL_41:
  if (v35 == 96)
  {
LABEL_42:
    *&v50 = a7;
    *(&v50 + 1) = a8;
    v38 = a8 >> 62;
    if ((a8 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v11 = 0;
        goto LABEL_53;
      }

      v40 = *(a7 + 16);
      v39 = *(a7 + 24);
      v11 = v39 - v40;
      if (!__OFSUB__(v39, v40))
      {
        goto LABEL_51;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v11 = BYTE6(a8);
LABEL_53:
      if (!__OFSUB__(60, v11))
      {
        v48 = sub_100845C88(60 - v11);
        v49 = v41;
        v45 = a4;
        v46 = a6;
        sub_100776394(&v48, 0);
        v42 = a5;
        v43 = v48;
        v44 = v49;
        Data.append(_:)();
        sub_100016590(a7, a8);
        result = sub_100016590(v43, v44);
        *a9 = v20;
        *(a9 + 8) = a2;
        *(a9 + 16) = a3;
        *(a9 + 24) = v45;
        *(a9 + 32) = v42;
        *(a9 + 40) = v46;
        *(a9 + 48) = v50;
        *(a9 + 64) = a10;
        *(a9 + 72) = a11;
        return result;
      }

      __break(1u);
      goto LABEL_56;
    }

    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v11 = HIDWORD(a7) - a7;
LABEL_51:
    sub_100017D5C(a7, a8);
    goto LABEL_53;
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_10076B0E4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  *&v51 = 0x3C00000000;
  *(&v51 + 1) = __DataStorage.init(length:)();
  sub_1007765FC(&v51, 0);
  v15 = v51;
  v16 = DWORD1(v51);
  v45 = a2;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (v22)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    a2 = a7;
    v19 = *(&v51 + 1);
  }

  else
  {
    a2 = a7;
    if (v17)
    {
      LODWORD(v18) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v19 = *(&v51 + 1);
      v18 = v18;
    }

    else
    {
      v18 = BYTE6(v45);
      v19 = *(&v51 + 1);
    }
  }

  if (v18 != 32)
  {
    goto LABEL_56;
  }

  v23 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v23)
    {
      v24 = BYTE6(a4);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v23 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v22 = __OFSUB__(v25, v26);
  v24 = v25 - v26;
  if (v22)
  {
    __break(1u);
LABEL_17:
    LODWORD(v24) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v24 = v24;
  }

LABEL_19:
  if (v24 != 113)
  {
    goto LABEL_57;
  }

  v27 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a6);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v27 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v30 = *(a5 + 16);
  v29 = *(a5 + 24);
  v22 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v22)
  {
    __break(1u);
LABEL_27:
    LODWORD(v28) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v28 = v28;
  }

LABEL_29:
  if (v28 != 32)
  {
    goto LABEL_58;
  }

  if (a8 >> 60 == 15)
  {
    goto LABEL_41;
  }

  v31 = a8 >> 62;
  if ((a8 >> 62) > 1)
  {
    if (v31 != 2)
    {
LABEL_59:
      sub_100006654(a2, a8);
      goto LABEL_60;
    }

    v34 = *(a2 + 16);
    v33 = *(a2 + 24);
    v22 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (!v22)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_38:
    LODWORD(v32) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v32 = v32;
    goto LABEL_40;
  }

  if (v31)
  {
    goto LABEL_38;
  }

  sub_100006654(a2, a8);
  v32 = BYTE6(a8);
LABEL_40:
  if (v32 != 96)
  {
LABEL_60:
    __break(1u);
    return;
  }

LABEL_41:
  v44 = a8;
  a8 = a6;
  v35 = a2;
  *&v51 = v15 | (v16 << 32);
  *(&v51 + 1) = v19 | 0x4000000000000000;
  a2 = (v16 - v15);
  if (__OFSUB__(v16, v15))
  {
    __break(1u);
    goto LABEL_51;
  }

  if (a2 == 60)
  {

    v36 = 0;
    v37 = 0xC000000000000000;
  }

  else
  {
    v38 = 60 - a2;
    if (a2 >= 46)
    {
      v36 = sub_100268BBC(60 - a2);
      v37 = v41 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      swift_allocObject();

      v39 = __DataStorage.init(length:)();
      v40 = v39;
      if (a2 <= -2147483587)
      {
        type metadata accessor for Data.RangeReference();
        v36 = swift_allocObject();
        *(v36 + 16) = 0;
        *(v36 + 24) = v38;
        v37 = v40 | 0x8000000000000000;
      }

      else
      {
        v36 = v38 << 32;
        v37 = v39 | 0x4000000000000000;
      }
    }
  }

  v49 = v36;
  v50 = v37;
  sub_100776394(&v49, 0);
  v42 = v49;
  v43 = v50;
  Data.append(_:)();

  sub_100016590(v42, v43);
  *a9 = a1;
  *(a9 + 8) = v45;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a8;
  *(a9 + 48) = v51;
  *(a9 + 64) = v35;
  *(a9 + 72) = v44;
}

unint64_t sub_10076B470(uint64_t a1)
{
  *(a1 + 8) = sub_10076B4A0();
  result = sub_10076B4F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10076B4A0()
{
  result = qword_1016A9020;
  if (!qword_1016A9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9020);
  }

  return result;
}

unint64_t sub_10076B4F4()
{
  result = qword_1016A9028;
  if (!qword_1016A9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9028);
  }

  return result;
}

unint64_t sub_10076B558(uint64_t a1)
{
  *(a1 + 8) = sub_10038BF14();
  result = sub_10030FB84();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10076B588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x800000010134A130;
  v6 = 0xE600000000000000;
  v7 = 0x6449616E6D66;
  if (a1 != 4)
  {
    v7 = 0x704164656B73616DLL;
    v6 = 0xED00006449656C70;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6953726576726573;
  v9 = 0xEA00000000006E67;
  if (a1 != 1)
  {
    v8 = 0x6E656B6F74;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x5364656573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000010134A130;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6449616E6D66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00006449656C70;
      if (v10 != 0x704164656B73616DLL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006E67;
      if (v10 != 0x6953726576726573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E656B6F74)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x5364656573)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10076B778(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x8000000101347710;
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x6544654D41746F6ELL;
      }

      else
      {
        v5 = 0x6F4E656369766564;
      }

      if (v2 == 4)
      {
        v6 = 0xEC00000065636976;
      }

      else
      {
        v6 = 0xEE006573556E4974;
      }
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001013476E0;
    if (a1 != 1)
    {
      v3 = 0x726F707075736E75;
      v4 = 0xEE00554B53646574;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x80000001013476C0;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x8000000101347710;
      if (v5 != 0xD00000000000001CLL)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xEC00000065636976;
      if (v5 != 0x6544654D41746F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0xEE006573556E4974;
      if (v5 != 0x6F4E656369766564)
      {
LABEL_39:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x726F707075736E75;
    }

    if (a2 == 1)
    {
      v8 = 0x80000001013476E0;
    }

    else
    {
      v8 = 0xEE00554B53646574;
    }

    if (v5 != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x80000001013476C0;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_10076B9A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4999502;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000004445;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x5A49524F48545541;
    }

    else
    {
      v6 = 0x5249415045524E49;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1414090313;
    }

    else
    {
      v6 = 4999502;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x5A49524F48545541;
  v10 = 0xEA00000000004445;
  if (a2 != 2)
  {
    v9 = 0x5249415045524E49;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 1414090313;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10076BAD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x704164656B73616DLL;
    v10 = 0xED00006449656C70;
    if (a1 != 6)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000101347DB0;
    }

    v11 = 0x6953726576726573;
    v12 = 0xEA00000000006E67;
    if (a1 != 4)
    {
      v11 = 0x6449616E6D66;
      v12 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x754E6C6169726573;
    v5 = 0xEC0000007265626DLL;
    if (a1 != 2)
    {
      v4 = 0x5364656573;
      v5 = 0xE500000000000000;
    }

    v6 = 0x644970696863;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 1684628325;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC0000007265626DLL;
        if (v7 != 0x754E6C6169726573)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x5364656573)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      v13 = 0xE400000000000000;
      if (v7 != 1684628325)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = 0xE600000000000000;
    v14 = 1885956195;
LABEL_40:
    if (v7 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x644900000000))
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xEA00000000006E67;
      if (v7 != 0x6953726576726573)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = 0xE600000000000000;
    v14 = 1634626918;
    goto LABEL_40;
  }

  if (a2 == 6)
  {
    v13 = 0xED00006449656C70;
    if (v7 != 0x704164656B73616DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0x8000000101347DB0;
    if (v7 != 0xD000000000000013)
    {
LABEL_47:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_10076BD5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007265626DLL;
  v3 = 0x754E6C6169726573;
  v4 = a1;
  v5 = 0x704164656B73616DLL;
  v6 = 0xED00006449656C70;
  if (a1 != 5)
  {
    v5 = 0xD000000000000013;
    v6 = 0x8000000101347DB0;
  }

  v7 = 0x6953726576726573;
  v8 = 0xEA00000000006E67;
  if (a1 != 3)
  {
    v7 = 0x6449616E6D66;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6169726553746C61;
  v10 = 0xEF7265626D754E6CLL;
  if (a1 != 1)
  {
    v9 = 0x5364656573;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x754E6C6169726573;
    v10 = 0xEC0000007265626DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF7265626D754E6CLL;
        if (v11 != 0x6169726553746C61)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x5364656573)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED00006449656C70;
        if (v11 != 0x704164656B73616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x8000000101347DB0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEA00000000006E67;
      if (v11 != 0x6953726576726573)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6449616E6D66;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_10076BFA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x65746144646E65;
    if (a1 == 2)
    {
      v14 = 0x7461447472617473;
      v13 = 0xE900000000000065;
    }

    v15 = 0xD000000000000010;
    v16 = 0x800000010134A0A0;
    if (a1)
    {
      v15 = 0xD000000000000012;
      v16 = 0x800000010134A0C0;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 5294388599723750000;
    v6 = 0xEA00000000007364;
    v7 = 0x76654464656E776FLL;
    v8 = 0xEE00736449656369;
    if (a1 != 7)
    {
      v7 = 0x6570795479656BLL;
      v8 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x7261646E6F636573;
    v10 = 0xEC00000073644979;
    if (a1 != 4)
    {
      v9 = 0x6F43686372616573;
      v10 = 0xED0000747865746ELL;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000010134A0C0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x800000010134A0A0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x65746144646E65)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000073644979;
        if (v11 != 0x7261646E6F636573)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xED0000747865746ELL;
        if (v11 != 0x6F43686372616573)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xEA00000000007364;
      if (v11 != 5294388599723750000)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xEE00736449656369;
      if (v11 != 0x76654464656E776FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE700000000000000;
    v3 = 0x6570795479656BLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_10076C2AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6465726F6E6769;
  if (a1 != 6)
  {
    v5 = 0x7265766F63736964;
    v4 = 0xEA00000000006465;
  }

  v6 = 0x6465676174736E75;
  if (a1 != 4)
  {
    v6 = 0x7761726468746977;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0x796669746F6ELL;
  if (a1 != 2)
  {
    v7 = 0x657461647075;
  }

  v8 = 0x646567617473;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x6465726F6E6769)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v11 = 0xEA00000000006465;
        if (v9 != 0x7265766F63736964)
        {
LABEL_45:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (a2 == 4)
      {
        if (v9 != 0x6465676174736E75)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 0x7761726468746977)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    v11 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v9 != 0x796669746F6ELL)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 0x657461647075)
    {
      goto LABEL_45;
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x646567617473)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_10076C508(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726576726573;
    }

    else
    {
      v3 = 0x746C7561666564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x73656C6F72;
  }

  else if (a1 == 3)
  {
    v3 = 0x6166654472657375;
    v4 = 0xEC00000073746C75;
  }

  else
  {
    v3 = 0x5365636976726573;
    v4 = 0xEF73676E69747465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x726576726573;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6166654472657375;
    v6 = 0xEC00000073746C75;
    if (a2 != 3)
    {
      v5 = 0x5365636976726573;
      v6 = 0xEF73676E69747465;
    }

    if (a2 == 2)
    {
      v7 = 0x73656C6F72;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10076C6AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465726961706E75;
    }

    else
    {
      v4 = 0x64656B636F6CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646572696170;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6465726961706E75;
  if (a2 != 2)
  {
    v8 = 0x64656B636F6CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x646572696170;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10076C7DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696B6C6177;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6976697264;
    }

    else
    {
      v4 = 0x616E6F6974617473;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEA00000000007972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C637963;
    }

    else
    {
      v4 = 0x676E696B6C6177;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x676E6976697264;
  if (a2 != 2)
  {
    v7 = 0x616E6F6974617473;
    v6 = 0xEA00000000007972;
  }

  if (a2)
  {
    v2 = 0x676E696C637963;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10076C928(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6953726576726573;
    }

    else
    {
      v3 = 0x5364656573;
    }

    if (v2)
    {
      v4 = 0xEA00000000006E67;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7374726563;
    }

    else
    {
      v3 = 0x704164656B73616DLL;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xED00006449656C70;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6953726576726573;
    }

    else
    {
      v6 = 0x5364656573;
    }

    if (a2)
    {
      v5 = 0xEA00000000006E67;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006564;
    if (v3 != 0x6F43737574617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7374726563)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xED00006449656C70;
    if (v3 != 0x704164656B73616DLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10076CAE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 21072;
    }

    else
    {
      v3 = 65;
    }

    if (v2 == 2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 21840;
    }

    else
    {
      v3 = 68;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 68;
  v7 = 0xE200000000000000;
  v8 = 21072;
  if (a2 != 2)
  {
    v8 = 65;
    v7 = 0xE100000000000000;
  }

  if (a2)
  {
    v6 = 21840;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10076CBDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x8000000101348340;
    if (a1 != 2)
    {
      v4 = 0x656475746974616CLL;
      v5 = 0xE800000000000000;
    }

    v8 = 0xD000000000000010;
    v9 = 0x8000000101347C50;
    if (a1)
    {
      v8 = 0x696669746E656469;
      v9 = 0xEA00000000007265;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
    v6 = 0x6E6F697461636F6CLL;
    v7 = 0xEE00656372756F53;
    if (a1 != 7)
    {
      v6 = 0x657461446E616373;
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x64757469676E6F6CLL;
    v9 = 0xE900000000000065;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v9 = 0x8000000101347FC0;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x656475746974616CLL)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v13 = "associatedBeacon";
    }

    else
    {
      if (a2)
      {
        goto LABEL_41;
      }

      v13 = "cloudKitMetadata";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000010)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v11 != 0x64757469676E6F6CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x8000000101347FC0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v2 = 0xE900000000000070;
    if (v11 != 0x6D617473656D6974)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 == 7)
  {
    v2 = 0xEE00656372756F53;
    if (v11 != 0x6E6F697461636F6CLL)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v2 = 0xE800000000000000;
  v3 = 0x657461446E616373;
LABEL_41:
  if (v11 != v3)
  {
LABEL_45:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_10076CEC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064656C62616ELL;
  v3 = 0x45676E69646E6966;
  v4 = a1;
  if (a1 > 3u)
  {
    v10 = 0x53746E756F636361;
    v11 = 0xEF79746972756365;
    if (a1 != 6)
    {
      v10 = 0xD000000000000015;
      v11 = 0x8000000101349D10;
    }

    v12 = 0x7461745370696D66;
    v13 = 0xE900000000000065;
    if (a1 != 4)
    {
      v12 = 0xD000000000000012;
      v13 = 0x8000000101349CE0;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v4 <= 5)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v5 = 0x4565636976726573;
    if (a1 == 2)
    {
      v5 = 0x45676E69646E6966;
    }

    v6 = 0x8000000101349C70;
    v7 = 0xD000000000000017;
    if (a1)
    {
      v7 = 0xD00000000000001BLL;
      v6 = 0x8000000101349C90;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v4 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEE0064656C62616ELL;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF79746972756365;
        if (v8 != 0x53746E756F636361)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x8000000101349D10;
        if (v8 != 0xD000000000000015)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v8 != 0x7461745370696D66)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v3 = 0xD000000000000012;
    v2 = 0x8000000101349CE0;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000101349C90;
        v14 = 9;
      }

      else
      {
        v2 = 0x8000000101349C70;
        v14 = 5;
      }

      if (v8 != (v14 | 0xD000000000000012))
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (a2 != 2)
    {
      if (v8 != 0x4565636976726573)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }
  }

  if (v8 != v3)
  {
LABEL_44:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_10076D178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6F4C657275636573;
  v5 = 0xEF736E6F69746163;
  v6 = 0xE300000000000000;
  v7 = 6448503;
  if (a1 != 4)
  {
    v7 = 0x646574726F706D69;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1936094325;
  if (a1 != 1)
  {
    v9 = 0x63616542666C6573;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1835365481;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF736E6F69746163;
      if (v10 != 0x6F4C657275636573)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6448503)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x646574726F706D69)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936094325)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x63616542666C6573)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1835365481)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10076D358(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEE00646572696170;
  v5 = 0x646572696170;
  if (a1 == 2)
  {
    v5 = 0x6E55794D646E6966;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x8000000101347C10;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E55794D646E6966;
    }

    else
    {
      v11 = 0x646572696170;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00646572696170;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x8000000101347C10;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_10076D4B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F687069;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1684107369;
    }

    else
    {
      v5 = 0x656E6F687069;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 1685024873;
    v4 = 0xE400000000000000;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x6863746177;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6513005;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE400000000000000;
    v8 = 1684107369;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 1685024873;
    v6 = 0xE400000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x6863746177;
    if (a2 != 3)
    {
      v8 = 6513005;
      v7 = 0xE300000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}