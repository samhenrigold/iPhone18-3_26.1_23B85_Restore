uint64_t sub_1001B362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001FC6D0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1001B36E4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100005F6C(a3, a4);
          return sub_1001B349C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001B384C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for OwnerSharedSecretsRecord(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (type metadata accessor for SharedSecretKey(), sub_1001B3B24(&qword_1005AEDA0, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v5 = sub_1001B36E4(v10, v11, v8, v9), sub_1000049D0(v8, v9), sub_1000049D0(v10, v11), v5))
  {
    v6 = static Date.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1001B3968()
{
  result = qword_1005AEDB0;
  if (!qword_1005AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDB0);
  }

  return result;
}

unint64_t sub_1001B39BC()
{
  result = qword_1005AEDB8;
  if (!qword_1005AEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDB8);
  }

  return result;
}

uint64_t sub_1001B3A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharedSecretsRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3A74(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharedSecretsRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B3AD0()
{
  result = qword_1005AEDD0;
  if (!qword_1005AEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDD0);
  }

  return result;
}

uint64_t sub_1001B3B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001B3B6C()
{
  result = qword_1005AEDE0;
  if (!qword_1005AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDE0);
  }

  return result;
}

unint64_t sub_1001B3BD4()
{
  result = qword_1005AEDE8;
  if (!qword_1005AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDE8);
  }

  return result;
}

unint64_t sub_1001B3C2C()
{
  result = qword_1005AEDF0;
  if (!qword_1005AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDF0);
  }

  return result;
}

unint64_t sub_1001B3C84()
{
  result = qword_1005AEDF8;
  if (!qword_1005AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDF8);
  }

  return result;
}

uint64_t sub_1001B3CD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000)
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

uint64_t sub_1001B3E50()
{
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v43 = v44[0];
  v1._countAndFlagsBits = 0x203A6F666E49796DLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2 = v0[3];
  v55 = v0[2];
  v56 = v2;
  v3 = v0[5];
  v57 = v0[4];
  v58 = v3;
  v4 = v0[1];
  v53 = *v0;
  v54 = v4;
  v5._countAndFlagsBits = sub_100032B70();
  String.append(_:)(v5);

  v6._object = 0x80000001004E4AD0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7 = v0[13];
  v8 = v0[11];
  v49 = v0[12];
  v50 = v7;
  v9 = v0[13];
  v10 = v0[15];
  v51 = v0[14];
  v52 = v10;
  v11 = v0[9];
  v12 = v0[7];
  v45 = v0[8];
  v46 = v11;
  v13 = v0[9];
  v14 = v0[11];
  v47 = v0[10];
  v48 = v14;
  v15 = v0[7];
  v44[0] = v0[6];
  v44[1] = v15;
  v39 = v49;
  v40 = v9;
  v16 = v0[15];
  v41 = v51;
  v42 = v16;
  v35 = v45;
  v36 = v13;
  v37 = v47;
  v38 = v8;
  v33 = v44[0];
  v34 = v12;
  sub_100005F04(v44, v32, &qword_1005A9328, &unk_1004C7F20);
  sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x437265767265730ALL;
  v18._object = 0xEF203A6769666E6FLL;
  String.append(_:)(v18);
  v19 = v0[23];
  v39 = v0[22];
  v40 = v19;
  v41 = v0[24];
  v20 = v0[19];
  v35 = v0[18];
  v36 = v20;
  v21 = v0[21];
  v37 = v0[20];
  v38 = v21;
  v22 = v0[17];
  v33 = v0[16];
  v34 = v22;
  sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x507265767265730ALL;
  v24._object = 0xEE00203A73666572;
  String.append(_:)(v24);
  v25 = v0[26];
  v26 = v0[28];
  v35 = v0[27];
  v36 = v26;
  v27 = v0[28];
  v37 = v0[29];
  v28 = v0[26];
  v33 = v0[25];
  v34 = v28;
  v32[2] = v35;
  v32[3] = v27;
  v32[4] = v0[29];
  v32[0] = v33;
  v32[1] = v25;
  sub_100005F04(&v33, &v31, &qword_1005AD7A8, &qword_1004CA280);
  sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  return v43;
}

uint64_t sub_1001B40E0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEE10, &qword_1004CFF18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1001B53EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[3];
  v10 = v3[1];
  v76 = v3[2];
  v77 = v9;
  v11 = v3[3];
  v12 = v3[5];
  v78 = v3[4];
  v79 = v12;
  v13 = v3[1];
  v75[0] = *v3;
  v75[1] = v13;
  v58 = v76;
  v59 = v11;
  v14 = v3[5];
  v60 = v78;
  v61 = v14;
  v56 = v75[0];
  v57 = v10;
  v82 = 0;
  sub_100032B38(v75, &v45);
  sub_1001B54A8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v47 = v58;
    v48 = v59;
    v49 = v60;
    v50 = v61;
    v45 = v56;
    v46 = v57;
    sub_100032B08(&v45);
  }

  else
  {
    v55[2] = v58;
    v55[3] = v59;
    v55[4] = v60;
    v55[5] = v61;
    v55[0] = v56;
    v55[1] = v57;
    sub_100032B08(v55);
    v15 = v3[13];
    v16 = v3[11];
    v71 = v3[12];
    v72 = v15;
    v17 = v3[13];
    v18 = v3[15];
    v73 = v3[14];
    v74 = v18;
    v19 = v3[9];
    v20 = v3[7];
    v67 = v3[8];
    v68 = v19;
    v21 = v3[9];
    v22 = v3[11];
    v69 = v3[10];
    v70 = v22;
    v23 = v3[7];
    v66[0] = v3[6];
    v66[1] = v23;
    v51 = v71;
    v52 = v17;
    v24 = v3[15];
    v53 = v73;
    v54 = v24;
    v47 = v67;
    v48 = v21;
    v49 = v69;
    v50 = v16;
    v45 = v66[0];
    v46 = v20;
    v81 = 1;
    sub_100005F04(v66, v44, &qword_1005A9328, &unk_1004C7F20);
    sub_100145258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v44[6] = v51;
    v44[7] = v52;
    v44[8] = v53;
    v44[9] = v54;
    v44[2] = v47;
    v44[3] = v48;
    v44[4] = v49;
    v44[5] = v50;
    v44[0] = v45;
    v44[1] = v46;
    sub_100002CE0(v44, &qword_1005A9328, &unk_1004C7F20);
    v25 = v3[23];
    v41 = v3[22];
    v42 = v25;
    v43 = v3[24];
    v26 = v3[19];
    v37 = v3[18];
    v38 = v26;
    v27 = v3[21];
    v39 = v3[20];
    v40 = v27;
    v28 = v3[17];
    v35 = v3[16];
    v36 = v28;
    LOBYTE(v34[0]) = 2;
    sub_1001B54FC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v3[26];
    v31 = v3[28];
    v63 = v3[27];
    v64 = v31;
    v32 = v3[28];
    v65 = v3[29];
    v33 = v3[26];
    v62[0] = v3[25];
    v62[1] = v33;
    v37 = v63;
    v38 = v32;
    v39 = v3[29];
    v35 = v62[0];
    v36 = v30;
    v80 = 3;
    sub_100005F04(v62, v34, &qword_1005AD7A8, &qword_1004CA280);
    sub_1001B5550();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v34[2] = v37;
    v34[3] = v38;
    v34[4] = v39;
    v34[0] = v35;
    v34[1] = v36;
    sub_100002CE0(v34, &qword_1005AD7A8, &qword_1004CA280);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001B451C()
{
  v1 = 0x6F666E49796DLL;
  v2 = 0x6769666E6F63;
  if (*v0 != 2)
  {
    v2 = 0x7366657270;
  }

  if (*v0)
  {
    v1 = 0x747865746E6F63;
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

uint64_t sub_1001B458C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001B4E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001B45B4(uint64_t a1)
{
  v2 = sub_1001B53EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B45F0(uint64_t a1)
{
  v2 = sub_1001B53EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001B462C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001B4FAC(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x1E0uLL);
  }

  return result;
}

BOOL sub_1001B4694(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1001B46EC(v4, __dst);
}

BOOL sub_1001B46EC(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[3];
  v186[2] = a1[2];
  v186[3] = v4;
  v5 = a1[5];
  v186[4] = a1[4];
  v186[5] = v5;
  v6 = a1[1];
  v186[0] = *a1;
  v186[1] = v6;
  v7 = *a2;
  v185[1] = a2[1];
  v185[0] = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v185[5] = a2[5];
  v185[4] = v10;
  v185[3] = v9;
  v185[2] = v8;
  if (!sub_1001773BC(v186, v185))
  {
    return 0;
  }

  v11 = a1[13];
  v12 = a1[11];
  v181 = a1[12];
  v182 = v11;
  v13 = a1[13];
  v14 = a1[15];
  v183 = a1[14];
  v184 = v14;
  v15 = a1[9];
  v16 = a1[7];
  v177 = a1[8];
  v178 = v15;
  v17 = a1[9];
  v18 = a1[11];
  v179 = a1[10];
  v180 = v18;
  v19 = a1[7];
  v176[0] = a1[6];
  v176[1] = v19;
  v20 = a2[13];
  v21 = a2[11];
  v172 = a2[12];
  v173 = v20;
  v22 = a2[13];
  v23 = a2[15];
  v174 = a2[14];
  v175 = v23;
  v24 = a2[9];
  v25 = a2[7];
  v168 = a2[8];
  v169 = v24;
  v26 = a2[9];
  v27 = a2[11];
  v170 = a2[10];
  v171 = v27;
  v28 = a2[7];
  v167[0] = a2[6];
  v167[1] = v28;
  v29 = a1[13];
  __src[6] = a1[12];
  __src[7] = v29;
  v30 = a1[15];
  __src[8] = a1[14];
  __src[9] = v30;
  v31 = a1[9];
  __src[2] = a1[8];
  __src[3] = v31;
  v32 = a1[11];
  __src[4] = a1[10];
  __src[5] = v32;
  v33 = a1[7];
  __src[0] = a1[6];
  __src[1] = v33;
  __src[16] = v172;
  __src[17] = v22;
  v34 = a2[15];
  __src[18] = v174;
  __src[19] = v34;
  __src[12] = v168;
  __src[13] = v26;
  __src[14] = v170;
  __src[15] = v21;
  __src[10] = v167[0];
  __src[11] = v25;
  v158[6] = v181;
  v158[7] = v13;
  v35 = a1[15];
  v158[8] = v183;
  v158[9] = v35;
  v158[2] = v177;
  v158[3] = v17;
  v158[4] = v179;
  v158[5] = v12;
  v158[0] = v176[0];
  v158[1] = v16;
  if (sub_10002D650(v158) == 1)
  {
    v36 = a2[13];
    __dst[6] = a2[12];
    __dst[7] = v36;
    v37 = a2[15];
    __dst[8] = a2[14];
    __dst[9] = v37;
    v38 = a2[9];
    __dst[2] = a2[8];
    __dst[3] = v38;
    v39 = a2[11];
    __dst[4] = a2[10];
    __dst[5] = v39;
    v40 = a2[7];
    __dst[0] = a2[6];
    __dst[1] = v40;
    if (sub_10002D650(__dst) == 1)
    {
      v41 = a1[13];
      v198 = a1[12];
      v199 = v41;
      v42 = a1[15];
      v200 = a1[14];
      v201 = v42;
      v43 = a1[9];
      v194 = a1[8];
      v195 = v43;
      v44 = a1[11];
      v196 = a1[10];
      v197 = v44;
      v45 = a1[7];
      v192 = a1[6];
      v193 = v45;
      sub_100005F04(v176, &v146, &qword_1005A9328, &unk_1004C7F20);
      sub_100005F04(v167, &v146, &qword_1005A9328, &unk_1004C7F20);
      sub_100002CE0(&v192, &qword_1005A9328, &unk_1004C7F20);
      goto LABEL_10;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_100005F04(v176, &v192, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v167, &v192, &qword_1005A9328, &unk_1004C7F20);
    v51 = &unk_1005AEE30;
    v52 = &unk_1004CFF20;
    v53 = __dst;
LABEL_7:
    sub_100002CE0(v53, v51, v52);
    return 0;
  }

  v46 = a2[13];
  v152 = a2[12];
  v153 = v46;
  v47 = a2[15];
  v154 = a2[14];
  v155 = v47;
  v48 = a2[9];
  v148 = a2[8];
  v149 = v48;
  v49 = a2[11];
  v150 = a2[10];
  v151 = v49;
  v50 = a2[7];
  v146 = a2[6];
  v147 = v50;
  if (sub_10002D650(&v146) == 1)
  {
    goto LABEL_6;
  }

  v55 = a2[13];
  v56 = a2[11];
  v123 = a2[12];
  v124 = v55;
  v57 = a2[13];
  v58 = a2[15];
  v125 = a2[14];
  v126 = v58;
  v59 = a2[9];
  v60 = a2[7];
  v119 = a2[8];
  v120 = v59;
  v61 = a2[9];
  v62 = a2[11];
  v121 = a2[10];
  v122 = v62;
  v63 = a2[7];
  v117 = a2[6];
  v118 = v63;
  __dst[6] = v123;
  __dst[7] = v57;
  v64 = a2[15];
  __dst[8] = v125;
  __dst[9] = v64;
  __dst[2] = v119;
  __dst[3] = v61;
  __dst[4] = v121;
  __dst[5] = v56;
  __dst[0] = v117;
  __dst[1] = v60;
  v65 = a1[13];
  v198 = a1[12];
  v199 = v65;
  v66 = a1[15];
  v200 = a1[14];
  v201 = v66;
  v67 = a1[9];
  v194 = a1[8];
  v195 = v67;
  v68 = a1[11];
  v196 = a1[10];
  v197 = v68;
  v69 = a1[7];
  v192 = a1[6];
  v193 = v69;
  v70 = sub_100180710(&v192, __dst);
  sub_100005F04(v176, &v127, &qword_1005A9328, &unk_1004C7F20);
  sub_100005F04(v167, &v127, &qword_1005A9328, &unk_1004C7F20);
  sub_100002CE0(&v117, &qword_1005A9328, &unk_1004C7F20);
  v71 = a1[13];
  v133 = a1[12];
  v134 = v71;
  v72 = a1[15];
  v135 = a1[14];
  v136 = v72;
  v73 = a1[9];
  v129 = a1[8];
  v130 = v73;
  v74 = a1[11];
  v131 = a1[10];
  v132 = v74;
  v75 = a1[7];
  v127 = a1[6];
  v128 = v75;
  sub_100002CE0(&v127, &qword_1005A9328, &unk_1004C7F20);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v76 = a1[23];
  v123 = a1[22];
  v124 = v76;
  v125 = a1[24];
  v77 = a1[19];
  v119 = a1[18];
  v120 = v77;
  v78 = a1[21];
  v121 = a1[20];
  v122 = v78;
  v79 = a1[17];
  v117 = a1[16];
  v118 = v79;
  if (sub_10005A3B0(&v117) == 1)
  {
    v80 = a2[23];
    __src[6] = a2[22];
    __src[7] = v80;
    __src[8] = a2[24];
    v81 = a2[19];
    __src[2] = a2[18];
    __src[3] = v81;
    v82 = a2[20];
    __src[5] = a2[21];
    __src[4] = v82;
    v83 = a2[17];
    __src[0] = a2[16];
    __src[1] = v83;
    if (sub_10005A3B0(__src) != 1)
    {
      return 0;
    }
  }

  else
  {
    v84 = a2[23];
    __src[6] = a2[22];
    __src[7] = v84;
    __src[8] = a2[24];
    v85 = a2[19];
    __src[2] = a2[18];
    __src[3] = v85;
    v86 = a2[20];
    __src[5] = a2[21];
    __src[4] = v86;
    v87 = a2[17];
    __src[0] = a2[16];
    __src[1] = v87;
    if (sub_10005A3B0(__src) == 1)
    {
      return 0;
    }

    v88 = a2[23];
    v152 = a2[22];
    v153 = v88;
    v154 = a2[24];
    v89 = a2[19];
    v148 = a2[18];
    v149 = v89;
    v90 = a2[21];
    v150 = a2[20];
    v151 = v90;
    v91 = a2[17];
    v146 = a2[16];
    v147 = v91;
    v92 = a1[23];
    v133 = a1[22];
    v134 = v92;
    v135 = a1[24];
    v93 = a1[19];
    v129 = a1[18];
    v130 = v93;
    v94 = a1[21];
    v131 = a1[20];
    v132 = v94;
    v95 = a1[17];
    v127 = a1[16];
    v128 = v95;
    if (!sub_10017723C(&v127, &v146))
    {
      return 0;
    }
  }

  v96 = a1[28];
  v164 = a1[27];
  v165 = v96;
  v166 = a1[29];
  v97 = a1[25];
  v163[1] = a1[26];
  v163[0] = v97;
  v98 = a2[28];
  v160 = a2[27];
  v161 = v98;
  v162 = a2[29];
  v99 = a2[25];
  v159[1] = a2[26];
  v159[0] = v99;
  v100 = *(&v164 + 1);
  if (*(&v164 + 1))
  {
    if (*(&v160 + 1))
    {
      v101 = *(a2 + 54);
      v102 = a2[26];
      v137[0] = a2[25];
      v137[1] = v102;
      *&v138 = v101;
      *(&v138 + 1) = *(&v160 + 1);
      v103 = a2[29];
      v139 = a2[28];
      v140 = v103;
      __src[3] = v139;
      __src[4] = v103;
      __src[0] = v137[0];
      __src[1] = v102;
      __src[2] = v138;
      v104 = a1[25];
      v105 = *(a1 + 54);
      v187[1] = a1[26];
      v187[0] = v104;
      v106 = a1[28];
      v191 = a1[29];
      v190 = v106;
      v188 = v105;
      v189 = *(&v164 + 1);
      sub_100005F04(v163, v141, &qword_1005AD7A8, &qword_1004CA280);
      sub_100005F04(v159, v141, &qword_1005AD7A8, &qword_1004CA280);
      v108 = sub_100177548(v187, __src, v107);
      sub_100002CE0(v137, &qword_1005AD7A8, &qword_1004CA280);
      v109 = a1[26];
      v141[0] = a1[25];
      v141[1] = v109;
      v142 = *(a1 + 54);
      v143 = v100;
      v110 = a1[29];
      v144 = a1[28];
      v145 = v110;
      sub_100002CE0(v141, &qword_1005AD7A8, &qword_1004CA280);
      return v108;
    }

    goto LABEL_20;
  }

  if (*(&v160 + 1))
  {
LABEL_20:
    v111 = a1[26];
    __src[0] = a1[25];
    __src[1] = v111;
    *&__src[2] = *(a1 + 54);
    *(&__src[2] + 1) = *(&v164 + 1);
    v112 = a1[29];
    __src[3] = a1[28];
    __src[4] = v112;
    v113 = a2[26];
    __src[5] = a2[25];
    __src[6] = v113;
    *&__src[7] = *(a2 + 54);
    *(&__src[7] + 1) = *(&v160 + 1);
    v114 = a2[28];
    __src[9] = a2[29];
    __src[8] = v114;
    sub_100005F04(v163, v187, &qword_1005AD7A8, &qword_1004CA280);
    sub_100005F04(v159, v187, &qword_1005AD7A8, &qword_1004CA280);
    v51 = &unk_1005AEE38;
    v52 = &unk_1004CFF28;
    v53 = __src;
    goto LABEL_7;
  }

  v115 = a1[26];
  __src[0] = a1[25];
  __src[1] = v115;
  __src[2] = *(a1 + 54);
  v116 = a1[29];
  __src[3] = a1[28];
  __src[4] = v116;
  sub_100005F04(v163, v187, &qword_1005AD7A8, &qword_1004CA280);
  sub_100005F04(v159, v187, &qword_1005AD7A8, &qword_1004CA280);
  sub_100002CE0(__src, &qword_1005AD7A8, &qword_1004CA280);
  return 1;
}

uint64_t sub_1001B4E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49796DLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7366657270 && a2 == 0xE500000000000000)
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

void *sub_1001B4FAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AEE00, &unk_1004CFF08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = a1[3];
  v49 = a1;
  sub_100011AEC(a1, v9);
  sub_1001B53EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v49);
  }

  v12 = a2;
  v41 = 0;
  sub_1000325D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48[2] = v44;
  v48[3] = v45;
  v48[4] = v46;
  v48[5] = v47;
  v48[0] = v42;
  v48[1] = v43;
  v30 = 1;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48[12] = v37;
  v48[13] = v38;
  v48[14] = v39;
  v48[15] = v40;
  v48[8] = v33;
  v48[9] = v34;
  v48[10] = v35;
  v48[11] = v36;
  v48[6] = v31;
  v48[7] = v32;
  v20 = 2;
  sub_10017E074();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48[22] = v27;
  v48[23] = v28;
  v48[24] = v29;
  v48[18] = v23;
  v48[19] = v24;
  v48[21] = v26;
  v48[20] = v25;
  v48[17] = v22;
  v48[16] = v21;
  v14[487] = 3;
  sub_10017DB0C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v48[27] = v17;
  v48[28] = v18;
  v48[29] = v19;
  v48[26] = v16;
  v48[25] = v15;
  memcpy(v13, v48, sizeof(v13));
  sub_1001B5440(v13, v14);
  sub_100004984(v49);
  memcpy(v14, v48, 0x1E0uLL);
  sub_1001B5478(v14);
  return memcpy(v12, v13, 0x1E0uLL);
}

