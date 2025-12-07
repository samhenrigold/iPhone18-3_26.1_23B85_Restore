uint64_t sub_10083E6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_10083E71C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10083E764(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10083E7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10083E80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10083E8AC(char a1)
{
  result = 0x444955556162;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x754E6C6169726573;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      v3 = 0x656369766564;
      goto LABEL_25;
    case 5:
      result = 0x6F43656369766564;
      break;
    case 6:
      result = 0x6C43656369766564;
      break;
    case 7:
      result = 0x6F4D656369766564;
      break;
    case 8:
      result = 0x6369766544776172;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x4C79726574746162;
      break;
    case 11:
      result = 0x5379726574746162;
      break;
    case 12:
      result = 0x7265776F50776F6CLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x6976654473696874;
      break;
    case 15:
      result = 0x6E614872656E776FLL;
      break;
    case 16:
      result = 0x656E694D7369;
      break;
    case 17:
      result = 0x6449737270;
      break;
    case 18:
      result = 0x656D695474736F6CLL;
      break;
    case 19:
      result = 0x695464656B636F6CLL;
      break;
    case 20:
      result = 0x6D69546465706977;
      break;
    case 21:
      result = 0x65646F4D74736F6CLL;
      break;
    case 22:
      result = 0x7365727574616566;
      break;
    case 23:
      v3 = 0x726961706572;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10083EB7C()
{
  if (*v0)
  {
    return 0x6F43726576726573;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_10083EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10083ECA8(uint64_t a1)
{
  v2 = sub_10083F258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083ECE4(uint64_t a1)
{
  v2 = sub_10083F258();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10083ED20@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10083F044(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_10083ED68()
{
  if (*v0)
  {
    return 0x7361426567616D69;
  }

  else
  {
    return 0x7069726373627573;
  }
}

uint64_t sub_10083EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069726373627573 && a2 == 0xEF4C54546E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7361426567616D69 && a2 == 0xEC0000006C725565)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10083EEA0(uint64_t a1)
{
  v2 = sub_1008410A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083EEDC(uint64_t a1)
{
  v2 = sub_1008410A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10083EF18@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10083F3D8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_10083EF58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10083F590(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10083EF80(uint64_t a1)
{
  v2 = sub_100840C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083EFBC(uint64_t a1)
{
  v2 = sub_100840C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10083EFF8@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10083FD34(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x129uLL);
  }

  return result;
}

uint64_t sub_10083F044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AAC58, &qword_1013BE638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10083F258();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  sub_1000BC4D4(&qword_1016AAC68, &qword_1013BE640);
  v16 = 0;
  sub_10083F2AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v14;
  v16 = 1;
  sub_10083F384();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v15;
  v13 = v14;
  result = sub_100007BAC(a1);
  *a2 = v9;
  v11 = v13;
  *(a2 + 24) = v12;
  *(a2 + 8) = v11;
  return result;
}

unint64_t sub_10083F258()
{
  result = qword_1016AAC60;
  if (!qword_1016AAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC60);
  }

  return result;
}

unint64_t sub_10083F2AC()
{
  result = qword_1016AAC70;
  if (!qword_1016AAC70)
  {
    sub_1000BC580(&qword_1016AAC68, &qword_1013BE640);
    sub_10083F330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC70);
  }

  return result;
}

unint64_t sub_10083F330()
{
  result = qword_1016AAC78;
  if (!qword_1016AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC78);
  }

  return result;
}

unint64_t sub_10083F384()
{
  result = qword_1016AAC80;
  if (!qword_1016AAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC80);
  }

  return result;
}

uint64_t sub_10083F3D8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AACE0, &qword_1013BE8F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_1008410A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

uint64_t sub_10083F590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6369766544776172 && a2 == 0xEE006C65646F4D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101361110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5379726574746162 && a2 == 0xED00007375746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7265776F50776F6CLL && a2 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101361130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6976654473696874 && a2 == 0xEA00000000006563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E694D7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6449737270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656D695474736F6CLL && a2 == 0xED0000706D617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x695464656B636F6CLL && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D69546465706977 && a2 == 0xEE00706D61747365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7453726961706572 && a2 == 0xEC00000073757461)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

void *sub_10083FD34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v121 = sub_1000BC4D4(&qword_1016AAC88, &qword_1013BE648);
  v5 = *(v121 - 8);
  __chkstk_darwin(v121);
  v7 = &v37 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100840C24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v75 = a2;
  v76 = a1;
  v8 = v5;
  LOBYTE(v78[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = v10;
  LOBYTE(v78[0]) = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v12;
  v73 = v11;
  LOBYTE(v78[0]) = 2;
  v69 = 0;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v13;
  LOBYTE(v78[0]) = 3;
  v71 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v14;
  LOBYTE(v78[0]) = 4;
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v15;
  LOBYTE(v78[0]) = 5;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v16;
  LOBYTE(v78[0]) = 6;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v64 = v17;
  LOBYTE(v78[0]) = 7;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = v18;
  LOBYTE(v78[0]) = 8;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v19;
  LOBYTE(v78[0]) = 9;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v21;
  v22 = v20;
  LOBYTE(v78[0]) = 10;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v120 = v24 & 1;
  LOBYTE(v78[0]) = 11;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = v26;
  v27 = v25;
  LOBYTE(v78[0]) = 12;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78[0]) = 13;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78[0]) = 14;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78[0]) = 15;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = v28;
  LOBYTE(v78[0]) = 16;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78[0]) = 17;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v58 = v29;
  LOBYTE(v78[0]) = 18;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v115 = v30 & 1;
  LOBYTE(v78[0]) = 19;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v113 = v31 & 1;
  LOBYTE(v78[0]) = 20;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v111 = v32 & 1;
  LOBYTE(v78[0]) = 21;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000BC4D4(&qword_1016AAC98, &qword_1013BE650);
  LOBYTE(v77[0]) = 22;
  sub_100840C78();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v78[0];
  v107 = 23;
  sub_100840CFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v52 & 1;
  v50 &= 1u;
  v51 &= 1u;
  v52 = v48 & 1;
  v48 = v43 & 1;
  (*(v8 + 8))(v7, v121);
  v43 = v108;
  v77[0] = v9;
  v77[1] = v74;
  v77[2] = v73;
  v77[3] = v70;
  v77[4] = v72;
  v77[5] = v68;
  v77[6] = v71;
  v77[7] = v67;
  v77[8] = v57;
  v77[9] = v66;
  v77[10] = v56;
  v77[11] = v65;
  v77[12] = v55;
  v77[13] = v64;
  v77[14] = v54;
  v77[15] = v63;
  v77[16] = v53;
  v77[17] = v62;
  v40 = v23;
  v41 = v22;
  v77[18] = v22;
  v77[19] = v61;
  v77[20] = v23;
  LODWORD(v121) = v120;
  LOBYTE(v77[21]) = v120;
  *(&v77[21] + 1) = *v119;
  HIDWORD(v77[21]) = *&v119[3];
  v39 = v27;
  v77[22] = v27;
  v77[23] = v60;
  LOBYTE(v77[24]) = v42;
  BYTE1(v77[24]) = v51;
  BYTE2(v77[24]) = v50;
  *(&v77[24] + 3) = v117;
  HIBYTE(v77[24]) = v118;
  v77[25] = v49;
  v77[26] = v59;
  LOBYTE(v77[27]) = v52;
  HIDWORD(v77[27]) = *&v116[3];
  *(&v77[27] + 1) = *v116;
  v77[28] = v47;
  v77[29] = v58;
  v77[30] = v46;
  HIDWORD(v77[31]) = *&v114[3];
  *(&v77[31] + 1) = *v114;
  *(&v77[33] + 1) = *v112;
  v38 = v115;
  LOBYTE(v77[31]) = v115;
  v33 = v44;
  v77[32] = v45;
  *(&v77[35] + 2) = v109;
  LOBYTE(v8) = v113;
  LOBYTE(v77[33]) = v113;
  HIDWORD(v77[33]) = *&v112[3];
  v34 = v69;
  v77[34] = v69;
  HIWORD(v77[35]) = v110;
  LOBYTE(v22) = v111;
  LOBYTE(v77[35]) = v111;
  v35 = v48;
  BYTE1(v77[35]) = v48;
  v77[36] = v44;
  LOBYTE(v77[37]) = v108;
  sub_100840D50(v77, v78);
  sub_100007BAC(v76);
  v78[0] = v9;
  v78[1] = v74;
  v78[2] = v73;
  v78[3] = v70;
  v78[4] = v72;
  v78[5] = v68;
  v78[6] = v71;
  v78[7] = v67;
  v78[8] = v57;
  v78[9] = v66;
  v78[10] = v56;
  v78[11] = v65;
  v78[12] = v55;
  v78[13] = v64;
  v78[14] = v54;
  v78[15] = v63;
  v78[16] = v53;
  v78[17] = v62;
  v78[18] = v41;
  v78[19] = v61;
  v78[20] = v40;
  v79 = v121;
  *v80 = *v119;
  *&v80[3] = *&v119[3];
  v81 = v39;
  v82 = v60;
  v83 = v42;
  v84 = v51;
  v85 = v50;
  v86 = v117;
  v87 = v118;
  v88 = v49;
  v89 = v59;
  v90 = v52;
  *&v91[3] = *&v116[3];
  *v91 = *v116;
  v92 = v47;
  v93 = v58;
  v94 = v46;
  v95 = v38;
  *&v96[3] = *&v114[3];
  *v96 = *v114;
  v97 = v45;
  v98 = v8;
  *v99 = *v112;
  *&v99[3] = *&v112[3];
  v100 = v34;
  v101 = v22;
  v102 = v35;
  v103 = v109;
  v104 = v110;
  v105 = v33;
  v106 = v43;
  sub_100840D88(v78);
  return memcpy(v75, v77, 0x129uLL);
}

unint64_t sub_100840C24()
{
  result = qword_1016AAC90;
  if (!qword_1016AAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC90);
  }

  return result;
}

unint64_t sub_100840C78()
{
  result = qword_1016AACA0;
  if (!qword_1016AACA0)
  {
    sub_1000BC580(&qword_1016AAC98, &qword_1013BE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACA0);
  }

  return result;
}

unint64_t sub_100840CFC()
{
  result = qword_1016AACA8;
  if (!qword_1016AACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACA8);
  }

  return result;
}

uint64_t sub_100840DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100840E34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100840E9C()
{
  result = qword_1016AACB0;
  if (!qword_1016AACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACB0);
  }

  return result;
}

unint64_t sub_100840EF4()
{
  result = qword_1016AACB8;
  if (!qword_1016AACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACB8);
  }

  return result;
}

unint64_t sub_100840F4C()
{
  result = qword_1016AACC0;
  if (!qword_1016AACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACC0);
  }

  return result;
}

unint64_t sub_100840FA4()
{
  result = qword_1016AACC8;
  if (!qword_1016AACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACC8);
  }

  return result;
}

unint64_t sub_100840FFC()
{
  result = qword_1016AACD0;
  if (!qword_1016AACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACD0);
  }

  return result;
}

unint64_t sub_100841054()
{
  result = qword_1016AACD8;
  if (!qword_1016AACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACD8);
  }

  return result;
}

unint64_t sub_1008410A8()
{
  result = qword_1016AACE8;
  if (!qword_1016AACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACE8);
  }

  return result;
}

unint64_t sub_100841110()
{
  result = qword_1016AACF0;
  if (!qword_1016AACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACF0);
  }

  return result;
}

unint64_t sub_100841168()
{
  result = qword_1016AACF8;
  if (!qword_1016AACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACF8);
  }

  return result;
}

unint64_t sub_1008411C0()
{
  result = qword_1016AAD00;
  if (!qword_1016AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAD00);
  }

  return result;
}

uint64_t sub_100841214()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LeftWhileTravelingUserNotification(0) + 20);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  if ((*(v5 + 32) & 1) == 0)
  {
    v13 = v7;

    if (v8)
    {
      v14 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {
        }

        else
        {
          v39 = v13;
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;
            if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
            {
            }

            else
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          v13 = v39;
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_101385D80;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = sub_100008C00();
        *(v36 + 32) = v6;
        *(v36 + 40) = v8;
LABEL_34:
        (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
        static LocalizationUtility.localizedString(key:table:)();

        (*(v2 + 8))(v4, v1);
        v12 = String.init(format:arguments:)();

        return v12;
      }
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
        if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    goto LABEL_34;
  }

  v9 = *v5;
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = *(v9 + 16);
  sub_1004AB6A0(v9, v7, v6, v8, 1);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  v12 = static String.localizedStringWithFormat(_:_:)();

  return v12;
}

uint64_t sub_10084178C()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeftWhileTravelingUserNotification(0);
  v6 = (v0 + *(v5 + 24));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v5;
    (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);

    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v4, v1);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10138BBE0;
    v11 = *(*(v0 + *(v9 + 20)) + 16);
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = v11;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = sub_100008C00();
    *(v10 + 72) = v8;
    *(v10 + 80) = v7;
    v12 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
    v12 = static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v4, v1);
  }

  return v12;
}

