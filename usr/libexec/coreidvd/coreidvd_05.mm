uint64_t sub_10008A8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E6573756F68 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746565727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6451044 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10008AB2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100838348, &qword_1006CFCB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v48 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v10 & 1;
  v47 = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v12 & 1;
  v46 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v14 & 1;
  v45 = 3;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v15 & 1;
  v44 = 4;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v16 & 1;
  v43 = 5;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v17 & 1;
  v42 = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = *(v6 + 8);
  v31 = v18;
  v20 = v8;
  v22 = v21;
  v19(v20, v5);
  v23 = v22 & 1;
  v35 = v22 & 1;
  v24 = v41;
  v25 = v40;
  v27 = v39;
  v28 = v38;
  v29 = v37;
  v30 = v36;
  result = sub_10000BB78(a1);
  *a2 = v9;
  *(a2 + 8) = v24;
  *(a2 + 16) = v11;
  *(a2 + 24) = v25;
  *(a2 + 32) = v13;
  *(a2 + 40) = v27;
  *(a2 + 48) = v34;
  *(a2 + 56) = v28;
  *(a2 + 64) = v33;
  *(a2 + 72) = v29;
  *(a2 + 80) = v32;
  *(a2 + 88) = v30;
  *(a2 + 96) = v31;
  *(a2 + 104) = v23;
  return result;
}

void *sub_10008AE24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = sub_100007224(&qword_100835808, &qword_1006C1B10);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v11[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_10009F1DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v18 = 0;
  sub_10009F230();
  v9 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29[8] = v27;
  v29[9] = v28[0];
  *(&v29[9] + 14) = *(v28 + 14);
  v29[4] = v23;
  v29[5] = v24;
  v29[6] = v25;
  v29[7] = v26;
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v12[271] = 1;
  sub_10009F284();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  v29[14] = v16;
  v29[15] = *v17;
  *(&v29[15] + 10) = *&v17[10];
  v29[11] = v13;
  v29[12] = v14;
  v29[13] = v15;
  memcpy(v11, v29, 0x10AuLL);
  sub_10009F2D8(v11, v12);
  sub_10000BB78(a1);
  memcpy(v12, v29, 0x10AuLL);
  sub_10009F310(v12);
  return memcpy(a2, v11, 0x10AuLL);
}

uint64_t sub_10008B118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365727574736567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FD840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FD880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C416F54656D6974 && a2 == 0xEB00000000747265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FD8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEE0074756F656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FD8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FD8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FD900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FD920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FD940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006FD960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001006FD980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEF78754C646F6F47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FD9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x65526569666C6573 && a2 == 0xEE00646572697571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x7541656C62616E65 && a2 == 0xEF6873616C466F74)
  {

    return 21;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_10008B840@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v80 = sub_100007224(&qword_100836BA8, &qword_1006C94B8);
  v5 = *(v80 - 8);
  __chkstk_darwin(v80);
  v7 = &v26 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000AA8A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v50 = a2;
  LOBYTE(v61[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v10;
  sub_100007224(&qword_100836BB8, &qword_1006C94C0);
  LOBYTE(v51) = 1;
  sub_1000AA8F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v61[0];
  LOBYTE(v61[0]) = 2;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v11;
  LOBYTE(v61[0]) = 3;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 4;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 5;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 6;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 7;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 8;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 9;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 10;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 11;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 12;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 13;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 14;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = v13 & 1;
  LOBYTE(v61[0]) = 15;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = v14 & 1;
  LOBYTE(v61[0]) = 16;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = v15 & 1;
  LOBYTE(v61[0]) = 17;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61[0]) = 18;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61[0]) = 19;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61[0]) = 20;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = 21;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v8 + 8))(v7, v80);
  *&v51 = v9;
  *(&v51 + 1) = v49;
  *&v52 = v48;
  *(&v52 + 1) = v46;
  *&v53 = v47;
  *(&v53 + 1) = v45;
  *&v54 = v44;
  *(&v54 + 1) = v43;
  *&v55 = v42;
  *(&v55 + 1) = v41;
  *&v56 = v40;
  *(&v56 + 1) = v12;
  v28 = v12;
  *&v57 = v39;
  *(&v57 + 1) = v38;
  *&v58 = v37;
  *(&v58 + 1) = v36;
  *&v59 = v35;
  LODWORD(v80) = v79;
  BYTE8(v59) = v79;
  *(&v59 + 9) = *v78;
  HIDWORD(v59) = *&v78[3];
  *&v60[0] = v34;
  v26 = v77;
  BYTE8(v60[0]) = v77;
  *(v60 + 9) = *v76;
  HIDWORD(v60[0]) = *&v76[3];
  *&v60[1] = v33;
  v27 = v75;
  BYTE8(v60[1]) = v75;
  LOBYTE(v12) = v31;
  LOBYTE(v8) = v32;
  BYTE9(v60[1]) = v32;
  BYTE10(v60[1]) = v16;
  BYTE11(v60[1]) = v31;
  v17 = v29;
  v18 = v30;
  BYTE12(v60[1]) = v30;
  BYTE13(v60[1]) = v29;
  sub_1000AA9CC(&v51, v61);
  sub_10000BB78(a1);
  v61[0] = v9;
  v61[1] = v49;
  v61[2] = v48;
  v61[3] = v46;
  v61[4] = v47;
  v61[5] = v45;
  v61[6] = v44;
  v61[7] = v43;
  v61[8] = v42;
  v61[9] = v41;
  v61[10] = v40;
  v61[11] = v28;
  v61[12] = v39;
  v61[13] = v38;
  v61[14] = v37;
  v61[15] = v36;
  v61[16] = v35;
  v62 = v80;
  *&v63[3] = *&v78[3];
  *v63 = *v78;
  v64 = v34;
  v65 = v26;
  *v66 = *v76;
  *&v66[3] = *&v76[3];
  v67 = v33;
  v68 = v27;
  v69 = v8;
  v70 = v16;
  v71 = v12;
  v72 = v18;
  v73 = v17;
  result = sub_1000AAA04(v61);
  v20 = v60[0];
  v21 = v50;
  v50[8] = v59;
  v21[9] = v20;
  *(v21 + 158) = *(v60 + 14);
  v22 = v56;
  v21[4] = v55;
  v21[5] = v22;
  v23 = v58;
  v21[6] = v57;
  v21[7] = v23;
  v24 = v52;
  *v21 = v51;
  v21[1] = v24;
  v25 = v54;
  v21[2] = v53;
  v21[3] = v25;
  return result;
}

uint64_t sub_10008BFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEE0074756F656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FD8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEF78754C646F6F47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FD9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FD9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6172466C61746F74 && a2 == 0xEF746E756F43656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDA00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7541656C62616E65 && a2 == 0xEF6873616C466F74)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10008C3A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836BD0, &qword_1006C94C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AAA34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v49[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v43 = a2;
  v12 = v9;
  LOBYTE(v49[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v42 + 1) = v14;
  *&v42 = v13;
  LOBYTE(v49[0]) = 2;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 3;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v16 & 1;
  LOBYTE(v49[0]) = 5;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v49[0]) = 6;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v49[0]) = 7;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v15;
  v36 = v18;
  LOBYTE(v49[0]) = 8;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v64 = v19 & 1;
  LOBYTE(v49[0]) = 9;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v63 = v20 & 1;
  v66 = 10;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v34 = v12;
  *&v44 = v12;
  *(&v44 + 1) = v11;
  v45 = v42;
  *&v46 = v41;
  *(&v46 + 1) = v40;
  *&v47 = v38;
  v33 = v65;
  BYTE8(v47) = v65;
  v22 = v39;
  BYTE9(v47) = v39;
  v23 = v17;
  BYTE10(v47) = v17;
  v24 = v36;
  BYTE11(v47) = v36;
  *v48 = v37;
  v32 = v64;
  v48[8] = v64;
  v25 = v35;
  *&v48[16] = v35;
  v26 = v63;
  v48[24] = v63;
  v48[25] = v21;
  sub_1000AAA88(&v44, v49);
  sub_10000BB78(a1);
  v49[0] = v34;
  v49[1] = v11;
  v50 = v42;
  v51 = v41;
  v52 = v40;
  v53 = v38;
  v54 = v33;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v58 = v37;
  v59 = v32;
  v60 = v25;
  v61 = v26;
  v62 = v21;
  result = sub_1000AAAC0(v49);
  v28 = v47;
  v29 = v43;
  v43[2] = v46;
  v29[3] = v28;
  v29[4] = *v48;
  *(v29 + 74) = *&v48[10];
  v30 = v45;
  *v29 = v44;
  v29[1] = v30;
  return result;
}

uint64_t sub_10008C8FC(void *a1)
{
  v2 = sub_100007224(&qword_1008382D0, &qword_1006CFC70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA168();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

uint64_t sub_10008CAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373656E6576696CLL && a2 == 0xED00006C6562614CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEE0043414673746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xED00004341467370 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEC0000004154746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C63634E78616DLL && a2 == 0xE900000000000077 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x694863634E78616DLL && a2 == 0xEA00000000006867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x536465726F6E6769 && a2 == 0xEF73656863746974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEE0044525073746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEC0000004449746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEC00000044497370 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65756C615678756CLL && a2 == 0xE900000000000073)
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

uint64_t sub_10008CEA0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v93 = sub_100007224(&qword_1008375B8, &qword_1006C9810);
  v5 = *(v93 - 8);
  __chkstk_darwin(v93);
  v7 = &v24 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0E68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v39 = a2;
  LOBYTE(v47) = 0;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v92 = v9 & 1;
  sub_100007224(&qword_100837278, &unk_1006DA590);
  LOBYTE(v40) = 1;
  v10 = sub_1000AF260();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v10;
  v37 = v47;
  sub_100007224(&qword_1008375C8, &qword_1006C9818);
  LOBYTE(v40) = 2;
  sub_1000B0EBC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = 0;
  v34 = v47;
  LOBYTE(v47) = 3;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = BYTE4(v32) & 1;
  LOBYTE(v47) = 4;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = BYTE4(v11) & 1;
  LOBYTE(v47) = 5;
  v12 = v11;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v12;
  v84 = BYTE4(v13) & 1;
  LOBYTE(v47) = 6;
  LODWORD(v12) = v13;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v14 & 1;
  sub_100007224(&qword_1008375E8, &qword_1006C9828);
  LOBYTE(v40) = 7;
  sub_1000B0FBC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v47;
  LOBYTE(v47) = 8;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = BYTE4(v27) & 1;
  sub_100007224(&qword_1008375E0, &qword_1006C9820);
  LOBYTE(v40) = 9;
  v28 = sub_1000B0F40();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v47;
  LOBYTE(v40) = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v47;
  v75 = 11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v93);
  v93 = v76;
  v16 = v38;
  *&v40 = v38;
  v17 = v92;
  BYTE8(v40) = v92;
  v18 = v34;
  *&v41 = v37;
  *(&v41 + 1) = v34;
  LODWORD(v42) = v32;
  v25 = v90;
  BYTE4(v42) = v90;
  DWORD2(v42) = v31;
  v26 = v87;
  BYTE12(v42) = v87;
  LODWORD(v43) = v12;
  LODWORD(v28) = v84;
  BYTE4(v43) = v84;
  *(&v43 + 1) = v30;
  LODWORD(v33) = v81;
  LOBYTE(v44) = v81;
  *(&v44 + 1) = v29;
  LODWORD(v45) = v27;
  LODWORD(v36) = v79;
  BYTE4(v45) = v79;
  *(&v45 + 1) = v35;
  *&v46 = v15;
  *(&v46 + 1) = v76;
  sub_1000B0DAC(&v40, &v47);
  sub_10000BB78(a1);
  v47 = v16;
  v48 = v17;
  *v49 = *v91;
  *&v49[3] = *&v91[3];
  v50 = v37;
  v51 = v18;
  v52 = v32;
  v53 = v25;
  v54 = v88;
  v55 = v89;
  v56 = v31;
  v57 = v26;
  v58 = v85;
  v59 = v86;
  v60 = v12;
  v61 = v28;
  v63 = v83;
  v62 = v82;
  v64 = v30;
  v65 = v33;
  *v66 = *v80;
  *&v66[3] = *&v80[3];
  v67 = v29;
  v68 = v27;
  v69 = v36;
  v70 = v77;
  v71 = v78;
  v72 = v35;
  v73 = v15;
  v74 = v93;
  result = sub_1000B0E38(&v47);
  v20 = v45;
  v21 = v39;
  v39[4] = v44;
  v21[5] = v20;
  v21[6] = v46;
  v22 = v41;
  *v21 = v40;
  v21[1] = v22;
  v23 = v43;
  v21[2] = v42;
  v21[3] = v23;
  return result;
}