unint64_t sub_1001B53EC()
{
  result = qword_1005AEE08;
  if (!qword_1005AEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE08);
  }

  return result;
}

unint64_t sub_1001B54A8()
{
  result = qword_1005AEE18;
  if (!qword_1005AEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE18);
  }

  return result;
}

unint64_t sub_1001B54FC()
{
  result = qword_1005AEE20;
  if (!qword_1005AEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE20);
  }

  return result;
}

unint64_t sub_1001B5550()
{
  result = qword_1005AEE28;
  if (!qword_1005AEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE28);
  }

  return result;
}

unint64_t sub_1001B55B8()
{
  result = qword_1005AEE40;
  if (!qword_1005AEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE40);
  }

  return result;
}

unint64_t sub_1001B5610()
{
  result = qword_1005AEE48;
  if (!qword_1005AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE48);
  }

  return result;
}

unint64_t sub_1001B5668()
{
  result = qword_1005AEE50;
  if (!qword_1005AEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE50);
  }

  return result;
}

uint64_t type metadata accessor for ShareInvitationRecord(uint64_t a1)
{
  result = qword_1005AEEB0;
  if (!qword_1005AEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B5730(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B57A4()
{
  _StringGuts.grow(_:)(37);

  type metadata accessor for URL();
  sub_100197D68();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x80000001004E4AF0;
  v1._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v1);
  type metadata accessor for ShareInvitationRecord(0);
  v2 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v2);

  return 0x4C52556572616873;
}

uint64_t sub_1001B5898()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AEEE8);
  v1 = sub_10000A6F0(v0, qword_1005AEEE8);
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B5960()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005DFD08);
  sub_10000A6F0(v0, qword_1005DFD08);
  return Table.init(_:database:)();
}

uint64_t sub_1001B59C8()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005DFD20);
  sub_10000A6F0(v0, qword_1005DFD20);
  return Table.init(_:database:)();
}

uint64_t sub_1001B5A34(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001B5AF8, 0, 0);
}

uint64_t sub_1001B5AF8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  sub_10004B564(&qword_1005AF108, &qword_1004D5890);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v5 + *(*v5 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 112) = v5;
  sub_10004B564(&qword_1005AF110, &unk_1004D02E0);
  swift_allocObject();
  *(v3 + 120) = AsyncStreamProvider.init()();
  v6 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_logger;
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Logger();
  v11 = sub_10000A6F0(v10, qword_1005DFED0);
  (*(*(v10 - 8) + 16))(v9 + v6, v11, v10);
  *(v9 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair) = 0;
  *(v9 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_currentVersion) = 2;
  v12 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v13 = type metadata accessor for URL();
  *(v0 + 56) = v13;
  v14 = *(v13 - 8);
  *(v0 + 64) = v14;
  (*(v14 + 16))(v9 + v12, v8, v13);
  *(v9 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_temporary) = v7;

  return _swift_task_switch(sub_1001B5DB8, v9, 0);
}

uint64_t sub_1001B5DB8()
{
  (*(v0[8] + 8))(v0[2], v0[7]);

  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t sub_1001B5E3C()
{

  v1 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B5F1C(uint64_t a1)
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

uint64_t sub_1001B6054@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001B60CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1001B6184()
{
  sub_10004B564(&qword_1005AF0F8, &qword_1004D5880);
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C1900;
  v5 = *(v0 + 112);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  (*(v2 + 16))(v4 + v3, v5 + v6, v1);
  os_unfair_lock_unlock((v5 + v7));
  AsyncStreamProvider.stream(initialEvents:)();

  return result;
}

uint64_t sub_1001B6324()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1001B640C()
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

void sub_1001B65C0(int a1, int a2)
{
  v20 = *v2;
  v21 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005AEEE8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = a1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "Migrate schema %d -> %d", v13, 0xEu);
  }

  if (a2 == 2)
  {
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v15._countAndFlagsBits = 0xD00000000000001FLL;
    v15._object = 0x80000001004E4C00;
    Connection.execute(_:)(v15);
    if (!v16)
    {
      v17._countAndFlagsBits = 0xD000000000000018;
      v17._object = 0x80000001004E4C20;
      Connection.execute(_:)(v17);
      if (!v18)
      {
LABEL_6:
        __chkstk_darwin(v14);
        UUID.init()();
        UUID.uuidString.getter();
        (*(v7 + 8))(v9, v6);
        Connection.savepoint(_:block:)();
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v22 = 0xD000000000000013;
    v23 = 0x80000001004E4BE0;
    v24 = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1001B6A54()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001B9498(&qword_1005AF100, &unk_1004D0160);
  return Database.description.getter();
}

uint64_t sub_1001B6AAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for CloudStorageDatabase(0);
  v3 = sub_1001B9498(&qword_1005AF100, &unk_1004D0160);
  *v1 = v0;
  v1[1] = sub_1001B6B7C;

  return Database.isolatedDescription.getter(v2, v3);
}

uint64_t sub_1001B6B7C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1001B6CE8()
{
  if (qword_1005A8000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005DFD08);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  else
  {

    if (qword_1005A8008 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v1, qword_1005DFD20);
    Table.create(temporary:ifNotExists:withoutRowid:block:)();
    Connection.run(_:_:)();
  }
}

double sub_1001B6E74()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v23 = &v22 - v1;
  v2 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v11 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v12 = sub_10000A6F0(v11, qword_1005DFD38);
  v13 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  v15 = *(v11 - 8);
  (*(v15 + 56))(v7, 1, 1, v11);
  type metadata accessor for UUID();
  v22 = v12;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v7, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v10, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8018 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v16, qword_1005DFD50);
  v14(v10, 1, 1, v13);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v4, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v10, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v17 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v17, qword_1005DFD68);
  v14(v10, 1, 1, v13);
  v18 = v23;
  (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v18, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v10, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C1900;
  *(v19 + 56) = v11;
  *(v19 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260, &protocol conformance descriptor for Expression<A>);
  v20 = sub_10000331C((v19 + 32));
  (*(v15 + 16))(v20, v22, v11);
  TableBuilder.unique(_:)();

  return result;
}

double sub_1001B73DC()
{
  v0 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  __chkstk_darwin(v0 - 8);
  v44 = v34 - v1;
  v2 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - v3;
  v5 = sub_10004B564(&qword_1005AF098, &qword_1004D0278);
  __chkstk_darwin(v5 - 8);
  v7 = v34 - v6;
  v8 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v15 = sub_10000A6F0(v14, qword_1005DFD38);
  v16 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v40 = *(v14 - 8);
  v18 = *(v40 + 56);
  v43 = v14;
  v18(v10, 1, 1, v14);
  type metadata accessor for UUID();
  v42 = v15;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8048 != -1)
  {
    swift_once();
  }

  v19 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v19, qword_1005DFDE0);
  v17(v13, 1, 1, v16);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1001B921C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v7, &qword_1005AF098, &qword_1004D0278);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8050 != -1)
  {
    swift_once();
  }

  v39 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v39, qword_1005DFDF8);
  v17(v13, 1, 1, v16);
  v20 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v37 = v21 + 56;
  v38 = v22;
  v22(v4, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v41 = v4;
  sub_100002CE0(v4, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8058 != -1)
  {
    swift_once();
  }

  v36 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v36, qword_1005DFE10);
  v17(v13, 1, 1, v16);
  v23 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v17;
  v27 = v44;
  v34[1] = v24 + 56;
  v35 = v25;
  v25(v44, 1, 1, v23);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v27, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8060 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v39, qword_1005DFE28);
  v26(v13, 1, 1, v16);
  v28 = v41;
  v38(v41, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v28, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8068 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v36, qword_1005DFE40);
  v26(v13, 1, 1, v16);
  v29 = v44;
  v35(v44, 1, 1, v23);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v29, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004C1900;
  v31 = v43;
  *(v30 + 56) = v43;
  *(v30 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260, &protocol conformance descriptor for Expression<A>);
  v32 = sub_10000331C((v30 + 32));
  (*(v40 + 16))(v32, v42, v31);
  TableBuilder.unique(_:)();

  return result;
}

void sub_1001B7C98()
{
  if (qword_1005A8000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005DFD08);
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {

    if (qword_1005A7FF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005AEEE8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't drop fence table: %{public}s", v5, 0xCu);
      sub_100004984(v6);
    }

    else
    {
    }
  }

  else
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

double sub_1001B7F54()
{
  v0 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  __chkstk_darwin(v0 - 8);
  v39 = v36 - v1;
  v2 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  __chkstk_darwin(v2 - 8);
  v38 = v36 - v3;
  v4 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v10 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  __chkstk_darwin(v10 - 8);
  v12 = v36 - v11;
  v13 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v13 - 8);
  v15 = v36 - v14;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v17 = sub_10000A6F0(v16, qword_1005DFD38);
  v18 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v40 = *(v16 - 8);
  v20 = *(v40 + 56);
  v42 = v16;
  v20(v12, 1, 1, v16);
  type metadata accessor for UUID();
  v41 = v17;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v12, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8018 != -1)
  {
    swift_once();
  }

  v21 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v21, qword_1005DFD50);
  v19(v15, 1, 1, v18);
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v9, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v22 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v22, qword_1005DFD68);
  v19(v15, 1, 1, v18);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v36[1] = v23 + 56;
  v37 = v24;
  v24(v6, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8028 != -1)
  {
    swift_once();
  }

  v25 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v25, qword_1005DFD80);
  v19(v15, 1, 1, v18);
  v26 = v38;
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v26, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8030 != -1)
  {
    swift_once();
  }

  v27 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v27, qword_1005DFD98);
  v19(v15, 1, 1, v18);
  v28 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  v29 = v39;
  (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v29, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v30 = v37;
  if (qword_1005A8038 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v22, qword_1005DFDB0);
  v19(v15, 1, 1, v18);
  v30(v6, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8040 != -1)
  {
    swift_once();
  }

  v31 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v31, qword_1005DFDC8);
  v19(v15, 1, 1, v18);
  v30(v6, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1004C1900;
  v33 = v42;
  *(v32 + 56) = v42;
  *(v32 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260, &protocol conformance descriptor for Expression<A>);
  v34 = sub_10000331C((v32 + 32));
  (*(v40 + 16))(v34, v41, v33);
  TableBuilder.unique(_:)();

  return result;
}

uint64_t sub_1001B8934()
{
  v0 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10004F154(v0, qword_1005DFD38);
  sub_10000A6F0(v0, qword_1005DFD38);
  sub_10001DF0C(&qword_1005AF080, &qword_1005AF078, &unk_1004D0260, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B89DC()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005DFD50);
  sub_10000A6F0(v0, qword_1005DFD50);
  sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8A8C()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005DFD68);
  sub_10000A6F0(v0, qword_1005DFD68);
  sub_10001DF0C(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8B40()
{
  v0 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10004F154(v0, qword_1005DFD80);
  sub_10000A6F0(v0, qword_1005DFD80);
  sub_10001DF0C(&qword_1005AF060, &qword_1005AF058, &unk_1004D0250, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8BFC()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFD98);
  sub_10000A6F0(v0, qword_1005DFD98);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8CB8()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005DFDB0);
  sub_10000A6F0(v0, qword_1005DFDB0);
  sub_10001DF0C(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8D70()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFDC8);
  sub_10000A6F0(v0, qword_1005DFDC8);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8E5C()
{
  v0 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10004F154(v0, qword_1005DFDE0);
  sub_10000A6F0(v0, qword_1005DFDE0);
  sub_10001DF0C(&qword_1005AF0E0, &qword_1005AF0B8, &qword_1004D5850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8F1C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFDF8);
  sub_10000A6F0(v0, qword_1005DFDF8);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8FDC()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFE10);
  sub_10000A6F0(v0, qword_1005DFE10);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B909C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFE28);
  sub_10000A6F0(v0, qword_1005DFE28);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B915C()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFE40);
  sub_10000A6F0(v0, qword_1005DFE40);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

unint64_t sub_1001B921C()
{
  result = qword_1005AF0C0;
  if (!qword_1005AF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF0C0);
  }

  return result;
}

uint64_t sub_1001B9270()
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
    sub_100005F6C(v7, v9);
    sub_1000CA210();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_1000049D0(v12, v9);
    return v10;
  }

  return result;
}

uint64_t sub_1001B9498(unint64_t *a1, uint64_t a2)
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

uint64_t sub_1001B94DC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001B9588(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1001B96B0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFE80);
  v1 = sub_10000A6F0(v0, qword_1005DFE80);
  if (qword_1005A8078 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFE98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B9778()
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

  return _swift_task_switch(sub_1001B98A0, 0, 0);
}

uint64_t sub_1001B98A0()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001004D0310;
  if (qword_1005A85D0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_10000A6F0(v3, qword_1005E0D68);
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
  v7[1] = sub_1001B99F4;
  v8 = v0[9];

  return sub_1001B5A34(v8, 0);
}

uint64_t sub_1001B99F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1001BA230;
  }

  else
  {
    *(v4 + 120) = a1;
    type metadata accessor for CloudStorageStore(0);
    *(v4 + 128) = swift_allocObject();
    v5 = sub_1001B9B30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B9B30()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_defaultActor_initialize();
  strcpy((v2 + 120), "CloudStorage");
  *(v2 + 133) = 0;
  *(v2 + 134) = -5120;
  type metadata accessor for CloudStorageStore.State(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations) = _swiftEmptyDictionarySingleton;
  *(v2 + 112) = v1;

  return _swift_task_switch(sub_1001B9BFC, 0, 0);
}

uint64_t sub_1001B9BFC()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  *(v0[2] + 128) = v0[16];
  v0[17] = type metadata accessor for CloudKitStorage();
  v1(v3, v2, v4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1001B9CD4;

  return daemon.getter();
}

uint64_t sub_1001B9CD4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1001B9DD4, 0, 0);
}

uint64_t sub_1001B9DD4()
{
  v1 = v0[4];
  v2 = v0[2];
  v17 = v0[3];
  v18 = v0[5];
  type metadata accessor for Daemon();
  sub_1001C2BFC(&qword_1005AF270, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = ActorDaemon.bundleIdentifier.getter();
  v19 = v4;
  v20 = v3;

  v5 = *(v2 + 128);
  v6 = sub_1001C2BFC(&qword_1005AF278, 255, type metadata accessor for CloudStorageStore, &unk_1004D0630);
  sub_10004B564(&qword_1005AF280, &qword_1004D0498);
  v7 = type metadata accessor for CloudKitCoordinator.Database();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C2310;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for CloudKitCoordinator.Database.private(_:), v7);
  v13(v12 + v9, enum case for CloudKitCoordinator.Database.shared(_:), v7);
  (*(v1 + 104))(v18, enum case for IdentityLossResolutionMode.legacy(_:), v17);

  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_1001BA080;
  v15 = v0[8];

  return CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(v15, 0xD00000000000001ALL, 0x80000001004E4D40, v20, v19, v5, v6, v11);
}