unint64_t sub_100841A08()
{
  v71 = type metadata accessor for UUID();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = objc_opt_self();
  v56 = type metadata accessor for LeftWhileTravelingUserNotification(0);
  v3 = v56[7];
  v58 = v0;
  v4 = *(v0 + v3);
  *&v72 = 0;
  v5 = [v2 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v72];
  v6 = v72;
  if (v5)
  {
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v53 = 0;
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v59 = 0;
    v53 = 0;
    v8 = 0xF000000000000000;
  }

  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = inited + 32;
  *(inited + 40) = v11;
  v57 = v8;
  if (v8 >> 60 == 15)
  {
    v73 = 0u;
    v72 = 0u;
    v12 = objc_allocWithZone(NSNull);
    v13 = [v12 init];
    *(inited + 72) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 48) = v13;
    if (*(&v73 + 1))
    {
      sub_1004AB638(&v72);
    }
  }

  else
  {
    *(&v73 + 1) = &type metadata for Data;
    *&v72 = v59;
    *(&v72 + 1) = v8;
    sub_1001E6224(&v72, (inited + 48));
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  v15 = *(v58 + v56[5]);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  swift_bridgeObjectRetain_n();
  sub_10002E98C(v59, v57);
  v20 = 0;
  v55 = (v17 + 63) >> 6;
  v69 = v63 + 16;
  v68 = (v63 + 8);
  v21 = _swiftEmptyArrayStorage;
  v62 = inited;
  v61 = v15;
  v60 = v15 + 64;
LABEL_12:
  if (v19)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    if (v22 >= v55)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v20;
    if (v19)
    {
      v20 = v22;
LABEL_17:
      v67 = v19;
      v23 = *(*(v15 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      v24 = *(v23 + 16);
      if (v24)
      {
        v65 = v20;
        v66 = v21;
        *&v72 = _swiftEmptyArrayStorage;

        sub_101123BB8(0, v24, 0);
        v25 = v72;
        v26 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v64 = v23;
        v27 = v23 + v26;
        v28 = *(v63 + 72);
        v29 = *(v63 + 16);
        do
        {
          v30 = v70;
          v31 = v71;
          v29(v70, v27, v71);
          v32 = UUID.uuidString.getter();
          v34 = v33;
          (*v68)(v30, v31);
          *&v72 = v25;
          v36 = v25[2];
          v35 = v25[3];
          if (v36 >= v35 >> 1)
          {
            sub_101123BB8((v35 > 1), v36 + 1, 1);
            v25 = v72;
          }

          v25[2] = v36 + 1;
          v37 = &v25[2 * v36];
          v37[4] = v32;
          v37[5] = v34;
          v27 += v28;
          --v24;
        }

        while (v24);

        inited = v62;
        v15 = v61;
        v16 = v60;
        v21 = v66;
        v20 = v65;
      }

      else
      {
        v25 = _swiftEmptyArrayStorage;
      }

      v38 = v25[2];
      v39 = *(v21 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v40 > *(v21 + 3) >> 1)
      {
        if (v39 <= v40)
        {
          v42 = v39 + v38;
        }

        else
        {
          v42 = v39;
        }

        v21 = sub_100A5B2CC(isUniquelyReferenced_nonNull_native, v42, 1, v21);
      }

      v19 = (v67 - 1) & v67;
      if (v25[2])
      {
        if ((*(v21 + 3) >> 1) - *(v21 + 2) < v38)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v43 = *(v21 + 2);
          v44 = __OFADD__(v43, v38);
          v45 = v43 + v38;
          if (v44)
          {
            goto LABEL_45;
          }

          *(v21 + 2) = v45;
        }
      }

      else
      {

        if (v38)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_12;
    }
  }

  *(inited + 120) = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  *(inited + 96) = v21;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v46;
  v47 = (v58 + v56[6]);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    *(&v73 + 1) = &type metadata for String;
    *&v72 = v49;
    *(&v72 + 1) = v48;
    sub_1001E6224(&v72, (inited + 144));
  }

  else
  {
    v73 = 0u;
    v72 = 0u;
    v50 = [objc_allocWithZone(NSNull) init];
    *(inited + 168) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 144) = v50;
    if (*(&v73 + 1))
    {
      sub_1004AB638(&v72);
    }
  }

  v51 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  sub_100006654(v59, v57);
  return v51;
}

uint64_t sub_100842160()
{
  _StringGuts.grow(_:)(88);
  v1._object = 0x8000000101361150;
  v1._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1002FFBAC();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6E6974736564202CLL;
  v3._object = 0xEF203A6E6F697461;
  String.append(_:)(v3);
  v4 = type metadata accessor for LeftWhileTravelingUserNotification(0);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x747865746E6F6320;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6 = (v0 + *(v4 + 20));
  v12 = *v6;
  v13 = v6[1];
  LOBYTE(v14) = *(v6 + 32);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x6F697461636F6C20;
  v7._object = 0xEB00000000203A6ELL;
  String.append(_:)(v7);
  v8 = *(v0 + *(v4 + 28));
  [v8 coordinate];
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 8236;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  [v8 coordinate];
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

uint64_t type metadata accessor for LeftWhileTravelingUserNotification(uint64_t a1)
{
  result = qword_1016AAD60;
  if (!qword_1016AAD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008423F8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      sub_100008BB8(319, &qword_1016A3160, CLLocation_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1008424C4(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for CircleTrustRequestEnvelopeV1(0);
  v3[27] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100842608, v2, 0);
}

uint64_t sub_100842608()
{
  if (sub_100E8F8C0())
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177A560);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share request by underage account. Operation is not allowed.", v4, 2u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[21] = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100845704(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v0[24] + 112);
    v0[33] = v7;

    return _swift_task_switch(sub_100842828, v7, 0);
  }
}

uint64_t sub_100842828()
{

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100842914;
  v3 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_100842914()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_100842A2C, v1, 0);
}

uint64_t sub_100842A2C()
{
  v1 = v0[24];
  v0[35] = v0[14];
  return _swift_task_switch(sub_100842A50, v1, 0);
}