uint64_t sub_10008D5EC(void *a1)
{
  v2 = sub_100007224(&qword_100837A40, &qword_1006C9A78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2968();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 1;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

uint64_t sub_10008D798(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00747265436565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00747265437265)
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

uint64_t sub_10008D8B4(void *a1)
{
  v3 = sub_100007224(&qword_100837368, &qword_1006C9738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v10 = 1;
    v9 = sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = 2;
    v9 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_10008DB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001006FDDD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006F9400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x415064656E676973 && a2 == 0xE900000000000043 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FDDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FB930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xEE00325661746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001006FDE30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FDE50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x676E69666F6F7270 && a2 == 0xEC00000065707954)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_10008E004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FE3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FB930 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10008E180@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = sub_100007224(&qword_100837820, &qword_1006C9950);
  v5 = *(v60 - 8);
  __chkstk_darwin(v60);
  v7 = &v25 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1EB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v46 = 0;
  sub_1000ACC1C();
  v9 = v60;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  v54 = v47;
  v55 = v48;
  LOBYTE(v38[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v28 = v10;
  LOBYTE(v38[0]) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = v13 & 1;
  v45 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = *(v8 + 8);
  v26 = v14;
  v17 = v16;
  v15(v7, v9);
  v31 = v56;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v29 = v54;
  v30 = v55;
  v18 = v27;
  v19 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v12;
  *&v36 = v27;
  LOBYTE(v9) = v53;
  BYTE8(v36) = v53;
  *&v37 = v26;
  *(&v37 + 1) = v17;
  sub_1000B1F0C(&v29, v38);
  sub_10000BB78(a1);
  v38[2] = v56;
  v38[3] = v57;
  v38[4] = v58;
  v38[5] = v59;
  v38[0] = v54;
  v38[1] = v55;
  v39 = v19;
  v40 = v12;
  v41 = v18;
  v42 = v9;
  v43 = v26;
  v44 = v17;
  result = sub_1000B1F44(v38);
  v21 = v36;
  a2[6] = v35;
  a2[7] = v21;
  a2[8] = v37;
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  v23 = v34;
  a2[4] = v33;
  a2[5] = v23;
  v24 = v30;
  *a2 = v29;
  a2[1] = v24;
  return result;
}

uint64_t sub_10008E4D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496863746162 && a2 == 0xE700000000000000)
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

uint64_t sub_10008E5F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v4 = sub_100007224(&qword_1008376F0, &qword_1006C98C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v11, v8);
  sub_10000BA08(a1, a1[3]);
  sub_1000AC808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v12 = v5;
    v32 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v13 = v29;
    v26 = v28;
    v15 = v30;
    v14 = v31;
    LOBYTE(v28) = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v15;
    v25 = v16;
    LOBYTE(v28) = 2;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    (*(v12 + 8))(v7, v4);

    v20 = v14;

    sub_10000BB78(a1);

    v22 = v27;
    *v27 = v26;
    v22[1] = v13;
    v23 = v25;
    v22[2] = v24;
    v22[3] = v20;
    v22[4] = v23;
    v22[5] = v17;
    v22[6] = v19;
  }

  return result;
}

unint64_t sub_10008E914(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9198, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008E960@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837700, &qword_1006C98D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v37 = v13;
  (*(v10 + 8))(v12, v9);
  sub_10000BA08(a1, a1[3]);
  sub_1000AC85C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v36 = a2;
    LOBYTE(v38) = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v14 = v43;
    v15 = v44;
    v16 = v45;
    v37 = v46;
    LOBYTE(v43) = 1;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v43) = 2;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v16;
    v33 = v14;
    v18 = v17;
    LOBYTE(v43) = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v20;
    v31 = v19;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    v53 = 4;
    sub_1000ACE58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v30 = v54;
    v22 = v33;
    *&v38 = v33;
    *(&v38 + 1) = v15;
    v23 = v32;
    v24 = v37;
    *&v39 = v32;
    *(&v39 + 1) = v37;
    v25 = v35;
    *&v40 = v35;
    *(&v40 + 1) = v34;
    *&v41 = v18;
    *(&v41 + 1) = v31;
    *&v42 = v21;
    *(&v42 + 1) = v54;
    sub_1000B164C(&v38, &v43);
    sub_10000BB78(a1);
    v43 = v22;
    v44 = v15;
    v45 = v23;
    v46 = v24;
    v47 = v25;
    v48 = v34;
    v49 = v18;
    v50 = v31;
    v51 = v21;
    v52 = v30;
    result = sub_1000B1684(&v43);
    v27 = v41;
    v28 = v36;
    v36[2] = v40;
    v28[3] = v27;
    v28[4] = v42;
    v29 = v39;
    *v28 = v38;
    v28[1] = v29;
  }

  return result;
}

uint64_t sub_10008EDF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964616572 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E497972746572 && a2 == 0xED00006C61767265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10008EF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100837020, &qword_1006C9610);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000ACF74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v29 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = 1;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v11;
    v12 = v10;
    v27 = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v24 = v13;
    v26 = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = *(v6 + 8);
    v23 = v16;
    v18 = v8;
    v20 = v19;
    v17(v18, v5);
    result = sub_10000BB78(a1);
    *a2 = v9 & 1;
    *(a2 + 8) = v12;
    *(a2 + 16) = v25 & 1;
    v22 = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = v15;
    *(a2 + 40) = v22;
    *(a2 + 48) = v20;
  }

  return result;
}

unint64_t sub_10008F1A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9230, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008F1F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100837000, &qword_1006C9608);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000ACE04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    LOBYTE(v45) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v10 & 1;
    LOBYTE(v45) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v37 = v11;
    v38 = v9;
    LOBYTE(v45) = 2;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v36 = v14;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    LOBYTE(v39) = 3;
    sub_1000ACE58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = a2;
    v35 = v45;
    LOBYTE(v45) = 4;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    v33 = v17;
    v58 = 5;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    v23 = *(v6 + 8);
    v32 = v20;
    v23(v8, v5);
    v22 &= 1u;
    v56 = v22;
    *&v39 = v38;
    HIDWORD(v31) = v57;
    BYTE8(v39) = v57;
    v24 = v37;
    *&v40 = v37;
    *(&v40 + 1) = v13;
    v25 = v36;
    *&v41 = v36;
    *(&v41 + 1) = v16;
    v26 = v35;
    *&v42 = v35;
    *(&v42 + 1) = v33;
    *&v43 = v19;
    *(&v43 + 1) = v32;
    v44 = v22;
    sub_1000ACF0C(&v39, &v45);
    sub_10000BB78(a1);
    v45 = v38;
    v46 = BYTE4(v31);
    v47 = v24;
    v48 = v13;
    v49 = v25;
    v50 = v16;
    v51 = v26;
    v52 = v33;
    v53 = v19;
    v54 = v32;
    v55 = v22;
    result = sub_1000ACF44(&v45);
    v28 = v42;
    v29 = v34;
    *(v34 + 32) = v41;
    *(v29 + 48) = v28;
    *(v29 + 64) = v43;
    *(v29 + 80) = v44;
    v30 = v40;
    *v29 = v39;
    *(v29 + 16) = v30;
  }

  return result;
}

uint64_t sub_10008F644(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69737265566462 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10008F848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_1008373D0, &qword_1006C9768);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFEB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v39[0]) = 1;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v12;
  LOBYTE(v39[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v14;
  v26 = v13;
  LOBYTE(v39[0]) = 3;
  v29 = 0;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v15;
  LOBYTE(v39[0]) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v16;
  v41 = 5;
  sub_1000AFF04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  LODWORD(v29) = v42;
  *&v33 = v9;
  *(&v33 + 1) = v11;
  *&v34 = v30;
  v17 = v32;
  *(&v34 + 1) = v32;
  *&v35 = v26;
  v18 = v31;
  *(&v35 + 1) = v31;
  *&v36 = v25;
  v19 = v28;
  *(&v36 + 1) = v28;
  *&v37 = v24;
  v20 = v27;
  *(&v37 + 1) = v27;
  v38 = v42;
  sub_1000AFF58(&v33, v39);
  sub_10000BB78(a1);
  v39[0] = v9;
  v39[1] = v11;
  v39[2] = v30;
  v39[3] = v17;
  v39[4] = v26;
  v39[5] = v18;
  v39[6] = v25;
  v39[7] = v19;
  v39[8] = v24;
  v39[9] = v20;
  v40 = v29;
  result = sub_1000AFF90(v39);
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v23 = v34;
  *a2 = v33;
  *(a2 + 16) = v23;
  return result;
}

void *sub_10008FCE8(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v13 = v3;
  v4 = sub_100007224(&qword_100836FF0, &qword_1006C9600);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6 - 8];
  sub_10000BA08(v2, v2[3]);
  sub_1000ACDB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(v2);
  }

  v8 = v13;
  sub_10007FDA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  memcpy(v11, v12, sizeof(v11));
  sub_10000BB78(v2);
  return memcpy(v8, v11, 0x2181uLL);
}

uint64_t sub_10008FEBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE310 == a2)
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