uint64_t sub_1001BA080(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1001BA2F0;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_1001BA1A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BA1A8()
{
  *(v0[2] + 136) = v0[22];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_1001BA230()
{

  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BA2F0()
{

  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BA3D8()
{
  v1 = objc_allocWithZone(CKContainerID);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithContainerIdentifier:v2 environment:1];
  v0[20] = v3;

  v4 = [objc_allocWithZone(CKContainer) initWithContainerID:v3];
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001BA570;
  v5 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005AF268, &qword_1004D0488);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001BA774;
  v0[13] = &unk_100596948;
  v0[14] = v5;
  [v4 fetchUserRecordIDWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001BA570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_1001BA6FC;
  }

  else
  {
    v4 = sub_1001BA690;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001BA690()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001BA6FC(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1001BA774(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011AEC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001BA84C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[23] = swift_task_alloc();
  v2[24] = *(type metadata accessor for FenceRecord(0) - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001BA9D8, 0, 0);
}

uint64_t sub_1001BA9D8()
{
  v0[34] = *(v0[22] + 128);
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1001BAA70;

  return sub_1000078C8();
}

uint64_t sub_1001BAA70(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 288) = a1;

    return _swift_task_switch(sub_1001BAC1C, 0, 0);
  }
}

uint64_t sub_1001BAC1C()
{
  v1 = *(v0 + 176);
  *(v0 + 296) = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_1001BAC94, v1, 0);
}

uint64_t sub_1001BAC94()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[24];
    sub_1002394E8(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v55 = *(v4 + 72);
    do
    {
      v6 = v0[33];
      v8 = v0[29];
      v7 = v0[30];
      sub_1001C2B80(v5, v8);
      (*(v3 + 16))(v6, v8, v7);
      sub_1001769EC(v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1002394E8((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[33];
      v12 = v0[30];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v55;
      --v2;
    }

    while (v2);
  }

  v13 = v0[21];
  v0[38] = sub_10023F15C(_swiftEmptyArrayStorage);

  v18 = 0;
  v19 = *(v13 + 16);
  v20 = v13 - 520;
  v21 = _swiftEmptyArrayStorage;
LABEL_7:
  v22 = (v20 + 584 * v18);
  while (v19 != v18)
  {
    if (v18 >= v19)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_33;
    }

    v24 = v22[74];
    v22 += 73;
    ++v18;
    if (v24)
    {
      v25 = *v22;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1001FC900(0, *(v21 + 2) + 1, 1, v21);
        v21 = isUniquelyReferenced_nonNull_native;
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1001FC900((v26 > 1), v27 + 1, 1, v21);
        v21 = isUniquelyReferenced_nonNull_native;
      }

      *(v21 + 2) = v27 + 1;
      v28 = &v21[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      v18 = v23;
      goto LABEL_7;
    }
  }

  v54 = *(v21 + 2);
  v56 = v21;
  if (v54)
  {
    v29 = v21;
    v30 = 0;
    v31 = v0[31];
    v32 = (v31 + 48);
    v53 = v31;
    v33 = (v31 + 32);
    v34 = v29 + 40;
    v35 = _swiftEmptyArrayStorage;
    while (v30 < *(v56 + 2))
    {
      v36 = v0[30];
      v37 = v0[23];

      UUID.init(uuidString:)();

      if ((*v32)(v37, 1, v36) == 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100002CE0(v0[23], &qword_1005A96E0, &qword_1004C2A80);
      }

      else
      {
        v38 = *v33;
        (*v33)(v0[32], v0[23], v0[30]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001FD1A0(0, *(v35 + 2) + 1, 1, v35);
        }

        v40 = *(v35 + 2);
        v39 = *(v35 + 3);
        if (v40 >= v39 >> 1)
        {
          v35 = sub_1001FD1A0((v39 > 1), v40 + 1, 1, v35);
        }

        v41 = v0[32];
        v42 = v0[30];
        *(v35 + 2) = v40 + 1;
        isUniquelyReferenced_nonNull_native = v38(&v35[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40], v41, v42);
      }

      ++v30;
      v34 += 16;
      if (v54 == v30)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_29:

  v0[39] = sub_10023F15C(v35);

  v43 = objc_allocWithZone(CKContainerID);
  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 initWithContainerIdentifier:v44 environment:1];
  v0[40] = v45;

  v46 = [objc_allocWithZone(CKContainer) initWithContainerID:v45];
  v0[41] = v46;
  v47 = [objc_opt_self() predicateWithValue:1];
  v0[42] = v47;
  sub_1000545A4(0, &qword_1005AF248, CKQuery_ptr);
  v48 = v47;
  v49._countAndFlagsBits = 0x65636E6546;
  v49._object = 0xE500000000000000;
  isa = CKQuery.init(recordType:predicate:)(v49, v48).super.isa;
  v0[43] = isa;
  v0[44] = [v46 privateCloudDatabase];
  v51 = swift_task_alloc();
  v0[45] = v51;
  *v51 = v0;
  v51[1] = sub_1001BB20C;
  isUniquelyReferenced_nonNull_native = isa;
  v15 = 0;
  v16 = 0;
  v17 = CKQueryOperationMaximumResults;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
}

uint64_t sub_1001BB20C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 368) = a1;
  *(v4 + 376) = a2;
  *(v4 + 384) = v2;

  if (v2)
  {
    v5 = *(v4 + 176);
    v6 = sub_1001BD9EC;
  }

  else
  {
    v7 = *(v4 + 176);

    v6 = sub_1001BB338;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001BB338()
{
  v44 = v0;
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 392) = v2;

  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 384);
  *(v0 + 400) = 0;
  if (!*(v1 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = *(v1 + 32);
  *(v0 + 408) = v4;
  v2 = *(v1 + 40);
  *(v0 + 416) = v2;
  if (*(v1 + 48))
  {
LABEL_4:
    v42 = *(v0 + 376);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_1001C2BE4(v2, 1);
    sub_1001C2BE4(v2, 1);
    v9 = v4;

    *(v0 + 144) = v2;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v2, 1);

LABEL_7:

    v17 = *(v0 + 8);

    return v17();
  }

  v10 = *(v0 + 224);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  v11 = v4;
  sub_1001A2D68(v2, v10);
  if (v3)
  {
    v12 = *(v0 + 376);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 328);
    swift_bridgeObjectRelease_n();

    sub_1001C2BF0(v2, 0);
    sub_1001C2BF0(v2, 0);

    goto LABEL_7;
  }

  if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
  {
LABEL_12:
    if (qword_1005A8070 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFE80);
    sub_1001C2B80(v19, v20);
    v3 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v3, v22);
    v1 = *(v0 + 216);
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136642819;
      v26 = sub_1001A42B8();
      v28 = v27;
      sub_1001769EC(v1);
      v29 = sub_10000D01C(v26, v28, &v43);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v3, v22, "Found new CKFence in private db: %{sensitive}s", v24, 0xCu);
      sub_100004984(v25);

LABEL_28:
      sub_10004B564(&qword_1005AF250, &qword_1004D0478);
      v39 = swift_allocObject();
      *(v0 + 424) = v39;
      *(v39 + 16) = xmmword_1004D02F0;
      *(v39 + 32) = v2;
      v40 = v2;
      v41 = swift_task_alloc();
      *(v0 + 432) = v41;
      *v41 = v0;
      v41[1] = sub_1001BBA14;

      return sub_1001C2F40(_swiftEmptyArrayStorage, v39, 0);
    }

LABEL_27:

    sub_1001769EC(v1);
    goto LABEL_28;
  }

  sub_1001C2BF0(v2, 0);
  v2 = *(v0 + 392);
  v30 = *(v0 + 224);
  v3 = (*(v0 + 400) + 1);
  sub_1001C2BF0(*(v0 + 416), 0);
  sub_1001769EC(v30);
  if (v3 != v2)
  {
    v34 = *(v0 + 400) + 1;
    *(v0 + 400) = v34;
    v1 = *(v0 + 368);
    if (v34 < *(v1 + 16))
    {
      while (1)
      {
        v35 = v1 + 24 * v34;
        v4 = *(v35 + 32);
        *(v0 + 408) = v4;
        v2 = *(v35 + 40);
        *(v0 + 416) = v2;
        if (*(v35 + 48))
        {
          goto LABEL_4;
        }

        v36 = *(v0 + 224);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        v37 = v4;
        sub_1001A2D68(v2, v36);
        if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
        {
          goto LABEL_12;
        }

        sub_1001C2BF0(v2, 0);
        v2 = *(v0 + 392);
        v38 = *(v0 + 224);
        v3 = (*(v0 + 400) + 1);
        sub_1001C2BF0(*(v0 + 416), 0);
        sub_1001769EC(v38);
        if (v3 == v2)
        {
          goto LABEL_17;
        }

        v34 = *(v0 + 400) + 1;
        *(v0 + 400) = v34;
        v1 = *(v0 + 368);
        if (v34 >= *(v1 + 16))
        {
          goto LABEL_26;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_17:
  v31 = *(v0 + 328);

  v32 = [v31 sharedCloudDatabase];
  *(v0 + 448) = v32;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_1001BC280;
  v33 = swift_continuation_init();
  *(v0 + 136) = sub_10004B564(&qword_1005AF258, &qword_1004D0480);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001BDF3C;
  *(v0 + 104) = &unk_100596920;
  *(v0 + 112) = v33;
  [v32 fetchAllRecordZonesWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001BBA14()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_1001BDAE4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 176);

    v4 = sub_1001BBB84;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001BBB84()
{
  v54 = v0;
  v1 = *(v0 + 408);
  sub_1001C2BF0(*(v0 + 416), 0);

  v2 = *(v0 + 440);
  v3 = *(v0 + 392);
  v4 = *(v0 + 224);
  v5 = *(v0 + 400) + 1;
  sub_1001C2BF0(*(v0 + 416), 0);
  sub_1001769EC(v4);
  if (v5 == v3)
  {
LABEL_2:
    v6 = *(v0 + 328);

    v7 = [v6 sharedCloudDatabase];
    *(v0 + 448) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1001BC280;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_10004B564(&qword_1005AF258, &qword_1004D0480);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001BDF3C;
    *(v0 + 104) = &unk_100596920;
    *(v0 + 112) = v8;
    [v7 fetchAllRecordZonesWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v9 = *(v0 + 400) + 1;
  *(v0 + 400) = v9;
  v10 = *(v0 + 368);
  if (v9 >= *(v10 + 16))
  {
    goto LABEL_30;
  }

  v11 = v10 + 24 * v9;
  v12 = *(v11 + 32);
  *(v0 + 408) = v12;
  v3 = *(v11 + 40);
  *(v0 + 416) = v3;
  if (*(v11 + 48))
  {
LABEL_7:
    v52 = *(v0 + 376);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 328);
    sub_1001C2BE4(v3, 1);
    sub_1001C2BE4(v3, 1);
    v17 = v12;

    *(v0 + 144) = v3;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v3, 1);

LABEL_10:

    v25 = *(v0 + 8);

    return v25();
  }

  v18 = *(v0 + 224);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  v19 = v12;
  sub_1001A2D68(v3, v18);
  if (v2)
  {
    v20 = *(v0 + 376);
    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v23 = *(v0 + 320);
    v24 = *(v0 + 328);
    swift_bridgeObjectRelease_n();

    sub_1001C2BF0(v3, 0);
    sub_1001C2BF0(v3, 0);

    goto LABEL_10;
  }

  if ((sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) != 0 || (sub_10021B5B8(*(v0 + 224), *(v0 + 312)) & 1) == 0)
  {

    sub_1001C2BF0(v3, 0);
    v3 = *(v0 + 392);
    v39 = *(v0 + 224);
    v40 = *(v0 + 400) + 1;
    sub_1001C2BF0(*(v0 + 416), 0);
    sub_1001769EC(v39);
    if (v40 == v3)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v43 = *(v0 + 400) + 1;
      *(v0 + 400) = v43;
      v44 = *(v0 + 368);
      if (v43 >= *(v44 + 16))
      {
        break;
      }

      v45 = v44 + 24 * v43;
      v12 = *(v45 + 32);
      *(v0 + 408) = v12;
      v3 = *(v45 + 40);
      *(v0 + 416) = v3;
      if (*(v45 + 48))
      {
        goto LABEL_7;
      }

      v46 = *(v0 + 224);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      v47 = v12;
      sub_1001A2D68(v3, v46);
      if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
      {
        goto LABEL_15;
      }

      sub_1001C2BF0(v3, 0);
      v3 = *(v0 + 392);
      v41 = *(v0 + 224);
      v42 = *(v0 + 400) + 1;
      sub_1001C2BF0(*(v0 + 416), 0);
      sub_1001769EC(v41);
      if (v42 == v3)
      {
        goto LABEL_2;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_15:
  if (qword_1005A8070 != -1)
  {
LABEL_31:
    swift_once();
  }

  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFE80);
  sub_1001C2B80(v26, v27);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 216);
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53 = v34;
    *v33 = 136642819;
    v35 = sub_1001A42B8();
    v37 = v36;
    sub_1001769EC(v32);
    v38 = sub_10000D01C(v35, v37, &v53);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Found new CKFence in private db: %{sensitive}s", v33, 0xCu);
    sub_100004984(v34);
  }

  else
  {

    sub_1001769EC(v32);
  }

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v48 = swift_allocObject();
  *(v0 + 424) = v48;
  *(v48 + 16) = xmmword_1004D02F0;
  *(v48 + 32) = v3;
  v49 = v3;
  v50 = swift_task_alloc();
  *(v0 + 432) = v50;
  *v50 = v0;
  v50[1] = sub_1001BBA14;

  return sub_1001C2F40(_swiftEmptyArrayStorage, v48, 0);
}

uint64_t sub_1001BC280()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = *(v1 + 176);

    v4 = sub_1001BDBFC;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 176);
    v4 = sub_1001BC3B0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001BC3B0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 152);
  *(v0 + 464) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 472) = v5;
  v6 = *(v0 + 464);
  if (v5)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v5, v6, v3, v4);
      }

      v7 = *(v6 + 4);
    }

    v8 = v7;
    *(v0 + 480) = v7;
    *(v0 + 488) = 1;
    *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
    v9 = [v8 zoneID];
    *(v0 + 504) = v9;
    v10 = swift_task_alloc();
    *(v0 + 512) = v10;
    *v10 = v0;
    v10[1] = sub_1001BC620;
    v5 = *(v0 + 344);
    v6 = v9;
    v3 = 0;
    v4 = 10;

    return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v5, v6, v3, v4);
  }

  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v17 = *(v0 + 376);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001BC620(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[65] = a1;
  v5[66] = a2;
  v5[67] = v2;

  v6 = v4[63];
  v7 = v4[62];
  if (v2)
  {
    v8 = v5[22];

    v9 = sub_1001BDCFC;
    v10 = v8;
  }

  else
  {
    v11 = v5[22];

    v9 = sub_1001BC7BC;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1001BC7BC()
{
  v59 = v0;
  v1 = *(v0 + 520);
  v2 = *(v1 + 16);
  *(v0 + 544) = v2;

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 536);
  *(v0 + 552) = 0;
  if (!*(v1 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = *(v1 + 32);
  *(v0 + 560) = v4;
  v2 = *(v1 + 40);
  *(v0 + 568) = v2;
  if (*(v1 + 48))
  {
LABEL_4:
    v5 = *(v0 + 480);
    v54 = *(v0 + 528);
    v56 = *(v0 + 376);
    v6 = *(v0 + 344);
    v51 = *(v0 + 336);
    v7 = *(v0 + 328);
    v53 = *(v0 + 320);
    sub_1001C2BE4(v2, 1);
    sub_1001C2BE4(v2, 1);
    v8 = v4;

    *(v0 + 160) = v2;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v2, 1);

LABEL_7:

    v13 = *(v0 + 8);
LABEL_16:

    return v13();
  }

  v9 = *(v0 + 208);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  v10 = v4;
  sub_1001A2D68(v2, v9);
  if (v3)
  {
    v55 = *(v0 + 376);
    v57 = *(v0 + 528);
    v11 = *(v0 + 344);
    v50 = *(v0 + 336);
    v12 = *(v0 + 328);
    v52 = *(v0 + 320);

    sub_1001C2BF0(v2, 0);

    sub_1001C2BF0(v2, 0);
    swift_bridgeObjectRelease_n();

    goto LABEL_7;
  }

  if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
  {
LABEL_10:
    if (qword_1005A8070 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  sub_1001C2BF0(v2, 0);
  v2 = *(v0 + 544);
  v25 = *(v0 + 208);
  v3 = (*(v0 + 552) + 1);
  sub_1001C2BF0(*(v0 + 568), 0);
  sub_1001769EC(v25);
  if (v3 != v2)
  {
    v41 = *(v0 + 552) + 1;
    *(v0 + 552) = v41;
    v1 = *(v0 + 520);
    if (v41 < *(v1 + 16))
    {
      while (1)
      {
        v42 = v1 + 24 * v41;
        v4 = *(v42 + 32);
        *(v0 + 560) = v4;
        v2 = *(v42 + 40);
        *(v0 + 568) = v2;
        if (*(v42 + 48))
        {
          goto LABEL_4;
        }

        v43 = *(v0 + 208);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        v44 = v4;
        sub_1001A2D68(v2, v43);
        if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
        {
          goto LABEL_10;
        }

        sub_1001C2BF0(v2, 0);
        v2 = *(v0 + 544);
        v45 = *(v0 + 208);
        v3 = (*(v0 + 552) + 1);
        sub_1001C2BF0(*(v0 + 568), 0);
        sub_1001769EC(v45);
        if (v3 == v2)
        {
          goto LABEL_14;
        }

        v41 = *(v0 + 552) + 1;
        *(v0 + 552) = v41;
        v1 = *(v0 + 520);
        if (v41 >= *(v1 + 16))
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_14:
  v26 = *(v0 + 528);
  v28 = *(v0 + 480);
  v27 = *(v0 + 488);
  v29 = *(v0 + 472);
  swift_bridgeObjectRelease_n();

  if (v27 == v29)
  {
    v31 = *(v0 + 336);
    v30 = *(v0 + 344);
    v32 = *(v0 + 320);
    v33 = *(v0 + 328);
    v49 = *(v0 + 376);

    v13 = *(v0 + 8);
    goto LABEL_16;
  }

  v2 = *(v0 + 488);
  v35 = *(v0 + 464);
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v2 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
LABEL_11:
      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v16 = type metadata accessor for Logger();
      sub_10000A6F0(v16, qword_1005DFE80);
      sub_1001C2B80(v14, v15);
      v3 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v3, v17);
      v1 = *(v0 + 200);
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v58 = v20;
        *v19 = 136642819;
        v21 = sub_1001A42B8();
        v23 = v22;
        sub_1001769EC(v1);
        v24 = sub_10000D01C(v21, v23, &v58);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v3, v17, "Found new CKFence in shared db: %{sensitive}s", v19, 0xCu);
        sub_100004984(v20);

LABEL_34:
        sub_10004B564(&qword_1005AF250, &qword_1004D0478);
        v46 = swift_allocObject();
        *(v0 + 576) = v46;
        *(v46 + 16) = xmmword_1004D02F0;
        *(v46 + 32) = v2;
        v47 = v2;
        v48 = swift_task_alloc();
        *(v0 + 584) = v48;
        *v48 = v0;
        v48[1] = sub_1001BD000;

        return sub_1001C2F40(_swiftEmptyArrayStorage, v46, 0);
      }

LABEL_33:

      sub_1001769EC(v1);
      goto LABEL_34;
    }

    v36 = *(v35 + 8 * v2 + 32);
  }

  v37 = v36;
  *(v0 + 480) = v36;
  *(v0 + 488) = &v2->isa + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
  v38 = [v37 zoneID];
  *(v0 + 504) = v38;
  v39 = swift_task_alloc();
  *(v0 + 512) = v39;
  *v39 = v0;
  v39[1] = sub_1001BC620;
  v40 = *(v0 + 344);

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v40, v38, 0, 10);
}

uint64_t sub_1001BD000()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_1001BDDF0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 176);

    v4 = sub_1001BD180;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001BD180()
{
  v69 = v0;
  v1 = *(v0 + 560);
  sub_1001C2BF0(*(v0 + 568), 0);

  v2 = *(v0 + 592);
  v3 = *(v0 + 544);
  v4 = *(v0 + 208);
  v5 = *(v0 + 552) + 1;
  sub_1001C2BF0(*(v0 + 568), 0);
  sub_1001769EC(v4);
  if (v5 == v3)
  {
LABEL_2:
    v6 = *(v0 + 528);
    v8 = *(v0 + 480);
    v7 = *(v0 + 488);
    v9 = *(v0 + 472);
    swift_bridgeObjectRelease_n();

    if (v7 == v9)
    {
      v11 = *(v0 + 336);
      v10 = *(v0 + 344);
      v12 = *(v0 + 320);
      v13 = *(v0 + 328);
      v59 = *(v0 + 376);

      v14 = *(v0 + 8);
LABEL_17:

      return v14();
    }

    v3 = *(v0 + 488);
    v23 = *(v0 + 464);
    if ((v23 & 0xC000000000000001) == 0)
    {
      if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v24 = *(v23 + 8 * v3 + 32);
LABEL_10:
      v25 = v24;
      *(v0 + 480) = v24;
      *(v0 + 488) = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
        v26 = [v25 zoneID];
        *(v0 + 504) = v26;
        v27 = swift_task_alloc();
        *(v0 + 512) = v27;
        *v27 = v0;
        v27[1] = sub_1001BC620;
        v28 = *(v0 + 344);

        return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v28, v26, 0, 10);
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  v15 = *(v0 + 552) + 1;
  *(v0 + 552) = v15;
  v16 = *(v0 + 520);
  if (v15 >= *(v16 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = v16 + 24 * v15;
  v18 = *(v17 + 32);
  *(v0 + 560) = v18;
  v3 = *(v17 + 40);
  *(v0 + 568) = v3;
  if (*(v17 + 48))
  {
LABEL_6:
    v19 = *(v0 + 480);
    v64 = *(v0 + 528);
    v66 = *(v0 + 376);
    v20 = *(v0 + 344);
    v61 = *(v0 + 336);
    v21 = *(v0 + 328);
    v63 = *(v0 + 320);
    sub_1001C2BE4(v3, 1);
    sub_1001C2BE4(v3, 1);
    v22 = v18;

    *(v0 + 160) = v3;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v3, 1);

LABEL_16:

    v14 = *(v0 + 8);
    goto LABEL_17;
  }

  v29 = *(v0 + 208);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  v30 = v18;
  sub_1001A2D68(v3, v29);
  if (v2)
  {
    v65 = *(v0 + 376);
    v67 = *(v0 + 528);
    v31 = *(v0 + 344);
    v60 = *(v0 + 336);
    v32 = *(v0 + 328);
    v62 = *(v0 + 320);

    sub_1001C2BF0(v3, 0);

    sub_1001C2BF0(v3, 0);
    swift_bridgeObjectRelease_n();

    goto LABEL_16;
  }

  if ((sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) != 0 || (sub_10021B5B8(*(v0 + 208), *(v0 + 312)) & 1) == 0)
  {

    sub_1001C2BF0(v3, 0);
    v3 = *(v0 + 544);
    v46 = *(v0 + 208);
    v47 = *(v0 + 552) + 1;
    sub_1001C2BF0(*(v0 + 568), 0);
    sub_1001769EC(v46);
    if (v47 == v3)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v50 = *(v0 + 552) + 1;
      *(v0 + 552) = v50;
      v51 = *(v0 + 520);
      if (v50 >= *(v51 + 16))
      {
        goto LABEL_37;
      }

      v52 = v51 + 24 * v50;
      v18 = *(v52 + 32);
      *(v0 + 560) = v18;
      v3 = *(v52 + 40);
      *(v0 + 568) = v3;
      if (*(v52 + 48))
      {
        goto LABEL_6;
      }

      v53 = *(v0 + 208);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      v54 = v18;
      sub_1001A2D68(v3, v53);
      if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
      {
        break;
      }

      sub_1001C2BF0(v3, 0);
      v3 = *(v0 + 544);
      v48 = *(v0 + 208);
      v49 = *(v0 + 552) + 1;
      sub_1001C2BF0(*(v0 + 568), 0);
      sub_1001769EC(v48);
      if (v49 == v3)
      {
        goto LABEL_2;
      }
    }
  }

  if (qword_1005A8070 != -1)
  {
LABEL_41:
    swift_once();
  }

  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005DFE80);
  sub_1001C2B80(v33, v34);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 200);
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v68 = v41;
    *v40 = 136642819;
    v42 = sub_1001A42B8();
    v44 = v43;
    sub_1001769EC(v39);
    v45 = sub_10000D01C(v42, v44, &v68);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Found new CKFence in shared db: %{sensitive}s", v40, 0xCu);
    sub_100004984(v41);
  }

  else
  {

    sub_1001769EC(v39);
  }

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v55 = swift_allocObject();
  *(v0 + 576) = v55;
  *(v55 + 16) = xmmword_1004D02F0;
  *(v55 + 32) = v3;
  v56 = v3;
  v57 = swift_task_alloc();
  *(v0 + 584) = v57;
  *v57 = v0;
  v57[1] = sub_1001BD000;

  return sub_1001C2F40(_swiftEmptyArrayStorage, v55, 0);
}