uint64_t sub_100842A50()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[28];
    v4 = v0[29];
    v14 = v5;
    while (v3 < *(v1 + 16))
    {
      v6 = v0[32];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10084574C(v0[35] + v7 + v8 * v3, v6, type metadata accessor for MemberSharingCircle);
      v9 = v0[32];
      if (*(v6 + *(v5 + 40)) == 2)
      {
        sub_1008456A0(v9, v0[31]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FA0((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[31];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1008456A0(v12, _swiftEmptyArrayStorage + v7 + v11 * v8);
        v5 = v14;
      }

      else
      {
        sub_1008457B4(v9, type metadata accessor for MemberSharingCircle);
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v0[36] = _swiftEmptyArrayStorage[2];

    if (qword_101694940 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v0[37] = qword_10177B348;

  return _swift_task_switch(sub_100842C5C, 0, 0);
}

uint64_t sub_100842C5C()
{

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100842D20;
  v2 = *(v0 + 296);

  return unsafeBlocking<A>(_:)(v0 + 120, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100842D20()
{

  return _swift_task_switch(sub_100842E38, 0, 0);
}

uint64_t sub_100842E38()
{
  v1 = v0[24];
  v0[39] = v0[15];
  return _swift_task_switch(sub_100842E5C, v1, 0);
}

uint64_t sub_100842E5C()
{
  v1 = v0[36];
  v2 = sub_101074AAC(v0[39]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A560);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[36];
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v15, v16, "Request limit reached for beacons.\nopenRequests: %ld >= maxPendingRequestSharedItem: %lu.", v18, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[17] = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100845704(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  else
  {
    v3 = v0[27];
    v4 = v0[26];
    v5 = v0[23];
    v6 = v0[24];
    v7 = v0[22];
    v8 = *(v0[28] + 28);
    v9 = type metadata accessor for UUID();
    v0[40] = v9;
    (*(*(v9 - 8) + 16))(v3, v7 + v8, v9);
    v0[5] = v4;
    v0[6] = sub_100845704(&qword_1016A4EF8, type metadata accessor for CircleTrustRequestEnvelopeV1, &unk_1013AE1B0);
    v0[7] = sub_100845704(&qword_1016AAE70, type metadata accessor for CircleTrustRequestEnvelopeV1, &unk_1013AE098);
    v10 = sub_1000280DC(v0 + 2);
    sub_10084574C(v3, v10, type metadata accessor for CircleTrustRequestEnvelopeV1);
    v11 = *(type metadata accessor for MemberPeerTrust(0) + 28);
    v12 = swift_task_alloc();
    v0[41] = v12;
    *v12 = v0;
    v12[1] = sub_1008431FC;

    return sub_10129B0F0(v6 + 120, (v0 + 2), 7, v5 + v11);
  }
}

uint64_t sub_1008431FC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_100843C8C;
  }

  else
  {
    v5 = *(v2 + 192);
    sub_100007BAC((v2 + 16));
    v4 = sub_100843324;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100843324()
{
  v27 = v0;
  sub_1008457B4(v0[27], type metadata accessor for CircleTrustRequestEnvelopeV1);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[22];
  v3 = type metadata accessor for Logger();
  v0[43] = sub_1000076D4(v3, qword_10177A560);
  sub_10084574C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100845704(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1008457B4(v6, type metadata accessor for MemberSharingCircle);
    v12 = sub_1000136BC(v9, v11, v26);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request. Update %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[30];

    sub_1008457B4(v13, type metadata accessor for MemberSharingCircle);
  }

  v14 = v0[42];
  v15 = v0[25];
  *(swift_task_alloc() + 16) = *(v0 + 11);
  sub_100EC0C48(sub_100845814, v15);
  if (v14)
  {

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1000136BC(v20, v21, v26);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failure in share requesting, cloud data update error %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {
    }

    v24 = v0[1];

    return v24();
  }

  else
  {
    v23 = v0[33];

    return _swift_task_switch(sub_100843770, v23, 0);
  }
}

uint64_t sub_100843798()
{
  v1 = v0[44];
  v2 = v0[25];
  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_100843890;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100843890()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_100843A68;
  }

  else
  {

    v2 = sub_1008439AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008439C8()
{
  sub_100845638(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100843A68()
{
  v1 = *(v0 + 192);

  return _swift_task_switch(sub_100843AD4, v1, 0);
}

uint64_t sub_100843AD4()
{
  v11 = v0;
  sub_100845638(*(v0 + 200));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in share requesting, cloud data update error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100843C8C()
{
  v13 = v0;
  sub_1008457B4(v0[27], type metadata accessor for CircleTrustRequestEnvelopeV1);
  sub_100007BAC(v0 + 2);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in share requesting, message sending error %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  sub_1001118C8();
  swift_allocError();
  *v9 = 3;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100843ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle(0);
  *(a1 + *(v4 + 40)) = 2;
  v5 = *(type metadata accessor for MemberPeerTrust(0) + 20);
  v6 = *(v4 + 36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  result = sub_100FFCB84(2, a2 + v5, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v9;
  return result;
}

uint64_t sub_100843F5C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for MemberSharingCircle(0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1008440D8, v1, 0);
}

uint64_t sub_1008440D8()
{
  v59 = v0;
  if (qword_101694480 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v1 = v0[17];
    v2 = v0[6];
    v3 = type metadata accessor for Logger();
    v0[18] = sub_1000076D4(v3, qword_10177A560);
    sub_10084574C(v2, v1, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[17];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_100845704(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_1008457B4(v7, type metadata accessor for MemberSharingCircle);
      v13 = sub_1000136BC(v10, v12, &v58);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data update on handle share request decline. Update %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      sub_1008457B4(v7, type metadata accessor for MemberSharingCircle);
    }

    v14 = sub_100845130(*(v0[6] + *(v0[16] + 36)));
    v15 = *(v14 + 2);
    if (!v15)
    {
      break;
    }

    v16 = v0[13];
    v51 = v0[8];
    v58 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v15, 0);
    v17 = v58;
    v57 = v14 + 64;
    v18 = _HashTable.startBucket.getter();
    v19 = 0;
    v50 = v14;
    v48 = v14 + 72;
    v49 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << v14[32])
    {
      v22 = v18 >> 6;
      if ((*&v57[8 * (v18 >> 6)] & (1 << v18)) == 0)
      {
        goto LABEL_30;
      }

      v52 = v19;
      v53 = *(v14 + 9);
      v23 = v0[11];
      v24 = v0[12];
      v56 = v17;
      v26 = v0[9];
      v25 = v0[10];
      v54 = v0[14];
      v55 = *(v16 + 72);
      (*(v16 + 16))(v23, *(v14 + 6) + v55 * v18, v24);
      v27 = *(*(v14 + 7) + v18);
      v28 = *(v16 + 32);
      v28(v25, v23, v24);
      *(v25 + *(v51 + 48)) = v27;
      sub_100845584(v25, v26);
      v29 = v26;
      v17 = v56;
      v28(v54, v29, v24);
      v58 = v56;
      v31 = v56[2];
      v30 = v56[3];
      if (v31 >= v30 >> 1)
      {
        sub_101123D4C((v30 > 1), v31 + 1, 1);
        v17 = v58;
      }

      v32 = v0[14];
      v33 = v0[12];
      v17[2] = v31 + 1;
      v28(v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v31 * v55, v32, v33);
      v14 = v50;
      v20 = 1 << v50[32];
      if (v18 >= v20)
      {
        goto LABEL_31;
      }

      v34 = *&v57[8 * v22];
      if ((v34 & (1 << v18)) == 0)
      {
        goto LABEL_32;
      }

      if (v53 != *(v50 + 9))
      {
        goto LABEL_33;
      }

      v35 = v34 & (-2 << (v18 & 0x3F));
      if (v35)
      {
        v20 = __clz(__rbit64(v35)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v21 = v49;
      }

      else
      {
        v36 = v16;
        v37 = v22 << 6;
        v21 = v49;
        v38 = &v48[8 * v22];
        v39 = v22 + 1;
        while (v39 < (v20 + 63) >> 6)
        {
          v41 = *v38++;
          v40 = v41;
          v37 += 64;
          ++v39;
          if (v41)
          {
            sub_1000BB408(v18, v53, 0);
            v20 = __clz(__rbit64(v40)) + v37;
            goto LABEL_23;
          }
        }

        sub_1000BB408(v18, v53, 0);
LABEL_23:
        v16 = v36;
      }

      v19 = v52 + 1;
      v18 = v20;
      if (v52 + 1 == v21)
      {

        goto LABEL_26;
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
LABEL_34:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_26:
  v42 = v0[15];
  v43 = v0[6];
  v44 = swift_task_alloc();
  *(v44 + 16) = v43;
  *(v44 + 24) = v17;
  sub_100EC0C48(sub_1008455F4, v42);
  v45 = v0[7];

  v46 = *(v45 + 112);
  v0[19] = v46;

  return _swift_task_switch(sub_100844818, v46, 0);
}

uint64_t sub_100844840()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100844938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100844938()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100844B20;
  }

  else
  {

    v2 = sub_100844A54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100844A70()
{
  sub_100845638(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100844B20()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100844B8C, v1, 0);
}

uint64_t sub_100844B8C()
{
  v11 = v0;
  sub_100845638(*(v0 + 120));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure handle share request decline, cloud data update error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100844D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  result = type metadata accessor for MemberSharingCircle(0);
  *(a1 + *(result + 40)) = 1;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = *(result + 36);
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = (a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v41 = *(v14 + 56);
    v42 = v15;
    v43 = v14;
    v40 = (v14 - 8);
    while (1)
    {
      v18 = v42;
      v42(v10, v16, v4);
      v19 = v10;
      v18(v8, v10, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      v22 = a1;
      v23 = v21;
      v44 = *(a1 + v21);
      v24 = v44;
      v25 = sub_1000210EC(v8);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        break;
      }

      v31 = v26;
      if (v24[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = v25;
          sub_101007A90();
          v25 = v38;
        }
      }

      else
      {
        sub_100FEB78C(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_1000210EC(v8);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_17;
        }
      }

      v10 = v19;
      v33 = v44;
      if (v31)
      {
        *(v44[7] + v25) = 1;
        v17 = *v40;
        (*v40)(v8, v4);
        result = (v17)(v19, v4);
      }

      else
      {
        v44[(v25 >> 6) + 8] |= 1 << v25;
        v34 = v25;
        v42((v33[6] + v25 * v41), v8, v4);
        *(v33[7] + v34) = 1;
        v35 = *v40;
        (*v40)(v8, v4);
        result = (v35)(v19, v4);
        v36 = v33[2];
        v29 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v33[2] = v37;
      }

      a1 = v22;
      v13 = v23;
      *(a1 + v23) = v33;
      v16 += v41;
      if (!--v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100845054()
{

  sub_100007BAC((v0 + 120));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1008450B8(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100845290(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100845130(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100845290(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1008450B8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100845290(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v46 = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  v4 = __chkstk_darwin(v46);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v42 = type metadata accessor for UUID();
  result = __chkstk_darwin(v42);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v47 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v36 = 0;
  v37 = (v14 + 63) >> 6;
  v40 = v8 + 16;
  v43 = v8;
  v38 = v12;
  v39 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v47;
    v22 = v42;
    v23 = v43;
    v24 = *(v43 + 16);
    v25 = v41;
    v24(v41, v47[6] + *(v43 + 72) * v20, v42);
    v26 = v20;
    LOBYTE(v21) = *(v21[7] + v20);
    v27 = v44;
    v24(v44, v25, v22);
    v28 = v46;
    v27[*(v46 + 48)] = v21;
    v29 = v27;
    v30 = v45;
    sub_100845584(v29, v45);
    LODWORD(v28) = *(v30 + *(v28 + 48));
    v31 = *(v23 + 8);
    v31(v30, v22);
    result = (v31)(v25, v22);
    v16 = v48;
    if (v28 == 2)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_10061C248(v35, v34, v36, v47);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v37)
    {
      return sub_10061C248(v35, v34, v36, v47);
    }

    v19 = v38[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100845584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1008455F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_100EC2310(v4, a1, v3);
}

uint64_t sub_100845638(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008456A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100845704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10084574C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008457B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100845814()
{
  v1 = *(v0 + 16);
  v2[2] = *(v0 + 24);
  sub_100D43B6C(v1, sub_100845864, v2);
}

uint64_t static PencilSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PencilSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

uint64_t PencilSendPairingStatusCommandPayload.init(from:)(void *a1)
{
  result = sub_100845D7C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t PencilSendPairingStatusCommandPayload.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v27 = a2;
  v28 = a3;
  sub_10015049C(v29, v30);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(a2, a3);
  if (v5)
  {
    return sub_100007BAC(v29);
  }

  v11 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = HIWORD(a5);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v11 != 2)
  {
LABEL_14:
    LOBYTE(v12) = 0;
    goto LABEL_15;
  }

  v14 = *(a4 + 16);
  v13 = *(a4 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v12 = HIDWORD(a4) - a4;
  }

  result = sub_100017D5C(a4, a5);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 0xFF)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  LOBYTE(v25) = v12;
  sub_1000198E8();
  v27 = FixedWidthInteger.data.getter();
  v28 = v15;
  sub_10015049C(v29, v30);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v27, v28);
  v27 = a4;
  v28 = a5;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v18 = *(a4 + 16);
      v17 = *(a4 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (v19)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_25:
    result = 100 - v16;
    if (!__OFSUB__(100, v16))
    {
      v25 = sub_100845C88(result);
      v26 = v20;
      sub_100776394(&v25, 0);
      v21 = v25;
      v22 = v26;
      Data.append(_:)();
      sub_100016590(v21, v22);
      v23 = v27;
      v24 = v28;
      v25 = v27;
      v26 = v28;
      sub_10015049C(v29, v30);
      sub_100017D5C(v23, v24);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v25, v26);
      sub_100016590(v23, v24);
      return sub_100007BAC(v29);
    }

    goto LABEL_29;
  }

  if (!v11)
  {
    v16 = BYTE6(a5);
    goto LABEL_25;
  }

LABEL_22:
  LODWORD(v16) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v16 = v16;
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100845C38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100845D7C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100845C88(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_100268BBC(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

uint64_t sub_100845D28(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 != 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100845D7C(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v25, v26);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v27 = v6;
    sub_10015049C(v25, v26);
    v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v10 = v9;
    sub_10015049C(v25, v26);
    v22 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v23 = v11;
    sub_100017D5C(v8, v10);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if ((v24 & 0x100) == 0)
    {
      sub_10002EA98(v24, v22, v23, &v24);
      sub_100016590(v8, v10);
      v4 = sub_100845D28(v7, v27);
      sub_100007BAC(v25);
      sub_100007BAC(a1);
      return v4;
    }

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C448);
    sub_100017D5C(v8, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_100016590(v8, v10);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v15 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, &v24);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid signature length: %s", v15, 0xCu);
      sub_100007BAC(v21);
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v19, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v22, v23);
    sub_100016590(v8, v10);
    sub_100016590(v7, v27);
  }

  sub_100007BAC(v25);
  sub_100007BAC(a1);
  return v4;
}

unint64_t sub_100846144(uint64_t a1)
{
  *(a1 + 8) = sub_100846174();
  result = sub_10027FC60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100846174()
{
  result = qword_1016AAE80;
  if (!qword_1016AAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAE80);
  }

  return result;
}

uint64_t sub_1008461E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100846298(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_100846214(uint64_t a1)
{
  *(a1 + 8) = sub_100846244();
  result = sub_10064D4CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100846244()
{
  result = qword_1016AAE88;
  if (!qword_1016AAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAE88);
  }

  return result;
}

uint64_t sub_100846298(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v5 = result;
  if (v1)
  {
    goto LABEL_12;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v7) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = v7;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    goto LABEL_14;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v7 == 32)
  {
LABEL_12:
    sub_100007BAC(v11);
    sub_100007BAC(a1);
    return v5;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100846398()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaySoundUserNotification(0);
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = (v0 + *(v5 + 28));
  v9 = *v7;
  v8 = v7[1];
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;

  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_100846564()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaySoundUserNotification(0);

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();

  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = (v0 + *(v5 + 28));
  v9 = *v7;
  v8 = v7[1];
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;

  v10 = String.init(format:arguments:)();

  return v10;
}

unint64_t sub_10084678C()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v1 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v3;
}

uint64_t type metadata accessor for PlaySoundUserNotification(uint64_t a1)
{
  result = qword_1016AAEE8;
  if (!qword_1016AAEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008468B0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockAckEndPoint(uint64_t a1)
{
  result = qword_1016AAF88;
  if (!qword_1016AAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008469BC()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001013612D0;
  String.append(_:)(v1);
  v0(&v7, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100846BD4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100846C40(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AB068, &qword_1013BEF60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1008476F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10084774C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for BeaconIdentifier(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100846E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = type metadata accessor for UUID();
  v26 = *(v30 - 8);
  v4 = __chkstk_darwin(v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = &v21 - v7;
  v8 = sub_1000BC4D4(&qword_1016AB058, &qword_1013BEF58);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1008476F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_10084774C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16 = v27;
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_100429A68(v19, v25);
  sub_100007BAC(a1);
  return sub_100429ACC(v19);
}

uint64_t sub_1008471A0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644972657375;
  }
}

uint64_t sub_1008471EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1008472D8(uint64_t a1)
{
  v2 = sub_1008476F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100847314(uint64_t a1)
{
  v2 = sub_1008476F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100847380()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100847430(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1008474D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10084757C()
{
  type metadata accessor for UUID();
  sub_10084774C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 47;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t sub_100847648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

unint64_t sub_1008476F8()
{
  result = qword_1016AB060;
  if (!qword_1016AB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB060);
  }

  return result;
}

uint64_t sub_10084774C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1008477A8()
{
  result = qword_1016AB070;
  if (!qword_1016AB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB070);
  }

  return result;
}

unint64_t sub_100847800()
{
  result = qword_1016AB078;
  if (!qword_1016AB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB078);
  }

  return result;
}

unint64_t sub_100847858()
{
  result = qword_1016AB080;
  if (!qword_1016AB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB080);
  }

  return result;
}

uint64_t type metadata accessor for PairingConfig(uint64_t a1)
{
  result = qword_1016AB0E0;
  if (!qword_1016AB0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100847920(uint64_t a1)
{
  sub_1000E3404();
  if (v1 <= 0x3F)
  {
    sub_1008479B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008479B4(uint64_t a1)
{
  if (!qword_10169AC10)
  {
    type metadata accessor for AccessoryProductInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10169AC10);
    }
  }
}

uint64_t sub_100847A0C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3B0);
  sub_1000076D4(v0, qword_10177B3B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100847A8C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3C8);
  v1 = sub_1000076D4(v0, qword_10177B3C8);
  if (qword_101694978 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B3B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100847B54(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001013BF080;
  v7 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  v8 = type metadata accessor for FinderStateInfo(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue;
  type metadata accessor for WorkItemQueue();
  v10 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  UUID.init()();
  *(v1 + v9) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v1 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners) = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStreamStateProvider;
  sub_1000BC4D4(&qword_1016AB2E0, &qword_1013BF268);
  swift_allocObject();
  *(v1 + v11) = AsyncStreamProvider.init()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStateManager) = a1;
  return v1;
}

uint64_t sub_100847D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100847E18, a3, 0);
}

uint64_t sub_100847E18()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    v23 = *(v1 + v2);
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = v23;
    v5 = result;
    if (!result)
    {
LABEL_18:

      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= 1)
  {
    v25 = **(v0 + 96);
    v24 = v4 & 0xC000000000000001;
    v6 = v4;

    v7 = v6;
    v8 = 0;
    v26 = v5;
    v27 = v6;
    while (1)
    {
      if (v24)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v8 + 32);
      }

      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v13, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v11;
      sub_1000D2A70(v13, v12, &qword_101698C00, &qword_10138B570);
      LODWORD(v12) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 112);
      if (v12 == 1)
      {
        sub_10000B3A8(*(v0 + 112), &qword_101698C00, &qword_10138B570);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_14:
          v19 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_15:

      if (v21 | v19)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v9;
      *(v0 + 88) = v25;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v7 = v27;
      if (v26 == v8)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008481A4()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_100848238;

  return daemon.getter();
}

uint64_t sub_100848238(uint64_t a1)
{
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_10084AAE4(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100848390, v3, v2);
}

uint64_t sub_100848390()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100848408, v1, 0);
}

uint64_t sub_100848408()
{
  v1 = SPFinderStateChangedNotification;
  v5 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1008484E8;
  v3 = *(v0 + 40);

  return v5(v1, &unk_1013BF250, v3);
}

uint64_t sub_1008484E8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100848624, v2, 0);
}

uint64_t sub_100848624()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100848714(uint64_t a1, void *a2)
{
  v2[2] = a2;
  v2[3] = *a2;
  type metadata accessor for UUID();
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1008487D0, a2, 0);
}

uint64_t sub_1008487D0()
{
  v1 = v0[3];
  v2 = v0[2];
  type metadata accessor for WorkItemQueue.WorkItem();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008488EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for FinderStateInfo(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1008489E8, v1, 0);
}

uint64_t sub_1008489E8()
{
  v1 = v0[3];
  v2 = sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100848AF8;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v6, v5);
}

uint64_t sub_100848AF8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100848C08, v1, 0);
}

uint64_t sub_100848C08()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696C40, &unk_1013B8520);
  }

  else
  {
    v4 = v0[8];
    sub_1000DD6A4(v3, v4);
    sub_1000BC4D4(&qword_1016AB2D0, &qword_1013BF210);
    v5 = (sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    v8 = v7 + v6;
    v9 = v5[14];
    (*(v2 + 56))(v8, 1, 1, v1);
    sub_1000DD6A4(v4, v8 + v9);
  }

  AsyncStreamProvider.stream(initialEvents:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100848DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = v12;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  swift_retain_n();
  sub_10025EDD4(0, 0, v10, &unk_1013BF228, v14);
}

uint64_t sub_100849004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for UUID();
  v5[4] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v5[7] = *(v8 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100849108, a4, 0);
}

uint64_t sub_100849108()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[2];
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100849298(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100849338, a2, 0);
}

uint64_t sub_100849338()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696C40, &unk_1013B8520);

  return _swift_task_switch(sub_1008493DC, 0, 0);
}

uint64_t sub_1008493DC()
{
  sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  CheckedContinuation.resume(returning:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100849468(uint64_t a1)
{
  v1[8] = a1;
  v1[9] = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for FinderStateInfo(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1008495C4, a1, 0);
}

uint64_t sub_1008495C4()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  v0[18] = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101696C40, &unk_1013B8520);
  v0[19] = *(v2 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStateManager);

  return _swift_task_switch(sub_100849680, 0, 0);
}

uint64_t sub_100849680()
{

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_100849740;
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[11];

  return unsafeBlocking<A>(_:)(v3, sub_10084A7DC, v2, v4);
}

uint64_t sub_100849740()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10084986C, v1, 0);
}

uint64_t sub_10084986C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  sub_1002EF7CC(v0[14], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_10084A844(v2, v5 + v1);
  swift_endAccess();

  return _swift_task_switch(sub_100849940, 0, 0);
}

uint64_t sub_100849940()
{
  v27 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  sub_1000D2A70(v0[17], v1, &qword_101696C40, &unk_1013B8520);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[15];
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &qword_101696C40, &unk_1013B8520);
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = *v5;
    sub_1000DD708(v5);
    if (v8)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v8)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  if (qword_101694980 != -1)
  {
    swift_once();
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B3C8);
  sub_1002EF7CC(v9, v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[13];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446466;
    v18 = sub_1000136BC(v7, v6, &v26);

    *(v16 + 4) = v18;
    *(v16 + 12) = 1024;
    v19 = *v15;
    sub_1000DD708(v15);
    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Refreshed finder state info. Old: %{public}s, new: %{BOOL}d.", v16, 0x12u);
    sub_100007BAC(v17);
  }

  else
  {
    sub_1000DD708(v0[13]);
  }

  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[10];
  v23 = *(v0[9] + 48);
  sub_1000D2A70(v20, v22, &qword_101696C40, &unk_1013B8520);
  sub_1002EF7CC(v21, v22 + v23);
  AsyncStreamProvider.yield(value:transaction:)();
  sub_10000B3A8(v22, &qword_101696C68, &qword_10138B5B0);
  sub_1000DD708(v21);
  sub_10000B3A8(v20, &qword_101696C40, &unk_1013B8520);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100849C84()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache, &qword_101696C40, &unk_1013B8520);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FinderStateObserver(uint64_t a1)
{
  result = qword_1016AB170;
  if (!qword_1016AB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100849D70(uint64_t a1)
{
  sub_100849E34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100849E34(uint64_t a1)
{
  if (!qword_1016AB180)
  {
    type metadata accessor for FinderStateInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016AB180);
    }
  }
}

uint64_t sub_100849E8C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FinderStateObserver(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100849F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FinderStateObserver(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10084A000(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FinderStateObserver(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10084A0AC()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for UUID();
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_10084A190;

  return sub_1008481A4();
}

uint64_t sub_10084A190()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10084A2A0, v1, 0);
}

uint64_t sub_10084A2A0()
{
  v1 = v0[3];
  v2 = v0[2];
  type metadata accessor for WorkItemQueue.WorkItem();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10084A3E0()
{
  sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100264E2C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10084A4E8()
{
  type metadata accessor for FinderStateObserver(0);
  sub_10084AAE4(&unk_1016B1000, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10084A5E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100847D6C(a1, a2, v2);
}

uint64_t sub_10084A690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_10084A744()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100849468(v2);
}

uint64_t sub_10084A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084A8D0(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100849004(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10084A9D4()
{
  v2 = *(sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100849298(v0 + v3, v4);
}

uint64_t sub_10084AAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10084AB2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100848714(a1, v1);
}

uint64_t sub_10084ABC4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100849468(v2);
}

uint64_t sub_10084AC5C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3E0);
  v1 = sub_1000076D4(v0, qword_10177B3E0);
  if (qword_101694990 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B3F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10084AD24()
{
  v1[2] = v0;
  v2 = type metadata accessor for IdentityLossResolutionMode();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10084AE4C, 0, 0);
}

uint64_t sub_10084AE4C()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001013BF270;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_1000076D4(v3, qword_10177BA58);
  v0[10] = v5;
  v6 = *(v4 + 16);
  v0[11] = v6;
  v0[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  type metadata accessor for CloudStorageDatabase(0);
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_10084AFA0;
  v8 = v0[9];

  return sub_10076717C(v8, 0);
}

uint64_t sub_10084AFA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_10084B630;
  }

  else
  {
    *(v4 + 120) = a1;
    type metadata accessor for CloudStorageStore(0);
    *(v4 + 128) = swift_allocObject();
    v5 = sub_10084B0DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10084B0DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_defaultActor_initialize();
  strcpy((v2 + 120), "CloudStorage");
  *(v2 + 133) = 0;
  *(v2 + 134) = -5120;
  type metadata accessor for CloudStorageStore.State(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_stateContinuations) = _swiftEmptyDictionarySingleton;
  *(v2 + 112) = v1;

  return _swift_task_switch(sub_10084B1A8, 0, 0);
}

uint64_t sub_10084B1A8()
{
  v1 = v0[2];
  *(v1 + 128) = v0[16];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v4;
  }

  else
  {
    v21 = 0xD00000000000001DLL;
    v22 = 0x800000010134ACD0;
  }

  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v10 = v0[4];
  type metadata accessor for CloudKitStorage();
  v5(v7, v6, v9);
  v12 = *(v1 + 128);
  v13 = sub_10084D6C0(&qword_1016AB430, 255, type metadata accessor for CloudStorageStore, &unk_1013E2FA8);
  sub_1000BC4D4(&qword_1016AB438, &unk_1013BF3B0);
  v14 = type metadata accessor for CloudKitCoordinator.Database();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  (*(v15 + 104))(v17 + v16, enum case for CloudKitCoordinator.Database.private(_:), v14);
  (*(v10 + 104))(v8, enum case for IdentityLossResolutionMode.legacy(_:), v11);

  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_10084B480;
  v19 = v0[8];

  return CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(v19, 0xD00000000000001ELL, 0x8000000101361420, v21, v22, v12, v13, v17);
}

uint64_t sub_10084B480(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_10084B6F0;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_10084B5A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10084B5A8()
{
  *(v0[2] + 136) = v0[19];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_10084B630()
{

  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084B6F0()
{

  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084B7D8()
{
  v3 = (&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10084B880;

  return v3();
}

uint64_t sub_10084B880(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10084B998, v2, 0);
}

uint64_t sub_10084B998()
{
  if (qword_101694988 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B3E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current isManateeAvailable: %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 32);

  return v6(v7);
}

uint64_t sub_10084BAC0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10084BB54;

  return daemon.getter();
}

uint64_t sub_10084BB54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_10084D6C0(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10084D6C0(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_10084BD38;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_10084BD38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10084C32C, v5, 0);
  }

  else
  {

    v8 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_10084BEDC;

    return v8();
  }
}

uint64_t sub_10084BEDC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10084BFEC, v1, 0);
}

uint64_t sub_10084BFEC()
{
  v3 = (&async function pointer to dispatch thunk of CloudKitStorage.startup() + async function pointer to dispatch thunk of CloudKitStorage.startup());
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10084C094;

  return v3();
}

uint64_t sub_10084C094()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_10084C390, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v2;
    v4[1] = sub_10084C200;

    return sub_10084C458();
  }
}

uint64_t sub_10084C200()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10084C3F4;
  }

  else
  {
    v4 = sub_1004A9788;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10084C32C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084C390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084C3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084C478()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2 && (v3 = objc_opt_self(), v0[3] = v3, v4 = [v3 standardUserDefaults], v5 = String._bridgeToObjectiveC()(), v6 = objc_msgSend(v4, "BOOLForKey:", v5), v5, v4, (v6 & 1) == 0))
  {
    if (qword_101694988 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[4] = sub_1000076D4(v9, qword_10177B3E0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Performing one time DB reset migration to Production.", v12, 2u);
    }

    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    v13[1] = sub_10084C6EC;
    v14 = v0[2];

    return withTimeout<A>(_:block:)(v13, 0x8155A43676E00000, 6, &unk_1013BF3A0, v14, &type metadata for () + 1);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10084C6EC()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10084CCF0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_10084C830;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10084C830()
{
  v0[7] = *(v0[2] + 136);
  v3 = (&async function pointer to dispatch thunk of CloudKitStorage.reset() + async function pointer to dispatch thunk of CloudKitStorage.reset());
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10084C8DC;

  return v3();
}

uint64_t sub_10084C8DC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v7 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
    v6 = swift_task_alloc();
    *(v2 + 72) = v6;
    *v6 = v3;
    v6[1] = sub_10084CA78;

    return v7(0xD000000000000016, 0x800000010134C550);
  }
}

uint64_t sub_10084CA78()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_10084CBBC, v6, 0);
  }
}

uint64_t sub_10084CBBC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished one time DB reset migration to Production.", v4, 2u);
  }

  v5 = *(v1 + 24);

  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  [v6 setBool:1 forKey:v7];

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10084CCF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084CD54()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10084CD9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10084CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloudStorageService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10084CF08(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10084CFB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10084D058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10084BAC0();
}

uint64_t sub_10084D0E4()
{
  type metadata accessor for CloudStorageService();
  sub_10084D6C0(&unk_1016AA520, v0, type metadata accessor for CloudStorageService, &unk_1013BF308);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10084D1DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10084D29C, 0, 0);
}

uint64_t sub_10084D29C()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_10084D320, v1, 0);
}