unint64_t sub_10008FFD8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F92E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_100090024(void *a1)
{
  v76 = type metadata accessor for DIPError.Code();
  v63 = *(v76 - 8);
  __chkstk_darwin(v76);
  v77 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Logger();
  v80 = *(v73 - 8);
  __chkstk_darwin(v73);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100837528, &qword_1006C97C8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = sub_10000BA08(a1, a1[3]);
  v12 = sub_1000B0BB4();
  v13 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v83 = v13;
  if (v13)
  {
LABEL_26:
    sub_10000BB78(a1);
    return v11;
  }

  v14 = v80;
  v69 = v12;
  v70 = v8;
  v61 = a1;
  v72 = v10;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  v71 = v15;
  v68 = v16;
  if (!v16)
  {
    v11 = &_swiftEmptyDictionarySingleton;
    (*(v5 + 8))(v72, v4);
    goto LABEL_29;
  }

  v79 = v4;
  v17 = 0;
  v67 = 0x80000001006FD760;
  v65 = 0x80000001006FD780;
  v62 = (v14 + 8);
  v18 = (v5 + 8);
  v19 = (v15 + 40);
  v78 = &_swiftEmptyDictionarySingleton;
  v20 = v83;
  v21 = v76;
  v22 = v77;
  v23 = v73;
  v66 = v18;
  do
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v28 = *(v19 - 1);
    v29 = *v19;
    v75 = v19;
    v80 = v28;
    v81 = v28;
    v82 = v29;

    v30 = v79;
    v11 = v72;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v20)
    {
      v83 = v20;
      (*v18)(v72, v30);

LABEL_25:
      a1 = v61;
      goto LABEL_26;
    }

    v74 = v17;
    v81 = 0xD00000000000001FLL;
    v82 = v67;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v81 = 0xD00000000000001ELL;
    v82 = v65;
    KeyedDecodingContainer.decode(_:forKey:)();
    v83 = 0;
    if (v31 <= 0)
    {
      v32 = v64;
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "DEBUG turning issuerCurrentCredentialCapacity from 0 to 1", v35, 2u);
        v23 = v73;
      }

      (*v62)(v32, v23);
      v31 = 1;
      v21 = v76;
      v22 = v77;
      v30 = v79;
    }

    v36 = Data.init(base64urlEncoded:)();
    if (v37 >> 60 == 15)
    {

      (*(v63 + 104))(v22, enum case for DIPError.Code.provisioningAttestationsUnavailable(_:), v21);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v57 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v83 = v57;
      swift_willThrow();
      v11 = v66;
      v58 = *v66;
      (*v66)(v70, v30);
      v58(v72, v30);
      goto LABEL_25;
    }

    v38 = v36;
    v39 = v37;
    sub_10000B8B8(v36, v37);
    v40 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v40;
    v43 = sub_10003ADCC(v80, v29);
    v44 = v40[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_31;
    }

    v47 = v42;
    if (v40[3] >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100170000();
      }
    }

    else
    {
      sub_100167164(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_10003ADCC(v80, v29);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_33;
      }

      v43 = v48;
    }

    v50 = v74;
    if (v47)
    {

      v78 = v81;
      v24 = (*(v81 + 56) + 24 * v43);
      v25 = v24[1];
      v26 = v24[2];
      *v24 = v31;
      v24[1] = v38;
      v24[2] = v39;
      sub_10000B90C(v25, v26);
      sub_10000BD94(v38, v39);
      v18 = v66;
      v27 = *v66;
      (*v66)(v70, v79);
    }

    else
    {
      v51 = v81;
      *(v81 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v52 = (v51[6] + 16 * v43);
      *v52 = v80;
      v52[1] = v29;
      v53 = (v51[7] + 24 * v43);
      *v53 = v31;
      v53[1] = v38;
      v53[2] = v39;
      sub_10000BD94(v38, v39);
      v18 = v66;
      v27 = *v66;
      (*v66)(v70, v79);
      v54 = v51[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_32;
      }

      v78 = v51;
      v51[2] = v56;
    }

    v17 = v50 + 1;
    v21 = v76;
    v19 = v75 + 2;
    v20 = v83;
    v22 = v77;
    v23 = v73;
    v15 = v71;
  }

  while (v68 != v17);
  v11 = v78;
  v27(v72, v79);
LABEL_29:

  sub_10000BB78(v61);
  return v11;
}

uint64_t sub_10009085C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001006FE110 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FE130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5372656E74726170 && a2 == 0xEF6449656D656863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616548666C6573 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69666F6F7270 && a2 == 0xED00006574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D79616C70736964 && a2 == 0xEF73656761737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FE190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FE1B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001006FE1D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE1F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE0F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FA480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5570657453646964 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001006FE270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001006FE290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FDE50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xEE006769666E6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006F8C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6179727465527369 && a2 == 0xEB00000000656C62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6E656B6F54696970 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6374614D65636166 && a2 == 0xEF746C7573655268 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FE2F0 == a2)
  {

    return 31;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 31;
    }

    else
    {
      return 32;
    }
  }
}

uint64_t sub_100091240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973726556636166 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736F5065636166 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x566C6F6F74646170 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973726556647270 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000913C4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837510, &qword_1006C97B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1000AFCC0(&v28, v32);
  sub_10000BB78(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_1000AFC28(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_1000916B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xE900000000000065)
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

uint64_t sub_1000917DC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008373A8, &qword_1006C9758);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFD4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v9 = a2;
  LOBYTE(v30) = 0;
  sub_1000AFDA0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v36;
  v29 = v37;
  LOBYTE(v30) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v36;
  v26 = v37;
  v46 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v24 = *(&v44 + 1);
  v25 = v44;
  v22 = *(&v45 + 1);
  v23 = v45;
  v10 = v28;
  v30 = v28;
  v11 = *(&v28 + 1);
  v12 = v29;
  v31 = v29;
  v13 = *(&v29 + 1);
  v32 = v27;
  v16 = v26;
  v14 = v16 >> 64;
  v15 = v16;
  v33 = v26;
  v34 = v44;
  v35 = v45;
  sub_1000AFDF4(&v30, &v36);
  sub_10000BB78(a1);
  *&v36 = v10;
  *(&v36 + 1) = v11;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  v38 = v27;
  v39 = __PAIR128__(v14, v15);
  v40 = v25;
  v41 = v24;
  v42 = v23;
  v43 = v22;
  result = sub_1000AFE2C(&v36);
  v18 = v33;
  v9[2] = v32;
  v9[3] = v18;
  v19 = v35;
  v9[4] = v34;
  v9[5] = v19;
  v20 = v31;
  *v9 = v30;
  v9[1] = v20;
  return result;
}

uint64_t sub_100091C24(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100007224(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000BA08(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  sub_10000BB78(a1);
  return v11;
}

uint64_t sub_100091E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FB930 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100092028(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_100007224(&qword_100837100, &qword_1006C9680);
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v50 = v12;
  (*(v9 + 8))(v11, v8);
  v13 = a1[3];
  v48 = a1;
  sub_10000BA08(a1, v13);
  sub_1000AE548();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v49 = v2;
    LODWORD(v46) = 0;
    LODWORD(v47) = 0;
    sub_10000BB78(v48);

    sub_1000AB97C(0, 0, 0, 0, 0, 0);
    if (v46)
    {
    }

    if (v47)
    {
    }
  }

  else
  {
    v14 = v5;
    LOBYTE(v51) = 0;
    sub_1000AB1A8();
    v15 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v16 = v60;
    v42 = v61;
    v17 = v62;
    v50 = v63;
    LOBYTE(v51) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v17;
    v46 = v16;
    v19 = v60;
    v18 = v61;
    v40 = v64;
    v41 = v63;
    v38 = v62;
    v39 = v65;
    LOBYTE(v60) = 2;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = v20;
    LOBYTE(v60) = 3;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v21;
    sub_100007224(&qword_100837110, &qword_1006C9688);
    LOBYTE(v51) = 4;
    sub_1000AE59C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v60;
    v77 = 5;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = 0;
    v24 = *(v14 + 8);
    v25 = v23;
    v35 = v26;
    v24(v7, v15);
    v27 = v42;
    *&v51 = v46;
    *(&v51 + 1) = v42;
    *&v52 = v45;
    *(&v52 + 1) = v50;
    *&v53 = v19;
    *(&v53 + 1) = v18;
    v28 = v38;
    *&v54 = v38;
    *(&v54 + 1) = v41;
    *&v55 = v40;
    *(&v55 + 1) = v39;
    *&v56 = v37;
    *(&v56 + 1) = v44;
    v29 = v35;
    *&v57 = v36;
    *(&v57 + 1) = v43;
    *&v58 = v22;
    *(&v58 + 1) = v25;
    v59 = v35;
    sub_1000AE674(&v51, &v60);
    sub_10000BB78(v48);
    v60 = v46;
    v61 = v27;
    v62 = v45;
    v63 = v50;
    v64 = v19;
    v65 = v18;
    v66 = v28;
    v67 = v41;
    v68 = v40;
    v69 = v39;
    v70 = v37;
    v71 = v44;
    v72 = v36;
    v73 = v43;
    v74 = v22;
    v75 = v25;
    v76 = v29;
    sub_1000AE6AC(&v60);
    v30 = v58;
    *(a2 + 96) = v57;
    *(a2 + 112) = v30;
    *(a2 + 128) = v59;
    v31 = v54;
    *(a2 + 32) = v53;
    *(a2 + 48) = v31;
    v32 = v56;
    *(a2 + 64) = v55;
    *(a2 + 80) = v32;
    v33 = v52;
    *a2 = v51;
    *(a2 + 16) = v33;
  }
}

uint64_t sub_100092620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE0F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FA480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xEC00000065707954)
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

uint64_t sub_1000927D8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = sub_100007224(&qword_100837380, &qword_1006C9748);
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v24 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v28 = a2;
  LOBYTE(v37[0]) = 0;
  v9 = v29;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v27 = v10;
  v55 = 1;
  sub_1000AFBD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  LOBYTE(v37[0]) = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37[0]) = 3;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v8 + 8))(v7, v9);
  v17 = v26;
  v16 = v27;
  *&v30 = v27;
  *(&v30 + 1) = v12;
  v31 = v50;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v18 = v25;
  *&v35 = v26;
  *(&v35 + 1) = v25;
  *&v36 = v13;
  *(&v36 + 1) = v15;
  sub_1000AFC58(&v30, v37);
  sub_10000BB78(a1);
  v37[0] = v16;
  v37[1] = v12;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v42 = v17;
  v43 = v18;
  v44 = v13;
  v45 = v15;
  result = sub_1000AFC90(v37);
  v20 = v35;
  v21 = v28;
  v28[4] = v34;
  v21[5] = v20;
  v21[6] = v36;
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  v23 = v33;
  v21[2] = v32;
  v21[3] = v23;
  return result;
}

uint64_t sub_100092B14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_1008374D0, &qword_1006C9798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B07D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v14) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 1;
  sub_1000B0828();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v14;
  v10 = v15;
  v11 = v16;
  result = sub_10000BB78(a1);
  *a2 = v9;
  *(a2 + 8) = v13;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_100092CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FB930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FDDB0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100092F00(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = sub_100007224(&qword_1008370E8, &qword_1006C9670);
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v36 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v54 = v12;
  (*(v9 + 8))(v11, v8);
  v13 = a1[3];
  v52 = a1;
  sub_10000BA08(a1, v13);
  sub_1000AE48C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v53 = v2;
    LODWORD(v50) = 0;
    LODWORD(v49) = 0;
    LODWORD(v51) = 0;
    sub_10000BB78(v52);

    sub_1000AB97C(0, 0, 0, 0, 0, 0);
    if (v50)
    {
    }

    if (v49)
    {
    }

    if (v51)
    {
    }
  }

  else
  {
    v14 = v5;
    LOBYTE(v55) = 0;
    sub_1000AB1A8();
    v15 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v16 = v64;
    v46 = v65;
    v17 = v66;
    v54 = v67;
    LOBYTE(v55) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v17;
    v19 = v64;
    v41 = v65;
    v42 = v66;
    v44 = v68;
    v45 = v67;
    v43 = v69;
    LOBYTE(v64) = 2;
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v20;
    LOBYTE(v64) = 3;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v21;
    LOBYTE(v64) = 4;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v16;
    v23 = v22;
    v82 = 5;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = 0;
    v25 = *(v14 + 8);
    v26 = v24;
    v37 = v27;
    v25(v7, v15);
    v28 = v41;
    v29 = v46;
    *&v55 = v40;
    *(&v55 + 1) = v46;
    v38 = v18;
    *&v56 = v18;
    *(&v56 + 1) = v54;
    *&v57 = v19;
    *(&v57 + 1) = v41;
    v30 = v42;
    *&v58 = v42;
    *(&v58 + 1) = v45;
    *&v59 = v44;
    *(&v59 + 1) = v43;
    *&v60 = v50;
    *(&v60 + 1) = v48;
    *&v61 = v49;
    *(&v61 + 1) = v47;
    *&v62 = v39;
    *(&v62 + 1) = v23;
    v31 = v37;
    *&v63 = v26;
    *(&v63 + 1) = v37;
    sub_1000AE4E0(&v55, &v64);
    sub_10000BB78(v52);
    v64 = v40;
    v65 = v29;
    v66 = v38;
    v67 = v54;
    v68 = v19;
    v69 = v28;
    v70 = v30;
    v71 = v45;
    v72 = v44;
    v73 = v43;
    v74 = v50;
    v75 = v48;
    v76 = v49;
    v77 = v47;
    v78 = v39;
    v79 = v23;
    v80 = v26;
    v81 = v31;
    sub_1000AE518(&v64);
    v32 = v62;
    a2[6] = v61;
    a2[7] = v32;
    a2[8] = v63;
    v33 = v58;
    a2[2] = v57;
    a2[3] = v33;
    v34 = v60;
    a2[4] = v59;
    a2[5] = v34;
    v35 = v56;
    *a2 = v55;
    a2[1] = v35;
  }
}