uint64_t sub_1001BD9EC()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001BDAE4()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 376);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v7 = *(v0 + 224);

  sub_1001C2BF0(v1, 0);
  sub_1001C2BF0(v1, 0);

  sub_1001769EC(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001BDBFC(uint64_t a1)
{
  v2 = v1[56];
  v3 = v1[47];
  v5 = v1[42];
  v4 = v1[43];
  v7 = v1[40];
  v6 = v1[41];
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1001BDCFC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 376);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001BDDF0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 480);
  v10 = *(v0 + 528);
  v11 = *(v0 + 376);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v7 = *(v0 + 208);

  sub_1001C2BF0(v1, 0);
  sub_1001C2BF0(v1, 0);

  sub_1001769EC(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001BDF3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000545A4(0, &qword_1005AF260, CKRecordZone_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1001BE04C()
{
  v3 = (&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001BE0F4;

  return v3();
}

uint64_t sub_1001BE0F4(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001BE20C, v2, 0);
}

uint64_t sub_1001BE20C()
{
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFE80);
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

uint64_t sub_1001BE334()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BE37C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1001BE424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloudStorageService();
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1001BE4E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1001BE590(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CloudStorageService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1001BE638()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001BE6CC;

  return daemon.getter();
}

uint64_t sub_1001BE6CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_1001C2BFC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001C2BFC(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_1001BE8B0;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_1001BE8B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10013A3F0, v5, 0);
  }

  else
  {

    v8 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_1001BEA54;

    return v8();
  }
}

uint64_t sub_1001BEA54()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1001BEB64, v1, 0);
}

uint64_t sub_1001BEB64()
{
  v3 = (&async function pointer to dispatch thunk of CloudKitStorage.startup() + async function pointer to dispatch thunk of CloudKitStorage.startup());
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1001BEC0C;

  return v3();
}

uint64_t sub_1001BEC0C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1001BED38;
  }

  else
  {
    v4 = sub_100016108;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001BED38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BED9C()
{
  type metadata accessor for CloudStorageService();
  sub_1001C2BFC(&qword_1005AD568, v0, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1001BEE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for CloudKitCoordinator.Database();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_10004B564(&qword_1005AF228, &unk_1004D0440);
  v4[10] = swift_task_alloc();
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001BEFC8, 0, 0);
}

uint64_t sub_1001BEFC8()
{
  v0[12] = *(v0[6] + 136);
  v0[13] = sub_1000545A4(0, &qword_1005AE728, CKRecordZoneID_ptr);
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v0[14] = CKCurrentUserDefaultName;
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2._object = v3;
  v4._countAndFlagsBits = 0x2D65636E6546;
  v4._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v4, v2).super.isa;
  v6 = [(objc_class *)isa zoneName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[15] = v9;
  v12 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1001BF148;

  return v12(v7, v9);
}

uint64_t sub_1001BF148()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001C0B60;
  }

  else
  {

    v2 = sub_1001BF264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BF264(__n128 a1)
{
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0x2D65636E6546;
  v5._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7 = [(objc_class *)isa zoneName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v1 + 144) = v10;
  v13 = (&async function pointer to dispatch thunk of CloudKitStorage.isShared(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.isShared(zoneName:));
  v11 = swift_task_alloc();
  *(v1 + 152) = v11;
  *v11 = v1;
  v11[1] = sub_1001BF3B0;

  return v13(v8, v10);
}

uint64_t sub_1001BF3B0(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1001C0BE8;
  }

  else
  {

    *(v4 + 360) = a1 & 1;
    v5 = sub_1001BF4E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BF4E4(__n128 a1)
{
  if (*(v1 + 360))
  {
    v2 = Handle.isPhoneNumber.getter();
    v3 = Handle.identifier.getter();
    v5 = v4;
    *(v1 + 192) = v4;
    if (v2)
    {
      v21 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:));
      v6 = swift_task_alloc();
      *(v1 + 200) = v6;
      *v6 = v1;
      v7 = sub_1001BF950;
    }

    else
    {
      v21 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:));
      v6 = swift_task_alloc();
      *(v1 + 216) = v6;
      *v6 = v1;
      v7 = sub_1001BFA80;
    }

    v6[1] = v7;
    v18 = v3;
    v19 = v5;
  }

  else
  {
    v8._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9._object = v10;
    v11._countAndFlagsBits = 0x2D65636E6546;
    v11._object = 0xE600000000000000;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v11, v9).super.isa;
    v13 = [(objc_class *)isa zoneName];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v1 + 168) = v16;
    v21 = (&async function pointer to dispatch thunk of CloudKitStorage.share(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.share(zoneName:));
    v17 = swift_task_alloc();
    *(v1 + 176) = v17;
    *v17 = v1;
    v17[1] = sub_1001BF70C;
    v18 = v14;
    v19 = v16;
  }

  return v21(v18, v19);
}

uint64_t sub_1001BF70C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1001C0C70;
  }

  else
  {

    v2 = sub_1001BF828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BF828(__n128 a1)
{
  v2 = Handle.isPhoneNumber.getter();
  v3 = Handle.identifier.getter();
  v5 = v4;
  v1[24] = v4;
  if (v2)
  {
    v9 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:));
    v6 = swift_task_alloc();
    v1[25] = v6;
    *v6 = v1;
    v7 = sub_1001BF950;
  }

  else
  {
    v9 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:));
    v6 = swift_task_alloc();
    v1[27] = v6;
    *v6 = v1;
    v7 = sub_1001BFA80;
  }

  v6[1] = v7;

  return v9(v3, v5);
}

uint64_t sub_1001BF950(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_1001BFBB0;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1001BFC38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BFA80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1001BFEB4;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1001BFC38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BFBB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BFC38(__n128 a1)
{
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0x2D65636E6546;
  v5._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7 = [(objc_class *)isa zoneName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v1 + 240) = v10;
  v13 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipants(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipants(zoneName:));
  v11 = swift_task_alloc();
  *(v1 + 248) = v11;
  *v11 = v1;
  v11[1] = sub_1001BFD84;

  return v13(v8, v10);
}

uint64_t sub_1001BFD84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1001C0CF8;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = sub_1001BFF3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BFEB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BFF3C()
{
  v0[2] = v0[29];
  v1 = v0[33];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_1001B9588(sub_1001C2A28, v2, v1);

  if (v3)
  {
    v4 = v0[29];
    sub_1001C2B2C();
    swift_allocError();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_1001C00C8;
    v8 = v0[11];
    v9 = v0[4];

    return sub_1001C3C00(v8, v9);
  }
}

uint64_t sub_1001C00C8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1001C0454;
  }

  else
  {
    v2 = sub_1001C01DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C01DC()
{
  v1 = v0[11];
  v2 = type metadata accessor for FenceRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
  if (v3 == 1)
  {
    v4 = v0[4];
    v5 = swift_task_alloc();
    v0[36] = v5;
    *(v5 + 16) = v4;
    v21 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_1001C04DC;
    v7 = v0[10];

    return v21(v7, &unk_1004D0458, v5);
  }

  else
  {
    v9._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10._object = v11;
    v12._countAndFlagsBits = 0x2D65636E6546;
    v12._object = 0xE600000000000000;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v12, v10).super.isa;
    v14 = [(objc_class *)isa zoneName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v0[41] = v17;
    v22 = (&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:));
    v18 = swift_task_alloc();
    v0[42] = v18;
    *v18 = v0;
    v18[1] = sub_1001C09A0;
    v19 = v0[29];
    v20 = v0[3];

    return v22(v20, v19, v15, v17);
  }
}

uint64_t sub_1001C0454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C04DC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1001C0D84;
  }

  else
  {

    v2 = sub_1001C05F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C05F8()
{
  (*(v0[8] + 104))(v0[9], enum case for CloudKitCoordinator.Database.private(_:), v0[7]);
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_1001C06C8;
  v2 = v0[9];
  v3 = v0[10];

  return v5(v3, v2);
}

uint64_t sub_1001C06C8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_1001C0E18;
  }

  else
  {
    v3 = sub_1001C0830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C0830()
{
  sub_100002CE0(v0[10], &qword_1005AF228, &unk_1004D0440);
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2._object = v3;
  v4._countAndFlagsBits = 0x2D65636E6546;
  v4._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v4, v2).super.isa;
  v6 = [(objc_class *)isa zoneName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[41] = v9;
  v14 = (&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:));
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_1001C09A0;
  v11 = v0[29];
  v12 = v0[3];

  return v14(v12, v11, v7, v9);
}

uint64_t sub_1001C09A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_1001C0EBC;
  }

  else
  {

    *(v4 + 352) = a1;
    v5 = sub_1001C0AD0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C0AD0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 352);

  return v1(v2);
}

uint64_t sub_1001C0B60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0CF8()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C0D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0E18()
{
  v1 = *(v0 + 80);

  sub_100002CE0(v1, &qword_1005AF228, &unk_1004D0440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C0EBC()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C0F4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FenceRecord(0);
  v6 = sub_1001C2BFC(&qword_1005AF238, 255, type metadata accessor for FenceRecord, &unk_1004CEFC8);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.create<A>(record:)(a2, v5, v6);
}

uint64_t sub_1001C1044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001C1108, 0, 0);
}

uint64_t sub_1001C1108()
{
  v23 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFE80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E4D10, &v22);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_1001C2BFC(&qword_1005ADD18, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v22);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s with url: %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[8] = *(v0[4] + 136);
  v21 = (&async function pointer to dispatch thunk of CloudKitStorage.shareMetadata(for:token:) + async function pointer to dispatch thunk of CloudKitStorage.shareMetadata(for:token:));
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_1001C13EC;
  v19 = v0[2];
  v18 = v0[3];

  return v21(v19, v18);
}

uint64_t sub_1001C13EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v9 = (&async function pointer to dispatch thunk of CloudKitStorage.accept(metadata:) + async function pointer to dispatch thunk of CloudKitStorage.accept(metadata:));
    v8 = swift_task_alloc();
    *(v4 + 88) = v8;
    *v8 = v5;
    v8[1] = sub_1001C158C;

    return v9(a1);
  }
}

uint64_t sub_1001C158C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001C1710;
  }

  else
  {
    v2 = sub_1001C16A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C16A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C1710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C177C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C179C, v1, 0);
}