uint64_t sub_10084D320()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10084D3D0;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_10084D3D0()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_10084D52C, v3, 0);
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10084D52C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100274F20, 0, 0);
}

uint64_t sub_10084D5A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3F8);
  sub_1000076D4(v0, qword_10177B3F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10084D624(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10084D1DC(a1, v1);
}

uint64_t sub_10084D6C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10084D708()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AB440);
  v1 = sub_1000076D4(v0, qword_1016AB440);
  if (qword_1016949F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B500);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10084D7D0()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B410);
  sub_1000076D4(v0, qword_10177B410);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084D888()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B428);
  sub_1000076D4(v0, qword_10177B428);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084D940()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B440);
  sub_1000076D4(v0, qword_10177B440);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DA00()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B458);
  sub_1000076D4(v0, qword_10177B458);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DABC()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177B470);
  sub_1000076D4(v0, qword_10177B470);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DB70()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177B488);
  sub_1000076D4(v0, qword_10177B488);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DC24()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177B4A0);
  sub_1000076D4(v0, qword_10177B4A0);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DCDC()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4B8);
  sub_1000076D4(v0, qword_10177B4B8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DD94()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4D0);
  sub_1000076D4(v0, qword_10177B4D0);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DE50()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4E8);
  sub_1000076D4(v0, qword_10177B4E8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DF10(char a1)
{
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  swift_allocObject();
  *(v1 + 24) = AsyncStreamProvider.init()();
  *(v1 + 32) = 1;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 40) = v4;
  *(v1 + 56) = 0;
  Table.init(_:database:)();
  *(v1 + 48) = a1;
  if (a1)
  {
    *(v1 + 49) = 0;
    if (qword_101694998 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = sub_1000076D4(v5, qword_1016AB440);
    sub_100C63B84(v6);
  }

  else
  {
    *(v1 + 49) = 1;
  }

  return v1;
}

uint64_t sub_10084E05C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  result = *(a1 + 56);
  if (result)
  {
    *(a1 + 56) = 0;

    if ((*(a1 + 48) & 1) == 0)
    {
      v52 = v10;
      v53 = v1;
      v51 = v13;
      sub_10084E560();
      v50 = [objc_opt_self() defaultManager];
      if (qword_101694998 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_1016AB440);
      (*(v4 + 16))(v7, v15, v3);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54 = v48;
        *v20 = 136446210;
        sub_10085025C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v4;
        v24 = v23;
        v49 = *(v22 + 8);
        v49(v7, v3);
        v25 = sub_1000136BC(v21, v24, &v54);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Purging database: %{public}s", v20, 0xCu);
        sub_100007BAC(v48);
      }

      else
      {

        v49 = *(v4 + 8);
        v49(v7, v3);
      }

      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      v54 = 0;
      v29 = v50;
      v30 = [v50 removeItemAtURL:v27 error:&v54];

      v32 = v51;
      v31 = v52;
      if (v30)
      {
        v33 = v54;
      }

      else
      {
        v35 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v34);
      v37 = v36;
      v54 = 0;
      v38 = [v29 removeItemAtURL:v36 error:&v54];

      if (v38)
      {
        v39 = v54;
      }

      else
      {
        v41 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v40);
      v43 = v42;
      v54 = 0;
      v44 = [v29 removeItemAtURL:v42 error:&v54];

      if (v44)
      {
        v45 = v54;
      }

      else
      {
        v46 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      v47 = v49;
      v49(v31, v3);
      v47(v32, v3);
      return (v47)(v15, v3);
    }
  }

  return result;
}