uint64_t sub_1000934DC(void *a1)
{
  v3 = sub_100007224(&qword_1008383E0, &qword_1006CFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000BA5F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_1000BA648();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

unint64_t sub_1000936A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9348, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000936EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1000938B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008377D0, &qword_1006C9938);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v68 = a1;
  sub_10000BA08(a1, v9);
  sub_1000B1BEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v68);
  }

  v10 = v6;
  v54 = 0;
  sub_1000ACC1C();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = v57;
  v65 = v58;
  v66 = v59;
  v67 = v60;
  v62 = v55;
  v63 = v56;
  LOBYTE(v42[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v15 = v12;
  LOBYTE(v42[0]) = 2;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v61 = v16 & 1;
  sub_100007224(&qword_1008377E0, &qword_1006C9940);
  LOBYTE(v32) = 3;
  sub_1000B1C40();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v15;
  v17 = *&v42[0];
  v51 = 4;
  sub_1000B1CF4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  v28 = v53;
  v29 = v52;
  v18 = *(&v53 + 1);
  v34 = v64;
  v35 = v65;
  v36 = v66;
  v37 = v67;
  v32 = v62;
  v33 = v63;
  v20 = v30;
  v19 = v31;
  *&v38 = v30;
  *(&v38 + 1) = v14;
  *&v39 = v31;
  v21 = v61;
  BYTE8(v39) = v61;
  *&v40 = v17;
  *(&v40 + 1) = v52;
  v41 = v53;
  sub_1000B1D48(&v32, v42);
  sub_10000BB78(v68);
  v42[2] = v64;
  v42[3] = v65;
  v42[4] = v66;
  v42[5] = v67;
  v42[0] = v62;
  v42[1] = v63;
  v43 = v20;
  v44 = v14;
  v45 = v19;
  v46 = v21;
  v47 = v17;
  v48 = v29;
  v49 = v28;
  v50 = v18;
  result = sub_1000B1D80(v42);
  v23 = v39;
  a2[6] = v38;
  a2[7] = v23;
  v24 = v41;
  a2[8] = v40;
  a2[9] = v24;
  v25 = v35;
  a2[2] = v34;
  a2[3] = v25;
  v26 = v37;
  a2[4] = v36;
  a2[5] = v26;
  v27 = v33;
  *a2 = v32;
  a2[1] = v27;
  return result;
}

uint64_t sub_100093CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69676552627573 && a2 == 0xED000065646F436ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FB930 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100093F1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = sub_100007224(&qword_100837708, &qword_1006C98D8);
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v39 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v59 = v12;
  (*(v9 + 8))(v11, v8);
  v13 = a1[3];
  v56 = a1;
  sub_10000BA08(a1, v13);
  sub_1000AC9B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v57 = v2;
    LODWORD(v54) = 0;
    LODWORD(v55) = 0;
    v58 = 0;
    sub_10000BB78(v56);

    sub_1000AB97C(0, 0, 0, 0, 0, 0);
    if (v54)
    {
    }

    if (v55)
    {
    }
  }

  else
  {
    v14 = v5;
    LOBYTE(v60) = 0;
    sub_1000AB1A8();
    v15 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v16 = v70;
    v50 = v71;
    v17 = v72;
    v59 = v73;
    LOBYTE(v60) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54 = v17;
    v18 = v16;
    v20 = v70;
    v19 = v71;
    v46 = v74;
    v47 = v72;
    v48 = v75;
    v49 = v73;
    LOBYTE(v70) = 2;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v21;
    LOBYTE(v70) = 3;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v22;
    LOBYTE(v70) = 4;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v51 = v23;
    LOBYTE(v70) = 5;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v24;
    v90 = 6;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = 0;
    v26 = *(v14 + 8);
    v27 = v25;
    v40 = v28;
    v26(v7, v15);
    v41 = v18;
    *&v60 = v18;
    *(&v60 + 1) = v50;
    v29 = v59;
    *&v61 = v54;
    *(&v61 + 1) = v59;
    *&v62 = v20;
    *(&v62 + 1) = v19;
    v30 = v46;
    v31 = v47;
    *&v63 = v47;
    *(&v63 + 1) = v49;
    *&v64 = v46;
    *(&v64 + 1) = v48;
    *&v65 = v45;
    *(&v65 + 1) = v53;
    *&v66 = v44;
    *(&v66 + 1) = v52;
    *&v67 = v43;
    *(&v67 + 1) = v51;
    *&v68 = v42;
    *(&v68 + 1) = v58;
    v32 = v40;
    *&v69 = v27;
    *(&v69 + 1) = v40;
    sub_1000B16B4(&v60, &v70);
    sub_10000BB78(v56);
    v70 = v41;
    v71 = v50;
    v72 = v54;
    v73 = v29;
    v74 = v20;
    v75 = v19;
    v76 = v31;
    v77 = v49;
    v78 = v30;
    v79 = v48;
    v80 = v45;
    v81 = v53;
    v82 = v44;
    v83 = v52;
    v84 = v43;
    v85 = v51;
    v86 = v42;
    v87 = v58;
    v88 = v27;
    v89 = v32;
    result = sub_1000B16EC(&v70);
    v34 = v67;
    a2[6] = v66;
    a2[7] = v34;
    v35 = v69;
    a2[8] = v68;
    a2[9] = v35;
    v36 = v63;
    a2[2] = v62;
    a2[3] = v36;
    v37 = v65;
    a2[4] = v64;
    a2[5] = v37;
    v38 = v61;
    *a2 = v60;
    a2[1] = v38;
  }

  return result;
}

uint64_t sub_100094584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xEE006769666E6F43)
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

uint64_t sub_1000946B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1000947C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837628, &qword_1006C9838);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B126C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v29 = a2;
  v12 = v9;
  LOBYTE(v35[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v28 + 1) = v14;
  *&v28 = v13;
  v39 = 2;
  sub_1000B12C0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = v36;
  v15 = v37;
  v26 = *(&v36 + 1);
  v16 = *(&v37 + 1);
  v25 = *(&v38 + 1);
  v17 = v38;
  *&v30 = v12;
  *(&v30 + 1) = v11;
  v18 = v28;
  v31 = v28;
  v19 = *(&v28 + 1);
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_1000B1314(&v30, v35);
  sub_10000BB78(a1);
  v35[0] = v12;
  v35[1] = v11;
  v35[2] = v18;
  v35[3] = v19;
  v35[4] = v27;
  v35[5] = v26;
  v35[6] = v15;
  v35[7] = v16;
  v35[8] = v17;
  v35[9] = v25;
  result = sub_1000B134C(v35);
  v21 = v33;
  v22 = v29;
  v29[2] = v32;
  v22[3] = v21;
  v22[4] = v34;
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  return result;
}

uint64_t sub_100094B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644964726F636572 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001006FE110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE6B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100094C74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_1008383B0, &qword_1006CFCF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA54C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v23 = 0;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v24;
  LOBYTE(v24) = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = 0;
  v21 = v9;
  LOBYTE(v24) = 2;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v11;
  v18 = v10;
  v23 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v24;
  result = sub_10000BB78(a1);
  v14 = v19;
  *a2 = v22;
  *(a2 + 8) = v14;
  v15 = v18;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17 & 1;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_100094F44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001006F8C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006FDB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144434150736469 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100095108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006F8C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006FDB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE00736D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144434150736469 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144434150736469 && a2 == 0xEE007473694C6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1000954AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE530 == a2)
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

uint64_t sub_1000955D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F4365636E6F6ELL && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10009575C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_100007224(&qword_1008378B0, &qword_1006C99A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v41 = v12;
  (*(v9 + 8))(v11, v8);
  sub_10000BA08(a1, a1[3]);
  sub_1000ACA0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v39 = v5;
    LOBYTE(v42) = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v13 = v49;
    v14 = v50;
    v15 = v51;
    v41 = v52;
    LOBYTE(v49) = 1;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v15;
    v38 = v13;
    LOBYTE(v49) = 2;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v66 = 3;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v39 + 8))(v7, v4);
    v39 = v62;
    v34 = *(&v63 + 1);
    v35 = v63;
    v32 = *(&v64 + 1);
    v33 = v64;
    v30 = v16;
    v31 = v65;
    v19 = v38;
    *&v42 = v38;
    *(&v42 + 1) = v14;
    v20 = v16;
    v22 = v36;
    v21 = v37;
    v23 = v41;
    *&v43 = v37;
    *(&v43 + 1) = v41;
    *&v44 = v36;
    *(&v44 + 1) = v20;
    *&v45 = v18;
    *(&v45 + 1) = v62;
    v46 = v63;
    v47 = v64;
    v48 = v65;
    sub_1000B2140(&v42, &v49);
    sub_10000BB78(a1);
    v49 = v19;
    v50 = v14;
    v51 = v21;
    v52 = v23;
    v53 = v22;
    v54 = v30;
    v55 = v18;
    v56 = v39;
    v57 = v35;
    v58 = v34;
    v59 = v33;
    v60 = v32;
    v61 = v31;
    result = sub_1000B2178(&v49);
    v25 = v47;
    v26 = v40;
    *(v40 + 64) = v46;
    *(v26 + 80) = v25;
    *(v26 + 96) = v48;
    v27 = v43;
    *v26 = v42;
    *(v26 + 16) = v27;
    v28 = v45;
    *(v26 + 32) = v44;
    *(v26 + 48) = v28;
  }

  return result;
}

uint64_t sub_100095B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636E6F6ELL && a2 == 0xE600000000000000)
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

uint64_t sub_100095C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = sub_100007224(&qword_100837048, &qword_1006C9620);
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v19 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000AD01C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v47 = 0;
  sub_1000ACC1C();
  v9 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v40 = v34;
  v41 = v35;
  LOBYTE(v29[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v19 = v10;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v46 = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  v13 = v33;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v26 = v45;
  v21 = v40;
  v22 = v41;
  v14 = v19;
  *&v27 = v19;
  *(&v27 + 1) = v12;
  v28 = v33;
  sub_1000AD070(&v21, v29);
  sub_10000BB78(a1);
  v29[2] = v42;
  v29[3] = v43;
  v29[4] = v44;
  v29[5] = v45;
  v29[0] = v40;
  v29[1] = v41;
  v30 = v14;
  v31 = v12;
  v32 = v13;
  result = sub_1000AD0A8(v29);
  v16 = v26;
  *(a2 + 64) = v25;
  *(a2 + 80) = v16;
  *(a2 + 96) = v27;
  *(a2 + 112) = v28;
  v17 = v22;
  *a2 = v21;
  *(a2 + 16) = v17;
  v18 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_100095FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001006FDAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE00736D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144766469 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEF617461446E6F69)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000961D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5F64616F6C796170 && a2 == 0xEE006572756E6574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001006FD490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001006FD4C0 == a2)
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

uint64_t sub_10009639C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
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

uint64_t sub_10009656C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001006FDAA0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDBB0 == a2)
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

uint64_t sub_10009669C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954707570657473 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEF617461446E6F69)
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