uint64_t sub_1001C179C()
{
  v24 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000A6F0(v1, qword_1005DFE80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_10000D01C(v6, v7, &v23);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging zones: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = v0[2];
  v10 = v0[3];
  v11 = v9[2];
  v0[5] = v11;
  if (v11)
  {
    v0[6] = *(v10 + 136);
    v0[7] = 0;
    v12 = v9[4];
    v0[8] = v12;
    v13 = v9[5];
    v0[9] = v13;
    swift_bridgeObjectRetain_n();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000D01C(v12, v13, &v23);
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleting zone %s", v16, 0xCu);
      sub_100004984(v17);
    }

    v21 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v18 = swift_task_alloc();
    v0[10] = v18;
    *v18 = v0;
    v18[1] = sub_1001C1B08;

    return v21(v12, v13);
  }

  else
  {
    v22 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_1001C213C;

    return v22();
  }
}

uint64_t sub_1001C1B08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1001C2230;
  }

  else
  {
    v4 = sub_1001C1C34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001C1C34()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000D01C(v4, v3, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "Recreating zone: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v11 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1001C1DC8;
  v9 = v0[8];
  v8 = v0[9];

  return v11(v9, v8);
}

uint64_t sub_1001C1DC8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1001C25EC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1001C1EF0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001C1EF0()
{
  v15 = v0;
  v1 = v0[7] + 1;
  if (v1 == v0[5])
  {
    v12 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1001C213C;

    return v12();
  }

  else
  {
    v0[7] = v1;
    v4 = v0[2] + 16 * v1;
    v5 = *(v4 + 32);
    v0[8] = v5;
    v6 = *(v4 + 40);
    v0[9] = v6;
    swift_bridgeObjectRetain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10000D01C(v5, v6, &v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "Deleting zone %s", v9, 0xCu);
      sub_100004984(v10);
    }

    v13 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_1001C1B08;

    return v13(v5, v6);
  }
}

uint64_t sub_1001C213C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001C2230()
{
  v25 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v6 = 136446466;
    v9 = sub_10000D01C(v5, v4, &v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2114;
    v10 = _convertErrorToNSError(_:)();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error purging zone %{public}s: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v11 = v0[7] + 1;
  if (v11 == v0[5])
  {
    v22 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1001C213C;

    return v22();
  }

  else
  {
    v0[7] = v11;
    v14 = v0[2] + 16 * v11;
    v15 = *(v14 + 32);
    v0[8] = v15;
    v16 = *(v14 + 40);
    v0[9] = v16;
    swift_bridgeObjectRetain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000D01C(v15, v16, &v24);
      _os_log_impl(&_mh_execute_header, v17, v18, "Deleting zone %s", v19, 0xCu);
      sub_100004984(v20);
    }

    v23 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = sub_1001C1B08;

    return v23(v15, v16);
  }
}

uint64_t sub_1001C25EC()
{
  v25 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v6 = 136446466;
    v9 = sub_10000D01C(v5, v4, &v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2114;
    v10 = _convertErrorToNSError(_:)();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error purging zone %{public}s: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v11 = v0[7] + 1;
  if (v11 == v0[5])
  {
    v22 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1001C213C;

    return v22();
  }

  else
  {
    v0[7] = v11;
    v14 = v0[2] + 16 * v11;
    v15 = *(v14 + 32);
    v0[8] = v15;
    v16 = *(v14 + 40);
    v0[9] = v16;
    swift_bridgeObjectRetain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000D01C(v15, v16, &v24);
      _os_log_impl(&_mh_execute_header, v17, v18, "Deleting zone %s", v19, 0xCu);
      sub_100004984(v20);
    }

    v23 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = sub_1001C1B08;

    return v23(v15, v16);
  }
}

uint64_t sub_1001C29A8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFE98);
  sub_10000A6F0(v0, qword_1005DFE98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001C2A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1001C0F4C(a1, v4);
}

unint64_t sub_1001C2B2C()
{
  result = qword_1005AF230;
  if (!qword_1005AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF230);
  }

  return result;
}

uint64_t sub_1001C2B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001C2BE4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1001C2BF0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001C2BFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1001C2C58()
{
  result = qword_1005AF288;
  if (!qword_1005AF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF288);
  }

  return result;
}

void *sub_1001C2CB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v21 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v21 + 64;
    result = _HashTable.startBucket.getter();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v11 = v4;
      v12 = *(v5 + 56) + 16 * v6;
      v13 = *v12;
      if (*(v12 + 8))
      {
        sub_1001C2BE4(v13, 1);
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        swift_willThrowTypedImpl();
      }

      v22 = v7;
      sub_1001C2BE4(v13, 0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_27;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 72 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_10002F14C(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C2F40(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 168) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = *v3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v4 + 80) = swift_task_alloc();
  v5 = type metadata accessor for CloudKitCoordinator.Deletion();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  sub_10004B564(&qword_1005AF4A0, &qword_1004D0718);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1001C3108, v3, 0);
}

uint64_t sub_1001C3108()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_1001C312C, v1, 0);
}

uint64_t sub_1001C312C()
{
  v1 = *(v0 + 64);
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  *(v0 + 160) = Database.writeConnection.getter();

  return _swift_task_switch(sub_1001C31EC, v1, 0);
}

uint64_t sub_1001C31EC()
{
  v78 = v0;
  v1 = *(v0 + 160);
  if (!v1)
  {
    v10 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();

    v12 = *(v0 + 8);
    goto LABEL_51;
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v1;
  v9[5] = v7;
  v9[6] = v5;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v4);
  Connection.savepoint(_:block:)();
  v13 = v0 + 32;
  v14 = *(v0 + 96);
  v15 = *(v0 + 48);

  v16 = *(v15 + 16);
  v68 = v14;
  v17 = (v14 + 56);
  v18 = (v14 + 48);
  v72 = (v14 + 8);
  v74 = (v14 + 32);
  swift_bridgeObjectRetain_n();

  v19 = 0;
  v70 = v16;
  do
  {
    while (1)
    {
      if (v19 == v16)
      {
        v20 = 1;
        v19 = v16;
      }

      else
      {
        if (v19 >= v16)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        (*(v68 + 16))(*(v0 + 120), *(v0 + 48) + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v19, *(v0 + 88));
        if (__OFADD__(v19++, 1))
        {
          goto LABEL_61;
        }

        v20 = 0;
      }

      v22 = *(v0 + 112);
      v23 = *(v0 + 120);
      v24 = *(v0 + 88);
      (*v17)(v23, v20, 1, v24);
      sub_1000176A8(v23, v22, &qword_1005AF4A0, &qword_1004D0718);
      LODWORD(v76) = (*v18)(v22, 1, v24);
      if (v76 == 1)
      {
        v40 = *(v0 + 56);
        swift_bridgeObjectRelease_n();

        if ((v40 & 0x8000000000000000) == 0)
        {
          v41 = v0 + 16;
          if ((v40 & 0x4000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_63;
        }

LABEL_62:
        v41 = v0 + 16;
        goto LABEL_63;
      }

      v25 = *(v0 + 104);
      v26 = *(v0 + 88);
      (*v74)(v25, *(v0 + 112), v26);
      v27 = CloudKitCoordinator.Deletion.recordType.getter();
      v29 = v28;
      (*v72)(v25, v26);

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      v31 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v30);

      if (v31 == 1)
      {
        break;
      }

      if (!v31)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
      v33 = swift_task_alloc();
      v76 = v13;
      *(v33 + 16) = v13;
      v34 = sub_1001B94DC(sub_1001CD98C, v33, &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);

      if ((v34 & 1) == 0)
      {
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_10000A6F0(v35, qword_1005DFEB0);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          log = v36;
          v39 = swift_slowAlloc();
          v77[0] = v39;
          *v38 = 136446210;
          *(v38 + 4) = sub_10000D01C(v27, v29, v77);
          _os_log_impl(&_mh_execute_header, log, v37, "Unable to find table for %{public}s", v38, 0xCu);
          sub_100004984(v39);
        }

        else
        {
        }
      }

      v13 = v76;
      v16 = v70;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = v70;
  }

  while ((v32 & 1) == 0);

LABEL_25:
  v40 = *(v0 + 56);

  v41 = v0 + 16;
  if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
  {
LABEL_27:
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_63:
  v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_28:
  v43 = *(v0 + 56);
  swift_bridgeObjectRetain_n();

  if (!v42)
  {
LABEL_47:
    v61 = *(v0 + 168);
    swift_bridgeObjectRelease_n();

    if (v76 != 1 && (v61 & 1) != 0)
    {
LABEL_49:
      v62 = *(v0 + 80);
      v63 = type metadata accessor for TaskPriority();
      (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
      v64 = swift_allocObject();
      *(v64 + 16) = 0;
      *(v64 + 24) = 0;
      sub_10020D620(0, 0, v62, &unk_1004D0728, v64);
    }

    goto LABEL_50;
  }

  v44 = 0;
  v73 = v43 & 0xFFFFFFFFFFFFFF8;
  v75 = v43 & 0xC000000000000001;
  v69 = v42;
  v71 = v43 + 32;
  while (2)
  {
    if (v75)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v44 >= *(v73 + 16))
      {
        goto LABEL_59;
      }

      v46 = *(v71 + 8 * v44);
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v48 = v46;
    v49 = CKRecord.recordType.getter();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    v53 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v52);

    if (v53 != 1)
    {
      if (!v53)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_56;
      }

      *(v0 + 16) = v49;
      *(v0 + 24) = v51;
      v54 = swift_task_alloc();
      *(v54 + 16) = v41;
      v55 = sub_1001B94DC(sub_1001CC6DC, v54, &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);

      if ((v55 & 1) == 0)
      {
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_10000A6F0(v56, qword_1005DFEB0);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v77[0] = v60;
          *v59 = 136446210;
          *(v59 + 4) = sub_10000D01C(v49, v51, v77);
          _os_log_impl(&_mh_execute_header, v57, v58, "Unable to find table for %{public}s", v59, 0xCu);
          sub_100004984(v60);

          v41 = v0 + 16;
        }
      }

      v42 = v69;
      goto LABEL_31;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
LABEL_31:
      ++v44;
      if (v47 == v42)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

LABEL_56:
  v66 = *(v0 + 168);

  if (v66 == 1)
  {
    goto LABEL_49;
  }

LABEL_50:

  v12 = *(v0 + 8);
LABEL_51:

  return v12();
}

uint64_t sub_1001C3C00(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3D2C, 0, 0);
}

uint64_t sub_1001C3D2C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001C3D50, v1, 0);
}

uint64_t sub_1001C3D50()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  *(v0 + 136) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C3E04, 0, 0);
}

uint64_t sub_1001C3E04()
{
  if (v0[17])
  {
    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[13], qword_1005DFD08);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v7, qword_1005DFD38);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v4, v6);
    v0[5] = v3;
    v0[6] = &protocol witness table for Table;
    v8 = sub_10000331C(v0 + 2);
    (*(v2 + 16))(v8, v1, v3);
    sub_100007C60((v0 + 2));
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    sub_100004984(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v10 + 8))(v9, v11);

    v14 = v0[1];
  }

  else
  {
    v12 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for DatabaseError.notConnected(_:), v12);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1001C414C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1001C4170, v1, 0);
}

uint64_t sub_1001C4170()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  *(v0 + 72) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C4224, 0, 0);
}

uint64_t sub_1001C4224()
{
  if (v0[9])
  {
    if (qword_1005A8008 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Table();
    v2 = sub_10000A6F0(v1, qword_1005DFD20);
    v0[5] = v1;
    v0[6] = &protocol witness table for Table;
    v3 = sub_10000331C(v0 + 2);
    (*(*(v1 - 8) + 16))(v3, v2, v1);
    v4 = sub_1001CCB6C((v0 + 2));

    sub_100004984(v0 + 2);
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for DatabaseError.notConnected(_:), v7);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001C4430(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C455C, 0, 0);
}

uint64_t sub_1001C455C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001C4580, v1, 0);
}

uint64_t sub_1001C4580()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  *(v0 + 136) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C4634, 0, 0);
}

uint64_t sub_1001C4634()
{
  if (v0[17])
  {
    if (qword_1005A8008 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[13], qword_1005DFD20);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v7, qword_1005DFD38);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v4, v6);
    v0[5] = v3;
    v0[6] = &protocol witness table for Table;
    v8 = sub_10000331C(v0 + 2);
    (*(v2 + 16))(v8, v1, v3);
    sub_1001CCB6C((v0 + 2));
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    sub_100004984(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v10 + 8))(v9, v11);

    v14 = v0[1];
  }

  else
  {
    v12 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for DatabaseError.notConnected(_:), v12);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1001C495C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFEB0);
  v1 = sub_10000A6F0(v0, qword_1005DFEB0);
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C4A24()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudStorageStore.State(0);
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001CC9DC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = sub_10004B564(&qword_1005AF4B8, &qword_1004D0770);
      (*(v3 + 32))(v5, v8 + *(v11 + 48), v2);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v24 = 0x646574656C65642ELL;
      v25 = 0xEF203A6570797428;
      if (v10)
      {
        v12 = 0xD000000000000014;
      }

      else
      {
        v12 = 0x65636E65662ELL;
      }

      if (v10)
      {
        v13 = 0x80000001004E4E20;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = v13;
      String.append(_:)(*&v12);

      v15._countAndFlagsBits = 0x203A6469202CLL;
      v15._object = 0xE600000000000000;
      String.append(_:)(v15);
      sub_1001CC028(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17 = v24;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else
  {
    sub_100010BD4(v8, &v24);
    v22 = 0;
    v23 = 0xE000000000000000;
    v18._countAndFlagsBits = 0x65696669646F6D2ELL;
    v18._object = 0xEA00000000002864;
    String.append(_:)(v18);
    sub_10004B564(&qword_1005AF4D0, &qword_1004D0790);
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v17 = v22;
    sub_100004984(&v24);
  }

  return v17;
}

uint64_t sub_1001C4D38()
{

  sub_1001CCAA4(v0 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_state, type metadata accessor for CloudStorageStore.State);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001C4DD4(uint64_t a1)
{
  result = type metadata accessor for CloudStorageStore.State(319);
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

void sub_1001C4EB4(uint64_t a1)
{
  sub_1001C4F28();
  if (v1 <= 0x3F)
  {
    sub_1001C4FD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001C4F28()
{
  if (!qword_1005AF420)
  {
    v0 = sub_1001C4F70();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AF420);
    }
  }
}

unint64_t sub_1001C4F70()
{
  result = qword_1005AF428;
  if (!qword_1005AF428)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1005AF428);
  }

  return result;
}

void sub_1001C4FD4(uint64_t a1)
{
  if (!qword_1005AF430)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005AF430);
    }
  }
}

uint64_t sub_1001C5040(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_10004B564(&qword_1005AF4C0, &qword_1004D0780);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AF4C8, &qword_1004D0788);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for CloudStorageStore.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001C51AC, v1, 0);
}

uint64_t sub_1001C51AC()
{
  v50 = v0;
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC13findmylocated17CloudStorageStore_state;
  swift_beginAccess();
  sub_1001CC9DC(v3 + v4, v1);
  LOBYTE(v2) = sub_1001CC148(v1, v2);
  sub_1001CCAA4(v1, type metadata accessor for CloudStorageStore.State);
  if ((v2 & 1) == 0)
  {
    if (qword_1005A8080 != -1)
    {
LABEL_26:
      swift_once();
    }

    v5 = v0[16];
    v6 = v0[8];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFEB0);
    sub_1001CC9DC(v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v47 = v0;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[17];
      v45 = v0[16];
      v11 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v11 = 136315394;
      sub_1001CC9DC(v3 + v4, v10);
      v12 = sub_1001C4A24();
      v14 = v13;
      sub_1001CCAA4(v10, type metadata accessor for CloudStorageStore.State);
      v15 = sub_10000D01C(v12, v14, &v49);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_1001C4A24();
      v18 = v17;
      sub_1001CCAA4(v45, type metadata accessor for CloudStorageStore.State);
      v19 = sub_10000D01C(v16, v18, &v49);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "State: %s -> %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v20 = v0[16];

      sub_1001CCAA4(v20, type metadata accessor for CloudStorageStore.State);
    }

    v21 = v0[8];
    v22 = v0[9];
    swift_beginAccess();
    sub_1001CCA40(v21, v3 + v4);
    swift_endAccess();
    v23 = OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations;
    v24 = *(v22 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Publishing State change event to %ld subscribers", v28, 0xCu);
      }

      v24 = *(v22 + v23);
    }

    v29 = v24 + 64;
    v30 = -1;
    v31 = -1 << *(v24 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v24 + 64);
    v33 = (63 - v31) >> 6;
    v43 = (v0[11] + 8);
    v44 = v0[14];
    v46 = v24;

    v4 = 0;
    while (v32)
    {
      v34 = v4;
      v35 = v46;
LABEL_19:
      v36 = v47[17];
      v37 = v47[15];
      v39 = v47[12];
      v38 = v47[13];
      v48 = v47[10];
      v3 = v47[8];
      v40 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v0 = v44;
      (*(v44 + 16))(v37, *(v35 + 56) + *(v44 + 72) * (v40 | (v34 << 6)), v38);
      sub_1001CC9DC(v3, v36);
      AsyncStream.Continuation.yield(_:)();
      (*v43)(v39, v48);
      (*(v44 + 8))(v37, v38);
    }

    v35 = v46;
    while (1)
    {
      v34 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v34 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v34);
      ++v4;
      if (v32)
      {
        v4 = v34;
        goto LABEL_19;
      }
    }

    v0 = v47;
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_1001C56C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v4 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  sub_1000545A4(0, &qword_1005AF478, NSKeyedUnarchiver_ptr);
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v7 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v7, qword_1005DFD68);
  Row.subscript.getter();
  v8 = v39;
  v9 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v2)
  {
    v10 = type metadata accessor for Row();
    (*(*(v10 - 8) + 8))(a1, v10);
    return sub_1000049D0(v8, *(&v8 + 1));
  }

  else
  {
    v12 = v9;
    sub_1000049D0(v8, *(&v8 + 1));
    if (v12)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      v35[4] = PropertyListDecoder.init()();
      if (qword_1005A8010 != -1)
      {
        swift_once();
      }

      v13 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
      sub_10000A6F0(v13, qword_1005DFD38);
      v14 = type metadata accessor for UUID();
      v15 = v45;
      v35[3] = v14;
      Row.subscript.getter();
      if (qword_1005A8018 != -1)
      {
        swift_once();
      }

      v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v16, qword_1005DFD50);
      Row.subscript.getter();
      v17 = v39;
      v18 = type metadata accessor for FenceRecord(0);
      *(v15 + v18[5]) = v17;
      v35[2] = *(&v17 + 1);
      *(v15 + v18[6]) = v12;
      if (qword_1005A8028 != -1)
      {
        swift_once();
      }

      v19 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
      sub_10000A6F0(v19, qword_1005DFD80);
      Row.subscript.getter();
      *(v15 + v18[7]) = v39;
      if (qword_1005A8030 != -1)
      {
        swift_once();
      }

      v35[5] = v12;
      v20 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
      sub_10000A6F0(v20, qword_1005DFD98);
      v36 = v18;
      v21 = v18[9];
      type metadata accessor for Date();
      v35[1] = v21;
      Row.subscript.getter();
      if (qword_1005A8040 != -1)
      {
        swift_once();
      }

      v22 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
      sub_10000A6F0(v22, qword_1005DFDC8);
      Row.subscript.getter();
      v23 = v39;
      v24 = type metadata accessor for Fence.Schedule();
      if (*(&v23 + 1) >> 60 == 15)
      {
        v25 = 1;
      }

      else
      {
        sub_100005F6C(v23, *(&v23 + 1));
        sub_1001CC028(&qword_1005AF490, &type metadata accessor for Fence.Schedule, &protocol conformance descriptor for Fence.Schedule);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        sub_10001A794(v23, *(&v23 + 1));
        sub_10001A794(v23, *(&v23 + 1));
        v25 = 0;
      }

      (*(*(v24 - 8) + 56))(v6, v25, 1, v24);
      v27 = v45;
      sub_1000176A8(v6, v45 + v36[8], &qword_1005AE5C0, &unk_1004D06D0);
      if (qword_1005A8038 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v7, qword_1005DFDB0);
      Row.subscript.getter();
      v28 = v37;
      v29 = v38;
      sub_1001CC664();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v30 = type metadata accessor for Row();
      (*(*(v30 - 8) + 8))(a1, v30);

      result = sub_1000049D0(v28, v29);
      v31 = (v27 + v36[10]);
      v32 = v42;
      v31[2] = v41;
      v31[3] = v32;
      v33 = v44;
      v31[4] = v43;
      v31[5] = v33;
      v34 = v40;
      *v31 = v39;
      v31[1] = v34;
    }

    else
    {
      sub_1001CC610();
      swift_allocError();
      swift_willThrow();
      v26 = type metadata accessor for Row();
      return (*(*(v26 - 8) + 8))(a1, v26);
    }
  }

  return result;
}

