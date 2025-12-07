uint64_t sub_10001D220(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = "it.inference.signature_analysis";
      v9 = 0xD000000000000028;
    }

    else
    {
      v10 = "it.inference.logic_graph";
      v9 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v9 = 0xD00000000000002FLL;
    }

    else
    {
      v9 = 0xD00000000000002BLL;
    }

    if (v8)
    {
      v10 = "it.inference.sender_look_up";
    }

    else
    {
      v10 = "";
    }
  }

  v11 = (v10 | 0x8000000000000000);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xD000000000000028;
    }

    else
    {
      v12 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v13 = "it.inference.signature_analysis";
    }

    else
    {
      v13 = "it.inference.logic_graph";
    }
  }

  else
  {
    if (a2)
    {
      v12 = 0xD00000000000002FLL;
    }

    else
    {
      v12 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v13 = "it.inference.sender_look_up";
    }

    else
    {
      v13 = "";
    }
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_10001D350(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000067;
  v9 = a1;
  v10 = 0xED000070756B6F6FLL;
  v11 = 0x636E657265666E49;
  if (a1 == 2)
  {
    v11 = 0x4C5F7265646E6553;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  v12 = 0xD000000000000012;
  if (a1)
  {
    v8 = 0x8000000100093810;
  }

  else
  {
    v12 = 0x6E6974726F706552;
  }

  if (a1 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v9 <= 1)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x4C5F7265646E6553;
    }

    else
    {
      v15 = 0x636E657265666E49;
    }

    if (a2 == 2)
    {
      v16 = 0xED000070756B6F6FLL;
    }

    else
    {
      v16 = 0xE900000000000065;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0x6E6974726F706552;
    }

    if (a2)
    {
      v16 = 0x8000000100093810;
    }

    else
    {
      v16 = 0xE900000000000067;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  if (v14 != v16)
  {
LABEL_31:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v17 = 1;
LABEL_32:
  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_10001D4B0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v9 = 0xD000000000000010;
      v10 = 0x8000000100093850;
    }

    else
    {
      v9 = 0x62616E455F534352;
      v10 = 0xEB0000000064656CLL;
    }
  }

  else
  {
    if (a1)
    {
      v9 = 0x62616E455F534D53;
    }

    else
    {
      v9 = 1934381653;
    }

    if (v8)
    {
      v10 = 0xEB0000000064656CLL;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xD000000000000010;
      v12 = 0x8000000100093850;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v11 = 0x62616E455F534352;
      v12 = 0xEB0000000064656CLL;
      if (v9 != 0x62616E455F534352)
      {
LABEL_26:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v11 = 0x62616E455F534D53;
    }

    else
    {
      v11 = 1934381653;
    }

    if (a2)
    {
      v12 = 0xEB0000000064656CLL;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    if (v9 != v11)
    {
      goto LABEL_26;
    }
  }

  if (v10 != v12)
  {
    goto LABEL_26;
  }

  v13 = 1;
LABEL_27:
  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

uint64_t sub_10001D62C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xD000000000000010;
  v9 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = 0x62616E455F534D53;
    }

    else
    {
      if (a1 == 4)
      {
        v12 = 0x8000000100093850;
        v11 = 0xD000000000000010;
        goto LABEL_13;
      }

      v11 = 0x62616E455F534352;
    }

    v12 = 0xEB0000000064656CLL;
  }

  else
  {
    v10 = 0x8000000100093A60;
    v11 = 0xD000000000000013;
    a4 = 0xD000000000000012;
    if (v9 != 1)
    {
      v11 = 0xD000000000000012;
      v10 = 0x8000000100093A80;
    }

    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v11 = 0xD000000000000015;
      v12 = 0x8000000100093A40;
    }
  }

LABEL_13:
  if (a2 > 2u)
  {
    if (a2 == 4)
    {
      v17 = 0x8000000100093850;
    }

    else
    {
      v8 = 0x62616E455F534352;
      v17 = 0xEB0000000064656CLL;
    }

    if (a2 == 3)
    {
      v15 = 0x62616E455F534D53;
    }

    else
    {
      v15 = v8;
    }

    if (a2 == 3)
    {
      v16 = 0xEB0000000064656CLL;
    }

    else
    {
      v16 = v17;
    }

    if (v11 != v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 0x8000000100093A80;
    v14 = 0xD000000000000012;
    if (a2 == 1)
    {
      v14 = 0xD000000000000013;
      v13 = 0x8000000100093A60;
    }

    if (a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0xD000000000000015;
    }

    if (a2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0x8000000100093A40;
    }

    if (v11 != v15)
    {
      goto LABEL_36;
    }
  }

  if (v12 != v16)
  {
LABEL_36:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

  v18 = 1;
LABEL_37:
  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

Swift::Int sub_10001D7D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE900000000000067;
  v3 = 0xED000070756B6F6FLL;
  if (v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (v1)
  {
    v2 = 0x8000000100093810;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

Swift::Int sub_10001D8AC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = 0x8000000100093850;
  if (a1 != 4)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (a1 == 3)
  {
    v2 = 0xEB0000000064656CLL;
  }

  v3 = 0x8000000100093A40;
  v4 = 0x8000000100093A60;
  if (a1 != 1)
  {
    v4 = 0x8000000100093A80;
  }

  if (a1)
  {
    v3 = v4;
  }

  if (a1 <= 2u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

void sub_10001D9BC(uint64_t a1)
{
  v2 = 0xE900000000000065;
  v3 = 0xE900000000000067;
  if (*v1 == 2)
  {
    v2 = 0xED000070756B6F6FLL;
  }

  if (*v1)
  {
    v3 = 0x8000000100093810;
  }

  if (*v1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_10001DA80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE900000000000067;
  v3 = 0xED000070756B6F6FLL;
  if (v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (v1)
  {
    v2 = 0x8000000100093810;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

Swift::Int sub_10001DB54(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0x8000000100093850;
  if (a2 != 4)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (a2 == 3)
  {
    v3 = 0xEB0000000064656CLL;
  }

  v4 = 0x8000000100093A40;
  v5 = 0x8000000100093A60;
  if (a2 != 1)
  {
    v5 = 0x8000000100093A80;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 2u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

unint64_t sub_10001DC60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021084(*a1);
  *a2 = result;
  return result;
}

void sub_10001DC90(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E6974726F706552;
  v4 = 0xED000070756B6F6FLL;
  v5 = 0x4C5F7265646E6553;
  if (*v1 != 2)
  {
    v5 = 0x636E657265666E49;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100093810;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_10001DD24()
{
  v1 = 0x6E6974726F706552;
  v2 = 0x4C5F7265646E6553;
  if (*v0 != 2)
  {
    v2 = 0x636E657265666E49;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001DDB4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100021084(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001DDE8(uint64_t a1)
{
  v2 = sub_1000215E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DE24(uint64_t a1)
{
  v2 = sub_1000215E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DE60(void *a1)
{
  v2 = v1;
  v4 = sub_100002074(&qword_1000B7068, &qword_10008FCC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  sub_1000111EC(a1, a1[3]);
  sub_1000215E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[9];
  v70 = v2[8];
  v71 = v9;
  v10 = v2[3];
  v11 = v2[5];
  v66 = v2[4];
  v67 = v11;
  v12 = v2[5];
  v13 = v2[7];
  v68 = v2[6];
  v69 = v13;
  v14 = v2[1];
  v63[0] = *v2;
  v63[1] = v14;
  v15 = v2[3];
  v17 = *v2;
  v16 = v2[1];
  v64 = v2[2];
  v65 = v15;
  v18 = v2[9];
  v58 = v70;
  v59 = v18;
  v54 = v66;
  v55 = v12;
  v56 = v68;
  v57 = v8;
  v50 = v17;
  v51 = v16;
  v72 = *(v2 + 20);
  v60 = *(v2 + 20);
  v52 = v64;
  v53 = v10;
  v49 = 0;
  sub_100021850(v63, v47);
  sub_100021888();
  v19 = v73;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v47[8] = v58;
  v47[9] = v59;
  v48 = v60;
  v47[4] = v54;
  v47[5] = v55;
  v47[6] = v56;
  v47[7] = v57;
  v47[0] = v50;
  v47[1] = v51;
  v47[2] = v52;
  v47[3] = v53;
  sub_1000216E0(v47);
  if (!v19)
  {
    v20 = *(v2 + 248);
    v21 = *(v2 + 280);
    v61[6] = *(v2 + 264);
    v61[7] = v21;
    v62 = *(v2 + 37);
    v22 = *(v2 + 184);
    v23 = *(v2 + 216);
    v61[2] = *(v2 + 200);
    v61[3] = v23;
    v61[4] = *(v2 + 232);
    v61[5] = v20;
    v61[0] = *(v2 + 168);
    v61[1] = v22;
    v24 = *(v2 + 248);
    v25 = *(v2 + 280);
    v44 = *(v2 + 264);
    v45 = v25;
    v46 = *(v2 + 37);
    v26 = *(v2 + 184);
    v27 = *(v2 + 216);
    v40 = *(v2 + 200);
    v41 = v27;
    v42 = *(v2 + 232);
    v43 = v24;
    v38 = *(v2 + 168);
    v39 = v26;
    v37 = 1;
    sub_1000218DC(v61, v35);
    sub_100021914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35[6] = v44;
    v35[7] = v45;
    v36 = v46;
    v35[2] = v40;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[0] = v38;
    v35[1] = v39;
    sub_100021710(v35);
    v28 = v2[20];
    v33 = v2[19];
    v34 = v28;
    v32 = 2;
    sub_100021968();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v2[22];
    v33 = v2[21];
    v34 = v29;
    v32 = 3;
    sub_1000219BC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001E238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100002074(&qword_1000B7278, &qword_100090C10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000111EC(a1, a1[3]);
  sub_1000247D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10001E454(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = sub_100002074(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  sub_1000111EC(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v7[1];
  v17 = *v7;
  v18 = v13;
  v19 = 0;
  sub_1000242E0();
  v14 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    *&v17 = *(v7 + 4);
    v19 = 1;
    sub_100002074(&qword_1000B70F0, &qword_1000900D0);
    sub_100023150(&qword_1000B7150, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v17 = *(v7 + 5);
    v19 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v17 = *(v7 + 6);
    v19 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10001E6EC(void *a1)
{
  v3 = v1;
  v5 = sub_100002074(&qword_1000B7120, &qword_1000900E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v164[-v7 - 8];
  sub_1000111EC(a1, a1[3]);
  sub_10002280C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v173[0] = *v3;
  v173[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v173[2] = v3[2];
  v174 = *(v3 + 6);
  v165 = v11;
  v166 = v10;
  v167 = v3[2];
  v168 = *(v3 + 6);
  v175 = 0;
  sub_100023664(v173, v164);
  sub_10002369C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v19 = *(&v165 + 1);
    v20 = *(&v166 + 1);
    v21 = v167;
    v168, v12, v13, v14, v15, v16, v17, v18;
    *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
    v20, v36, v37, v38, v39, v40, v41, v42;
    v19, v43, v44, v45, v46, v47, v48, v49;
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v163 = v6;
    v51 = *(&v165 + 1);
    v52 = *(&v166 + 1);
    v53 = v167;
    v168, v12, v13, v14, v15, v16, v17, v18;
    *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;
    v52, v68, v69, v70, v71, v72, v73, v74;
    v51, v75, v76, v77, v78, v79, v80, v81;
    v82 = *(v3 + 72);
    v171[0] = *(v3 + 56);
    v171[1] = v82;
    v171[2] = *(v3 + 88);
    v172 = *(v3 + 13);
    v83 = *(v3 + 72);
    v165 = *(v3 + 56);
    v166 = v83;
    v167 = *(v3 + 88);
    v168 = *(v3 + 13);
    v175 = 1;
    sub_1000236F0(v171, v164);
    sub_100023728();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v84 = *(&v165 + 1);
    v85 = *(&v166 + 1);
    v86 = v167;
    v168, v87, v88, v89, v90, v91, v92, v93;
    *(&v86 + 1), v94, v95, v96, v97, v98, v99, v100;
    v86, v101, v102, v103, v104, v105, v106, v107;
    v85, v108, v109, v110, v111, v112, v113, v114;
    v84, v115, v116, v117, v118, v119, v120, v121;
    v122 = v3[8];
    v169[0] = v3[7];
    v169[1] = v122;
    v124 = v3[7];
    v123 = v3[8];
    v169[2] = v3[9];
    v170 = *(v3 + 20);
    v165 = v124;
    v166 = v123;
    v167 = v3[9];
    v168 = *(v3 + 20);
    v175 = 2;
    sub_10002377C(v169, v164);
    sub_1000237B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v125 = *(&v165 + 1);
    v126 = *(&v166 + 1);
    v127 = v167;
    v168, v128, v129, v130, v131, v132, v133, v134;
    *(&v127 + 1), v135, v136, v137, v138, v139, v140, v141;
    v127, v142, v143, v144, v145, v146, v147, v148;
    v126, v149, v150, v151, v152, v153, v154, v155;
    v125, v156, v157, v158, v159, v160, v161, v162;
    return (*(v163 + 8))(v8, v5);
  }
}

unint64_t sub_10001EA54(char a1)
{
  result = 0x62616E455F534D53;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
    case 14:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 12:
      result = 0xD000000000000015;
      break;
    case 5:
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      return result;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x62616E455F534352;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_10001EC94(void *a1)
{
  v3 = v1;
  v5 = sub_100002074(&qword_1000B7140, &qword_1000900F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000111EC(a1, a1[3]);
  sub_1000230FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[6];
    HIBYTE(v10) = 5;
    sub_100002074(&qword_1000B70E0, &qword_1000900C8);
    sub_100023808(&qword_1000B7148, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[13];
    HIBYTE(v10) = 15;
    sub_100002074(&qword_1000B70F0, &qword_1000900D0);
    sub_100023150(&qword_1000B7150, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[15];
    HIBYTE(v10) = 16;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[16];
    HIBYTE(v10) = 17;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001F1D0(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v24 = a5;
  v22 = a3;
  v23 = a4;
  v11 = sub_100002074(a6, a7);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  sub_1000111EC(a1, a1[3]);
  a8();
  v15 = v11;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  v16 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = v22;
  v18 = v23;
  v19 = v24;
  LOBYTE(v27) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = v17;
  v26 = 3;
  sub_100002074(&qword_1000B70F0, &qword_1000900D0);
  sub_100023150(&qword_1000B7150, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = v18;
  v26 = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = v19;
  v26 = 5;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v12 + 8))(v14, v15);
}

void sub_10001F4A8(void *a1@<X8>, void *a2@<X0>)
{
  sub_1000210D0(a2, v4);
  if (!v2)
  {
    memcpy(a1, v4, 0x170uLL);
  }
}

uint64_t sub_10001F50C()
{
  if (*v0)
  {
    return 0x69746375646F7250;
  }

  else
  {
    return 16721;
  }
}

void sub_10001F540(uint64_t a1@<X0>, _TtC13frauddefensed22TrustKitUIServerClient *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 16721 && a2 == 0xE200000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x69746375646F7250 && a2 == 0xEA00000000006E6FLL)
  {
    0xEA00000000006E6FLL, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_10001F628(uint64_t a1)
{
  v2 = sub_1000247D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F664(uint64_t a1)
{
  v2 = sub_1000247D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001F6A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100021D38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_10001F6F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021F1C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001F720@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100021F1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001F754(uint64_t a1)
{
  v2 = sub_100024190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F790(uint64_t a1)
{
  v2 = sub_100024190();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10001F840@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021F68(*a1);
  *a2 = result;
  return result;
}

void sub_10001F870(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1934381653;
  v4 = 0x8000000100093850;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x62616E455F534352;
    v4 = 0xEB0000000064656CLL;
  }

  if (*v1)
  {
    v3 = 0x62616E455F534D53;
    v2 = 0xEB0000000064656CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10001F8E4()
{
  v1 = 1934381653;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x62616E455F534352;
  }

  if (*v0)
  {
    v1 = 0x62616E455F534D53;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001F954@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100021F68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001F97C(uint64_t a1)
{
  v2 = sub_100024238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F9B8(uint64_t a1)
{
  v2 = sub_100024238();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001FA38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  v3 = 0x8000000100093850;
  if (v1 != 2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (v1)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_10001FAF0(uint64_t a1)
{
  v2 = 0xE400000000000000;
  v3 = 0x8000000100093850;
  if (*v1 != 2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (*v1)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_10001FB94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  v3 = 0x8000000100093850;
  if (v1 != 2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (v1)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10001FC48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100022364(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001FC78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100022364(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001FCA0(uint64_t a1)
{
  v2 = sub_10002428C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001FCDC(uint64_t a1)
{
  v2 = sub_10002428C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001FD5C@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_100021FB4(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    result = *&v11;
    *(a6 + 32) = v11;
    *(a6 + 48) = v12;
  }

  return result;
}

uint64_t sub_10001FDBC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x4E5F74726F706552;
  v10 = 0xEF6B6E754A5F746FLL;
  if (v8 != 1)
  {
    v9 = 0x4A5F74726F706552;
    v10 = 0xEB000000006B6E75;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x555F74726F706552;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEE006E776F6E6B6ELL;
  }

  v13 = 0x4E5F74726F706552;
  v14 = 0xEF6B6E754A5F746FLL;
  if (*a2 != 1)
  {
    v13 = 0x4A5F74726F706552;
    v14 = 0xEB000000006B6E75;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x555F74726F706552;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEE006E776F6E6B6ELL;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_10001FEF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEF6B6E754A5F746FLL;
  if (v1 != 1)
  {
    v2 = 0xEB000000006B6E75;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10001FFB4(uint64_t a1)
{
  v2 = 0xEF6B6E754A5F746FLL;
  if (*v1 != 1)
  {
    v2 = 0xEB000000006B6E75;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100020064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEF6B6E754A5F746FLL;
  if (v1 != 1)
  {
    v2 = 0xEB000000006B6E75;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

unint64_t sub_100020124@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000223B0(*a1);
  *a2 = result;
  return result;
}

void sub_100020154(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E776F6E6B6ELL;
  v4 = 0xEF6B6E754A5F746FLL;
  v5 = 0x4E5F74726F706552;
  if (v2 != 1)
  {
    v5 = 0x4A5F74726F706552;
    v4 = 0xEB000000006B6E75;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x555F74726F706552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000201D4()
{
  v1 = 0x4E5F74726F706552;
  if (*v0 != 1)
  {
    v1 = 0x4A5F74726F706552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x555F74726F706552;
  }
}

unint64_t sub_100020250@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000223B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100020284(uint64_t a1)
{
  v2 = sub_10002280C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000202C0(uint64_t a1)
{
  v2 = sub_10002280C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000202FC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000223FC(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10002038C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001EA54(*a1);
  v5 = v4;
  v6 = sub_10001EA54(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100020414()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001EA54(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100020478(uint64_t a1)
{
  sub_10001EA54(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_1000204CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001EA54(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

unint64_t sub_10002052C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002295C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002055C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001EA54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000205A4@<X0>(uint64_t a1@<X0>, _TtC13frauddefensed22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002295C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000205D8(uint64_t a1)
{
  v2 = sub_1000230FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020614(uint64_t a1)
{
  v2 = sub_1000230FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100020650@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000229B0(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1000206D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000231C0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100020704@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000231C0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002072C(uint64_t a1)
{
  v2 = sub_10002320C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020768(uint64_t a1)
{
  v2 = sub_10002320C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100020870(uint64_t a1)
{
  v2 = 0xEB0000000064656CLL;
  v3 = *v1;
  v4 = 0x8000000100093850;
  if (v3 != 4)
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v3 != 3)
  {
    v2 = v4;
  }

  v5 = 0x8000000100093A40;
  v6 = 0x8000000100093A60;
  if (v3 != 1)
  {
    v6 = 0x8000000100093A80;
  }

  if (*v1)
  {
    v5 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v2;
  }

  String.hash(into:)();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

unint64_t sub_10002097C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023260(*a1);
  *a2 = result;
  return result;
}

void sub_1000209B0(unint64_t *a1@<X8>)
{
  v2 = 0x62616E455F534352;
  v3 = *v1;
  v4 = 0x8000000100093850;
  if (v3 == 4)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v3 == 3)
  {
    v2 = 0x62616E455F534D53;
    v4 = 0xEB0000000064656CLL;
  }

  v5 = 0xD000000000000015;
  v6 = 0x8000000100093A60;
  v7 = 0xD000000000000012;
  if (v3 == 1)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x8000000100093A80;
  }

  if (*v1)
  {
    v5 = v7;
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000100093A40;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_100020A74()
{
  v1 = 0x62616E455F534352;
  v2 = *v0;
  if (v2 == 4)
  {
    v1 = 0xD000000000000010;
  }

  if (v2 == 3)
  {
    v1 = 0x62616E455F534D53;
  }

  v3 = 0xD000000000000012;
  if (v2 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100020B30@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100023260(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100020B64(uint64_t a1)
{
  v2 = sub_100023610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020BA0(uint64_t a1)
{
  v2 = sub_100023610();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100020C20(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  sub_1000232AC(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8 & 1;
    *(a6 + 1) = BYTE1(v8) & 1;
    *(a6 + 2) = BYTE2(v8) & 1;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
    *(a6 + 24) = v11;
  }
}

uint64_t sub_100020CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (v7[1])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *v7;
  if (v7[2])
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  return sub_10001F1D0(a1, v9 | v10, *(v7 + 1), *(v7 + 2), *(v7 + 3), a4, a5, a6, a7);
}

uint64_t sub_100020D24()
{
  memcpy(__dst, (v0 + 16), 0x170uLL);
  sub_100021820(__dst);
  v1 = OBJC_IVAR____TtC13frauddefensed19ConfigurationsAsset_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationsAsset(uint64_t a1)
{
  result = qword_1000B6FA0;
  if (!qword_1000B6FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100020E28(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100020ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_100020F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100020FC4()
{
  result = qword_1000B7030;
  if (!qword_1000B7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7030);
  }

  return result;
}

uint64_t sub_100021018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100057F68(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  if (*(a3 + 16) && (v4 = sub_100057F68(0x6C61626F6C67, 0xE600000000000000), (v6 & 1) != 0))
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100021084(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADC58, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1000210D0(void *a1@<X0>, void *a2@<X8>)
{
  v67 = sub_100002074(&qword_1000B7038, &qword_10008FCB8);
  v5 = *(v67 - 8);
  __chkstk_darwin(v67);
  v7 = v14 - v6;
  sub_1000111EC(a1, a1[3]);
  sub_1000215E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003558(a1);
  }

  else
  {
    v23 = a2;
    v54 = 0;
    sub_100021638();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66[8] = v63;
    v66[9] = v64;
    *&v66[10] = v65;
    v66[4] = v59;
    v66[5] = v60;
    v66[7] = v62;
    v66[6] = v61;
    v66[0] = v55;
    v66[1] = v56;
    v66[3] = v58;
    v66[2] = v57;
    v44 = 1;
    sub_10002168C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(&v66[16] + 8) = v51;
    *(&v66[17] + 8) = v52;
    *(&v66[15] + 8) = v50;
    *(&v66[11] + 8) = v46;
    *(&v66[12] + 8) = v47;
    *(&v66[13] + 8) = v48;
    *(&v66[14] + 8) = v49;
    *(&v66[18] + 1) = v53;
    *(&v66[10] + 8) = v45;
    LOBYTE(v24[0]) = 2;
    sub_100021740();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = BYTE1(v25[0]);
    v20 = LOBYTE(v25[0]);
    v18 = BYTE2(v25[0]);
    v8 = v25[1];
    v21 = v25[2];
    v22 = v25[3];
    v38 = 3;
    sub_100021794();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v67);
    v14[3] = v39;
    v16 = HIBYTE(v39);
    v9 = v40;
    v67 = v41;
    v10 = v42;
    v17 = v8;
    v15 = v43;
    memcpy(v24, v66, 0x130uLL);
    v11 = v19;
    LOBYTE(v24[38]) = v20;
    BYTE1(v24[38]) = v19;
    v12 = v18;
    BYTE2(v24[38]) = v18;
    v24[39] = v8;
    v24[40] = v21;
    v24[41] = v22;
    LOBYTE(v8) = v39;
    LOWORD(v24[42]) = v39;
    BYTE2(v24[42]) = v40;
    v24[43] = v41;
    v24[44] = v42;
    v13 = v43;
    v24[45] = v43;
    sub_1000217E8(v24, v25);
    sub_100003558(a1);
    memcpy(v25, v66, sizeof(v25));
    v26 = v20;
    v27 = v11;
    v28 = v12;
    v29 = v17;
    v30 = v21;
    v31 = v22;
    v32 = v8;
    v33 = v16;
    v34 = v9;
    v35 = v67;
    v36 = v10;
    v37 = v13;
    sub_100021820(v25);
    memcpy(v23, v24, 0x170uLL);
  }
}

unint64_t sub_1000215E4()
{
  result = qword_1000B7040;
  if (!qword_1000B7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7040);
  }

  return result;
}

unint64_t sub_100021638()
{
  result = qword_1000B7048;
  if (!qword_1000B7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7048);
  }

  return result;
}

unint64_t sub_10002168C()
{
  result = qword_1000B7050;
  if (!qword_1000B7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7050);
  }

  return result;
}

unint64_t sub_100021740()
{
  result = qword_1000B7058;
  if (!qword_1000B7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7058);
  }

  return result;
}

unint64_t sub_100021794()
{
  result = qword_1000B7060;
  if (!qword_1000B7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7060);
  }

  return result;
}

unint64_t sub_100021888()
{
  result = qword_1000B7070;
  if (!qword_1000B7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7070);
  }

  return result;
}

unint64_t sub_100021914()
{
  result = qword_1000B7078;
  if (!qword_1000B7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7078);
  }

  return result;
}

unint64_t sub_100021968()
{
  result = qword_1000B7080;
  if (!qword_1000B7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7080);
  }

  return result;
}

unint64_t sub_1000219BC()
{
  result = qword_1000B7088;
  if (!qword_1000B7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7088);
  }

  return result;
}

__n128 sub_100021A48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100021A7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100021AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100021B34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100021B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100021BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100021C34()
{
  result = qword_1000B7090;
  if (!qword_1000B7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7090);
  }

  return result;
}

unint64_t sub_100021C8C()
{
  result = qword_1000B7098;
  if (!qword_1000B7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7098);
  }

  return result;
}

unint64_t sub_100021CE4()
{
  result = qword_1000B70A0;
  if (!qword_1000B70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70A0);
  }

  return result;
}

uint64_t sub_100021D38(void *a1)
{
  v3 = sub_100002074(&qword_1000B7268, &qword_100090C08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000111EC(a1, a1[3]);
  sub_1000247D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003558(a1);
  return v7;
}

unint64_t sub_100021F1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADCD8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100021F68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADD58, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_100021FB4(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _TtC13frauddefensed22TrustKitUIServerClient **a6@<X8>)
{
  v66 = sub_100002074(a2, a3);
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v60 - v11;
  v13 = a1[3];
  v67 = a1;
  sub_1000111EC(a1, v13);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    sub_100003558(v67);
  }

  else
  {
    v14 = v10;
    v65 = a6;
    v72 = 0;
    sub_1000241E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v68;
    v16 = v70;
    v63 = v71;
    v64 = v69;
    sub_100002074(&qword_1000B70F0, &qword_1000900D0);
    v72 = 1;
    sub_100023150(&qword_1000B70F8, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v61 = v16;
    v62 = v15;
    v17 = v68;
    v72 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v68;
    v72 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v12, v66);
    v19 = v68;
    v20 = v64;

    v21 = v63;

    sub_100003558(v67);
    v19, v22, v23, v24, v25, v26, v27, v28;
    v18, v29, v30, v31, v32, v33, v34, v35;
    v17, v36, v37, v38, v39, v40, v41, v42;
    v21, v43, v44, v45, v46, v47, v48, v49;
    v20, v50, v51, v52, v53, v54, v55, v56;
    v57 = v18;
    v58 = v65;
    v59 = v61;
    *v65 = v62;
    v58[1] = v20;
    v58[2] = v59;
    v58[3] = v21;
    v58[4] = v17;
    v58[5] = v57;
    v58[6] = v19;
  }
}

unint64_t sub_100022364(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADDD8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000223B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADE58, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1000223FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = sub_100002074(&qword_1000B70A8, &qword_1000900B8);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v24 - v6;
  sub_1000111EC(a1, a1[3]);
  sub_10002280C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003558(a1);
  }

  else
  {
    v8 = v5;
    v43 = a2;
    LOBYTE(v45) = 0;
    sub_100022860();
    v9 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v58;
    v41 = v59;
    v42 = v57;
    v39 = v60;
    v40 = *(&v59 + 1);
    v37 = v56;
    v38 = v61;
    LOBYTE(v45) = 1;
    sub_1000228B4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v56;
    v33 = v10;
    v11 = v57;
    v31 = v58;
    v35 = v59;
    v36 = v60;
    v34 = v61;
    v79 = 2;
    sub_100022908();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v7, v9);
    v28 = v76;
    v29 = *(&v75 + 1);
    v26 = v77;
    v27 = *(&v76 + 1);
    v24 = v78;
    v25 = *(&v77 + 1);
    v12 = v38;
    v44 = v75;
    *&v45 = v37;
    v14 = v41;
    v13 = v42;
    *(&v45 + 1) = v42;
    *&v46 = v33;
    v16 = v39;
    v15 = v40;
    *(&v46 + 1) = v41;
    *&v47 = v40;
    *(&v47 + 1) = v39;
    *&v48 = v38;
    *(&v48 + 1) = v32;
    v49 = __PAIR128__(v31, v11);
    v30 = v11;
    v17 = v34;
    v50 = v35;
    *&v51 = v36;
    *(&v51 + 1) = v34;
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v55 = v78;
    sub_100021850(&v45, &v56);
    sub_100003558(a1);
    v56 = v37;
    v57 = v13;
    v58 = v33;
    *&v59 = v14;
    *(&v59 + 1) = v15;
    v60 = v16;
    v61 = v12;
    v62 = v32;
    v63 = v30;
    v64 = v31;
    v65 = v35;
    v66 = v36;
    v67 = v17;
    v68 = v44;
    v69 = v29;
    v70 = v28;
    v71 = v27;
    v72 = v26;
    v73 = v25;
    v74 = v24;
    sub_1000216E0(&v56);
    v18 = v54;
    v19 = v43;
    *(v43 + 128) = v53;
    *(v19 + 144) = v18;
    *(v19 + 160) = v55;
    v20 = v50;
    *(v19 + 64) = v49;
    *(v19 + 80) = v20;
    v21 = v52;
    *(v19 + 96) = v51;
    *(v19 + 112) = v21;
    v22 = v46;
    *v19 = v45;
    *(v19 + 16) = v22;
    v23 = v48;
    *(v19 + 32) = v47;
    *(v19 + 48) = v23;
  }
}

unint64_t sub_10002280C()
{
  result = qword_1000B70B0;
  if (!qword_1000B70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70B0);
  }

  return result;
}

unint64_t sub_100022860()
{
  result = qword_1000B70B8;
  if (!qword_1000B70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70B8);
  }

  return result;
}

unint64_t sub_1000228B4()
{
  result = qword_1000B70C0;
  if (!qword_1000B70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70C0);
  }

  return result;
}

unint64_t sub_100022908()
{
  result = qword_1000B70C8;
  if (!qword_1000B70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70C8);
  }

  return result;
}

unint64_t sub_10002295C(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v3;
  }
}

void sub_1000229B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = sub_100002074(&qword_1000B70D0, &qword_1000900C0);
  v5 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v37 - v6;
  sub_1000111EC(a1, a1[3]);
  sub_1000230FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003558(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v57[0]) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v57[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    LOBYTE(v57[0]) = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v14;
    LOBYTE(v57[0]) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    LOBYTE(v57[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    sub_100002074(&qword_1000B70E0, &qword_1000900C8);
    LOBYTE(v48) = 5;
    sub_100023808(&qword_1000B70E8, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = v57[0];
    LOBYTE(v57[0]) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    LOBYTE(v57[0]) = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    LOBYTE(v57[0]) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    LOBYTE(v57[0]) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    LOBYTE(v57[0]) = 10;
    KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v27;
    LOBYTE(v57[0]) = 11;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v57[0]) = 12;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v57[0]) = 13;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v57[0]) = 14;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = sub_100002074(&qword_1000B70F0, &qword_1000900D0);
    LOBYTE(v48) = 15;
    v40 = sub_100023150(&qword_1000B70F8, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
    v41 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v57[0];
    LOBYTE(v48) = 16;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v57[0];
    v65 = 17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = 0;
    LOBYTE(v29) = v43 & 1;
    v43 = v42 & 1;
    v44 &= 1u;
    v30 = v44;
    (*(v8 + 8))(v7, v69);
    v69 = v66;
    *&v48 = v10;
    *(&v48 + 1) = v12;
    v31 = v46;
    *&v49 = v13;
    *(&v49 + 1) = v47;
    *&v50 = v16;
    *(&v50 + 1) = v18;
    *&v51 = v46;
    *(&v51 + 1) = v20;
    *&v52 = v22;
    *(&v52 + 1) = v24;
    *&v53 = v26;
    *(&v53 + 1) = v45;
    *&v54 = v28;
    *(&v54 + 1) = v39;
    LOBYTE(v55) = v30;
    BYTE1(v55) = v29;
    LOBYTE(v8) = v43;
    BYTE2(v55) = v43;
    BYTE7(v55) = v68;
    *(&v55 + 3) = v67;
    v32 = v38;
    *(&v55 + 1) = v38;
    v56 = v66;
    sub_1000218DC(&v48, v57);
    sub_100003558(a1);
    v57[0] = v10;
    v57[1] = v12;
    v57[2] = v13;
    v57[3] = v47;
    v57[4] = v16;
    v57[5] = v18;
    v57[6] = v31;
    v57[7] = v20;
    v57[8] = v22;
    v57[9] = v24;
    v57[10] = v26;
    v57[11] = v45;
    v57[12] = v28;
    v57[13] = v39;
    v58 = v44;
    v59 = v29;
    v60 = v8;
    v62 = v68;
    v61 = v67;
    v63 = v32;
    v64 = v69;
    sub_100021710(v57);
    v33 = v55;
    *(a2 + 96) = v54;
    *(a2 + 112) = v33;
    *(a2 + 128) = v56;
    v34 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v34;
    v35 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v35;
    v36 = v49;
    *a2 = v48;
    *(a2 + 16) = v36;
  }
}

unint64_t sub_1000230FC()
{
  result = qword_1000B70D8;
  if (!qword_1000B70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B70D8);
  }

  return result;
}

uint64_t sub_100023150(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003400(&qword_1000B70F0, &qword_1000900D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000231C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE090, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002320C()
{
  result = qword_1000B7108;
  if (!qword_1000B7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7108);
  }

  return result;
}

unint64_t sub_100023260(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE140, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void sub_1000232AC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v12 = sub_100002074(a2, a3);
  v7 = *(v12 - 8);
  __chkstk_darwin(v12);
  v9 = v11 - v8;
  sub_1000111EC(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v14) = 1;
  v11[3] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v14) = 2;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100002074(&qword_1000B70F0, &qword_1000900D0);
  v13 = 3;
  sub_100023150(&qword_1000B70F8, &protocol witness table for String, &protocol witness table for Bool, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = 5;
  v10 = v12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v7 + 8))(v9, v10);
  sub_100003558(a1);
}

unint64_t sub_100023610()
{
  result = qword_1000B7118;
  if (!qword_1000B7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7118);
  }

  return result;
}

unint64_t sub_10002369C()
{
  result = qword_1000B7128;
  if (!qword_1000B7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7128);
  }

  return result;
}

unint64_t sub_100023728()
{
  result = qword_1000B7130;
  if (!qword_1000B7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7130);
  }

  return result;
}

unint64_t sub_1000237B4()
{
  result = qword_1000B7138;
  if (!qword_1000B7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7138);
  }

  return result;
}

uint64_t sub_100023808(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003400(&qword_1000B70E0, &qword_1000900C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKSignature.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKSignature.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationsAsset.ReportingConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationsAsset.ReportingConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100023C88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100023CCC(uint64_t a1, int a2)
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

uint64_t sub_100023D14(uint64_t result, int a2, int a3)
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

unint64_t sub_100023D74()
{
  result = qword_1000B7168;
  if (!qword_1000B7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7168);
  }

  return result;
}

unint64_t sub_100023DCC()
{
  result = qword_1000B7170;
  if (!qword_1000B7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7170);
  }

  return result;
}

unint64_t sub_100023E24()
{
  result = qword_1000B7178;
  if (!qword_1000B7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7178);
  }

  return result;
}

unint64_t sub_100023E7C()
{
  result = qword_1000B7180;
  if (!qword_1000B7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7180);
  }

  return result;
}

unint64_t sub_100023ED4()
{
  result = qword_1000B7188;
  if (!qword_1000B7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7188);
  }

  return result;
}

unint64_t sub_100023F2C()
{
  result = qword_1000B7190;
  if (!qword_1000B7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7190);
  }

  return result;
}

unint64_t sub_100023F84()
{
  result = qword_1000B7198;
  if (!qword_1000B7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7198);
  }

  return result;
}

unint64_t sub_100023FDC()
{
  result = qword_1000B71A0;
  if (!qword_1000B71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71A0);
  }

  return result;
}

unint64_t sub_100024034()
{
  result = qword_1000B71A8;
  if (!qword_1000B71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71A8);
  }

  return result;
}

unint64_t sub_10002408C()
{
  result = qword_1000B71B0;
  if (!qword_1000B71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71B0);
  }

  return result;
}

unint64_t sub_1000240E4()
{
  result = qword_1000B71B8;
  if (!qword_1000B71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71B8);
  }

  return result;
}

unint64_t sub_10002413C()
{
  result = qword_1000B71C0;
  if (!qword_1000B71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71C0);
  }

  return result;
}

unint64_t sub_100024190()
{
  result = qword_1000B71D0;
  if (!qword_1000B71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71D0);
  }

  return result;
}

unint64_t sub_1000241E4()
{
  result = qword_1000B71D8;
  if (!qword_1000B71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71D8);
  }

  return result;
}

unint64_t sub_100024238()
{
  result = qword_1000B71E8;
  if (!qword_1000B71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71E8);
  }

  return result;
}

unint64_t sub_10002428C()
{
  result = qword_1000B71F8;
  if (!qword_1000B71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71F8);
  }

  return result;
}

unint64_t sub_1000242E0()
{
  result = qword_1000B7208;
  if (!qword_1000B7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalyticsManager.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DaemonAnalyticsManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000244C0()
{
  result = qword_1000B7220;
  if (!qword_1000B7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7220);
  }

  return result;
}

unint64_t sub_100024518()
{
  result = qword_1000B7228;
  if (!qword_1000B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7228);
  }

  return result;
}

unint64_t sub_100024570()
{
  result = qword_1000B7230;
  if (!qword_1000B7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7230);
  }

  return result;
}

unint64_t sub_1000245C8()
{
  result = qword_1000B7238;
  if (!qword_1000B7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7238);
  }

  return result;
}

unint64_t sub_100024620()
{
  result = qword_1000B7240;
  if (!qword_1000B7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7240);
  }

  return result;
}

unint64_t sub_100024678()
{
  result = qword_1000B7248;
  if (!qword_1000B7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7248);
  }

  return result;
}

unint64_t sub_1000246D0()
{
  result = qword_1000B7250;
  if (!qword_1000B7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7250);
  }

  return result;
}

unint64_t sub_100024728()
{
  result = qword_1000B7258;
  if (!qword_1000B7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7258);
  }

  return result;
}

unint64_t sub_100024780()
{
  result = qword_1000B7260;
  if (!qword_1000B7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7260);
  }

  return result;
}

unint64_t sub_1000247D4()
{
  result = qword_1000B7270;
  if (!qword_1000B7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7270);
  }

  return result;
}

unint64_t sub_10002483C()
{
  result = qword_1000B7280;
  if (!qword_1000B7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7280);
  }

  return result;
}

unint64_t sub_100024894()
{
  result = qword_1000B7288;
  if (!qword_1000B7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7288);
  }

  return result;
}

unint64_t sub_1000248EC()
{
  result = qword_1000B7290;
  if (!qword_1000B7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7290);
  }

  return result;
}

uint64_t sub_1000249A0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6B6E754A746F6ELL;
  if (v8 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1802401130;
  }

  if (v8)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = 0x6B6E754A746F6ELL;
  if (*a2 != 1)
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1802401130;
  }

  if (*a2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

Swift::Int sub_100024A9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100024B38(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100024BC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

unint64_t sub_100024C58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100025FCC(*a1);
  *a2 = result;
  return result;
}

void sub_100024C88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x6B6E754A746F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1802401130;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100024CE0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x4374726543616162;
  }

  else
  {
    v9 = 0x74726F706572;
  }

  if (v8)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xEC0000006E696168;
  }

  if (*a2)
  {
    v11 = 0x4374726543616162;
  }

  else
  {
    v11 = 0x74726F706572;
  }

  if (*a2)
  {
    v12 = 0xEC0000006E696168;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_100024D8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEC0000006E696168;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100024E14(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEC0000006E696168;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100024E88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEC0000006E696168;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100024F0C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000AE258, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_100024F6C(uint64_t *a1@<X8>)
{
  v2 = 0x74726F706572;
  if (*v1)
  {
    v2 = 0x4374726543616162;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006E696168;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100024FB0()
{
  if (*v0)
  {
    return 0x4374726543616162;
  }

  else
  {
    return 0x74726F706572;
  }
}

void sub_100024FF0(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000AE258, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_100025054(uint64_t a1)
{
  v2 = sub_100025EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025090(uint64_t a1)
{
  v2 = sub_100025EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000250CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v8 = sub_100002074(&qword_1000B7360, &qword_100090F38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - v10;
  sub_1000111EC(a1, a1[3]);
  sub_100025EBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v62) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v57 = v8;
  v58 = v9;
  v61 = &_swiftEmptyDictionarySingleton;
  sub_1000254A0(v59, &v61, v59, a3, a4);
  if (qword_1000B6670 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003448(v13, qword_1000B9328);
  v14 = static os_log_type_t.debug.getter();
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);
  v63, v15, v16, v17, v18, v19, v20, v21;
  v62 = 0xD00000000000002ELL;
  v63 = 0x8000000100095190;
  v22 = v61;
  v23._countAndFlagsBits = Dictionary.description.getter();
  object = v23._object;
  String.append(_:)(v23);
  object, v25, v26, v27, v28, v29, v30, v31;
  v32._countAndFlagsBits = 32032;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33 = v63;
  sub_10005E11C(v14, v62, v63, 0xD000000000000054, 0x80000001000951C0, 220);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22, v43, v44, v45, v46, v47, v48, v49;
  v62 = 0;
  v50 = [v41 dataWithJSONObject:isa options:1 error:&v62];

  v51 = v62;
  if (v50)
  {
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v62 = v52;
    v63 = v54;
    v60 = 0;
    sub_100025F10();
    v55 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v58 + 8))(v11, v55);
    return sub_100005A28(v52, v54);
  }

  else
  {
    v56 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v58 + 8))(v11, v57);
  }
}

uint64_t sub_1000254A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_100025F64(v23))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_100005BBC(*(a1 + 56) + 32 * v17, v24);
    v23[0] = v19;
    v23[1] = v20;

    sub_1000255CC(v19, v20, v24, a2, a3, a4, a5);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1000255CC(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100005BBC(a3, &v86);
  if (swift_dynamicCast())
  {
    v13 = v88[0];
    v14 = v88[1];

    v15 = Data.base64EncodedString(options:)(0);
    v87 = &type metadata for String;
    v86 = v15;
    sub_100056920(&v86, a1, a2);
    sub_100005A28(v13, v14);
    return;
  }

  sub_100005BBC(a3, &v86);
  sub_100002074(&qword_1000B6A48, &unk_100093170);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100005BBC(a3, &v86);
    v21 = sub_100002074(&qword_1000B7380, &unk_100090F50);
    if (swift_dynamicCast())
    {
      v83 = a2;
      v85 = a1;
      v29 = *(v88[0] + 16);
      v82 = v88[0];
      if (v29)
      {
        v30 = (v88[0] + 32);
        v31 = &_swiftEmptyArrayStorage;
        do
        {
          v86._countAndFlagsBits = &_swiftEmptyDictionarySingleton;
          v32 = *v30;

          sub_1000254A0(v33, &v86, a5, a6, a7);
          v32, v34, v35, v36, v37, v38, v39, v40;
          countAndFlagsBits = v86._countAndFlagsBits;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1000496FC(0, (*v31->endpoint + 1), 1, v31, v25, v26, v27, v28);
          }

          v43 = *v31->endpoint;
          v42 = *v31->connection;
          if (v43 >= v42 >> 1)
          {
            v31 = sub_1000496FC((v42 > 1), (v43 + 1), 1, v31, v25, v26, v27, v28);
          }

          *v31->endpoint = v43 + 1;
          *&v31->$__lazy_storage_$_interface[8 * v43] = countAndFlagsBits;
          ++v30;
          --v29;
        }

        while (v29);
      }

      else
      {
        v31 = &_swiftEmptyArrayStorage;
      }

      v82, v22, v23, v24, v25, v26, v27, v28;
      v87 = v21;
      v86._countAndFlagsBits = v31;

      v80 = v85;
      v81 = v83;
      goto LABEL_34;
    }

    sub_100005BBC(a3, &v86);
    v44 = sub_100002074(&qword_1000B7388, &qword_100091E50);
    if (swift_dynamicCast())
    {
      v45 = v88[0];
      v88[0] = &_swiftEmptyDictionarySingleton;
      sub_1000254A0(v45, v88, a5, a6, a7);
      v45, v46, v47, v48, v49, v50, v51, v52;
      v87 = v44;
      v86._countAndFlagsBits = v88[0];
    }

    else
    {
      sub_100005BBC(a3, &v86);
      sub_100002074(&qword_1000B7390, &unk_100090F60);
      if (swift_dynamicCast())
      {
        v84 = a2;
        v67 = *(v88[0] + 16);
        if (v67)
        {
          v68 = v88[0];
          v69 = (v88[0] + 40);
          v70 = &_swiftEmptyArrayStorage;
          do
          {
            v71 = *(v69 - 1);
            v72 = *v69;
            sub_100005A7C(v71, *v69);
            v73 = Data.base64EncodedString(options:)(0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_1000495F0(0, *v70->endpoint + 1, 1, v70, v74, v75, v76, v77);
            }

            v79 = *v70->endpoint;
            v78 = *v70->connection;
            if (v79 >= v78 >> 1)
            {
              v70 = sub_1000495F0((v78 > 1), v79 + 1, 1, v70, v74, v75, v76, v77);
            }

            v69 += 2;
            sub_100005A28(v71, v72);
            *v70->endpoint = v79 + 1;
            *&v70->$__lazy_storage_$_interface[16 * v79] = v73;
            --v67;
          }

          while (v67);
        }

        else
        {
          v68 = v88[0];
          v70 = &_swiftEmptyArrayStorage;
        }

        v68, v60, v61, v62, v63, v64, v65, v66;
        v87 = sub_100002074(&qword_1000B6908, &qword_10008F700);
        v86._countAndFlagsBits = v70;

        v80 = a1;
        v81 = v84;
        goto LABEL_34;
      }

      sub_100005BBC(a3, &v86);
    }

LABEL_33:
    v80 = a1;
    v81 = a2;
LABEL_34:
    sub_100056920(&v86, v80, v81);
    return;
  }

  v16 = v88[0];
  v17 = *(v88[0] + 16);
  if (!v17)
  {

    v16, v53, v54, v55, v56, v57, v58, v59;
    v18 = &_swiftEmptyArrayStorage;
LABEL_19:
    v87 = sub_100002074(&qword_1000B6908, &qword_10008F700);
    v86._countAndFlagsBits = v18;
    goto LABEL_33;
  }

  v18 = sub_100049DCC(v17, 0);
  v19 = sub_100087D9C(&v86, v18->$__lazy_storage_$_interface, v17, v16);
  v20 = v86._countAndFlagsBits;

  sub_10000BAD4(v20);
  if (v19 == v17)
  {
    goto LABEL_19;
  }

  __break(1u);
}

void *sub_100025AE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100026018(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100025B38()
{

  v1 = OBJC_IVAR____TtC13frauddefensed15ReportOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportOperation(uint64_t a1)
{
  result = qword_1000B72C8;
  if (!qword_1000B72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025C30(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

__n128 sub_100025CCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100025CE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100025D28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100025D88(uint64_t a1, __int128 *a2)
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

uint64_t sub_100025DAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100025DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100025E68()
{
  result = qword_1000B7358;
  if (!qword_1000B7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7358);
  }

  return result;
}

unint64_t sub_100025EBC()
{
  result = qword_1000B7368;
  if (!qword_1000B7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7368);
  }

  return result;
}

unint64_t sub_100025F10()
{
  result = qword_1000B7370;
  if (!qword_1000B7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7370);
  }

  return result;
}

uint64_t sub_100025F64(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7378, &unk_100090F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100025FCC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE1F0, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_100026018(void *a1)
{
  v3 = sub_100002074(&qword_1000B7398, &qword_100090F70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_1000111EC(a1, a1[3]);
  sub_100025EBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003558(a1);
  }

  else
  {
    LOBYTE(v28) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v27) = 0;
    sub_100026314();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v28;
    v19 = v29;
    v24 = objc_opt_self();
    v25 = v19;
    v26 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v27 = 0;
    v21 = [v24 JSONObjectWithData:isa options:1 error:&v27];

    v22 = v27;
    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_100005A28(v26, v25);
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      sub_100002074(&qword_1000B7388, &qword_100091E50);
      swift_dynamicCast();
      v7 = v27;
      sub_100003558(a1);
    }

    else
    {
      v7 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100005A28(v26, v25);
      (*(v4 + 8))(v6, v3);
      sub_100003558(a1);
      v10, v11, v12, v13, v14, v15, v16, v17;
    }
  }

  return v7;
}

unint64_t sub_100026314()
{
  result = qword_1000B73A0;
  if (!qword_1000B73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B73A0);
  }

  return result;
}

__n128 sub_100026378(uint64_t a1, uint64_t a2)
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

uint64_t sub_100026394(uint64_t a1, int a2)
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

uint64_t sub_1000263DC(uint64_t result, int a2, int a3)
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

unint64_t sub_100026448()
{
  result = qword_1000B73A8;
  if (!qword_1000B73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B73A8);
  }

  return result;
}

unint64_t sub_1000264A0()
{
  result = qword_1000B73B0;
  if (!qword_1000B73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B73B0);
  }

  return result;
}

unint64_t sub_1000264F8()
{
  result = qword_1000B73B8;
  if (!qword_1000B73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B73B8);
  }

  return result;
}

uint64_t sub_10002654C()
{
  v0 = type metadata accessor for Logger();
  sub_100026F20(v0, qword_1000B73C8);
  v1 = sub_100003448(v0, qword_1000B73C8);
  if (qword_1000B6680 != -1)
  {
    swift_once();
  }

  v2 = sub_100003448(v0, qword_1000B9358);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100026614()
{
  v1 = sub_100002074(&qword_1000B73E0, &qword_100091130);
  __chkstk_darwin(v1 - 8);
  v3 = &v44 - v2;
  v4 = type metadata accessor for Container.Part();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Container.Persona();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Container.Attributes();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Containers();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  if (qword_1000B9450 == 0xD000000000000014 && 0x80000001000947E0 == *algn_1000B9458 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = NSTemporaryDirectory();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v45 = v3;
    v46 = v12;
    v47 = v11;
    static Container.Attributes.daemon.getter();
    v49 = sub_10006C340(&off_1000ADBB8);
    sub_100026E0C(&unk_1000ADBD8);
    (*(v7 + 104))(v9, enum case for Container.Persona.primary(_:), v6);
    sub_100002074(&qword_1000B73E8, &unk_100091138);
    v17 = type metadata accessor for Query.Options();
    v18 = *(v17 - 8);
    v48 = v0;
    v19 = v18;
    v50 = v14;
    v20 = *(v18 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v16 = 2 * v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100091120;
    v23 = v22 + v21;
    v24 = *(v19 + 104);
    v24(v23, enum case for Query.Options.create(_:), v17);
    v25 = v23 + v20;
    v26 = v50;
    v24(v25, enum case for Query.Options.requestPath(_:), v17);
    v24(v23 + v16, enum case for Query.Options.requestContainerizedAccess(_:), v17);
    (*(v52 + 104))(v51, enum case for Container.Part.data(_:), v53);
    v27 = v48;
    Containers.init(of:identifiers:includeUnowned:persona:options:part:)();
    if (!v27)
    {
      sub_100026E60();
      v28 = v26;
      v29 = v47;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v54[5] == v54[0])
      {
        if (qword_1000B6650 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        v16 = sub_100003448(v30, qword_1000B73C8);
        v31 = static os_log_type_t.error.getter();
        sub_10005E11C(v31, 0xD000000000000021, 0x80000001000952B0, 0xD00000000000005DLL, 0x8000000100095250, 32);
        sub_10000B6B0();
        swift_allocError();
        *v32 = 0xD000000000000021;
        *(v32 + 8) = 0x80000001000952B0;
        *(v32 + 16) = 2;
        swift_willThrow();
      }

      else
      {
        v33 = dispatch thunk of Collection.subscript.read();
        v35 = *v34;

        v33(v54, 0);
        qword_1000B73C0 = v35;
        swift_retain_n();

        v16 = v35;
        Container.grantAccess(required:)(1);
        if (v36)
        {
          (*(v46 + 8))(v28, v29);

          return v16;
        }

        v38 = v45;
        Container.path.getter();
        v39 = type metadata accessor for FilePath();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v38, 1, v39) != 1)
        {
          v16 = FilePath.string.getter();

          (*(v46 + 8))(v50, v29);
          (*(v40 + 8))(v38, v39);
          return v16;
        }

        sub_100026EB8(v38);
        if (qword_1000B6650 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        v16 = sub_100003448(v41, qword_1000B73C8);
        v42 = static os_log_type_t.error.getter();
        sub_10005E11C(v42, 0xD000000000000029, 0x8000000100095220, 0xD00000000000005DLL, 0x8000000100095250, 45);
        sub_10000B6B0();
        swift_allocError();
        *v43 = 0xD000000000000029;
        *(v43 + 8) = 0x8000000100095220;
        *(v43 + 16) = 2;
        swift_willThrow();
      }

      (*(v46 + 8))(v50, v29);
    }
  }

  return v16;
}

unint64_t sub_100026E60()
{
  result = qword_1000B73F0;
  if (!qword_1000B73F0)
  {
    type metadata accessor for Containers();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B73F0);
  }

  return result;
}

uint64_t sub_100026EB8(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B73E0, &qword_100091130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100026F20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100026F84(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC13frauddefensed6Server_serverProxies] = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC13frauddefensed6Server_interface;
  *&v2[v9] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13frauddefensed14ServerProtocol_];
  v10 = OBJC_IVAR____TtC13frauddefensed6Server_logger;
  Logger.init(subsystem:category:)();
  (*(v6 + 16))(v8, &v2[v10], v5);
  v11 = static os_log_type_t.default.getter();
  v12 = (v6 + 8);
  if (a1)
  {
    sub_10005E11C(v11, 0xD00000000000002CLL, 0x8000000100095930, 0xD000000000000049, 0x8000000100095520, 17);
    (*v12)(v8, v5);
    v13 = [objc_opt_self() anonymousListener];
  }

  else
  {
    sub_10005E11C(v11, 0xD000000000000022, 0x8000000100095900, 0xD000000000000049, 0x8000000100095520, 20);
    (*v12)(v8, v5);
    v14 = objc_allocWithZone(NSXPCListener);
    v15 = String._bridgeToObjectiveC()();
    v13 = [v14 initWithMachServiceName:v15];
  }

  v16 = v13;
  v17 = [v16 endpoint];
  *&v2[OBJC_IVAR____TtC13frauddefensed6Server_endpoint] = v17;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "init");
  [v16 setDelegate:v18];
  [v16 resume];

  return v18;
}

id sub_1000272FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000273F8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000274A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10002756C, 0, 0);
}

uint64_t sub_10002756C()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = qword_1000B9488;
  v0[9] = qword_1000B9488;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger, v3);

  return _swift_task_switch(sub_10002762C, v5, 0);
}

uint64_t sub_10002762C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;

    return _swift_task_switch(sub_100027898, 0, 0);
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_100027754;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_100027754()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100027864, v1, 0);
}

uint64_t sub_100027864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v4 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    *(v4 + 120) = v7;
    return _swift_task_switch(sub_100027898, 0, 0);
  }
}

uint64_t sub_100027898(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = static os_log_type_t.default.getter();
  sub_10005E11C(v4, 0xD000000000000031, 0x8000000100095870, 0xD000000000000049, 0x8000000100095520, 73);
  if (v3 == 1802401130 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v9 = v1[3];
    if (v1[2] == 0x6B6E754A746F6ELL && v9 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = 1;
    }

    else if (v1[2] == 0x6E776F6E6B6E75 && v9 == 0xE700000000000000)
    {
      v5 = 2;
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = 2;
    }
  }

  type metadata accessor for ReportManager(0);
  swift_allocObject();
  v1[11] = sub_100065C98();
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_100027A68;
  v7 = v1[4];

  return sub_100060BEC(v5, v7);
}

uint64_t sub_100027A68()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100027C78;
  }

  else
  {
    v2 = sub_100027B7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027B7C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100027BE8, v1, 0);
}

uint64_t sub_100027BE8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  sub_10006ACA8(v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100027C78()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100027CE4, v1, 0);
}

uint64_t sub_100027CE4()
{
  sub_10006ACA8(*(v0 + 72));

  return _swift_task_switch(sub_100027D4C, 0, 0);
}

uint64_t sub_100027D4C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100027F60(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v8;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100028070;

  return sub_1000274A8(v5, v7, v8);
}

uint64_t sub_100028070()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;

  v5, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;
  v22 = *(v3 + 24);
  if (v2)
  {
    v23 = _convertErrorToNSError(_:)();

    (*(v22 + 16))(v22, v23);
  }

  else
  {
    (*(v22 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v24 = *(v7 + 8);

  return v24();
}

uint64_t sub_100028238()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000282F8, 0, 0);
}

uint64_t sub_1000282F8()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = qword_1000B9488;
  v0[6] = qword_1000B9488;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger, v3);

  return _swift_task_switch(sub_1000283B8, v5, 0);
}

uint64_t sub_1000283B8()
{
  v1 = v0[6];
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1000286C8;
    v5 = v0[5];

    return sub_1000289CC(v4, v5);
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100028510;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_100028510()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100028620, v1, 0);
}