uint64_t sub_100096868@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = sub_100007224(&qword_100837A10, &qword_1006C9A58);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v28 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2820();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v66 = 0;
  sub_1000ACC1C();
  v9 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v59 = v53;
  v60 = v54;
  LOBYTE(v45[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v32 = v10;
  LOBYTE(v45[0]) = 2;
  *&v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v31 + 1) = v13;
  LOBYTE(v45[0]) = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v14;
  v65 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v8 + 8);
  v17 = v15;
  v29 = v18;
  v16(v7, v9);
  v37 = v61;
  v38 = v62;
  v39 = v63;
  v40 = v64;
  v35 = v59;
  v36 = v60;
  v20 = v32;
  v19 = v33;
  *&v41 = v32;
  *(&v41 + 1) = v12;
  v42 = v31;
  v21 = v29;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v17;
  *(&v44 + 1) = v29;
  sub_1000B2874(&v35, v45);
  sub_10000BB78(a1);
  v45[2] = v61;
  v45[3] = v62;
  v45[4] = v63;
  v45[5] = v64;
  v45[0] = v59;
  v45[1] = v60;
  v46 = v20;
  v47 = v12;
  v48 = v31;
  v49 = v30;
  v50 = v19;
  v51 = v17;
  v52 = v21;
  result = sub_1000B28AC(v45);
  v23 = v42;
  a2[6] = v41;
  a2[7] = v23;
  v24 = v44;
  a2[8] = v43;
  a2[9] = v24;
  v25 = v38;
  a2[2] = v37;
  a2[3] = v25;
  v26 = v40;
  a2[4] = v39;
  a2[5] = v26;
  v27 = v36;
  *a2 = v35;
  a2[1] = v27;
  return result;
}

uint64_t sub_100096C44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001006FD430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001006FD450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52746C7561666544 && a2 == 0xED00006E6F696765 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006C5730 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100096DBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100835698, &qword_1006C1A68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009E958();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_100007224(&qword_1008356A8, &qword_1006C1A70);
  v22 = 0;
  sub_10009E9AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v20;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v22 = 1;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v20;
  LOBYTE(v20) = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v10;
  v22 = 3;
  sub_10009EA8C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  v12 = v21;
  result = sub_10000BB78(a1);
  v14 = v19;
  *a2 = v9;
  a2[1] = v14;
  v15 = v18;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v11;
  a2[5] = v12;
  return result;
}

unint64_t sub_1000970CC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

void *sub_100097120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836B50, &qword_1006C9490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = a1[3];
  v103 = a1;
  sub_10000BA08(a1, v9);
  sub_1000AA5D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v103);
  }

  v10 = v6;
  v11 = a2;
  LOBYTE(v105[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v105[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v105[0]) = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v105[0]) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v105[0]) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v101 = v20;
  LOBYTE(v105[0]) = 5;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v22;
  v100 = v21;
  LOBYTE(v105[0]) = 6;
  v96 = 0;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v95 = v23;
  LOBYTE(v105[0]) = 7;
  v98 = KeyedDecodingContainer.decode(_:forKey:)();
  v94 = v24;
  LOBYTE(v105[0]) = 8;
  v85 = KeyedDecodingContainer.decode(_:forKey:)();
  v102 = 0;
  v93 = v25;
  LOBYTE(v105[0]) = 9;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v92 = v27;
  v102 = 0;
  v28 = v26;
  LOBYTE(v105[0]) = 10;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v178 = v29 & 1;
  LOBYTE(v105[0]) = 11;
  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v176 = v30 & 1;
  LOBYTE(v105[0]) = 12;
  v82 = KeyedDecodingContainer.decode(_:forKey:)();
  v91 = v31;
  v102 = 0;
  LOBYTE(v105[0]) = 13;
  v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v174 = v32 & 1;
  LOBYTE(v105[0]) = 14;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v172 = v33 & 1;
  LOBYTE(v105[0]) = 15;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v170 = v34 & 1;
  LOBYTE(v105[0]) = 16;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v168 = v35 & 1;
  LOBYTE(v105[0]) = 17;
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v166 = v36 & 1;
  LOBYTE(v105[0]) = 18;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = v37;
  v102 = 0;
  LOBYTE(v105[0]) = 19;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = v38;
  v102 = 0;
  LOBYTE(v105[0]) = 20;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v39;
  v102 = 0;
  LOBYTE(v105[0]) = 21;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = v40;
  v102 = 0;
  LOBYTE(v105[0]) = 22;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v164 = v41 & 1;
  LOBYTE(v105[0]) = 23;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v162 = v42 & 1;
  LOBYTE(v105[0]) = 24;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  LOBYTE(v105[0]) = 25;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v159 = v43 & 1;
  LOBYTE(v105[0]) = 26;
  v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  v157 = v44 & 1;
  LOBYTE(v105[0]) = 27;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v45;
  v102 = 0;
  LOBYTE(v105[0]) = 28;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v46;
  v102 = 0;
  v155 = 29;
  LODWORD(v96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = 0;
  (*(v10 + 8))(v8, v5);
  v104[0] = v13;
  v104[1] = v15;
  v104[2] = v16;
  v104[3] = v18;
  v58 = v28;
  v59 = v19;
  v104[4] = v19;
  v104[5] = v101;
  v104[6] = v100;
  v104[7] = v97;
  v104[8] = v99;
  v104[9] = v95;
  v104[10] = v98;
  v104[11] = v94;
  v104[12] = v85;
  v104[13] = v93;
  v104[14] = v28;
  v104[15] = v92;
  v104[16] = v84;
  v57 = v178;
  LOBYTE(v104[17]) = v178;
  *(&v104[17] + 1) = *v177;
  HIDWORD(v104[17]) = *&v177[3];
  v47 = v82;
  v104[18] = v83;
  v54 = v176;
  LOBYTE(v104[19]) = v176;
  *(&v104[19] + 1) = *v175;
  HIDWORD(v104[19]) = *&v175[3];
  v104[20] = v82;
  v48 = v91;
  v104[21] = v91;
  v50 = v80;
  v49 = v81;
  v104[22] = v81;
  HIDWORD(v53) = v174;
  LOBYTE(v104[23]) = v174;
  HIDWORD(v104[23]) = *&v173[3];
  *(&v104[23] + 1) = *v173;
  v104[24] = v80;
  v51 = v172;
  LOBYTE(v104[25]) = v172;
  HIDWORD(v104[25]) = *&v171[3];
  *(&v104[25] + 1) = *v171;
  v104[26] = v79;
  v64 = v170;
  LOBYTE(v104[27]) = v170;
  HIDWORD(v104[27]) = *&v169[3];
  *(&v104[27] + 1) = *v169;
  v104[28] = v78;
  v63 = v168;
  LOBYTE(v104[29]) = v168;
  HIDWORD(v104[29]) = *&v167[3];
  *(&v104[29] + 1) = *v167;
  v104[30] = v77;
  v62 = v166;
  LOBYTE(v104[31]) = v166;
  HIDWORD(v104[31]) = *&v165[3];
  *(&v104[31] + 1) = *v165;
  v104[32] = v76;
  v104[33] = v90;
  v104[34] = v75;
  v104[35] = v89;
  v104[36] = v74;
  v104[37] = v88;
  v104[38] = v73;
  v104[39] = v87;
  v104[40] = v72;
  v61 = v164;
  LOBYTE(v104[41]) = v164;
  *(&v104[41] + 1) = *v163;
  HIDWORD(v104[41]) = *&v163[3];
  v104[42] = v71;
  *(&v104[43] + 2) = v160;
  *(&v104[45] + 1) = *v158;
  v60 = v162;
  LOBYTE(v104[43]) = v162;
  BYTE1(v104[43]) = v70;
  HIWORD(v104[43]) = v161;
  v104[44] = v69;
  *(&v104[47] + 1) = *v156;
  v56 = v159;
  LOBYTE(v104[45]) = v159;
  HIDWORD(v104[45]) = *&v158[3];
  v104[46] = v68;
  HIDWORD(v104[47]) = *&v156[3];
  v55 = v157;
  LOBYTE(v104[47]) = v157;
  v104[48] = v67;
  v104[49] = v86;
  v104[50] = v65;
  v104[51] = v66;
  LOBYTE(v104[52]) = v96;
  sub_1000AA624(v104, v105);
  sub_10000BB78(v103);
  v105[2] = v16;
  v105[4] = v59;
  v105[5] = v101;
  v105[6] = v100;
  v105[7] = v97;
  v105[8] = v99;
  v105[9] = v95;
  v105[10] = v98;
  v105[11] = v94;
  v105[12] = v85;
  v105[13] = v93;
  v105[14] = v58;
  v105[15] = v92;
  v105[16] = v84;
  v106 = v57;
  v108 = v83;
  v109 = v54;
  v111 = v47;
  v112 = v48;
  v113 = v49;
  v114 = BYTE4(v53);
  v116 = v50;
  v117 = v51;
  *&v107[3] = *&v177[3];
  *v107 = *v177;
  *v110 = *v175;
  *&v110[3] = *&v175[3];
  *v115 = *v173;
  *&v115[3] = *&v173[3];
  *&v118[3] = *&v171[3];
  *v118 = *v171;
  v105[0] = v13;
  v105[1] = v15;
  v105[3] = v18;
  v119 = v79;
  v120 = v64;
  *&v121[3] = *&v169[3];
  *v121 = *v169;
  v122 = v78;
  v123 = v63;
  *&v124[3] = *&v167[3];
  *v124 = *v167;
  v125 = v77;
  v126 = v62;
  *&v127[3] = *&v165[3];
  *v127 = *v165;
  v128 = v76;
  v129 = v90;
  v130 = v75;
  v131 = v89;
  v132 = v74;
  v133 = v88;
  v134 = v73;
  v135 = v87;
  v136 = v72;
  v137 = v61;
  *v138 = *v163;
  *&v138[3] = *&v163[3];
  v139 = v71;
  v140 = v60;
  v141 = v70;
  v142 = v160;
  v143 = v161;
  v144 = v69;
  v145 = v56;
  *v146 = *v158;
  *&v146[3] = *&v158[3];
  v147 = v68;
  v148 = v55;
  *v149 = *v156;
  *&v149[3] = *&v156[3];
  v150 = v67;
  v151 = v86;
  v152 = v65;
  v153 = v66;
  v154 = v96;
  sub_1000AA65C(v105);
  return memcpy(v11, v104, 0x1A1uLL);
}