uint64_t sub_1001C5EE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v3 - 8);
  v54 = &v43 - v4;
  v5 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v43 - v8;
  v9 = type metadata accessor for SharedSecretKey();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v43 - v13;
  v14 = type metadata accessor for FriendSharedSecretsRecord(0);
  v49 = v14[6];
  v50 = v10;
  v15 = *(v10 + 56);
  v15(&a2[v49], 1, 1, v9);
  v16 = v14[7];
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v52 = v16;
  v19 = &a2[v16];
  v20 = v15;
  v18(v19, 1, 1, v17);
  v21 = v14[8];
  v15(&a2[v21], 1, 1, v9);
  v51 = v14;
  v53 = v14[9];
  v58 = v17;
  v18(&a2[v53], 1, 1, v17);
  if (qword_1005A8050 != -1)
  {
    swift_once();
  }

  v22 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v22, qword_1005DFDF8);
  v23 = v55;
  Row.subscript.getter();
  if (v57 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v44 = v20;
  sub_1001CC028(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  v24 = v47;
  KeyRepresenting.init(rawValue:)();
  v25 = v50;
  if ((*(v50 + 48))(v24, 1, v9) == 1)
  {
    sub_100002CE0(v24, &qword_1005AEB98, &unk_1004D07C0);
    v23 = v55;
    v20 = v44;
LABEL_6:
    v26 = v49;
    sub_100002CE0(&a2[v49], &qword_1005AEB98, &unk_1004D07C0);
    v27 = 1;
    goto LABEL_8;
  }

  v28 = *(v25 + 32);
  v29 = v45;
  v28(v45, v24, v9);
  v26 = v49;
  sub_100002CE0(&a2[v49], &qword_1005AEB98, &unk_1004D07C0);
  v28(&a2[v26], v29, v9);
  v27 = 0;
  v23 = v55;
  v20 = v44;
LABEL_8:
  v20(&a2[v26], v27, 1, v9);
  if (qword_1005A8060 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v22, qword_1005DFE28);
  Row.subscript.getter();
  if (v57 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_1001CC028(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  v30 = v48;
  KeyRepresenting.init(rawValue:)();
  v31 = v50;
  if ((*(v50 + 48))(v30, 1, v9) == 1)
  {
    sub_100002CE0(v30, &qword_1005AEB98, &unk_1004D07C0);
LABEL_13:
    sub_100002CE0(&a2[v21], &qword_1005AEB98, &unk_1004D07C0);
    v32 = 1;
    goto LABEL_15;
  }

  v33 = *(v31 + 32);
  v34 = v46;
  v35 = v30;
  v36 = v33;
  v33(v46, v35, v9);
  sub_100002CE0(&a2[v21], &qword_1005AEB98, &unk_1004D07C0);
  v36(&a2[v21], v34, v9);
  v32 = 0;
LABEL_15:
  v20(&a2[v21], v32, 1, v9);
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v37 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v37, qword_1005DFD38);
  type metadata accessor for UUID();
  Row.subscript.getter();
  v38 = v54;
  if (qword_1005A8048 != -1)
  {
    swift_once();
  }

  v39 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v39, qword_1005DFDE0);
  sub_1001B921C();
  Row.subscript.getter();
  a2[v51[5]] = v56 == 1;
  if (qword_1005A8058 != -1)
  {
    swift_once();
  }

  v40 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v40, qword_1005DFE10);
  Row.subscript.getter();
  sub_1000CF904(v38, &a2[v52]);
  if (qword_1005A8068 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v40, qword_1005DFE40);
  Row.subscript.getter();
  v41 = type metadata accessor for Row();
  (*(*(v41 - 8) + 8))(v23, v41);
  return sub_1000CF904(v38, &a2[v53]);
}

uint64_t sub_1001C6700()
{
  sub_10002B3C0(0, 2, 0);
  type metadata accessor for FenceRecord(0);
  sub_1001CC028(&qword_1005AF238, type metadata accessor for FenceRecord, &unk_1004CEFC8);
  v0 = sub_1001A294C();
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v11 = v0;
    v12 = v1;
    sub_10002B3C0((v2 > 1), v3 + 1, 1);
    v1 = v12;
    v0 = v11;
    v2 = _swiftEmptyArrayStorage[3];
    v4 = v2 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  v6 = &_swiftEmptyArrayStorage[2 * v3];
  v6[4] = v0;
  v6[5] = v1;
  v7 = v3 + 2;
  if (v4 <= v5)
  {
    sub_10002B3C0((v2 > 1), v7, 1);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v8 = &_swiftEmptyArrayStorage[2 * v5];
  strcpy(v8 + 32, "SharedSecrets");
  *(v8 + 23) = -4864;
  v9 = Array<A>.uniqued()();

  qword_1005DFEC8 = v9;
  return result;
}

uint64_t sub_1001C6884(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudKitCoordinator.Deletion();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitStateChange();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C69AC, v1, 0);
}

uint64_t sub_1001C69AC()
{
  v40 = v0;
  v1 = v0;
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[2];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFEB0);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    sub_1001CC028(&qword_1005AF510, &type metadata accessor for CloudKitStateChange, &protocol conformance descriptor for CloudKitStateChange);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v15, v17, &v39);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ingest:stateChange %s", v13, 0xCu);
    sub_100004984(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = CloudKitStateChange.deleted.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v1[5];
    v39 = _swiftEmptyArrayStorage;
    sub_100239570(0, v20, 0);
    v22 = v39;
    v23 = *(v21 + 16);
    v21 += 16;
    v37 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v38 = v23;
    v24 = v19 + v37;
    v36 = *(v21 + 56);
    v35 = (v21 - 8);
    v25 = (v21 + 16);
    do
    {
      v26 = v1[6];
      v27 = v1[4];
      v38(v26, v24, v27);
      CloudKitCoordinator.Deletion.recordType.getter();
      CloudKitCoordinator.Deletion.recordID.getter();
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      (*v35)(v26, v27);
      v39 = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_100239570((v28 > 1), v29 + 1, 1);
        v22 = v39;
      }

      v30 = v1[7];
      v31 = v1[4];
      v22[2] = v29 + 1;
      (*v25)(v22 + v37 + v29 * v36, v30, v31);
      v24 += v36;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v1[11] = v22;
  v32 = CloudKitStateChange.modified.getter();
  v1[12] = v32;
  v33 = swift_task_alloc();
  v1[13] = v33;
  *v33 = v1;
  v33[1] = sub_1001C6D9C;

  return sub_1001C2F40(v22, v32, 1);
}

uint64_t sub_1001C6D9C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1001C6F5C;
  }

  else
  {
    v4 = sub_1001C6EC8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001C6EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C6F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001C6FF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v157 = a5;
  v174 = a4;
  v183 = a3;
  v189 = a2;
  v163 = type metadata accessor for Insert();
  v150 = *(v163 - 8);
  __chkstk_darwin(v163);
  v179 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = __chkstk_darwin(v9 - 8);
  v156 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v178 = &v150 - v13;
  v14 = __chkstk_darwin(v12);
  v166 = &v150 - v15;
  __chkstk_darwin(v14);
  v182 = &v150 - v16;
  v173 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v17 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v150 - v18;
  v184 = type metadata accessor for Table();
  v19 = *(v184 - 8);
  v20 = __chkstk_darwin(v184);
  v167 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v171 = &v150 - v23;
  __chkstk_darwin(v22);
  v170 = &v150 - v24;
  v169 = type metadata accessor for Delete();
  v25 = *(v169 - 8);
  __chkstk_darwin(v169);
  *&v186 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v27 - 8);
  v185 = &v150 - v28;
  v194 = type metadata accessor for UUID();
  v29 = *(v194 - 8);
  v30 = __chkstk_darwin(v194);
  v164 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v31;
  __chkstk_darwin(v30);
  v33 = &v150 - v32;
  v34 = type metadata accessor for CloudKitCoordinator.Deletion();
  v35 = __chkstk_darwin(v34);
  v168 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v188 = (&v150 - v39);
  v40 = *(a1 + 16);
  v151 = v19;
  if (v40)
  {
    v192 = v33;
    v42 = *(v37 + 16);
    v41 = v37 + 16;
    v195 = v42;
    v43 = (a1 + ((*(v41 + 64) + 32) & ~*(v41 + 64)));
    v181 = (v29 + 48);
    v180 = (v29 + 32);
    v161 = (v19 + 16);
    v159 = (v17 + 8);
    v158 = (v19 + 8);
    v154 = v29 + 16;
    v160 = (v25 + 8);
    v155 = v29;
    v162 = (v29 + 8);
    v193 = (v41 - 8);
    v190 = *(v41 + 56);
    *&v38 = 136315138;
    v153 = v38;
    *&v38 = 136446210;
    v152 = v38;
    v187 = v34;
    v44 = v188;
    v45 = v41;
    v191 = v41;
    v42(v188, v43, v34);
    while (1)
    {
      v46 = CloudKitCoordinator.Deletion.recordType.getter();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      v50 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v49);

      if (v50)
      {
        if (v50 != 1)
        {
          v75 = v45;
          v205 = v46;
          v206 = v48;
          __chkstk_darwin(v51);
          *(&v150 - 2) = &v205;
          v76 = v6;
          v77 = sub_1001B94DC(sub_1001CD98C, (&v150 - 4), &off_10058BAC0);
          sub_10007C2B8(&unk_10058BAE0);
          if (v77)
          {

            v44 = v188;
          }

          else
          {
            v196 = v43;
            if (qword_1005A8080 != -1)
            {
              swift_once();
            }

            v99 = type metadata accessor for Logger();
            sub_10000A6F0(v99, qword_1005DFEB0);

            v100 = Logger.logObject.getter();
            v101 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v205 = v103;
              *v102 = v152;
              *(v102 + 4) = sub_10000D01C(v46, v48, &v205);
              _os_log_impl(&_mh_execute_header, v100, v101, "Unable to find table for %{public}s", v102, 0xCu);
              sub_100004984(v103);

              v6 = v76;
            }

            v44 = v188;
            v43 = v196;
          }

          v45 = v75;
          v34 = v187;
          (*v193)(v44, v187);
          goto LABEL_5;
        }

        v196 = v43;
        v52 = 1;
      }

      else
      {
        v196 = v43;
        v52 = 0;
      }

      v53 = CloudKitCoordinator.Deletion.recordID.getter();
      v54 = [v53 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v185;
      UUID.init(uuidString:)();

      v56 = v194;
      if ((*v181)(v55, 1, v194) == 1)
      {
        sub_100002CE0(v55, &qword_1005A96E0, &qword_1004C2A80);
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_10000A6F0(v57, qword_1005DFEB0);
        v58 = v168;
        v195(v168, v44, v34);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v207 = v6;
          v176 = v62;
          v205 = v62;
          *v61 = v153;
          v63 = CloudKitCoordinator.Deletion.recordID.getter();
          v64 = v40;
          v65 = v58;
          v66 = [v63 recordName];

          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v175 = *v193;
          v70 = v65;
          v40 = v64;
          v34 = v187;
          v175(v70, v187);
          v71 = sub_10000D01C(v67, v69, &v205);

          *(v61 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v59, v60, "Record name is not a UUID: %s", v61, 0xCu);
          sub_100004984(v176);
          v6 = v207;

          v44 = v188;
          v175(v188, v34);
        }

        else
        {
          v78 = v44;

          v79 = *v193;
          (*v193)(v58, v34);
          v79(v78, v34);
          v44 = v78;
        }

        v43 = v196;
        v45 = v191;
      }

      else
      {
        v175 = *v180;
        (v175)(v192, v55, v56);
        v72 = v184;
        v73 = v171;
        v177 = v40;
        if (v52)
        {
          v74 = qword_1005DFD20;
          if (qword_1005A8008 != -1)
          {
            swift_once();
            v74 = qword_1005DFD20;
          }
        }

        else
        {
          v74 = qword_1005DFD08;
          if (qword_1005A8000 != -1)
          {
            swift_once();
            v74 = qword_1005DFD08;
          }
        }

        LODWORD(v176) = v52;
        v207 = v6;
        v80 = sub_10000A6F0(v72, v74);
        (*v161)(v73, v80, v72);
        if (qword_1005A8010 != -1)
        {
          swift_once();
        }

        v81 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
        sub_10000A6F0(v81, qword_1005DFD38);
        v82 = v172;
        v83 = v192;
        == infix<A>(_:_:)();
        v84 = v170;
        QueryType.filter(_:)();
        (*v159)(v82, v173);
        v85 = *v158;
        (*v158)(v73, v72);
        QueryType.delete()();
        v85(v84, v72);
        v86 = v207;
        Connection.run(_:)();
        if (v86)
        {
          (*v160)(v186, v169);
          (*v162)(v83, v56);
          (*v193)(v188, v187);
          return;
        }

        v207 = 0;
        v87 = type metadata accessor for TaskPriority();
        v88 = *(v87 - 8);
        v89 = v182;
        (*(v88 + 56))(v182, 1, 1, v87);
        v90 = v155;
        v91 = v164;
        (*(v155 + 16))(v164, v83, v56);
        v92 = sub_1001CC028(&qword_1005AF4B0, type metadata accessor for CloudStorageStore, &unk_1004D0690);
        v93 = (*(v90 + 80) + 41) & ~*(v90 + 80);
        v94 = swift_allocObject();
        v95 = v189;
        *(v94 + 16) = v189;
        *(v94 + 24) = v92;
        *(v94 + 32) = v95;
        *(v94 + 40) = v176;
        (v175)(v94 + v93, v91, v56);
        v96 = v89;
        v97 = v166;
        sub_100005F04(v96, v166, &qword_1005A9690, &qword_1004C2A00);
        v98 = (*(v88 + 48))(v97, 1, v87);
        swift_retain_n();

        if (v98 == 1)
        {
          sub_100002CE0(v97, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v88 + 8))(v97, v87);
        }

        v40 = v177;
        v104 = *(v94 + 16);
        swift_unknownObjectRetain();

        v34 = v187;
        v44 = v188;
        v45 = v191;
        if (v104)
        {
          swift_getObjectType();
          v105 = dispatch thunk of Actor.unownedExecutor.getter();
          v107 = v106;
          swift_unknownObjectRelease();
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v6 = v207;
        sub_100002CE0(v182, &qword_1005A9690, &qword_1004C2A00);
        v108 = swift_allocObject();
        *(v108 + 16) = &unk_1004D0760;
        *(v108 + 24) = v94;
        if (v107 | v105)
        {
          v197 = 0;
          v198 = 0;
          v199 = v105;
          v200 = v107;
        }

        v43 = v196;
        swift_task_create();

        (*v160)(v186, v169);
        (*v162)(v192, v194);
        (*v193)(v44, v34);
      }