void sub_100028620()
{
  v2 = v0[6];
  v3 = *(v2 + 120);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1000286C8;
    v7 = v0[5];

    sub_1000289CC(v6, v7);
  }
}

uint64_t sub_1000286C8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1000288E4;
  }

  else
  {
    v4 = sub_1000287F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000287F4()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_10006ACA8(v0[6]);
  (*(v3 + 8))(v1, v2);

  return _swift_task_switch(sub_100028880, 0, 0);
}

uint64_t sub_100028880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000288E4()
{
  sub_10006ACA8(*(v0 + 48));

  return _swift_task_switch(sub_10002894C, 0, 0);
}

uint64_t sub_10002894C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000289EC(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000003ALL, 0x8000000100095800, 0xD000000000000049, 0x8000000100095520, 84);
  type metadata accessor for EligibilityManager(0);
  v3 = swift_allocObject();
  *(v1 + 64) = v3;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  *(v1 + 72) = v5;
  v6 = sub_100003448(v5, qword_1000B9388);
  v7 = *(v5 - 8);
  *(v1 + 80) = v7;
  (*(v7 + 16))(v3 + v4, v6, v5);
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 1;
  if (sub_10006B144(2, v1 + 112))
  {
    type metadata accessor for SpamDecisioningManager(0);
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    swift_allocObject();
    *(v1 + 88) = sub_100082358(v1 + 16);
    v8 = swift_task_alloc();
    *(v1 + 96) = v8;
    *v8 = v1;
    v8[1] = sub_100028C8C;

    return sub_1000777B0();
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    sub_10005E11C(v10, 0xD000000000000017, 0x8000000100095570, 0xD000000000000049, 0x8000000100095520, 88);
    sub_10000B6B0();
    swift_allocError();
    *v11 = 0xD000000000000017;
    *(v11 + 8) = 0x8000000100095570;
    *(v11 + 16) = 0;
    swift_willThrow();

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_100028C8C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100028EC4;
  }

  else
  {
    v2 = sub_100028DA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100028DA0(uint64_t a1)
{
  v2 = v1[10];
  v4 = v1[8];
  v3 = v1[9];
  v5 = static os_log_type_t.default.getter();
  sub_10005E11C(v5, 0xD00000000000002DLL, 0x8000000100095840, 0xD000000000000049, 0x8000000100095520, 95);
  swift_setDeallocating();
  *(v4 + 16), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v4 + OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger, v3);
  swift_deallocClassInstance();

  v13 = v1[1];

  return v13();
}