uint64_t sub_100098168(void *a1)
{
  v2 = sub_100007224(&qword_100836B60, &qword_1006C9498);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA68C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[30] = 0;
  sub_1000AA6E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v8[31];
  sub_100007224(&qword_100836B78, &qword_1006C94A0);
  v8[15] = 1;
  sub_1000AA734();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

void *sub_100098354(void *a1)
{
  v3 = sub_100007224(&qword_1008378F0, &qword_1006C99D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2250();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(a1);
  }

  v40 = v4;
  v41 = a1;
  v73 = v3;
  v47 = v6;
  v8 = KeyedDecodingContainer.allKeys.getter();
  v9 = v8;
  v46 = *(v8 + 16);
  if (!v46)
  {
    v45 = &_swiftEmptyDictionarySingleton;
    v42 = &_swiftEmptyDictionarySingleton;
    v43 = &_swiftEmptyDictionarySingleton;
LABEL_6:

    (*(v40 + 8))(v47, v73);
    sub_10000BB78(v41);
    return v42;
  }

  v10 = 0;
  v44 = 0x80000001006FD7D0;
  v11 = (v8 + 40);
  v42 = &_swiftEmptyDictionarySingleton;
  v43 = &_swiftEmptyDictionarySingleton;
  v45 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      (*(v40 + 8))(v47, v73);

      a1 = v41;
      return sub_10000BB78(a1);
    }

    v21 = *(v11 - 1);
    v22 = *v11;
    v23 = v21 == 0x736567617373656DLL && v22 == 0xE800000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100007224(&unk_10084A230, &qword_1006C0F50);
      *&v63 = v21;
      *(&v63 + 1) = v22;
      sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();

      goto LABEL_8;
    }

    if (v21 == 0xD000000000000013 && v44 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100007224(&unk_10084A230, &qword_1006C0F50);
      *&v63 = v21;
      *(&v63 + 1) = v22;
      sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();

      v45 = v51;
      goto LABEL_8;
    }

    if (v21 == 0x656372756F736572 && v22 == 0xEC000000736C7255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100007224(&unk_10084A230, &qword_1006C0F50);
      *&v63 = v21;
      *(&v63 + 1) = v22;
      sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();

      v43 = v51;
      goto LABEL_8;
    }

    v61 = v21;
    v62 = v22;
    sub_1000B22A4();

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    v24 = v42;
    LODWORD(v39) = swift_isUniquelyReferenced_nonNull_native();
    v50 = v24;
    v26 = sub_10003ADCC(v21, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    if (v24[3] >= v29)
    {
      if (v39)
      {
        if (v25)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v39 = v26;
        LODWORD(v42) = v25;
        sub_100170194();
        v26 = v39;
        if (v42)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      LODWORD(v42) = v25;
      sub_100167438(v29, v39);
      v30 = sub_10003ADCC(v21, v22);
      if ((v42 & 1) != (v31 & 1))
      {
        goto LABEL_38;
      }

      v26 = v30;
      if (v42)
      {
LABEL_7:
        v12 = v26;

        v42 = v50;
        v13 = v50[7] + 152 * v12;
        v14 = *(v13 + 16);
        v48[0] = *v13;
        v48[1] = v14;
        v15 = *(v13 + 80);
        v17 = *(v13 + 32);
        v16 = *(v13 + 48);
        v48[4] = *(v13 + 64);
        v48[5] = v15;
        v48[2] = v17;
        v48[3] = v16;
        v19 = *(v13 + 112);
        v18 = *(v13 + 128);
        v20 = *(v13 + 96);
        v49 = *(v13 + 144);
        v48[7] = v19;
        v48[8] = v18;
        v48[6] = v20;
        *(v13 + 16) = v52;
        *v13 = v51;
        *(v13 + 80) = v56;
        *(v13 + 64) = v55;
        *(v13 + 48) = v54;
        *(v13 + 32) = v53;
        *(v13 + 144) = v60;
        *(v13 + 128) = v59;
        *(v13 + 112) = v58;
        *(v13 + 96) = v57;
        sub_1000B22F8(v48);
        goto LABEL_8;
      }
    }

    v32 = v50;
    v50[(v26 >> 6) + 8] |= 1 << v26;
    v33 = (v32[6] + 16 * v26);
    *v33 = v21;
    v33[1] = v22;
    v34 = v32[7] + 152 * v26;
    *v34 = v51;
    *(v34 + 16) = v52;
    *(v34 + 80) = v56;
    *(v34 + 64) = v55;
    *(v34 + 48) = v54;
    *(v34 + 32) = v53;
    *(v34 + 144) = v60;
    *(v34 + 128) = v59;
    *(v34 + 112) = v58;
    *(v34 + 96) = v57;
    v35 = v32[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_37;
    }

    v42 = v32;
    v32[2] = v37;
LABEL_8:
    ++v10;
    v11 += 2;
    if (v46 == v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100098B58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001006FE450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FD7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC000000736C7255)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100098CCC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9760, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100098D18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = sub_100007224(&qword_100837A90, &qword_1006C9A90);
  v5 = *(v115 - 8);
  __chkstk_darwin(v115);
  v7 = &v43 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2BB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v71 = a2;
  LOBYTE(v72) = 0;
  sub_1000B2C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v82;
  v82 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v9;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v70 = v14;
  v82 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = v13;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v67 = 0;
  v68 = v18;
  v82 = 3;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v17;
  v66 = v20;
  v82 = 4;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v22;
  v82 = 5;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v64 = v23;
  v82 = 19;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v63 = v24;
  v82 = 6;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v58 = v27;
  v82 = 7;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  v57 = v30;
  v82 = 18;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v82 = 8;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = 9;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = 10;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = 16;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = 17;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = 15;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LODWORD(v49) = v51 == 2;
  v82 = 11;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v50 == 2;
  v82 = 12;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v48 == 2;
  v82 = 13;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100007224(&qword_100837AA8, &qword_1006C9A98);
  v82 = 14;
  sub_1000B2C5C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v55 & 1;
  v55 = v53 & 1;
  v56 &= 1u;
  LODWORD(v67) = v52 & 1;
  v53 = (v49 | v51) & 1;
  v54 &= 1u;
  v51 = (v47 | v50) & 1;
  v52 = (v46 | v48) & 1;
  v50 = (v45 == 2) | v45 & 1;
  if (v111)
  {
    v34 = v111;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v49 = v34;
  (*(v8 + 8))(v7, v115);
  v35 = v69;
  LOBYTE(v72) = v69;
  *(&v72 + 1) = v62;
  *&v73 = v70;
  *(&v73 + 1) = v19;
  *&v74 = v68;
  v36 = v66;
  *(&v74 + 1) = v61;
  *&v75 = v66;
  *(&v75 + 1) = v21;
  *&v76 = v65;
  *(&v76 + 1) = v60;
  *&v77 = v64;
  *(&v77 + 1) = v58;
  *&v78 = v57;
  BYTE8(v78) = v56;
  BYTE9(v78) = v44;
  BYTE10(v78) = v54;
  BYTE11(v78) = v51;
  BYTE12(v78) = v52;
  BYTE13(v78) = v50;
  *&v79 = v34;
  BYTE8(v79) = v53;
  BYTE9(v79) = v55;
  BYTE10(v79) = v67;
  *(&v79 + 11) = v112;
  HIBYTE(v79) = v113;
  *&v80 = v33;
  *(&v80 + 1) = v59;
  v37 = v63;
  v81 = v63;
  sub_1000B2D34(&v72, &v82);
  sub_10000BB78(a1);
  v82 = v35;
  *v83 = v114[0];
  *&v83[3] = *(v114 + 3);
  v84 = v62;
  v85 = v70;
  v86 = v19;
  v87 = v68;
  v88 = v61;
  v89 = v36;
  v90 = v21;
  v91 = v65;
  v92 = v60;
  v93 = v64;
  v94 = v58;
  v95 = v57;
  v96 = v56;
  v97 = v44;
  v98 = v54;
  v99 = v51;
  v100 = v52;
  v101 = v50;
  v102 = v49;
  v103 = v53;
  v104 = v55;
  v105 = v67;
  v106 = v112;
  v107 = v113;
  v108 = v33;
  v109 = v59;
  v110 = v37;
  result = sub_1000B22F8(&v82);
  v38 = v79;
  v39 = v71;
  *(v71 + 96) = v78;
  *(v39 + 112) = v38;
  *(v39 + 128) = v80;
  *(v39 + 144) = v81;
  v40 = v75;
  *(v39 + 32) = v74;
  *(v39 + 48) = v40;
  v41 = v77;
  *(v39 + 64) = v76;
  *(v39 + 80) = v41;
  v42 = v73;
  *v39 = v72;
  *(v39 + 16) = v42;
  return result;
}

uint64_t sub_1000996A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE5B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4679616C70736964 && a2 == 0xED000074616D726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697373696D627573 && a2 == 0xED000079654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6554657275636573 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE5F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x636972656D756ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x79614473776F6873 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F4D73776F6873 && a2 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x61655973776F6873 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7461766972507369 && a2 == 0xED00006174614465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656C6261636E7973 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6974726F70707573 && a2 == 0xEE0061746144676ELL)
  {

    return 19;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_100099CF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001006FDA80 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FE4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6976726553766469 && a2 == 0xEF734C5255736563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575716552647364 && a2 == 0xEF65636E6F4E7473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001006FE4D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001006FE4F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE510 == a2)
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

uint64_t sub_100099FA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = sub_100007224(&qword_1008379B8, &qword_1006C9A28);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v33 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2654();
  v49 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v47 = a2;
  LOBYTE(v50) = 0;
  sub_1000AAE94();
  v9 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v58;
  v10 = v60;
  v45 = v61;
  v46 = v59;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v50) = 1;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = 0;
  v37 = v10;
  v42 = v58;
  LOBYTE(v58) = 2;
  v11 = a1;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v12;
  LOBYTE(v50) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v58;
  LOBYTE(v58) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v14;
  LOBYTE(v58) = 5;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v16;
  LOBYTE(v58) = 6;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  v74 = 7;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = *(v8 + 8);
  v21 = v19;
  v44 = v22;
  v20(v49, v9);
  v23 = v42;
  v34 = v15;
  *&v50 = v43;
  *(&v50 + 1) = v46;
  *&v51 = v37;
  *(&v51 + 1) = v45;
  *&v52 = v42;
  *(&v52 + 1) = v36;
  v24 = v41;
  *&v53 = v41;
  *(&v53 + 1) = v40;
  *&v54 = v13;
  v49 = v13;
  v25 = v39;
  *(&v54 + 1) = v39;
  *&v55 = v15;
  *(&v55 + 1) = v38;
  *&v56 = v35;
  *(&v56 + 1) = v18;
  *&v57 = v21;
  v26 = v44;
  *(&v57 + 1) = v44;
  sub_1000B26A8(&v50, &v58);
  sub_10000BB78(v11);
  v58 = v43;
  v59 = v46;
  v60 = v37;
  v61 = v45;
  v62 = v23;
  v63 = v36;
  v64 = v24;
  v65 = v40;
  v66 = v49;
  v67 = v25;
  v68 = v34;
  v69 = v38;
  v70 = v35;
  v71 = v18;
  v72 = v21;
  v73 = v26;
  result = sub_1000B26E0(&v58);
  v28 = v55;
  v29 = v47;
  v47[4] = v54;
  v29[5] = v28;
  v30 = v57;
  v29[6] = v56;
  v29[7] = v30;
  v31 = v51;
  *v29 = v50;
  v29[1] = v31;
  v32 = v53;
  v29[2] = v52;
  v29[3] = v32;
  return result;
}

uint64_t sub_10009A58C(void *a1)
{
  v3 = sub_100007224(&qword_100837998, &qword_1006C9A18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000B2558();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_1000B25AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_10009A750(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEF64496D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463616669747261 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657461657263 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10009A964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100836C48, &qword_1006C94F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AAE40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v42) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v42) = 1;
  *&v34 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v34 + 1) = v12;
  LOBYTE(v35) = 2;
  sub_1000AAE94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v42;
  v33 = v43;
  v32 = *(&v44 + 1);
  v28 = v44;
  sub_100007224(&qword_100836C60, &qword_1006C9500);
  LOBYTE(v35) = 3;
  sub_1000AAEE8();
  v31 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v42;
  LOBYTE(v42) = 4;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v13;
  v54 = 5;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = *(v6 + 8);
  v16 = v14;
  v31 = v17;
  v15(v8, v5);
  *&v35 = v9;
  *(&v35 + 1) = v11;
  v36 = v34;
  *&v37 = v29;
  v18 = v33;
  *(&v37 + 1) = v33;
  *&v38 = v28;
  v19 = v32;
  *(&v38 + 1) = v32;
  *&v39 = v27;
  *(&v39 + 1) = v26;
  *&v40 = v30;
  v20 = v31;
  *(&v40 + 1) = v16;
  v41 = v31;
  sub_1000AAFC0(&v35, &v42);
  sub_10000BB78(a1);
  v42 = v9;
  v43 = v11;
  v44 = v34;
  v45 = v29;
  v46 = v18;
  v47 = v28;
  v48 = v19;
  v49 = v27;
  v50 = v26;
  v51 = v30;
  v52 = v16;
  v53 = v20;
  result = sub_1000AAFF8(&v42);
  v22 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v22;
  *(a2 + 96) = v41;
  v23 = v36;
  *a2 = v35;
  *(a2 + 16) = v23;
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  return result;
}

uint64_t sub_10009AEC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000)
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

uint64_t sub_10009AFDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100835678, &qword_1006C1A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009E888();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = v9;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v23 = 1;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v21;
  v22 = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = sub_10000BB78(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v12;
  a2[4] = v15;
  return result;
}

uint64_t sub_10009B254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEA00000000006449)
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

uint64_t sub_10009B374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100835940, &qword_1006C1B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009FCD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = v9;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v23 = 1;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v21;
  v22 = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = sub_10000BB78(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v12;
  a2[4] = v15;
  return result;
}