uint64_t sub_10084E560()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v4 = sub_1000076D4(v0, qword_10177BA58);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v6)(v3, v0);
}

uint64_t sub_10084E768(uint64_t a1, uint64_t a2)
{
  if (qword_101694998 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_1016AB440);
  v7 = *(a1 + 48);
  v8 = sub_10085025C(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
  result = static Database.establishConnection(logger:temporary:)(v6, v7, a2, v8);
  if (!v2)
  {
    *(a1 + 56) = result;
  }

  return result;
}

void sub_10084E854(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Connection.TransactionMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 48) & 1) == 0)
  {
    v24 = a3;
    if (qword_101694998 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_1016AB440);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23 = v8;
      *v15 = 67109376;
      *(v15 + 4) = a1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = a2;
      _os_log_impl(&_mh_execute_header, v13, v14, "Migrate schema %d -> %d", v15, 0xEu);
      v8 = v23;
    }

    a3 = v24;
  }

  if (a2 == 1)
  {
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    v16._object = 0x80000001013513F0;
    Connection.execute(_:)(v16);
    if (!v17)
    {
      v18._object = 0x8000000101351410;
      v18._countAndFlagsBits = 0xD000000000000018;
      Connection.execute(_:)(v18);
      if (!v20)
      {
        __chkstk_darwin(v19);
        *(&v22 - 2) = a3;
        *(&v22 - 1) = v4;
        (*(v9 + 104))(v11, enum case for Connection.TransactionMode.deferred(_:), v8);
        Connection.transaction(_:block:)();
        (*(v9 + 8))(v11, v8);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v21 = a2;
    *(v21 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_10084EB50()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177B410);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10084ED64(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v64 = v57 - v3;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = v57 - v6;
  v7 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  __chkstk_darwin(v7 - 8);
  v60 = v57 - v8;
  v9 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v9 - 8);
  v68 = v57 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v11 - 8);
  v57[0] = v57 - v12;
  v13 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v16 - 8);
  v18 = v57 - v17;
  v19 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v19 - 8);
  v21 = v57 - v20;
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v22, qword_10177B410);
  v63 = v5;
  v25 = *(v5 + 56);
  v24 = (v5 + 56);
  v23 = v25;
  v25(v21, 1, 1, v4);
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v18, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v27 = sub_1000076D4(v26, qword_10177B428);
  v23(v21, 1, 1, v4);
  v28 = *(v26 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v70 = v26;
  v29(v15, 1, 1, v26);
  v61 = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  v31 = v70;
  v32 = sub_1000076D4(v70, qword_10177B440);
  v23(v21, 1, 1, v4);
  v57[1] = v30;
  v58 = v29;
  v29(v15, 1, 1, v31);
  v59 = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v33, qword_10177B458);
  v23(v21, 1, 1, v4);
  v34 = v57[0];
  (*(*(v33 - 8) + 56))(v57[0], 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v35, qword_10177B470);
  v23(v21, 1, 1, v4);
  v36 = v68;
  (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  v37 = v60;
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v38, qword_10177B488);
  v23(v21, 1, 1, v4);
  v39 = *(v38 - 8);
  v68 = v24;
  v40 = *(v39 + 56);
  v69 = v4;
  v40(v37, 1, 1, v38);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v38, qword_10177B4A0);
  v23(v21, 1, 1, v69);
  v40(v37, 1, 1, v38);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v41 = v70;
  v42 = sub_1000076D4(v70, qword_10177B4B8);
  v43 = v69;
  v23(v21, 1, 1, v69);
  v44 = v58;
  v58(v15, 1, 1, v41);
  v60 = v42;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  v45 = v43;
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  v46 = v70;
  v47 = sub_1000076D4(v70, qword_10177B4D0);
  v23(v21, 1, 1, v45);
  v44(v15, 1, 1, v46);
  v57[0] = v47;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  v48 = v70;
  sub_1000076D4(v70, qword_10177B4E8);
  v23(v21, 1, 1, v45);
  v44(v15, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  v49 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v50 = v64;
  ExpressionType<>.length.getter();
  v71 = static MACAddress.length.getter();
  v67 = a1;
  v51 = v62;
  == infix<A>(_:_:)();
  v52 = v66;
  v65 = *(v65 + 8);
  (v65)(v50, v66);
  TableBuilder.check(_:)();
  v68 = *(v63 + 8);
  (v68)(v51, v45);
  v58 = v49;
  ExpressionType<>.length.getter();
  v71 = static MACAddress.length.getter();
  == infix<A>(_:_:)();
  v53 = v65;
  (v65)(v50, v52);
  TableBuilder.check(_:)();
  (v68)(v51, v45);
  ExpressionType<>.length.getter();
  v71 = 85;
  == infix<A>(_:_:)();
  v53(v50, v52);
  TableBuilder.check(_:)();
  v55 = v68;
  v54 = v69;
  (v68)(v51, v69);
  ExpressionType<>.length.getter();
  v71 = 32;
  == infix<A>(_:_:)();
  v53(v50, v52);
  TableBuilder.check(_:)();
  return (v55)(v51, v54);
}

uint64_t sub_10084FC58()
{

  v1 = OBJC_IVAR____TtC12searchpartyd24StandaloneBeaconDatabase_standaloneBeacon;
  v2 = type metadata accessor for Table();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StandaloneBeaconDatabase(uint64_t a1)
{
  result = qword_1016AB480;
  if (!qword_1016AB480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10084FD68(uint64_t a1)
{
  result = type metadata accessor for Table();
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

uint64_t sub_10084FE30()
{
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v1;
}

uint64_t sub_10084FEB0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t sub_10084FEE8()
{
  sub_1000BC4D4(&qword_10169DD90, &unk_10139D100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  v2 = *(v0 + 16);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  *(v1 + 32) = v3;
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_1008500A0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_100850148(uint64_t a1)
{
  result = sub_10085025C(&qword_1016AB590, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF450);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1008501BC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B500);
  sub_1000076D4(v0, qword_10177B500);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10085025C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1008502A4()
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

Swift::Int sub_10085070C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100850780(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1008507D4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A298, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1008508D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_100850968;

  return daemon.getter();
}

uint64_t sub_100850968(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v6 = sub_100851E1C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100851E1C(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  *v3 = v9;
  v3[1] = sub_100850B44;

  return ActorServiceDaemon.getService<A>()(v4, MyNetworkPublisherService, v6, v7);
}

uint64_t sub_100850B44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100850E80, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v4;
    v5[1] = sub_100850CD0;

    return sub_1008EDF50(0);
  }
}

uint64_t sub_100850CD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_100850F18;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_100850DF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100850DF8()
{
  v1 = *(v0 + 88);
  (*(v0 + 16))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100850E80()
{
  v1 = v0[8];
  v2 = v0[2];

  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100850F18()
{
  v1 = v0[10];
  v2 = v0[2];

  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

id sub_10085112C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SchedulerTrampoline();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100851188()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SchedulerTrampoline()) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1008511F4()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = PressuredExitTransactionManager.begin(_:)();
  v12 = v0[4];
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v1;
  aBlock[4] = sub_100851E10;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101636D18;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100851E1C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v4, v2);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_100851514(uint64_t a1)
{
  v1 = type metadata accessor for MachServiceName();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for XPCServiceDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_100851188();
  if (qword_1016949F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1016AB5B0;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  Transaction.end()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1008516EC()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPSchedulerXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  sub_100A47234();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = sub_100008BB8(0, &unk_1016AB6F0, SPSchedulerInformation_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  qword_1016AB5B0 = v2;
  return result;
}

uint64_t sub_1008517CC(void *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695060 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C3A8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  *(v5 + 96) = sub_100008BB8(0, &qword_10169BAD0, NSXPCConnection_ptr);
  *(v5 + 104) = sub_10026982C();
  *(v5 + 72) = a1;

  v8 = a1;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "in custom shouldAccept (%@) for %@", 34, 2, v5);

  sub_100851DBC();
  return NSXPCConnection.hasEntitlement<A>(_:)() & 1;
}

uint64_t sub_100851908()
{

  v1 = OBJC_IVAR____TtC12searchpartyd16SchedulerService_transactionManager;
  v2 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SchedulerService(uint64_t a1)
{
  result = qword_1016AB610;
  if (!qword_1016AB610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100851A18(uint64_t a1)
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

void *sub_100851AD8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000010;
  v0[3] = 0x80000001013BF530;
  v7 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v9[1] = ".searchpartyd.scheduler";
  v9[2] = v7;
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v9[3] = _swiftEmptyArrayStorage;
  sub_100851E1C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v0[5] = XPCSessionManager.init(name:)();
  v0[6] = 0;
  PressuredExitTransactionManager.init()();
  return v0;
}

unint64_t sub_100851DBC()
{
  result = qword_1016AB6E0;
  if (!qword_1016AB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB6E0);
  }

  return result;
}

uint64_t sub_100851E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100851E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_1008508D4(a1, v4, v5, v7, v6);
}

unint64_t sub_100851F28()
{
  result = qword_1016AB700;
  if (!qword_1016AB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB700);
  }

  return result;
}

unint64_t sub_100851FA0()
{
  result = qword_1016AB708;
  if (!qword_1016AB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB708);
  }

  return result;
}

unint64_t sub_100851FF8()
{
  result = qword_1016AB710;
  if (!qword_1016AB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB710);
  }

  return result;
}

unint64_t sub_100852050()
{
  result = qword_1016AB718;
  if (!qword_1016AB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB718);
  }

  return result;
}

uint64_t sub_1008520C4()
{

  v1 = sub_100A5DF44(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5DF44((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 144) = v1;
  v4 = *(v0 + 136);
  *(v0 + 40) = type metadata accessor for DeviceBeaconPayloadPublisher();
  *(v0 + 48) = &off_101636EB0;
  *(v0 + 16) = v4;
  v1[2] = v3 + 1;
  sub_10000A748((v0 + 16), &v1[5 * v3 + 4]);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_1008521E4;

  return daemon.getter();
}

uint64_t sub_1008521E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[20] = a1;

  v3 = swift_task_alloc();
  v2[21] = v3;
  v4 = type metadata accessor for Daemon();
  v2[22] = v4;
  v5 = type metadata accessor for PencilPairingService(0);
  v2[23] = v5;
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[24] = v6;
  v7 = sub_100045918(&qword_10169A090, 255, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_1008523DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008523DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v3[26] = v3[18];
    v5 = swift_task_alloc();
    v3[27] = v5;
    *v5 = v4;
    v5[1] = sub_100852694;

    return daemon.getter();
  }

  else
  {
    v6 = v3[17];

    return _swift_task_switch(sub_100852594, v6, 0);
  }
}

uint64_t sub_100852594()
{
  v1 = *(v0 + 144);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5DF44((v2 > 1), v3 + 1, 1, *(v0 + 144));
  }

  v4 = *(v0 + 200);
  *(v0 + 120) = *(v0 + 184);
  *(v0 + 128) = &off_101650AE0;
  *(v0 + 96) = v4;
  v1[2] = v3 + 1;
  sub_10000A748((v0 + 96), &v1[5 * v3 + 4]);
  *(v0 + 208) = v1;
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_100852694;

  return daemon.getter();
}

uint64_t sub_100852694(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[28] = a1;

  v4 = swift_task_alloc();
  v2[29] = v4;
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v2[30] = v5;
  v6 = sub_100045918(&unk_1016B10C0, 255, type metadata accessor for DelegatedBeaconPayloadPublisher, &unk_10138B158);
  *v4 = v3;
  v4[1] = sub_100852850;
  v7 = v2[24];
  v8 = v2[22];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_100852850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {

    v5 = *(v3 + 208);
    v6 = *(v4 + 8);

    return v6(v5);
  }

  else
  {
    v8 = *(v3 + 136);

    return _swift_task_switch(sub_1008529D4, v8, 0);
  }
}

uint64_t sub_1008529D4()
{
  v1 = *(v0 + 208);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5DF44((v2 > 1), v3 + 1, 1, *(v0 + 208));
  }

  v4 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 88) = &off_10160E6F0;
  *(v0 + 56) = v4;
  v1[2] = v3 + 1;
  sub_10000A748((v0 + 56), &v1[5 * v3 + 4]);
  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_100852A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100852C20()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClientOrigin();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100852D0C, v0, 0);
}