LABEL_5:
      v43 = v190 + v43;
      if (!--v40)
      {
        break;
      }

      v195(v44, v43, v34);
    }
  }

  v109 = v174;
  if (v174 >> 62)
  {
    goto LABEL_84;
  }

  v110 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
  if (v110)
  {
    v111 = 0;
    v193 = (v109 & 0xC000000000000001);
    v187 = v109 & 0xFFFFFFFFFFFFFF8;
    v190 = (v151 + 16);
    v191 = (v151 + 8);
    v188 = (v150 + 8);
    *&v38 = 136446210;
    v186 = v38;
    v192 = v110;
    while (1)
    {
      if (v193)
      {
        v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v113 = (v111 + 1);
        if (__OFADD__(v111, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v111 >= *(v187 + 16))
        {
          goto LABEL_83;
        }

        v114 = *(v109 + 8 * v111 + 32);
        v113 = (v111 + 1);
        if (__OFADD__(v111, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          v110 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_43;
        }
      }

      v196 = v114;
      v115 = CKRecord.recordType.getter();
      v117 = v116;

      v118._countAndFlagsBits = v115;
      v118._object = v117;
      v119 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v118);

      if (!v119)
      {
        break;
      }

      if (v119 == 1)
      {

        v121 = v179;
        if (qword_1005A8008 != -1)
        {
          swift_once();
        }

        v122 = 1;
        v123 = qword_1005DFD20;
LABEL_63:
        v124 = v167;
        v125 = v196;
        v126 = v184;
        v127 = sub_10000A6F0(v184, v123);
        (*v190)(v124, v127, v126);
        sub_1001C8B1C(v122, v124, v125, v121);
        if (v6)
        {
          (*v191)(v124, v126);

          return;
        }

        (*v191)(v124, v126);
        Connection.run(_:)();
        v194 = v111;
        v195 = v113;
        v207 = 0;
        v128 = type metadata accessor for TaskPriority();
        v129 = *(v128 - 8);
        v130 = v178;
        (*(v129 + 56))(v178, 1, 1, v128);
        v131 = sub_1001CC028(&qword_1005AF4B0, type metadata accessor for CloudStorageStore, &unk_1004D0690);
        v132 = swift_allocObject();
        v133 = v189;
        *(v132 + 16) = v189;
        *(v132 + 24) = v131;
        *(v132 + 32) = v122;
        v134 = v196;
        *(v132 + 40) = v196;
        *(v132 + 48) = v133;
        *(v132 + 56) = v157;
        v135 = v130;
        v136 = v156;
        sub_100005F04(v135, v156, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v131) = (*(v129 + 48))(v136, 1, v128);
        swift_retain_n();
        v137 = v134;

        v196 = v137;
        if (v131 == 1)
        {
          sub_100002CE0(v136, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v129 + 8))(v136, v128);
        }

        v111 = v194;
        v139 = *(v132 + 16);
        swift_unknownObjectRetain();

        if (v139)
        {
          swift_getObjectType();
          v140 = dispatch thunk of Actor.unownedExecutor.getter();
          v142 = v141;
          swift_unknownObjectRelease();
        }

        else
        {
          v140 = 0;
          v142 = 0;
        }

        v109 = v174;
        sub_100002CE0(v178, &qword_1005A9690, &qword_1004C2A00);
        v143 = swift_allocObject();
        *(v143 + 16) = &unk_1004D0748;
        *(v143 + 24) = v132;
        if (v142 | v140)
        {
          v201 = 0;
          v202 = 0;
          v203 = v140;
          v204 = v142;
        }

        v6 = v207;
        v112 = v179;
        v113 = v195;
        swift_task_create();

        (*v188)(v112, v163);
        goto LABEL_47;
      }

      v205 = v115;
      v206 = v117;
      __chkstk_darwin(v120);
      *(&v150 - 2) = &v205;
      v138 = sub_1001B94DC(sub_1001CD98C, (&v150 - 4), &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);
      if (v138)
      {

        v109 = v174;
        goto LABEL_48;
      }

      if (qword_1005A8080 != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      sub_10000A6F0(v144, qword_1005DFEB0);

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v207 = v6;
        v149 = v148;
        v205 = v148;
        *v147 = v186;
        *(v147 + 4) = sub_10000D01C(v115, v117, &v205);
        _os_log_impl(&_mh_execute_header, v145, v146, "Unable to find table for %{public}s", v147, 0xCu);
        sub_100004984(v149);
        v6 = v207;
      }

      v109 = v174;
LABEL_47:
      v110 = v192;
LABEL_48:
      ++v111;
      if (v113 == v110)
      {
        return;
      }
    }

    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    v122 = 0;
    v123 = qword_1005DFD08;
    v121 = v179;
    goto LABEL_63;
  }
}

uint64_t sub_1001C8834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 32) = type metadata accessor for CloudStorageStore.State(0);
  *(v6 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1001C88D0, a4, 0);
}

uint64_t sub_1001C88D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(sub_10004B564(&qword_1005AF4B8, &qword_1004D0770) + 48);
  *v1 = v3 & 1;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 16))(&v1[v4], v2, v5);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1001C89F0;
  v7 = *(v0 + 40);

  return sub_1001C5040(v7);
}

uint64_t sub_1001C89F0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  sub_1001CCAA4(v1, type metadata accessor for CloudStorageStore.State);

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001C8B1C(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a4;
  v117 = a2;
  v7 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v8 = __chkstk_darwin(v7 - 8);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v107 - v10;
  v126 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  v124 = *(v126 - 8);
  v12 = __chkstk_darwin(v126);
  v120 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v107 - v14;
  v125 = type metadata accessor for FriendSharedSecretsRecord(0);
  __chkstk_darwin(v125);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OnConflict();
  v122 = *(v17 - 8);
  v123 = v17;
  v18 = __chkstk_darwin(v17);
  v121 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v114 = &v107 - v20;
  v21 = type metadata accessor for Fence.Schedule();
  v112 = *(v21 - 8);
  v113 = v21;
  __chkstk_darwin(v21);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v107 - v25;
  v118 = type metadata accessor for FenceRecord(0);
  __chkstk_darwin(v118);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  if (a1)
  {
    sub_1001B0C60(v29, v16);
    if (v4)
    {
      return;
    }

    v111 = 0;
    (*(v122 + 104))(v121, enum case for OnConflict.replace(_:), v123);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    v30 = *(type metadata accessor for Setter() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1004C2300;
    v113 = v33;
    v34 = (v33 + v32);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v35 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v35, qword_1005DFD38);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    v37 = v124;
    v36 = v125;
    if (qword_1005A8048 != -1)
    {
      swift_once();
    }

    v38 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    sub_10000A6F0(v38, qword_1005DFDE0);
    LOBYTE(v136[0]) = v16[*(v36 + 20)];
    sub_1001B921C();
    v118 = v34;
    v114 = v31;
    <- infix<A>(_:_:)();
    if (qword_1005A8050 != -1)
    {
      swift_once();
    }

    v39 = v126;
    v40 = sub_10000A6F0(v126, qword_1005DFDF8);
    v109 = *(v37 + 16);
    v109(v119, v40, v39);
    sub_100005F04(&v16[*(v36 + 24)], v11, &qword_1005AEB98, &unk_1004D07C0);
    v41 = type metadata accessor for SharedSecretKey();
    v42 = *(v41 - 8);
    v108 = *(v42 + 48);
    v43 = v108(v11, 1, v41);
    v110 = v16;
    v112 = v42;
    if (v43 == 1)
    {
      sub_100002CE0(v11, &qword_1005AEB98, &unk_1004D07C0);
      v44 = 0;
      v45 = 0xF000000000000000;
    }

    else
    {
      v44 = SharedSecretKey.data.getter();
      v45 = v65;
      (*(v42 + 8))(v11, v41);
    }

    *&v136[0] = v44;
    *(&v136[0] + 1) = v45;
    v66 = v119;
    <- infix<A>(_:_:)();
    sub_10001A794(*&v136[0], *(&v136[0] + 1));
    v67 = *(v37 + 8);
    v124 = v37 + 8;
    v119 = v67;
    (v67)(v66, v126);
    if (qword_1005A8058 != -1)
    {
      swift_once();
    }

    v107 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
    sub_10000A6F0(v107, qword_1005DFE10);
    v68 = v125;
    type metadata accessor for Date();
    v28 = v110;
    <- infix<A>(_:_:)();
    if (qword_1005A8060 != -1)
    {
      swift_once();
    }

    v69 = v126;
    v70 = sub_10000A6F0(v126, qword_1005DFE28);
    v109(v120, v70, v69);
    v71 = v115;
    sub_100005F04(&v28[*(v68 + 32)], v115, &qword_1005AEB98, &unk_1004D07C0);
    v72 = v108(v71, 1, v41);
    v73 = v112;
    if (v72 == 1)
    {
      sub_100002CE0(v71, &qword_1005AEB98, &unk_1004D07C0);
      v74 = 0;
      v75 = 0xF000000000000000;
    }

    else
    {
      v74 = SharedSecretKey.data.getter();
      v75 = v76;
      (*(v73 + 8))(v71, v41);
    }

    *&v136[0] = v74;
    *(&v136[0] + 1) = v75;
    v77 = v120;
    <- infix<A>(_:_:)();
    sub_10001A794(*&v136[0], *(&v136[0] + 1));
    (v119)(v77, v126);
    if (qword_1005A8068 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v107, qword_1005DFE40);
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v78 = v121;
    QueryType.insert(or:_:)();

    (*(v122 + 8))(v78, v123);
    v79 = type metadata accessor for FriendSharedSecretsRecord;
    goto LABEL_25;
  }

  sub_1001A2D68(v29, v28);
  if (v4)
  {
    return;
  }

  v46 = objc_opt_self();
  v47 = v118;
  v48 = *&v28[v118[6]];
  *&v136[0] = 0;
  v49 = [v46 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:v136];
  if (!v49)
  {
    v82 = *&v136[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001CCAA4(v28, type metadata accessor for FenceRecord);
    return;
  }

  v50 = v49;
  v51 = *&v136[0];
  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v55 = PropertyListEncoder.init()();
  v56 = &v28[v47[10]];
  v57 = *(v56 + 3);
  v58 = *(v56 + 1);
  v137 = *(v56 + 2);
  v138 = v57;
  v59 = *(v56 + 3);
  v60 = *(v56 + 5);
  v139 = *(v56 + 4);
  v140 = v60;
  v61 = *(v56 + 1);
  v136[0] = *v56;
  v136[1] = v61;
  v132 = v137;
  v133 = v59;
  v62 = *(v56 + 5);
  v134 = v139;
  v135 = v62;
  v130 = v136[0];
  v131 = v58;
  sub_1001A6A68(v136, v129);
  sub_1001CD178();
  v63 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v111 = 0;
  v121 = v63;
  v83 = v64;
  v124 = v52;
  v129[2] = v132;
  v129[3] = v133;
  v129[4] = v134;
  v129[5] = v135;
  v129[0] = v130;
  v129[1] = v131;
  sub_1001A6AA0(v129);
  sub_100005F04(&v28[v47[8]], v26, &qword_1005AE5C0, &unk_1004D06D0);
  v85 = v112;
  v84 = v113;
  v86 = (*(v112 + 48))(v26, 1, v113);
  v125 = v28;
  if (v86 == 1)
  {
    v119 = v83;
    v115 = 0;
    v110 = 0xF000000000000000;
    v87 = v54;
LABEL_34:
    v113 = v55;
    (*(v122 + 104))(v114, enum case for OnConflict.replace(_:), v123);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = xmmword_1004C0BE0;
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v92 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v92, qword_1005DFD38);
    type metadata accessor for UUID();
    v93 = v125;
    <- infix<A>(_:_:)();
    v94 = v124;
    if (qword_1005A8018 != -1)
    {
      swift_once();
    }

    v95 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
    sub_10000A6F0(v95, qword_1005DFD50);
    v96 = (v93 + v118[5]);
    v97 = v96[1];
    v127 = *v96;
    v128 = v97;

    <- infix<A>(_:_:)();

    if (qword_1005A8020 != -1)
    {
      swift_once();
    }

    v98 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    sub_10000A6F0(v98, qword_1005DFD68);
    v127 = v94;
    v128 = v87;
    <- infix<A>(_:_:)();
    if (qword_1005A8028 != -1)
    {
      swift_once();
    }

    v120 = v87;
    v99 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
    sub_10000A6F0(v99, qword_1005DFD80);
    v127 = *(v125 + v118[7]);
    <- infix<A>(_:_:)();
    if (qword_1005A8030 != -1)
    {
      swift_once();
    }

    v100 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
    sub_10000A6F0(v100, qword_1005DFD98);
    type metadata accessor for Date();
    <- infix<A>(_:_:)();
    if (qword_1005A8038 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v98, qword_1005DFDB0);
    v101 = v121;
    v102 = v119;
    v127 = v121;
    v128 = v119;
    <- infix<A>(_:_:)();
    v103 = v120;
    if (qword_1005A8040 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v126, qword_1005DFDC8);
    v104 = v115;
    v105 = v110;
    v127 = v115;
    v128 = v110;
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v106 = v114;
    QueryType.insert(or:_:)();

    sub_1000049D0(v101, v102);
    sub_1000049D0(v124, v103);

    sub_10001A794(v104, v105);
    (*(v122 + 8))(v106, v123);
    v80 = type metadata accessor for FenceRecord;
    v81 = v125;
    goto LABEL_26;
  }

  (*(v85 + 32))(v23, v26, v84);
  sub_1001CC028(&qword_1005AF500, &type metadata accessor for Fence.Schedule, &protocol conformance descriptor for Fence.Schedule);
  v88 = v111;
  v89 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v111 = v88;
  v91 = v85;
  v87 = v54;
  if (!v88)
  {
    v110 = v90;
    v115 = v89;
    v119 = v83;
    (*(v91 + 8))(v23, v84);
    goto LABEL_34;
  }

  (*(v91 + 8))(v23, v84);

  sub_1000049D0(v121, v83);
  sub_1000049D0(v124, v54);
  v79 = type metadata accessor for FenceRecord;
LABEL_25:
  v80 = v79;
  v81 = v28;
LABEL_26:
  sub_1001CCAA4(v81, v80);
}

uint64_t sub_1001C9C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 352) = a4;
  *(v6 + 232) = type metadata accessor for CloudStorageStore.State(0);
  *(v6 + 240) = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  *(v6 + 248) = swift_task_alloc();
  v8 = type metadata accessor for FriendSharedSecretsRecord(0);
  *(v6 + 256) = v8;
  *(v6 + 264) = *(v8 - 8);
  *(v6 + 272) = swift_task_alloc();
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  *(v6 + 280) = swift_task_alloc();
  v9 = type metadata accessor for FenceRecord(0);
  *(v6 + 288) = v9;
  *(v6 + 296) = *(v9 - 8);
  *(v6 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1001C9E4C, a6, 0);
}

uint64_t sub_1001C9E4C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 216);
  if (v1)
  {
    sub_1001B0C60(v2, *(v0 + 272));
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_1001CA648;
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);

    return sub_1001C4430(v5, v4);
  }

  else
  {
    sub_1001A2D68(v2, *(v0 + 304));
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_1001CA140;
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);

    return sub_1001C3C00(v9, v8);
  }
}

uint64_t sub_1001CA140()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_1001CAD48;
  }

  else
  {
    v4 = sub_1001CA26C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001CA26C()
{
  v22 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = (*(*(v0 + 296) + 48))(v2, 1, v1);
  v4 = *(v0 + 304);
  if (v3 == 1)
  {
    sub_1001CCAA4(*(v0 + 304), type metadata accessor for FenceRecord);
    sub_100002CE0(v2, &qword_1005AE720, &qword_1004CA2F0);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  else
  {
    *(v0 + 200) = v1;
    *(v0 + 208) = sub_1001CC028(&qword_1005AF238, type metadata accessor for FenceRecord, &unk_1004CEFC8);
    v5 = sub_10000331C((v0 + 176));
    sub_1001CCB04(v2, v5, type metadata accessor for FenceRecord);
    sub_1001CCAA4(v4, type metadata accessor for FenceRecord);
  }

  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 208);
  sub_100005F04(v0 + 16, v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 240);
    sub_100010BD4((v0 + 136), v0 + 96);
    sub_100011004(v0 + 96, v7);
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 344) = v8;
    *v8 = v0;
    v8[1] = sub_1001CAB58;
    v9 = *(v0 + 240);

    return sub_1001C5040(v9);
  }

  else
  {
    sub_100002CE0(v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
    if (qword_1005A8080 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFEB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 352);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      if (v14)
      {
        v17 = 0xD000000000000014;
      }

      else
      {
        v17 = 0x65636E65662ELL;
      }

      if (v14)
      {
        v18 = 0x80000001004E4E20;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      v19 = sub_10000D01C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to convert %s to CloudBacked!", v15, 0xCu);
      sub_100004984(v16);
    }

    sub_100002CE0(v0 + 16, &qword_1005AF4E0, &qword_1004D07B0);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1001CA648()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_1001CAF34;
  }

  else
  {
    v4 = sub_1001CA774;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001CA774()
{
  v22 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = (*(*(v0 + 264) + 48))(v2, 1, v1);
  v4 = *(v0 + 272);
  if (v3 == 1)
  {
    sub_1001CCAA4(*(v0 + 272), type metadata accessor for FriendSharedSecretsRecord);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_1001CC028(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord, &unk_1004CF940);
    v5 = sub_10000331C((v0 + 56));
    sub_1001CCB04(v2, v5, type metadata accessor for FriendSharedSecretsRecord);
    sub_1001CCAA4(v4, type metadata accessor for FriendSharedSecretsRecord);
  }

  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  sub_100005F04(v0 + 16, v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 240);
    sub_100010BD4((v0 + 136), v0 + 96);
    sub_100011004(v0 + 96, v7);
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 344) = v8;
    *v8 = v0;
    v8[1] = sub_1001CAB58;
    v9 = *(v0 + 240);

    return sub_1001C5040(v9);
  }

  else
  {
    sub_100002CE0(v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
    if (qword_1005A8080 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFEB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 352);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      if (v14)
      {
        v17 = 0xD000000000000014;
      }

      else
      {
        v17 = 0x65636E65662ELL;
      }

      if (v14)
      {
        v18 = 0x80000001004E4E20;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      v19 = sub_10000D01C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to convert %s to CloudBacked!", v15, 0xCu);
      sub_100004984(v16);
    }

    sub_100002CE0(v0 + 16, &qword_1005AF4E0, &qword_1004D07B0);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1001CAB58()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 224);

  sub_1001CCAA4(v1, type metadata accessor for CloudStorageStore.State);

  return _swift_task_switch(sub_1001CAC98, v2, 0);
}

uint64_t sub_1001CAC98()
{
  sub_100004984((v0 + 96));
  sub_100002CE0(v0 + 16, &qword_1005AF4E0, &qword_1004D07B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CAD48(__n128 a1)
{
  sub_1001CCAA4(*(v1 + 304), type metadata accessor for FenceRecord);
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFEB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to update modifiedRecord: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1001CAF34(__n128 a1)
{
  sub_1001CCAA4(*(v1 + 272), type metadata accessor for FriendSharedSecretsRecord);
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFEB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to update modifiedRecord: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1001CB120()
{
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001CB1E8;

  return daemon.getter();
}

uint64_t sub_1001CB1E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FenceService(0);
  v6 = sub_1001CC028(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001CC028(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v3 = v9;
  v3[1] = sub_1001CB3C4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001CB3C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1001CB6B0;
    v6 = 0;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1001CB500;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001CB500()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1001CC028(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v5);

  return _swift_task_switch(sub_1001CB640, 0, 0);
}

uint64_t sub_1001CB640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CB6B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CB740()
{
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFEB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging DB", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 112);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_1001CB864, v6, 0);
}

uint64_t sub_1001CB864()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  Database.purge()();
  v1 = *(v0 + 8);

  return v1();
}

double sub_1001CB928@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CKRecord.recordType.getter();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v7);

  if (!v8)
  {
    v9 = type metadata accessor for FenceRecord(0);
    v10 = &qword_1005AF238;
    v11 = type metadata accessor for FenceRecord;
    v12 = &unk_1004CEFC8;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v9 = type metadata accessor for FriendSharedSecretsRecord(0);
    v10 = &qword_1005AF498;
    v11 = type metadata accessor for FriendSharedSecretsRecord;
    v12 = &unk_1004CF940;
LABEL_5:
    v13 = sub_1001CC028(v10, v11, v12);
    *(a2 + 24) = v9;
    *(a2 + 32) = v13;
    sub_10000331C(a2);
    v14 = a1;
    dispatch thunk of CloudBacked.init(ckRecord:)();
    return result;
  }

  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFEB0);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136446210;
    v22 = CKRecord.recordType.getter();
    v24 = sub_10000D01C(v22, v23, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unexpected recordType: %{public}s", v20, 0xCu);
    sub_100004984(v21);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1001CBBAC()
{
  if (qword_1005A8088 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1001CBC48()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1001CBC78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1001C6884(a1);
}

uint64_t sub_1001CBD0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001CD1CC(a1, a2);
}

uint64_t sub_1001CBDC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001C2F40(a1, a2, 1);
}

uint64_t sub_1001CBE8C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1001CBEB0, v1, 0);
}

uint64_t sub_1001CBEB0()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  Database.startup()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CBF74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1001CB720();
}