uint64_t sub_10009B5EC(void *a1)
{
  v2 = sub_100007224(&qword_100836DF8, &qword_1006C9560);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000ABD8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  HIBYTE(v8) = 0;
  sub_1000AB6CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v9;
  sub_100007224(&qword_100836E08, &qword_1006C9568);
  HIBYTE(v8) = 1;
  sub_1000ABDE0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_10009B7FC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100007224(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000BA08(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  sub_10000BB78(a1);
  return v11;
}

uint64_t sub_10009B9D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001006FDAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006FDB10 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_10009BAF8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836D40, &unk_1006C9530);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AB678();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    v31 = 0;
    sub_1000AB6CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = a2;
    v9 = v27;
    v31 = 1;
    sub_1000AB784();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v28;
    v10 = v29;
    v24 = v30;
    v25 = v27;
    LOBYTE(v27) = 2;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = *(v6 + 8);
    v22 = v11;
    v14(v8, v5);

    v16 = v24;
    v15 = v25;
    v17 = v23;
    v18 = v10;
    sub_1000AB7D8(v25, v23, v10, v24);

    sub_10000BB78(a1);

    sub_1000B00AC(v15, v17, v10, v16);

    v19 = v26;
    *v26 = v9;
    v19[1] = v15;
    v19[2] = v17;
    v19[3] = v18;
    v20 = v22;
    v19[4] = v16;
    v19[5] = v20;
    v19[6] = v13;
  }
}

uint64_t sub_10009BDF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001006FD5B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5F656C69666F7270 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001006FD490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001006FD4C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5F64616F6C796170 && a2 == 0xEE006572756E6574)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10009C138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7272655F766469 && a2 == 0xE900000000000072;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7272655F6E646FLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6F6365725F7369 && a2 == 0xED00006465747570)
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

uint64_t sub_10009C300@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100835700, &qword_1006C1A90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009EC68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v31[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v11 & 1;
  LOBYTE(v31[0]) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v27 = v12;
  LOBYTE(v31[0]) = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v15;
  v39 = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = *(v6 + 8);
  v24 = v16;
  v17(v8, v5);
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v23 = v10;
  LOBYTE(v10) = v38;
  LOBYTE(v29) = v38;
  v18 = v26;
  v19 = v27;
  *(&v29 + 1) = v27;
  *v30 = v14;
  v20 = v25;
  *&v30[8] = v25;
  *&v30[16] = v26;
  v30[24] = v24;
  sub_10009ECBC(&v28, v31);
  sub_10000BB78(a1);
  v31[0] = v9;
  v31[1] = v23;
  v32 = v10;
  v33 = v19;
  v34 = v14;
  v35 = v20;
  v36 = v18;
  v37 = v24;
  result = sub_10009ECF4(v31);
  v22 = v29;
  *a2 = v28;
  a2[1] = v22;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  return result;
}

uint64_t sub_10009C5E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632436 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F6E6F6973736573 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6F6E5F7374 && a2 == 0xE800000000000000)
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

uint64_t sub_10009C700@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837838, &qword_1006C9960);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AC70C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000BB78(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

uint64_t sub_10009C94C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100007224(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000BA08(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  sub_10000BB78(a1);
  return v11;
}

uint64_t sub_10009CB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461645F617564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079745F6B736174 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD470 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10009CCA8(void *a1)
{
  v4 = sub_100007224(&qword_1008370A8, &qword_1006C9650);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC760();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v9;
    v10[12] = 2;
    sub_1000AD34C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[11] = 3;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000BB78(a1);
  return v2;
}

uint64_t sub_10009CEFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F635F64697374 && a2 == 0xEE0072656E696174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xEC0000006775615FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FD470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001006FD520 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001006FD550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEF676E696D69745FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FD590 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10009D288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756E5F656E6F6870 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61636F6C5F737067 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628851 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10009D3F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100835598, &qword_1006C1A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009D708();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v33 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v28 = v9;
    v32 = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v27 = v12;
    sub_100007224(&qword_1008355A8, &qword_1006C1A08);
    v31 = 2;
    sub_10009D75C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = a2;
    v15 = v29;
    v30 = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v19 = *(v6 + 8);
    v25 = v16;
    v19(v8, v5);

    sub_10000BB78(a1);

    v21 = v27;
    v22 = v26;
    *v26 = v28;
    v22[1] = v11;
    v22[2] = v21;
    v22[3] = v14;
    v23 = v25;
    v22[4] = v15;
    v22[5] = v23;
    v22[6] = v18;
  }

  return result;
}

unint64_t sub_10009D708()
{
  result = qword_1008355A0;
  if (!qword_1008355A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008355A0);
  }

  return result;
}

unint64_t sub_10009D75C()
{
  result = qword_1008355B0;
  if (!qword_1008355B0)
  {
    sub_10000B870(&qword_1008355A8, &qword_1006C1A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008355B0);
  }

  return result;
}

unint64_t sub_10009D7D8()
{
  result = qword_1008355C0;
  if (!qword_1008355C0)
  {
    sub_10000B870(&qword_1008355A8, &qword_1006C1A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008355C0);
  }

  return result;
}

unint64_t sub_10009D854()
{
  result = qword_1008355D0;
  if (!qword_1008355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008355D0);
  }

  return result;
}

uint64_t sub_10009D8A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001006FD410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C69666F7270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xEB000000006F666ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_10009DA70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F98B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009DABC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9918, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009DB08(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9998, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009DB54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9A60, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009DBA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9B18, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009DBEC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = a2;
  v4 = sub_100007224(&qword_1008355F0, &qword_1006C1A28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_10009E3BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v49 = a1;
  v50 = v5;
  sub_100007224(&qword_100835600, &qword_1006C1A30);
  LOBYTE(v52) = 0;
  sub_10009E410();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = *&v58[0];
  sub_100007224(&qword_100835618, &qword_1006C1A38);
  LOBYTE(v52) = 1;
  sub_10009E4E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = *&v58[0];
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v52) = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = v10;
  v48 = *&v58[0];
  if (*&v58[0])
  {
LABEL_18:
    v78 = 3;
    sub_10009E6D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v73 = v69;
    v74 = v70;
    v75 = v71;
    v76 = v72;
    LOBYTE(v58[0]) = 4;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v58[0]) = 5;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v27)
    {
      v10 = 3;
    }

    else
    {
      v10 = v26;
    }

    LOBYTE(v52) = 6;
    sub_10009E724();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = LOBYTE(v58[0]);
    if (LOBYTE(v58[0]) == 3)
    {
      v28 = 0;
    }

    LODWORD(v46) = v28;
    LOBYTE(v58[0]) = 7;
    LODWORD(v44) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LODWORD(v43) = v44 == 2;
    LOBYTE(v58[0]) = 8;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  }

  else
  {
    v42 = v9;
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v9 = v13 & *(v10 + 64);
    v44 = (v12 + 63) >> 6;

    v15 = 0;
    v48 = _swiftEmptyArrayStorage;
    v43 = v10 + 64;
    v16 = v44;
    if (v9)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        v9 = v42;
        goto LABEL_18;
      }

      v9 = *(v11 + 8 * v17);
      ++v15;
      if (v9)
      {
        v15 = v17;
        do
        {
LABEL_11:
          v18 = (*(v10 + 48) + 16 * (__clz(__rbit64(v9)) | (v15 << 6)));
          v19 = *v18;
          v46 = v18[1];
          v47 = v19;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1003C5110(0, *(v48 + 2) + 1, 1, v48);
          }

          v21 = *(v48 + 2);
          v20 = *(v48 + 3);
          if (v21 >= v20 >> 1)
          {
            v48 = sub_1003C5110((v20 > 1), v21 + 1, 1, v48);
          }

          v9 &= v9 - 1;

          v22 = v46;

          v24 = v47;
          v23 = v48;
          *(v48 + 2) = v21 + 1;
          v25 = &v23[16 * v21];
          *(v25 + 4) = v24;
          *(v25 + 5) = v22;
          v10 = v45;
          v11 = v43;
          v16 = v44;
        }

        while (v9);
      }
    }

    __break(1u);
  }

  v29 = v14;
  v30 = v14 == 2;
  LOBYTE(v52) = 9;
  sub_10009E778();
  v42 = v4;
  v31 = v7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v58[0];
  LOBYTE(v58[0]) = 10;
  sub_10009E7CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = (v43 | v44) & 1;
  v34 = (v30 | v29) & 1;
  v35 = v32 & 1;
  (*(v50 + 8))(v31, v42);
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  v36 = v45;
  *&v56 = v9;
  *(&v56 + 1) = v45;
  *&v57[0] = v48;
  *(&v57[0] + 1) = v47;
  *&v57[1] = v10;
  BYTE8(v57[1]) = v46;
  BYTE9(v57[1]) = v33;
  BYTE10(v57[1]) = v34;
  BYTE11(v57[1]) = v35;
  if (v77 == 3)
  {
    v37 = 0;
  }

  else
  {
    v37 = v77;
  }

  BYTE12(v57[1]) = v37;
  sub_10009E820(&v52, v58);
  sub_10000BB78(v49);
  v58[0] = v73;
  v58[1] = v74;
  v58[2] = v75;
  v58[3] = v76;
  v59 = v9;
  v60 = v36;
  v61 = v48;
  v62 = v47;
  v63 = v10;
  v64 = v46;
  v65 = v33;
  v66 = v34;
  v67 = v35;
  v68 = v37;
  result = sub_10009E858(v58);
  v38 = v57[0];
  v39 = v51;
  v51[4] = v56;
  v39[5] = v38;
  *(v39 + 93) = *(v57 + 13);
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  v41 = v55;
  v39[2] = v54;
  v39[3] = v41;
  return result;
}

unint64_t sub_10009E3BC()
{
  result = qword_1008355F8;
  if (!qword_1008355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008355F8);
  }

  return result;
}

unint64_t sub_10009E410()
{
  result = qword_100835608;
  if (!qword_100835608)
  {
    sub_10000B870(&qword_100835600, &qword_1006C1A30);
    sub_10009E494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835608);
  }

  return result;
}

unint64_t sub_10009E494()
{
  result = qword_100835610;
  if (!qword_100835610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835610);
  }

  return result;
}

unint64_t sub_10009E4E8()
{
  result = qword_100835620;
  if (!qword_100835620)
  {
    sub_10000B870(&qword_100835618, &qword_1006C1A38);
    sub_10009E574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835620);
  }

  return result;
}

unint64_t sub_10009E574()
{
  result = qword_100835628;
  if (!qword_100835628)
  {
    sub_10000B870(&qword_100835630, &qword_1006C1A40);
    sub_10009E5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835628);
  }

  return result;
}

unint64_t sub_10009E5F8()
{
  result = qword_100835638;
  if (!qword_100835638)
  {
    sub_10000B870(&qword_100835640, &qword_1006C1A48);
    sub_10009E67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835638);
  }

  return result;
}

unint64_t sub_10009E67C()
{
  result = qword_100835648;
  if (!qword_100835648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835648);
  }

  return result;
}

unint64_t sub_10009E6D0()
{
  result = qword_100835650;
  if (!qword_100835650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835650);
  }

  return result;
}

unint64_t sub_10009E724()
{
  result = qword_100835660;
  if (!qword_100835660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835660);
  }

  return result;
}

unint64_t sub_10009E778()
{
  result = qword_100835668;
  if (!qword_100835668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835668);
  }

  return result;
}

unint64_t sub_10009E7CC()
{
  result = qword_100835670;
  if (!qword_100835670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835670);
  }

  return result;
}

unint64_t sub_10009E888()
{
  result = qword_100835680;
  if (!qword_100835680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835680);
  }

  return result;
}

unint64_t sub_10009E8DC()
{
  result = qword_100835690;
  if (!qword_100835690)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835690);
  }

  return result;
}