uint64_t sub_100028EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000290AC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100029154;

  return sub_100028238();
}

uint64_t sub_100029154()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1000292DC()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002939C, 0, 0);
}

uint64_t sub_10002939C()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = qword_1000B9488;
  v6 = OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger;
  v0[10] = qword_1000B9488;
  v0[11] = v6;
  (*(v2 + 16))(v1, v4 + v6, v3);

  return _swift_task_switch(sub_10002945C, v5, 0);
}

uint64_t sub_10002945C()
{
  v1 = v0[10];
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_10002977C;
    v5 = v0[9];

    return sub_100029B08((v0 + 15), v5);
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1000295BC;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_1000295BC()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1000296CC, v1, 0);
}

void sub_1000296CC()
{
  v2 = v0[10];
  v3 = *(v2 + 120);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_10002977C;
    v7 = v0[9];

    sub_100029B08((v0 + 15), v7);
  }
}

uint64_t sub_10002977C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_10002993C;
  }

  else
  {
    v4 = sub_1000298A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000298A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_10006ACA8(*(v0 + 80));
  v4 = *(v0 + 120);
  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10002993C()
{
  sub_10006ACA8(*(v0 + 80));

  return _swift_task_switch(sub_1000299A4, 0, 0);
}

uint64_t sub_1000299A4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(70);
  v2._object = 0x8000000100095620;
  v2._countAndFlagsBits = 0xD000000000000042;
  String.append(_:)(v2);
  swift_getErrorValue();
  v3._countAndFlagsBits = Error.localizedDescription.getter();
  object = v3._object;
  String.append(_:)(v3);
  object, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  sub_10005E11C(v1, 0, 0xE000000000000000, 0xD000000000000049, 0x8000000100095520, 117);

  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_100029B08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100029B28, 0, 0);
}