uint64_t sub_1001CC028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CC070()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFED0);
  sub_10000A6F0(v0, qword_1005DFED0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001CC0F0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CC148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  v6 = __chkstk_darwin(v4);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for CloudStorageStore.State(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v46 - v20);
  v22 = sub_10004B564(&qword_1005AF4D8, &qword_1004D0798);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v46 - v24;
  v26 = (&v46 + *(v23 + 56) - v24);
  sub_1001CC9DC(a1, &v46 - v24);
  sub_1001CC9DC(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001CC9DC(v25, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100010BD4(v21, v51);
      sub_100010BD4(v26, v50);
      sub_100011AEC(v51, v51[3]);
      dispatch thunk of CloudBacked.id.getter();
      sub_100011AEC(v50, v50[3]);
      dispatch thunk of CloudBacked.id.getter();
      v41 = static UUID.== infix(_:_:)();
      v42 = v48;
      v43 = *(v49 + 8);
      v43(v13, v48);
      v43(v15, v42);
      sub_100004984(v50);
      sub_100004984(v51);
LABEL_32:
      sub_1001CCAA4(v25, type metadata accessor for CloudStorageStore.State);
      return v41 & 1;
    }

    sub_100004984(v21);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001CC9DC(v25, v19);
    v28 = *(sub_10004B564(&qword_1005AF4B8, &qword_1004D0770) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v19;
      v30 = *v26;
      v31 = v48;
      v32 = *(v49 + 32);
      v32(v10, &v19[v28], v48);
      v33 = v26 + v28;
      v34 = v47;
      v32(v47, v33, v31);
      if (v29)
      {
        v35 = 0xD000000000000019;
      }

      else
      {
        v35 = 0x65636E6546;
      }

      if (v29)
      {
        v36 = 0x80000001004DE3E0;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      if (v30)
      {
        v37 = 0xD000000000000019;
      }

      else
      {
        v37 = 0x65636E6546;
      }

      if (v30)
      {
        v38 = 0x80000001004DE3E0;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      if (v35 == v37 && v36 == v38)
      {
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41 = 0;
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v41 = static UUID.== infix(_:_:)();
LABEL_31:
      v44 = *(v49 + 8);
      v44(v34, v31);
      v44(v10, v31);
      goto LABEL_32;
    }

    (*(v49 + 8))(&v19[v28], v48);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_27:
    sub_100002CE0(v25, &qword_1005AF4D8, &qword_1004D0798);
    v41 = 0;
    return v41 & 1;
  }

  sub_1001CCAA4(v25, type metadata accessor for CloudStorageStore.State);
  v41 = 1;
  return v41 & 1;
}

unint64_t sub_1001CC610()
{
  result = qword_1005AF480;
  if (!qword_1005AF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF480);
  }

  return result;
}

unint64_t sub_1001CC664()
{
  result = qword_1005AF488;
  if (!qword_1005AF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF488);
  }

  return result;
}

uint64_t sub_1001CC6F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001CB120();
}

uint64_t sub_1001CC7A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CC7FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1001C9C88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CC8D4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1001C8834(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1001CC9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCAA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CCB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CCB6C(uint64_t a1)
{
  v1 = type metadata accessor for FriendSharedSecretsRecord(0);
  v58 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v57 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v49 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v49 - v10;
  v12 = type metadata accessor for Row();
  v53 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v49 - v17;
  __chkstk_darwin(v16);
  v20 = v49 - v19;
  v21 = v59;
  result = Connection.prepare(_:)();
  if (!v21)
  {
    v55 = v15;
    v56 = v12;
    v50 = v18;
    v51 = v20;
    v52 = v11;
    v49[0] = v5;
    v23 = result;

    v24 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_10023952C(0, v24 & ~(v24 >> 63), 0);
    v25 = v60;
    v49[1] = v23;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v59 = result;
    if (v24 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v24)
    {
      v26 = (v53 + 48);
      v27 = (v53 + 16);
      v54 = (v53 + 8);
      v28 = v56;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v26)(v9, 1, v28);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v29 = v55;
        (*v27)(v55, v9, v28);
        v30 = v57;
        sub_1001C5EE4(v29, v57);
        (*v54)(v9, v28);
        v60 = v25;
        v32 = v25[2];
        v31 = v25[3];
        if (v32 >= v31 >> 1)
        {
          sub_10023952C((v31 > 1), v32 + 1, 1);
          v30 = v57;
          v25 = v60;
        }

        v25[2] = v32 + 1;
        sub_1001CCB04(v30, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v32, type metadata accessor for FriendSharedSecretsRecord);
        --v24;
        v28 = v56;
        if (!v24)
        {
          goto LABEL_11;
        }
      }
    }

    v28 = v56;
LABEL_11:
    v33 = v52;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v34 = v33;
    v35 = v53;
    v57 = *(v53 + 48);
    if ((v57)(v33, 1, v28) != 1)
    {
      v37 = *(v35 + 32);
      v36 = v35 + 32;
      v56 = v37;
      v38 = (v36 - 16);
      v53 = v36;
      v39 = (v36 - 24);
      v40 = v49[0];
      do
      {
        v41 = v51;
        v56(v51, v34, v28);
        v42 = v50;
        (*v38)(v50, v41, v28);
        sub_1001C5EE4(v42, v40);
        v43 = v40;
        (*v39)(v41, v28);
        v60 = v25;
        v44 = v28;
        v46 = v25[2];
        v45 = v25[3];
        if (v46 >= v45 >> 1)
        {
          sub_10023952C((v45 > 1), v46 + 1, 1);
          v43 = v49[0];
          v25 = v60;
        }

        v25[2] = v46 + 1;
        sub_1001CCB04(v43, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, type metadata accessor for FriendSharedSecretsRecord);
        v47 = v52;
        v40 = v43;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v34 = v47;
        v48 = (v57)(v47, 1, v44);
        v28 = v44;
      }

      while (v48 != 1);
    }

    sub_100002CE0(v34, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005AF4E8, &qword_1004D07B8);
    result = swift_allocObject();
    *(result + 16) = v25;
  }

  return result;
}

unint64_t sub_1001CD178()
{
  result = qword_1005AF4F8;
  if (!qword_1005AF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF4F8);
  }

  return result;
}

uint64_t sub_1001CD1CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_10004B564(&qword_1005AF508, &unk_1004D07E0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitCoordinator.Deletion();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD2D8, v2, 0);
}

uint64_t sub_1001CD2D8()
{
  v1 = CloudKitChangeSet.recordIDsToDelete.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v42 = v0[5];
    sub_100239570(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(v1 + 36);
    v43 = v3;
    v41 = v0;
    v36 = v1 + 72;
    v37 = v2;
    v38 = v9;
    v39 = v1 + 64;
    v40 = v1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v44 = v8;
      v13 = *(v42 + 48);
      v45 = v4;
      v15 = v0[6];
      v14 = v0[7];
      v16 = *(v1 + 56);
      v17 = *(*(v1 + 48) + 8 * v7);
      v18 = type metadata accessor for CloudKitChangeSet.TombstoneInfo();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v14 + v13, v16 + *(v19 + 72) * v7, v18);
      *v15 = v17;
      (*(v19 + 32))(&v15[*(v42 + 48)], v14 + v13, v18);
      v20 = v17;
      CloudKitChangeSet.TombstoneInfo.recordType.getter();
      v21 = v20;
      v4 = v45;
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      sub_100002CE0(v15, &qword_1005AF508, &unk_1004D07E0);
      v23 = v45[2];
      v22 = v45[3];
      if (v23 >= v22 >> 1)
      {
        sub_100239570((v22 > 1), v23 + 1, 1);
        v4 = v45;
      }

      v0 = v41;
      v24 = v41[10];
      v25 = v41[8];
      v4[2] = v23 + 1;
      result = (*(v43 + 32))(v4 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23, v24, v25);
      v1 = v40;
      v10 = 1 << *(v40 + 32);
      if (v7 >= v10)
      {
        goto LABEL_28;
      }

      v5 = v39;
      v26 = *(v39 + 8 * v12);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      v9 = v38;
      if (v38 != *(v40 + 36))
      {
        goto LABEL_30;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v37;
      }

      else
      {
        v28 = v12 << 6;
        v11 = v37;
        v29 = (v36 + 8 * v12);
        v30 = v12 + 1;
        while (v30 < (v10 + 63) >> 6)
        {
          v32 = *v29++;
          v31 = v32;
          v28 += 64;
          ++v30;
          if (v32)
          {
            result = sub_10002F14C(v7, v38, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v7, v38, 0);
      }

LABEL_4:
      v8 = v44 + 1;
      v7 = v10;
      if (v44 + 1 == v11)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
LABEL_22:
    v0[11] = v4;
    v33 = sub_1001C2CB4(v0[3]);
    v0[12] = v33;
    v34 = v33;
    v35 = swift_task_alloc();
    v0[13] = v35;
    *v35 = v0;
    v35[1] = sub_1001CD764;

    return sub_1001C2F40(v4, v34, 1);
  }

  return result;
}

uint64_t sub_1001CD764()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1001CD890;
  }

  else
  {
    v4 = sub_1001CD988;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001CD890()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001CD934()
{
  result = qword_1005AF518;
  if (!qword_1005AF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF518);
  }

  return result;
}

uint64_t sub_1001CD9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0x65636E6546;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001004DE3E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0x65636E6546;
  }

  if (*a2)
  {
    v6 = 0x80000001004DE3E0;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001CDA60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001CDAE4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001CDB54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001CDBD4(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BA70, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1001CDC34(unint64_t *a1@<X8>)
{
  v2 = 0x80000001004DE3E0;
  v3 = 0x65636E6546;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1001CDC84()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x65636E65662ELL;
  }
}

unint64_t sub_1001CDCC4()
{
  result = qword_1005AF520;
  if (!qword_1005AF520)
  {
    sub_10004B610(&qword_1005AF528, qword_1004D08E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF520);
  }

  return result;
}

unint64_t sub_1001CDD2C()
{
  result = qword_1005AF530;
  if (!qword_1005AF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF530);
  }

  return result;
}

unint64_t sub_1001CDD94()
{
  result = qword_1005AF538;
  if (!qword_1005AF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF538);
  }

  return result;
}

void sub_1001CDE70(uint64_t a1)
{
  sub_1000F8F5C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Credentials.FindMyLocateProperties(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Credentials.SecureLocationsProperties(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001CDF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1001CDF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CE030(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001CE0D4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001CE140(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
  __chkstk_darwin(Properties - 8);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 aa_personID];
  if (v15)
  {
    v43 = v11;
    v48 = a3;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *a4 = v17;
    a4[1] = v19;
    v44 = v19;
    v20 = [a2 aa_authToken];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    a4[2] = v22;
    a4[3] = v24;
    v28 = a1;
    v29 = a2;
    v30 = sub_1001CF09C(v28, v29);
    v27 = v30;
    v26 = v31;
    if (!v4)
    {
      v42[2] = v24;
      a4[4] = v30;
      a4[5] = v31;
      v33 = v28;
      v34 = v29;
      sub_1001CE4E0(v33, v34, &v45, v14);
      v35 = type metadata accessor for Credentials(0);
      sub_1001CF2A8(v14, a4 + v35[7], type metadata accessor for Credentials.FindMyLocateProperties);
      v36 = v33;
      v37 = v34;
      v38 = v43;
      sub_1001CE784(v36, v37, &v45, v43);
      v42[1] = 0;
      sub_1001CF2A8(v38, a4 + v35[8], type metadata accessor for Credentials.SecureLocationsProperties);
      v39 = sub_1001CF310(v36, v37);
      v40 = (a4 + v35[9]);
      *v40 = v39;
      v40[1] = v41;
      return;
    }

    v25 = v32;

    a3 = v48;
  }

  else
  {
    v46 = xmmword_1004D0A90;
    v25 = 2;
    v47 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v26 = 0;
    v27 = 3;
  }

  *a3 = v27;
  *(a3 + 8) = v26;
  *(a3 + 16) = v25;
}

void sub_1001CE4E0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v7 = type metadata accessor for URL();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 dataclassProperties];
  v11 = 0x80000001004E4E80;
  if (!v10)
  {
    v24 = 0u;
    v25 = 0u;
LABEL_10:
    sub_100002CE0(&v24, &qword_1005A9680, &qword_1004C32A0);
    goto LABEL_11;
  }

  v12 = v10;
  *&v22 = 0xD000000000000020;
  *(&v22 + 1) = 0x80000001004E4E80;
  v13 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    goto LABEL_10;
  }

  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0xD000000000000020;
    *&v24 = 0xD000000000000020;
    *(&v24 + 1) = 0x80000001004E4E80;
    v16 = 1;
    LOBYTE(v25) = 1;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    goto LABEL_12;
  }

  v14 = v26;
  sub_1001CED5C(v22, 0x755F656C706F6570, 0xEA00000000006C72, v20, v9);
  if (!v14)
  {

    (*(v18 + 32))(v19, v9, v7);
    return;
  }

  v15 = v20[0];
  v11 = v20[1];
  v16 = v21;

LABEL_12:
  *a3 = v15;
  *(a3 + 8) = v11;
  *(a3 + 16) = v16;
}

void sub_1001CE784(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 credentialForAccount:a2];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 credentialItemForKey:ACSearchPartyTokenKey];
    if (v15)
    {
      v44 = v12;
      v33 = v10;
      v34 = v9;
      v16 = 0xD00000000000001FLL;
      v17 = v15;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = [a2 dataclassProperties];
      if (v20)
      {
        v21 = v20;
        v36 = v4;
        v37 = a1;
        v32 = a4;
        v22 = 0x80000001004E4E40;
        *&v40 = 0xD00000000000001FLL;
        *(&v40 + 1) = 0x80000001004E4E40;
        v23 = [v20 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();

        if (v23)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0u;
          v41 = 0u;
        }

        v25 = v36;
        a1 = v37;
        v26 = v19;
        v42 = v40;
        v43 = v41;
        v27 = v44;
        if (*(&v41 + 1))
        {
          sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
          if (swift_dynamicCast())
          {
            v28 = v40;
            v29 = v32;
            *v32 = v35;
            v29[1] = v26;
            v36 = v28;
            sub_1001CED5C(v28, 0xD000000000000019, 0x80000001004E4E60, v38, v27);
            if (!v25)
            {

              v30 = type metadata accessor for Credentials.SecureLocationsProperties(0);
              (*(v33 + 32))(v29 + *(v30 + 20), v27, v34);
              return;
            }

            v16 = v38[0];
            v22 = v38[1];
            v24 = v39;

            goto LABEL_18;
          }

LABEL_17:
          *&v42 = 0xD00000000000001FLL;
          *(&v42 + 1) = 0x80000001004E4E40;
          v24 = 1;
          LOBYTE(v43) = 1;
          sub_1000C7488();
          swift_willThrowTypedImpl();

LABEL_18:
          goto LABEL_19;
        }
      }

      else
      {

        v22 = 0x80000001004E4E40;
        v42 = 0u;
        v43 = 0u;
      }

      sub_100002CE0(&v42, &qword_1005A9680, &qword_1004C32A0);
      goto LABEL_17;
    }

    v42 = xmmword_1004D0AA0;
    v24 = 2;
    LOBYTE(v43) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v22 = 0;
    v16 = 8;
  }

  else
  {
    v42 = xmmword_1004D0AB0;
    v24 = 2;
    LOBYTE(v43) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v22 = 0;
    v16 = 7;
  }

LABEL_19:
  *a3 = v16;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24;
}

uint64_t sub_1001CEC24(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}