unint64_t sub_10009E958()
{
  result = qword_1008356A0;
  if (!qword_1008356A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356A0);
  }

  return result;
}

unint64_t sub_10009E9AC()
{
  result = qword_1008356B0;
  if (!qword_1008356B0)
  {
    sub_10000B870(&qword_1008356A8, &qword_1006C1A70);
    sub_10009EA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356B0);
  }

  return result;
}

unint64_t sub_10009EA38()
{
  result = qword_1008356B8;
  if (!qword_1008356B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356B8);
  }

  return result;
}

unint64_t sub_10009EA8C()
{
  result = qword_1008356C0;
  if (!qword_1008356C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356C0);
  }

  return result;
}

unint64_t sub_10009EAE0()
{
  result = qword_1008356D0;
  if (!qword_1008356D0)
  {
    sub_10000B870(&qword_1008356A8, &qword_1006C1A70);
    sub_10009EB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356D0);
  }

  return result;
}

unint64_t sub_10009EB6C()
{
  result = qword_1008356D8;
  if (!qword_1008356D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356D8);
  }

  return result;
}

unint64_t sub_10009EBC0()
{
  result = qword_1008356E0;
  if (!qword_1008356E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356E0);
  }

  return result;
}

unint64_t sub_10009EC14()
{
  result = qword_1008356F0;
  if (!qword_1008356F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008356F0);
  }

  return result;
}

unint64_t sub_10009EC68()
{
  result = qword_100835708;
  if (!qword_100835708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835708);
  }

  return result;
}

unint64_t sub_10009ED24()
{
  result = qword_100835720;
  if (!qword_100835720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835720);
  }

  return result;
}

uint64_t sub_10009ED78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009EDE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10009EE40()
{
  result = qword_100835748;
  if (!qword_100835748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835748);
  }

  return result;
}

unint64_t sub_10009EE94()
{
  result = qword_100835760;
  if (!qword_100835760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835760);
  }

  return result;
}

unint64_t sub_10009EEE8()
{
  result = qword_100835778;
  if (!qword_100835778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835778);
  }

  return result;
}

unint64_t sub_10009EF3C()
{
  result = qword_100835780;
  if (!qword_100835780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835780);
  }

  return result;
}

unint64_t sub_10009EF90()
{
  result = qword_100835790;
  if (!qword_100835790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835790);
  }

  return result;
}

unint64_t sub_10009EFE4()
{
  result = qword_1008357A0;
  if (!qword_1008357A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357A0);
  }

  return result;
}

unint64_t sub_10009F038()
{
  result = qword_1008357A8;
  if (!qword_1008357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357A8);
  }

  return result;
}

unint64_t sub_10009F08C()
{
  result = qword_1008357B8;
  if (!qword_1008357B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357B8);
  }

  return result;
}

unint64_t sub_10009F0E0()
{
  result = qword_1008357C8;
  if (!qword_1008357C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357C8);
  }

  return result;
}

unint64_t sub_10009F134()
{
  result = qword_1008357E0;
  if (!qword_1008357E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357E0);
  }

  return result;
}

unint64_t sub_10009F188()
{
  result = qword_1008357F8;
  if (!qword_1008357F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008357F8);
  }

  return result;
}

unint64_t sub_10009F1DC()
{
  result = qword_100835810;
  if (!qword_100835810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835810);
  }

  return result;
}

unint64_t sub_10009F230()
{
  result = qword_100835818;
  if (!qword_100835818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835818);
  }

  return result;
}

unint64_t sub_10009F284()
{
  result = qword_100835820;
  if (!qword_100835820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835820);
  }

  return result;
}

unint64_t sub_10009F340()
{
  result = qword_100835838;
  if (!qword_100835838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835838);
  }

  return result;
}

unint64_t sub_10009F394()
{
  result = qword_100835848;
  if (!qword_100835848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835848);
  }

  return result;
}

unint64_t sub_10009F3E8()
{
  result = qword_100835858;
  if (!qword_100835858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835858);
  }

  return result;
}

uint64_t sub_10009F43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10009F484()
{
  result = qword_100835860;
  if (!qword_100835860)
  {
    sub_10000B870(&qword_100835468, &unk_1006C0F40);
    sub_10009F508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835860);
  }

  return result;
}

unint64_t sub_10009F508()
{
  result = qword_100835868;
  if (!qword_100835868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835868);
  }

  return result;
}

unint64_t sub_10009F55C()
{
  result = qword_100839B50;
  if (!qword_100839B50)
  {
    sub_10000B870(&qword_100835478, &qword_1006D4980);
    sub_10009F43C(&qword_100835870, &type metadata accessor for IdentityProofingUnorderedUIElement, &protocol conformance descriptor for IdentityProofingUnorderedUIElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B50);
  }

  return result;
}

unint64_t sub_10009F618()
{
  result = qword_100835880;
  if (!qword_100835880)
  {
    sub_10000B870(&qword_100835498, &qword_1006C0F58);
    sub_10009F69C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835880);
  }

  return result;
}

unint64_t sub_10009F69C()
{
  result = qword_100835888;
  if (!qword_100835888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835888);
  }

  return result;
}

unint64_t sub_10009F6F0()
{
  result = qword_100835890;
  if (!qword_100835890)
  {
    sub_10000B870(&unk_1008354A8, &qword_1006C0F60);
    sub_10009F774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835890);
  }

  return result;
}

unint64_t sub_10009F774()
{
  result = qword_100835898;
  if (!qword_100835898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835898);
  }

  return result;
}

unint64_t sub_10009F7C8()
{
  result = qword_1008358B0;
  if (!qword_1008358B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358B0);
  }

  return result;
}

unint64_t sub_10009F81C()
{
  result = qword_1008358C8;
  if (!qword_1008358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358C8);
  }

  return result;
}

unint64_t sub_10009F870()
{
  result = qword_1008358D0;
  if (!qword_1008358D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358D0);
  }

  return result;
}

unint64_t sub_10009F8C4()
{
  result = qword_1008358D8;
  if (!qword_1008358D8)
  {
    sub_10000B870(&unk_100839A40, &qword_1006C1B50);
    sub_10009F948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358D8);
  }

  return result;
}

unint64_t sub_10009F948()
{
  result = qword_100839A50;
  if (!qword_100839A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A50);
  }

  return result;
}

unint64_t sub_10009F99C()
{
  result = qword_1008358E8;
  if (!qword_1008358E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358E8);
  }

  return result;
}

unint64_t sub_10009F9F0()
{
  result = qword_1008358F0;
  if (!qword_1008358F0)
  {
    sub_10000B870(&unk_100839A40, &qword_1006C1B50);
    sub_10009FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358F0);
  }

  return result;
}

unint64_t sub_10009FA74()
{
  result = qword_1008358F8;
  if (!qword_1008358F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008358F8);
  }

  return result;
}

unint64_t sub_10009FAC8()
{
  result = qword_100835908;
  if (!qword_100835908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835908);
  }

  return result;
}

unint64_t sub_10009FB1C()
{
  result = qword_100835918;
  if (!qword_100835918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835918);
  }

  return result;
}

unint64_t sub_10009FBD8()
{
  result = qword_100835928;
  if (!qword_100835928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835928);
  }

  return result;
}

unint64_t sub_10009FC2C()
{
  result = qword_100835930;
  if (!qword_100835930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835930);
  }

  return result;
}

unint64_t sub_10009FC80()
{
  result = qword_100835938;
  if (!qword_100835938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835938);
  }

  return result;
}

unint64_t sub_10009FCD4()
{
  result = qword_100835948;
  if (!qword_100835948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835948);
  }

  return result;
}

uint64_t sub_10009FD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 625))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 192);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10009FD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 624) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 625) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 625) = 0;
    }

    if (a2)
    {
      *(result + 192) = a2;
    }
  }

  return result;
}

uint64_t sub_10009FE98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10009FEF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10009FF58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10009FF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009FFC4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000A0038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000A0084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A00F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000A0114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000A0130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1000A0198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000A0210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000A0234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1000A027C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A02F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100835968, &qword_1006DBC90);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 116);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000A0454(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_100007224(&qword_100835968, &qword_1006DBC90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 116);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A05B0(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000A437C(319, &qword_1008359E8, &type metadata for DisplayMessageAction, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000A437C(319, &qword_1008359F0, &type metadata for DisplayMessageContext, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008359F8, &type metadata for DisplayNotificationContext, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_10007FA34(319, &qword_100835A00, type metadata accessor for WorkflowRecommendationResponse, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1000A437C(319, &qword_100835A08, &type metadata for ExecuteWorkflowType, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1000A437C(319, &qword_100835A10, &type metadata for IdentityProvisioningContext, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1000A437C(319, &qword_100835A18, &type metadata for Int64, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1000A437C(319, &qword_100835A20, &type metadata for PendingActionLivenessVersions, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_1000A5F34(319, &qword_100835A28, &qword_100835A30, &unk_1006DB6C0, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_1000A437C(319, &qword_100835A38, &type metadata for IQModel, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_1000A437C(319, &qword_100835A40, &type metadata for PIIToken, &type metadata accessor for Optional);
                            if (v14 <= 0x3F)
                            {
                              sub_1000A5F34(319, &qword_100835A48, &qword_100835A50, &qword_1006C1ED0, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
                              {
                                sub_1000A437C(319, &unk_100835A58, &type metadata for FaceMatchingResult, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_1000A0A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A0A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000A0B90(uint64_t a1)
{
  sub_10007FA34(319, &unk_100835B68, type metadata accessor for PendingActionContext, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A0C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

uint64_t sub_1000A0D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

void sub_1000A0E60(uint64_t a1)
{
  sub_1000A5934(319, &qword_100835C08, sub_1000A0F0C, sub_1000A0F60, &type metadata for LivenessConfigV2);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000A0F0C()
{
  result = qword_100835C10;
  if (!qword_100835C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835C10);
  }

  return result;
}

unint64_t sub_1000A0F60()
{
  result = qword_100835C18;
  if (!qword_100835C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835C18);
  }

  return result;
}

uint64_t sub_1000A0FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A1010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A1090(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A10E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_100833698, &qword_1006BF6E0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000A11C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_100833698, &qword_1006BF6E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1000A12AC(uint64_t a1)
{
  sub_1000A5F34(319, &qword_100835CB0, &qword_100833688, &qword_1006BF6D0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_100835CB8, &unk_100835CC0, &qword_1006C2148, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A13C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000A1408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000A1508(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A5934(319, &qword_100835C08, sub_1000A0F0C, sub_1000A0F60, &type metadata for LivenessConfigV2);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A15F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A1640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A16A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A1704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A1774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A17BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A1824(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A1850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8577))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A18B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8576) = 0;
    *(result + 8440) = 0u;
    *(result + 8424) = 0u;
    *(result + 8408) = 0u;
    *(result + 8392) = 0u;
    *(result + 8376) = 0u;
    *(result + 8360) = 0u;
    *(result + 8344) = 0u;
    *(result + 8328) = 0u;
    *(result + 8312) = 0u;
    *(result + 8296) = 0u;
    *(result + 8280) = 0u;
    *(result + 8264) = 0u;
    *(result + 8248) = 0u;
    *(result + 8232) = 0u;
    *(result + 8216) = 0u;
    *(result + 8200) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8552) = 0u;
    *(result + 8536) = 0u;
    *(result + 8520) = 0u;
    *(result + 8504) = 0u;
    *(result + 8488) = 0u;
    *(result + 8472) = 0u;
    *(result + 8456) = 0u;
    *(result + 8184) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *(result + 8568) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 808) = 0u;
    *result = a2 - 0x7FFFFFFF;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8577) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8577) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1000A2240(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

void sub_1000A22F4(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_100835DF8, &unk_100835E00, &qword_1006C46A0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000A241C(uint64_t a1, int a2)
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

uint64_t sub_1000A2464(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A24D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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