uint64_t sub_100029B28(uint64_t a1)
{
  v32 = v1;
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD000000000000046, 0x8000000100095670, 0xD000000000000049, 0x8000000100095520, 102);
  type metadata accessor for EligibilityManager(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100003448(v5, qword_1000B9388);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v3 + v4, v6, v5);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 1;
  if (sub_10006B144(2, v1 + 32))
  {
    type metadata accessor for SpamDecisioningManager(0);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    swift_allocObject();
    sub_100082358(v30);
    v8 = static os_log_type_t.default.getter();
    sub_10005E11C(v8, 0xD000000000000031, 0x80000001000956C0, 0xD00000000000005BLL, 0x8000000100095700, 543);
    sub_100082B5C();
    v9 = sub_10005163C();

    if ((v9 & 1) == 0)
    {
      v10 = static os_log_type_t.default.getter();
      sub_10005E11C(v10, 0xD000000000000054, 0x8000000100095760, 0xD00000000000005BLL, 0x8000000100095700, 547);
    }

    v11 = static os_log_type_t.default.getter();
    sub_10005E11C(v11, 0xD00000000000003ALL, 0x80000001000957C0, 0xD000000000000049, 0x8000000100095520, 113);
    swift_setDeallocating();
    *(v3 + 16), v12, v13, v14, v15, v16, v17, v18;
    (*(v7 + 8))(v3 + OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger, v5);
    swift_deallocClassInstance();

    v19 = v9 & 1;
  }

  else
  {
    v20 = static os_log_type_t.error.getter();
    sub_10005E11C(v20, 0xD000000000000017, 0x8000000100095570, 0xD000000000000049, 0x8000000100095520, 106);
    swift_setDeallocating();
    *(v3 + 16), v21, v22, v23, v24, v25, v26, v27;
    (*(v7 + 8))(v3 + OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger, v5);
    swift_deallocClassInstance();
    v19 = 0;
  }

  **(v1 + 16) = v19;
  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_10002A044(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10002A0EC;

  return sub_1000292DC();
}