uint64_t sub_100852D0C()
{
  (*(v0[4] + 104))(v0[5], enum case for ClientOrigin.other(_:), v0[3]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v0[7] = Session.init(_:)();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100852E00;

  return Session.isMyLocationEnabled(cached:)(1);
}

uint64_t sub_100852E00(char a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = *(v3 + 16);
    v5 = sub_100853068;
  }

  else
  {
    v6 = *(v3 + 16);

    v5 = sub_100852F2C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100852F2C()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Result of SML returning %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100853068()
{

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Result of SML unknown, returning false due to error %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

void *sub_100853228(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v1[14] = 0xD00000000000001CLL;
  v1[15] = 0x80000001013BF790;
  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  v1[17] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  type metadata accessor for DeviceIdentityUtility(0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 6;
  v1[18] = v3;
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v6(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v5);
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 7;
  v2[19] = v7;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v8 = qword_10177B2E8;
  v14 = &off_101632E88;
  v15 = &off_101613BE0;
  v13 = type metadata accessor for BeaconObservationStore(0);
  *&v12 = v8;
  type metadata accessor for MemberCircleRevokeManager();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v12, (v9 + 32));
  v2[20] = v9;
  type metadata accessor for MemberCircleRevokeAssistant();
  v2[21] = swift_allocObject();
  v2[16] = a1;
  *(v9 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t sub_100853494()
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2(v0 == 0);
}

void sub_100853598()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Skipped publishing own device beacons due to throttle.", v3, 2u);
  }
}

uint64_t sub_100853678()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1008557D4;
  }

  else
  {
    v4 = sub_1008537A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008537A4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Local disk fetch completed.", v4, 2u);
  }

  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[22];

  sub_100852A9C(v7);
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    v9 = v1[22];
    v10 = v1[23];
    static Date.distantPast.getter();
    if (v8(v9, 1, v10) != 1)
    {
      sub_10000B3A8(v1[22], &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v1[24] + 32))(v1[27], v1[22], v1[23]);
  }

  v11 = swift_task_alloc();
  v1[32] = v11;
  *v11 = v1;
  v11[1] = sub_100853950;

  return sub_1008520A4();
}

uint64_t sub_100853950(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = sub_100855888;
  }

  else
  {
    v6 = sub_100853A84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100853A84()
{
  result = v0[33];
  v0[18] = _swiftEmptyArrayStorage;
  v0[19] = _swiftEmptyArrayStorage;
  v2 = *(result + 16);
  v0[35] = v2;
  if (v2)
  {
    v0[36] = 0;
    if (*(result + 16))
    {
      sub_10001F280(result + 32, (v0 + 8));
      v3 = v0[11];
      v4 = v0[12];
      sub_1000035D0(v0 + 8, v3);
      v16 = (*(v4 + 8) + **(v4 + 8));
      v5 = swift_task_alloc();
      v0[37] = v5;
      *v5 = v0;
      v5[1] = sub_100853E00;
      v6 = v0[27];

      return v16(v6, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = v0[19];
    v0[40] = v7;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v7 + 16);

      _os_log_impl(&_mh_execute_header, v8, v9, "Got %ld payloads to publish for own devices.", v10, 0xCu);
    }

    else
    {
    }

    if (*(v7 + 16))
    {
      v11 = swift_task_alloc();
      v0[41] = v11;
      *v11 = v0;
      v11[1] = sub_100854410;

      return sub_100856750(v7);
    }

    else
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "No observations to publish for owned devices.", v14, 2u);
      }

      v0[43] = 0;
      v15 = swift_task_alloc();
      v0[44] = v15;
      *v15 = v0;
      v15[1] = sub_100854688;

      return sub_100852C20();
    }
  }

  return result;
}

uint64_t sub_100853E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);

    v6 = sub_100855954;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 160);
    *(v4 + 312) = a1;
    v6 = sub_100853F4C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100853F4C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 288) + 1;

  sub_100397E8C(v8);
  sub_10001F280(v0 + 64, v0 + 104);
  (*(v6 + 16))(v4, v3, v5);
  v9 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10000A748((v0 + 104), v10 + 16);
  *(v10 + 56) = v1;
  (*(v6 + 32))(v10 + v9, v4, v5);
  sub_1000BC4D4(&qword_1016AB890, &qword_1013BF950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1013BF948;
  *(v12 + 24) = v10;
  *(inited + 32) = &unk_1013BF960;
  *(inited + 40) = v12;
  sub_10039A7F0(inited);
  result = sub_100007BAC((v0 + 64));
  if (v7 == v2)
  {

    v14 = *(v0 + 152);
    *(v0 + 320) = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v14 + 16);

      _os_log_impl(&_mh_execute_header, v15, v16, "Got %ld payloads to publish for own devices.", v17, 0xCu);
    }

    else
    {
    }

    if (*(v14 + 16))
    {
      v24 = swift_task_alloc();
      *(v0 + 328) = v24;
      *v24 = v0;
      v24[1] = sub_100854410;

      return sub_100856750(v14);
    }

    else
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No observations to publish for owned devices.", v27, 2u);
      }

      *(v0 + 344) = 0;
      v28 = swift_task_alloc();
      *(v0 + 352) = v28;
      *v28 = v0;
      v28[1] = sub_100854688;

      return sub_100852C20();
    }
  }

  else
  {
    v18 = *(v0 + 288) + 1;
    *(v0 + 288) = v18;
    v19 = *(v0 + 264);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10001F280(v19 + 40 * v18 + 32, v0 + 64);
      v20 = *(v0 + 88);
      v21 = *(v0 + 96);
      sub_1000035D0((v0 + 64), v20);
      v29 = (*(v21 + 8) + **(v21 + 8));
      v22 = swift_task_alloc();
      *(v0 + 296) = v22;
      *v22 = v0;
      v22[1] = sub_100853E00;
      v23 = *(v0 + 216);

      return v29(v23, v20, v21);
    }
  }

  return result;
}

uint64_t sub_100854410()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);

    v4 = sub_100855A28;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = sub_100854538;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100854538()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[40];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v1, v2, "Completed publish of %ld own device payloads.", v5, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v0[43] = 0;
  v7 = swift_task_alloc();
  v0[44] = v7;
  *v7 = v0;
  v7[1] = sub_100854688;

  return sub_100852C20();
}

uint64_t sub_100854688(char a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 480) = a1;

  return _swift_task_switch(sub_1008547A0, v2, 0);
}

uint64_t sub_1008547A0()
{
  if (*(v0 + 480))
  {
    if (*(v0 + 344))
    {
      v2 = *(v0 + 216);
      v1 = *(v0 + 224);
      v3 = *(v0 + 184);
      v4 = *(v0 + 192);

      swift_willThrow();
      v5 = *(v4 + 8);
      v5(v2, v3);
      v5(v1, v3);

      v6 = *(v0 + 8);
LABEL_4:

      return v6();
    }

    v10 = *(v0 + 144);
    *(v0 + 440) = v10;
    v11 = v10[2];
    *(v0 + 448) = v11;
    if (!v11)
    {

      v14 = *(v0 + 224);
      v15 = *(v0 + 184);
      v16 = *(*(v0 + 192) + 8);
      v16(*(v0 + 216), v15);
      v16(v14, v15);

      v6 = *(v0 + 8);
      goto LABEL_4;
    }

    *(v0 + 456) = 0;
    v12 = v10[4];
    *(v0 + 464) = v10[5];

    v17 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 472) = v13;
    *v13 = v0;
    v13[1] = sub_1008554C0;

    return v17();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 360) = v8;
    *v8 = v0;
    v8[1] = sub_100854A8C;
    v9 = *(v0 + 216);

    return sub_10085C9A8(v9);
  }
}

uint64_t sub_100854A8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = sub_100855C90;
  }

  else
  {
    v6 = sub_100854BC0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100854BC0()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 368);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Got %ld anonymous shared device payloads to publish.", v5, 0xCu);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = sub_100854CF8;

  return daemon.getter();
}

uint64_t sub_100854CF8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 392) = a1;

  v3 = swift_task_alloc();
  *(v2 + 400) = v3;
  v4 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100045918(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  *v3 = v9;
  v3[1] = sub_100854EDC;

  return ActorServiceDaemon.getService<A>()(v4, MyNetworkPublisherService, v6, v7);
}

uint64_t sub_100854EDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[20];

    return _swift_task_switch(sub_100855E60, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[53] = v6;
    *v6 = v4;
    v6[1] = sub_10085506C;
    v7 = v3[46];

    return sub_1008EFF7C(v7);
  }
}

uint64_t sub_10085506C(void *a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);

    v6 = sub_100856044;
  }

  else
  {
    v5 = *(v4 + 160);

    v6 = sub_1008551A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008551A4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[46];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v1, v2, "Published %ld anonymous shared device payloads.", v5, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (v0[43])
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[23];
    v10 = v0[24];

    swift_willThrow();
    v11 = *(v10 + 8);
    v11(v8, v9);
    v11(v7, v9);

    v12 = v0[1];
LABEL_6:

    return v12();
  }

  v14 = v0[18];
  v0[55] = v14;
  v15 = v14[2];
  v0[56] = v15;
  if (!v15)
  {

    v18 = v0[28];
    v19 = v0[23];
    v20 = *(v0[24] + 8);
    v20(v0[27], v19);
    v20(v18, v19);

    v12 = v0[1];
    goto LABEL_6;
  }

  v0[57] = 0;
  v16 = v14[4];
  v0[58] = v14[5];

  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_1008554C0;

  return v21();
}

uint64_t sub_1008554C0()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1008555EC, v1, 0);
}

uint64_t sub_1008555EC()
{
  v1 = v0[57] + 1;
  if (v1 == v0[56])
  {

    v2 = v0[28];
    v3 = v0[23];
    v4 = *(v0[24] + 8);
    v4(v0[27], v3);
    v4(v2, v3);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v0[57] = v1;
    v7 = v0[55] + 16 * v1;
    v8 = *(v7 + 32);
    v0[58] = *(v7 + 40);

    v10 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[59] = v9;
    *v9 = v0;
    v9[1] = sub_1008554C0;

    return v10();
  }
}

uint64_t sub_1008557D4()
{
  (*(v0[24] + 8))(v0[28], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100855888()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[27], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100855954()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[27], v2);
  v3(v1, v2);
  sub_100007BAC(v0 + 8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100855A28()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing owned devices. Error: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = v0[42];
  v8 = v0[20];
  v7 = v0[21];

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v11 = sub_100045918(&qword_1016AB860, v10, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF8D8);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = v6;

  swift_errorRetain();

  sub_10025EDD4(0, 0, v7, &unk_1013BF970, v12);

  v0[43] = v6;
  v13 = swift_task_alloc();
  v0[44] = v13;
  *v13 = v0;
  v13[1] = sub_100854688;

  return sub_100852C20();
}

uint64_t sub_100855C90()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing owned devices anonymously. Error: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[23];
  v9 = v0[24];

  swift_willThrow();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100855E60()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing owned devices anonymously. Error: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[23];
  v9 = v0[24];

  swift_willThrow();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100856044()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing owned devices anonymously. Error: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[23];
  v9 = v0[24];

  swift_willThrow();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10085621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1008562BC, 0, 0);
}

uint64_t sub_1008562BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v2, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v12 = (*(v5 + 16) + **(v5 + 16));
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_100856474;
  v9 = v0[5];
  v10 = v0[3];

  return v12(v10, v9, v4, v5);
}

uint64_t sub_100856474()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v2 + 40);
  if (v0)
  {

    sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);

    return _swift_task_switch(sub_100856608, 0, 0);
  }

  else
  {
    sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_100856608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100856668(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100014744;

  return v5();
}

uint64_t sub_100856750(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[37] = swift_task_alloc();
  v2[38] = type metadata accessor for OwnedDeviceSubmitEndpoint(0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100856884, v1, 0);
}

uint64_t sub_100856884()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Publishing location for %ld devices.", v6, 0xCu);
  }

  else
  {
  }

  v7 = [objc_opt_self() currentDevice];
  if (!v7 || (v8 = v7, v9 = [v7 uniqueDeviceIdentifier], v8, !v9))
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get device identifier for publishing ownedDevice payloads", v23, 2u);
    }

    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD00000000000001ALL, 0x8000000101361860);
    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError, "i7$");
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  v10 = *(v0 + 256);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *(v10 + 16);
  if (!v14)
  {
LABEL_43:
    v31 = 0x6548656369766564;
    v32 = (*(v0 + 264) + 144);
    v33 = 0xEF74616562747261;
    goto LABEL_44;
  }

  v15 = *(v0 + 256) + 32;
  v16 = *(v10 + 16);
  while (1)
  {
    sub_10001F280(v15, v0 + 64);
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    sub_1000035D0((v0 + 64), v18);
    v20 = (*(v19 + 80))(v18, v19);
    if (v20 <= 2)
    {
      goto LABEL_10;
    }

    if (v20 <= 4)
    {
      break;
    }

    if (v20 != 5)
    {
      sub_100007BAC((v0 + 64));
      goto LABEL_11;
    }

LABEL_10:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100007BAC((v0 + 64));
    if (v17)
    {
      goto LABEL_26;
    }

LABEL_11:
    v15 += 40;
    if (!--v16)
    {
      goto LABEL_27;
    }
  }

  if (v20 == 3)
  {
    goto LABEL_10;
  }

  sub_100007BAC((v0 + 64));