uint64_t sub_10002A0EC(char a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10002A238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 456) = v16;
  *(v9 + 464) = v8;
  *(v9 + 440) = v15;
  *(v9 + 424) = v14;
  *(v9 + 408) = v13;
  *(v9 + 392) = a7;
  *(v9 + 400) = a8;
  *(v9 + 376) = a5;
  *(v9 + 384) = a6;
  *(v9 + 360) = a3;
  *(v9 + 368) = a4;
  *(v9 + 344) = a1;
  *(v9 + 352) = a2;
  v10 = type metadata accessor for Logger();
  *(v9 + 472) = v10;
  *(v9 + 480) = *(v10 - 8);
  *(v9 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_10002A330, 0, 0);
}

uint64_t sub_10002A330()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = qword_1000B9488;
  *(v0 + 496) = qword_1000B9488;
  v6 = OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger;
  *(v0 + 268) = *(v4 + 16);
  v7 = *(v2 + 16);
  *(v0 + 504) = v7;
  *(v0 + 512) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);

  return _swift_task_switch(sub_10002A404, v5, 0);
}

uint64_t sub_10002A404()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;

    return _swift_task_switch(sub_10002A670, 0, 0);
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    *(v0 + 520) = v3;
    *v3 = v0;
    v3[1] = sub_10002A52C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10002A52C()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_10002A63C, v1, 0);
}

uint64_t sub_10002A63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 496);
  v5 = *(v4 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    *(v4 + 120) = v7;
    return _swift_task_switch(sub_10002A670, 0, 0);
  }
}

uint64_t sub_10002A670(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000004ALL, 0x8000000100095590, 0xD000000000000049, 0x8000000100095520, 132);
  type metadata accessor for EligibilityManager(0);
  v3 = swift_allocObject();
  *(v1 + 528) = v3;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 504);
  v6 = *(v1 + 472);
  v7 = sub_100003448(v6, qword_1000B9388);
  v5(v3 + v4, v7, v6);
  *(v1 + 124) = 0u;
  *(v1 + 140) = 0u;
  *(v1 + 156) = 1;
  if (sub_10006B144(2, v1 + 124))
  {
    v8 = *(v1 + 268);
    v9 = swift_slowAlloc();
    if (proc_name(v8, v9, 0x400u) < 1)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v10 = String.init(cString:)();
      v12 = v11;
    }

    v17 = *(v1 + 440);

    if (v17)
    {
      v19 = *(v1 + 432);
      v18 = *(v1 + 440);

      v20._countAndFlagsBits = v19;
      v20._object = v18;
      v21 = _findStringSwitchCase(cases:string:)(&off_1000AE310, v20);
      v18, v22, v23, v24, v25, v26, v27, v28;
      v29 = v21 != 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(v1 + 456);
    if (v30)
    {
      v31 = *(v1 + 448);

      v32._countAndFlagsBits = v31;
      v32._object = v30;
      v33 = _findStringSwitchCase(cases:string:)(&off_1000AE2A8, v32);
      v30, v34, v35, v36, v37, v38, v39, v40;
      v41 = 3;
      if (v33 < 3)
      {
        v41 = v33;
      }
    }

    else
    {
      v41 = 3;
    }

    v42 = *(v1 + 424);
    v43 = *(v1 + 392);
    v44 = *(v1 + 400);
    v45 = *(v1 + 376);
    v46 = *(v1 + 384);
    v47 = *(v1 + 360);
    v48 = *(v1 + 368);
    v49 = *(v1 + 344);
    v50 = *(v1 + 352);
    *(v1 + 160) = v10;
    *(v1 + 168) = v12;
    *(v1 + 176) = v49;
    *(v1 + 184) = v50;
    *(v1 + 192) = v47;
    *(v1 + 200) = v48;
    *(v1 + 208) = v45;
    *(v1 + 216) = v46;
    *(v1 + 224) = v43;
    *(v1 + 232) = v44;
    *(v1 + 240) = *(v1 + 408);
    *(v1 + 256) = v42;
    *(v1 + 264) = v29;
    *(v1 + 265) = v41;
    v51 = *(v1 + 208);
    *(v1 + 48) = *(v1 + 192);
    *(v1 + 64) = v51;
    v52 = *(v1 + 176);
    *(v1 + 16) = *(v1 + 160);
    *(v1 + 32) = v52;
    *(v1 + 106) = *(v1 + 250);
    v53 = *(v1 + 240);
    *(v1 + 80) = *(v1 + 224);
    *(v1 + 96) = v53;
    type metadata accessor for SpamDecisioningManager(0);
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0;
    swift_allocObject();

    *(v1 + 536) = sub_100082358(v1 + 272);
    v54 = swift_task_alloc();
    *(v1 + 544) = v54;
    *v54 = v1;
    v54[1] = sub_10002AA78;

    return sub_100079634(v1 + 16);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    sub_10005E11C(v13, 0xD000000000000017, 0x8000000100095570, 0xD000000000000049, 0x8000000100095520, 136);
    sub_10000B6B0();
    v14 = swift_allocError();
    *v15 = 0xD000000000000017;
    *(v15 + 8) = 0x8000000100095570;
    *(v15 + 16) = 0;
    swift_willThrow();

    *(v1 + 584) = v14;
    v16 = *(v1 + 496);

    return _swift_task_switch(sub_10002ADF8, v16, 0);
  }
}

uint64_t sub_10002AA78(char a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 328) = a2;
  *(v5 + 336) = v2;
  *(v5 + 320) = a1;
  *(v5 + 312) = v3;
  *(v5 + 552) = v2;

  if (v2)
  {
    sub_10002D1DC(v5 + 160);
    v6 = sub_10002AD7C;
  }

  else
  {
    *(v5 + 122) = a1;
    sub_10002D1DC(v5 + 160);
    v6 = sub_10002ABBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002ABBC(uint64_t a1)
{
  v2 = *(v1 + 122);
  v3 = static os_log_type_t.default.getter();
  sub_10005E11C(v3, 0xD000000000000037, 0x80000001000955E0, 0xD000000000000049, 0x8000000100095520, 156);

  v4 = 0xE400000000000000;
  v5 = 1835102323;
  v6 = 0xE700000000000000;
  v7 = 0x6D617053746F6ELL;
  if (v2 != 1)
  {
    v7 = 1852989815;
    v6 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = v7;
    v4 = v6;
  }

  *(v1 + 568) = v4;
  *(v1 + 560) = v5;
  v8 = *(v1 + 496);
  *(v1 + 576) = *(v1 + 328);

  return _swift_task_switch(sub_10002ACE0, v8, 0);
}

uint64_t sub_10002ACE0()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  sub_10006ACA8(v0[62]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];

  return v4(v7, v6, v5);
}

uint64_t sub_10002AD7C()
{

  v0[73] = v0[69];
  v1 = v0[62];

  return _swift_task_switch(sub_10002ADF8, v1, 0);
}

uint64_t sub_10002ADF8()
{
  sub_10006ACA8(*(v0 + 496));

  return _swift_task_switch(sub_10002AE60, 0, 0);
}

uint64_t sub_10002AE60()
{
  (*(v0[60] + 8))(v0[61], v0[59]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, const void *a9, uint64_t a10)
{
  v10[2] = a10;
  v10[3] = _Block_copy(a9);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v17;
  v42 = v16;
  v10[4] = v17;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v19;
  v40 = v18;
  v10[5] = v19;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v21;
  v38 = v20;
  v10[6] = v21;
  if (a4)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v10[7] = v22;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v36 = 0;
  v23 = 0;
  v10[7] = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v10[8] = a5;
  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v26 = a7;
    v27 = a8;

    v10[9] = v25;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10[10] = 0;
    if (a8)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v32 = a8;

  v33 = a7;
  v10[9] = 0;
  if (!a7)
  {
    goto LABEL_11;
  }

LABEL_6:
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v10[10] = v29;
  if (a8)
  {
LABEL_7:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    goto LABEL_13;
  }

LABEL_12:
  v31 = 0;
LABEL_13:
  v10[11] = v31;
  v34 = swift_task_alloc();
  v10[12] = v34;
  *v34 = v10;
  v34[1] = sub_10002B2DC;

  return sub_10002A238(v42, v41, v40, v39, v38, v37, v36, v23);
}

uint64_t sub_10002B2DC(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  v5 = v3;
  v7 = *v4;
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 40);
  v10 = *(*v4 + 32);
  v11 = *v4;

  v8, v12, v13, v14, v15, v16, v17, v18;
  v9, v19, v20, v21, v22, v23, v24, v25;
  v10, v26, v27, v28, v29, v30, v31, v32;
  v33 = v7[11];
  v34 = v7[10];
  v35 = v7[9];
  v36 = v7[8];
  v37 = v7[7];
  v38 = v7[3];
  v33, v39, v40, v41, v42, v43, v44, v45;
  v34, v46, v47, v48, v49, v50, v51, v52;
  v35, v53, v54, v55, v56, v57, v58, v59;
  v36, v60, v61, v62, v63, v64, v65, v66;
  v37, v67, v68, v69, v70, v71, v72, v73;
  if (v5)
  {
    v74 = _convertErrorToNSError(_:)();

    (v38)[2](v38, 0, 0, v74);

    _Block_release(v38);
  }

  else
  {
    v75 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (v38)[2](v38, v75, isa, 0);

    _Block_release(v38);
    a2, v77, v78, v79, v80, v81, v82, v83;
    a3, v84, v85, v86, v87, v88, v89, v90;
  }

  v91 = *(v11 + 8);

  return v91();
}

uint64_t sub_10002B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002B690, 0, 0);
}

uint64_t sub_10002B690()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = qword_1000B9488;
  v0[10] = qword_1000B9488;
  v6 = OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger;
  v0[11] = *(v4 + 20);
  v0[12] = *(v4 + 28);
  v0[13] = *(v4 + 36);
  v0[14] = *(v4 + 44);
  v7 = *(v2 + 16);
  v0[15] = v7;
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);

  return _swift_task_switch(sub_10002B77C, v5, 0);
}

uint64_t sub_10002B77C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;

    return _swift_task_switch(sub_10002B9E8, 0, 0);
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_10002B8A4;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10002B8A4()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10002B9B4, v1, 0);
}

uint64_t sub_10002B9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 80);
  v5 = *(v4 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    *(v4 + 120) = v7;
    return _swift_task_switch(sub_10002B9E8, 0, 0);
  }
}

uint64_t sub_10002B9E8(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  sub_10005E11C(v2, 0xD00000000000002ALL, 0x80000001000954F0, 0xD000000000000049, 0x8000000100095520, 163);
  type metadata accessor for EligibilityManager(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 120);
  v6 = *(v1 + 56);
  v34 = *(v1 + 104);
  v35 = *(v1 + 88);
  v7 = sub_100003448(v6, qword_1000B9388);
  v5(v3 + v4, v7, v6);
  *(v1 + 184) = v34;
  *(v1 + 168) = v35;
  *(v1 + 200) = 0;
  if (sub_10006B144(3, v1 + 168))
  {
    type metadata accessor for DebugUIManager(0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v36 = OBJC_IVAR____TtC13frauddefensed14DebugUIManager_logger;
    if (qword_1000B6678 != -1)
    {
      swift_once();
    }

    v9 = *(v1 + 120);
    v10 = *(v1 + 56);
    v12 = *(v1 + 32);
    v11 = *(v1 + 40);
    v14 = *(v1 + 16);
    v13 = *(v1 + 24);
    v15 = sub_100003448(v10, qword_1000B9340);
    v9(v8 + v36, v15, v10);
    sub_100050074(v14, v13, v12, v11);
    v19 = *(v1 + 80);
    v20 = *(v1 + 56);
    v21 = *(v1 + 64);
    swift_setDeallocating();
    *(v3 + 16), v22, v23, v24, v25, v26, v27, v28;
    v29 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
    v30 = *(v21 + 8);
    *(v1 + 144) = v30;
    *(v1 + 152) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v3 + v29, v20);
    swift_deallocClassInstance();
    swift_setDeallocating();

    v30(v8 + OBJC_IVAR____TtC13frauddefensed14DebugUIManager_logger, v20);
    swift_deallocClassInstance();
    v31 = sub_10002BDD4;
    v32 = v19;
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    sub_10005E11C(v16, 0xD000000000000017, 0x8000000100095570, 0xD000000000000049, 0x8000000100095520, 167);
    sub_10000B6B0();
    v17 = swift_allocError();
    *v18 = 0xD000000000000017;
    *(v18 + 8) = 0x8000000100095570;
    *(v18 + 16) = 0;
    swift_willThrow();

    *(v1 + 160) = v17;
    v32 = *(v1 + 80);
    v31 = sub_10002BE5C;
  }

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_10002BDD4()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[7];
  sub_10006ACA8(v0[10]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002BE5C()
{
  sub_10006ACA8(*(v0 + 80));

  return _swift_task_switch(sub_10002BEC4, 0, 0);
}

uint64_t sub_10002BEC4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002C0D8(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10002D520;

  return sub_10002B5C8(v5, v7, v8, v10);
}

uint64_t sub_10002C1D4()
{
  v1 = OBJC_IVAR____TtC13frauddefensed11ServerProxy_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10002C298(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10002C344()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100011E6C;

  return sub_10002C0D8(v2, v3, v5, v4);
}

uint64_t sub_10002C404(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100011E6C;

  return v6();
}

uint64_t sub_10002C4F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100011E6C;

  return sub_10002C404(v2, v3, v4);
}

uint64_t sub_10002C5B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002A54;

  return v7();
}

uint64_t sub_10002C698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10002C5B0(a1, v4, v5, v6);
}

uint64_t sub_10002C764(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  sub_100003480(a3, v30 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000034F0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v31[0] = 0;
      v31[1] = 0;
      v19 = v31;
      v31[2] = v14;
      v31[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v30[1] = 7;
    v30[2] = v19;
    v30[3] = v17;
    v21 = swift_task_create();

    sub_1000034F0(a3);
    a2, v22, v23, v24, v25, v26, v27, v28;

    return v21;
  }

LABEL_8:
  sub_1000034F0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v14;
    v31[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10002CA20(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002CB18;

  return v6(a1);
}

uint64_t sub_10002CB18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002CC10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CC48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011E6C;

  return sub_10002CA20(a1, v4);
}

uint64_t sub_10002CD00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A54;

  return sub_10002CA20(a1, v4);
}

unint64_t sub_10002CDB8()
{
  result = qword_1000B7588;
  if (!qword_1000B7588)
  {
    type metadata accessor for TaskQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7588);
  }

  return result;
}

uint64_t sub_10002CE18()
{
  _Block_release(*(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_10002CE98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100011E6C;

  JUMPOUT(0x10002B0C4);
}

uint64_t sub_10002CF8C(void *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(46);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  *&v36 = 0xD00000000000002ALL;
  *(&v36 + 1) = 0x80000001000958D0;
  [a1 processIdentifier];
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v12._object;
  String.append(_:)(v12);
  object, v14, v15, v16, v17, v18, v19, v20;
  v21._countAndFlagsBits = 32032;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  sub_10005E11C(v4, 0xD00000000000002ALL, 0x80000001000958D0, 0xD000000000000049, 0x8000000100095520, 35);
  0x80000001000958D0, v22, v23, v24, v25, v26, v27, v28;
  v29 = [a1 processIdentifier];
  [a1 auditToken];
  type metadata accessor for ServerProxy(0);
  v30 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v30 + 16) = v29;
  *(v30 + 20) = v36;
  *(v30 + 36) = v37;
  v31 = [a1 processIdentifier];
  v32 = OBJC_IVAR____TtC13frauddefensed6Server_serverProxies;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v2 + v32);
  *(v2 + v32) = 0x8000000000000000;
  sub_10005B7EC(v30, v31, isUniquelyReferenced_nonNull_native);
  *(v2 + v32) = v35;
  swift_endAccess();
  [a1 setExportedInterface:*(v2 + OBJC_IVAR____TtC13frauddefensed6Server_interface)];
  [a1 setExportedObject:v30];
  [a1 resume];

  return 1;
}

uint64_t sub_10002D234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011E6C;

  return sub_10002A044(v2, v3);
}

uint64_t sub_10002D2E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D320()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011E6C;

  return sub_1000290AC(v2, v3);
}

uint64_t sub_10002D3CC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002D41C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002A54;

  return sub_100027F60(v2, v3, v5, v4);
}

uint64_t sub_10002D4DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002D554()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient_logger;
  if (qword_1000B66C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100003448(v3, qword_1000B9418);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  *(v1 + OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient____lazy_storage___interface) = 0;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() endpointForMachName:v5 service:v6 instance:0];

  v8 = *(v1 + 16);
  *(v1 + 16) = v7;
  v9 = v7;

  if (!v9)
  {
    v17 = static os_log_type_t.error.getter();
    sub_10005E11C(v17, 0xD000000000000024, 0x8000000100095C30, 0xD000000000000059, 0x8000000100095B10, 23);
    return v1;
  }

  v10 = [objc_opt_self() connectionWithEndpoint:v9];
  if (!v10)
  {
    v18 = static os_log_type_t.error.getter();
    sub_10005E11C(v18, 0xD000000000000025, 0x8000000100095C60, 0xD000000000000059, 0x8000000100095B10, 28);

    return v1;
  }

  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10002EEA0;
  *(v12 + 24) = v1;
  v19[4] = sub_10002EEB8;
  v19[5] = v12;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10002E104;
  v19[3] = &unk_1000AFC78;
  v13 = _Block_copy(v19);

  [v11 configureConnection:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    v15 = *(v1 + 24);
    *(v1 + 24) = v11;
    v16 = v11;

    [v16 activate];

    return v1;
  }

  __break(1u);
  return result;
}

void sub_10002D894(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v6;
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v8];

  v27 = a2;
  v9 = sub_10002DC74();
  [a1 setInterface:v9];

  v10 = *(v5 + 16);
  v28 = OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient_logger;
  v29 = v10;
  v10(v7, a2 + OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient_logger, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v26 = *(v5 + 32);
  v26(v12 + v11, v7, v4);
  v36 = sub_10002EEF8;
  v37 = v12;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v30 = &v34;
  v34 = sub_10002DE84;
  v35 = &unk_1000AFCC8;
  v13 = _Block_copy(&aBlock);

  [a1 setActivationHandler:v13];
  _Block_release(v13);
  v14 = v27;
  v15 = v28;
  v25 = v7;
  v29(v7, v27 + v28, v4);
  v16 = swift_allocObject();
  v17 = v7;
  v18 = v26;
  v26(v16 + v11, v17, v4);
  v36 = sub_10002EF14;
  v37 = v16;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10002DE84;
  v35 = &unk_1000AFD18;
  v19 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler:v19];
  _Block_release(v19);
  v20 = v14 + v15;
  v21 = v25;
  v29(v25, v20, v4);
  v22 = swift_allocObject();
  v18(v22 + v11, v21, v4);
  v36 = sub_10002EFB4;
  v37 = v22;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10002DE84;
  v35 = &unk_1000AFD68;
  v23 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v23];
  _Block_release(v23);
}