LABEL_26:
  LOBYTE(v16) = 1;
LABEL_27:
  v26 = *(v0 + 256) + 32;
  while (2)
  {
    sub_10001F280(v26, v0 + 104);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    sub_1000035D0((v0 + 104), v28);
    v30 = (*(v29 + 80))(v28, v29);
    if (v30 <= 2)
    {
LABEL_28:
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100007BAC((v0 + 104));
      if ((v27 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if (v30 <= 4)
    {
      if (v30 == 3)
      {
        goto LABEL_28;
      }

      sub_100007BAC((v0 + 104));
LABEL_29:
      v26 += 40;
      if (!--v14)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_43;
        }

        v31 = 0xD000000000000012;
        v32 = (*(v0 + 264) + 152);
        v33 = 0x80000001013569E0;
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  if (v30 == 5)
  {
    goto LABEL_28;
  }

  sub_100007BAC((v0 + 104));
LABEL_41:
  if ((v16 & 1) == 0)
  {
    goto LABEL_43;
  }

  v32 = (*(v0 + 264) + 152);
  v33 = 0x80000001013618D0;
  v31 = 0xD000000000000024;
LABEL_44:
  v34 = *v32;
  *(v0 + 328) = *v32;
  strcpy((v0 + 16), "searchpartyd");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  *(v0 + 32) = v31;
  *(v0 + 40) = v33;
  *(v0 + 48) = v11;
  *(v0 + 56) = v13;
  swift_retain_n();

  v35 = swift_task_alloc();
  *(v0 + 336) = v35;
  *v35 = v0;
  v35[1] = sub_100856F78;
  v36 = *(v0 + 256);

  return sub_100D50ADC(v0 + 16, v36, v34);
}

uint64_t sub_100856F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 264);
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;

  return _swift_task_switch(sub_100857094, v5, 0);
}

uint64_t sub_100857094()
{
  v1 = v0[43];
  if (v1)
  {
    v3 = v0[44];
    v2 = v0[45];
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[37];
    v7 = v0[38];
    v8 = enum case for FMNAccountType.searchParty(_:);
    v9 = type metadata accessor for FMNAccountType();
    (*(*(v9 - 8) + 104))(v4, v8, v9);
    sub_100394BDC(v4 + *(v7 + 20));
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v10 = type metadata accessor for FMNMockingPreferences();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v12 = swift_allocObject();
    sub_10086478C(v4, v5, type metadata accessor for OwnedDeviceSubmitEndpoint);
    v0[46] = sub_10061F4AC(v5, v11, v12);
    sub_1008647F4(v4, type metadata accessor for OwnedDeviceSubmitEndpoint);
    v0[21] = &type metadata for OwnSubmitRequest;
    v0[22] = sub_100864318();
    v0[18] = v1;
    v0[19] = v3;
    v0[20] = v2;

    sub_100017D5C(v3, v2);
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_1008573E8;
    v14 = v0[36];

    return sub_1004E682C(v14, (v0 + 18));
  }

  else
  {
    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000022, 0x8000000101361880);
    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError, "i7$");
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1008573E8()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = sub_100857798;
  }

  else
  {
    v5 = *(v2 + 264);
    sub_100007BAC((v2 + 144));
    v4 = sub_100857510;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100857510()
{
  v1 = v0[48];
  sub_101259EC4(v0[36]);
  if (v1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[43];
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v0[30] = Error.code.getter();
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x6F44726F72726520;
    v6._object = 0xED00003A6E69616DLL;
    String.append(_:)(v6);
    swift_getErrorValue();
    v7._countAndFlagsBits = Error.domain.getter();
    String.append(_:)(v7);

    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000018, 0x80000001013618B0);

    swift_willThrow();

    sub_100165328(v4, v3, v2);
  }

  else
  {
    v9 = v0[45];
    v11 = v0[43];
    v10 = v0[44];
    (*(v0[35] + 8))(v0[36], v0[34]);

    sub_100165328(v11, v10, v9);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100857798()
{

  sub_100007BAC(v0 + 18);
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v0[30] = Error.code.getter();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F44726F72726520;
  v5._object = 0xED00003A6E69616DLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.domain.getter();
  String.append(_:)(v6);

  sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000018, 0x80000001013618B0);

  swift_willThrow();

  sub_100165328(v3, v2, v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100857980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_100857A20, a4, 0);
}

uint64_t sub_100857A20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000BC4D4(&qword_1016AB898, &qword_1013BF978);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 32) = v1;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v7 = sub_100045918(&qword_1016AB860, v6, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF8D8);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v3;
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v2, &unk_1013BF988, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100857BA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_100857CAC;

  return daemon.getter();
}

uint64_t sub_100857CAC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100045918(&unk_1016B10C0, 255, type metadata accessor for DelegatedBeaconPayloadPublisher, &unk_10138B158);
  *v3 = v9;
  v3[1] = sub_100857E90;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100857E90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100858B8C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[13] = v6;
    *v6 = v4;
    v6[1] = sub_100858038;
    v7 = v3[2];

    return sub_1000D0378(v7);
  }
}

uint64_t sub_100858038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_100858CBC;
  }

  else
  {
    v5 = sub_100858164;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100858164()
{
  v23 = v0;
  if (*(v0[14] + 16))
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_100858474;
    v2 = v0[14];

    return sub_100856750(v2);
  }

  else
  {

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CE28);
    (*(v6 + 16))(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_1000136BC(v17, v19, &v22);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "No observations to publish for delegated beacon %{private,mask.hash}s.", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100858474()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100858FC0;
  }

  else
  {
    v4 = sub_1008585A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008585A0()
{
  v23 = v0;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  (*(v3 + 16))(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 134218499;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Completed initial publish of delegated %ld payloads for beacon %{private,mask.hash}s.", v13, 0x20u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10085885C;
  v20 = v0[14];

  return sub_1000C73BC(v20);
}

uint64_t sub_10085885C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_1008589B4;
  v4 = *(v1 + 112);

  return sub_1000CB8EC(v4);
}

uint64_t sub_1008589B4()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1008649C8;
  }

  else
  {

    v4 = sub_100858B10;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100858B10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100858B8C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing DelegatedBeaconPayloadPublisher!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100858CBC()
{
  v23 = v0;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error publishing initial delegated location for beacon %{private,mask.hash}s: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100858FC0()
{
  v23 = v0;

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error publishing initial delegated location for beacon %{private,mask.hash}s: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008592CC()
{
  v1[15] = v0;
  v2 = type metadata accessor for UUID();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for StableIdentifier(0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008594D0, v0, 0);
}

uint64_t sub_1008594D0()
{
  v1 = v0[15];
  v0[12] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 128);
  v0[31] = v2;
  return _swift_task_switch(sub_100859500, v2, 0);
}

uint64_t sub_100859500()
{

  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_1008595EC;
  v3 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_1008595EC()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100859704, v1, 0);
}

uint64_t sub_100859704()
{
  v1 = v0[15];
  v0[33] = v0[13];
  return _swift_task_switch(sub_100859728, v1, 0);
}

uint64_t sub_100859728(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v24 = *(v4 + 16);
  if (v24)
  {
    v5 = 0;
    v21 = (v3[17] + 8);
    v22 = v3[27];
    v23 = v3[28];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      v7 = v3[30];
      v8 = v3[26];
      v9 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v10 = *(v23 + 72);
      sub_10086478C(v3[33] + v9 + v10 * v5, v7, type metadata accessor for OwnedBeaconRecord);
      v11 = *(v22 + 24);
      sub_10086478C(v7 + v11, v8, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1008647F4(v8, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_12;
      }

      sub_10086478C(v7 + v11, v3[25], type metadata accessor for StableIdentifier);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_11:
        v14 = v3[25];
        v15 = v3[16];

        (*v21)(v14, v15);
LABEL_12:
        sub_100863808(v3[30], v3[29], type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10112434C((v16 > 1), v17 + 1, 1);
        }

        v18 = v3[29];
        _swiftEmptyArrayStorage[2] = v17 + 1;
        a1 = sub_100863808(v18, _swiftEmptyArrayStorage + v9 + v17 * v10, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v6 = v3[25];
      sub_1008647F4(v3[30], type metadata accessor for OwnedBeaconRecord);
      a1 = sub_1008647F4(v6, type metadata accessor for StableIdentifier);
LABEL_4:
      if (v24 == ++v5)
      {
        goto LABEL_17;
      }
    }

    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_11;
  }

LABEL_17:
  v19 = v3[31];

  v3[34] = sub_1000257D0(_swiftEmptyArrayStorage);

  a1 = sub_100859AA4;
  a2 = v19;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100859AA4()
{

  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100859B90;
  v3 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v3, v2);
}

uint64_t sub_100859B90()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100859CA8, v1, 0);
}

uint64_t sub_100859CA8()
{
  v1 = v0[15];
  v0[36] = v0[14];
  return _swift_task_switch(sub_100859CC8, v1, 0);
}

uint64_t sub_100859CC8()
{
  v1 = v0[36];
  v2 = v1[2];
  if (v2)
  {
    v3 = 0;
    v5 = v0[20];
    v4 = v0[21];
    while (v3 < v1[2])
    {
      v6 = v0[23];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10086478C(v0[36] + v7 + v8 * v3, v6, type metadata accessor for SharedBeaconRecord);
      v9 = *(v6 + v5[16]);
      v10 = v9 == 1 || v9 == 4;
      if (v10 || (v11 = v0[23], *(v11 + v5[11]) == -1) || *(v11 + v5[12]) == -1)
      {
        sub_1008647F4(v0[23], type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100863808(v11, v0[22], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          sub_10112421C((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
        }

        v15 = v0[22];
        _swiftEmptyArrayStorage[2] = v14;
        sub_100863808(v15, _swiftEmptyArrayStorage + v7 + v13 * v8, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v1 = sub_1000309B4(_swiftEmptyArrayStorage);

    if (qword_1016954F0 == -1)
    {
      goto LABEL_18;
    }
  }

  swift_once();
LABEL_18:
  v16 = type metadata accessor for Logger();
  v0[37] = sub_1000076D4(v16, qword_10177CE28);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[34];
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = *(v20 + 16);

    *(v21 + 12) = 2048;
    *(v21 + 14) = v1[2];

    _os_log_impl(&_mh_execute_header, v17, v18, "Finding unpublished payloads for %ld owned beacons and %ld shared beacons.", v21, 0x16u);
  }

  else
  {
  }

  v29 = v0[34];
  sub_100008484(v1);
  v0[38] = v29;
  v22 = *(v29 + 16);
  v0[39] = v22;
  if (v22)
  {
    v0[40] = 0;
    v23 = v0[19];
    sub_10001F280(v29 + 32, (v0 + 2));
    sub_100852A9C(v23);
    v24 = swift_task_alloc();
    v0[41] = v24;
    *v24 = v0;
    v24[1] = sub_10085A134;
    v25 = v0[19];

    return sub_10085A850((v0 + 2), v25);
  }

  else
  {

    v28 = sub_10039D068(v0[12]);

    v27 = v0[1];

    return v27(v28);
  }
}

uint64_t sub_10085A134(uint64_t a1)
{
  v4 = *v2;
  v4[42] = v1;

  v5 = v4[19];
  v6 = v4[15];
  if (v1)
  {
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
    v7 = sub_10085A470;
  }

  else
  {
    v4[43] = a1;
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
    v7 = sub_10085A2B0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10085A2B0()
{
  sub_10039A6F8(v0[43]);
  sub_100007BAC(v0 + 2);
  v1 = v0[40] + 1;
  if (v1 == v0[39])
  {

    v7 = sub_10039D068(v0[12]);

    v2 = v0[1];

    return v2(v7);
  }

  else
  {
    v0[40] = v1;
    v4 = v0[19];
    sub_10001F280(v0[38] + 40 * v1 + 32, (v0 + 2));
    sub_100852A9C(v4);
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_10085A134;
    v6 = v0[19];

    return sub_10085A850((v0 + 2), v6);
  }
}

uint64_t sub_10085A470()
{
  v25 = v0;
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = v0[10];
    v7 = v0[11];
    sub_1000035D0(v0 + 7, v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v3 + 8))(v4, v5);
    sub_100007BAC(v0 + 7);
    v12 = sub_1000136BC(v9, v11, &v24);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v21 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error gathering owned device payloads for %{private,mask.hash}s: %{public}@.", v6, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v22);

    v14 = v0 + 2;
  }

  else
  {

    sub_100007BAC(v0 + 2);
    v14 = v0 + 7;
  }

  sub_100007BAC(v14);
  v15 = v0[40] + 1;
  if (v15 == v0[39])
  {

    v23 = sub_10039D068(v0[12]);

    v16 = v0[1];

    return v16(v23);
  }

  else
  {
    v0[40] = v15;
    v18 = v0[19];
    sub_10001F280(v0[38] + 40 * v15 + 32, (v0 + 2));
    sub_100852A9C(v18);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = sub_10085A134;
    v20 = v0[19];

    return sub_10085A850((v0 + 2), v20);
  }
}

uint64_t sub_10085A850(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = type metadata accessor for OwnedBeaconRecord(0);
  v3[29] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v3[36] = *(v6 + 64);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10085AA04, v2, 0);
}

uint64_t sub_10085AA04()
{
  v1 = v0[25];
  v0[23] = _swiftEmptyArrayStorage;
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10085AAF0;
  v5 = v0[40];
  v6 = v0[30];
  v7 = v0[26];

  return sub_10085FBFC(v6, v5, v7);
}

uint64_t sub_10085AAF0()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10085AC00, v1, 0);
}

uint64_t sub_10085AC00()
{
  v29 = v0;
  v1 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v1, 1, *(v0 + 248)) == 1)
  {
    sub_10000B3A8(v1, &unk_101696940, &unk_10138B210);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 320);
    v3 = *(v0 + 304);
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177CE28);
    (*(v5 + 16))(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 304);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v26 = v8;
      v17 = *(v12 + 8);
      v17(v10, v11);
      v18 = v17;
      v19 = sub_1000136BC(v14, v16, &v28);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v26, "No new location available for publish for : %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      v23 = *(v12 + 8);
      v23(v10, v11);
      v18 = v23;
    }

    v18(*(v0 + 320), *(v0 + 272));

    v24 = *(v0 + 8);

    return v24(_swiftEmptyArrayStorage);
  }

  else
  {
    v20 = *(v0 + 200);
    sub_100863808(v1, *(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    sub_10001F280(v20, v0 + 72);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v21 = swift_dynamicCast();
    *(v0 + 472) = v21;
    if (v21)
    {
      sub_1008647F4(*(v0 + 232), type metadata accessor for OwnedBeaconRecord);
    }

    v22 = *(*(v0 + 216) + 128);
    *(v0 + 336) = v22;

    return _swift_task_switch(sub_10085AFDC, v22, 0);
  }
}

uint64_t sub_10085AFDC()
{

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10085B0BC;
  v3 = *(v0 + 336);

  return unsafeBlocking<A>(context:_:)(v0 + 192, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10085B0BC()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_10085B1D4, v1, 0);
}

uint64_t sub_10085B1D4()
{
  v1 = v0[27];
  v0[44] = v0[24];
  return _swift_task_switch(sub_10085B1F8, v1, 0);
}

uint64_t sub_10085B1F8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 472);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v6 + 16);
  *(v0 + 360) = v8;
  *(v0 + 368) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v3, v7);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = v9 + v5;
  v11 = swift_allocObject();
  *(v0 + 376) = v11;
  *(v11 + 16) = v1;
  (*(v6 + 32))(v11 + v9, v4, v7);
  *(v11 + v10) = v2;

  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  v13 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
  *v12 = v0;
  v12[1] = sub_10085B370;

  return unsafeBlocking<A>(_:)(v0 + 152, sub_100862C80, v11, v13);
}

uint64_t sub_10085B370()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = sub_10085C36C;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_10085B498;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10085B498()
{
  v41 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 320);
  v3 = *(v0 + 264);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  sub_100016590(*(v0 + 168), *(v0 + 176));
  v6 = PublicKey.advertisement.getter(v5, v4);
  v8 = v7;
  sub_100862D44(v2, v3, v6, v7, (v0 + 16));
  sub_100016590(v6, v8);
  if (v1)
  {
    sub_100016590(v5, v4);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 360);
    v10 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177CE28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 296);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = sub_1000136BC(v21, v23, &v40);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "No owned device key for shared item: %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v25 = _swiftEmptyArrayStorage;
  }

  else
  {
    v25 = sub_100A5DF68(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100A5DF68((v26 > 1), v27 + 1, 1, v25);
    }

    sub_100016590(v5, v4);
    *(v25 + 2) = v27 + 1;
    v28 = &v25[56 * v27];
    v29 = *(v0 + 16);
    v30 = *(v0 + 32);
    v31 = *(v0 + 48);
    *(v28 + 10) = *(v0 + 64);
    *(v28 + 3) = v30;
    *(v28 + 4) = v31;
    *(v28 + 2) = v29;
    *(v0 + 184) = v25;
  }

  *(v0 + 400) = v25;
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 136) = My;
  *(v0 + 144) = sub_100045918(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v33 = sub_1000280DC((v0 + 112));
  (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 112));
  if (My)
  {
    v34 = swift_task_alloc();
    *(v0 + 408) = v34;
    *v34 = v0;
    v34[1] = sub_10085B988;

    return sub_100852C20();
  }

  else
  {

    v36 = *(v0 + 280);
    v37 = *(v0 + 184);
    sub_1008647F4(*(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    (*(v36 + 8))(*(v0 + 320), *(v0 + 272));

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_10085B988(char a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 473) = a1;

  return _swift_task_switch(sub_10085BAA0, v2, 0);
}

uint64_t sub_10085BAA0()
{
  if (*(v0 + 473) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 416) = v1;
    *v1 = v0;
    v1[1] = sub_10085BC2C;

    return daemon.getter();
  }

  else
  {

    v2 = *(v0 + 280);
    v3 = *(v0 + 184);
    sub_1008647F4(*(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    (*(v2 + 8))(*(v0 + 320), *(v0 + 272));

    v4 = *(v0 + 8);

    return v4(v3);
  }
}

uint64_t sub_10085BC2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 424) = a1;

  v3 = swift_task_alloc();
  *(v2 + 432) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100045918(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_10085BE10;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10085BE10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {
    v5 = v3[27];

    return _swift_task_switch(sub_10085C788, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[56] = v6;
    *v6 = v4;
    v6[1] = sub_10085BFD0;
    v7 = v3[40];

    return sub_1001957C4(v7);
  }
}

uint64_t sub_10085BFD0(uint64_t a1)
{
  v3 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    v4 = v3[27];

    v5 = sub_10085C890;
    v6 = v4;
  }

  else
  {
    v6 = v3[27];
    v5 = sub_10085C0F8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10085C0F8()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[40];
  v4 = v0[33];
  v5 = v0[27];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v7 = sub_1005C82E0(sub_100862D24, v6, v1);
  if (v2)
  {

    v8 = v0[40];
    v9 = v0[34];
    v10 = v0[35];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    (*(v10 + 8))(v8, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {

    sub_10039A6F8(v7);

    v13 = v0[35];
    v14 = v0[23];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    (*(v13 + 8))(v0[40], v0[34]);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_10085C36C()
{
  v26 = v0;

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  v1(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  v11 = v0[34];
  v10 = v0[35];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "No owned device key for shared item: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[50] = _swiftEmptyArrayStorage;
  My = type metadata accessor for Feature.FindMy();
  v0[17] = My;
  v0[18] = sub_100045918(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v19 = sub_1000280DC(v0 + 14);
  (*(*(My - 8) + 104))(v19, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 14);
  if (My)
  {
    v20 = swift_task_alloc();
    v0[51] = v20;
    *v20 = v0;
    v20[1] = sub_10085B988;

    return sub_100852C20();
  }

  else
  {

    v22 = v0[35];
    v23 = v0[23];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    (*(v22 + 8))(v0[40], v0[34]);

    v24 = v0[1];

    return v24(v23);
  }
}

uint64_t sub_10085C788()
{

  v1 = v0[35];
  v2 = v0[23];
  sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
  (*(v1 + 8))(v0[40], v0[34]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10085C890()
{

  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[35];
  sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10085C9A8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v2[23] = swift_task_alloc();
  v2[24] = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for BeaconStatus(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v2[30] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[32] = v4;
  v5 = *(v4 - 8);
  v2[33] = v5;
  v2[34] = *(v5 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v2[39] = swift_task_alloc();
  v6 = type metadata accessor for BeaconEstimatedLocation(0);
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[48] = v8;
  *v8 = v2;
  v8[1] = sub_10085CD38;

  return daemon.getter();
}

uint64_t sub_10085CD38(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 392) = a1;

  v3 = swift_task_alloc();
  *(v2 + 400) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100045918(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_10085CF1C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10085CF1C(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v4 = v3[21];
    v5 = sub_10085F9E4;
  }

  else
  {
    v6 = v3[21];

    v5 = sub_10085D044;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10085D044()
{
  v1 = *(*(v0 + 168) + 128);
  *(v0 + 424) = v1;
  return _swift_task_switch(sub_10085D068, v1, 0);
}

uint64_t sub_10085D068()
{

  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_10085D154;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_10085D154()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_10085D26C, v1, 0);
}

uint64_t sub_10085D26C()
{
  v1 = v0[21];
  v0[55] = v0[17];
  return _swift_task_switch(sub_10085D290, v1, 0);
}

uint64_t sub_10085D290()
{
  v1 = v0[55];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v6 = v0[44];
    v5 = v0[45];
    while (v4 < *(v1 + 16))
    {
      v3 = v0[47];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_10086478C(v0[55] + v7 + v8 * v4, v3, type metadata accessor for SharedBeaconRecord);
      v9 = *(v3 + v6[16]);
      v10 = v9 == 1 || v9 == 4;
      if (v10 || (v11 = v0[47], *(v11 + v6[11]) == -1) || *(v11 + v6[12]) == -1)
      {
        sub_1008647F4(v0[47], type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100863808(v11, v0[46], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v3 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v13 = v3 + 1;
        if (v3 >= v12 >> 1)
        {
          sub_10112421C((v12 > 1), v3 + 1, 1);
          v13 = v3 + 1;
        }

        v14 = v0[46];
        _swiftEmptyArrayStorage[2] = v13;
        sub_100863808(v14, _swiftEmptyArrayStorage + v7 + v3 * v8, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v4)
      {
        v3 = _swiftEmptyArrayStorage;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_23;
  }

LABEL_18:

  v15 = sub_1000309B4(_swiftEmptyArrayStorage);
  v0[56] = v15;

  v16 = v15[2];
  v0[57] = v16;
  if (v16)
  {
    v0[59] = 0;
    v0[60] = _swiftEmptyArrayStorage;
    v17 = v0[53];
    v0[58] = v0[52];
    v18 = v0[31];
    v19 = v0[20];
    sub_10001F280(v0[56] + 32, (v0 + 2));
    v20 = v0[5];
    v21 = v0[6];
    sub_1000035D0(v0 + 2, v20);
    (*(*(*(v21 + 8) + 8) + 32))(v20);
    v22 = type metadata accessor for Date();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v18, v19, v22);
    (*(v23 + 56))(v18, 0, 1, v22);

    return _swift_task_switch(sub_10085D7D8, v17, 0);
  }

  if (qword_1016954F0 != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177CE28);
  swift_bridgeObjectRetain_n();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[56];
  if (v27)
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = *(v28 + 16);

    *(v29 + 4) = v30;

    *(v29 + 12) = 2048;
    *(v29 + 14) = *(v3 + 16);
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v25, v26, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v29, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v31 = v0[1];

  return v31(_swiftEmptyArrayStorage);
}

uint64_t sub_10085D7D8()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 264);
  v5 = *(v0 + 256);
  v6 = *(v4 + 16);
  *(v0 + 488) = v6;
  *(v0 + 496) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = *(v4 + 80);
  *(v0 + 672) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 504) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 512) = v10;
  *(v0 + 520) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 528) = v11;
  v12 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v11 = v0;
  v11[1] = sub_10085D96C;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_100862BD4, v9, v12);
}

uint64_t sub_10085D96C()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_10085DA98, v1, 0);
}

uint64_t sub_10085DA98()
{
  v1 = v0[21];
  v0[67] = v0[18];
  return _swift_task_switch(sub_10085DABC, v1, 0);
}

uint64_t sub_10085DABC()
{
  v1 = v0[67];
  v2 = v0[58];
  v3 = v0[41];
  v35 = v0[40];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = swift_task_alloc();
  *(v9 + 16) = &off_10160A2F8;
  *(v9 + 24) = v8;
  v10 = sub_10013D74C(sub_100862BEC, v9, v1);

  sub_1012BAB18(v10, v4);

  v11 = *(v6 + 8);
  v0[68] = v11;
  v0[69] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  if ((*(v3 + 48))(v4, 1, v35) == 1)
  {
    sub_10000B3A8(v0[39], &unk_101696940, &unk_10138B210);
    v12 = v0[60];
    v13 = v0[57];
    v14 = v0[59] + 1;
    sub_100007BAC(v0 + 2);
    if (v14 == v13)
    {
      if (qword_1016954F0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177CE28);
      swift_bridgeObjectRetain_n();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[56];
      if (v18)
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        v21 = *(v19 + 16);

        *(v20 + 4) = v21;

        *(v20 + 12) = 2048;
        *(v20 + 14) = *(v12 + 16);
        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v16, v17, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v20, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v33 = v0[1];

      return v33(v12);
    }

    v25 = v0[59];
    v0[59] = v25 + 1;
    v0[60] = v12;
    v0[58] = v2;
    v26 = v0[53];
    v27 = v0[31];
    v28 = v0[20];
    sub_10001F280(v0[56] + 40 * v25 + 72, (v0 + 2));
    v29 = v0[5];
    v30 = v0[6];
    sub_1000035D0(v0 + 2, v29);
    (*(*(*(v30 + 8) + 8) + 32))(v29);
    v31 = type metadata accessor for Date();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v27, v28, v31);
    (*(v32 + 56))(v27, 0, 1, v31);
    v23 = sub_10085D7D8;
    v24 = v26;
  }

  else
  {
    v22 = v0[53];
    sub_100863808(v0[39], v0[43], type metadata accessor for BeaconEstimatedLocation);
    v23 = sub_10085DF9C;
    v24 = v22;
  }

  return _swift_task_switch(v23, v24, 0);
}