id sub_10002DC74()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient____lazy_storage___interface);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() interfaceWithIdentifier:v4];

    [v5 setClientMessagingExpectation:0];
    v6 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP13frauddefensed24TrustKitUIServerProtocol_];
    [v5 setServer:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_10002DD78(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(47);
  v2._object = 0x8000000100095D80;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 32032;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  sub_10005E11C(v1, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 37);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
}

void sub_10002DE84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10002DEEC(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(54);
  v2._object = 0x8000000100095D40;
  v2._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 32032;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  sub_10005E11C(v1, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 41);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
}

void sub_10002DFF8(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(54);
  v2._object = 0x8000000100095D00;
  v2._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 32032;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  sub_10005E11C(v1, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 45);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_10002E104(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002E158()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22TrustKitUIServerClient_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustKitUIServerClient(uint64_t a1)
{
  result = qword_1000B7638;
  if (!qword_1000B7638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E268(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_10002E304(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = static os_log_type_t.debug.getter();
  *&v50[0] = 0;
  *(&v50[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v11._object = 0x8000000100095A60;
  v11._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x746974627573202CLL;
  v13._object = 0xEB000000003D656CLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 75);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(v4 + 24);
  if (!v23 || (v51 = &OBJC_PROTOCOL___BSServiceConnectionClient, (v24 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v40 = static os_log_type_t.error.getter();
    sub_10005E11C(v40, 0xD00000000000002CLL, 0x8000000100095B70, 0xD000000000000059, 0x8000000100095B10, 78);
    return;
  }

  v25 = v24;
  v46 = v23;
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() attributeWithDomain:v26 name:v27];

  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100091290;
  *(v29 + 32) = v28;
  sub_10002EDEC();
  v30 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v29, v32, v33, v34, v35, v36, v37, v38;
  v39 = [v25 remoteTargetWithLaunchingAssertionAttributes:isa];

  if (v39)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50[0] = v48;
  v50[1] = v49;
  if (*(&v49 + 1))
  {
    sub_100002074(&qword_1000B7750, qword_100091308);
    if (swift_dynamicCast())
    {
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      [v47 bannerWith:v41 and:v42];

      v43 = *(v5 + 24);
      if (v43)
      {
        v44 = v43;
        [v44 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_10002EE38(v50);
  }

  v45 = static os_log_type_t.error.getter();
  sub_10005E11C(v45, 0xD00000000000002FLL, 0x8000000100095BC0, 0xD000000000000059, 0x8000000100095B10, 84);

LABEL_14:
}

void sub_10002E75C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  v84 = static os_log_type_t.debug.getter();
  *&v88[0] = 0;
  *(&v88[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(170);
  v21._countAndFlagsBits = 0xD00000000000002FLL;
  v21._object = 0x8000000100095A60;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x746974627573202CLL;
  v23._object = 0xEB000000003D656CLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = a3;
  v24._object = a4;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x547261646172202CLL;
  v25._object = 0xED00003D656C7469;
  String.append(_:)(v25);
  v26._countAndFlagsBits = a5;
  v26._object = a6;
  String.append(_:)(v26);
  v27._object = 0x8000000100095A90;
  v27._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v27);
  v28._countAndFlagsBits = a7;
  v28._object = a8;
  String.append(_:)(v28);
  v29._object = 0x8000000100095AB0;
  v29._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v29);
  v30 = [a9 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42._countAndFlagsBits = 0xD000000000000015;
  v42._object = 0x8000000100095AD0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = a10;
  v43._object = a11;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000018;
  v44._object = 0x8000000100095AF0;
  String.append(_:)(v44);
  v45._countAndFlagsBits = a12;
  v45._object = a13;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 32032;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  sub_10005E11C(v84, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 93);
  0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
  v54 = *(v83 + 24);
  if (!v54 || (v89 = &OBJC_PROTOCOL___BSServiceConnectionClient, (v55 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v72 = static os_log_type_t.error.getter();
    sub_10005E11C(v72, 0xD00000000000002CLL, 0x8000000100095B70, 0xD000000000000059, 0x8000000100095B10, 96);
    return;
  }

  v56 = v55;
  v57 = v54;
  v58 = String._bridgeToObjectiveC()();
  v59 = String._bridgeToObjectiveC()();
  v60 = [objc_opt_self() attributeWithDomain:v58 name:v59];

  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100091290;
  *(v61 + 32) = v60;
  sub_10002EDEC();
  v62 = v60;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v61, v64, v65, v66, v67, v68, v69, v70;
  v71 = [v56 remoteTargetWithLaunchingAssertionAttributes:isa];

  if (v71)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88[0] = v86;
  v88[1] = v87;
  if (*(&v87 + 1))
  {
    sub_100002074(&qword_1000B7750, qword_100091308);
    if (swift_dynamicCast())
    {
      v73 = v57;
      v74 = String._bridgeToObjectiveC()();
      v75 = String._bridgeToObjectiveC()();
      v76 = String._bridgeToObjectiveC()();
      v77 = String._bridgeToObjectiveC()();
      v78 = String._bridgeToObjectiveC()();
      v79 = String._bridgeToObjectiveC()();
      [v85 bannerWith:v74 and:v75 radarTitle:v76 radarDescription:v77 radarComponentID:a9 radarComponentName:v78 radarComponentVersion:v79];

      v80 = *(v83 + 24);
      if (v80)
      {
        v81 = v80;
        [v81 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_10002EE38(v88);
  }

  v82 = static os_log_type_t.error.getter();
  sub_10005E11C(v82, 0xD00000000000002FLL, 0x8000000100095BC0, 0xD000000000000059, 0x8000000100095B10, 102);

LABEL_14:
}

unint64_t sub_10002EDEC()
{
  result = qword_1000B7740;
  if (!qword_1000B7740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7740);
  }

  return result;
}

uint64_t sub_10002EE38(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7748, &unk_1000912F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EEE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF2C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002EFCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10002F070(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  [v6 setDateStyle:a1];
  [v6 setTimeStyle:a1];
  v8 = Date._bridgeToObjectiveC()().super.isa;
  v9 = [v6 stringFromDate:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_10002F20C(void *a1)
{
  v3 = v1;
  v5 = sub_100002074(&qword_1000B7868, &qword_100091460);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000111EC(a1, a1[3]);
  sub_100031230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + 32);
    v11[15] = 2;
    sub_100002074(&qword_1000B7858, &qword_100091870);
    sub_1000312EC(&qword_1000B7870, &protocol witness table for UInt32, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 44);
    v11[14] = 3;
    v11[12] = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10002F494(uint64_t a1)
{
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v2 = *(v1 + 32);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    if (*(v1 + 44))
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  Hasher._combine(_:)(0);
  v2 = *(v1 + 32);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v3 = *(v2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  if (*(v1 + 44))
  {
LABEL_7:
    Hasher._combine(_:)(0);
    if (*(v1 + 56))
    {
      goto LABEL_8;
    }

LABEL_18:
    Hasher._combine(_:)(0);
    if (*(v1 + 72))
    {
      goto LABEL_9;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_14:
  v6 = *(v1 + 40);
  Hasher._combine(_:)(1u);
  if ((v6 & 0x7FFFFFFF) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  Hasher._combine(_:)(v7);
  if (!*(v1 + 56))
  {
    goto LABEL_18;
  }

LABEL_8:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 72))
  {
    goto LABEL_19;
  }

LABEL_9:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_10002F600()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F687365726874;
  v4 = 0x656D614E656E6F7ALL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002F6C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC13frauddefensed22TrustKitUIServerClient *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_100030B94(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10002F6EC(uint64_t a1)
{
  v2 = sub_100031230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F728(uint64_t a1)
{
  v2 = sub_100031230();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10002F764@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100030DA4(a2, v6);
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

Swift::Int sub_10002F7C8()
{
  Hasher.init(_seed:)();
  sub_10002F494(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002F80C()
{
  Hasher.init(_seed:)();
  sub_10002F494(v1);
  return Hasher._finalize()();
}

BOOL sub_10002F848(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10002FCD0(v8, v9);
}

uint64_t sub_10002F8A4(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a3 + 16);
      v9 = *(a3 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v8 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
LABEL_26:
    *a2 = v15 / 4;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_28;
  }

  if (v14 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a2 = v16;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10002F9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  [v8 setDateStyle:a1];
  [v8 setTimeStyle:a1];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 dateFromString:v10];

  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0;
    v8 = v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for Date();
  return (*(*(v13 - 8) + 56))(a2, v12, 1, v13);
}

uint64_t sub_10002FBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10002FC74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_10002FCD0(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  v9 = *(a2 + 32);
  if (v8)
  {
    if (!v9 || (sub_10002FC74(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 44);
  if (a1[11])
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (a1[10] != *(a2 + 40))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a1 + 7);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12 || (*(a1 + 6) != *(a2 + 48) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 9);
  v14 = *(a2 + 72);
  if (v13)
  {
    return v14 && (*(a1 + 8) == *(a2 + 64) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v14;
}

uint64_t sub_10002FE18(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *v7->endpoint = v6;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v15[1] = v6;
  v16 = 0;
  v15[0] = v7->$__lazy_storage_$_interface;
  result = sub_10002F8A4(v15, &v16, a2, a3);
  if (v3)
  {
    if (v16 <= v6)
    {
      *v7->endpoint = v16;
      v7, v8, v9, v10, v11, v12, v13, v14;
      return v7;
    }

    goto LABEL_12;
  }

  if (v16 <= v6)
  {
    *v7->endpoint = v16;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10002FEE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = type metadata accessor for Date();
  v4 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v110 - v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [a1 valueForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  v117 = v4;
  if (*(&v122 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = v119;
      v115 = v120;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000BC10(&v123, &qword_1000B7748, &unk_1000912F8);
  }

  v15 = a1;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003448(v16, qword_1000B93E8);
  v17 = static os_log_type_t.error.getter();
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v18._object = 0x8000000100095DB0;
  v18._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x727574616E676973;
  v19._object = 0xEB00000000644965;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 32032;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21 = *(&v123 + 1);
  sub_10005E11C(v17, v123, *(&v123 + 1), 0xD000000000000053, 0x8000000100095DF0, 49);
  v21, v22, v23, v24, v25, v26, v27, v28;
  v14 = 0;
  v115 = 0;
  a1 = v15;
LABEL_11:
  v29 = String._bridgeToObjectiveC()();
  v30 = [a1 valueForKey:v29];

  if (v30)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  v116 = v14;
  if (*(&v122 + 1))
  {
    if (swift_dynamicCast())
    {
      v31 = v119;
      v32 = v120;
      v33 = v120 >> 62;
      if ((v120 >> 62) > 1)
      {
        if (v33 != 2)
        {
          v34 = 0;
          goto LABEL_30;
        }

        v50 = *(v119 + 16);
        v49 = *(v119 + 24);
        v51 = __OFSUB__(v49, v50);
        v34 = v49 - v50;
        if (!v51)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      else if (!v33)
      {
        v34 = BYTE6(v120);
LABEL_30:
        v52 = v34 / 4;
        sub_100005A7C(v31, v32);
        v48 = sub_10002FE18(v52, v31, v32);
        sub_100005A28(v31, v32);
        sub_100005A28(v31, v32);
        goto LABEL_31;
      }

      LODWORD(v34) = HIDWORD(v31) - v31;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __DataStorage._length.getter();
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = v34;
      goto LABEL_30;
    }
  }

  else
  {
    sub_10000BC10(&v123, &qword_1000B7748, &unk_1000912F8);
  }

  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003448(v35, qword_1000B93E8);
  v36 = static os_log_type_t.error.getter();
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v37._object = 0x8000000100095DB0;
  v37._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v37);
  v38._object = 0xE900000000000065;
  v38._countAndFlagsBits = 0x727574616E676973;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 32032;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40 = *(&v123 + 1);
  sub_10005E11C(v36, v123, *(&v123 + 1), 0xD000000000000053, 0x8000000100095DF0, 56);
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = 0;
LABEL_31:
  v53 = String._bridgeToObjectiveC()();
  v54 = [a1 valueForKey:v53];

  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {
    sub_10000BC10(&v123, &qword_1000B7748, &unk_1000912F8);
    goto LABEL_40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    LOBYTE(v121) = 1;
    if (qword_1000B66B0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100003448(v58, qword_1000B93E8);
    v59 = static os_log_type_t.error.getter();
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v60._object = 0x8000000100095DB0;
    v60._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v60);
    v61._countAndFlagsBits = 0x6C6F687365726874;
    v61._object = 0xE900000000000064;
    String.append(_:)(v61);
    v62._countAndFlagsBits = 32032;
    v62._object = 0xE200000000000000;
    String.append(_:)(v62);
    v63 = *(&v123 + 1);
    sub_10005E11C(v59, v123, *(&v123 + 1), 0xD000000000000053, 0x8000000100095DF0, 64);
    v63, v64, v65, v66, v67, v68, v69, v70;
    v114 = 0;
    goto LABEL_55;
  }

  v56 = v119;
  v55 = v120;
  v57 = v120 >> 62;
  if ((v120 >> 62) > 1)
  {
    if (v57 != 2)
    {
      v114 = 0;
      goto LABEL_54;
    }

    v71 = *(v119 + 16);
    v72 = __DataStorage._bytes.getter();
    if (!v72)
    {
      goto LABEL_66;
    }

    v73 = v72;
    v74 = __DataStorage._offset.getter();
    if (!__OFSUB__(v71, v74))
    {
      v75 = (v71 - v74 + v73);
      __DataStorage._length.getter();
      if (v75)
      {
LABEL_52:
        v114 = *v75;
        goto LABEL_54;
      }

      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v57)
  {
    if (v119 <= v119 >> 32)
    {
      v76 = __DataStorage._bytes.getter();
      if (!v76)
      {
LABEL_68:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_69;
      }

      v77 = v76;
      v78 = __DataStorage._offset.getter();
      if (!__OFSUB__(v56, v78))
      {
        v75 = (v56 - v78 + v77);
        result = __DataStorage._length.getter();
        if (v75)
        {
          goto LABEL_52;
        }

LABEL_69:
        __break(1u);
        return result;
      }

      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v114 = v119;
LABEL_54:
  sub_100005A28(v56, v55);
  LOBYTE(v121) = 0;
LABEL_55:
  v80 = [a1 recordID];
  v81 = [v80 recordName];

  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = a1;
  v84 = v83;

  v85 = [v82 recordID];
  v86 = [v85 zoneID];

  v87 = [v86 zoneName];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = v82;
  v92 = [v82 modificationDate];
  if (v92)
  {
    v93 = v92;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v96 = v117;
  v95 = v118;
  (*(v117 + 56))(v9, v94, 1, v118);
  sub_1000308D0(v9, v11);
  if ((*(v96 + 48))(v11, 1, v95))
  {

    result = sub_10000BC10(v11, &qword_1000B7820, &unk_1000917B0);
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v99 = *(v96 + 16);
    v111 = v88;
    v100 = v90;
    v101 = a2;
    v102 = v84;
    v103 = v48;
    v104 = v112;
    v99(v112, v11, v95);
    sub_10000BC10(v11, &qword_1000B7820, &unk_1000917B0);
    v105 = v95;
    v97 = sub_10002F070(3);
    v98 = v106;

    v107 = v104;
    v48 = v103;
    v84 = v102;
    a2 = v101;
    v90 = v100;
    v88 = v111;
    result = (*(v96 + 8))(v107, v105);
  }

  v108 = v121;
  *a2 = v113;
  *(a2 + 8) = v84;
  v109 = v115;
  *(a2 + 16) = v116;
  *(a2 + 24) = v109;
  *(a2 + 32) = v48;
  *(a2 + 40) = v114;
  *(a2 + 44) = v108;
  *(a2 + 48) = v88;
  *(a2 + 56) = v90;
  *(a2 + 64) = v97;
  *(a2 + 72) = v98;
  return result;
}

uint64_t sub_1000308D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100030940(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003095C(uint64_t a1, int a2)
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

uint64_t sub_1000309A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100030A0C()
{
  result = qword_1000B7828;
  if (!qword_1000B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7828);
  }

  return result;
}

unint64_t sub_100030A60(void *a1)
{
  a1[1] = sub_100030A98();
  a1[2] = sub_100030AEC();
  result = sub_100030B40();
  a1[3] = result;
  return result;
}

unint64_t sub_100030A98()
{
  result = qword_1000B7830;
  if (!qword_1000B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7830);
  }

  return result;
}

unint64_t sub_100030AEC()
{
  result = qword_1000B7838;
  if (!qword_1000B7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7838);
  }

  return result;
}

unint64_t sub_100030B40()
{
  result = qword_1000B7840;
  if (!qword_1000B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7840);
  }

  return result;
}

uint64_t sub_100030B94(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000644965;
    if (a1 == 0x727574616E676973 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000100095E50 == a2)
    {
      a2, 0x8000000100095E50, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }
}

void sub_100030DA4(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002074(&qword_1000B7848, &qword_100091458);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000111EC(a1, a1[3]);
  sub_100031230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003558(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    LOBYTE(v37[0]) = 1;
    *&v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v31 + 1) = v12;
    sub_100002074(&qword_1000B7858, &qword_100091870);
    LOBYTE(v32) = 2;
    sub_1000312EC(&qword_1000B7860, &protocol witness table for UInt32, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v37[0];
    LOBYTE(v37[0]) = 3;
    v29 = 0;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = BYTE4(v13) & 1;
    LOBYTE(v37[0]) = 4;
    v27 = v13;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v14;
    v47 = 5;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = *(v6 + 8);
    v17 = v15;
    v25 = v18;
    v16(v8, v5);
    *&v32 = v9;
    *(&v32 + 1) = v11;
    v33 = v31;
    *&v34 = v30;
    DWORD2(v34) = v27;
    LODWORD(v29) = v46;
    BYTE12(v34) = v46;
    v19 = v26;
    v20 = v28;
    *&v35 = v26;
    *(&v35 + 1) = v28;
    v21 = v25;
    *&v36 = v17;
    *(&v36 + 1) = v25;
    sub_100031284(&v32, v37);
    sub_100003558(a1);
    v37[0] = v9;
    v37[1] = v11;
    v38 = v31;
    v39 = v30;
    v40 = v27;
    v41 = v29;
    v42 = v19;
    v43 = v20;
    v44 = v17;
    v45 = v21;
    sub_1000312BC(v37);
    v22 = v35;
    a2[2] = v34;
    a2[3] = v22;
    a2[4] = v36;
    v23 = v33;
    *a2 = v32;
    a2[1] = v23;
  }
}

unint64_t sub_100031230()
{
  result = qword_1000B7850;
  if (!qword_1000B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7850);
  }

  return result;
}

uint64_t sub_1000312EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003400(&qword_1000B7858, &qword_100091870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003136C()
{
  result = qword_1000B7878;
  if (!qword_1000B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7878);
  }

  return result;
}

unint64_t sub_1000313C4()
{
  result = qword_1000B7880;
  if (!qword_1000B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7880);
  }

  return result;
}

unint64_t sub_10003141C()
{
  result = qword_1000B7888;
  if (!qword_1000B7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7888);
  }

  return result;
}

void sub_100031470(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  v9 = qword_1000B7C78;
  if (qword_1000B7C78)
  {
    sub_100011DFC(a1, v8, &qword_1000B7820, &unk_1000917B0);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      v10 = v9;
      v11 = 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      v12 = v9;
      v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v3 + 8))(v8, v2);
    }

    v13 = String._bridgeToObjectiveC()();
    [v9 setValue:v11 forKey:v13];

    swift_unknownObjectRelease();
  }
}

void sub_100031688(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v4 = (a1 + 56);
  while (1)
  {
    v24 = *(v4 - 2);
    v25 = *(v4 - 1);
    v26 = *v4;
    v27 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    v50 = *v3;
    *v3 = 0x8000000000000000;
    v30 = sub_100058024(v27);
    v38 = v29[2];
    v39 = (v31 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v31;
    if (v29[3] < v41)
    {
      sub_1000595A0(v41, isUniquelyReferenced_nonNull_native);
      v30 = sub_100058024(v27);
      if ((v42 & 1) != (v31 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v43 = v50;
      if (v42)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v48 = v30;
    sub_10005A4A8();
    v30 = v48;
    v43 = v50;
    if (v42)
    {
LABEL_3:
      v5 = v43[7] + 40 * v30;
      v7 = *v5;
      v6 = *(v5 + 8);
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      *v5 = v27;
      *(v5 + 8) = &_swiftEmptyArrayStorage;
      *(v5 + 16) = &_swiftEmptyArrayStorage;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      v8, v31, v32, v33, v34, v35, v36, v37;
      v6, v10, v11, v12, v13, v14, v15, v16;

      goto LABEL_4;
    }

LABEL_11:
    v43[(v30 >> 6) + 8] |= 1 << v30;
    *(v43[6] + 8 * v30) = v27;
    v44 = v43[7] + 40 * v30;
    *v44 = v27;
    *(v44 + 8) = &_swiftEmptyArrayStorage;
    *(v44 + 16) = &_swiftEmptyArrayStorage;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    v45 = v43[2];
    v40 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v40)
    {
      goto LABEL_17;
    }

    v43[2] = v46;
    v47 = v27;
LABEL_4:
    v4 += 6;
    v3 = a2;
    *a2 = v43;

    v24, v17, v18, v19, v20, v21, v22, v23;
    if (!--v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000318A4()
{
  v2 = v1;
  sub_1000111EC((v0 + 16), *(v0 + 40));
  v3 = qword_1000B6700;

  if (v3 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v2)
  {

    v4 = static os_log_type_t.error.getter();
    sub_10005E11C(v4, 0xD00000000000003ALL, 0x8000000100096810, 0xD00000000000006ALL, 0x8000000100095F40, 361);
    sub_1000111EC((v0 + 16), *(v0 + 40));

    OS_dispatch_queue.sync<A>(execute:)();

    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v5 = qword_1000B7C78;
      v6 = String._bridgeToObjectiveC()();
      [v5 setValue:0 forKey:v6];
    }
  }

  else
  {
  }

  sub_1000111EC((v0 + 16), *(v0 + 40));

  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100031B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 336) = a4;
  *(v6 + 344) = v5;
  *(v6 + 616) = a5;
  *(v6 + 320) = a2;
  *(v6 + 328) = a3;
  *(v6 + 312) = a1;
  *(v6 + 352) = type metadata accessor for SpamDecisioningAsset(0);
  *(v6 + 360) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v6 + 368) = v7;
  *(v6 + 376) = *(v7 - 8);
  *(v6 + 384) = swift_task_alloc();
  sub_100002074(&qword_1000B79A0, &qword_100091678);
  *(v6 + 392) = swift_task_alloc();
  v8 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  *(v6 + 400) = v8;
  *(v6 + 408) = *(v8 - 8);
  *(v6 + 416) = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 424) = v9;
  *(v6 + 432) = *(v9 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v6 + 464) = v10;
  *(v6 + 472) = *(v10 - 8);
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100031D64, 0, 0);
}

id sub_100031D64()
{
  v1 = *(v0 + 320);
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000111EC(v1, v2);
  *(v0 + 488) = sub_100040C4C(v4, v2, v3);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v7 = *(v0 + 424);
  v8 = *(v0 + 432);
  v9 = *(v0 + 616);
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  (*(v8 + 16))(v5, v6, v7);
  if (v9)
  {
    v10 = *(v0 + 408);
    sub_100043EA4(*(v0 + 320), v0 + 72);
    sub_100002074(&qword_1000B79A8, &qword_100091680);
    v11 = swift_dynamicCast();
    v12 = *(v10 + 56);
    if (v11)
    {
      v13 = *(v0 + 416);
      v15 = *(v0 + 392);
      v14 = *(v0 + 400);
      v12(v15, 0, 1, v14);
      sub_10004D0EC(v15, v13, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
      v16 = *(v13 + *(v14 + 20) + 105);
      if ((v16 | 2) != 3)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
LABEL_36:
          __break(1u);
          return result;
        }

        v58 = result;
        MobileGestalt_get_externalPowerSourceConnected();
      }

      v60 = *(v0 + 376);
      v59 = *(v0 + 384);
      v61 = *(v0 + 368);
      v62 = *(v0 + 344);
      v18 = static Duration.seconds(_:)();
      v17 = v63;
      (*(v60 + 16))(v59, v62 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger, v61);
      v138 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(95);
      v64._countAndFlagsBits = 0xD000000000000034;
      v64._object = 0x8000000100095EE0;
      String.append(_:)(v64);
      v65._countAndFlagsBits = Duration.description.getter();
      object = v65._object;
      String.append(_:)(v65);
      object, v67, v68, v69, v70, v71, v72, v73;
      v74._countAndFlagsBits = 0xD000000000000010;
      v74._object = 0x80000001000960F0;
      String.append(_:)(v74);
      if (v16 > 1)
      {
        v75 = 0xE700000000000000;
        if (v16 == 2)
        {
          v76 = 0x646579616C6564;
        }

        else
        {
          v76 = 0x6E776F6E6B6E75;
        }
      }

      else if (v16)
      {
        v75 = 0xE400000000000000;
        v76 = 1684104562;
      }

      else
      {
        v75 = 0xE700000000000000;
        v76 = 0x6C617669727261;
      }

      v77 = v75;
      String.append(_:)(*&v76);
      v75, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 0xD000000000000013;
      v85._object = 0x8000000100095F20;
      String.append(_:)(v85);
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v86 = result;
        v87 = *(v0 + 416);
        v88 = *(v0 + 376);
        v89 = *(v0 + 384);
        v90 = *(v0 + 368);
        externalPowerSourceConnected = MobileGestalt_get_externalPowerSourceConnected();

        if (externalPowerSourceConnected)
        {
          v92 = 1702195828;
        }

        else
        {
          v92 = 0x65736C6166;
        }

        if (externalPowerSourceConnected)
        {
          v93 = 0xE400000000000000;
        }

        else
        {
          v93 = 0xE500000000000000;
        }

        v94 = v93;
        String.append(_:)(*&v92);
        v93, v95, v96, v97, v98, v99, v100, v101;
        v102._countAndFlagsBits = 32032;
        v102._object = 0xE200000000000000;
        String.append(_:)(v102);
        sub_10005E11C(v138, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 571);
        0xE000000000000000, v103, v104, v105, v106, v107, v108, v109;
        (*(v88 + 8))(v89, v90);
        sub_10004B9B8(v87, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(v0 + 392);
      v20 = *(v0 + 360);
      v21 = *(v0 + 320);
      v12(v19, 1, 1, *(v0 + 400));
      sub_10000BC10(v19, &qword_1000B79A0, &qword_100091678);
      v23 = v1[3];
      v22 = v1[4];
      sub_1000111EC(v21, v23);
      (*(v22 + 8))(v23, v22);

      sub_10004B9B8(v20, type metadata accessor for SpamDecisioningAsset);

      v18 = static Duration.seconds(_:)();
      v17 = v24;
      v25 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(77);
      v26._countAndFlagsBits = 0xD000000000000034;
      v26._object = 0x8000000100095EE0;
      String.append(_:)(v26);
      v27._countAndFlagsBits = Duration.description.getter();
      v28 = v27._object;
      String.append(_:)(v27);
      v28, v29, v30, v31, v32, v33, v34, v35;
      v36._countAndFlagsBits = 0xD000000000000013;
      v36._object = 0x8000000100095F20;
      String.append(_:)(v36);
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v38 = result;
        v39 = MobileGestalt_get_externalPowerSourceConnected();

        if (v39)
        {
          v40 = 1702195828;
        }

        else
        {
          v40 = 0x65736C6166;
        }

        if (v39)
        {
          v41 = 0xE400000000000000;
        }

        else
        {
          v41 = 0xE500000000000000;
        }

        v42 = v41;
        String.append(_:)(*&v40);
        v41, v43, v44, v45, v46, v47, v48, v49;
        v50._countAndFlagsBits = 32032;
        v50._object = 0xE200000000000000;
        String.append(_:)(v50);
        sub_10005E11C(v25, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 574);
        0xE000000000000000, v51, v52, v53, v54, v55, v56, v57;
        goto LABEL_31;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  v18 = *(v0 + 328);
  v17 = *(v0 + 336);
LABEL_31:
  *(v0 + 504) = v18;
  *(v0 + 512) = v17;
  *(v0 + 496) = 0x8000000100095F40;
  v110 = *(v0 + 344);
  *(v0 + 520) = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
  *(v0 + 528) = 0u;
  v111 = *(v0 + 488);
  *(v0 + 280) = 3;
  sub_100043F08();
  v112 = static Duration./ infix<A>(_:_:)();
  v114 = v113;
  *(v0 + 544) = v112;
  *(v0 + 552) = v113;
  v115 = static os_log_type_t.debug.getter();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v116 = *(v0 + 176);
  *(v0 + 152) = *(v0 + 168);
  *(v0 + 160) = v116;
  v117._countAndFlagsBits = 0xD000000000000051;
  v117._object = 0x8000000100095FB0;
  String.append(_:)(v117);
  v118._countAndFlagsBits = Duration.description.getter();
  v119 = v118._object;
  String.append(_:)(v118);
  v119, v120, v121, v122, v123, v124, v125, v126;
  v127._countAndFlagsBits = 32032;
  v127._object = 0xE200000000000000;
  String.append(_:)(v127);
  v128 = *(v0 + 160);
  sub_10005E11C(v115, *(v0 + 152), v128, 0xD00000000000006ALL, 0x8000000100095F40, 585);
  v128, v129, v130, v131, v132, v133, v134, v135;
  v136 = swift_allocObject();
  *(v136 + 16) = v111;
  *(v136 + 24) = v110;

  v137 = swift_task_alloc();
  *(v0 + 560) = v137;
  *v137 = v0;
  v137[1] = sub_1000325D4;

  return sub_100041998(sub_100041998, v112, v114, &unk_100091698, v136);
}